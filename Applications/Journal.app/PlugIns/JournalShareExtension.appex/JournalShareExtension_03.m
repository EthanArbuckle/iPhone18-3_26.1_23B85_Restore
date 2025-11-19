uint64_t sub_1000521A4(void *a1)
{
  v14 = a1;
  type metadata accessor for Asset();
  v2 = a1;
  sub_100007210(&qword_10014D650);
  if (swift_dynamicCast())
  {
    sub_10005240C(v12, v15);
    sub_1000110C0(v15, v15[3]);
    v3 = sub_100100014();
    sub_10001100C(v15);
    if (v3)
    {
      return v3;
    }
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_10000FFB4(v12, &qword_10014D658);
  }

  if (qword_10014B5F0 != -1)
  {
    swift_once();
  }

  v5 = sub_100100AE4();
  sub_100003D38(v5, qword_10014D620);
  v6 = v2;
  v7 = sub_100100AC4();
  v8 = sub_1001015A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "JournalEntryAssetMO.getSearchableItemAttributeSet asset type not indexed: %@", v9, 0xCu);
    sub_10000FFB4(v10, &unk_10014D660);
  }

  return 0;
}

uint64_t sub_10005239C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&unk_10014D640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005240C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10005246C()
{
  v1 = *(v0 + qword_10014D680);
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10005464C((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  return v5;
}

uint64_t sub_10005258C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100100F94();
  [v2 willChangeValueForKey:v4];

  v5 = *&v2[qword_10014D680];
  type metadata accessor for OperationBase.Locked();
  sub_10000F19C(&qword_10014EBE0);
  sub_100102004();
  swift_getFunctionTypeMetadata1();
  sub_100101264();
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1000545F8(v5 + v6, &v16);
  os_unfair_lock_unlock((v5 + v7));
  v8 = v16;
  v9 = sub_100100F94();
  [v2 didChangeValueForKey:v9];

  if (!sub_100101244())
  {
  }

  v10 = 0;
  for (i = v8 + 40; ; i += 16)
  {
    v12 = sub_100101224();
    result = sub_1001011F4();
    if (!v12)
    {
      break;
    }

    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_8;
    }

    v15 = *(i - 8);

    v15(a1);

    ++v10;
    if (v14 == sub_100101244())
    {
    }
  }

  result = sub_100101C94();
  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000527D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100134790;
  v6._object = a2;
  v4 = sub_100101E04(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100052824(char a1)
{
  if (!a1)
  {
    return 0x7964616572;
  }

  if (a1 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

uint64_t sub_10005287C()
{
  swift_getWitnessTable();

  return sub_100101E94();
}

uint64_t sub_1000528F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_10005295C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1000529CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100052A3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000527D8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100052A6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100052824(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100052A98()
{
  sub_10000F19C(&qword_10014EBE0);
  sub_100102004();
  swift_getFunctionTypeMetadata1();
  sub_100100E14();
  return 0;
}

Swift::Int sub_100052B18()
{
  sub_100101F84();
  sub_100101F94(0);
  return sub_100101FE4();
}

Swift::Int sub_100052B84()
{
  sub_100101F84();
  sub_100101F94(0);
  return sub_100101FE4();
}

uint64_t sub_100052BC4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = swift_isaMask & *v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_100101284();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_100052C8C, v4, v6);
}

uint64_t sub_100052C8C()
{
  (*(*(*(v0[3] + 80) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

Swift::Int sub_100052D38()
{
  v0 = sub_100033644(&off_1001347F8);
  sub_1000542EC(&unk_100134818);
  return v0;
}

Swift::Int sub_100052D8C()
{
  v0 = sub_100033644(&off_100134828);
  sub_1000542EC(&unk_100134848);
  return v0;
}

Class sub_100052DE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4.super.isa = sub_1001013F4().super.isa;

  return v4.super.isa;
}

Swift::Int sub_100052E48()
{
  v0 = sub_100033644(&off_100134858);
  sub_1000542EC(&unk_100134878);
  return v0;
}

uint64_t sub_100052E84(void *a1)
{
  v1 = a1;
  v2 = sub_100052EF4();

  return v2 & 1;
}

uint64_t sub_100052EBC(void *a1)
{
  v1 = a1;
  v2 = sub_100052EF4();

  return v2 & 1;
}

uint64_t sub_100052EF4()
{
  sub_10005246C();
  type metadata accessor for OperationBase.State();
  swift_getWitnessTable();
  return sub_100101E94() & 1;
}

uint64_t sub_100052FA4(void *a1)
{
  v1 = a1;
  v2 = sub_100052FD8();

  return v2 & 1;
}

uint64_t sub_100052FD8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for OperationBase();
  v1 = objc_msgSendSuper2(&v3, "isReady");
  if (v1)
  {
    sub_10005246C();
    type metadata accessor for OperationBase.State();
    swift_getWitnessTable();
    LOBYTE(v1) = sub_100101E94();
  }

  return v1 & 1;
}

void sub_10005309C()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  sub_10000F19C(&qword_10014EBE0);
  v2 = sub_100102004();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  if ([v0 isCancelled])
  {
    sub_1001012B4();
    sub_100054570();
    v9 = swift_allocError();
    sub_100100E24();
    *v5 = v9;
    swift_storeEnumTagMultiPayload();
    sub_10005258C(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = sub_100101324();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v0;
    v12 = v0;
    v13 = sub_1000D73F8(0, 0, v8, &unk_10010D3D8, v11);
    v14 = sub_100100F94();
    [v12 willChangeValueForKey:v14];

    v15 = *(v12 + qword_10014D680);
    __chkstk_darwin(v16);
    *&v20[-16] = v1;
    *&v20[-8] = v13;
    type metadata accessor for OperationBase.Locked();
    v17 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
    v18 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v15 + v18));
    sub_10005451C(v15 + v17);
    os_unfair_lock_unlock((v15 + v18));
    v19 = sub_100100F94();
    [v12 didChangeValueForKey:v19];
  }
}

uint64_t sub_100053404(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *((swift_isaMask & *a4) + 0x50);
  v4[3] = v5;
  sub_10000F19C(&qword_10014EBE0);
  v6 = sub_100102004();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v7 = sub_100101A94();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000535C0, 0, 0);
}

uint64_t sub_1000535C0()
{
  sub_100101364();
  v4 = (*((swift_isaMask & **(v0 + 16)) + 0x68) + **((swift_isaMask & **(v0 + 16)) + 0x68));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1000537BC;
  v2 = *(v0 + 72);

  return v4(v2, 0, 0);
}

uint64_t sub_1000537BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100053AE8;
  }

  else
  {
    v2 = sub_1000538D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000538D0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    type metadata accessor for OperationBase.Failure();
    swift_getWitnessTable();
    v4 = swift_allocError();
    swift_willThrow();
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    *v5 = v4;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_10005258C(v5);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = v0[11];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    (*(v2 + 32))(v8, v1, v3);
    (*(v2 + 16))(v9, v8, v3);
    swift_storeEnumTagMultiPayload();
    sub_10005258C(v9);
    (*(v10 + 8))(v9, v11);
    (*(v2 + 8))(v8, v3);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100053AE8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *v1 = v0[13];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005258C(v1);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_100053BC4(void *a1)
{
  v1 = a1;
  sub_10005309C();
}

uint64_t sub_100053C10()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OperationBase();
  objc_msgSendSuper2(&v6, "cancel");
  v1 = *&v0[qword_10014D680];
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1000543E0((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  if (v5)
  {
    sub_100101344();
  }

  return result;
}

uint64_t sub_100053D80()
{

  swift_getAtKeyPath();

  return v1;
}

void sub_100053DF4(void *a1)
{
  v1 = a1;
  sub_100053C10();
}

uint64_t sub_100053E3C()
{

  swift_getAtKeyPath();

  return v1;
}

id sub_100053EB0(void *a1)
{
  v1 = a1;
  sub_100053F18();

  v2 = sub_100100F94();

  return v2;
}

uint64_t sub_100053F18()
{
  v0 = sub_10005246C();
  if (!v0)
  {
    return 0x7964616572;
  }

  if (v0 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

void sub_100053F88()
{
  sub_10000F19C(&qword_10014EBE0);
  sub_100102004();
  swift_getFunctionTypeMetadata1();
  sub_100101264();
  sub_100101254(0);
}

id sub_100054010()
{
  v1 = qword_10014D680;
  v7 = sub_100052A98();
  v8 = v2;
  v9 = v3;
  type metadata accessor for OperationBase.Locked();
  v4 = sub_100054270();

  *&v0[v1] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OperationBase();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1000540FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OperationBase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100054180()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000541BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000541D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100054218(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100054270()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_100101CD4();
  return sub_100101CC4();
}

uint64_t sub_100054340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

uint64_t sub_1000543E0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_100054428()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008030;

  return sub_100053404(a1, v4, v5, v6);
}

uint64_t sub_10005451C(uint64_t a1)
{
  v3 = *(v1 + 24);
  *a1 = 1;

  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_100054570()
{
  result = qword_10014D788[0];
  if (!qword_10014D788[0])
  {
    sub_1001012B4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10014D788);
  }

  return result;
}

void sub_1000545F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = 2;
  *a2 = *(a1 + 8);

  sub_100053F88();
}

uint64_t sub_10005464C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_100054698(unsigned int *a1, int a2)
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

_WORD *sub_1000546E8(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id sub_1000547B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaceholderAsset()
{
  result = qword_10014D8B8;
  if (!qword_10014D8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100054874()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014D8C8);
  sub_100003D38(v0, qword_10014D8C8);
  return sub_100100AD4();
}

id sub_1000548F4(void *a1, char a2, char a3, char a4, void *a5)
{
  if (!a1)
  {
LABEL_17:
    if ((a2 & 1) != 0 && (v31 = [objc_opt_self() workStyleAttributes]) != 0)
    {
      v20 = v31;
      if (qword_10014B5F8 != -1)
      {
        swift_once();
      }

      v32 = sub_100100AE4();
      sub_100003D38(v32, qword_10014D8C8);
      v33 = sub_100100AC4();
      v34 = sub_1001015D4();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] Work";
    }

    else
    {
      if ((a3 & 1) != 0 || (a4 & 1) == 0 || (v37 = [objc_allocWithZone(GEOPlace) initWithLatitude:4 longitude:0.0 placeType:0.0], v20 = objc_msgSend(objc_opt_self(), "styleAttributesForPlace:", v37), v37, !v20))
      {
        if (qword_10014B5F8 != -1)
        {
          swift_once();
        }

        v39 = sub_100100AE4();
        sub_100003D38(v39, qword_10014D8C8);
        v40 = a1;
        v41 = sub_100100AC4();
        v42 = sub_1001015D4();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = 7104878;
          v44 = swift_slowAlloc();
          v76[0] = swift_slowAlloc();
          *v44 = 136315394;
          if (a1)
          {
            v45 = [v40 name];
            if (v45)
            {
              v46 = v45;
              v47 = sub_100100FD4();
              v49 = v48;
            }

            else
            {
              v49 = 0xE300000000000000;
              v47 = 7104878;
            }

            v52 = sub_10007A774(v47, v49, v76);

            *(v44 + 4) = v52;
            *(v44 + 12) = 2080;
            v53 = [v40 pointOfInterestCategory];
            if (v53)
            {
              v54 = v53;
              v43 = sub_100100FD4();
              v50 = v55;
            }

            else
            {
              v50 = 0xE300000000000000;
            }
          }

          else
          {
            v50 = 0xE300000000000000;
            v51 = sub_10007A774(7104878, 0xE300000000000000, v76);

            *(v44 + 4) = v51;
            *(v44 + 12) = 2080;
          }

          v56 = sub_10007A774(v43, v50, v76);

          *(v44 + 14) = v56;
          _os_log_impl(&_mh_execute_header, v41, v42, "[POIClustering] [RENDERING] Fallback, mkMapItem.name=%s, mkMapItem.poiCategory=%s", v44, 0x16u);
          swift_arrayDestroy();
        }

        return 0;
      }

      if (qword_10014B5F8 != -1)
      {
        swift_once();
      }

      v38 = sub_100100AE4();
      sub_100003D38(v38, qword_10014D8C8);
      v33 = sub_100100AC4();
      v34 = sub_1001015D4();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] City";
    }

    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_31:

    goto LABEL_49;
  }

  v10 = a1;
  v11 = [v10 pointOfInterestCategory];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100100FD4();
    v15 = v14;
    if (v13 == sub_100100FD4() && v15 == v16)
    {

      goto LABEL_16;
    }

    v18 = sub_100101E84();

    if (v18)
    {
      goto LABEL_14;
    }
  }

  v19 = [v10 _styleAttributes];
  if (!v19)
  {
LABEL_14:
    v12 = v10;
LABEL_16:

    goto LABEL_17;
  }

  v20 = v19;
  if (qword_10014B5F8 != -1)
  {
    swift_once();
  }

  v21 = sub_100100AE4();
  sub_100003D38(v21, qword_10014D8C8);
  v22 = v10;
  v23 = sub_100100AC4();
  v24 = sub_1001015D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v77 = v26;
    *v25 = 134218242;
    v27 = [v22 name];
    if (v27)
    {
      v28 = v27;
      sub_100100FD4();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v76[1] = v30;
    sub_100007210(&qword_10014C210);
    v57 = sub_100101AA4();

    *(v25 + 4) = v57;

    *(v25 + 12) = 2080;
    v76[0] = [v22 pointOfInterestCategory];
    sub_100007210(&qword_10014D8E0);
    v58 = sub_100101A84();
    v60 = v59;

    v61 = sub_10007A774(v58, v60, &v77);

    *(v25 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v23, v24, "[POIClustering] [RENDERING] POI mapItemName=%ld, mapItemPOICategory=%s", v25, 0x16u);
    sub_10001100C(v26);
  }

  else
  {
  }

LABEL_49:
  v62 = v20;
  [a5 displayScale];
  v64 = v63;
  v65 = [objc_allocWithZone(VKIconModifiers) init];
  [v65 setNightMode:{objc_msgSend(a5, "userInterfaceStyle") == 2}];
  result = [objc_opt_self() iconManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_57;
  }

  v67 = result;
  v68 = v64;
  v69 = sub_100100F94();
  *&v70 = v68;
  v71 = [v67 imageForStyleAttributes:v62 withStylesheetName:v69 contentScale:7 sizeGroup:v65 modifiers:v70];

  if (!v71)
  {

    return 0;
  }

  result = [v71 fillColor];
  if (result)
  {
    v72 = result;
    v73 = [objc_allocWithZone(UIColor) initWithCGColor:v72];

    result = [v71 image];
    if (result)
    {
      v74 = result;
      [v71 contentScale];
      [objc_allocWithZone(UIImage) initWithCGImage:v74 scale:0 orientation:v75];

      return v73;
    }

    goto LABEL_58;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1000551B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000551F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100055294(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_10005532C(uint64_t a1, id *a2, double *a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = *a2;
  v9 = [v7 preferredFontForTextStyle:v8];

  v10 = sub_10004C194(*a3);
  *a4 = v10;
}

void sub_1000553B4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001001067C0;
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158528 = v2;
  unk_100158530 = v4;
}

void sub_100055458()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100106A00;
  v6._countAndFlagsBits = 19279;
  v6._object = 0xE200000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158538 = v2;
  unk_100158540 = v4;
}

void sub_1000554FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100106780;
  v6._countAndFlagsBits = 0xD000000000000038;
  v6._object = 0x8000000100106720;
  v8._object = 0x8000000100106760;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000010;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158548 = v2;
  unk_100158550 = v4;
}

void sub_1000555C8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100106820;
  v8._countAndFlagsBits = 0x25209480E2204025;
  v6._object = 0x8000000100106800;
  v6._countAndFlagsBits = 0x1000000000000011;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xA900000000000040;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158558 = v2;
  unk_100158560 = v4;
}

void sub_10005568C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001001066E0;
  v6._object = 0x80000001001066C0;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158568 = v2;
  unk_100158570 = v4;
}

void sub_100055744()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100106940;
  v6._object = 0x8000000100106920;
  v6._countAndFlagsBits = 0x1000000000000010;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158578 = v2;
  unk_100158580 = v4;
}

void sub_1000557F8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xEF7961646F742073;
  v6._countAndFlagsBits = 0x7961646F54;
  v6._object = 0xE500000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158588 = v2;
  unk_100158590 = v4;
}

void sub_1000558AC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001001069E0;
  v6._countAndFlagsBits = 0x6164726574736559;
  v6._object = 0xE900000000000079;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158598 = v2;
  unk_1001585A0 = v4;
}

void sub_100055960()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001001068D0;
  v6._countAndFlagsBits = 0x6574656C6544;
  v6._object = 0xE600000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1001585A8 = v2;
  unk_1001585B0 = v4;
}

void sub_100055A0C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100106960;
  v6._countAndFlagsBits = 0x206C616E72756F4ALL;
  v6._object = 0xEC00000074786554;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1001585B8 = v2;
  unk_1001585C0 = v4;
}

void sub_100055AC4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100106A20;
  v6._countAndFlagsBits = 0x657250206B6E694CLL;
  v6._object = 0xEC00000077656976;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1001585C8 = v2;
  unk_1001585D0 = v4;
}

void sub_100055B7C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100106870;
  v6._countAndFlagsBits = 0x6F746F6850;
  v6._object = 0xE500000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1001585D8 = v2;
  unk_1001585E0 = v4;
}

void sub_100055C28()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001001069B0;
  v6._countAndFlagsBits = 0x6573734120646441;
  v6._object = 0xE900000000000074;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1001585E8 = v2;
  unk_1001585F0 = v4;
}

void sub_100055CDC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001001068A0;
  v6._countAndFlagsBits = 0x7373412065766F4DLL;
  v6._object = 0xEA00000000007465;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1001585F8 = v2;
  unk_100158600 = v4;
}

void sub_100055D90()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100106850;
  v6._countAndFlagsBits = 0x676E69707954;
  v6._object = 0xE600000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000FF2E4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100158608 = v2;
  unk_100158610 = v4;
}

void sub_100055E3C()
{
  v0 = sub_100100F94();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  qword_100158618 = v1;
}

uint64_t sub_100055EAC()
{
  result = sub_1000FFD24();
  qword_100158620 = result;
  return result;
}

uint64_t sub_100055ECC()
{
  v0 = sub_1000FFB34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v0);
  v4 = sub_1000FFB24();
  result = (*(v1 + 8))(v3, v0);
  v6 = 5;
  if (v4)
  {
    v6 = 9;
  }

  qword_100158628 = v6;
  return result;
}

void sub_100056080(void *a1)
{
  v2 = [a1 layer];
  [v2 setMasksToBounds:0];

  v3 = [a1 layer];
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [v3 setShadowColor:v5];
  v6 = [a1 layer];
  LODWORD(v7) = 1028443341;
  [v6 setShadowOpacity:v7];

  v8 = [a1 layer];
  [v8 setShadowOffset:{0.0, 2.0}];

  v9 = [a1 layer];
  [v9 setShadowRadius:16.0];

  v10 = [a1 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  v11 = [a1 layer];
  [v11 setShadowPathIsBounds:1];
}

uint64_t sub_100056294()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014DBE0);
  v1 = sub_100003D38(v0, qword_10014DBE0);
  if (qword_10014B8A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100056374()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014DCA8);
  v1 = sub_100003D38(v0, qword_10014DCA8);
  if (qword_10014B898 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158858);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10005643C()
{
  sub_100101F84();
  sub_1000FF874();
  sub_100058918(&qword_10014D1F0, &type metadata accessor for UUID);
  sub_100100E94();
  return sub_100101FE4();
}

uint64_t sub_1000564D8()
{
  sub_1000FF874();
  sub_100058918(&qword_10014D1F0, &type metadata accessor for UUID);
  return sub_100100E94();
}

Swift::Int sub_100056558()
{
  sub_100101F84();
  sub_1000FF874();
  sub_100058918(&qword_10014D1F0, &type metadata accessor for UUID);
  sub_100100E94();
  return sub_100101FE4();
}

size_t sub_100056600(uint64_t a1, double a2)
{
  v5 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  p_inst_props = &OBJC_PROTOCOL___UICollectionViewDataSource.inst_props;
  *&v2[OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v9 = _s30MOSuggestionAssetMapsClustererCMa();
  v52.receiver = v2;
  v52.super_class = v9;
  v10 = objc_msgSendSuper2(&v52, "init");
  v11 = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v51 = _swiftEmptyArrayStorage;
    v38 = v10;
    v13 = v10;
    result = sub_100016E28(0, v12, 0);
    v15 = 0;
    v16 = v51;
    v17 = a1 + 48;
    v39 = v12;
    v40 = a1;
    while (v15 < *(a1 + 16))
    {
      v18 = *(v17 - 16);
      v19 = *(v17 - 8);
      v21 = *v17;
      v20 = *(v17 + 8);
      v22 = *(v17 + 16);
      v23 = *(v17 + 32);
      v45 = *(v17 + 24);
      v46 = *(v17 + 40);
      v24 = *(v17 + 48);
      if (v22)
      {
        v20 = 1;
      }

      v43 = v21;
      v44 = v20;
      v48 = v15;
      v25 = v21;

      v49 = sub_100101E44();
      v50 = v26;
      v53._countAndFlagsBits = 95;
      v53._object = 0xE100000000000000;
      sub_1001010B4(v53);
      v47 = v16;
      v27 = v49;
      v28 = v50;
      v29 = v42;
      v30 = v25;

      sub_1000FF864();

      *v7 = v18;
      v7[1] = v19;
      v32 = v43;
      v31 = v44;
      v7[2] = 0;
      v7[3] = v31;
      v7[4] = v27;
      v7[5] = v28;
      v16 = v47;
      *(v7 + v29[9]) = v32;
      v33 = (v7 + v29[10]);
      *v33 = v45;
      v33[1] = v23;
      *(v7 + v29[11]) = v46;
      *(v7 + v29[12]) = v24;
      v51 = v16;
      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_100016E28(v34 > 1, v35 + 1, 1);
        v16 = v51;
      }

      ++v15;
      *(v16 + 2) = v35 + 1;
      result = sub_10004AA84(v7, v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35);
      v17 += 72;
      a1 = v40;
      if (v39 == v15)
      {

        p_inst_props = (&OBJC_PROTOCOL___UICollectionViewDataSource + 56);
        v11 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v10;

    v16 = _swiftEmptyArrayStorage;
LABEL_11:
    *(p_inst_props[410] + v11) = v16;

    return v11;
  }

  return result;
}

uint64_t sub_100056918()
{
  v1 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v115 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v114 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v113 = v105 - v5;
  v6 = __chkstk_darwin(v4);
  v112 = v105 - v7;
  v8 = __chkstk_darwin(v6);
  v110 = v105 - v9;
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v111 = v105 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v105 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v105 - v17;
  result = __chkstk_darwin(v16);
  v22 = v105 - v21;
  v23 = *(v0 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_inputClusters);
  v130[0] = v23;
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_108:
    __break(1u);
    return result;
  }

  v117 = v24 - 1;
  if (v24 != 1)
  {
    v106 = v20;
    v105[0] = result;
    v127 = v0;
    v109 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold;
    v107 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_results;
    v125 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_skipColumns;
    v126 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_skipRows;

    v25 = 0;
    v108 = 0;
    v121 = v18;
    v123 = v22;
    v116 = v15;
    while (2)
    {
      v122 = v23;
      v119 = v25 + 1;
      result = sub_10005A99C(v130);
      v26 = 0;
      v27 = result + 32;
      v120 = result;
      v28 = *(result + 16);
      v124 = -1;
      v29 = 1.79769313e308;
      v30 = -1;
      v31 = v127;
LABEL_7:
      v32 = v26;
      while (v28 != v32)
      {
        if (v32 >= v28)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v26 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_93;
        }

        v33 = *(v27 + 8 * v32);
        v34 = *(v33 + 16);
        ++v32;
        if (v34)
        {
          v35 = 0;
          v36 = v33 + 32;
          v37 = v32 - 1;
          while (1)
          {
            v38 = *(v36 + 8 * v35);
            v39 = *(v31 + v126);
            if (*(v39 + 16))
            {
              result = sub_100101F74();
              v40 = -1 << *(v39 + 32);
              v41 = result & ~v40;
              if ((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                v42 = ~v40;
                v31 = v127;
                while (*(*(v39 + 48) + 8 * v41) + 1 != v32)
                {
                  v41 = (v41 + 1) & v42;
                  if (((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                goto LABEL_13;
              }

              v31 = v127;
            }

LABEL_21:
            v43 = *(v31 + v125);
            if (*(v43 + 16))
            {
              result = sub_100101F74();
              v44 = -1 << *(v43 + 32);
              v45 = result & ~v44;
              if ((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
              {
                v46 = ~v44;
                v31 = v127;
                while (*(*(v43 + 48) + 8 * v45) != v35)
                {
                  v45 = (v45 + 1) & v46;
                  if (((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_13;
              }

              v31 = v127;
              if (v28 >= 2)
              {
LABEL_29:
                if (v35 < v37 && v37 >= 1)
                {
                  if (v38 >= v29)
                  {
                    v47 = v29;
                  }

                  else
                  {
                    v47 = v38;
                  }

                  v48 = v124;
                  if (v38 >= v29)
                  {
                    v49 = v124;
                  }

                  else
                  {
                    v49 = v35;
                  }

                  if (v38 >= v29)
                  {
                    v50 = v30;
                  }

                  else
                  {
                    v50 = v32 - 1;
                  }

                  if (v35 < v28)
                  {
                    v29 = v47;
                    v48 = v49;
                  }

                  v124 = v48;
                  if (v35 < v28)
                  {
                    v30 = v50;
                  }
                }
              }
            }

            else
            {
LABEL_26:
              if (v28 >= 2)
              {
                goto LABEL_29;
              }
            }

LABEL_13:
            if (++v35 == v34)
            {
              v18 = v121;
              v22 = v123;
              goto LABEL_7;
            }
          }
        }
      }

      v51 = v116;
      v52 = v124;
      if (v30 == -1 && v124 == -1)
      {

LABEL_5:
        v23 = v122;
        v25 = v119;
        if (v119 != v117)
        {
          continue;
        }
      }

      break;
    }

    v53 = v122;
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    v54 = *(v122 + 16);
    if (v30 >= v54)
    {
LABEL_96:
      __break(1u);
    }

    else
    {
      v55 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v56 = *(v115 + 72);
      result = sub_10004A9C4(v122 + v55 + v56 * v30, v22);
      if (v52 < v54)
      {
        v118 = v56;
        v57 = sub_10004A9C4(v53 + v55 + v56 * v52, v18);
        if (v29 >= *(v127 + v109) * *(v127 + v109))
        {

          v61 = v114;
          sub_10004A9C4(v22, v114);
          swift_beginAccess();
          v62 = v113;
          sub_100045F08(v113, v61);
          sub_10004AA28(v62);
          sub_10004A9C4(v18, v61);
          sub_100045F08(v62, v61);
          sub_10004AA28(v62);
          swift_endAccess();
LABEL_74:
          sub_10004AA28(v18);
          sub_10004AA28(v22);
          goto LABEL_5;
        }

        __chkstk_darwin(v57);
        v105[-2] = v22;
        v105[-1] = v18;
        v58 = v108;
        result = sub_100058960(sub_10005B2C4, &v105[-4], v53);
        v108 = v58;
        v105[1] = v105;
        if (v59)
        {
          v124 = *(v53 + 16);
          v60 = v105[0];
        }

        else
        {
          v63 = result + 1;
          v60 = v105[0];
          v64 = v118;
          if (__OFADD__(result, 1))
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v124 = result;
          v66 = (v53 + 16);
          v65 = *(v53 + 16);
          if (v63 != v65)
          {
            v99 = v55 + v118 * v63;
            while (v63 < v65)
            {
              sub_10004A9C4(v53 + v99, v51);
              if (sub_1000FF844())
              {
                result = sub_10004AA28(v51);
              }

              else
              {
                v100 = sub_1000FF844();
                result = sub_10004AA28(v51);
                if ((v100 & 1) == 0)
                {
                  v101 = v124;
                  if (v63 != v124)
                  {
                    if (v124 < 0)
                    {
                      goto LABEL_103;
                    }

                    v102 = v55;
                    v103 = *v66;
                    if (v124 >= *v66)
                    {
                      goto LABEL_104;
                    }

                    v104 = v124 * v118;
                    result = sub_10004A9C4(v53 + v102 + v124 * v118, v106);
                    if (v63 >= v103)
                    {
                      goto LABEL_105;
                    }

                    sub_10004A9C4(v53 + v99, v110);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v53 = sub_100050804(v53);
                    }

                    v55 = v102;
                    result = sub_10005B260(v110, v53 + v102 + v104);
                    if (v63 >= *(v53 + 16))
                    {
                      goto LABEL_106;
                    }

                    result = sub_10005B260(v106, v53 + v99);
                    v64 = v118;
                    v101 = v124;
                  }

                  v124 = v101 + 1;
                }
              }

              ++v63;
              v66 = (v53 + 16);
              v65 = *(v53 + 16);
              v99 += v64;
              if (v63 == v65)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_94;
          }
        }

LABEL_57:

        v67 = *(v53 + 16);
        v68 = v124 - v67;
        if (v124 <= v67)
        {
          if ((v124 & 0x8000000000000000) == 0)
          {
            v69 = *(v53 + 16);
            if (v69 >= v67)
            {
              v70 = v69 + v68;
              if (!__OFADD__(v69, v68))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v130[0] = v53;
                if (isUniquelyReferenced_nonNull_native && v70 <= *(v53 + 24) >> 1)
                {
                  v122 = v53;
                }

                else
                {
                  if (v69 <= v70)
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = v69;
                  }

                  v122 = sub_10000F704(isUniquelyReferenced_nonNull_native, v72, 1, v53);
                  v130[0] = v122;
                }

                result = sub_100050A10(v124, v67, 0);
                v73 = v60[9];
                v74 = v123;
                v75 = *&v123[v73];
                v76 = v75;
                v77 = v121;
                if (!v75)
                {
                  v76 = *&v121[v73];
                  result = v76;
                }

                v78 = *(v74 + 3);
                v79 = *(v77 + 3);
                v80 = v78 + v79;
                if (!__OFADD__(v78, v79))
                {
                  v81 = (*(v74 + 1) + *(v77 + 1)) * 0.5;
                  v82 = (*v74 + *v77) * 0.5;
                  v83 = *(v74 + 4);
                  v84 = *(v74 + 5);
                  v85 = *(v77 + 4);
                  v86 = *(v77 + 5);
                  v128 = v83;
                  v129 = v84;
                  v87 = v75;

                  v131._countAndFlagsBits = v85;
                  v131._object = v86;
                  sub_1001010B4(v131);
                  v88 = v128;
                  v89 = v129;
                  v90 = v111;
                  sub_1000FF864();
                  *v90 = v82;
                  *(v90 + 8) = v81;
                  *(v90 + 16) = v29;
                  *(v90 + 24) = v80;
                  *(v90 + 32) = v88;
                  *(v90 + 40) = v89;
                  *(v90 + v60[9]) = v76;
                  v91 = (v90 + v60[10]);
                  *v91 = 0;
                  v91[1] = 0xE000000000000000;
                  *(v90 + v60[11]) = 0;
                  *(v90 + v60[12]) = 0;
                  sub_10004A9C4(v90, v112);
                  v92 = v122;
                  v94 = *(v122 + 16);
                  v93 = *(v122 + 24);
                  if (v94 >= v93 >> 1)
                  {
                    v92 = sub_10000F704(v93 > 1, v94 + 1, 1, v122);
                  }

                  v95 = v118;
                  *(v92 + 16) = v94 + 1;
                  sub_10004AA84(v112, v92 + v55 + v94 * v95);
                  v122 = v92;
                  v130[0] = v92;
                  v96 = v111;
                  v97 = v114;
                  sub_10004A9C4(v111, v114);
                  swift_beginAccess();
                  v98 = v113;
                  sub_100045F08(v113, v97);
                  sub_10004AA28(v98);
                  swift_endAccess();
                  sub_10004AA28(v96);
                  v18 = v121;
                  v22 = v123;
                  goto LABEL_74;
                }

                goto LABEL_102;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_10005732C()
{
  _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  if (sub_1000FF844())
  {
    return 1;
  }

  else
  {
    return sub_1000FF844() & 1;
  }
}

double *sub_1000573A8()
{
  v120 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v122 = *(v120 - 1);
  v0 = __chkstk_darwin(v120);
  v125 = v105 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v4 = v105 - v3;
  v5 = __chkstk_darwin(v2);
  v114 = v105 - v6;
  v7 = __chkstk_darwin(v5);
  v108 = v105 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v105 - v10;
  __chkstk_darwin(v9);
  v13 = (v105 - v12);
  v131 = 0;
  v132 = 0xE000000000000000;
  if (qword_10014B6D0 != -1)
  {
    goto LABEL_103;
  }

LABEL_2:
  v14 = sub_100100AE4();
  sub_100003D38(v14, qword_10014DCA8);
  v15 = sub_100100AC4();
  v16 = sub_1001015D4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = 0x3FE0000000000000;
    _os_log_impl(&_mh_execute_header, v15, v16, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v17, 0xCu);
  }

  v18 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_results;
  v19 = v121;
  swift_beginAccess();
  v20 = *(v18 + v19);
  p_inst_props = (&OBJC_PROTOCOL___UICollectionViewDataSource + 56);
  if (*(v20 + 16))
  {
    v126 = v18;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v27 = 0.0;
LABEL_10:
    if (v24)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        swift_once();
        goto LABEL_2;
      }

      if (v29 >= v25)
      {
        break;
      }

      v24 = *(v20 + 56 + 8 * v29);
      ++v26;
      if (v24)
      {
        v26 = v29;
LABEL_15:
        sub_10004A9C4(*(v20 + 48) + *(v122 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v13);
        v30 = v13[2];
        v31 = *(v13 + v120[9]);
        v32 = v31;
        sub_10004AA28(v13);
        if (v31)
        {

          v28 = 0.5;
        }

        else
        {
          v28 = -0.5;
        }

        v24 &= v24 - 1;
        v27 = v27 + v30 * (1.0 - v28);
        goto LABEL_10;
      }
    }

    v33 = *(v126 + v121);
    v34 = v33[2];
    if (v34)
    {
      v35 = sub_10000FD84(v33[2], 0);
      v126 = sub_10005A454(&v127, v35 + ((*(v122 + 80) + 32) & ~*(v122 + 80)), v34, v33);
      swift_bridgeObjectRetain_n();
      sub_10004A9A0();
      if (v126 != v34)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    v127 = v35;
    v13 = 0;
    sub_100058A4C(&v127);

    v37 = v127;
    v38 = *(v127 + 16);
    if (v38)
    {
      v39 = 0;
      v40 = v27 / v34;
      v117 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager30MOSuggestionAssetMapsClusterer_inputClusters;
      v36 = v122;
      v116 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v41 = v127 + v116;
      v105[2] = MKPointOfInterestCategoryReligiousSite;
      v126 = _swiftEmptyArrayStorage;
      v113 = v127;
      v112 = v38;
      v111 = v127 + v116;
      v119 = v11;
      while (1)
      {
        if (v39 >= *(v37 + 16))
        {
          goto LABEL_99;
        }

        v42 = *(v36 + 72);
        sub_10004A9C4(v41 + v42 * v39, v11);
        v43 = *(v11 + 2);
        if (v43 >= v40)
        {
          goto LABEL_26;
        }

        v123 = v42;
        v127 = v131;
        v128 = v132;
        v13 = *(v11 + 4);
        v11 = *(v11 + 5);
        v129 = v13;
        v130 = v11;
        sub_10005B20C();
        if (sub_100101B04())
        {
          v11 = v119;
          goto LABEL_25;
        }

        v118 = v13;
        v127 = v13;
        v128 = v11;
        v129 = 95;
        v130 = 0xE100000000000000;
        v44 = sub_100101AD4();
        if (!*(v44 + 16))
        {
          goto LABEL_101;
        }

        v45 = v44;
        v13 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1000507C8(v45);
        }

        v11 = v119;
        v46 = *(v45 + 2);
        if (!v46)
        {
          goto LABEL_102;
        }

        *(v45 + 2) = v46 - 1;

        v47 = *(v45 + 2);
        if (!v47)
        {

          v52 = 0;
          goto LABEL_83;
        }

        v48 = 0;
        v115 = 0;
        v124 = 0;
        v49 = (v45 + 40);
        v50 = 0.0;
        v51 = 0.0;
        do
        {
          v54 = *(v49 - 1);
          v55 = *v49;
          if (v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v55 == 0xE000000000000000;
          }

          if (!v56 && (sub_100101E84() & 1) == 0)
          {

            v57 = sub_10005814C(v54, v55);
            if ((v58 & 1) == 0 && (v57 & 0x8000000000000000) == 0)
            {
              v59 = *(v121 + v117);
              if (v57 < *(v59 + 16))
              {
                v60 = (v59 + v116 + v57 * v123);
                v62 = *v60;
                v61 = v60[1];
                v63 = *(v60 + v120[9]);
                if (v63)
                {
                  v64 = v63;
                  if (v115 <= 0)
                  {
                    v109 = v64;
                    v65 = [v109 pointOfInterestCategory];
                    v110 = v13;
                    if (v65)
                    {
                      v66 = v65;
                      v106 = sub_100100FD4();
                      v68 = v67;
                      v69 = sub_100100FD4();
                      v107 = v68;
                      if (v106 == v69 && v68 == v70)
                      {

                        v13 = v110;
                        goto LABEL_38;
                      }

                      v105[1] = v70;
                      LODWORD(v106) = sub_100101E84();

                      v13 = v110;
                      if (v106)
                      {
                        v66 = v109;
                        goto LABEL_38;
                      }
                    }

                    v66 = v109;
                    v72 = [v109 _styleAttributes];
                    if (v72)
                    {

                      v73 = v120;
                      v74 = &v11[v120[10]];
                      v75 = v74[1];
                      v115 = *v74;
                      v109 = v75;
                      v107 = v120[8];

                      v76 = v108;
                      sub_1000FF864();
                      *v76 = v62;
                      *(v76 + 8) = v61;
                      *(v76 + 16) = v43;
                      *(v76 + 24) = 1;
                      v77 = v110;
                      *(v76 + 32) = v118;
                      *(v76 + 40) = v77;
                      *(v76 + v73[9]) = v63;
                      v78 = (v76 + v73[10]);
                      v79 = v109;
                      *v78 = v115;
                      v78[1] = v79;
                      *(v76 + v73[11]) = 0;
                      *(v76 + v73[12]) = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v126 = sub_10000F704(0, *(v126 + 2) + 1, 1, v126);
                      }

                      v81 = *(v126 + 2);
                      v80 = *(v126 + 3);
                      if (v81 >= v80 >> 1)
                      {
                        v126 = sub_10000F704(v80 > 1, v81 + 1, 1, v126);
                      }

                      v82 = v126;
                      *(v126 + 2) = v81 + 1;
                      sub_10004AA84(v108, v82 + v116 + v81 * v123);
                      if (v51 != 0.0)
                      {
                        v51 = v51 + (v51 - v62) / 7.0;
                      }

                      v13 = v110;
                      if (v50 != 0.0)
                      {
                        v50 = v50 + (v50 - v61) / 7.0;
                      }

                      v115 = 1;
LABEL_46:
                      v124 = v63;
                      goto LABEL_47;
                    }

LABEL_38:
                  }
                }

                if (v51 == 0.0)
                {
                  v51 = v62;
                }

                else
                {
                  v51 = (v51 + v62) * 0.5;
                }

                if (v50 == 0.0)
                {
                  v50 = v61;
                }

                else
                {
                  v50 = (v50 + v61) * 0.5;
                }

                if (__OFADD__(v48++, 1))
                {
                  goto LABEL_100;
                }

                goto LABEL_46;
              }
            }
          }

LABEL_47:
          v49 += 2;
          --v47;
        }

        while (v47);

        v41 = v111;
        if (v48 < 1)
        {
          v37 = v113;
          v38 = v112;
        }

        else
        {
          v83 = v120;
          v84 = &v11[v120[10]];
          v85 = v84[1];
          v115 = *v84;
          v86 = v124;
          v87 = v124;

          v88 = v114;
          sub_1000FF864();
          *v88 = v51;
          *(v88 + 8) = v50;
          *(v88 + 16) = v43;
          v89 = v118;
          *(v88 + 24) = v48;
          *(v88 + 32) = v89;
          *(v88 + 40) = v13;
          *(v88 + v83[9]) = v86;
          v90 = (v88 + v83[10]);
          *v90 = v115;
          v90[1] = v85;
          *(v88 + v83[11]) = 0;
          *(v88 + v83[12]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_10000F704(0, *(v126 + 2) + 1, 1, v126);
          }

          v92 = *(v126 + 2);
          v91 = *(v126 + 3);
          v37 = v113;
          v38 = v112;
          v11 = v119;
          if (v92 >= v91 >> 1)
          {
            v126 = sub_10000F704(v91 > 1, v92 + 1, 1, v126);
          }

          v93 = v126;
          *(v126 + 2) = v92 + 1;
          sub_10004AA84(v114, v93 + v116 + v92 * v123);
        }

        v52 = v124;
LABEL_83:
        v133._countAndFlagsBits = v118;
        v133._object = v13;
        sub_1001010B4(v133);

LABEL_25:
        v36 = v122;
LABEL_26:
        ++v39;
        sub_10004AA28(v11);
        if (v39 == v38)
        {

          goto LABEL_86;
        }
      }
    }

    v126 = _swiftEmptyArrayStorage;
    v36 = v122;
LABEL_86:
    p_inst_props = &OBJC_PROTOCOL___UICollectionViewDataSource.inst_props;
  }

  else
  {
LABEL_20:
    v126 = _swiftEmptyArrayStorage;
    v36 = v122;
  }

  v94 = *(p_inst_props[410] + v121);
  v95 = *(v94 + 16);
  if (v95)
  {
    v96 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v97 = v94 + v96;
    v98 = *(v36 + 72);
    v124 = *(p_inst_props[410] + v121);

    do
    {
      sub_10004A9C4(v97, v4);
      v127 = v131;
      v128 = v132;
      v100 = *(v4 + 4);
      v101 = *(v4 + 5);
      v129 = v100;
      v130 = v101;
      sub_10005B20C();
      if ((sub_100101B04() & 1) == 0)
      {
        sub_10004A9C4(v4, v125);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_10000F704(0, *(v126 + 2) + 1, 1, v126);
        }

        v103 = *(v126 + 2);
        v102 = *(v126 + 3);
        if (v103 >= v102 >> 1)
        {
          v126 = sub_10000F704(v102 > 1, v103 + 1, 1, v126);
        }

        v99 = v126;
        *(v126 + 2) = v103 + 1;
        sub_10004AA84(v125, v99 + v96 + v103 * v98);
        v134._countAndFlagsBits = v100;
        v134._object = v101;
        sub_1001010B4(v134);
      }

      sub_10004AA28(v4);
      v97 += v98;
      --v95;
    }

    while (v95);
  }

  return v126;
}

uint64_t sub_10005814C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_100101CE4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100058AF4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_10005847C()
{
  v2.receiver = v0;
  v2.super_class = _s30MOSuggestionAssetMapsClustererCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100058554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000FF874();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100058614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000FF874();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s30MOSuggestionAssetMapsClustererC7ClusterVMa()
{
  result = qword_10014DD68;
  if (!qword_10014DD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058704()
{
  sub_1000587D0();
  if (v0 <= 0x3F)
  {
    sub_1000FF874();
    if (v1 <= 0x3F)
    {
      sub_10005882C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000587D0()
{
  if (!qword_10014DD78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10014DD78);
    }
  }
}

void sub_10005882C()
{
  if (!qword_10014DD80)
  {
    sub_100058884();
    v0 = sub_100101A94();
    if (!v1)
    {
      atomic_store(v0, &qword_10014DD80);
    }
  }
}

unint64_t sub_100058884()
{
  result = qword_10014DD88;
  if (!qword_10014DD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014DD88);
  }

  return result;
}

uint64_t sub_100058918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100058960(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

Swift::Int sub_100058A4C(size_t *a1)
{
  v2 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100071BC0(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100059080(v6);
  *a1 = v3;
  return result;
}

unsigned __int8 *sub_100058AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100101144();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10006A434();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100101CE4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

Swift::Int sub_100059080(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_100101E34(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
        v6 = sub_100101214();
        *(v6 + 2) = v5;
      }

      v7 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000593B0(v8, v9, a1, v4);
      v6[2] = 0.0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000591AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000591AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      sub_10004A9C4(v24, v18);
      sub_10004A9C4(v21, v14);
      v26 = v18[2];
      v27 = v14[2];
      sub_10004AA28(v14);
      result = sub_10004AA28(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_10004AA84(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10004AA84(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000593B0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v118 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v114 = *(v118 - 8);
  v9 = __chkstk_darwin(v118);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v117 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v103 - v14);
  result = __chkstk_darwin(v13);
  v18 = (&v103 - v17);
  v116 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100071584(v21);
      v21 = result;
    }

    v119 = v21;
    v99 = *(v21 + 2);
    if (v99 >= 2)
    {
      while (*v116)
      {
        v100 = v21[2 * v99];
        v101 = v21[2 * v99 + 3];
        sub_100059BF4(*v116 + *(v114 + 72) * *&v100, *v116 + *(v114 + 72) * *&v21[2 * v99 + 2], *v116 + *(v114 + 72) * *&v101, v5);
        if (v6)
        {
        }

        if (*&v101 < *&v100)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100071584(v21);
        }

        if (v99 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v102 = &v21[2 * v99];
        *v102 = v100;
        v102[1] = v101;
        v119 = v21;
        result = sub_1000714F8(v99 - 1);
        v21 = v119;
        v99 = *(v119 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v106 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = v22;
      v25 = *v116;
      v26 = *(v114 + 72);
      v5 = *v116 + v26 * v23;
      sub_10004A9C4(v5, v18);
      sub_10004A9C4(v25 + v26 * v24, v15);
      v27 = v18[2];
      v28 = v15[2];
      sub_10004AA28(v15);
      result = sub_10004AA28(v18);
      v107 = v24;
      v29 = v24 + 2;
      v115 = v26;
      v30 = v25 + v26 * v29;
      while (v19 != v29)
      {
        sub_10004A9C4(v30, v18);
        sub_10004A9C4(v5, v15);
        v31 = v18[2];
        v32 = v15[2];
        sub_10004AA28(v15);
        result = sub_10004AA28(v18);
        ++v29;
        v30 += v115;
        v5 += v115;
        if (v28 < v27 == v32 >= v31)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v107;
      if (v28 < v27)
      {
        if (v19 < v107)
        {
          goto LABEL_123;
        }

        if (v107 < v19)
        {
          v104 = v21;
          v105 = v6;
          v33 = v115 * (v19 - 1);
          v34 = v19 * v115;
          v113 = v19;
          v35 = v19;
          v36 = v107;
          v37 = v107 * v115;
          do
          {
            if (v36 != --v35)
            {
              v5 = *v116;
              if (!*v116)
              {
                goto LABEL_129;
              }

              sub_10004AA84(v5 + v37, v110);
              if (v37 < v33 || v5 + v37 >= v5 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10004AA84(v110, v5 + v33);
            }

            ++v36;
            v33 -= v115;
            v34 -= v115;
            v37 += v115;
          }

          while (v36 < v35);
          v21 = v104;
          v6 = v105;
          v22 = v107;
          v19 = v113;
        }
      }
    }

    v38 = v116[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_122;
      }

      if (v19 - v22 < v106)
      {
        if (__OFADD__(v22, v106))
        {
          goto LABEL_124;
        }

        if (v22 + v106 >= v38)
        {
          v39 = v116[1];
        }

        else
        {
          v39 = v22 + v106;
        }

        if (v39 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000F368(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_10000F368((v41 > 1), v42 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[2 * v42];
    *(v43 + 4) = v22;
    *(v43 + 5) = v40;
    v44 = *v108;
    if (!*v108)
    {
      goto LABEL_131;
    }

    v111 = v40;
    if (v42)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_110;
          }

          v62 = &v21[2 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_113;
          }

          v68 = &v21[2 * v45 + 4];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_117;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[2 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_112;
        }

        v75 = &v21[2 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_115;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        v83 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v116)
        {
          goto LABEL_128;
        }

        v84 = *&v21[2 * v83 + 4];
        v5 = *&v21[2 * v45 + 5];
        sub_100059BF4(*v116 + *(v114 + 72) * v84, *v116 + *(v114 + 72) * *&v21[2 * v45 + 4], *v116 + *(v114 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100071584(v21);
        }

        if (v83 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v85 = &v21[2 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v119 = v21;
        result = sub_1000714F8(v45);
        v21 = v119;
        v5 = *(v119 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[2 * v5 + 4];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_108;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_109;
      }

      v57 = &v21[2 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_111;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_114;
      }

      if (v61 >= v53)
      {
        v79 = &v21[2 * v45 + 4];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v116[1];
    v20 = v111;
    if (v111 >= v19)
    {
      goto LABEL_94;
    }
  }

  v104 = v21;
  v105 = v6;
  v86 = *v116;
  v87 = *(v114 + 72);
  v88 = *v116 + v87 * (v19 - 1);
  v89 = v19;
  v90 = -v87;
  v107 = v22;
  v91 = v22 - v89;
  v113 = v89;
  v109 = v87;
  v92 = v86 + v89 * v87;
  v111 = v39;
LABEL_85:
  v5 = v92;
  v112 = v91;
  v93 = v91;
  v115 = v88;
  v94 = v88;
  while (1)
  {
    sub_10004A9C4(v5, v18);
    sub_10004A9C4(v94, v15);
    v95 = v18[2];
    v96 = v15[2];
    sub_10004AA28(v15);
    result = sub_10004AA28(v18);
    if (v96 >= v95)
    {
LABEL_84:
      v88 = v115 + v109;
      v91 = v112 - 1;
      v92 += v109;
      v40 = v111;
      if (++v113 != v111)
      {
        goto LABEL_85;
      }

      v21 = v104;
      v6 = v105;
      v22 = v107;
      if (v111 < v107)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v86)
    {
      break;
    }

    v97 = v117;
    sub_10004AA84(v5, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_10004AA84(v97, v94);
    v94 += v90;
    v5 += v90;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100059BF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v8 = __chkstk_darwin(v44);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v24 = v40;
            goto LABEL_57;
          }

          v29 = a3;
          v41 = v24;
          a3 += v25;
          v30 = v26 + v25;
          sub_10004A9C4(v30, v12);
          v31 = v27;
          v32 = v27;
          v33 = v12;
          v34 = v45;
          sub_10004A9C4(v32, v45);
          v35 = *(v33 + 16);
          v36 = *(v34 + 16);
          v37 = v34;
          v12 = v33;
          sub_10004AA28(v37);
          sub_10004AA28(v33);
          if (v36 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          v28 = v30 > v43;
          v25 = v42;
          if (!v28)
          {
            goto LABEL_55;
          }
        }

        if (v29 < a2 || a3 >= a2)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v38 = v29 == a2;
          a2 = v31;
          v25 = v42;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_10004A9C4(a2, v12);
        v21 = v45;
        sub_10004A9C4(a4, v45);
        v22 = v12[2];
        v23 = *(v21 + 16);
        sub_10004AA28(v21);
        sub_10004AA28(v12);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_100071598(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_10005A058(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1001007D4();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10005A2FC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005A454(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v32 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_10004A9C4(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_10004AA84(v11, v14);
      sub_10004AA84(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10005A67C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_100007210(&qword_10014C540);
  v38 = *(v41 - 8);
  v8 = __chkstk_darwin(v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = (&v35 - v11);
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v25;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v13 - 32);
    v37 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v21 = v42;
    while (v17)
    {
LABEL_14:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v18;
      v26 = v24 | (v18 << 6);
      v27 = *(v21 + 48);
      v28 = sub_1000FF874();
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v26;
      v31 = v40;
      (*(v29 + 16))(v40, v30, v28);
      *&v31[*(v41 + 48)] = *(*(v21 + 56) + 8 * v26);
      v32 = v31;
      a1 = v39;
      sub_10005B2E4(v32, v39);
      sub_10005B2E4(a1, a2);
      if (v20 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v20;
      v33 = __OFADD__(v20++, 1);
      v18 = v25;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v18;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v23);
      ++v22;
      if (v17)
      {
        v18 = v23;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v25 = v34 - 1;
    a3 = result;
LABEL_23:
    v15 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

double *sub_10005A900(double *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100007210(&qword_10014C508);
    v4 = sub_100101214();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_10005A99C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = sub_100101214();
    *(v3 + 2) = v2;
    memset_pattern16(v3 + 4, &unk_10010D740, 8 * v2);
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

  v5 = sub_10005A900(v3, v4);

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      return v5;
    }

    v9 = 0;
    v30 = v1;
    v31 = v1 + 8;
    v10 = 5;
    v11 = 1;
    v12 = v7 - 1;
    v28 = v7 - 1;
    v29 = *(v1 + 16);
    while (v9 != v8)
    {
      v13 = *(v1 + 16);
      if (v7 > v13 || v9 + 1 >= v13)
      {
        goto LABEL_32;
      }

      v32 = v9 + 1;
      v15 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = *(v15 + 72);
      v18 = (v1 + v16 + v17 * v9);
      v33 = v11;
      v34 = v10;
      v19 = (v31 + v16 + v17 * v11);
      v20 = v12;
      do
      {
        v21 = *v18;
        v22 = v18[1];
        v24 = *(v19 - 1);
        v23 = *v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000507F0(v5);
          v5 = result;
        }

        if (v9 >= *(v5 + 2))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v25 = *&v5[v9 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v9 + 4] = v25;
        if ((result & 1) == 0)
        {
          result = sub_1000507DC(v25);
          v25 = result;
          *&v5[v9 + 4] = result;
        }

        if ((v10 - 4) >= *(v25 + 16))
        {
          goto LABEL_28;
        }

        v26 = (v21 - v24) * (v21 - v24) + (v22 - v23) * (v22 - v23);
        *(v25 + 8 * v10) = v26;
        if ((v10 - 4) >= *(v5 + 2))
        {
          goto LABEL_29;
        }

        v27 = *&v5[v10];
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v10] = v27;
        if ((result & 1) == 0)
        {
          result = sub_1000507DC(v27);
          v27 = result;
          *&v5[v10] = result;
        }

        if (v9 >= *(v27 + 16))
        {
          goto LABEL_30;
        }

        *(v27 + 8 * v9 + 32) = v26;
        ++v10;
        v19 = (v19 + v17);
        --v20;
      }

      while (v20);
      --v12;
      v10 = v34 + 1;
      v11 = v33 + 1;
      ++v9;
      v8 = v28;
      v7 = v29;
      v1 = v30;
      if (v32 == v28)
      {
        return v5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10005AC38(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v53 = *(a1 + 96);
    v10 = *(a1 + 48);
    v49 = *(a1 + 32);
    v50 = v10;
    v11 = *(a1 + 80);
    v51 = *(a1 + 64);
    v52 = v11;
    if (v5 == 1)
    {
      longitude = *(&v49 + 1);
      latitude = *&v49;
      if ((v51 & 1) == 0 && *(&v50 + 1) >= 2)
      {
        if (a5)
        {
          sub_10005B15C(&v49, v48);
          v14 = 0.01;
LABEL_23:
          v56.span.latitudeDelta = v14;
LABEL_29:
          v37 = 1.4;
LABEL_33:
          v38 = v56.span.latitudeDelta * v37;
          v39 = v14 * v37;
          if (a2)
          {
            v38 = v38 * 1.4;
            v39 = v39 * 0.9;
            latitude = latitude + v38 / -12.0;
          }

          if (a4)
          {
            v38 = v38 * 1.3;
          }

          if (a3)
          {
            v39 = v39 * 1.3;
          }

          v40 = fmin(v39, 180.0);
          v41 = fmin(v38, 180.0);
          if (!sub_1000BF560(latitude, longitude, v41, v40))
          {
            if (qword_10014B6D0 != -1)
            {
              swift_once();
            }

            v42 = sub_100100AE4();
            sub_100003D38(v42, qword_10014DCA8);
            v43 = sub_100100AC4();
            v44 = sub_1001015B4();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 134218752;
              *(v45 + 4) = latitude;
              *(v45 + 12) = 2048;
              *(v45 + 14) = longitude;
              *(v45 + 22) = 2048;
              *(v45 + 24) = v41;
              *(v45 + 32) = 2048;
              *(v45 + 34) = v40;
              _os_log_impl(&_mh_execute_header, v43, v44, "[MapSnapshot] makeRegion failed with invalid region: centerLatitude = %f, centerLongitude = %f, targetLatitudeDelta = %f, targetLongitudeDelta = %f", v45, 0x2Au);
            }

            v57.origin.x = MKMapRectWorld.origin.x;
            v57.origin.y = MKMapRectWorld.origin.y;
            v57.size.width = MKMapRectWorld.size.width;
            v57.size.height = MKMapRectWorld.size.height;
            *&latitude = MKCoordinateRegionForMapRect(v57);
          }

          sub_10005B1B8(&v49);
          return latitude;
        }

        sub_10005B15C(&v49, v48);
        v14 = 0.01;
LABEL_31:
        v56.span.latitudeDelta = v14;
        goto LABEL_32;
      }

      if (v53 <= 0.0)
      {
        if (a5)
        {
          sub_10005B15C(&v49, v48);
          v14 = 0.04;
          goto LABEL_23;
        }

        sub_10005B15C(&v49, v48);
        v14 = 0.04;
        goto LABEL_31;
      }

      v34 = v53 / 111000.0;
      if (v53 >= 150.0)
      {
        v36 = v34 * 3.0 + 0.003;
        if (v36 <= 0.1)
        {
          v35 = v36;
        }

        else
        {
          v35 = 0.1;
        }
      }

      else
      {
        v35 = v34 + v34 + 0.003;
      }

      sub_10005B15C(&v49, v48);
      v14 = v35;
      v56.span.latitudeDelta = v35;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = (a1 + 32);
      sub_10005B15C(&v49, v48);
      v48[0] = _swiftEmptyArrayStorage;
      sub_100016E8C(0, v5, 0);
      v20 = v48[0];
      v21 = *(v48[0] + 16);
      v22 = v5;
      do
      {
        v23 = *v19;
        v48[0] = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          v47 = v23;
          sub_100016E8C((v24 > 1), v21 + 1, 1);
          v23 = v47;
          v20 = v48[0];
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 16 * v21 + 32) = v23;
        v19 = (v19 + 72);
        ++v21;
        --v22;
      }

      while (v22);
      v25 = [objc_opt_self() polygonWithCoordinates:v20 + 32 count:v5];

      [v25 boundingMapRect];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v55.origin.x = v27;
      v55.origin.y = v29;
      v55.size.width = v31;
      v55.size.height = v33;
      *(&v14 - 3) = MKCoordinateRegionForMapRect(v55);
      latitude = v56.center.latitude;
      longitude = v56.center.longitude;
      if (a5)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    v37 = 1.1;
    goto LABEL_33;
  }

  if (qword_10014B6D0 != -1)
  {
    swift_once();
  }

  v15 = sub_100100AE4();
  sub_100003D38(v15, qword_10014DCA8);
  v16 = sub_100100AC4();
  v17 = sub_1001015B4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[MapSnapshot] makeRegion failed with 0 locations", v18, 2u);
  }

  v54.origin.x = MKMapRectNull.origin.x;
  v54.origin.y = MKMapRectNull.origin.y;
  v54.size.width = MKMapRectNull.size.width;
  v54.size.height = MKMapRectNull.size.height;
  *&latitude = MKCoordinateRegionForMapRect(v54);
  return latitude;
}

unint64_t sub_10005B20C()
{
  result = qword_10014E1E0;
  if (!qword_10014E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014E1E0);
  }

  return result;
}

uint64_t sub_10005B260(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B354()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014DDE0);
  v1 = sub_100003D38(v0, qword_10014DDE0);
  if (qword_10014B8A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158870);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10005B41C()
{
  v0 = sub_100007210(&qword_10014DE90);
  sub_100003CD4(v0, qword_100158630);
  sub_100003D38(v0, qword_100158630);
  v1 = [objc_opt_self() gigabytes];
  sub_10005BACC();
  return sub_1000FF194();
}

uint64_t sub_10005B4D4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_1000FFB34();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  v27 = CGRectGetWidth(v39) + -8.0 + -4.0;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  Width = CGRectGetWidth(v40);
  v29 = v27 * 0.5;
  if (v27 * 0.5 >= Width)
  {
    v31 = v27 * 0.25;
    if (Width < v29 && v31 < Width)
    {
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      if (CGRectGetHeight(v43) >= v31)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (Width < v31 && (v42.origin.x = a1, v42.origin.y = a2, v42.size.width = a3, v42.size.height = a4, Width <= CGRectGetHeight(v42) * 0.5) && ((*(v9 + 104))(v12, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8), v33 = sub_1000FFB24(), (*(v9 + 8))(v12, v8), (v33 & 1) != 0))
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    if (Width == CGRectGetHeight(v41))
    {
      return 7;
    }

    v34 = *(v9 + 104);
    v34(v17, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v35 = sub_1000FFB24();
    v36 = *(v9 + 8);
    v36(v17, v8);
    if ((v35 & 1) != 0 && (v44.origin.x = a1, v44.origin.y = a2, v44.size.width = a3, v44.size.height = a4, Width * 1.5 <= CGRectGetHeight(v44)))
    {
      return 7;
    }

    else
    {
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      if (v27 * 0.25 >= CGRectGetHeight(v45))
      {
        return 2;
      }

      else
      {
        v34(v15, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8);
        v37 = sub_1000FFB24();
        v36(v15, v8);
        result = 1;
        if (v37)
        {
          v46.origin.x = a1;
          v46.origin.y = a2;
          v46.size.width = a3;
          v46.size.height = a4;
          if (CGRectGetHeight(v46) == Width * 1.5)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_10005B880(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014DE90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  if (qword_10014B6D8 != -1)
  {
    swift_once();
  }

  v6 = sub_100100AE4();
  sub_100003D38(v6, qword_10014DDE0);
  v7 = sub_100100AC4();
  v8 = sub_1001015D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "(isMaxMegabytesReached) entryInMegabytes: %{bytes}ld", v9, 0xCu);
  }

  v10 = [objc_opt_self() bytes];
  sub_10005BACC();
  sub_1000FF194();
  if (qword_10014B6E0 != -1)
  {
    swift_once();
  }

  sub_100003D38(v2, qword_100158630);
  sub_10005BB18();
  v11 = sub_100100EB4();
  (*(v3 + 8))(v5, v2);
  return (v11 & 1) == 0;
}

unint64_t sub_10005BACC()
{
  result = qword_10014DE98;
  if (!qword_10014DE98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014DE98);
  }

  return result;
}

unint64_t sub_10005BB18()
{
  result = qword_10014DEA0;
  if (!qword_10014DEA0)
  {
    sub_10000F19C(&qword_10014DE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014DEA0);
  }

  return result;
}

uint64_t sub_10005BB7C()
{
  v0 = sub_100100774();
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DataStackConfiguration();
  sub_100003CD4(v3, qword_100158648);
  v4 = sub_100003D38(v3, qword_100158648);
  sub_100100764();
  return sub_10005BC88(v2, NSFileProtectionCompleteUnlessOpen, v4);
}

uint64_t type metadata accessor for DataStackConfiguration()
{
  result = qword_10014DF00;
  if (!qword_10014DF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005BC88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = sub_100100774();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v6 + 16);
  v17(&v25 - v15, a1, v5);
  v17(v14, v16, v5);
  v17(v11, v14, v5);
  v18 = (*(v6 + 88))(v11, v5);
  if (v18 == enum case for Runtime.Environment.production(_:))
  {
    v19 = 0;
LABEL_7:
    v20 = *(v6 + 8);
    v21 = a2;
    v20(v14, v5);
    v20(v16, v5);
    v22 = v26;
    *v26 = v21;
    *(v22 + 8) = v19;
    v17(v25, a1, v5);
    type metadata accessor for DataStackConfiguration();
    sub_100100564();
    return (v20)(a1, v5);
  }

  if (v18 == enum case for Runtime.Environment.staging(_:))
  {
    v19 = 1;
    goto LABEL_7;
  }

  if (v18 == enum case for Runtime.Environment.testing(_:))
  {
    v19 = 2;
    goto LABEL_7;
  }

  v24 = a2;
  result = sub_100101E74();
  __break(1u);
  return result;
}

uint64_t sub_10005BF24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100100574();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10005BFE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100100574();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005C088()
{
  result = sub_100100574();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005C104()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014DF38);
  v1 = sub_100003D38(v0, qword_10014DF38);
  if (qword_10014B878 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_1001587F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10005C1CC(void *a1, unsigned __int8 a2)
{
  v67 = sub_1000FF804();
  v64 = *(v67 - 8);
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v67);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_1000FF874();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v62 = &v58 - v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_sessionID;
  sub_1000FF864();
  v2[OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_persistentStoresLoadSuccess] = 0;
  v63 = a1;
  v18 = sub_1000F7E70(a1, a2);
  v19 = OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_container;
  *&v2[OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_container] = v18;
  v61 = v10;
  v20 = *(v10 + 16);
  v68 = v16;
  v65 = v9;
  v20(v16, &v2[v17], v9);
  v66 = v8;
  sub_1000FF7F4();
  v21 = [*&v2[v19] viewContext];
  *&v2[OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_context] = v21;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 mergeByPropertyStoreTrumpMergePolicy];
  [v23 setMergePolicy:v24];

  v25 = type metadata accessor for CoreDataStackShared();
  v70.receiver = v2;
  v70.super_class = v25;
  v26 = objc_msgSendSuper2(&v70, "init");
  if (MKBGetDeviceLockState() == 1)
  {
    v27 = v68;
    v28 = v65;
    if (qword_10014B6F0 != -1)
    {
      swift_once();
    }

    v29 = sub_100100AE4();
    sub_100003D38(v29, qword_10014DF38);
    v30 = v62;
    v20(v62, v27, v28);
    v31 = sub_100100AC4();
    v32 = sub_1001015B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      sub_10005D450();
      v35 = sub_100101E44();
      v36 = v28;
      v38 = v37;
      v39 = *(v61 + 8);
      v39(v30, v36);
      v40 = sub_10007A774(v35, v38, aBlock);

      *(v33 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s (sharedCoredataInit) SharedDeviceInfoProvider.isDeviceLocked == TRUE, unable to complete CoreDataStackShared initialization.", v33, 0xCu);
      sub_10001100C(v34);

      (*(v64 + 8))(v66, v67);
      v39(v68, v65);
    }

    else
    {

      v56 = *(v61 + 8);
      v56(v30, v28);
      (*(v64 + 8))(v66, v67);
      v56(v27, v28);
    }
  }

  else
  {
    v58 = *&v26[OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_container];
    v41 = v59;
    v42 = v65;
    v20(v59, v68, v65);
    v62 = v26;
    v43 = v64;
    v44 = v60;
    (*(v64 + 16))(v60, v66, v67);
    v45 = v61;
    v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v47 = (v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (*(v43 + 80) + v47 + 8) & ~*(v43 + 80);
    v49 = swift_allocObject();
    v50 = v41;
    v51 = v42;
    (*(v45 + 32))(v49 + v46, v50, v42);
    *(v49 + v47) = v62;
    v52 = v67;
    (*(v43 + 32))(v49 + v48, v44, v67);
    aBlock[4] = sub_10005D344;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005CF6C;
    aBlock[3] = &unk_100136730;
    v53 = _Block_copy(aBlock);
    v54 = v58;
    v55 = v62;

    [v54 loadPersistentStoresWithCompletionHandler:v53];
    _Block_release(v53);

    (*(v43 + 8))(v66, v52);
    v26 = v62;
    (*(v45 + 8))(v68, v51);
  }

  return v26;
}

void sub_10005C854(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v9 = sub_1000FF804();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000FF874();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  if (a2)
  {
    v19 = sub_1000FF324();
    if (qword_10014B6F0 != -1)
    {
      swift_once();
    }

    v20 = sub_100100AE4();
    sub_100003D38(v20, qword_10014DF38);
    (*(v14 + 16))(v18, a3, v13);
    v21 = v19;
    v22 = sub_100100AC4();
    v23 = sub_1001015C4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v68 = v26;
      *v24 = 136446466;
      sub_10005D450();
      v27 = sub_100101E44();
      v28 = v13;
      v30 = v29;
      (*(v14 + 8))(v18, v28);
      v31 = sub_10007A774(v27, v30, &v68);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v25 = v21;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s (sharedCoredataInit) LoadPersistentStores Unresolved error: %@", v24, 0x16u);
      sub_100011058(v25);

      sub_10001100C(v26);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }

  else
  {
    v63 = a5;
    v64 = v16;
    a4[OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_persistentStoresLoadSuccess] = 1;
    v33 = [*&a4[OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_container] viewContext];
    v34 = [v33 persistentStoreCoordinator];

    v65 = a3;
    v62 = v12;
    if (v34)
    {
      v35 = [v34 persistentStores];

      sub_10005D4A8();
      v36 = sub_1001011D4();

      if (v36 >> 62)
      {
        v37 = sub_100101DA4();
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v37 = 0;
    }

    v66 = v10;
    v38 = v13;
    if (qword_10014B6F0 != -1)
    {
      swift_once();
    }

    v39 = sub_100100AE4();
    sub_100003D38(v39, qword_10014DF38);
    v40 = a4;
    v41 = sub_100100AC4();
    v42 = sub_1001015D4();

    v43 = os_log_type_enabled(v41, v42);
    v67 = v9;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = v45;
      *v44 = 136446466;
      sub_10005D450();
      v46 = sub_100101E44();
      v48 = sub_10007A774(v46, v47, &v68);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2048;
      *(v44 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s(sharedCoredataInit) persistentStoresCount:%ld", v44, 0x16u);
      sub_10001100C(v45);
      v9 = v67;
    }

    v49 = v64;
    (*(v14 + 16))(v64, v65, v38);
    v50 = v66;
    v51 = v62;
    (*(v66 + 16))(v62, v63, v9);
    v52 = sub_100100AC4();
    v53 = sub_1001015D4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v68 = v65;
      *v54 = 136446466;
      sub_10005D450();
      v55 = sub_100101E44();
      v57 = v56;
      (*(v14 + 8))(v49, v38);
      v58 = sub_10007A774(v55, v57, &v68);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2048;
      sub_1000FF784();
      v60 = v59;
      (*(v50 + 8))(v51, v67);
      *(v54 + 14) = -v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s (sharedCoredataInit) container.loadPersistentStores completed in %f seconds.", v54, 0x16u);
      sub_10001100C(v65);
    }

    else
    {

      (*(v50 + 8))(v51, v9);
      (*(v14 + 8))(v49, v38);
    }
  }
}

void sub_10005CF6C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_10005D028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataStackShared();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CoreDataStackShared()
{
  result = qword_10014DF80;
  if (!qword_10014DF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005D140()
{
  result = sub_1000FF874();
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

uint64_t sub_10005D1E8()
{
  v1 = sub_1000FF874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1000FF804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10005D344(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000FF874() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000FF804() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_10005C854(a1, a2, v2 + v6, v9, v10);
}

uint64_t sub_10005D438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005D450()
{
  result = qword_10014C018;
  if (!qword_10014C018)
  {
    sub_1000FF874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014C018);
  }

  return result;
}

unint64_t sub_10005D4A8()
{
  result = qword_10014DF90;
  if (!qword_10014DF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014DF90);
  }

  return result;
}

uint64_t sub_10005D4F4()
{
  v0 = sub_1000FF514();
  v8[2] = *(v0 - 8);
  __chkstk_darwin(v0);
  v1 = sub_1000FF304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007210(&unk_10014DFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010BC80;
  *(inited + 32) = NSURLCreationDateKey;
  v6 = NSURLCreationDateKey;
  sub_100032D28(inited);
  swift_setDeallocating();
  sub_10005DD48(inited + 32);
  sub_1000FF444();

  sub_1000FF2F4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10005D910()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014DF98);
  v1 = sub_100003D38(v0, qword_10014DF98);
  if (qword_10014B8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_1001588A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10005D9D8(uint64_t a1@<X8>)
{
  v2 = sub_1000FF3F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v6 = sub_1000FF874();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (qword_10014B710 != -1)
  {
    swift_once();
  }

  v10 = sub_1001001E4();
  v26 = sub_100003D38(v10, qword_100158698);
  sub_1001001C4();
  sub_1000FF864();
  v11 = sub_1000FF814();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v27[0] = v11;
  v27[1] = v13;
  (*(v3 + 104))(v5, enum case for URL.DirectoryHint.notDirectory(_:), v2);
  sub_10005B20C();
  sub_1000FF4E4();
  (*(v3 + 8))(v5, v2);

  v28._countAndFlagsBits = sub_1000FF424();
  sub_1000FF484(v28);

  v14 = [objc_opt_self() defaultManager];
  sub_1000FF474(v15);
  v17 = v16;
  sub_1000FF474(v18);
  v20 = v19;
  v27[0] = 0;
  v21 = [v14 copyItemAtURL:v17 toURL:v19 error:v27];

  if (v21)
  {
    v22 = v27[0];
    v23 = sub_100100174();
    sub_1000FF404(v23);
  }

  else
  {
    v24 = v27[0];
    sub_1000FF334();

    swift_willThrow();
    v25 = sub_1000FF514();
    (*(*(v25 - 8) + 8))(a1, v25);
  }
}

uint64_t sub_10005DD48(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005DDA4()
{
  result = qword_10014EEC0;
  if (!qword_10014EEC0)
  {
    sub_1000FF514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014EEC0);
  }

  return result;
}

uint64_t sub_10005DDFC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_100101094();
  return sub_100101134();
}

uint64_t sub_10005DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10002FC28(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10000FFB4(v13, &qword_10014CA68);
}

uint64_t sub_10005DF28()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014DFC0);
  sub_100003D38(v0, qword_10014DFC0);
  return sub_100100AD4();
}

id sub_10005DFAC()
{
  result = [objc_opt_self() labelColor];
  qword_100158678 = result;
  return result;
}

void sub_10005DFE8(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView;
  v5 = *&v1[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView];
  if (v5)
  {
    if (a1)
    {
      sub_100010F50(0, &qword_10014CFB0);
      v6 = v5;
      v7 = a1;
      v8 = sub_100101A34();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  v9 = OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryTopConstraint;
  v10 = *&v2[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryTopConstraint];
  if (v10)
  {
    [v10 constant];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = type metadata accessor for JournalTextView();
  v56.receiver = v2;
  v56.super_class = v13;
  objc_msgSendSuper2(&v56, "textContainerInset");
  v55.receiver = v2;
  v55.super_class = v13;
  objc_msgSendSuper2(&v55, "setTextContainerInset:", v12);
  v14 = *&v2[v4];
  if (v14)
  {
    v15 = v14;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 addSubview:v15];
    if ([v15 respondsToSelector:"_accessibilitySetSortPriority:"])
    {
      [v15 _accessibilitySetSortPriority:1000];
      v16 = [v15 subviews];
      sub_100010F50(0, &qword_10014CFB0);
      v17 = sub_1001011D4();

      v54 = v9;
      if (v17 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100101DA4())
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = sub_100101CA4();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          [v20 _accessibilitySetSortPriority:1000];

          ++v19;
          if (v22 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:

      v9 = v54;
    }

    v23 = [v15 topAnchor];
    v24 = [v2 contentLayoutGuide];
    v25 = [v24 topAnchor];

    [v2 textContainerInset];
    v26 = [v23 constraintEqualToAnchor:v25 constant:?];

    v27 = *&v2[v9];
    *&v2[v9] = v26;

    v28 = [v15 layoutMarginsGuide];
    v29 = [v28 leftAnchor];

    v30 = [v2 frameLayoutGuide];
    v31 = [v30 leftAnchor];

    [v2 textContainerInset];
    v33 = [v29 constraintEqualToAnchor:v31 constant:v32];

    v34 = OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryLeftConstraint;
    v35 = *&v2[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryLeftConstraint];
    *&v2[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryLeftConstraint] = v33;

    v36 = [v2 frameLayoutGuide];
    v37 = [v36 rightAnchor];

    v38 = [v15 layoutMarginsGuide];
    v39 = [v38 rightAnchor];

    [v2 textContainerInset];
    v41 = [v37 constraintEqualToAnchor:v39 constant:v40];

    v42 = OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryRightConstraint;
    v43 = *&v2[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryRightConstraint];
    *&v2[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryRightConstraint] = v41;

    sub_100007210(&unk_10014D0F0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_10010D7D0;
    v45 = *&v2[v9];
    if (v45)
    {
      v46 = v44;
      *(v44 + 32) = v45;
      v47 = *&v2[v34];
      if (v47)
      {
        *(v44 + 40) = v47;
        v48 = *&v2[v42];
        if (v48)
        {
          v49 = objc_opt_self();
          *(v46 + 48) = v48;
          sub_100010F50(0, &qword_10014CC08);
          v50 = v45;
          v51 = v47;
          v52 = v48;
          isa = sub_1001011C4().super.isa;

          [v49 activateConstraints:isa];

          return;
        }

LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

id sub_10005E5E0(double a1, double a2, double a3, double a4)
{
  v9 = *&v4[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView];
  if (v9)
  {
    [v9 bounds];
    Height = CGRectGetHeight(v21);
  }

  else
  {
    Height = 0.0;
  }

  v11 = ceil(Height + a1);
  [v4 textContainerInset];
  if (v15 != v11 || v12 != a2 || v13 != a3 || v14 != a4)
  {
    v20.receiver = v4;
    v20.super_class = type metadata accessor for JournalTextView();
    objc_msgSendSuper2(&v20, "setTextContainerInset:", v11, a2, a3, a4);
  }

  [*&v4[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryTopConstraint] setConstant:a1];
  [*&v4[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryLeftConstraint] setConstant:a2];
  return [*&v4[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryRightConstraint] setConstant:a4];
}

id sub_10005E798(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryLeftConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryRightConstraint] = 0;
  v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_isShowingFormattingController] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_journalEntry] = 0;
  *&v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView] = 0;
  v11 = OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_blockQuoteLayerView;
  type metadata accessor for BlockQuoteLayerView();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_removeListsNextClear] = 0;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for JournalTextView();
  v12 = objc_msgSendSuper2(&v19, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  [v12 setPasteDelegate:v12];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  sub_10005EDE8();
  if (qword_10014B680 != -1)
  {
    swift_once();
  }

  v16 = sub_100100F94();
  [v14 setAccessibilityLabel:v16];

  sub_100007210(&qword_10014E1E8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10010C1F0;
  *(v17 + 32) = sub_100100BB4();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v17 + 48) = sub_100100B94();
  *(v17 + 56) = &protocol witness table for UITraitLegibilityWeight;
  sub_1001019C4();

  swift_unknownObjectRelease();

  return v14;
}

id sub_10005EAC4()
{
  if ([v0 isScrollEnabled])
  {
    goto LABEL_6;
  }

  result = [v0 text];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = sub_100100FD4();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 || (v7 = [v0 attributedPlaceholder]) == 0 || (v7, objc_msgSend(v0, "_preferredMaxLayoutWidth"), v9 = v8, objc_msgSend(v0, "textContainerInset"), v11 = v9 - v10, objc_msgSend(v0, "textContainerInset"), v13 = v11 - v12, v13 <= 0.0))
  {
LABEL_6:
    v15.receiver = v0;
    v15.super_class = type metadata accessor for JournalTextView();
    return objc_msgSendSuper2(&v15, "intrinsicContentSize");
  }

  result = [v0 _placeholderLabel];
  if (result)
  {
    v14 = result;
    [result sizeThatFits:{v13, 1.79769313e308}];

    [v0 textContainerInset];
    return [v0 textContainerInset];
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_10005EC50()
{
  v1 = *&v0[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryTopConstraint];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView];
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v23);
      [v0 textContainerInset];
      v7 = Width - v6;
      [v0 textContainerInset];
      v9 = v7 - v8;
      [v3 constant];
      v11 = v10;
      LODWORD(v12) = 1148846080;
      LODWORD(v13) = 1112014848;
      [v4 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v12, v13}];
      v15 = ceil(v11 + v14);
      [v0 textContainerInset];
      if (v16 != v15)
      {
        v17 = type metadata accessor for JournalTextView();
        v21.receiver = v0;
        v21.super_class = v17;
        objc_msgSendSuper2(&v21, "textContainerInset");
        v20.receiver = v0;
        v20.super_class = v17;
        objc_msgSendSuper2(&v20, "setTextContainerInset:", v15);
      }
    }
  }

  v18 = type metadata accessor for JournalTextView();
  v22.receiver = v0;
  v22.super_class = v18;
  return objc_msgSendSuper2(&v22, "layoutSubviews");
}

id sub_10005EDE8()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setDataDetectorTypes:-1];
  v31 = 0;
  result = [v0 attributedText];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  result = [v1 attributedText];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result length];

  v6 = swift_allocObject();
  *(v6 + 16) = &v31;
  *(v6 + 24) = &v31 + 1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10006C47C;
  *(v7 + 24) = v6;
  v29 = sub_10006C4D0;
  v30 = v7;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v27 = sub_1000E3338;
  v28 = &unk_100137018;
  v8 = _Block_copy(&aBlock);

  [v3 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v8}];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  if ((v31 & 1) == 0)
  {
    v10 = [v1 traitCollection];
    v11 = sub_1000C4A0C(v10);

    [v1 setFont:v11];
  }

  if ((v31 & 0x100) != 0)
  {
    goto LABEL_9;
  }

  if (qword_10014B708 != -1)
  {
    goto LABEL_19;
  }

LABEL_8:
  [v1 setTextColor:qword_100158678];
LABEL_9:
  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setSupportsAdaptiveImageGlyph:0];
  [v1 setAllowsEditingTextAttributes:1];
  [v1 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v12 = [v1 textContainer];
  [v12 setLineFragmentPadding:0.0];

  v13 = [v1 textLayoutManager];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 textContentManager];

    if (v15)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        [v16 setDelegate:v1];
      }
    }
  }

  v17 = sub_100010F50(0, &unk_10014E108);
  v18 = sub_1000CB144();
  v28 = v17;
  *&aBlock = v18;
  v19 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v20 = sub_100100E64();

  v25 = v20;
  if (v28)
  {
    sub_10002FC28(&aBlock, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000FB8AC(v24, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v25 = v20;
  }

  else
  {
    sub_10000FFB4(&aBlock, &qword_10014CA68);
    sub_1000C4910(v24);
    sub_10000FFB4(v24, &qword_10014CA68);
  }

  isa = sub_100100E44().super.isa;

  [v1 setTypingAttributes:isa];

  sub_10005F59C();
  sub_100007210(&qword_10014E1E8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10010BC80;
  *(v23 + 32) = sub_100100BA4();
  *(v23 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_1001019D4();

  swift_unknownObjectRelease();
}

uint64_t sub_10005F36C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  if (*(a1 + 16) && (v10 = sub_10004DCEC(NSFontAttributeName), (v11 & 1) != 0))
  {
    sub_100010FA8(*(a1 + 56) + 32 * v10, &v15);
    sub_10000FFB4(&v15, &qword_10014CA68);
    *a5 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_10000FFB4(&v15, &qword_10014CA68);
    if (!*(a1 + 16))
    {
      goto LABEL_8;
    }
  }

  v12 = sub_10004DCEC(NSForegroundColorAttributeName);
  if (v13)
  {
    sub_100010FA8(*(a1 + 56) + 32 * v12, &v15);
    result = sub_10000FFB4(&v15, &qword_10014CA68);
    *a6 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v15 = 0u;
  v16 = 0u;
  result = sub_10000FFB4(&v15, &qword_10014CA68);
LABEL_9:
  if (*a5 == 1 && *a6 == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_10005F59C()
{
  v1 = [v0 textLayoutManager];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 textViewportLayoutController];

    if (v3)
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8[4] = sub_10006C474;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10005F7C4;
      v8[3] = &unk_100136FA0;
      v5 = _Block_copy(v8);

      [v3 setRenderingSurfaceUpdater:v5];
      _Block_release(v5);
      v6 = _UITextViewportLayoutControllerDidLayoutNotification;
      v7 = [objc_opt_self() defaultCenter];
      [v7 addObserver:v0 selector:"viewportDidLayout" name:v6 object:v3];
    }
  }
}

void sub_10005F70C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_blockQuoteLayerView);
    v5 = sub_100100F94();
    [a1 addRenderingSurface:v4 key:v5 group:1 placement:0];
  }
}

void sub_10005F7C4(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v15 = a2;
  v14 = a3;
  v13(v15, v14, a4, a5, a6, a7);
}

void sub_10005F878()
{
  v1 = v0;
  v2 = [v0 attributedText];
  if (!v2)
  {
    return;
  }

  v125 = v2;
  v3 = [v0 textLayoutManager];
  if (!v3)
  {
    v8 = v125;
    goto LABEL_6;
  }

  v126 = v3;
  [v0 frame];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v138.origin.x = CGRectZero.origin.x;
  v138.origin.y = y;
  v138.size.width = width;
  v138.size.height = height;
  if (CGRectEqualToRect(v137, v138))
  {

    v8 = v126;
LABEL_6:

    return;
  }

  v9 = [v0 textLayoutManager];
  if (!v9)
  {
    v10 = v125;
    v35 = v126;
LABEL_25:

    return;
  }

  v10 = v9;
  v11 = [v126 textViewportLayoutController];
  v12 = [v11 viewportRange];

  if (!v12)
  {

    v35 = v125;
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v10 documentRange];
  v15 = [v14 location];

  v16 = [v10 offsetFromLocation:v15 toLocation:{objc_msgSend(v13, "location")}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v17 = [v10 documentRange];
  v18 = [v17 location];

  v19 = [v10 offsetFromLocation:v18 toLocation:{objc_msgSend(v13, "endLocation")}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (__OFSUB__(v19, v16))
  {
    __break(1u);
    goto LABEL_91;
  }

  v134 = v16;
  v135 = (v19 - v16);
  v20 = *&v1[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_blockQuoteLayerView];
  v21 = OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_quoteAreas;
  swift_beginAccess();
  *&v20[v21] = _swiftEmptyArrayStorage;

  [v1 textContainerInset];
  *&v20[OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_barInset] = v22;
  [v1 textContainerInset];
  *&v20[OBJC_IVAR____TtC21JournalShareExtension19BlockQuoteLayerView_topInset] = v23;
  v24 = &selRef_cancel;
  v25 = [v1 _placeholderLabel];
  if (v25)
  {
    v26 = v25;
    v27 = [v1 isEditable];
    v28 = 0.0;
    if (v27)
    {
      v28 = 1.0;
    }

    [v26 setAlpha:v28];
  }

  if ([v125 length] < &v135[v134])
  {
    v29 = [v125 length];
    if (__OFSUB__(v29, v134))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v135 = &v29[-v134];
  }

  v30 = [v1 textStorage];
  v31 = [v30 length];

  v121 = v20;
  if (!v31)
  {
    v36 = [v1 selectedTextRange];
    if (!v36)
    {
      goto LABEL_52;
    }

    v37 = v36;
    v38 = COERCE_DOUBLE([v36 start]);

    if (v38 == 0.0)
    {
      goto LABEL_52;
    }

    v39 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
    v40 = sub_100100E64();

    if (!*(v40 + 16) || (v41 = sub_10004DCEC(NSParagraphStyleAttributeName), (v42 & 1) == 0))
    {

      goto LABEL_51;
    }

    sub_100010FA8(*(v40 + 56) + 32 * v41, &aBlock);

    sub_100010F50(0, &qword_10014E120);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_51;
    }

    v43 = v127.origin.x;
    v44 = [v1 beginningOfDocument];
    v45 = [v1 offsetFromPosition:v44 toPosition:*&v38];

    [*&v127.origin.x firstLineHeadIndent];
    *v47.i64 = *v46.i64 - trunc(*v46.i64);
    v48.f64[0] = NAN;
    v48.f64[1] = NAN;
    v122 = vnegq_f64(v48);
    v49 = *vbslq_s8(v122, v47, v46).i64 + -0.1;
    [*&v127.origin.x headIndent];
    if (fabs(v49) >= 0.01)
    {
      goto LABEL_89;
    }

    *v51.i64 = *v50.i64 - trunc(*v50.i64);
    if (fabs(*vbslq_s8(v122, v51, v50).i64 + -0.1) >= 0.01)
    {
      goto LABEL_89;
    }

    v52 = [v1 textStorage];
    v53 = [v52 length];

    if (v53 < v45)
    {
      goto LABEL_87;
    }

    v54 = [v1 textLayoutManager];
    if (!v54)
    {
      goto LABEL_87;
    }

    v55 = v54;
    v56 = sub_10007D5C8(v45, 0);
    if (!v56)
    {
      goto LABEL_86;
    }

    v57 = v56;
    size = CGRectNull.size;
    v127.origin = CGRectNull.origin;
    v127.size = size;
    v59 = swift_allocObject();
    *(v59 + 16) = &v127;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_10006C4CC;
    *(v60 + 24) = v59;
    v129 = sub_10006C53C;
    v130 = v60;
    *&aBlock.origin.x = _NSConcreteStackBlock;
    *&aBlock.origin.y = 1107296256;
    *&aBlock.size.width = sub_10006A38C;
    *&aBlock.size.height = &unk_100136B40;
    v61 = _Block_copy(&aBlock);

    [v55 enumerateTextSegmentsInRange:v57 type:0 options:0 usingBlock:v61];
    _Block_release(v61);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if ((v61 & 1) == 0)
    {
      if (!CGRectIsNull(v127))
      {
        y = v127.origin.y;
        x = v127.origin.x;
        height = v127.size.height;
        width = v127.size.width;
      }

      goto LABEL_87;
    }

    goto LABEL_94;
  }

  v133 = v134;
  if (v134 <= 0)
  {
    v119 = 0;
    v33 = NSParagraphStyleAttributeName;
    goto LABEL_55;
  }

  v32 = [v1 textStorage];
  v33 = NSParagraphStyleAttributeName;
  v34 = [v32 attribute:NSParagraphStyleAttributeName atIndex:v134 effectiveRange:0];

  if (v34)
  {
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v127, 0, sizeof(v127));
  }

  aBlock = v127;
  if (!*&v127.size.height)
  {
    goto LABEL_49;
  }

  sub_100010F50(0, &qword_10014E120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v119 = 0;
    goto LABEL_55;
  }

  v62 = v131[0];
  [v131[0] firstLineHeadIndent];
  *v64.i64 = *v63.i64 - trunc(*v63.i64);
  v65.f64[0] = NAN;
  v65.f64[1] = NAN;
  v123 = vnegq_f64(v65);
  v66 = *vbslq_s8(v123, v64, v63).i64 + -0.1;
  [v131[0] headIndent];
  if (fabs(v66) >= 0.01 || (*v68.i64 = *v67.i64 - trunc(*v67.i64), fabs(*vbslq_s8(v123, v68, v67).i64 + -0.1) >= 0.01))
  {

    goto LABEL_54;
  }

  v69 = [v1 textStorage];
  v124 = v134 - 1;
  if (__OFSUB__(v134, 1))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return;
  }

  v70 = v69;
  v71 = swift_allocObject();
  *(v71 + 16) = &v133;
  v72 = swift_allocObject();
  v119 = sub_10006C1C4;
  *(v72 + 16) = sub_10006C1C4;
  *(v72 + 24) = v71;
  v129 = sub_10006C4D4;
  v130 = v72;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_10005DE7C;
  *&aBlock.size.height = &unk_100136AC8;
  v73 = _Block_copy(&aBlock);

  [v70 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v124 usingBlock:{2, v73}];

  _Block_release(v73);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_49:
    sub_10000FFB4(&aBlock, &qword_10014CA68);
    goto LABEL_54;
  }

LABEL_55:
  v132 = _swiftEmptyArrayStorage;
  v131[0] = sub_1000FF134();
  v131[1] = 0;
  v75 = [v1 textStorage];
  v76 = v134;
  v77 = v135;
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = v131;
  v79[4] = &v134;
  v79[5] = &v132;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_10006C184;
  *(v80 + 24) = v79;
  v129 = sub_10006C4D4;
  v130 = v80;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_10005DE7C;
  *&aBlock.size.height = &unk_1001369D8;
  v81 = _Block_copy(&aBlock);

  [v75 enumerateAttribute:v33 inRange:v76 options:v77 usingBlock:{0, v81}];

  _Block_release(v81);
  v82 = swift_isEscapingClosureAtFileLocation();

  if (v82)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v83 = *(v132 + 2);
  v84 = v121;
  v85 = &selRef_cancel;
  if (!v83)
  {
LABEL_83:

    [v84 setNeedsDisplay];

    sub_10002FB80(v119);

    return;
  }

  *v120 = CGRectNull.origin;
  *&v120[16] = CGRectNull.size;
  v86 = ( + 40);
  while (1)
  {
    v90 = *(v86 - 1);
    v91 = *v86;
    if (v90 == v134)
    {
      v92 = v133;
    }

    else
    {
      v92 = *(v86 - 1);
    }

    v93 = [v1 textStorage];
    v94 = [v93 attributesAtIndex:v92 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
    v95 = sub_100100E64();

    if (!*(v95 + 16) || (v96 = sub_10004DCEC(NSForegroundColorAttributeName), (v97 & 1) == 0) || (sub_100010FA8(*(v95 + 56) + 32 * v96, &aBlock), sub_100010F50(0, &qword_10014C7D0), !swift_dynamicCast()))
    {

LABEL_72:
      v38 = 0.0;
      goto LABEL_73;
    }

    v38 = v127.origin.x;
    if (qword_10014B708 != -1)
    {
      swift_once();
    }

    v98 = qword_100158678;
    v99 = sub_100101A34();

    if (v99)
    {

      v38 = 0.0;
      v84 = v121;
      v85 = &selRef_cancel;
      goto LABEL_73;
    }

    v113 = [objc_opt_self() blackColor];
    v114 = sub_100101A34();

    v84 = v121;
    v85 = &selRef_cancel;
    if (v114)
    {

      goto LABEL_72;
    }

LABEL_73:
    v100 = [v126 v85[355]];
    v101 = [v100 location];

    v102 = [v126 locationFromLocation:v101 withOffset:v90];
    swift_unknownObjectRelease();
    v103 = 0.0;
    if (!v102)
    {
      goto LABEL_59;
    }

    v104 = [v126 locationFromLocation:v102 withOffset:v91];
    if (v104)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_59:
    v87 = 0.0;
    v88 = 0.0;
    v89 = 0.0;
LABEL_60:
    v86 += 2;
    sub_1000DDC40(*&v38, v103, v87, v88, v89);

    if (!--v83)
    {

      goto LABEL_83;
    }
  }

  v55 = [objc_allocWithZone(NSTextRange) initWithLocation:v102 endLocation:v104];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v87 = 0.0;
  v88 = 0.0;
  v89 = 0.0;
  if (!v55)
  {
    goto LABEL_60;
  }

  v127 = *v120;
  v43 = COERCE_DOUBLE(swift_allocObject());
  *(*&v43 + 16) = &v127;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_10006C190;
  *(v105 + 24) = v43;
  v129 = sub_10006C198;
  v130 = v105;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_10006A38C;
  *&aBlock.size.height = &unk_100136A50;
  v106 = _Block_copy(&aBlock);

  [v126 enumerateTextSegmentsInRange:v55 type:0 options:0 usingBlock:v106];
  _Block_release(v106);
  v24 = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    IsNull = CGRectIsNull(v127);

    v103 = CGRectZero.origin.x;
    v108 = y;
    v109 = width;
    v110 = height;
    if (!IsNull)
    {
      v108 = v127.origin.y;
      v103 = v127.origin.x;
      v110 = v127.size.height;
      v109 = v127.size.width;
    }

    v111 = v108;
    v112 = v110;

    v89 = v112;
    v88 = v109;
    v87 = v111;
    v84 = v121;
    v85 = &selRef_cancel;
    goto LABEL_60;
  }

  __break(1u);
LABEL_86:

  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
LABEL_87:
  v115 = *&v1[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor];
  v116 = v115;
  sub_1000DDC40(v115, x, y, width, height);

  v117 = [v1 *(v24 + 1416)];
  if (v117)
  {
    v118 = v117;
    [v118 setAlpha:0.0];
  }

LABEL_89:

LABEL_51:
  v20 = v121;
LABEL_52:
  [v20 setNeedsDisplay];
}

void sub_100060A8C()
{
  sub_100007210(&unk_10014E130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010BC80;
  *(inited + 32) = NSFontAttributeName;
  v2 = NSFontAttributeName;
  v3 = [v0 traitCollection];
  v4 = sub_1000C4A0C(v3);

  *(inited + 64) = sub_100010F50(0, &unk_10014E148);
  *(inited + 40) = v4;
  sub_10004D7B4(inited);
  swift_setDeallocating();
  sub_10000FFB4(inited + 32, &qword_10014D580);
  v5 = *&v0[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_journalEntry];
  if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_prompts)) != 0)
  {
    v7 = v6;
    v8 = [v7 string];
    if (!v8)
    {
      sub_100100FD4();
      v8 = sub_100100F94();
    }

    v9 = objc_allocWithZone(NSAttributedString);
    type metadata accessor for Key(0);
    sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
    isa = sub_100100E44().super.isa;

    v11 = [v9 initWithString:v8 attributes:isa];

    [v0 setAttributedPlaceholder:v11];
  }

  else
  {
    if (qword_10014B660 != -1)
    {
      swift_once();
    }

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = sub_100100F94();
    type metadata accessor for Key(0);
    sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
    v14 = sub_100100E44().super.isa;

    v11 = [v12 initWithString:v13 attributes:v14];

    [v0 setAttributedPlaceholder:v11];
  }

  v15 = [v0 _placeholderLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [v0 isEditable];
    v18 = 0.0;
    if (v17)
    {
      v18 = 1.0;
    }

    [v16 setAlpha:v18];
  }
}

void sub_100060DE4()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for JournalTextView();
  objc_msgSendSuper2(&v34, "deleteBackward");
  v2 = [v0 textStorage];
  v3 = [v2 length];

  if (v3 < 1)
  {
    v25 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
    v26 = sub_100100E64();

    if (!*(v26 + 16) || (v27 = sub_10004DCEC(NSParagraphStyleAttributeName), (v28 & 1) == 0))
    {

      return;
    }

    sub_100010FA8(*(v26 + 56) + 32 * v27, v33);

    sub_100010F50(0, &qword_10014E120);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v11 = v32;
    v29 = [v32 textLists];
    sub_100010F50(0, &qword_10014E118);
    v30 = sub_1001011D4();

    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

      if (v31 >= 1)
      {
        sub_10006156C(0);
      }

      return;
    }

LABEL_24:
    v31 = sub_100101DA4();
    goto LABEL_18;
  }

  v4 = [v1 textStorage];
  v5 = [v4 string];
  if (!v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = v5;

  v7 = [v1 selectedRange];
  v9 = [v6 paragraphRangeForRange:{v7, v8}];
  v11 = v10;

  if (__OFADD__(v9, v11))
  {
    __break(1u);
    goto LABEL_24;
  }

  v12 = [v1 textStorage];
  v13 = [v12 length];

  if (v13 >= &v11[v9])
  {
    if (!v11)
    {
LABEL_12:
      sub_10006156C(1);
      return;
    }

    if (v11 == 1)
    {
      v14 = [v1 textStorage];
      v15 = [v14 attributedSubstringFromRange:{v9, 1}];

      v16 = [v15 string];
      v17 = sub_100100FD4();
      v19 = v18;

      v20 = sub_10005DDFC(v17, v19);
      v22 = v21;

      if (v22)
      {
        v23 = sub_10006A8A8(v20, v22);
        if ((v23 & 0x100000000) == 0)
        {
          v24 = v23;

          if ((v24 - 14) > 0xFFFFFFFB || (v24 - 8232) < 2 || v24 == 133)
          {
            goto LABEL_12;
          }

          return;
        }

LABEL_26:
        __break(1u);
      }
    }
  }
}

void sub_1000611DC()
{
  v1 = [v0 textStorage];
  v2 = [v1 string];

  sub_100100FD4();
  v3 = sub_100101084();

  if (v3 >= 1)
  {
    v4 = [v0 textStorage];
    v5 = [v4 string];

    v6 = sub_100100FD4();
    v8 = v7;

    v9 = sub_10005DDFC(v6, v8);
    v11 = v10;

    if (v11)
    {
      if (v9 == 10 && v11 == 0xE100000000000000)
      {
      }

      else
      {
        v12 = sub_100101E84();

        if ((v12 & 1) == 0)
        {
          return;
        }
      }

      v13 = sub_100101084();
      v14 = [v0 textStorage];
      v15 = [v0 typingAttributes];
      type metadata accessor for Key(0);
      sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
      sub_100100E64();

      isa = sub_100100E44().super.isa;

      v17 = [v0 selectedRange];
      [v14 setAttributes:isa range:{v17, v18}];

      v19 = [v0 textStorage];
      v20 = [v0 typingAttributes];
      sub_100100E64();

      v23 = sub_100100E44().super.isa;

      v21 = [v0 textStorage];
      v22 = [v21 length];

      if (__OFSUB__(v22, v13))
      {
        __break(1u);
      }

      else
      {
        [v19 setAttributes:v23 range:{&v22[-v13], v13}];
      }
    }

    else
    {
    }
  }
}

void sub_10006156C(int a1)
{
  v2 = v1;
  LODWORD(v65) = a1;
  v3 = sub_1000FF1E4();
  v64 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor];
  *&v1[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor] = 0;

  v7 = [v1 textStorage];
  v8 = [v7 string];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;

  v10 = [v2 selectedRange];
  v66 = [v9 paragraphRangeForRange:{v10, v11}];
  v67 = v12;
  v13 = [v9 substringWithRange:?];
  v63 = sub_100100FD4();
  v15 = v14;

  v16 = [v2 typingAttributes];
  type metadata accessor for Key(0);
  v18 = v17;
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v19 = sub_100100E64();

  v20 = *(v19 + 16);
  v21 = &selRef_cancel;
  v68 = NSParagraphStyleAttributeName;
  if (v20 && (v22 = sub_10004DCEC(NSParagraphStyleAttributeName), (v23 & 1) != 0))
  {
    sub_100010FA8(*(v19 + 56) + 32 * v22, &v72);

    sub_100010F50(0, &qword_10014E120);
    if (swift_dynamicCast())
    {
      v62 = v18;
      v24 = *&v70[0];
      [*&v70[0] mutableCopy];
      sub_100101B14();
      swift_unknownObjectRelease();
      v25 = sub_100010F50(0, &unk_10014E108);
      if (swift_dynamicCast())
      {
        v61 = v25;
        v60 = v24;
        v26 = *&v70[0];
        if ((v65 & 1) != 0 && (*(v2 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_removeListsNextClear) & 1) == 0 && v67 == 1)
        {
          v65 = OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_removeListsNextClear;
          *&v72 = v63;
          *(&v72 + 1) = v15;
          sub_1000FF1C4();
          sub_10005B20C();
          v27 = sub_100101AE4();
          v29 = v28;
          (*(v64 + 8))(v5, v3);

          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            v31 = [v26 textLists];
            sub_100010F50(0, &qword_10014E118);
            sub_1001011D4();

            *(v2 + v65) = 1;
LABEL_31:
            v42 = v68;
            sub_100010F50(0, &qword_10014E118);
            isa = sub_1001011C4().super.isa;
            [v26 setTextLists:isa];

            [v26 setFirstLineHeadIndent:0.0];
            [v26 setHeadIndent:0.0];
            v73 = v61;
            *&v72 = v26;
            v44 = v26;
            v45 = [v2 typingAttributes];
            v46 = sub_100100E64();

            v71 = v46;
            if (v73)
            {
              sub_10002FC28(&v72, v70);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v69 = v46;
              sub_1000FB8AC(v70, v42, isUniquelyReferenced_nonNull_native);
              v71 = v69;
            }

            else
            {
              sub_10000FFB4(&v72, &qword_10014CA68);
              sub_1000C4910(v70);
              sub_10000FFB4(v70, &qword_10014CA68);
            }

            v58 = sub_100100E44().super.isa;

            [v2 setTypingAttributes:v58];

            v21 = &selRef_cancel;
            goto LABEL_14;
          }
        }

        else
        {
        }

        *(v2 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_removeListsNextClear) = 0;
        goto LABEL_31;
      }

      v21 = &selRef_cancel;
    }

    else
    {

      v21 = &selRef_cancel;
    }
  }

  else
  {
  }

LABEL_14:
  v32 = [v2 typingAttributes];
  v33 = sub_100100E64();

  if (*(v33 + 16) && (v34 = sub_10004DCEC(NSForegroundColorAttributeName), (v35 & 1) != 0))
  {
    sub_100010FA8(*(v33 + 56) + 32 * v34, &v72);

    v36 = sub_100010F50(0, &qword_10014C7D0);
    if (swift_dynamicCast())
    {
      v37 = *&v70[0];
      sub_100010F50(0, &qword_10014E140);
      if (qword_10014B618 != -1)
      {
        swift_once();
      }

      if (sub_100101A34())
      {
        if (qword_10014B708 != -1)
        {
          swift_once();
        }

        v73 = v36;
        *&v72 = qword_100158678;
        v38 = qword_100158678;
        v39 = [v2 typingAttributes];
        v40 = sub_100100E64();

        v71 = v40;
        if (v73)
        {
          sub_10002FC28(&v72, v70);
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v69 = v40;
          sub_1000FB8AC(v70, NSForegroundColorAttributeName, v41);
          v71 = v69;
        }

        else
        {
          sub_10000FFB4(&v72, &qword_10014CA68);
          sub_1000C4910(v70);
          sub_10000FFB4(v70, &qword_10014CA68);
        }

        v48 = sub_100100E44().super.isa;

        [v2 setTypingAttributes:v48];

        v21 = &selRef_cancel;
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v49 = sub_100010F50(0, &unk_10014E108);
  v50 = sub_1000CB144();
  sub_100010F50(0, &qword_10014E118);
  v51 = sub_1001011C4().super.isa;

  [v50 v21[329]];

  sub_100007210(&unk_10014E130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010BC80;
  v53 = v68;
  *(inited + 32) = v68;
  *(inited + 64) = v49;
  *(inited + 40) = v50;
  v54 = v53;
  v55 = v50;
  sub_10004D7B4(inited);
  swift_setDeallocating();
  sub_10000FFB4(inited + 32, &qword_10014D580);
  v56 = [v2 textStorage];
  v57 = sub_100100E44().super.isa;

  [v56 addAttributes:v57 range:{v66, v67}];
}

double sub_100062068()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for JournalTextView();
  objc_msgSendSuper2(&v18, "accessibilityFrame");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView];
  if (v9)
  {
    [v9 accessibilityFrame];
    v24.origin.x = v2;
    v24.origin.y = v4;
    v24.size.width = v6;
    v24.size.height = v8;
    v20 = CGRectIntersection(v19, v24);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    if (!CGRectIsNull(v20))
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      if (CGRectGetHeight(v21) > 4.0)
      {
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        memset(&slice, 0, sizeof(slice));
        v14 = CGRectGetHeight(v22) + -4.0;
        memset(&v16, 0, sizeof(v16));
        v23.origin.x = v2;
        v23.origin.y = v4;
        v23.size.width = v6;
        v23.size.height = v8;
        CGRectDivide(v23, &slice, &v16, v14, CGRectMinYEdge);
        return v16.origin.x;
      }
    }
  }

  return v2;
}

id sub_1000622D8(uint64_t a1, uint64_t a2)
{
  if (sub_1000FFA54())
  {
    result = [v2 isEditing];
    if (!result)
    {
      return result;
    }

    sub_100010014(a2, v39, &qword_10014CA68);
    v6 = v40;
    if (v40)
    {
      v7 = sub_1000110C0(v39, v40);
      v8 = *(v6 - 8);
      __chkstk_darwin(v7);
      v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = sub_100101E64();
      (*(v8 + 8))(v10, v6);
      sub_10001100C(v39);
    }

    else
    {
      v11 = 0;
    }

    v12 = type metadata accessor for JournalTextView();
    v36.receiver = v2;
    v36.super_class = v12;
    v13 = objc_msgSendSuper2(&v36, "canPerformAction:withSender:", a1, v11);
    swift_unknownObjectRelease();
    if (v13)
    {
      return [v2 allowsEditingTextAttributes];
    }

    return 0;
  }

  if ((sub_1000FFA54() & 1) == 0 && (sub_1000FFA54() & 1) == 0 && (sub_1000FFA54() & 1) == 0)
  {
    if (sub_1000FFA54())
    {
      sub_100010014(a2, v39, &qword_10014CA68);
      v14 = v40;
      if (v40)
      {
        v15 = sub_1000110C0(v39, v40);
        v16 = *(v14 - 8);
        __chkstk_darwin(v15);
        v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v18);
        v19 = sub_100101E64();
        (*(v16 + 8))(v18, v14);
        sub_10001100C(v39);
      }

      else
      {
        v19 = 0;
      }

      v30 = type metadata accessor for JournalTextView();
      v37.receiver = v2;
      v37.super_class = v30;
      v31 = objc_msgSendSuper2(&v37, "canPerformAction:withSender:", a1, v19);
      swift_unknownObjectRelease();
      if (v31)
      {
        v32 = [objc_opt_self() generalPasteboard];
        v33 = [v32 hasStrings];

        return v33;
      }

      return 0;
    }

    if (sub_1000FFA54())
    {
      v20 = sub_1001014C4();
      v21 = *(v20 + 16) + 1;
      v22 = 40;
      do
      {
        if (!--v21)
        {

          return 0;
        }

        v23 = *(v20 + v22);
        v22 += 16;
      }

      while (v23 <= 0);

      return (([v2 isEditing] & 1) != 0);
    }

    if ((sub_1000FFA54() & 1) == 0 && (sub_1000FFA54() & 1) == 0)
    {
      sub_100010014(a2, v39, &qword_10014CA68);
      v24 = v40;
      if (v40)
      {
        v25 = sub_1000110C0(v39, v40);
        v26 = *(v24 - 8);
        __chkstk_darwin(v25);
        v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v28);
        v29 = sub_100101E64();
        (*(v26 + 8))(v28, v24);
        sub_10001100C(v39);
      }

      else
      {
        v29 = 0;
      }

      v34 = type metadata accessor for JournalTextView();
      v38.receiver = v2;
      v38.super_class = v34;
      v35 = objc_msgSendSuper2(&v38, "canPerformAction:withSender:", a1, v29);
      swift_unknownObjectRelease();
      return v35;
    }
  }

  result = [v2 isEditing];
  if (result)
  {
    return [v2 allowsEditingTextAttributes];
  }

  return result;
}

void sub_1000628AC(void *a1)
{
  v2 = v1;
  if (![a1 isEmpty])
  {
    goto LABEL_32;
  }

  sub_100010F50(0, &qword_10014E140);
  v4 = [a1 start];
  v5 = [v1 beginningOfDocument];
  v6 = sub_100101A34();

  if ((v6 & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = [v2 interactions];
  sub_100007210(&qword_10014E1F8);
  v8 = sub_1001011D4();

  if (v8 >> 62)
  {
LABEL_35:
    v9 = sub_100101DA4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v8 & 0xC000000000000001;
  v28 = v2;
  v11 = v2;
  v12 = 0;
  v2 = &_s10Foundation8CalendarV9ComponentO6secondyA2EmFWC_ptr;
  while (v9 != v12)
  {
    if (v10)
    {
      sub_100101CA4();
    }

    else
    {
      if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      [v14 locationInView:v11];
      v16 = v15;
      v18 = v17;
      swift_unknownObjectRelease();
      if (v16 < 1.79769313e308 && v18 < 1.79769313e308)
      {
        v9 = v12;
        break;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (__OFADD__(v12++, 1))
    {
      goto LABEL_34;
    }
  }

  if (!(v8 >> 62))
  {
    if (v9 != *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v9 == sub_100101DA4())
  {
LABEL_31:

    v2 = v28;
LABEL_32:
    sub_100010F50(0, &qword_10014E1F0);
    isa = sub_1001011C4().super.isa;
    v29.receiver = v2;
    v29.super_class = type metadata accessor for JournalTextView();
    objc_msgSendSuper2(&v29, "editMenuForTextRange:suggestedActions:", a1, isa);

    return;
  }

LABEL_22:
  if (v10)
  {
    sub_100101CA4();
  }

  else
  {
    if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
LABEL_38:
    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  [v20 locationInView:v11];
  v22 = v21;
  v24 = v23;
  swift_unknownObjectRelease();

  if (v22 >= 1.79769313e308)
  {
LABEL_39:

    goto LABEL_40;
  }

  v2 = v28;
  if (v24 < 1.79769313e308)
  {

    [v11 textContainerInset];
    if (v24 < v25)
    {
      sub_100010F50(0, &unk_10014E200);
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      v32.value._countAndFlagsBits = 0;
      v32.value._object = 0;
      v30.value.super.isa = 0;
      v30.is_nil = 0;
      v26.value = 0;
      sub_100101954(v31, v32, v30, v26, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, (v8 + 32));
      return;
    }

    goto LABEL_32;
  }

LABEL_40:
  __break(1u);
}

void sub_100062D24()
{
  v1 = [v0 traitCollection];
  v2 = sub_1000C4A0C(v1);

  v3 = [v0 inputDelegate];
  if (v3)
  {
    [v3 textWillChange:v0];
    swift_unknownObjectRelease();
  }

  v4 = [v0 textStorage];
  [v4 beginEditing];

  v5 = [v0 textStorage];
  v6 = [v0 textStorage];
  v7 = [v6 length];

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10006C46C;
  *(v9 + 24) = v8;
  v38 = sub_10006C4D4;
  v39 = v9;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v36 = sub_10005DE7C;
  v37 = &unk_100136F78;
  v10 = _Block_copy(&aBlock);
  v11 = v0;
  v12 = v2;

  [v5 enumerateAttribute:NSFontAttributeName inRange:0 options:v7 usingBlock:{0x100000, v10}];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v14 = [v11 typingAttributes];
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v15 = sub_100100E64();

  if (!*(v15 + 16))
  {

    v17 = v12;
    goto LABEL_13;
  }

  v16 = sub_10004DCEC(NSFontAttributeName);
  v17 = v12;
  if ((v18 & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_100010FA8(*(v15 + 56) + 32 * v16, &aBlock);

  sub_100010F50(0, &unk_10014E148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v26 = &selRef_cancel;
    v25 = v17;
    goto LABEL_14;
  }

  v19 = [v33[0] fontDescriptor];
  v20 = [v19 symbolicTraits];

  if (!v20)
  {

    goto LABEL_13;
  }

  v21 = [v12 fontDescriptor];
  v22 = [v12 fontDescriptor];
  v23 = [v22 symbolicTraits];

  v24 = [v21 fontDescriptorWithSymbolicTraits:v23 | v20];
  if (!v24)
  {

    v17 = v12;
    goto LABEL_13;
  }

  v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];

  v17 = v12;
  v26 = &selRef_cancel;
LABEL_14:
  v37 = sub_100010F50(0, &unk_10014E148);
  *&aBlock = v25;
  v27 = [v11 v26[328]];
  v28 = sub_100100E64();

  v34 = v28;
  if (v37)
  {
    sub_10002FC28(&aBlock, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000FB8AC(v33, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
    v34 = v28;
  }

  else
  {
    sub_10000FFB4(&aBlock, &qword_10014CA68);
    sub_1000C4910(v33);
    sub_10000FFB4(v33, &qword_10014CA68);
  }

  isa = sub_100100E44().super.isa;

  [v11 setTypingAttributes:isa];

  v31 = [v11 textStorage];
  [v31 endEditing];

  v32 = [v11 inputDelegate];
  if (v32)
  {
    [v32 textDidChange:v11];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100063338(uint64_t a1, uint64_t a2, uint64_t a3, int a4, id a5, void *a6)
{
  v10 = [a5 textStorage];
  sub_100010014(a1, v19, &qword_10014CA68);
  if (!v20)
  {
    sub_10000FFB4(v19, &qword_10014CA68);
    goto LABEL_8;
  }

  sub_100010F50(0, &unk_10014E148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v17 = a6;
    goto LABEL_9;
  }

  v11 = [v18 fontDescriptor];
  v12 = [v11 symbolicTraits];

  if (!v12 || (v13 = [a6 fontDescriptor], v14 = objc_msgSend(a6, "fontDescriptor"), v15 = objc_msgSend(v14, "symbolicTraits"), v14, v16 = objc_msgSend(v13, "fontDescriptorWithSymbolicTraits:", v15 | v12), v13, !v16))
  {

    goto LABEL_8;
  }

  v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];

LABEL_9:
  [v10 addAttribute:NSFontAttributeName value:v17 range:{a2, a3}];
}

id sub_10006353C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100063630(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 typingAttributes];
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v7 = sub_100100E64();

  if (!*(v7 + 16) || (v8 = sub_10004DCEC(NSParagraphStyleAttributeName), (v9 & 1) == 0))
  {

    return;
  }

  sub_100010FA8(*(v7 + 56) + 32 * v8, &v57);

  sub_100010F50(0, &qword_10014E120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v10 = *&v55[0];
  v11 = [v3 textStorage];
  v12 = [v11 length];

  if (v12 == a1 && !a2)
  {
    v13 = [v3 textStorage];
    [v13 beginEditing];

    v14 = [v3 textStorage];
    v15 = [v3 typingAttributes];
    sub_100100E64();

    v16 = objc_allocWithZone(NSAttributedString);
    v17 = sub_100100F94();
    isa = sub_100100E44().super.isa;

    v19 = [v16 initWithString:v17 attributes:isa];

    [v14 appendAttributedString:v19];
    v20 = [v3 textStorage];
    [v20 endEditing];

    return;
  }

  [*&v55[0] firstLineHeadIndent];
  *v22.i64 = *v21.i64 - trunc(*v21.i64);
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v54 = vnegq_f64(v23);
  v24 = *vbslq_s8(v54, v22, v21).i64 + -0.1;
  [*&v55[0] headIndent];
  if (fabs(v24) >= 0.01)
  {
    goto LABEL_28;
  }

  *v26.i64 = *v25.i64 - trunc(*v25.i64);
  if (fabs(*vbslq_s8(v54, v26, v25).i64 + -0.1) >= 0.01)
  {
    goto LABEL_28;
  }

  v27 = [v3 typingAttributes];
  v28 = sub_100100E64();

  if (*(v28 + 16) && (v29 = sub_10004DCEC(NSForegroundColorAttributeName), (v30 & 1) != 0))
  {
    sub_100010FA8(*(v28 + 56) + 32 * v29, &v57);

    sub_100010F50(0, &qword_10014C7D0);
    if (swift_dynamicCast())
    {
      v31 = *&v55[0];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v31 = 0;
LABEL_17:
  if (qword_10014B708 == -1)
  {
    if (v31)
    {
      goto LABEL_19;
    }

LABEL_28:

    return;
  }

  swift_once();
  if (!v31)
  {
    goto LABEL_28;
  }

LABEL_19:
  v32 = qword_100158678;
  v33 = sub_100010F50(0, &qword_10014C7D0);
  v34 = v32;
  v35 = v33;
  LOBYTE(v33) = sub_100101A34();

  if ((v33 & 1) == 0)
  {
    goto LABEL_28;
  }

  v36 = [v3 textStorage];
  v37 = [v36 string];
  if (v37)
  {
    v38 = v37;

    v39 = [v3 selectedRange];
    v41 = [v38 paragraphRangeForRange:{v39, v40}];
    v52 = v42;
    v53 = v41;

    if (qword_10014B618 != -1)
    {
      swift_once();
    }

    v58 = v35;
    *&v57 = qword_100158508;
    v51 = qword_100158508;
    v43 = [v3 typingAttributes];
    v44 = sub_100100E64();

    v56 = v44;
    if (v58)
    {
      sub_10002FC28(&v57, v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000FB8AC(v55, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
      v56 = v44;
    }

    else
    {
      sub_10000FFB4(&v57, &qword_10014CA68);
      sub_1000C4910(v55);
      sub_10000FFB4(v55, &qword_10014CA68);
    }

    v46 = sub_100100E44().super.isa;

    [v3 setTypingAttributes:v46];

    v47 = [v3 textStorage];
    sub_100007210(&unk_10014E130);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010BC80;
    *(inited + 32) = NSForegroundColorAttributeName;
    *(inited + 64) = v35;
    *(inited + 40) = v51;
    v49 = NSForegroundColorAttributeName;
    sub_10004D7B4(inited);
    swift_setDeallocating();
    sub_10000FFB4(inited + 32, &qword_10014D580);
    v50 = sub_100100E44().super.isa;

    [v47 addAttributes:v50 range:{v53, v52}];
  }

  else
  {
    __break(1u);
  }
}

void sub_100063D20(void *a1)
{
  [a1 action];
  if ((sub_1000FFA54() & 1) == 0)
  {
    return;
  }

  [v1 selectedRange];
  if (v3)
  {
    v22[0] = [v1 selectedRange];
    v22[1] = v4;
    v5 = [v1 textStorage];
    v6 = [v5 attributesAtIndex:v22[0] effectiveRange:v22];

    type metadata accessor for Key(0);
    sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
    v7 = sub_100100E64();

    LOBYTE(v6) = sub_10006ADB8(v7);

    [a1 setState:v6 & 1];
    return;
  }

  v8 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v9 = sub_100100E64();

  if (!*(v9 + 16) || (v10 = sub_10004DCEC(NSParagraphStyleAttributeName), (v11 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_100010FA8(*(v9 + 56) + 32 * v10, v22);

  sub_100010F50(0, &qword_10014E120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    [a1 setState:0];
    return;
  }

  [v21 firstLineHeadIndent];
  *v13.i64 = *v12.i64 - trunc(*v12.i64);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v20 = vnegq_f64(v14);
  v15 = *vbslq_s8(v20, v13, v12).i64 + -0.1;
  [v21 headIndent];
  *v17.i64 = *v16.i64 - trunc(*v16.i64);
  v18 = fabs(v15) < 0.01;
  v19 = fabs(*vbslq_s8(v20, v17, v16).i64 + -0.1) < 0.01 && v18;
  [a1 setState:v19];
}

void sub_100064094(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  sub_100010014(a1, v17, &qword_10014CA68);
  if (v18)
  {
    sub_100010F50(0, &qword_10014E120);
    if (swift_dynamicCast())
    {
      [v16 firstLineHeadIndent];
      *v9.i64 = *v8.i64 - trunc(*v8.i64);
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      v15 = vnegq_f64(v10);
      v11 = *vbslq_s8(v15, v9, v8).i64 + -0.1;
      [v16 headIndent];
      v14 = v12;

      if (fabs(v11) < 0.01)
      {
        *v13.i64 = *v14.i64 - trunc(*v14.i64);
        if (fabs(*vbslq_s8(v15, v13, v14).i64 + -0.1) < 0.01)
        {
          *a5 = a2;
          return;
        }
      }
    }
  }

  else
  {
    sub_10000FFB4(v17, &qword_10014CA68);
  }

  *a4 = 1;
}

void sub_1000641DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, void *a7, double **a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_100010014(a1, v40, &qword_10014CA68);
    if (!v41)
    {
      sub_10000FFB4(v40, &qword_10014CA68);
      return;
    }

    sub_100010F50(0, &qword_10014E120);
    if (swift_dynamicCast())
    {
      [v39 firstLineHeadIndent];
      *v16.i64 = *v15.i64 - trunc(*v15.i64);
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v37 = vnegq_f64(v17);
      v18 = *vbslq_s8(v37, v16, v15).i64 + -0.1;
      [v39 headIndent];
      v36 = v19;
      v20 = *a6;
      v21 = sub_1000FF134();
      if (fabs(v18) < 0.01)
      {
        *v22.i64 = *v36.i64 - trunc(*v36.i64);
        if (fabs(*vbslq_s8(v37, v22, v36).i64 + -0.1) < 0.01)
        {
          if (v20 == v21)
          {
            v23 = a3 + a2;
            goto LABEL_22;
          }

          v29 = *(a6 + 1);
          v30 = *a6 + v29;
          if (__OFADD__(*a6, v29))
          {
            __break(1u);
          }

          else
          {
            v23 = a2 + a3;
            if (!__OFADD__(a2, a3))
            {
              if (v30 <= v23)
              {
                v30 = a2 + a3;
              }

              if (*a6 < a2)
              {
                a2 = *a6;
              }

              a3 = v30 - a2;
              if (__OFSUB__(v30, a2))
              {
                __break(1u);
                return;
              }

LABEL_22:
              *a6 = a2;
              *(a6 + 1) = a3;
              if (v23 == a7[1] + *a7)
              {
                a6 = *a8;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *a8 = a6;
                if (isUniquelyReferenced_nonNull_native)
                {
LABEL_24:
                  v33 = *(a6 + 2);
                  v32 = *(a6 + 3);
                  if (v33 >= v32 >> 1)
                  {
                    *a8 = sub_10000F84C((v32 > 1), v33 + 1, 1, a6);
                  }

                  v34 = *a8;
                  *(v34 + 2) = v33 + 1;
                  v35 = &v34[2 * v33];
                  *(v35 + 4) = a2;
                  *(v35 + 5) = a3;
                  return;
                }

LABEL_31:
                a6 = sub_10000F84C(0, *(a6 + 2) + 1, 1, a6);
                *a8 = a6;
                goto LABEL_24;
              }

LABEL_27:

              return;
            }
          }

          __break(1u);
          goto LABEL_31;
        }
      }

      if (v20 == v21)
      {
        goto LABEL_27;
      }

      v38 = *a6;
      v24 = *a8;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_10000F84C(0, *(v24 + 2) + 1, 1, v24);
        *a8 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_10000F84C((v26 > 1), v27 + 1, 1, v24);
        *a8 = v24;
      }

      *(v24 + 2) = v27 + 1;
      *&v24[2 * v27 + 4] = v38;
      v28 = sub_1000FF134();

      *a6 = v28;
      a6[1] = 0.0;
    }
  }
}

BOOL sub_1000644E4()
{
  v1 = [v0 typingAttributes];
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v2 = sub_100100E64();

  if (*(v2 + 16) && (v3 = sub_10004DCEC(NSParagraphStyleAttributeName), (v4 & 1) != 0))
  {
    sub_100010FA8(*(v2 + 56) + 32 * v3, v15);

    sub_100010F50(0, &qword_10014E120);
    if (swift_dynamicCast())
    {
      [v14 firstLineHeadIndent];
      *v6.i64 = *v5.i64 - trunc(*v5.i64);
      v7.f64[0] = NAN;
      v7.f64[1] = NAN;
      v13 = vnegq_f64(v7);
      v8 = *vbslq_s8(v13, v6, v5).i64 + -0.1;
      [v14 headIndent];
      v12 = v9;

      if (fabs(v8) < 0.01)
      {
        *v10.i64 = *v12.i64 - trunc(*v12.i64);
        return fabs(*vbslq_s8(v13, v10, v12).i64 + -0.1) < 0.01;
      }
    }
  }

  else
  {
  }

  return 0;
}

id sub_100064694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 textStorage];
  result = [v6 string];
  if (!result)
  {
    goto LABEL_35;
  }

  v8 = result;

  v9 = [v8 paragraphRangeForRange:{a1, a2}];
  v11 = v10;

  v12 = [v3 undoManager];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v11;
    type metadata accessor for JournalTextView();
    sub_100101534();
  }

  v15 = [v3 textStorage];
  [v15 beginEditing];

  v16 = [v3 typingAttributes];
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v17 = sub_100100E64();

  if (*(v17 + 16) && (v18 = sub_10004DCEC(NSParagraphStyleAttributeName), (v19 & 1) != 0))
  {
    sub_100010FA8(*(v17 + 56) + 32 * v18, &aBlock);

    sub_100010F50(0, &qword_10014E120);
    if (swift_dynamicCast())
    {
      v20 = *&v63[0];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v20 = 0;
LABEL_10:
  v21 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v22 = v21;
  if (v20)
  {
    [v21 setParagraphStyle:v20];
  }

  else
  {
    [v21 setParagraphSpacingBefore:8.0];
  }

  [v22 setFirstLineHeadIndent:14.1];
  [v22 setHeadIndent:14.1];
  v60 = sub_100010F50(0, &unk_10014E108);
  *&aBlock = v22;
  v23 = [v3 typingAttributes];
  v24 = sub_100100E64();

  v64 = v24;
  if (v60)
  {
    sub_10002FC28(&aBlock, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000FB8AC(v63, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v64 = v24;
  }

  else
  {
    sub_10000FFB4(&aBlock, &qword_10014CA68);
    sub_1000C4910(v63);
    sub_10000FFB4(v63, &qword_10014CA68);
  }

  isa = sub_100100E44().super.isa;

  v27 = &selRef_cancel;
  [v3 setTypingAttributes:isa];

  v28 = [v3 typingAttributes];
  v29 = sub_100100E64();

  v30 = sub_10006AEE4(v29);

  if (!v30)
  {
    v29 = NSForegroundColorAttributeName;
    if (qword_10014B618 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (!v11)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v27 = (v57 + v11);
    if (!__OFADD__(v57, v11))
    {
      break;
    }

    __break(1u);
LABEL_33:
    swift_once();
LABEL_20:
    v31 = qword_100158508;
    v60 = sub_100010F50(0, &qword_10014C7D0);
    *&aBlock = v31;
    v32 = v31;
    v33 = [v3 typingAttributes];
    v34 = sub_100100E64();

    v64 = v34;
    if (v60)
    {
      sub_10002FC28(&aBlock, v63);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000FB8AC(v63, v29, v35);
      v64 = v34;
    }

    else
    {
      sub_10000FFB4(&aBlock, &qword_10014CA68);
      sub_1000C4910(v63);
      sub_10000FFB4(v63, &qword_10014CA68);
    }

    v29 = sub_100100E44().super.isa;

    [v3 v27[330]];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v36 = [v3 textStorage];
  v37 = [v36 length];

  if (v37 < v27)
  {
LABEL_26:
    v38 = [v3 selectedTextRange];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 start];

      if (v40)
      {
        v41 = [v3 beginningOfDocument];
        v42 = [v3 offsetFromPosition:v41 toPosition:v40];

        v43 = objc_allocWithZone(NSMutableAttributedString);
        v44 = sub_100100F94();
        v45 = [v43 initWithString:v44];

        v46 = [v3 typingAttributes];
        sub_100100E64();

        v47 = sub_100100E44().super.isa;

        [v45 setAttributes:v47 range:{0, 0}];

        v48 = [v3 textStorage];
        [v48 insertAttributedString:v45 atIndex:v42];
      }
    }

    v49 = 0;
    goto LABEL_31;
  }

  v50 = [v3 textStorage];
  v51 = swift_allocObject();
  *(v51 + 16) = v3;
  v52 = swift_allocObject();
  v49 = sub_10006C224;
  *(v52 + 16) = sub_10006C224;
  *(v52 + 24) = v51;
  v61 = sub_10006C4D0;
  v62 = v52;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v59 = sub_1000E3338;
  v60 = &unk_100136BB8;
  v53 = _Block_copy(&aBlock);
  v54 = v3;

  [v50 enumerateAttributesInRange:v57 options:v11 usingBlock:{0x100000, v53}];

  _Block_release(v53);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
LABEL_31:
    v56 = [v3 textStorage];
    [v56 endEditing];

    return sub_10002FB80(v49);
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void sub_100064FAC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = &selRef_cancel;
  v9 = [v4 textStorage];
  v10 = [v9 string];
  if (v10)
  {
    v11 = v10;

    v12 = [v11 paragraphRangeForRange:{a1, a2}];
    v14 = v13;

    v15 = [v4 undoManager];
    if (v15)
    {
      v16 = v15;
      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      *(v17 + 24) = v14;
      type metadata accessor for JournalTextView();
      sub_100101534();
    }

    v18 = [v4 textStorage];
    [v18 beginEditing];

    v19 = [v4 textStorage];
    v20 = &selRef_cancel;
    v21 = [v19 length];

    if (v21 >= 1)
    {
      if (v14)
      {
        v22 = &v12[v14];
        if (__OFADD__(v12, v14))
        {
          __break(1u);
        }

        else
        {
          v23 = [v4 textStorage];
          v24 = [v23 length];

          if (v24 < v22)
          {
            goto LABEL_8;
          }

          v26 = [v4 textStorage];
          v27 = swift_allocObject();
          *(v27 + 16) = v4;
          *(v27 + 24) = ObjectType;
          v20 = swift_allocObject();
          v20[2] = sub_10006C0E0;
          v20[3] = v27;
          v58 = sub_10006C4D0;
          v59 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v56 = sub_1000E3338;
          v57 = &unk_100136910;
          v22 = _Block_copy(&aBlock);
          v3 = v59;
          v28 = v4;

          [v26 enumerateAttributesInRange:v12 options:v14 usingBlock:{0x100000, v22}];

          _Block_release(v22);
          LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

          if ((v26 & 1) == 0)
          {
            v25 = sub_10006C0E0;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_8:
      v25 = 0;
LABEL_14:
      v29 = [v4 typingAttributes];
      type metadata accessor for Key(0);
      sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
      v30 = sub_100100E64();

      if (*(v30 + 16) && (v31 = sub_10004DCEC(NSParagraphStyleAttributeName), (v32 & 1) != 0))
      {
        sub_100010FA8(*(v30 + 56) + 32 * v31, &aBlock);

        sub_100010F50(0, &qword_10014E120);
        if (swift_dynamicCast())
        {
          v33 = v53[0];
          [v53[0] mutableCopy];
          sub_100101B14();
          swift_unknownObjectRelease();
          v34 = sub_100010F50(0, &unk_10014E108);
          if (swift_dynamicCast())
          {
            v52 = v25;
            [v53[0] setFirstLineHeadIndent:0.0];
            [v53[0] setHeadIndent:0.0];
            v57 = v34;
            *&aBlock = v53[0];
            v35 = v53[0];
            v36 = [v4 typingAttributes];
            v37 = sub_100100E64();

            v54 = v37;
            if (v57)
            {
              sub_10002FC28(&aBlock, v53);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1000FB8AC(v53, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
              v54 = v37;
            }

            else
            {
              sub_10000FFB4(&aBlock, &qword_10014CA68);
              sub_1000C4910(v53);
              sub_10000FFB4(v53, &qword_10014CA68);
            }

            v8 = &selRef_cancel;
            isa = sub_100100E44().super.isa;

            [v4 setTypingAttributes:isa];

            v25 = v52;
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v39 = [v4 typingAttributes];
      v40 = sub_100100E64();

      if (*(v40 + 16) && (v22 = NSForegroundColorAttributeName, v41 = sub_10004DCEC(NSForegroundColorAttributeName), (v42 & 1) != 0))
      {
        v50 = v25;
        sub_100010FA8(*(v40 + 56) + 32 * v41, &aBlock);

        v3 = sub_100010F50(0, &qword_10014C7D0);
        if (swift_dynamicCast())
        {
          v20 = v53[0];
          sub_100010F50(0, &qword_10014E140);
          if (qword_10014B618 == -1)
          {
LABEL_25:
            if (sub_100101A34())
            {
              if (qword_10014B708 != -1)
              {
                swift_once();
              }

              v57 = v3;
              *&aBlock = qword_100158678;
              v43 = qword_100158678;
              v44 = [v4 typingAttributes];
              v45 = sub_100100E64();

              v54 = v45;
              if (v57)
              {
                sub_10002FC28(&aBlock, v53);
                v46 = swift_isUniquelyReferenced_nonNull_native();
                sub_1000FB8AC(v53, v22, v46);
                v54 = v45;
              }

              else
              {
                sub_10000FFB4(&aBlock, &qword_10014CA68);
                sub_1000C4910(v53);
                sub_10000FFB4(v53, &qword_10014CA68);
              }

              v49 = sub_100100E44().super.isa;

              [v4 setTypingAttributes:v49];
            }

            v25 = v50;
            goto LABEL_31;
          }

LABEL_41:
          swift_once();
          goto LABEL_25;
        }

        v25 = v50;
      }

      else
      {
      }

LABEL_31:
      [v4 setNeedsLayout];
      v47 = [v4 v8[158]];
      [v47 endEditing];

      sub_10002FB80(v25);
      return;
    }

    sub_10006156C(0);
    sub_10005F878();
    v51 = [v4 textStorage];
    [v51 endEditing];
  }

  else
  {
    __break(1u);
  }
}

void sub_10006587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 16) && (v9 = sub_10004DCEC(NSParagraphStyleAttributeName), (v10 & 1) != 0) && (sub_100010FA8(*(a1 + 56) + 32 * v9, v18), sub_100010F50(0, &qword_10014E120), swift_dynamicCast()))
  {
    v11 = v17;
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v13 = v12;
  if (v11)
  {
    [v12 setParagraphStyle:v11];
  }

  else
  {
    [v12 setParagraphSpacingBefore:8.0];
  }

  [v13 setFirstLineHeadIndent:14.1];
  [v13 setHeadIndent:14.1];
  v14 = [a5 textStorage];
  [v14 addAttribute:NSParagraphStyleAttributeName value:v13 range:{a2, a3}];

  v15 = sub_10006AEE4(a1);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = [a5 textStorage];
    if (qword_10014B618 != -1)
    {
      swift_once();
    }

    [v16 addAttribute:? value:? range:?];
  }
}

void sub_100065AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v9 = sub_10004DCEC(NSParagraphStyleAttributeName);
  if ((v10 & 1) == 0)
  {
    return;
  }

  sub_100010FA8(*(a1 + 56) + 32 * v9, v16);
  sub_100010F50(0, &qword_10014E120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  [v15 mutableCopy];
  sub_100101B14();
  swift_unknownObjectRelease();
  sub_100010F50(0, &unk_10014E108);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  [v15 setFirstLineHeadIndent:0.0];
  [v15 setHeadIndent:0.0];
  v11 = [a5 textStorage];
  [v11 addAttribute:NSParagraphStyleAttributeName value:v15 range:{a2, a3}];

  if (!*(a1 + 16) || (v12 = sub_10004DCEC(NSForegroundColorAttributeName), (v13 & 1) == 0) || (sub_100010FA8(*(a1 + 56) + 32 * v12, v16), sub_100010F50(0, &qword_10014C7D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:

    return;
  }

  sub_100010F50(0, &qword_10014E140);
  if (qword_10014B618 != -1)
  {
    swift_once();
  }

  if ((sub_100101A34() & 1) == 0)
  {

    goto LABEL_17;
  }

  v14 = [a5 textStorage];
  if (qword_10014B708 != -1)
  {
    swift_once();
  }

  [v14 addAttribute:NSForegroundColorAttributeName value:qword_100158678 range:{a2, a3}];
}