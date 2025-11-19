void sub_100001C3C(id a1)
{
  v1 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v1 getActivePairedDevice];

  v2 = [v5 objectForKeyedSubscript:NRDevicePropertySystemVersion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_1000621F8;
  qword_1000621F8 = v3;
}

id sub_100001F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a7;
  if (!a5)
  {
    v10 = 0;
    if (!a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = sub_10004491C();
  if (v8)
  {
LABEL_3:
    v8 = sub_10004491C();
  }

LABEL_4:
  v11 = sub_10004491C();
  v12 = [v7 ams_accountWithAltDSID:v10 DSID:a3 username:v8 accountTypeIdentifier:v11];

  return v12;
}

uint64_t sub_10000200C(char a1)
{
  v1 = &ACAccountTypeIdentifierIDMS;
  v2 = &ACAccountTypeIdentifieriTunesStore;
  if (a1)
  {
    v2 = &ACAccountTypeIdentifieriTunesStoreSandbox;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 2)
  {
    v3 = &ACAccountTypeIdentifierAppleAccount;
  }

  else
  {
    v3 = v1;
  }

  v4 = *v3;
  return sub_10004494C();
}

id variable initialization expression of AccountsWrapper.accessLock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

NSString sub_1000020B4@<X0>(void *a1@<X8>)
{
  result = sub_10000249C();
  *a1 = result;
  return result;
}

uint64_t sub_1000020DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000071EC();
}

uint64_t sub_1000020E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10004491C();

  *a2 = v5;
  return result;
}

uint64_t sub_100002130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000215C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100002160(uint64_t a1)
{
  v2 = sub_100002328(&qword_100060028);
  v3 = sub_100002328(&qword_100060030);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000021F8()
{
  sub_10004494C();
  sub_1000449BC();
}

void sub_100002274(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000023A4(uint64_t a1, id *a2)
{
  result = sub_10004492C();
  *a2 = 0;
  return result;
}

uint64_t sub_10000241C(uint64_t a1, id *a2)
{
  v3 = sub_10004493C();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_10000249C()
{
  sub_10004494C();
  v0 = sub_10004491C();

  return v0;
}

uint64_t sub_1000024D4()
{
  sub_10004494C();
  v0 = sub_1000449FC();

  return v0;
}

id sub_1000025F0()
{
  v1 = [v0 ams_DSID];

  return v1;
}

uint64_t sub_100002694()
{
  v1 = [v0 ams_isBundleOwner];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

uint64_t sub_10000296C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10004494C();

  return v4;
}

void *sub_1000029CC(void *a1)
{
  v2 = sub_100044ADC();
  v3 = sub_100003450(v2);
  if (v3)
  {
    sub_100002A8C(v3);
  }

  v4 = sub_100044ADC();
  v5 = sub_100003450(v4);
  if (v5)
  {
    v6 = sub_100002BA0(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unint64_t *sub_100002A8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_100002E34(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1000034B8(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100002E34((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_100002BA0(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_100044C8C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_1000034B8(v3, v6);
    sub_100003560();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_100044C6C();
    v4 = v7[2];
    sub_100044C9C();
    sub_100044CAC();
    sub_100044C7C();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

unint64_t *sub_100002CDC(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  v16 = &_swiftEmptyArrayStorage;
  a2(0, v8, 0);
  v9 = &_swiftEmptyArrayStorage;
  v10 = a1 + 32;
  if (v8)
  {
    while (1)
    {
      sub_1000034B8(v10, v15);
      sub_100003514(a3, a4);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v16 = v9;
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        a2(v11 > 1, v12 + 1, 1);
        v9 = v16;
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v14;
      v10 += 32;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

void *sub_100002E08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000029CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

char *sub_100002E34(char *a1, int64_t a2, char a3)
{
  result = sub_100002F14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100002E54(char *a1, int64_t a2, char a3)
{
  result = sub_10000301C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100002E74(void *a1, int64_t a2, char a3)
{
  result = sub_100003228(a1, a2, a3, *v3, &qword_100060058, &unk_100046550, &qword_100060050, &qword_1000469B0);
  *v3 = result;
  return result;
}

char *sub_100002EB4(char *a1, int64_t a2, char a3)
{
  result = sub_100003134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100002ED4(void *a1, int64_t a2, char a3)
{
  result = sub_100003228(a1, a2, a3, *v3, &qword_100060068, &qword_100046560, &qword_100060060, "lZ");
  *v3 = result;
  return result;
}

char *sub_100002F14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003514(&qword_100060038, &qword_100046538);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10000301C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003514(&qword_100060048, &unk_100046540);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100003134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003514(&qword_100060070, &qword_100046568);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void *sub_100003228(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003514(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 8);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || &a4[v14 + 4] <= v16 + 4)
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003514(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_100003388(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_100003664();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_100003664();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

uint64_t sub_100003450(void *a1)
{
  v2 = [a1 toArray];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100044A1C();

  return v3;
}

uint64_t sub_1000034B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003514(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003560()
{
  result = qword_100060040;
  if (!qword_100060040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100060040);
  }

  return result;
}

__n128 sub_1000035A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000035B0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003604(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

id sub_100003678(void *a1, uint64_t a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (result)
  {
    v5 = result;
    sub_10000477C(0, &unk_100060830, ASDApp_ptr);
    isa = sub_100044A0C().super.isa;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v14 = sub_100003948;
    v15 = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100004280;
    v13 = &unk_100059A50;
    v8 = _Block_copy(v12);

    v9 = [(objc_class *)isa ams_mapWithTransformIgnoresNil:v8];
    _Block_release(v8);

    v10 = sub_100044A1C();
    sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v13 = sub_100003514(&qword_100060078, &unk_1000465D0);
    v12[0] = v10;

    v11 = a1;
    result = sub_100028F50(v12, a1);
    if (result)
    {

      sub_100044AEC();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100003868(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000034B8(a1, v5);
  sub_10000477C(0, &unk_100060830, ASDApp_ptr);
  swift_dynamicCast();
  v3 = sub_100003950(v4);
  a2[3] = sub_100003514(&qword_100060050, &qword_1000469B0);

  *a2 = v3;
}

uint64_t sub_100003910()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003950(void *a1)
{
  v2 = sub_100003514(&qword_100060080, &qword_1000465E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v74 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v74 - v6;
  sub_100003514(&qword_100060088, &qword_1000465E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000465C0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v9 = [a1 bundleID];
  v10 = sub_10004494C();
  v12 = v11;

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_1000448FC();
  v14 = sub_10000296C(a1, &selRef_bundleShortVersion);
  if (v15)
  {
    *(&v78 + 1) = &type metadata for String;
    *&v77 = v14;
    *(&v77 + 1) = v15;
    sub_10000476C(&v77, v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v13;
    sub_100004498(v76, 0xD000000000000012, 0x8000000100048C60, isUniquelyReferenced_nonNull_native);
    v13 = v75;
  }

  else
  {
    v17 = sub_100006DFC(0xD000000000000012, 0x8000000100048C60);
    if (v18)
    {
      v19 = v17;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *&v76[0] = v13;
      v21 = *(v13 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v20, v21);
      v13 = *&v76[0];
      v22 = *(*(*&v76[0] + 48) + 16 * v19 + 8);

      sub_10000476C((*(v13 + 56) + 32 * v19), &v77);
      sub_100044CCC();
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    sub_10000470C(&v77, &qword_100061D00, &qword_1000465F0);
  }

  v23 = sub_10000296C(a1, &selRef_bundleVersion);
  if (v24)
  {
    *(&v78 + 1) = &type metadata for String;
    *&v77 = v23;
    *(&v77 + 1) = v24;
    sub_10000476C(&v77, v76);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v13;
    sub_100004498(v76, 0x6556656C646E7562, 0xED00006E6F697372, v25);
    v13 = v75;
  }

  else
  {
    v26 = sub_100006DFC(0x6556656C646E7562, 0xED00006E6F697372);
    if (v27)
    {
      v28 = v26;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *&v76[0] = v13;
      v30 = *(v13 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v29, v30);
      v13 = *&v76[0];
      v31 = *(*(*&v76[0] + 48) + 16 * v28 + 8);

      sub_10000476C((*(v13 + 56) + 32 * v28), &v77);
      sub_100044CCC();
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    sub_10000470C(&v77, &qword_100061D00, &qword_1000465F0);
  }

  v32 = [a1 installError];
  if (v32)
  {
    v33 = v32;
    swift_getErrorValue();
    v34 = sub_100044DDC();
    v36 = v35;
    *(&v78 + 1) = &type metadata for String;

    *&v77 = v34;
    *(&v77 + 1) = v36;
    sub_10000476C(&v77, v76);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v13;
    sub_100004498(v76, 0x456C6C6174736E69, 0xEC000000726F7272, v37);
    v13 = v75;
  }

  else
  {
    v38 = sub_100006DFC(0x456C6C6174736E69, 0xEC000000726F7272);
    if (v39)
    {
      v40 = v38;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      *&v76[0] = v13;
      v42 = *(v13 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v41, v42);
      v13 = *&v76[0];
      v43 = *(*(*&v76[0] + 48) + 16 * v40 + 8);

      sub_10000476C((*(v13 + 56) + 32 * v40), &v77);
      sub_100044CCC();
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    sub_10000470C(&v77, &qword_100061D00, &qword_1000465F0);
  }

  v44 = v74;
  v45 = [a1 installID];
  if (v45)
  {
    v46 = v45;
    sub_100043BFC();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = sub_100043C1C();
  sub_10000464C(v44, v47, 1, v48);
  sub_100004674(v44, v7);
  if (sub_1000046E4(v7, 1, v48) == 1)
  {
    sub_10000470C(v7, &qword_100060080, &qword_1000465E0);
    v49 = sub_100006DFC(0x496C6C6174736E69, 0xE900000000000044);
    if (v50)
    {
      v51 = v49;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *&v76[0] = v13;
      v53 = *(v13 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v52, v53);
      v13 = *&v76[0];
      v54 = *(*(*&v76[0] + 48) + 16 * v51 + 8);

      sub_10000476C((*(v13 + 56) + 32 * v51), &v77);
      sub_100044CCC();
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    sub_10000470C(&v77, &qword_100061D00, &qword_1000465F0);
  }

  else
  {
    v55 = sub_100043BEC();
    *(&v78 + 1) = &type metadata for String;
    *&v77 = v55;
    *(&v77 + 1) = v56;
    (*(*(v48 - 8) + 8))(v7, v48);
    sub_10000476C(&v77, v76);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v13;
    sub_100004498(v76, 0x496C6C6174736E69, 0xE900000000000044, v57);
    v13 = v75;
  }

  v58 = [a1 isInstalled];
  *(&v78 + 1) = &type metadata for Bool;
  LOBYTE(v77) = v58;
  sub_10000476C(&v77, v76);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v13;
  sub_100004498(v76, 0x6C6174736E497369, 0xEB0000000064656CLL, v59);
  v60 = v75;
  v61 = [a1 storeItemID];
  *(&v78 + 1) = &type metadata for Int64;
  *&v77 = v61;
  sub_10000476C(&v77, v76);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v60;
  sub_100004498(v76, 0x65744965726F7473, 0xEB0000000044496DLL, v62);
  v63 = v75;
  v64 = [a1 storeFront];
  if (v64)
  {
    v65 = v64;
    *(&v78 + 1) = sub_10000477C(0, &qword_100060040, NSNumber_ptr);
    *&v77 = v65;
    sub_10000476C(&v77, v76);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v63;
    sub_100004498(v76, 0x6F724665726F7473, 0xEA0000000000746ELL, v66);
    return v75;
  }

  else
  {
    v67 = sub_100006DFC(0x6F724665726F7473, 0xEA0000000000746ELL);
    if (v68)
    {
      v69 = v67;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *&v76[0] = v63;
      v71 = *(v63 + 24);
      sub_100003514(&qword_100060090, qword_1000465F8);
      sub_100044CBC(v70, v71);
      v63 = *&v76[0];
      v72 = *(*(*&v76[0] + 48) + 16 * v69 + 8);

      sub_10000476C((*(v63 + 56) + 32 * v69), &v77);
      sub_100044CCC();
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    sub_10000470C(&v77, &qword_100061D00, &qword_1000465F0);
  }

  return v63;
}

id sub_100004280(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v15[3] = swift_getObjectType();
  v15[0] = a2;

  swift_unknownObjectRetain();
  v4(v13, v15);

  v5 = v14;
  if (v14)
  {
    v6 = sub_100004454(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_100044D9C();
    (*(v7 + 8))(v10, v5);
    sub_100004408(v13);
  }

  else
  {
    v11 = 0;
  }

  sub_100004408(v15);

  return v11;
}

uint64_t sub_1000043F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004408(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100004454(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_100004498(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006DFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100003514(&qword_100060090, qword_1000465F8);
  if (!sub_100044CBC(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100006DFC(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_100044DCC();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    sub_100004408(v22);

    return sub_10000476C(a1, v22);
  }

  else
  {
    sub_1000045E0(v16, a2, a3, a1, v21);
  }
}

_OWORD *sub_1000045E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000476C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100004674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060080, &qword_1000465E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000470C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003514(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_10000476C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000477C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000047BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23[0] = a1;
  v11 = sub_100044B3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v23 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a2, v11);
  if (sub_1000046E4(v16, 1, a4) == 1)
  {
    (*(v12 + 8))(v16, v11);
    a6[3] = a3;
    a6[4] = a5;
    v21 = sub_1000049E0(a6);
    return (*(*(a3 - 8) + 16))(v21, v23[1], a3);
  }

  else
  {
    (*(v17 + 32))(v20, v16, a4);
    sub_10004457C();
    return (*(v17 + 8))(v20, a4);
  }
}

uint64_t *sub_1000049E0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

id sub_100004A40()
{
  if (*v0)
  {
    v1 = *v0;
    result = [v1 accountStore];
    if (result)
    {
      v3 = sub_10004487C();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      v6 = sub_10004488C();

      return v6;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 ams_sharedAccountStoreForClient:*(v0 + *(type metadata accessor for BaseBootstrap() + 24))];
    v9 = sub_10004487C();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    return sub_10004488C();
  }

  return result;
}

uint64_t sub_100004B1C()
{
  v1 = v0;
  v2 = type metadata accessor for BaseBootstrap();
  v3 = (v2 - 8);
  v24 = *(v2 - 8);
  v23 = *(v24 + 64);
  __chkstk_darwin(v2);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000443CC();
  sub_1000443AC();
  v5 = v34;
  v6 = v35;
  sub_100004454(v33, v34);
  v7 = sub_10000477C(0, &qword_100061EF0, ACAccount_ptr);
  v31[0] = *v1;
  v8 = v31[0];
  v9 = v31[0];
  sub_1000047BC(v7, v31, v5, v7, v6, v32);
  sub_100004454(v32, v32[3]);
  sub_10004487C();
  v30[0] = sub_100004A40();
  sub_10004457C();

  sub_100004454(v31, v31[3]);
  type metadata accessor for DynamicAccountsStore();
  v10 = sub_100004A40();
  swift_allocObject();
  v29[0] = DynamicAccountsStore.init(accountStore:account:)(v10, v8);
  sub_10004457C();

  sub_100004454(v30, v30[3]);
  sub_10004461C();
  v11 = v3[7];
  sub_10004457C();
  sub_100004454(v29, v29[3]);
  sub_10000477C(0, &unk_100061F00, AMSProcessInfo_ptr);
  v27[0] = *(v1 + v3[8]);
  v12 = v27[0];
  sub_10004457C();
  sub_100004454(v28, v28[3]);
  v13 = (v1 + v3[9]);
  v15 = *v13;
  v14 = v13[1];
  v26[0] = v15;
  v26[1] = v14;
  sub_10004457C();
  sub_100004454(v27, v27[3]);
  sub_10004458C();
  sub_100004454(v26, v26[3]);
  sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
  v16 = v22;
  sub_100005550(v1, v22);
  v17 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  sub_1000056C8(v16, v18 + v17);
  sub_10004456C();

  sub_100004454(v25, v25[3]);
  v19 = sub_10004454C();
  sub_100004408(v25);
  sub_100004408(v26);
  sub_100004408(v27);
  sub_100004408(v28);
  sub_100004408(v29);
  sub_100004408(v30);
  sub_100004408(v31);
  sub_100004408(v32);
  sub_100004408(v33);
  return v19;
}

uint64_t sub_100004F70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  v4 = sub_10004419C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10004461C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
  sub_1000443CC();
  sub_10004462C();
  v14 = (a2 + *(type metadata accessor for BaseBootstrap() + 28));
  v15 = v14[1];
  *v8 = *v14;
  v8[1] = v15;
  v8[2] = 0;
  v8[3] = 0;
  (*(v5 + 104))(v8, enum case for JetEngineBootstrap.URLProtocolHandler.media(_:), v4);

  v16 = sub_100044A6C();
  (*(v5 + 8))(v8, v4);
  result = (*(v10 + 8))(v13, v9);
  *v19 = v16;
  return result;
}

void *AccountsWrapper.account.getter()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = *(v0 + 24);
  v3 = v2;
  [v1 unlock];
  return v2;
}

void AccountsWrapper.account.setter(void *a1)
{
  v3 = *(v1 + 16);
  [v3 lock];
  v4 = *(v1 + 24);
  *(v1 + 24) = a1;
  v5 = a1;

  [v3 unlock];
}

void (*AccountsWrapper.account.modify(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = AccountsWrapper.account.getter();
  return sub_1000052A0;
}

void sub_1000052A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    AccountsWrapper.account.setter(v2);
  }

  else
  {
    AccountsWrapper.account.setter(*a1);
  }
}

uint64_t DynamicAccountsStore.accountStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t DynamicAccountsStore.accountStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t DynamicAccountsStore.__allocating_init(accountStore:account:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DynamicAccountsStore.init(accountStore:account:)(a1, a2);
  return v4;
}

void *DynamicAccountsStore.init(accountStore:account:)(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(NSLock) init];
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t DynamicAccountsStore.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t DynamicAccountsStore.__deallocating_deinit()
{
  DynamicAccountsStore.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t type metadata accessor for BaseBootstrap()
{
  result = qword_1000601F0;
  if (!qword_1000601F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseBootstrap();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000055B4()
{
  v1 = (type metadata accessor for BaseBootstrap() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_10004461C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = *(v0 + v3 + v1[9] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000056C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseBootstrap();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000057C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004461C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_1000046E4(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100005884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004461C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10000464C(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100005930()
{
  sub_1000059E4();
  if (v0 <= 0x3F)
  {
    sub_10004461C();
    if (v1 <= 0x3F)
    {
      sub_10000477C(319, &unk_100061F00, AMSProcessInfo_ptr);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000059E4()
{
  if (!qword_100060200)
  {
    sub_10000477C(255, &qword_100061EF0, ACAccount_ptr);
    v0 = sub_100044B3C();
    if (!v1)
    {
      atomic_store(v0, &qword_100060200);
    }
  }
}

void *DynamicAccountsStore.account.getter()
{
  v1 = sub_100043DBC();
  v2 = sub_1000061E8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v19 = sub_1000061CC();
  [v19 lock];
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC();
  }

  v7 = sub_1000060A4(v1, qword_100065200);
  (*(v4 + 16))(v0, v7, v1);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v8 = *(sub_100043D4C() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_100046690;
  v21 = type metadata accessor for DynamicAccountsStore();
  v20[0] = v0;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v20);
  v21 = &type metadata for UnsafeMutableRawPointer;
  v20[0] = v0;
  sub_100043D0C();
  sub_100006100(v20);
  sub_100043CFC();
  v13 = *(v0 + 24);
  if (v13)
  {
    v14 = sub_100006168();
  }

  else
  {
    v14 = 0;
    v20[1] = 0;
    v20[2] = 0;
  }

  v20[0] = v13;
  v21 = v14;
  v15 = v13;
  sub_100043D0C();
  sub_100006100(v20);
  sub_100043D7C();

  (*(v4 + 8))(v0, v1);
  v16 = *(v0 + 24);
  v17 = v16;
  [v19 unlock];
  return v16;
}

void DynamicAccountsStore.account.setter(void *a1)
{
  v2 = v1;
  v4 = sub_100043DBC();
  v5 = sub_1000061E8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v21 = sub_1000061CC();
  [v21 lock];
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC();
  }

  v22 = a1;
  v10 = sub_1000060A4(v4, qword_100065200);
  (*(v7 + 16))(v1, v10, v4);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v11 = *(sub_100043D4C() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_100046690;
  v24 = type metadata accessor for DynamicAccountsStore();
  v23[0] = v1;

  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v23);
  v24 = &type metadata for UnsafeMutableRawPointer;
  v23[0] = v1;
  sub_100043D0C();
  sub_100006100(v23);
  sub_100043CFC();
  if (v22)
  {
    v16 = sub_100006168();
    v17 = v22;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v17;
  v24 = v16;
  v18 = v22;
  sub_100043D0C();
  sub_100006100(v23);
  sub_100043D7C();

  (*(v7 + 8))(v1, v4);
  v19 = *(v1 + 24);
  *(v2 + 24) = v22;
  v20 = v18;

  [v21 unlock];
}

void (*DynamicAccountsStore.account.modify(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = DynamicAccountsStore.account.getter();
  return sub_10000603C;
}

void sub_10000603C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    DynamicAccountsStore.account.setter(v2);
  }

  else
  {
    DynamicAccountsStore.account.setter(*a1);
  }
}

uint64_t sub_1000060A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006100(uint64_t a1)
{
  v2 = sub_100003514(&qword_100061D00, &qword_1000465F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100006168()
{
  result = qword_100061EF0;
  if (!qword_100061EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100061EF0);
  }

  return result;
}

uint64_t sub_1000061AC()
{

  return swift_once();
}

id sub_1000061FC(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = sub_100006458(a2);
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16))
    {
      sub_10000477C(0, &qword_100060800, JSValue_ptr);
      v17 = sub_100003514(&qword_100060338, qword_1000466E8);
      v16[0] = v7;
      v8 = a1;

      result = sub_100028F50(v16, a1);
      if (!result)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      sub_100044AEC();
    }

    else
    {
    }
  }

  v9 = sub_1000064C4(a2);
  if (!v9)
  {
LABEL_12:
    v12 = [a2 request];
    if (!v12)
    {
      return v5;
    }

    v13 = v12;
    sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v17 = sub_10000477C(0, &qword_100060330, AMSEngagementRequest_ptr);
    v16[0] = v13;
    v14 = a1;
    v15 = v13;
    result = sub_100028F50(v16, a1);
    if (result)
    {
      sub_100044AEC();

      return v5;
    }

    goto LABEL_17;
  }

  v10 = v9;
  if (!*(v9 + 16))
  {

    goto LABEL_12;
  }

  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v17 = sub_100003514(&qword_100060060, "lZ");
  v16[0] = v10;
  v11 = a1;

  result = sub_100028F50(v16, a1);
  if (result)
  {

    sub_100044AEC();
    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100006458(void *a1)
{
  v1 = [a1 actions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100003514(&qword_100060060, "lZ");
  v3 = sub_100044A1C();

  return v3;
}

uint64_t sub_1000064C4(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000448EC();

  return v3;
}

uint64_t sub_100006530(void *a1)
{
  v3 = sub_100044ADC();
  v4 = sub_100006644(v3);
  if (v4)
  {
    v1 = v4;
  }

  else
  {
    sub_100044ADC();
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004469C();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100006618@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006530(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100006644(void *a1)
{
  v2 = [a1 toDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1000448EC();

  return v3;
}

unint64_t sub_1000066BC()
{
  result = qword_1000607F0;
  if (!qword_1000607F0)
  {
    sub_1000446CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000607F0);
  }

  return result;
}

uint64_t sub_100006724(void *a1)
{
  v3 = sub_1000074B8();
  v4 = sub_100003450(v3);
  if (!v4 || (v5 = sub_100002C8C(v4), , !v5))
  {
    sub_1000074B8();
    sub_1000446CC();
    sub_1000066BC();
    sub_100007498();
LABEL_18:
    sub_10004469C();
    swift_willThrow();

    return v1;
  }

  v6 = sub_100044ADC();
  v1 = sub_100044ACC();
  v8 = v7;

  if (!v8)
  {

    sub_100044ADC();
    sub_1000446CC();
    sub_1000066BC();
    sub_100007498();
    goto LABEL_18;
  }

  v9 = v5[2];
  if (!v9)
  {

    return v1;
  }

  v22 = v1;
  v26 = &_swiftEmptyArrayStorage;
  result = sub_100002E54(0, v9, 0);
  v1 = 0;
  v11 = &_swiftEmptyArrayStorage;
  while (v1 < v5[2])
  {
    v12 = v11;
    v13 = v5[v1 + 4];
    v14 = *(v13 + 16);

    if (!v14)
    {
      goto LABEL_24;
    }

    v15 = sub_100006DFC(0x6E656D6563616C70, 0xE900000000000074);
    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_1000034B8(*(v13 + 56) + 32 * v15, v25);
    if (!swift_dynamicCast())
    {
      goto LABEL_24;
    }

    if (!*(v13 + 16) || (v17 = sub_100006DFC(0x747865746E6F63, 0xE700000000000000), (v18 & 1) == 0) || (sub_1000034B8(*(v13 + 56) + 32 * v17, v25), sub_100003514(&qword_100060050, &qword_1000469B0), (swift_dynamicCast() & 1) == 0))
    {

LABEL_24:
      sub_1000446CC();
      sub_1000066BC();
      sub_100007498();
      sub_10004467C();
      swift_willThrow();

      return v1;
    }

    v11 = v12;
    v26 = v12;
    v20 = v12[2];
    v19 = v12[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_100002E54((v19 > 1), v20 + 1, 1);
      v11 = v26;
    }

    ++v1;
    v11[2] = v20 + 1;
    v21 = &v11[3 * v20];
    v21[4] = v23;
    v21[5] = v23;
    v21[6] = v24;
    if (v9 == v1)
    {

      return v22;
    }
  }

  __break(1u);
  return result;
}

id sub_100006B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    sub_100044C8C();
    v5 = (a3 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 3;

      v9 = sub_100036C60(v7);
      v10 = objc_allocWithZone(AMSEngagementPlacementInfo);
      sub_100006C94(v6, v8, v9);

      sub_100044C6C();
      v11 = _swiftEmptyArrayStorage[2];
      sub_100044C9C();
      sub_100044CAC();
      sub_100044C7C();
      --v3;
    }

    while (v3);
  }

  objc_allocWithZone(AMSEngagementMessageEvent);

  return sub_100006D34();
}

uint64_t sub_100006C64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006724(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

id sub_100006C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004491C();

  if (a3)
  {
    v6.super.isa = sub_1000448DC().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithPlacement:v5 context:v6.super.isa];

  return v7;
}

id sub_100006D34()
{
  v1 = sub_10004491C();

  sub_100007320();
  isa = sub_100044A0C().super.isa;

  v3 = [v0 initWithServiceType:v1 placementInfo:isa];

  return v3;
}

unint64_t sub_100006DB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100044BDC(*(v2 + 40));

  return sub_100006F08(a1, v4);
}

unint64_t sub_100006DFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100044E3C();
  sub_1000449BC();
  v6 = sub_100044E5C();

  return sub_100006FCC(a1, a2, v6);
}

unint64_t sub_100006E74(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10004494C();
  sub_100044E3C();
  sub_1000449BC();
  v4 = sub_100044E5C();

  return sub_100007080(a1, v4);
}

unint64_t sub_100006F08(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100007270(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100044BEC();
    sub_1000072CC(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100006FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100044DAC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100007080(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_10004494C();
    v8 = v7;
    if (v6 == sub_10004494C() && v8 == v9)
    {

      return i;
    }

    v11 = sub_100044DAC();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

Swift::Int sub_100007178()
{
  sub_10004494C();
  sub_100044E3C();
  sub_1000449BC();
  v0 = sub_100044E5C();

  return v0;
}

uint64_t sub_1000071EC()
{
  v0 = sub_10004494C();
  v2 = v1;
  if (v0 == sub_10004494C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100044DAC();
  }

  return v5 & 1;
}

unint64_t sub_100007320()
{
  result = qword_100060340;
  if (!qword_100060340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100060340);
  }

  return result;
}

__n128 sub_100007364(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007378(uint64_t *a1, int a2)
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

uint64_t sub_1000073B8(uint64_t result, int a2, int a3)
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

uint64_t sub_100007408(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100007448(uint64_t result, int a2, int a3)
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

uint64_t sub_100007498()
{

  return swift_allocError();
}

uint64_t sub_1000074B8()
{

  return sub_100044ADC();
}

id sub_1000074D8(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v6 = [a2 serviceType];
  v7 = sub_10004494C();
  v9 = v8;

  ObjectType = &type metadata for String;
  v27[0] = v7;
  v27[1] = v9;
  v10 = a1;
  result = sub_100028F50(v27, a1);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v10;
  sub_100044AEC();
  v11 = [a2 dictionaryRepresentation];
  sub_100003514(&qword_100060350, &unk_100046850);
  v12 = sub_1000448EC();

  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v13 = sub_100043DBC();
  sub_1000060A4(v13, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v14 = *(sub_100043D4C() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_100046830;
  ObjectType = &type metadata for EngagementMessageAction;
  v27[0] = a2;
  v17 = a2;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v27);
  sub_100043CFC();
  ObjectType = sub_100003514(&qword_100060358, &unk_100046860);
  v27[0] = v12;

  sub_100043D0C();
  sub_100006100(v27);
  sub_100043D9C();

  v20 = sub_100030724(0xD000000000000011, 0x8000000100048D30, v12);
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  ObjectType = swift_getObjectType();
  v27[0] = v21;
  v22 = v26;
  swift_unknownObjectRetain();
  result = sub_100028F50(v27, a1);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100044AEC();
  swift_unknownObjectRelease();
LABEL_10:
  v23 = sub_100030724(0x6E656D6563616C70, 0xEA00000000007374, v12);
  if (!v23)
  {

    return v5;
  }

  v24 = v23;
  ObjectType = swift_getObjectType();
  v27[0] = v24;
  v25 = v26;
  swift_unknownObjectRetain();
  result = sub_100028F50(v27, a1);
  if (result)
  {

    sub_100044AEC();
    swift_unknownObjectRelease();
    return v5;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100007944(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = result;
  v6 = sub_100007B0C(a2);
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = sub_100026E4C();
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = v8;
  v16[0] = _swiftEmptyArrayStorage;
  result = sub_100044C8C();
  if (v10 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = sub_100044C5C();
    }

    else
    {
      v12 = *(v7 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    sub_1000074D8(a1, v12);

    sub_100044C6C();
    v14 = *(v16[0] + 16);
    sub_100044C9C();
    sub_100044CAC();
    sub_100044C7C();
  }

  while (v10 != v11);
  v9 = v16[0];
LABEL_11:
  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v16[3] = sub_100003514(&qword_100060348, &unk_100046840);
  v16[0] = v9;

  v15 = a1;
  result = sub_100028F50(v16, a1);
  if (result)
  {

    sub_100044AEC();
    return v5;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100007B0C(void *a1)
{
  v1 = [a1 messageActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10000477C(0, &qword_100060360, AMSEngagementMessageEventServiceResponse_ptr);
  v3 = sub_100044A1C();

  return v3;
}

uint64_t sub_100007B8C()
{
  v1 = sub_100043B7C();
  v2 = sub_1000061E8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100008530();
  sub_1000084CC(v7, qword_100060368);
  v8 = sub_1000060A4(v1, qword_100060368);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 temporaryDirectory];

  sub_100043B3C();
  return (*(v4 + 32))(v8, v0, v1);
}

uint64_t sub_100007CA4()
{
  v0 = sub_100043B7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084CC(v3, qword_100060380);
  sub_1000060A4(v0, qword_100060380);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  sub_100043B3C();
  sub_100043B0C();
  return (*(v1 + 8))(v5, v0);
}

id sub_100007DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100043B7C();
  v4 = sub_1000061E8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100008530();
  sub_100008170();
  sub_1000082D4();
  v9 = [objc_opt_self() defaultManager];
  sub_100043AFC(v10);
  v12 = v11;
  v23[0] = 0;
  v13 = [v9 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v23];

  v21 = v23[0];
  if (v13)
  {
    (*(v6 + 32))(a1, v1, v3);
    sub_10000464C(a1, 0, 1, v3);

    return v21;
  }

  else
  {
    v15 = v23[0];
    sub_100043AAC();

    swift_willThrow();
    (*(v6 + 8))(v1, v3);
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v16 = sub_100043DBC();
    sub_1000060A4(v16, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    v17 = *(sub_100043D4C() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1000468F0;
    sub_100043CFC();
    swift_getErrorValue();
    v23[3] = v22;
    v20 = sub_1000049E0(v23);
    (*(*(v22 - 1) + 16))(v20);
    sub_100043D0C();
    sub_100006100(v23);
    sub_100043D8C();

    return sub_10000464C(a1, 1, 1, v3);
  }
}

id sub_100008170()
{
  v0 = [objc_opt_self() defaultManager];
  if (qword_10005FF08 != -1)
  {
    swift_once();
  }

  v1 = sub_100043B7C();
  sub_1000060A4(v1, qword_100060380);
  sub_100043AFC(v2);
  v4 = v3;
  v9 = 0;
  v5 = [v0 removeItemAtURL:v3 error:&v9];

  v6 = v9;
  if (v5)
  {

    return v6;
  }

  else
  {
    v8 = v9;
    sub_100043AAC();

    swift_willThrow();
  }
}

uint64_t sub_1000082D4()
{
  v0 = sub_100043B7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100043C1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043C0C();
  sub_100043BEC();
  (*(v6 + 8))(v9, v5);
  if (qword_10005FF08 != -1)
  {
    swift_once();
  }

  sub_1000060A4(v0, qword_100060380);
  sub_100043B0C();

  sub_100043B1C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t *sub_1000084CC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100008548(uint64_t a1)
{
  v2 = sub_100003514(&qword_100060488, &unk_100046970);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v49 - v4;
  v56 = sub_100043B7C();
  v6 = *(*(v56 - 8) + 64);
  v7 = __chkstk_darwin(v56);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v49 - v10;
  v12 = a1 + 64;
  v11 = *(a1 + 64);
  v53 = &_swiftEmptyDictionarySingleton;
  v58 = &_swiftEmptyDictionarySingleton;
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v49 = v9;
  v51 = (v9 + 32);
  v57 = a1;

  v18 = 0;
  v55 = v5;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_9:
    v20 = __clz(__rbit64(v15)) | (v18 << 6);
    v21 = *(v57 + 56);
    v54 = *(*(v57 + 48) + 8 * v20);
    v22 = (v21 + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = objc_opt_self();

    v26 = [v25 defaultManager];
    v27 = sub_10004491C();
    v28 = [v26 fileExistsAtPath:v27];

    if (v28)
    {
      v29 = v55;
      sub_100043AEC();
      v30 = 0;
    }

    else
    {
      v30 = 1;
      v29 = v55;
    }

    v15 &= v15 - 1;
    v31 = v56;
    sub_10000464C(v29, v30, 1, v56);

    if (sub_1000046E4(v29, 1, v31) == 1)
    {
      result = sub_10000AC5C(v29, &qword_100060488, &unk_100046970);
    }

    else
    {
      v32 = v50;
      v33 = *v51;
      v34 = v56;
      (*v51)(v50, v29, v56);
      v33(v52, v32, v34);
      v35 = v53[2];
      if (v53[3] <= v35)
      {
        sub_10000A75C(v35 + 1, 1);
      }

      v36 = v58;
      v37 = v58[5];
      v38 = v54;
      result = sub_100044E2C();
      v39 = v36 + 8;
      v53 = v36;
      v40 = -1 << *(v36 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~v36[(v41 >> 6) + 8]) == 0)
      {
        v44 = 0;
        v45 = (63 - v40) >> 6;
        while (++v42 != v45 || (v44 & 1) == 0)
        {
          v46 = v42 == v45;
          if (v42 == v45)
          {
            v42 = 0;
          }

          v44 |= v46;
          v47 = v39[v42];
          if (v47 != -1)
          {
            v43 = __clz(__rbit64(~v47)) + (v42 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v43 = __clz(__rbit64((-1 << v41) & ~v36[(v41 >> 6) + 8])) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v48 = v53;
      *(v53[6] + 8 * v43) = v38;
      result = (v33)(v48[7] + *(v49 + 72) * v43, v52, v56);
      ++v48[2];
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v53;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

Swift::Int sub_1000089B8(unsigned __int8 a1)
{
  sub_100044E3C();
  sub_100044E4C(a1);
  return sub_100044E5C();
}

Swift::Int sub_100008A1C()
{
  v1 = *v0;
  sub_100044E3C();
  sub_100044E4C(v1);
  return sub_100044E5C();
}

uint64_t sub_100008AA0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v153 = a4;
  v137 = a3;
  v135 = a2;
  v158 = a1;
  v5 = sub_100003514(&qword_100060458, &qword_100046940);
  v6 = sub_1000061E8(v5);
  v150 = v7;
  v151 = v6;
  v9 = *(v8 + 64);
  sub_10000AF08();
  __chkstk_darwin(v10);
  sub_10000AF20();
  v149 = v11;
  v157 = sub_1000442BC();
  v12 = sub_1000061E8(v157);
  v146 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000AF40();
  sub_10000AF14(v16);
  v156 = sub_100003514(&qword_100060460, &qword_100046948);
  sub_1000061E8(v156);
  v148 = v17;
  v19 = *(v18 + 64);
  sub_10000AF08();
  __chkstk_darwin(v20);
  sub_10000AF20();
  v147 = v21;
  v144 = sub_100003514(&qword_100060468, &qword_100046950);
  sub_1000061E8(v144);
  v143 = v22;
  v24 = *(v23 + 64);
  sub_10000AF08();
  __chkstk_darwin(v25);
  sub_10000AF20();
  sub_10000AF14(v26);
  v140 = sub_100003514(&qword_100060470, &qword_100046958);
  sub_1000061E8(v140);
  v139 = v27;
  v29 = *(v28 + 64);
  sub_10000AF08();
  __chkstk_darwin(v30);
  sub_10000AF20();
  sub_10000AF14(v31);
  v133 = sub_10004408C();
  v32 = sub_1000061E8(v133);
  v132 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_10000AF40();
  sub_10000AF14(v36);
  v154 = sub_100003514(&qword_100060478, &qword_100046960);
  sub_1000061E8(v154);
  v136 = v37;
  v39 = *(v38 + 64);
  sub_10000AF08();
  __chkstk_darwin(v40);
  sub_10000AF20();
  sub_10000AF14(v41);
  v130 = sub_100003514(&qword_100060480, &qword_100046968);
  sub_1000061E8(v130);
  v129 = v42;
  v44 = *(v43 + 64);
  sub_10000AF08();
  __chkstk_darwin(v45);
  sub_10000AF20();
  sub_10000AF14(v46);
  v47 = *(*(sub_100003514(&qword_100060488, &unk_100046970) - 8) + 64);
  sub_10000AF08();
  __chkstk_darwin(v48);
  v50 = &v123 - v49;
  v51 = sub_100043B7C();
  v52 = sub_1000061E8(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  v57 = __chkstk_darwin(v52);
  v155 = &v123 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v159 = &v123 - v60;
  v141 = v61;
  __chkstk_darwin(v59);
  v160 = &v123 - v62;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v63 = sub_100043DBC();
  sub_1000060A4(v63, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v64 = *(sub_100043D4C() - 8);
  v65 = *(v64 + 72);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  *(swift_allocObject() + 16) = xmmword_100046830;
  v162 = type metadata accessor for JetpackLoader();
  v161 = v4;
  v152 = v4;

  v67 = AMSLogKey();
  if (v67)
  {
    v68 = v67;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(&v161);
  sub_100043CFC();
  v162 = v51;
  v69 = sub_1000049E0(&v161);
  v70 = v54;
  v71 = *(v54 + 16);
  v71(v69, v158, v51);
  sub_100043D0C();
  sub_10000AC5C(&v161, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_10000477C(0, &qword_100060490, JSVirtualMachine_ptr);
  sub_1000443CC();
  sub_10004462C();
  v72 = v161;
  if (qword_10005FF00 != -1)
  {
    swift_once();
  }

  v73 = sub_1000060A4(v51, qword_100060368);
  v74 = v160;
  v71(v160, v73, v51);
  sub_100007DEC(v50);
  if (sub_1000046E4(v50, 1, v51) == 1)
  {
    sub_10000AC5C(v50, &qword_100060488, &unk_100046970);
    sub_100003514(&qword_100060498, "xV");
    sub_10000A530();
    swift_allocError();
    *v75 = 1;
    v76 = sub_1000447AC();

    (*(v70 + 8))(v74, v51);
  }

  else
  {
    v77 = *(v70 + 32);
    v124 = v70 + 32;
    v126 = v77;
    v77(v159, v50, v51);
    v125 = v72;
    v78 = v135;
    v79 = v137;
    v80 = sub_1000304EC(v135, v137);
    v81 = sub_10003045C(v78, v79);
    v82 = v128;
    v83 = v158;
    sub_10004486C();
    v84 = v134;
    v137 = v80;
    v127 = v81;
    sub_10004431C();
    sub_10000AAE4(&qword_1000604A8, &qword_100060480, &qword_100046968);
    v85 = v130;
    v86 = sub_10004429C();
    v123 = v86;
    v135 = v70;
    v87 = *(v136 + 8);
    v87(v84, v154);
    (*(v129 + 8))(v82, v85);
    v164 = v86;
    v71(v155, v83, v51);
    sub_10000A5CC();
    sub_100044BFC();
    v88 = sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
    v130 = v71;
    v89 = v132;
    v90 = v131;
    v91 = v133;
    (*(v132 + 104))(v131, enum case for DispatchQoS.QoSClass.default(_:), v133);
    v136 = v88;
    v92 = sub_100044A8C();
    (*(v89 + 8))(v90, v91);
    sub_10004433C();

    sub_1000072CC(&v161);
    sub_10000AF54();
    v153 = &protocol conformance descriptor for MapPipelineTask<A, B>;
    sub_10000AAE4(&qword_1000604C8, &qword_1000604C0, &qword_100046980);
    v93 = sub_10004429C();
    v87(v84, v154);

    v161 = v93;
    v94 = sub_1000448FC();
    sub_100008548(v94);

    sub_100008A70();
    sub_1000442CC();
    v95 = v138;
    sub_10004432C();

    v96 = sub_10004429C();
    (*(v139 + 8))(v95, v140);

    v161 = v96;
    v97 = v142;
    sub_1000442DC();
    sub_100003514(&qword_1000604D0, &qword_100046988);
    sub_10000AAE4(&qword_1000604D8, &qword_1000604D0, &qword_100046988);
    v98 = sub_10004429C();
    v154 = v98;
    (*(v143 + 8))(v97, v144);

    v161 = v98;
    v99 = v146;
    v100 = v145;
    v101 = v157;
    (*(v146 + 104))(v145, enum case for JetpackBundle.Resource.source(_:), v157);
    v102 = v147;
    sub_10004430C();
    (*(v99 + 8))(v100, v101);
    v103 = sub_10000AF54();
    v104 = sub_10000AAE4(&qword_1000604E8, &qword_1000604E0, &qword_100046990);
    v146 = v103;
    v145 = v104;
    v105 = sub_10004429C();
    v148 = *(v148 + 8);
    (v148)(v102, v156);
    v161 = v105;
    v106 = v155;
    v130(v155, v158, v51);
    v107 = (*(v124 + 48) + 16) & ~*(v124 + 48);
    v108 = (v141 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    v126(v109 + v107, v106, v51);
    v110 = v125;
    *(v109 + v108) = v125;
    v158 = v110;
    sub_100003514(&qword_1000604F0, &qword_100046998);
    sub_100003514(&qword_1000604F8, &qword_1000469A0);
    sub_10000AAE4(&qword_100060500, &qword_1000604F0, &qword_100046998);
    v155 = sub_10004428C();

    v161 = v154;
    if (qword_10005FF10 != -1)
    {
      swift_once();
    }

    sub_1000060A4(v157, qword_100060398);
    sub_10004430C();
    v111 = sub_10004429C();
    (v148)(v102, v156);
    v161 = v111;
    v112 = sub_10004427C();

    v161 = v112;
    sub_10000AF54();
    sub_100003514(&qword_100060050, &qword_1000469B0);
    sub_10000AAE4(&qword_100060510, &qword_100060508, &qword_1000469A8);
    v113 = sub_10004428C();

    v161 = v113;
    v114 = v149;
    sub_1000442DC();
    sub_100003514(&qword_100060518, &qword_1000469B8);
    sub_10000AAE4(&qword_100060520, &qword_100060518, &qword_1000469B8);
    sub_10004429C();
    (*(v150 + 8))(v114, v151);

    sub_10004441C();
    v115 = sub_10004441C();
    v116 = sub_1000448FC();
    v117 = sub_100044A7C();
    v118 = swift_allocObject();
    *(v118 + 16) = v116;
    sub_10000E34C(sub_10000AADC, v118, v117, v115);

    sub_10000AF54();
    sub_10000AAE4(&qword_100060530, &qword_100060528, &unk_1000469C0);
    sub_10004477C();
    v119 = swift_allocObject();
    v120 = v152;
    *(v119 + 16) = sub_10000AB2C;
    *(v119 + 24) = v120;
    v162 = sub_10004448C();
    v163 = &protocol witness table for SyncTaskScheduler;
    sub_1000049E0(&v161);

    sub_10004447C();
    v76 = sub_10004476C();

    v121 = *(v135 + 8);
    v121(v159, v51);
    v121(v160, v51);
    sub_100004408(&v161);
  }

  return v76;
}

void *sub_100009D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a3;
  v7 = sub_100003514(&qword_100060488, &unk_100046970);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_100043B7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = *(v12 + 16);
  v17(&v22 - v18, a1, v11);
  v17(v16, a2, v11);
  sub_10000464C(v10, 1, 1, v11);
  a4[3] = sub_10004443C();
  a4[4] = &protocol witness table for JSBytecodeSource;
  sub_1000049E0(a4);
  v19 = v23;
  v20 = v24;
  result = sub_10004442C();
  if (v20)
  {
    return sub_10000ACB0(a4);
  }

  return result;
}

uint64_t sub_100009F20()
{
  result = sub_100043B8C();
  if (!v0)
  {
    sub_100003514(&qword_100060540, &qword_1000469D0);
    return sub_1000447BC();
  }

  return result;
}

uint64_t sub_100009F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003514(&qword_100060538, &qword_100046D20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_10004420C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AC04(*a1, *(a1 + 8));
  result = sub_1000441DC();
  if (!v2)
  {
    sub_1000441CC();
    v15 = sub_10004437C();
    if (sub_1000046E4(v8, 1, v15) == 1)
    {
      sub_10000AC5C(v8, &qword_100060538, &qword_100046D20);
    }

    else
    {
      v16 = sub_10004436C();
      (*(*(v15 - 8) + 8))(v8, v15);
      if (v16)
      {
        result = (*(v10 + 8))(v13, v9);
        *a2 = v16;
        return result;
      }
    }

    sub_10000A530();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_10000A1D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v8 = sub_100043DBC();
  sub_1000060A4(v8, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v9 = *(sub_100043D4C() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_100046830;
  v19 = type metadata accessor for JetpackLoader();
  v18[0] = a3;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v18);
  sub_100043CFC();
  v14 = a1[3];
  v15 = sub_100004454(a1, v14);
  v19 = v14;
  v16 = sub_1000049E0(v18);
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  sub_100043D0C();
  sub_10000AC5C(v18, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_10000ABA0(a1, a4);
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0;
  *(a4 + 40) = a2;
}

uint64_t sub_10000A494()
{
  v0 = sub_1000442BC();
  sub_1000084CC(v0, qword_100060398);
  v1 = sub_1000060A4(v0, qword_100060398);
  *v1 = xmmword_100046900;
  v1[1] = xmmword_100046910;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

unint64_t sub_10000A530()
{
  result = qword_1000604A0;
  if (!qword_1000604A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000604A0);
  }

  return result;
}

uint64_t sub_10000A584(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000A5CC()
{
  result = qword_1000604B0;
  if (!qword_1000604B0)
  {
    sub_100043B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000604B0);
  }

  return result;
}

uint64_t sub_10000A624()
{
  v1 = sub_100043B7C();
  sub_10000AF2C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void *sub_10000A6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_100043B7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_100009D44(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_10000A75C(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_100043B7C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100003514(&qword_100060548, &qword_1000469D8);
  v41 = a2;
  result = sub_100044CEC();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v12;
    return result;
  }

  v38 = v3;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v39 = (v6 + 16);
  v40 = v6;
  v19 = (v6 + 32);
  v20 = result + 64;
  if (!v17)
  {
LABEL_9:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      sub_100026E98(0, (v37 + 63) >> 6, v9 + 64);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v24 = v21 | (v13 << 6);
    v25 = *(*(v9 + 48) + 8 * v24);
    v26 = *(v6 + 72);
    v27 = *(v9 + 56) + v26 * v24;
    if (v41)
    {
      (*v19)(v42, v27, v43);
    }

    else
    {
      (*v39)(v42, v27, v43);
    }

    v28 = *(v12 + 40);
    result = sub_100044E2C();
    v29 = -1 << *(v12 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v20 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v12 + 48) + 8 * v32) = v25;
    result = (*v19)(*(v12 + 56) + v26 * v32, v42, v43);
    ++*(v12 + 16);
    v6 = v40;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v20 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10000AAA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AAE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A584(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AB34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AB6C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, *(a1 + 40));
}

uint64_t sub_10000ABA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AC04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000AC5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003514(a2, a3);
  sub_10000AF2C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void *sub_10000ACB0(void *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    return _swift_slowDealloc(*result, *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)), *(v1 + 80) | 7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetpackLoader.LoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JetpackLoader.LoadError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10000AE64);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000AEB4()
{
  result = qword_100060550;
  if (!qword_100060550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060550);
  }

  return result;
}

uint64_t sub_10000AF54()
{

  return sub_100003514(v0, v1);
}

uint64_t sub_10000AF7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_100044DAC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_10000B024()
{
  sub_100044E3C();
  sub_100044E4C(0);
  return sub_100044E5C();
}

Swift::Int sub_10000B098()
{
  sub_100044E3C();
  sub_100044E4C(0);
  return sub_100044E5C();
}

uint64_t sub_10000B0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000AF7C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10000B124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000AFF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000B150(uint64_t a1)
{
  v2 = sub_10000B47C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B18C(uint64_t a1)
{
  v2 = sub_10000B47C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000B1C8(void *a1)
{
  v2 = sub_100003514(&qword_100060568, &qword_100046B30);
  v3 = sub_1000061E8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100004454(a1, a1[3]);
  sub_10000B47C();
  sub_100044E7C();
  sub_100044D7C();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_10000B2EC(uint64_t *a1)
{
  v3 = sub_100003514(&qword_100060558, &qword_100046B28);
  v4 = sub_1000061E8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_100004454(a1, a1[3]);
  sub_10000B47C();
  sub_100044E6C();
  if (!v1)
  {
    v12 = sub_100044D3C();
    (*(v6 + 8))(v10, v3);
  }

  sub_100004408(a1);
  return v12;
}

uint64_t sub_10000B434@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10000B2EC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10000B47C()
{
  result = qword_100060560;
  if (!qword_100060560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060560);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetpackMetadata.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for JetpackMetadata.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10000B5C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10000B604()
{
  result = qword_100060570;
  if (!qword_100060570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060570);
  }

  return result;
}

unint64_t sub_10000B65C()
{
  result = qword_100060578;
  if (!qword_100060578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060578);
  }

  return result;
}

unint64_t sub_10000B6B4()
{
  result = qword_100060580;
  if (!qword_100060580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060580);
  }

  return result;
}

uint64_t sub_10000B708(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v42 = a1;
  v43 = sub_10004461C();
  v5 = sub_1000061E8(v43);
  v41 = v6;
  v44 = *(v7 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v9;
  v40 = sub_100043B7C();
  v10 = sub_1000061E8(v40);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003514(&qword_100060700, &qword_100046D28);
  sub_1000061E8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_10000AF08();
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  v23 = sub_10004491C();
  sub_1000445DC();

  v24 = sub_1000445FC();
  (*(v17 + 8))(v22, v15);
  v25 = v40;
  (*(v12 + 16))(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v40);
  v26 = v41;
  v27 = v9;
  v28 = v43;
  (*(v41 + 16))(v27, a2, v43);
  v29 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v30 = v26;
  v31 = (v14 + *(v26 + 80) + v29) & ~*(v26 + 80);
  v32 = (v44 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v24;
  *(v33 + 24) = 1;
  *(v33 + 32) = v45;
  (*(v12 + 32))(v33 + v29, v38, v25);
  (*(v30 + 32))(v33 + v31, v39, v28);
  v34 = v46;
  v35 = v47;
  *(v33 + v32) = v46;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v36 = v34;

  return sub_100038260(&unk_100046D38, v33);
}

uint64_t sub_10000BA30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 97) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = async function pointer to Promise.then()[1];
  v10 = swift_task_alloc();
  *(v8 + 64) = v10;
  *v10 = v8;
  v10[1] = sub_10000BADC;

  return Promise.then()(v8 + 96);
}

uint64_t sub_10000BADC()
{
  sub_10000EAD4();
  v2 = *(*v1 + 64);
  v3 = *v1;
  sub_10000EAE0();
  *v4 = v3;

  if (v0)
  {

    v5 = sub_10000BDB8;
  }

  else
  {
    v5 = sub_10000BBE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000BBE8()
{
  sub_10000EAD4();
  v1 = *(v0 + 97);
  if (*(v0 + 96) != 2)
  {
    v1 = *(v0 + 96);
  }

  v2 = *(v0 + 24);
  *(v0 + 72) = sub_10000BEA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1, *(v0 + 56));
  v3 = async function pointer to Promise.then()[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v5 = sub_10000EAAC(v4);

  return Promise.then()(v5);
}

uint64_t sub_10000BC88()
{
  sub_10000EAD4();
  v2 = *(*v1 + 80);
  v3 = *v1;
  sub_10000EAE0();
  *v4 = v3;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000BE48, 0, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10000BDB8()
{
  sub_10000EAD4();
  v1 = *(v0 + 24);
  *(v0 + 72) = sub_10000BEA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 97), *(v0 + 56));
  v2 = async function pointer to Promise.then()[1];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v4 = sub_10000EAAC(v3);

  return Promise.then()(v4);
}

uint64_t sub_10000BE48()
{
  sub_10000EAD4();
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_10000BEA8(void (*a1)(uint64_t *, id, uint64_t), uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v123 = a5;
  v128 = a4;
  v106 = a3;
  v125 = a2;
  v126 = a1;
  v6 = sub_100003514(&qword_100060650, &qword_100046C88);
  v7 = sub_1000061E8(v6);
  v119 = v8;
  v120 = v7;
  v10 = *(v9 + 64);
  sub_10000AF08();
  __chkstk_darwin(v11);
  sub_10000AF20();
  v118 = v12;
  v13 = sub_100003514(&qword_100060658, &qword_100046C90);
  v14 = sub_1000061E8(v13);
  v116 = v15;
  v117 = v14;
  v17 = *(v16 + 64);
  sub_10000AF08();
  __chkstk_darwin(v18);
  sub_10000AF20();
  sub_10000AF14(v19);
  v114 = sub_100003514(&qword_100060660, &unk_100046C98);
  sub_1000061E8(v114);
  v113 = v20;
  v22 = *(v21 + 64);
  sub_10000AF08();
  __chkstk_darwin(v23);
  sub_10000AF20();
  sub_10000AF14(v24);
  v109 = sub_10004408C();
  v25 = sub_1000061E8(v109);
  v108 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_10000AF14(v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = sub_100003514(&qword_100060478, &qword_100046960);
  sub_1000061E8(v124);
  v111 = v30;
  v32 = *(v31 + 64);
  sub_10000AF08();
  __chkstk_darwin(v33);
  sub_10000AF20();
  sub_10000AF14(v34);
  v103 = sub_100003514(&qword_100060480, &qword_100046968);
  sub_1000061E8(v103);
  v102 = v35;
  v37 = *(v36 + 64);
  sub_10000AF08();
  __chkstk_darwin(v38);
  sub_10000AF20();
  sub_10000AF14(v39);
  v40 = *(*(sub_100003514(&qword_100060488, &unk_100046970) - 8) + 64);
  sub_10000AF08();
  __chkstk_darwin(v41);
  v43 = v99 - v42;
  v44 = sub_100043B7C();
  v45 = sub_1000061E8(v44);
  v130 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_10000AF14(v99 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __chkstk_darwin(v50);
  v127 = v99 - v52;
  v104 = v53;
  __chkstk_darwin(v51);
  v129 = v99 - v54;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v55 = sub_100043DBC();
  v122 = sub_1000060A4(v55, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v56 = sub_100043D4C();
  sub_10000EA9C(v56);
  v58 = *(v57 + 72);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  *(swift_allocObject() + 16) = xmmword_100046C50;
  v132 = type metadata accessor for JetpackV2Loader();
  v131 = v5;
  v121 = v5;

  v61 = AMSLogKey();
  if (v61)
  {
    v62 = v61;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(&v131);
  sub_100043CFC();
  v132 = v44;
  v63 = sub_1000049E0(&v131);
  v64 = *(v130 + 16);
  v64(v63, v126, v44);
  sub_100043D0C();
  sub_10000AC5C(&v131, &qword_100061D00, &qword_1000465F0);
  sub_100043CFC();
  v132 = &type metadata for Bool;
  LOBYTE(v131) = v128 & 1;
  sub_100043D0C();
  sub_10000AC5C(&v131, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_10000477C(0, &qword_100060490, JSVirtualMachine_ptr);
  sub_1000443CC();
  sub_10004462C();
  v65 = v131;
  if (qword_10005FF00 != -1)
  {
    swift_once();
  }

  v66 = sub_1000060A4(v44, qword_100060368);
  v67 = v129;
  v64(v129, v66, v44);
  sub_100007DEC(v43);
  if (sub_1000046E4(v43, 1, v44) == 1)
  {
    sub_10000AC5C(v43, &qword_100060488, &unk_100046970);
    sub_100003514(&qword_100060498, "xV");
    sub_10000DD94();
    swift_allocError();
    *v68 = 1;
    v69 = sub_1000447AC();

    (*(v130 + 8))(v67, v44);
  }

  else
  {
    v70 = *(v130 + 32);
    v99[1] = v130 + 32;
    v100 = v70;
    v70(v127, v43, v44);
    v71 = v125;
    v72 = v106;
    v122 = sub_1000304EC(v125, v106);
    v123 = sub_10003045C(v71, v72);
    v73 = v101;
    v74 = v126;
    sub_10004486C();
    v75 = v110;
    sub_10004431C();
    sub_10000AAE4(&qword_1000604A8, &qword_100060480, &qword_100046968);
    v106 = v65;
    v76 = v103;
    v77 = sub_10004429C();
    v99[0] = v77;
    v111 = *(v111 + 8);
    (v111)(v75, v124);
    (*(v102 + 8))(v73, v76);
    v134 = v77;
    v78 = v107;
    v64(v107, v74, v44);
    sub_10000A5CC();
    sub_100044BFC();
    sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
    v79 = v108;
    v80 = *(v108 + 104);
    v126 = v64;
    v81 = v105;
    v82 = v109;
    v80(v105, enum case for DispatchQoS.QoSClass.default(_:), v109);
    v83 = sub_100044A8C();
    (*(v79 + 8))(v81, v82);
    sub_10004433C();

    sub_1000072CC(&v131);
    sub_100003514(&qword_1000604C0, &qword_100046980);
    v109 = &protocol conformance descriptor for MapPipelineTask<A, B>;
    sub_10000AAE4(&qword_1000604C8, &qword_1000604C0, &qword_100046980);
    v84 = sub_10004429C();
    (v111)(v75, v124);

    v131 = v84;
    LOBYTE(v72) = sub_100008A70();
    v126(v78, v127, v44);
    v85 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v86 = v85 + v104;
    v87 = swift_allocObject();
    v100(v87 + v85, v78, v44);
    *(v87 + v86) = v72 & 1;
    sub_10004410C();
    v88 = v112;
    sub_1000442EC();
    v89 = sub_10004429C();
    (*(v113 + 8))(v88, v114);

    v131 = v89;
    v90 = v115;
    sub_1000442DC();
    sub_100003514(&qword_100060670, &unk_100046CA8);
    sub_10000AAE4(&qword_100060678, &qword_100060670, &unk_100046CA8);
    v91 = sub_10004429C();
    (*(v116 + 8))(v90, v117);

    v131 = v91;
    v92 = swift_allocObject();
    v93 = v106;
    *(v92 + 16) = v106;
    v126 = v93;
    sub_100003514(&qword_1000604F8, &qword_1000469A0);
    v94 = v118;
    sub_1000442FC();
    sub_100003514(&qword_100060680, &unk_100046CB8);
    sub_10000AAE4(&qword_100060688, &qword_100060680, &unk_100046CB8);
    v124 = sub_10004429C();
    (*(v119 + 8))(v94, v120);
    LOBYTE(v87) = v128;
    sub_10000CD90(v128 & 1, v91);
    sub_10000D56C(v87 & 1, v91, v125);
    sub_10004441C();
    sub_100003514(&qword_100060528, &unk_1000469C0);
    sub_10000AAE4(&qword_100060530, &qword_100060528, &unk_1000469C0);
    sub_10004477C();
    sub_100003514(&qword_100060690, &qword_100046CC8);
    sub_10000AAE4(&qword_100060698, &qword_100060690, &qword_100046CC8);
    sub_10004477C();

    v95 = swift_allocObject();
    v96 = v121;
    *(v95 + 16) = sub_10000DF44;
    *(v95 + 24) = v96;
    v132 = sub_10004448C();
    v133 = &protocol witness table for SyncTaskScheduler;
    sub_1000049E0(&v131);

    sub_10004447C();
    v69 = sub_10004476C();

    v97 = *(v130 + 8);
    v97(v127, v44);
    v97(v129, v44);
    sub_100004408(&v131);
  }

  return v69;
}

uint64_t sub_10000CD90(char a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060458, &qword_100046940);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v32 = &v31 - v6;
  v7 = sub_10004417C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003514(&qword_1000606E8, &qword_100046D10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  if (a1)
  {
    sub_100003514(&qword_100060528, &unk_1000469C0);
    v34 = sub_1000448FC();
    return sub_1000447BC();
  }

  else
  {
    v31 = v4;
    v34 = a2;
    if (qword_10005FF18 != -1)
    {
      swift_once();
    }

    v17 = sub_1000060A4(v7, qword_100060588);
    sub_10000DD94();
    v18 = swift_allocError();
    *v19 = 3;
    (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    (*(v8 + 32))(v22 + v20, v10, v7);
    *(v22 + v21) = v18;
    sub_10004410C();
    sub_1000442FC();
    sub_100003514(&qword_100060680, &unk_100046CB8);
    sub_10000AAE4(&qword_100060688, &qword_100060680, &unk_100046CB8);
    v23 = sub_10004429C();
    (*(v12 + 8))(v15, v11);
    v34 = v23;
    sub_100003514(&qword_1000606F0, &qword_100046D18);
    sub_100003514(&qword_100060050, &qword_1000469B0);
    sub_10000AAE4(&qword_1000606F8, &qword_1000606F0, &qword_100046D18);
    v24 = sub_10004428C();

    v34 = v24;
    v25 = v32;
    sub_1000442DC();
    sub_100003514(&qword_100060518, &qword_1000469B8);
    sub_10000AAE4(&qword_100060520, &qword_100060518, &qword_1000469B8);
    sub_10004429C();
    (*(v33 + 8))(v25, v31);

    v26 = sub_10004441C();

    v27 = sub_1000448FC();
    sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
    v28 = sub_100044A7C();
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    v16 = sub_10000E34C(sub_10000AADC, v29, v28, v26);
  }

  return v16;
}

uint64_t sub_10000D324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003514(&qword_100060538, &qword_100046D20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_10004420C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AC04(*a1, *(a1 + 8));
  result = sub_1000441DC();
  if (!v2)
  {
    sub_1000441CC();
    v15 = sub_10004437C();
    if (sub_1000046E4(v8, 1, v15) == 1)
    {
      sub_10000AC5C(v8, &qword_100060538, &qword_100046D20);
    }

    else
    {
      v16 = sub_10004436C();
      (*(*(v15 - 8) + 8))(v8, v15);
      if (v16)
      {
        result = (*(v10 + 8))(v13, v9);
        *a2 = v16;
        return result;
      }
    }

    sub_10000DD94();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_10000D56C(char a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_100003514(&qword_1000606B0, &qword_100046CE0);
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_10004461C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100003514(&qword_1000606B8, &qword_100046CE8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  if (a1)
  {
    *&v27 = a2;
    (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v9);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = swift_allocObject();
    (*(v10 + 32))(v18 + v17, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    sub_10004410C();
    sub_100003514(&qword_1000606C0, &qword_100046CF0);
    sub_1000442EC();
    sub_100003514(&qword_100060680, &unk_100046CB8);
    sub_10000AAE4(&qword_100060688, &qword_100060680, &unk_100046CB8);
    v19 = sub_10004429C();
    (*(v13 + 8))(v16, v12);
    *&v27 = v19;
    sub_1000442DC();
    sub_100003514(&qword_1000606C8, &qword_100046CF8);
    sub_10000AAE4(&qword_1000606D0, &qword_1000606C8, &qword_100046CF8);
    v20 = sub_10004429C();
    (*(v24 + 8))(v8, v25);

    *&v27 = v20;
    sub_100003514(&qword_1000606D8, &unk_100046D00);
    sub_100003514(&qword_1000606A8, &unk_100047000);
    sub_10000AAE4(&qword_1000606E0, &qword_1000606D8, &unk_100046D00);
    sub_10004428C();

    v21 = sub_10004441C();
  }

  else
  {
    sub_100003514(&qword_100060690, &qword_100046CC8);
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    return sub_1000447BC();
  }

  return v21;
}

uint64_t sub_10000D9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10000ABA0(a1, v25);
  v26 = a2;
  sub_10000DFD4(v25, &v20, &qword_1000606A0, &unk_100046CD0);

  sub_10000DFBC(&v20, v23);
  sub_10000DFD4(v25, &v20, &qword_1000606A0, &unk_100046CD0);
  v9 = v22;
  sub_100004408(&v20);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v10 = sub_100043DBC();
  sub_1000060A4(v10, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v11 = *(sub_100043D4C() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_100046830;
  v21 = type metadata accessor for JetpackV2Loader();
  *&v20 = a4;

  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(&v20);
  sub_100043CFC();
  v16 = v24;
  v17 = sub_100004454(v23, v24);
  v21 = v16;
  v18 = sub_1000049E0(&v20);
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  sub_100043D0C();
  sub_10000AC5C(&v20, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_10000AC5C(v25, &qword_1000606A0, &unk_100046CD0);
  sub_10000ABA0(v23, a5);
  sub_10000DFD4(a3, a5 + 48, &qword_1000606A8, &unk_100047000);
  *(a5 + 40) = v9;
  return sub_100004408(v23);
}

uint64_t sub_10000DD30()
{
  v0 = sub_10004417C();
  sub_1000084CC(v0, qword_100060588);
  sub_1000060A4(v0, qword_100060588);
  return sub_10004418C();
}

unint64_t sub_10000DD94()
{
  result = qword_100060668;
  if (!qword_100060668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060668);
  }

  return result;
}

uint64_t sub_10000DDE8()
{
  v1 = sub_100043B7C();
  sub_10000AF2C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10000DE68(uint64_t a1)
{
  v3 = sub_100043B7C();
  sub_10000EA9C(v3);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1000383C0(a1, v6, v7);
}

uint64_t sub_10000DEF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DF4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DF84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, *(a1 + 40), a1 + 48);
}

uint64_t sub_10000DFBC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000DFD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003514(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E03C()
{
  v1 = sub_10004461C();
  sub_10000AF2C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E0B8(uint64_t a1)
{
  v3 = *(sub_10004461C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000388A4(a1, v4);
}

uint64_t sub_10000E128()
{
  v1 = sub_10004417C();
  sub_10000AF2C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000E1B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10004417C();
  sub_10000EA9C(v3);
  v6 = *(v1 + ((*(v5 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000386D4(a1);
}

uint64_t sub_10000E28C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v4);
  sub_1000447EC();
}

uint64_t sub_10000E2E0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MetricsContext.overlay.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10000E30C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E34C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v12[3] = sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
  v12[4] = &protocol witness table for OS_dispatch_queue;
  v12[0] = a3;
  v8 = a3;
  v9 = sub_10004482C();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  swift_retain_n();

  sub_10004478C();

  sub_100004408(v12);
  return v9;
}

uint64_t sub_10000E484()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E4D0()
{
  v1 = sub_100043B7C();
  sub_1000061E8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_10004461C();
  sub_1000061E8(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + 16);

  v19 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  v20 = *(v0 + v17);

  return _swift_deallocObject(v0, v17 + 8, v15 | 7);
}

uint64_t sub_10000E634(uint64_t a1)
{
  v3 = v2;
  v5 = sub_100043B7C();
  sub_10000EA9C(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_10004461C();
  sub_10000EA9C(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = *(v1 + v14);
  v19 = *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_10000E7D0;

  return sub_10000BA30(a1, v15, v16, v17, v1 + v7, v1 + v12, v18, v19);
}

uint64_t sub_10000E7D0()
{
  sub_10000EAD4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000EAE0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t getEnumTagSinglePayload for JetpackV2Loader.LoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JetpackV2Loader.LoadError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000EA0CLL);
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

unint64_t sub_10000EA48()
{
  result = qword_100060708;
  if (!qword_100060708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060708);
  }

  return result;
}

uint64_t sub_10000EAF0()
{
  v1 = v0[4];
  sub_100004454(v0, v0[3]);
  v2 = *(v1 + 8);
  v3 = sub_10000F2AC();
  if (v4(v3))
  {
    return 0x73656E755469;
  }

  v6 = v0[4];
  sub_100004454(v0, v0[3]);
  v7 = *(v6 + 16);
  v8 = sub_10000F2AC();
  if (v9(v8))
  {
    return 0x64756F6C4369;
  }

  v10 = v0[4];
  sub_100004454(v0, v0[3]);
  v11 = *(v10 + 24);
  v12 = sub_10000F2AC();
  if (v13(v12))
  {
    return 1936548969;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

id sub_10000EBEC(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = result;
  sub_10000F1E8();
  v8 = *(v7 + 32);
  v9 = sub_10000F20C();
  result = [v4 valueWithBool:v10(v9) & 1 inContext:a1];
  if (!result)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_100044AEC();
  sub_10000F1E8();
  v12 = *(v11 + 40);
  v13 = sub_10000F20C();
  v14(v13);
  if (v15)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v16, v17, v18, v19, v20, v21, v22, v23, v127);
    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F1E8();
  v25 = *(v24 + 48);
  v26 = sub_10000F20C();
  v27(v26);
  if (v28)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v29, v30, v31, v32, v33, v34, v35, v36, v127);
    if (!result)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F1E8();
  v38 = *(v37 + 56);
  v39 = sub_10000F20C();
  v41 = v40(v39);
  if (v41)
  {
    v42 = v41;
    v43 = [v41 stringValue];

    sub_10004494C();
    sub_10000F0F4();
    sub_10000F244();

    result = sub_10000F228(v44, v45, v46, v47, v48, v49, v50, v51, v127);
    if (!result)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F1E8();
  v53 = *(v52 + 64);
  v54 = sub_10000F20C();
  v55(v54);
  if (v56)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v57, v58, v59, v60, v61, v62, v63, v64, v127);
    if (!result)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F1E8();
  v66 = *(v65 + 72);
  v67 = sub_10000F20C();
  v68(v67);
  if (v69)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v70, v71, v72, v73, v74, v75, v76, v77, v127);
    if (!result)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    sub_10000F21C();

    sub_10000F2E0();
  }

  sub_10000F1E8();
  v79 = *(v78 + 80);
  v80 = sub_10000F20C();
  v81(v80);
  if (v82)
  {
    sub_10000F260();
    sub_10000F244();

    result = sub_10000F228(v83, v84, v85, v86, v87, v88, v89, v90, v127);
    if (!result)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_10000F21C();

    sub_100044AEC();
  }

  sub_10000F0F4();
  v128 = sub_10000EAF0();
  v91 = a1;
  result = sub_10000F228(v91, v92, v93, v94, v95, v96, v97, v98, v128);
  if (!result)
  {
    goto LABEL_33;
  }

  sub_100044AEC();
  v99 = v2[3];
  v100 = v2[4];
  sub_100004454(v2, v99);
  v101 = (*(v100 + 88))(v99, v100);
  if (v102)
  {
    v129 = v101;
    v103 = v91;

    result = sub_10000F228(v104, v105, v106, v107, v108, v109, v110, v111, v129);
    if (!result)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_10000F2E0();
  }

  sub_10000F2BC();
  v113 = *(v112 + 104);
  v114 = sub_10000F29C();
  v116 = v115(v114);
  if (v116 == 2)
  {
LABEL_28:
    sub_10000F2BC();
    v118 = *(v117 + 112);
    v119 = sub_10000F29C();
    v121 = v120(v119);
    result = sub_10000F27C(v121);
    if (result)
    {
      sub_100044AEC();
      sub_10000F2BC();
      v123 = *(v122 + 120);
      v124 = sub_10000F29C();
      v126 = v125(v124);
      result = sub_10000F27C(v126);
      if (result)
      {
        sub_100044AEC();
        return v6;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_10000F27C(v116);
  if (result)
  {
    sub_100044AEC();
    goto LABEL_28;
  }

LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_10000F0F4()
{
  result = qword_100060800;
  if (!qword_100060800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100060800);
  }

  return result;
}

__n128 sub_10000F138(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000F14C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10000F18C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_10000F228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100028F50(&a9, v9);
}

id sub_10000F244()
{

  return v0;
}

unint64_t sub_10000F260()
{

  return sub_10000F0F4();
}

id sub_10000F27C(char a1)
{
  v5 = *(v3 + 1896);

  return [v1 v5];
}

uint64_t sub_10000F2E0()
{

  return sub_100044AEC();
}

id sub_10000F300(void *a1)
{
  if ([a1 isUndefined])
  {
    return 0;
  }

  v1 = sub_100044ADC();
  v2 = sub_100044ACC();
  v4 = v3;

  if (!v4)
  {
    return 0;
  }

  v5 = sub_100044ADC();
  v6 = sub_100044ABC();

  if (v6 == 2)
  {

    return 0;
  }

  v8 = v2 == 0x73656E755469 && v4 == 0xE600000000000000;
  if (v8 || (sub_100044DAC() & 1) != 0)
  {

    v9 = v6 & 1;
  }

  else
  {
    v27 = v2 == 0x64756F6C4369 && v4 == 0xE600000000000000;
    if (v27 || (sub_100044DAC() & 1) != 0)
    {

      v9 = 2;
    }

    else
    {
      if (v2 == 1936548969 && v4 == 0xE400000000000000)
      {
      }

      else
      {
        v29 = sub_100044DAC();

        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      v9 = 3;
    }
  }

  v10 = [objc_allocWithZone(NSNumberFormatter) init];
  v11 = sub_100044ADC();
  sub_100044ACC();
  v13 = v12;

  if (v13)
  {
    v14 = sub_10004491C();

    v15 = [v10 numberFromString:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100044ADC();
  v17 = sub_100044ACC();
  v19 = v18;

  v20 = sub_100044ADC();
  v21 = sub_100044ACC();
  v23 = v22;

  v24 = sub_10000200C(v9);
  v26 = sub_100001F44(v24, v25, v15, v17, v19, v21, v23);

  return v26;
}

id sub_10000F5EC(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC16UtilityExtension15JSAccountObject_dynamicAccountsStore] = a1;
  *&v2[OBJC_IVAR____TtC16UtilityExtension15JSAccountObject_clientInfo] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for JSAccountObject();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10000F67C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16UtilityExtension15JSAccountObject_dynamicAccountsStore);
  v2 = DynamicAccountsStore.account.getter();
  v3 = sub_100010960();

  return v3;
}

uint64_t sub_10000F700()
{
  v1 = objc_opt_self();
  v2 = [*(v0 + OBJC_IVAR____TtC16UtilityExtension15JSAccountObject_clientInfo) accountMediaType];
  v3 = [v1 ams_sharedAccountStoreForMediaType:v2];

  v4 = [v3 ams_localiTunesAccount];
  v5 = sub_100010960();

  return v5;
}

uint64_t sub_10000F83C()
{
  v0 = sub_10000F870();
  v1 = sub_100010960();

  return v1;
}

uint64_t sub_10000F91C(SEL *a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 *a1];

  v4 = sub_100010960();
  return v4;
}

uint64_t sub_10000F9D0()
{
  v0 = sub_10000FA04();
  v1 = sub_100010960();

  return v1;
}

id sub_10000FA10(SEL *a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 *a1];

  return v3;
}

uint64_t sub_10000FA70()
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v0 = sub_100044B1C();
  v1 = sub_100044B2C();

  return v1;
}

char *sub_10000FAFC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v72 = a3;
  v6 = sub_1000448BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000444AC();
  v11 = sub_10004449C();
  if (v11)
  {
    v12 = v11;
    v63 = sub_10000F870();
    v61 = sub_10000FA04();
    v13 = [objc_opt_self() ams_sharedAccountStore];
    v14 = sub_100044ACC();
    v64 = v15;
    if (v15)
    {
      v59 = v14;
      v60 = v13;
      v55 = a1;
      v56 = a4;
      v57 = v10;
      v49 = v7;
      v50 = v6;
      v58 = v12;
      if (qword_10005FF30 != -1)
      {
        swift_once();
      }

      v16 = sub_100043DBC();
      v17 = sub_1000060A4(v16, qword_100065200);
      v18 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
      v19 = *(sub_100043D4C() - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v52 = 3 * v20;
      v53 = v18;
      v22 = swift_allocObject();
      v51 = xmmword_100046830;
      *(v22 + 16) = xmmword_100046830;
      v23 = AMSSetLogKeyIfNeeded();
      sub_10004494C();

      sub_100043D1C();

      sub_100043CFC();
      __src[3] = &type metadata for String;
      __src[0] = v59;
      __src[1] = v64;

      sub_100043D0C();
      sub_100006100(__src);
      v54 = v17;
      sub_100043D9C();

      v24 = v60;
      v25 = sub_10000F300(v72);
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v28 = v63;
        if (!v63)
        {
          v28 = v61;
          if (!v61)
          {

            sub_1000446CC();
            sub_1000066BC();
            swift_allocError();
            sub_10004467C();
            swift_willThrow();

            return v24;
          }
        }

        v27 = v28;
      }

      v72 = (2 * v20);
      *(swift_allocObject() + 16) = v51;
      v29 = v26;
      v30 = AMSSetLogKeyIfNeeded();
      sub_10004494C();

      sub_100043D1C();

      sub_100043CFC();
      v31 = sub_10000477C(0, &qword_100061EF0, ACAccount_ptr);
      __src[3] = v31;
      __src[0] = v27;
      v32 = v27;
      sub_100043D3C();
      sub_100006100(__src);
      sub_100043D9C();

      v33 = objc_opt_self();
      v34 = v59;
      v35 = v64;
      v36 = sub_10004491C();
      v37 = [v33 acknowledgementNeededForPrivacyIdentifier:v36 account:v32];

      __src[3] = v31;
      __src[4] = &off_100059928;
      __src[0] = v32;
      v38 = sub_100010C08(v32);
      if (v38 && (v39 = sub_100030774(v34, v35, v38), , v39))
      {
        v40 = [v39 integerValue];

        v41 = 0;
        v32 = v61;
      }

      else
      {

        v40 = 0;
        v41 = 1;
      }

      v42 = v62;
      v43 = v57;
      v44 = v56;

      sub_10000ABA0(__src, v66);
      v67 = v34;
      v68 = v35;
      v69 = v40;
      v70 = v41;
      v71 = v37;
      sub_100004408(__src);
      sub_100010C88(v66, __src);
      v45 = swift_allocObject();
      memcpy(v45 + 2, __src, 0x42uLL);
      v46 = v58;
      v45[11] = v44;
      v45[12] = v46;
      v24 = v55;
      v47 = v44;

      sub_10004489C();
      if (v42)
      {
        sub_100010D54(v66);
      }

      else
      {
        v24 = sub_1000448AC();

        (*(v49 + 8))(v43, v50);
        sub_100010D54(v66);
      }
    }

    else
    {
      v24 = "hout active JS worker thread";
      sub_1000446CC();
      sub_1000066BC();
      swift_allocError();
      sub_10004467C();
      swift_willThrow();
    }
  }

  else
  {
    v24 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v24;
}

uint64_t sub_100010320(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v18 = a6;
  v10 = sub_1000441BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100003514(&unk_100060750, &qword_100046E88);
  sub_100010C88(a4, v19);
  sub_1000447BC();
  (*(v11 + 16))(&v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  (*(v11 + 32))(v14 + v13, &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v19[3] = sub_1000444AC();
  v19[4] = &protocol witness table for RunLoopWorkerThread;
  v19[0] = v18;
  v15 = a5;
  v16 = a1;

  sub_10004478C();

  return sub_100004408(v19);
}

void sub_100010518(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v6 = sub_100043DBC();
  sub_1000060A4(v6, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v7 = *(sub_100043D4C() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = 3 * *(v7 + 72);
  *(swift_allocObject() + 16) = xmmword_100046830;
  v17 = type metadata accessor for JSAccountObject();
  v16[0] = a2;
  a2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v16);
  sub_100043CFC();
  v17 = &type metadata for JSAccountPrivacyAcknowledgementState;
  v16[0] = swift_allocObject();
  sub_100010C88(a1, v16[0] + 16);
  sub_100043D0C();
  sub_100006100(v16);
  sub_100043D9C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000465C0;
  v12 = sub_100010F88(a4);
  *(v11 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v11 + 32) = v12;
  v13 = sub_1000441AC();
}

uint64_t sub_100010960()
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v0 = sub_100044B1C();
  v1 = sub_100044B2C();

  return v1;
}

id sub_1000109D8(void *a1, void *a2)
{
  if (a2)
  {
    v7[3] = sub_10000477C(0, &qword_100061EF0, ACAccount_ptr);
    v7[4] = &off_100059928;
    v7[0] = a2;
    v4 = a2;
    v5 = sub_10000EBEC(a1);
    sub_100010B94(v7);
    return v5;
  }

  result = [objc_opt_self() valueWithUndefinedInContext:a1];
  v5 = result;
  if (result)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id sub_100010AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAccountObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010C08(void *a1)
{
  v1 = [a1 ams_privacyAcknowledgement];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10000477C(0, &qword_100060040, NSNumber_ptr);
  v3 = sub_1000448EC();

  return v3;
}

uint64_t sub_100010CE4()
{
  sub_100004408((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100010DA8()
{
  v1 = sub_1000441BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100010E80(uint64_t a1)
{
  v3 = *(sub_1000441BC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100010518(a1, v5, v1 + v4, v6);
}

uint64_t sub_100010F20()
{
  sub_100004408((v0 + 16));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 82, 7);
}

id sub_100010F88(void *a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  sub_10000EBEC(a1);
  sub_100044AEC();
  sub_10000F0F4();
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v11 = &type metadata for String;
  v9 = v7;
  v10 = v6;

  v8 = a1;
  result = sub_100028F50(&v9, a1);
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100044AEC();
  if (*(v1 + 64))
  {
    goto LABEL_6;
  }

  result = [v3 valueWithDouble:v8 inContext:{*(v1 + 56), v9, v10}];
  if (result)
  {
    sub_100044AEC();
LABEL_6:
    result = [v3 valueWithBool:*(v1 + 65) inContext:{v8, v9, v10}];
    if (result)
    {
      sub_100044AEC();
      return v5;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100011134(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100011174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000111DC()
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v0 = sub_100044B1C();
  v1 = sub_100044B2C();

  return v1;
}

uint64_t sub_100011244()
{
  sub_1000444AC();
  v0 = sub_10004449C();
  sub_1000446CC();
  sub_1000066BC();
  swift_allocError();
  sub_10004467C();
  if (!v0)
  {
    return swift_willThrow();
  }

  swift_willThrow();
}

const char *sub_1000113A4(void *a1, void *a2, void *a3)
{
  v7 = sub_1000448BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000444AC();
  v12 = sub_10004449C();
  if (v12)
  {
    v13 = v12;
    v41 = v3;
    v37 = a1;
    v38 = v11;
    v34 = v8;
    v35 = v7;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v14 = sub_100043DBC();
    v15 = sub_1000060A4(v14, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    v16 = *(sub_100043D4C() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_100046830;
    Object = type metadata accessor for JSAppQueryObject();
    v39[0] = a2;
    v36 = a2;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v39);
    sub_100043CFC();
    Object = sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v39[0] = a3;
    v21 = a3;
    sub_100043D0C();
    sub_100006100(v39);
    sub_100043D9C();

    v22 = v21;
    v23 = v41;
    sub_1000029CC(v22);
    if (!v23)
    {
      if (v24)
      {

        sub_10000477C(0, &qword_100060810, ASDAppQuery_ptr);
        v26 = sub_100011850();
        v27 = swift_allocObject();
        v28 = v36;
        v27[2] = v26;
        v27[3] = v28;
        v27[4] = v13;
        v29 = v28;
        v30 = v37;
        v31 = v26;

        v32 = v38;
        sub_10004489C();
        v15 = sub_1000448AC();

        (*(v34 + 8))(v32, v35);
        return v15;
      }

      v15 = sub_1000446CC();
      sub_1000066BC();
      swift_allocError();
      sub_10004467C();
      swift_willThrow();
    }
  }

  else
  {
    v15 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v15;
}

id sub_100011850()
{
  isa = sub_100044A0C().super.isa;

  v1 = [swift_getObjCClassFromMetadata() queryForBundleIDs:isa];

  return v1;
}

uint64_t sub_1000118BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v38 = a6;
  v35 = a5;
  v36 = a3;
  v32 = a1;
  v9 = sub_1000441BC();
  v10 = *(v9 - 8);
  v34 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003514(&qword_100060818, &unk_100046F68);
  v13 = sub_10004482C();
  v41 = sub_100013410;
  v42 = v13;
  v37 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011BD4;
  v40 = &unk_10005A208;
  v14 = _Block_copy(aBlock);

  [a4 executeQueryWithResultHandler:v14];
  _Block_release(v14);
  v31 = *(v10 + 16);
  v31(v12, a2, v9);
  v15 = *(v10 + 80);
  v16 = v10;
  v17 = v34;
  v18 = swift_allocObject();
  v33 = v18;
  v19 = v35;
  *(v18 + 16) = v35;
  *(v18 + 24) = a1;
  v20 = *(v16 + 32);
  v20(v18 + ((v15 + 32) & ~v15), v12, v9);
  v31(v12, v36, v9);
  v21 = (v15 + 24) & ~v15;
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v19;
  *(v23 + 16) = v19;
  v20(v23 + v21, v12, v9);
  v25 = v32;
  *(v23 + v22) = v32;
  v40 = sub_1000444AC();
  v41 = &protocol witness table for RunLoopWorkerThread;
  aBlock[0] = v38;
  v26 = v24;
  v27 = v25;
  v28 = v26;
  v29 = v27;

  sub_10004478C();

  return sub_100004408(aBlock);
}

uint64_t sub_100011BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10000477C(0, &unk_100060830, ASDApp_ptr);
    v4 = sub_100044A1C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_100011CF0()
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v0 = sub_100044B1C();
  v1 = sub_100044B2C();

  return v1;
}

const char *sub_100011D68(void *a1, void *a2, void *a3)
{
  v7 = sub_1000448BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000444AC();
  v12 = sub_10004449C();
  if (v12)
  {
    v13 = v12;
    v41 = v3;
    v37 = a1;
    v38 = v11;
    v34 = v8;
    v35 = v7;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v14 = sub_100043DBC();
    v15 = sub_1000060A4(v14, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    v16 = *(sub_100043D4C() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_100046830;
    Object = type metadata accessor for JSAppQueryObject();
    v39[0] = a2;
    v36 = a2;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v39);
    sub_100043CFC();
    Object = sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v39[0] = a3;
    v21 = a3;
    sub_100043D0C();
    sub_100006100(v39);
    sub_100043D9C();

    v22 = v21;
    v23 = v41;
    v24 = sub_1000029CC(v22);
    if (!v23)
    {
      if (v24)
      {

        sub_10000477C(0, &qword_100060810, ASDAppQuery_ptr);
        v26 = sub_10001221C();
        v27 = swift_allocObject();
        v28 = v36;
        v27[2] = v26;
        v27[3] = v28;
        v27[4] = v13;
        v29 = v28;
        v30 = v37;
        v31 = v26;

        v32 = v38;
        sub_10004489C();
        v15 = sub_1000448AC();

        (*(v34 + 8))(v32, v35);
        return v15;
      }

      v15 = sub_1000446CC();
      sub_1000066BC();
      swift_allocError();
      sub_10004467C();
      swift_willThrow();
    }
  }

  else
  {
    v15 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v15;
}

id sub_10001221C()
{
  sub_10000477C(0, &qword_100060040, NSNumber_ptr);
  isa = sub_100044A0C().super.isa;

  v1 = [swift_getObjCClassFromMetadata() queryForStoreItemIDs:isa];

  return v1;
}

uint64_t sub_1000122A0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v38 = a6;
  v35 = a5;
  v36 = a3;
  v32 = a1;
  v9 = sub_1000441BC();
  v10 = *(v9 - 8);
  v34 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003514(&qword_100060818, &unk_100046F68);
  v13 = sub_10004482C();
  v41 = sub_1000130B4;
  v42 = v13;
  v37 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011BD4;
  v40 = &unk_10005A168;
  v14 = _Block_copy(aBlock);

  [a4 executeQueryWithResultHandler:v14];
  _Block_release(v14);
  v31 = *(v10 + 16);
  v31(v12, a2, v9);
  v15 = *(v10 + 80);
  v16 = v10;
  v17 = v34;
  v18 = swift_allocObject();
  v33 = v18;
  v19 = v35;
  *(v18 + 16) = v35;
  *(v18 + 24) = a1;
  v20 = *(v16 + 32);
  v20(v18 + ((v15 + 32) & ~v15), v12, v9);
  v31(v12, v36, v9);
  v21 = (v15 + 24) & ~v15;
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v19;
  *(v23 + 16) = v19;
  v20(v23 + v21, v12, v9);
  v25 = v32;
  *(v23 + v22) = v32;
  v40 = sub_1000444AC();
  v41 = &protocol witness table for RunLoopWorkerThread;
  aBlock[0] = v38;
  v26 = v24;
  v27 = v25;
  v28 = v26;
  v29 = v27;

  sub_10004478C();

  return sub_100004408(aBlock);
}

void sub_1000125B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    v2 = sub_10004491C();
    swift_getErrorValue();
    sub_100044DDC();
    v3 = sub_10004491C();

    v4 = AMSError();

    sub_1000447CC();
  }

  else if (a1)
  {
    sub_1000447EC();
  }

  else
  {
    v5 = sub_10004491C();
    v6 = AMSError();

    sub_1000447CC();
  }
}

void sub_100012728(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC();
  }

  v5 = sub_100043DBC();
  sub_1000060A4(v5, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100013414();
  v6 = sub_100043D4C();
  sub_10000EA9C(v6);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = 3 * *(v7 + 72);
  *(swift_allocObject() + 16) = xmmword_100046830;
  Object = type metadata accessor for JSAppQueryObject();
  v18[0] = a2;
  a2;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v18);
  sub_100043CFC();
  Object = sub_100003514(&qword_100060828, &qword_100046F78);
  v18[0] = v4;

  sub_100043D0C();
  sub_100006100(v18);
  sub_100043D9C();

  v12 = sub_100003678(a3, v4);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000465C0;
  *(v13 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v13 + 32) = v12;
  v14 = v12;
  v15 = sub_1000441AC();
}

void sub_100012AE0(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v36 = a4;
  v37 = a3;
  v7 = sub_1000446CC();
  v8 = sub_1000061E8(v7);
  v34 = v9;
  v35 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC();
  }

  v14 = sub_100043DBC();
  v38 = sub_1000060A4(v14, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100013414();
  v15 = sub_100043D4C();
  sub_10000EA9C(v15);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v32 = 3 * *(v16 + 72);
  v33 = v4;
  v19 = swift_allocObject();
  v31 = xmmword_100046830;
  *(v19 + 16) = xmmword_100046830;
  Object = type metadata accessor for JSAppQueryObject();
  v42 = Object;
  v41[0] = a2;
  v29 = a2;
  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v41);
  sub_100043CFC();
  swift_getErrorValue();
  v22 = v39;
  v23 = v40;
  v42 = v40;
  v24 = sub_1000049E0(v41);
  (*(*(v23 - 8) + 16))(v24, v22, v23);
  sub_100043D0C();
  sub_100006100(v41);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(a1);
  v26.super.isa = v36;
  isa = sub_1000446AC(v26).super.isa;
  (*(v34 + 8))(v13, v35);
  *(v25 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v25 + 32) = isa;
  v28 = sub_1000441AC();
}

id sub_100012FC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAppQueryObject();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10001301C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAppQueryObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000130D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001310C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013178()
{
  v1 = sub_1000441BC();
  sub_1000061E8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_100013238()
{
  sub_100013414();
  v2 = *(*(sub_1000441BC() - 8) + 80);
  sub_100012728(v0, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1000132A0()
{
  v1 = sub_1000441BC();
  sub_1000061E8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

void sub_10001336C()
{
  sub_100013414();
  v2 = sub_1000441BC();
  sub_10000EA9C(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  sub_100012AE0(v0, *(v1 + 16), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_100013420(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC16UtilityExtension14JSClientObject_clientInfo] = a1;
  v6 = &v5[OBJC_IVAR____TtC16UtilityExtension14JSClientObject_mediaClient];
  *v6 = a2;
  *(v6 + 1) = a3;
  v7 = &v5[OBJC_IVAR____TtC16UtilityExtension14JSClientObject_metricsContext];
  *v7 = a4;
  *(v7 + 1) = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for JSClientObject();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10001353C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16UtilityExtension14JSClientObject_mediaClient);
  v2 = *(v0 + OBJC_IVAR____TtC16UtilityExtension14JSClientObject_mediaClient + 8);

  return v1;
}

id sub_100013618(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_10004491C();

  return v5;
}

uint64_t sub_100013694(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16UtilityExtension14JSClientObject_clientInfo) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10004494C();

  return v4;
}

id sub_100013744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClientObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100013800(uint64_t a1)
{
  v2 = sub_10004472C();
  v3 = sub_1000161BC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v156 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1000446DC();
  v186 = *(v177 - 8);
  v168 = v186;
  v7 = *(v186 + 64);
  __chkstk_darwin(v177);
  sub_1000161A8();
  sub_1000160E4();
  __chkstk_darwin(v8);
  sub_1000160E4();
  __chkstk_darwin(v9);
  v146 = (&v146 - v10);
  v11 = sub_100003514(&qword_100060488, &unk_100046970);
  v12 = sub_1000161BC(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v161 = &v146 - v15;
  v16 = sub_100043B7C();
  v17 = sub_1000061E8(v16);
  v165 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  v163 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004461C();
  v23 = sub_1000061E8(v22);
  v164 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_1000161A8();
  sub_1000160E4();
  __chkstk_darwin(v27);
  v174 = &v146 - v28;
  type metadata accessor for DynamicAccountsStore();
  sub_1000443CC();
  sub_10004462C();
  v29 = v184[0];
  v150 = DynamicAccountsStore.account.getter();
  v175 = v22;
  sub_10004462C();
  sub_10000477C(0, &unk_100061F00, AMSProcessInfo_ptr);
  sub_100016040();
  v169 = v184[0];
  sub_100016040();
  sub_10000477C(0, &qword_100060490, JSVirtualMachine_ptr);
  sub_100016040();
  v154 = v180;
  sub_100016040();
  v172 = v180;
  v176 = v181;
  sub_100016040();
  LODWORD(v152) = v180;
  v147 = v181;
  v166 = v16;
  sub_10004462C();
  type metadata accessor for URLSessionHandler();
  v158 = a1;
  sub_100016040();
  v149 = v180;
  sub_100003514(&qword_1000609B8, &qword_100046FF8);
  v30 = *(v186 + 72);
  v31 = v168;
  v32 = (*(v168 + 80) + 32) & ~*(v168 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100046F90;
  v167 = v32;
  v153 = v33;
  v34 = v33 + v32;
  v171 = (v33 + v32);
  sub_10000ABA0(v184, v33 + v32);
  v35 = *(v31 + 104);
  v36 = v177;
  (v35)(v34, enum case for JSStack.Prerequisite.source(_:), v177);
  v37 = (v34 + v30);
  v38 = objc_allocWithZone(type metadata accessor for JSAccountObject());
  v173 = v29;

  v39 = v169;
  v40 = sub_10000F5EC(v29, v39);
  *v37 = 0x746E756F636361;
  v37[1] = 0xE700000000000000;
  v37[2] = v40;
  v41 = v37;
  v42 = enum case for JSStack.Prerequisite.globalObject(_:);
  LODWORD(v169) = enum case for JSStack.Prerequisite.globalObject(_:);
  v170 = v31 + 104;
  v35(v41);
  v43 = v171;
  v44 = [objc_allocWithZone(type metadata accessor for JSAppQueryObject()) init];
  v45 = sub_10001605C(v44, 0x7972657551707061);
  (v35)(v45, v42, v36);
  v46 = &v43[3 * v30];
  v47 = v43;
  v48 = objc_allocWithZone(type metadata accessor for JSClientObject());
  v49 = v39;
  v148 = v49;
  v50 = v176;

  v51 = sub_100013420(v49, v172, v50, v152, v147);
  *v46 = 0x746E65696C63;
  *(v46 + 1) = 0xE600000000000000;
  *(v46 + 2) = v51;
  v52 = v169;
  (v35)(v46, v169, v36);
  v53 = &v47[4 * v30];
  v54 = [objc_allocWithZone(type metadata accessor for JSDeviceObject()) init];
  *v53 = 0x656369766564;
  *(v53 + 1) = 0xE600000000000000;
  *(v53 + 2) = v54;
  (v35)(v53, v52, v36);
  v55 = &v47[5 * v30];
  v56 = [objc_allocWithZone(type metadata accessor for JSFeatureFlagObject()) init];
  *v55 = 0x65727574616566;
  *(v55 + 1) = 0xE700000000000000;
  *(v55 + 2) = v56;
  (v35)(v55, v52, v36);
  v57 = v184[5];
  v58 = type metadata accessor for JSLocalizationObject();
  v59 = objc_allocWithZone(v58);
  *&v59[OBJC_IVAR____TtC16UtilityExtension20JSLocalizationObject_localizations] = v57;
  v183.receiver = v59;
  v183.super_class = v58;

  v60 = objc_msgSendSuper2(&v183, "init");
  v61 = sub_10001605C(v60, 0x617A696C61636F6CLL);
  (v35)(v61, v52, v36);
  v62 = [objc_allocWithZone(type metadata accessor for JSLogObject()) init];
  v63 = sub_10001605C(v62, 6778732);
  (v35)(v63, v52, v36);
  v160 = v35;
  v64 = &v47[8 * v30];
  v186 = v30;
  v65 = v161;
  v66 = v166;
  (*(v165 + 16))(v161, v163, v166);
  sub_10000464C(v65, 0, 1, v66);
  v67 = objc_allocWithZone(type metadata accessor for JSServiceObject());
  v68 = sub_100028C68(v65);
  *v64 = 0x65636976726573;
  *(v64 + 1) = 0xE700000000000000;
  *(v64 + 2) = v68;
  (v35)(v64, v52, v36);
  v69 = &v47[9 * v30];
  v70 = *(v164 + 16);
  v161 = (v164 + 16);
  v71 = v151;
  v72 = v174;
  v73 = v175;
  v70(v151, v174, v175);
  v147 = v70;
  v74 = objc_allocWithZone(type metadata accessor for JSMarketingObject());
  v75 = v150;
  v152 = v150;
  v76 = v148;
  v77 = v176;

  v78 = v172;
  v79 = sub_10001F144(v75, v71, v76, v172, v77);
  *v69 = 0x6E6974656B72616DLL;
  *(v69 + 1) = 0xE900000000000067;
  *(v69 + 2) = v79;
  v160(v69, v169, v177);
  v80 = &v171[10 * v186];
  v70(v71, v72, v73);
  v81 = objc_allocWithZone(type metadata accessor for JSMediaAPIObject());
  v82 = v173;
  swift_retain_n();
  v83 = v76;
  v150 = v83;
  v84 = v176;

  v85 = v149;
  v86 = sub_100020F8C(v82, v71, v83, v78, v84, v85);
  *v80 = 0x495041616964656DLL;
  *(v80 + 1) = 0xE800000000000000;
  *(v80 + 2) = v86;
  v87 = v80;
  v88 = v169;
  v89 = v177;
  v90 = v160;
  v160(v87, v169, v177);
  v91 = v171;
  v92 = v186;
  v93 = [objc_allocWithZone(type metadata accessor for JSEngagementObject()) init];
  v94 = sub_10001605C(v93, 0x656D656761676E65);
  v90(v94, v88, v89);
  v95 = &v91[12 * v92];
  v96 = v88;
  v147(v71, v174, v175);
  v97 = objc_allocWithZone(type metadata accessor for JSNetworkObject(0));
  v98 = v150;
  v99 = v85;
  v171 = v98;
  v100 = v176;
  v176 = v99;
  v101 = sub_100023E44(v173, v71, v98, v172, v100, v99);
  *v95 = 0x6B726F7774656ELL;
  *(v95 + 1) = 0xE700000000000000;
  *(v95 + 2) = v101;
  v102 = v95;
  v103 = v177;
  v104 = v90;
  v105 = v96;
  v90(v102, v96, v177);
  sub_100015BD4(v185, &v178);
  if (v179)
  {
    sub_10000DFBC(&v178, &v180);
    sub_100004454(&v180, v182);
    v106 = sub_1000448CC();
    v107 = v146;
    *v146 = 0x657A696C61636F6CLL;
    v107[1] = 0xE900000000000072;
    v107[2] = v106;
    v90(v107, v96, v103);
    v108 = v153;
    v110 = v153[2];
    v109 = v153[3];
    if (v110 >= v109 >> 1)
    {
      v142 = sub_1000161DC(v109);
      v108 = sub_100015D94(v142, v143, v144, v145);
    }

    v111 = v155;
    v108[2] = v110 + 1;
    v112 = v108;
    (*(v168 + 32))(v108 + v167 + v110 * v186, v107, v103);
    sub_100004408(&v180);
  }

  else
  {
    sub_10000470C(&v178, &qword_1000606A8, &unk_100047000);
    v111 = v155;
    v112 = v153;
  }

  v113 = [objc_allocWithZone(type metadata accessor for JSExternalAuthenticatorObject()) init];
  *v111 = 0xD000000000000015;
  v111[1] = 0x80000001000496B0;
  v111[2] = v113;
  v104(v111, v105, v103);
  v115 = v112[2];
  v114 = v112[3];
  if (v115 >= v114 >> 1)
  {
    v139 = sub_1000161DC(v114);
    v112 = sub_100015D94(v139, v140, v141, v112);
  }

  v112[2] = v115 + 1;
  sub_1000161C8();
  v118 = *(v168 + 32);
  v118(v116 + v115 * v117, v111, v103);
  v119 = [objc_allocWithZone(type metadata accessor for JSSessionAuthenticatorObject()) init];
  v120 = v162;
  *v162 = 0xD000000000000014;
  v120[1] = 0x80000001000496D0;
  v120[2] = v119;
  v104(v120, v105, v103);
  v122 = v112[2];
  v121 = v112[3];
  if (v122 >= v121 >> 1)
  {
    v112 = sub_100015D94((v121 > 1), v122 + 1, 1, v112);
  }

  v112[2] = v122 + 1;
  sub_1000161C8();
  v118(v123 + v122 * v124, v162, v103);
  sub_10004475C();

  v125 = v154;
  sub_10004471C();
  v126 = v157;
  v127 = sub_10004473C();
  if (v126)
  {

    v128 = sub_10001608C();
    v129(v128);
    sub_100015C44(v184);
    v130 = sub_10001606C();
    v131(v130);
    type metadata accessor for JSDataProvider();
    v132 = v159;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v132 = v159;
    *(v159 + 16) = v127;

    sub_1000446EC();

    if (deviceIsRunningInternalBuild())
    {
      v133 = *(v132 + 16);
      sub_1000446FC();
    }

    v134 = sub_10001608C();
    v135(v134);
    sub_100015C44(v184);
    v136 = sub_10001606C();
    v137(v136);
  }

  return v132;
}

void sub_1000147B8(void *a1, uint64_t a2)
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v5 = *(sub_100043D4C() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v12[3] = type metadata accessor for JSDataProvider();
  v12[0] = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v12);
  sub_100043CFC();
  sub_100043D9C();

  v10 = [a1 virtualMachine];
  if (v10)
  {
    v11 = v10;
    [v10 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000149A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[74] = a4;
  v4[73] = a3;
  v4[72] = a2;
  v4[71] = a1;
  v5 = sub_100003514(&qword_100060990, &unk_100046FC8);
  sub_1000161BC(v5);
  v7 = *(v6 + 64);
  v4[75] = sub_100016134();
  v8 = sub_1000446CC();
  v4[76] = v8;
  sub_10000EA9C(v8);
  v4[77] = v9;
  v11 = *(v10 + 64);
  v4[78] = sub_100016134();
  v12 = sub_100003514(&qword_100060538, &qword_100046D20);
  sub_1000161BC(v12);
  v14 = *(v13 + 64);
  v4[79] = sub_100016134();
  v15 = sub_10004426C();
  v4[80] = v15;
  sub_10000EA9C(v15);
  v4[81] = v16;
  v18 = *(v17 + 64);
  v4[82] = sub_100016134();
  v19 = sub_100003514(&qword_100060998, &qword_100046FD8);
  v4[83] = v19;
  sub_10000EA9C(v19);
  v4[84] = v20;
  v22 = *(v21 + 64);
  v4[85] = sub_100016134();
  v23 = sub_10004420C();
  v4[86] = v23;
  sub_10000EA9C(v23);
  v4[87] = v24;
  v26 = *(v25 + 64) + 15;
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v27 = sub_1000443FC();
  v4[90] = v27;
  sub_10000EA9C(v27);
  v4[91] = v28;
  v30 = *(v29 + 64);
  v4[92] = sub_100016134();
  v31 = sub_10004435C();
  v4[93] = v31;
  sub_10000EA9C(v31);
  v4[94] = v32;
  v34 = *(v33 + 64);
  v4[95] = sub_100016134();

  return _swift_task_switch(sub_100014C7C, 0, 0);
}

uint64_t sub_100014C7C()
{
  v1 = v0[92];
  v2 = v0[74];
  v3 = v0[72];
  v0[51] = type metadata accessor for JSServiceRequest();
  v0[52] = sub_100015B8C(&qword_1000609A0, type metadata accessor for JSServiceRequest);
  v4 = sub_1000049E0(v0 + 48);
  sub_100015B28(v3, v4);
  v0[96] = *(v2 + 16);
  v5 = v0[51];
  v6 = v0[52];
  v7 = sub_100004454(v0 + 48, v5);
  v0[45] = v5;
  v0[46] = *(v6 + 8);
  v0[47] = *(v6 + 16);
  v8 = sub_1000049E0(v0 + 42);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  sub_10004440C();
  v9 = async function pointer to JSStack.dispatch<A>(_:objectGraph:)[1];
  v10 = swift_task_alloc();
  v0[97] = v10;
  *v10 = v0;
  v10[1] = sub_100014E44;
  v11 = v0[95];
  v12 = v0[92];
  v13 = v0[90];
  v14 = v0[73];

  return JSStack.dispatch<A>(_:objectGraph:)(v11, v12, v14, v13, &protocol witness table for JSRequestIntent);
}

uint64_t sub_100014E44()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v4 = *v1;
  *(*v1 + 784) = v0;

  (*(v2[91] + 8))(v2[92], v2[90]);
  if (v0)
  {
    v5 = sub_100015730;
  }

  else
  {
    v5 = sub_100014FD8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100014FD8()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v75 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 656);
  v9 = *(v0 + 632);
  sub_10004434C();
  sub_1000442AC();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v3, v2, v75);
  sub_10004425C();
  sub_1000441CC();
  v10 = sub_10004437C();
  v11 = sub_1000046E4(v9, 1, v10);
  v12 = *(v0 + 632);
  if (v11 == 1)
  {
    sub_10000470C(*(v0 + 632), &qword_100060538, &qword_100046D20);
LABEL_6:
    v30 = [objc_allocWithZone(NSError) init];
    goto LABEL_7;
  }

  v13 = *(v0 + 632);
  v14 = sub_10004436C();
  (*(*(v10 - 8) + 8))(v12, v10);
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = objc_opt_self();
  isa = sub_1000448DC().super.isa;

  *(v0 + 560) = 0;
  v17 = [v15 dataWithJSONObject:isa options:0 error:v0 + 560];

  v18 = *(v0 + 560);
  if (v17)
  {
    v68 = *(v0 + 760);
    v69 = *(v0 + 768);
    v19 = *(v0 + 752);
    v66 = *(v0 + 712);
    v67 = *(v0 + 744);
    v65 = *(v0 + 704);
    v20 = *(v0 + 696);
    v21 = *(v0 + 688);
    v70 = *(v0 + 736);
    v71 = *(v0 + 680);
    v22 = *(v0 + 656);
    v23 = *(v0 + 648);
    v24 = *(v0 + 640);
    v72 = *(v0 + 632);
    v73 = *(v0 + 624);
    v76 = *(v0 + 600);
    v25 = *(v0 + 568);
    v64 = sub_100043BAC();
    v27 = v26;

    (*(v23 + 8))(v22, v24);
    v28 = *(v20 + 8);
    v28(v65, v21);
    *v25 = v64;
    v25[1] = v27;
    v28(v66, v21);
    (*(v19 + 8))(v68, v67);
    sub_10004470C();
    sub_100004408((v0 + 384));

    v29 = *(v0 + 8);
    goto LABEL_23;
  }

  v63 = v18;
  v30 = sub_100043AAC();

LABEL_7:
  swift_willThrow();
  v31 = *(v0 + 760);
  v32 = *(v0 + 752);
  v33 = *(v0 + 744);
  v34 = *(v0 + 712);
  v35 = *(v0 + 704);
  v36 = *(v0 + 696);
  v37 = *(v0 + 688);
  (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
  v38 = *(v36 + 8);
  v38(v35, v37);
  v38(v34, v37);
  (*(v32 + 8))(v31, v33);
  v39 = *(v0 + 608);
  v40 = *(v0 + 600);
  *(v0 + 552) = v30;
  swift_errorRetain();
  sub_100003514(&qword_1000609A8, &qword_100046FE0);
  if (sub_100016170())
  {
    v41 = *(v0 + 624);
    v42 = *(v0 + 616);
    sub_1000160F4();
    v43 = sub_100016194(v42);
    v44(v43);
    sub_100015FFC();
    sub_100015B8C(v45, v46);
    sub_1000161FC();
    (*(v42 + 16))(v47, v41, v34);
    v74 = sub_100043A9C();
    sub_100003514(&qword_1000609B0, &unk_100046FE8);
    inited = swift_initStackObject();
    sub_1000160C8(inited, xmmword_100046690);
    sub_100044BFC();
    v49 = sub_10004466C();
    if (v50)
    {
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = 0x6E776F6E6B6E75;
      *(inited + 80) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 448) = &type metadata for Int;
      *(v0 + 424) = v49;
      sub_10000476C((v0 + 424), (inited + 72));
    }

    sub_10001611C();
    sub_100044BFC();
    v51 = sub_10004465C();
    if (v52)
    {
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = 0x6E776F6E6B6E75;
      *(inited + 152) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 480) = &type metadata for Int;
      *(v0 + 456) = v51;
      sub_10000476C((v0 + 456), (inited + 144));
    }

    v53 = *(v0 + 624);
    v54 = *(v0 + 616);
    sub_1000160AC();
    *(v0 + 528) = 0xE700000000000000;
    sub_10001621C();
    v55 = sub_10004468C();
    sub_100015FB4(v55, v56);
    v57 = sub_1000446BC();
    *(inited + 312) = &type metadata for String;
    if (v58)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0x6E776F6E6B6E75;
    }

    if (v58)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0xE700000000000000;
    }

    *(inited + 288) = v59;
    *(inited + 296) = v60;
    sub_1000161F0();
    sub_1000448FC();
    sub_1000161F0();
    v61 = sub_1000448DC().super.isa;

    [v74 ams_errorByAddingUserInfo:v61];

    swift_willThrow();

    (*(v54 + 8))(v53, &type metadata for String);
  }

  else
  {
    sub_10001614C();
    sub_10000470C(v39, &qword_100060990, &unk_100046FC8);
    swift_willThrow();
  }

  sub_100016014();
  sub_10004470C();
  sub_100004408((v0 + 384));

  v29 = *(v0 + 8);
LABEL_23:

  return v29();
}

uint64_t sub_100015730()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  *(v0 + 552) = *(v0 + 784);
  swift_errorRetain();
  sub_100003514(&qword_1000609A8, &qword_100046FE0);
  if (sub_100016170())
  {
    v4 = *(v0 + 624);
    v5 = *(v0 + 616);
    sub_1000160F4();
    v6 = sub_100016194(v5);
    v7(v6);
    sub_100015FFC();
    sub_100015B8C(v8, v9);
    sub_1000161FC();
    (*(v5 + 16))(v10, v4, v1);
    v11 = sub_100043A9C();
    sub_100003514(&qword_1000609B0, &unk_100046FE8);
    inited = swift_initStackObject();
    sub_1000160C8(inited, xmmword_100046690);
    sub_100044BFC();
    v13 = sub_10004466C();
    if (v14)
    {
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = 0x6E776F6E6B6E75;
      *(inited + 80) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 448) = &type metadata for Int;
      *(v0 + 424) = v13;
      sub_10000476C((v0 + 424), (inited + 72));
    }

    sub_10001611C();
    sub_100044BFC();
    v15 = sub_10004465C();
    if (v16)
    {
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = 0x6E776F6E6B6E75;
      *(inited + 152) = 0xE700000000000000;
    }

    else
    {
      *(v0 + 480) = &type metadata for Int;
      *(v0 + 456) = v15;
      sub_10000476C((v0 + 456), (inited + 144));
    }

    v17 = *(v0 + 624);
    v18 = *(v0 + 616);
    sub_1000160AC();
    *(v0 + 528) = 0xE700000000000000;
    sub_10001621C();
    v19 = sub_10004468C();
    sub_100015FB4(v19, v20);
    v21 = sub_1000446BC();
    *(inited + 312) = &type metadata for String;
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0x6E776F6E6B6E75;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE700000000000000;
    }

    *(inited + 288) = v23;
    *(inited + 296) = v24;
    sub_1000161F0();
    sub_1000448FC();
    sub_1000161F0();
    isa = sub_1000448DC().super.isa;

    [v11 ams_errorByAddingUserInfo:isa];

    swift_willThrow();

    (*(v18 + 8))(v17, &type metadata for String);
  }

  else
  {
    sub_10001614C();
    sub_10000470C(v2, &qword_100060990, &unk_100046FC8);
    swift_willThrow();
  }

  sub_100016014();
  sub_10004470C();
  sub_100004408((v0 + 384));

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100015ACC()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100015B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_1000606A8, &unk_100047000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100015CA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003514(a3, a4);
  v8 = a5(0);
  sub_10000EA9C(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100015D94(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_100015CA0(v9, a2, &qword_1000609B8, &qword_100046FF8, &type metadata accessor for JSStack.Prerequisite);
  v11 = *(sub_1000446DC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_100003358(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100015EA4(void *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_100015CA0(v9, a2, &qword_1000609C0, &unk_100047010, type metadata accessor for JSSourceInfo);
  v11 = *(type metadata accessor for JSSourceInfo() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_100003370(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100015FB4(uint64_t a1, uint64_t a2)
{
  v3[30] = v4;
  v3[27] = a1;
  v3[28] = a2;
  *(v2 + 536) = 0x5255656372756F73;
  *(v2 + 544) = 0xE90000000000004CLL;

  return sub_100044BFC();
}

void sub_100016014()
{
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[92];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[85];
  v7 = v0[82];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[75];
}

uint64_t sub_100016040()
{

  return sub_10004462C();
}

void *sub_10001605C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v3 = a2;
  v3[1] = v2;
  v3[2] = a1;
  return v3;
}

uint64_t sub_10001606C()
{
  v1 = *(*(v0 - 384) + 8);
  result = *(v0 - 304);
  v3 = *(v0 - 296);
  return result;
}

uint64_t sub_10001608C()
{
  v1 = *(*(v0 - 376) + 8);
  result = *(v0 - 392);
  v3 = *(v0 - 368);
  return result;
}

__n128 *sub_1000160C8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 488) = 0x6E6D756C6F63;
  *(v2 + 496) = 0xE600000000000000;
  return result;
}

uint64_t sub_1000160F4()
{
  v2 = *(v0 + 600);
  v3 = *(v0 + 608);

  return sub_10000464C(v2, 0, 1, v3);
}

void sub_10001611C()
{
  v1 = v0[78];
  v0[63] = 1701734764;
  v0[64] = 0xE400000000000000;
}

uint64_t sub_100016134()
{

  return swift_task_alloc();
}

uint64_t sub_10001614C()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  return sub_10000464C(v3, 1, 1, v2);
}

uint64_t sub_100016170()
{

  return swift_dynamicCast();
}

uint64_t sub_1000161FC()
{

  return swift_allocError();
}

uint64_t sub_10001621C()
{

  return sub_100044BFC();
}

uint64_t sub_100016254()
{
  if (deviceIsRunningInternalBuild())
  {
    return 0x6C616E7265746E69;
  }

  if (deviceIsRunningSeedBuild())
  {
    return 1684366707;
  }

  return 0x72656D6F74737563;
}

id sub_1000162D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_10004491C();

  return v5;
}

uint64_t sub_100016348()
{
  v0 = objc_opt_self();
  v1 = sub_100016620(v0);
  if (!v1)
  {
    return 0;
  }

  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100016420()
{
  v0 = objc_opt_self();
  result = sub_10000296C(v0, &selRef_modelPartNumber);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000164A4(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = sub_10004494C();

  return v2;
}

uint64_t sub_10001651C()
{
  v0 = objc_opt_self();
  result = sub_10000296C(v0, &selRef_serialNumber);
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

id sub_100016570()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSDeviceObject();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000165C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSDeviceObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100016620(void *a1)
{
  v1 = [a1 carrierNames];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100044A1C();

  return v3;
}

const char *sub_100016690(void *a1, void *a2, void *a3)
{
  v7 = sub_1000448BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000444AC();
  v13 = sub_10004449C();
  if (v13)
  {
    v14 = v13;
    v15 = sub_100006530(a2);
    if (v3)
    {
    }

    else
    {
      v33 = v15;
      v36 = a1;
      v29 = v8;
      v30 = v7;
      if (qword_10005FF30 != -1)
      {
        swift_once();
      }

      v16 = sub_100043DBC();
      v32 = sub_1000060A4(v16, qword_100065200);
      sub_100003514(&qword_100061CF0, &unk_1000466A0);
      v17 = *(sub_100043D4C() - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      *(swift_allocObject() + 16) = xmmword_100046830;
      v35 = type metadata accessor for JSEngagementObject();
      v34[0] = a3;
      v31 = a3;
      v20 = AMSLogKey();
      if (v20)
      {
        v21 = v20;
        sub_10004494C();
      }

      sub_100043D2C();

      sub_100004408(v34);
      sub_100043CFC();
      v35 = &type metadata for EngagementEvent;
      v22 = v33;
      v34[0] = v33;

      sub_100043D0C();
      sub_100006100(v34);
      sub_100043D9C();

      v23 = swift_allocObject();
      v24 = v31;
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v14;
      v25 = v24;
      v26 = v36;

      sub_10004489C();
      v12 = sub_1000448AC();

      (*(v29 + 8))(v11, v30);
    }
  }

  else
  {
    v12 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_100016A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v39 = a6;
  v35 = a5;
  v36 = a3;
  v33 = a2;
  v31 = a1;
  v7 = sub_1000441BC();
  v8 = *(v7 - 8);
  v32 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(AMSEngagement) init];
  v38 = v11;
  isa = sub_1000448DC().super.isa;
  v13 = [v11 enqueueData:isa];

  sub_100003514(&qword_100060A20, "Vg");
  v37 = v13;
  v34 = sub_10004481C();
  v30 = *(v8 + 16);
  v30(v10, v33, v7);
  v14 = *(v8 + 80);
  v15 = v8;
  v16 = v32;
  v17 = swift_allocObject();
  v33 = v17;
  v18 = v35;
  *(v17 + 16) = v35;
  *(v17 + 24) = a1;
  v19 = *(v15 + 32);
  v29 = v10;
  v19(v17 + ((v14 + 32) & ~v14), v10, v7);
  v30(v10, v36, v7);
  v20 = (v14 + 24) & ~v14;
  v21 = swift_allocObject();
  v22 = v18;
  *(v21 + 16) = v18;
  v19(v21 + v20, v29, v7);
  v23 = v31;
  *(v21 + ((v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v40[3] = sub_1000444AC();
  v40[4] = &protocol witness table for RunLoopWorkerThread;
  v40[0] = v39;
  v24 = v22;
  v25 = v23;
  v26 = v24;
  v27 = v25;

  sub_10004478C();

  return sub_100004408(v40);
}

void sub_100016D64(void **a1, void *a2, void *a3)
{
  v15 = *a1;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v5 = *(sub_100043D4C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 72);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v17[3] = type metadata accessor for JSEngagementObject();
  v17[0] = a2;
  a2;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v17);
  sub_100043CFC();
  sub_100043D9C();

  v10 = v15;
  v11 = sub_1000061FC(a3, v10);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000465C0;
  *(v12 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v12 + 32) = v11;
  v13 = v11;
  v14 = sub_1000441AC();
}

void sub_100017118(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v31 = a4;
  v32 = a3;
  v6 = sub_1000446CC();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v10 = sub_100043DBC();
  v33 = sub_1000060A4(v10, qword_100065200);
  v11 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v12 = *(sub_100043D4C() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = 3 * *(v12 + 72);
  v28 = v11;
  v14 = swift_allocObject();
  v26 = xmmword_100046830;
  *(v14 + 16) = xmmword_100046830;
  v25 = type metadata accessor for JSEngagementObject();
  v37 = v25;
  v36[0] = a2;
  v24 = a2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v36);
  sub_100043CFC();
  swift_getErrorValue();
  v17 = v34;
  v18 = v35;
  v37 = v35;
  v19 = sub_1000049E0(v36);
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  sub_100043D0C();
  sub_100006100(v36);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(a1);
  v21.super.isa = v31;
  isa = sub_1000446AC(v21).super.isa;
  (*(v29 + 8))(v9, v30);
  *(v20 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v20 + 32) = isa;
  v23 = sub_1000441AC();
}

uint64_t sub_100017640()
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v0 = sub_100044B1C();
  v1 = sub_100044B2C();

  return v1;
}

const char *sub_1000176B8(void *a1, void *a2, void *a3)
{
  v7 = sub_1000448BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000444AC();
  v13 = sub_10004449C();
  if (v13)
  {
    v14 = v13;
    v15 = sub_100006724(a2);
    if (v3)
    {
    }

    else
    {
      v37 = v17;
      v38 = v16;
      v39 = v15;
      v42 = a1;
      v33 = v8;
      v34 = v7;
      if (qword_10005FF30 != -1)
      {
        swift_once();
      }

      v18 = sub_100043DBC();
      v36 = sub_1000060A4(v18, qword_100065200);
      sub_100003514(&qword_100061CF0, &unk_1000466A0);
      v19 = *(sub_100043D4C() - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      *(swift_allocObject() + 16) = xmmword_100046830;
      v41 = type metadata accessor for JSEngagementObject();
      v40[0] = a3;
      v35 = a3;
      v22 = AMSLogKey();
      if (v22)
      {
        v23 = v22;
        sub_10004494C();
      }

      sub_100043D2C();

      sub_100004408(v40);
      sub_100043CFC();
      v25 = v38;
      v24 = v39;
      v40[0] = v39;
      v40[1] = v38;
      v26 = v37;
      v40[2] = v37;
      v41 = &type metadata for EngagementMessageEvent;

      sub_100043D0C();
      sub_100006100(v40);
      sub_100043D9C();

      v27 = swift_allocObject();
      v27[2] = v24;
      v27[3] = v25;
      v28 = v35;
      v27[4] = v26;
      v27[5] = v28;
      v27[6] = v14;
      v29 = v28;
      v30 = v42;

      sub_10004489C();
      v12 = sub_1000448AC();

      (*(v33 + 8))(v11, v34);
    }
  }

  else
  {
    v12 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_100017A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v42 = a8;
  v36 = a2;
  v37 = a7;
  v39 = a3;
  v44 = a1;
  v11 = sub_1000441BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v35 = v13;
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(AMSEngagement) init];
  v41 = v15;
  v16 = sub_100006B30(a4, a5, a6);
  v17 = [v15 enqueueMessageEvent:v16];

  sub_100003514(&qword_100060A18, "8g");
  v40 = v17;
  v38 = sub_10004481C();
  v18 = *(v12 + 16);
  v18(v14, v36, v11);
  v19 = *(v12 + 80);
  v20 = swift_allocObject();
  v36 = v20;
  v21 = v37;
  v22 = v44;
  *(v20 + 16) = v37;
  *(v20 + 24) = v22;
  v23 = *(v12 + 32);
  v34 = v14;
  v23(v20 + ((v19 + 32) & ~v19), v14, v11);
  v18(v14, v39, v11);
  v24 = (v19 + 24) & ~v19;
  v25 = (v35 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  v23(v26 + v24, v34, v11);
  v27 = v44;
  *(v26 + v25) = v44;
  v43[3] = sub_1000444AC();
  v43[4] = &protocol witness table for RunLoopWorkerThread;
  v43[0] = v42;
  v28 = v21;
  v29 = v27;
  v30 = v28;
  v31 = v29;

  sub_10004478C();

  return sub_100004408(v43);
}

void sub_100017D88(void **a1, void *a2, void *a3)
{
  v15 = *a1;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v5 = *(sub_100043D4C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 72);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v17[3] = type metadata accessor for JSEngagementObject();
  v17[0] = a2;
  a2;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v17);
  sub_100043CFC();
  sub_100043D9C();

  v10 = v15;
  v11 = sub_100007944(a3, v10);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000465C0;
  *(v12 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v12 + 32) = v11;
  v13 = v11;
  v14 = sub_1000441AC();
}

void sub_100018138(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v31 = a4;
  v32 = a3;
  v6 = sub_1000446CC();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v10 = sub_100043DBC();
  v33 = sub_1000060A4(v10, qword_100065200);
  v11 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v12 = *(sub_100043D4C() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = 3 * *(v12 + 72);
  v28 = v11;
  v14 = swift_allocObject();
  v26 = xmmword_100046830;
  *(v14 + 16) = xmmword_100046830;
  v25 = type metadata accessor for JSEngagementObject();
  v37 = v25;
  v36[0] = a2;
  v24 = a2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v36);
  sub_100043CFC();
  swift_getErrorValue();
  v17 = v34;
  v18 = v35;
  v37 = v35;
  v19 = sub_1000049E0(v36);
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  sub_100043D0C();
  sub_100006100(v36);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(a1);
  v21.super.isa = v31;
  isa = sub_1000446AC(v21).super.isa;
  (*(v29 + 8))(v9, v30);
  *(v20 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v20 + 32) = isa;
  v23 = sub_1000441AC();
}

id sub_100018648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSEngagementObject();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000186A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSEngagementObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100018714()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000187D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100018840()
{
  v2 = sub_1000441BC();
  sub_100018B3C(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_100018914(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1000441BC() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1000189A0()
{
  v2 = sub_1000441BC();
  sub_100018B3C(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v8 + 8, v5 | 7);
}

uint64_t sub_100018A80(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1000441BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_100018B54(uint64_t a1)
{
  v2 = sub_100003514(&qword_100060990, &unk_100046FC8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - v4;
  v6 = sub_1000446CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[7] = a1;
  swift_errorRetain();
  sub_100003514(&qword_1000609A8, &qword_100046FE0);
  if (swift_dynamicCast())
  {
    sub_10000464C(v5, 0, 1, v6);
    (*(v7 + 32))(v10, v5, v6);
    v11 = sub_10004468C();
    v14[1] = v12;
    v14[2] = v11;
    v14[0] = sub_10004465C();
    sub_10004466C();
    sub_1000446BC();
    sub_10004463C();
    sub_10004467C();

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_10000464C(v5, 1, 1, v6);
    sub_100018DBC(v5);
    swift_getErrorValue();
    sub_100044DDC();
    sub_10004467C();
  }
}

uint64_t sub_100018DBC(uint64_t a1)
{
  v2 = sub_100003514(&qword_100060990, &unk_100046FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_100018E5C(char a1)
{
  sub_100044E3C();
  sub_100044E4C(a1 & 1);
  return sub_100044E5C();
}

uint64_t sub_100018F28()
{
  sub_100043C4C();
  v0 = v4[4];
  sub_100004454(v4, v4[3]);
  v1 = *(*(*(v0 + 8) + 8) + 8);
  v2 = sub_100043C5C();
  sub_100004408(v4);
  return v2;
}

uint64_t sub_100018FAC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v37 = a3;
  v38 = a5;
  v39 = a1;
  v7 = sub_1000441BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_100003514(&qword_100060A50, &unk_100047080);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - v15;
  v36 = &v34 - v15;
  v17 = sub_100044A5C();
  sub_10000464C(v16, 1, 1, v17);
  v18 = *(v8 + 16);
  v34 = v7;
  v18(v12, a2, v7);
  v18(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v7);
  v19 = *(v8 + 80);
  v20 = (v19 + 48) & ~v19;
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v19 + v21 + 8) & ~v19;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a4;
  v24 = a4;
  v25 = v38;
  *(v23 + 5) = v38;
  v26 = *(v8 + 32);
  v27 = &v23[v20];
  v28 = v34;
  v26(v27, v12, v34);
  v29 = v39;
  *&v23[v21] = v39;
  v26(&v23[v22], v35, v28);
  v30 = v24;
  v31 = v25;
  v32 = v29;
  sub_10002AFB8();
}

uint64_t sub_100019214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = sub_1000446CC();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v11 = *(v10 + 64) + 15;
  v8[23] = swift_task_alloc();
  v12 = *(*(type metadata accessor for ExternalAuthenticatorBillingPlanResponse(0) - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v13 = sub_100043E1C();
  v8[25] = v13;
  v14 = *(v13 - 8);
  v8[26] = v14;
  v15 = *(v14 + 64) + 15;
  v8[27] = swift_task_alloc();
  v16 = sub_10004402C();
  v8[28] = v16;
  v17 = *(v16 - 8);
  v8[29] = v17;
  v18 = *(v17 + 64) + 15;
  v8[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000193C0, 0, 0);
}

uint64_t sub_1000193C0()
{
  sub_10001D904();
  if (qword_10005FF30 != -1)
  {
    sub_10001D6F8();
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_100043DBC();
  sub_1000060A4(v2, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100013414();
  v3 = sub_100043D4C();
  sub_10000EA9C(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v0[15] = type metadata accessor for JSExternalAuthenticatorObject();
  v0[12] = v1;
  v8 = v1;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_10004494C();
  }

  v11 = v0[30];
  v12 = v0[17];
  sub_10001D788();
  sub_100043D2C();

  sub_100004408(v0 + 12);
  sub_100043CFC();
  sub_100043D9C();

  sub_100019CFC(v12, v11);
  v13 = async function pointer to ExternalPartnerAuthenticator.retrieveLatestBillingPlan()[1];
  v14 = swift_task_alloc();
  v0[31] = v14;
  *v14 = v0;
  v14[1] = sub_100019738;
  v15 = v0[30];
  v16 = v0[27];
  sub_10001D944();

  return ExternalPartnerAuthenticator.retrieveLatestBillingPlan()();
}

uint64_t sub_100019738()
{
  v2 = *v1;
  sub_10001D8AC();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  sub_10001D8AC();
  *v8 = v7;
  *(v9 + 256) = v0;

  if (v0)
  {
    v10 = sub_100019B68;
  }

  else
  {
    v10 = sub_100019844;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100019844()
{
  v1 = v0[32];
  v2 = v0[19];
  (*(v0[26] + 16))(v0[24], v0[27], v0[25]);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v3 = sub_10001D83C();
  v4 = sub_10001D930(v3, xmmword_1000465C0);
  sub_10001D998(v4, v5);
  if (v1)
  {
    v7 = v0[29];
    v6 = v0[30];
    v9 = v0[27];
    v8 = v0[28];
    v10 = v0[25];
    v11 = v0[26];
    v12 = v0[24];
    sub_10001D6E0();
    sub_10001D370();
    (*(v11 + 8))(v9, v10);
    v13 = *(v7 + 8);
    v14 = sub_10001D7F8();
    v15(v14);
    sub_10001D854();
    v29 = v0[23];
    v30 = v0[19];
    sub_100003514(&qword_100060820, &unk_100046E90);
    v31 = sub_10001D83C();
    sub_10001D7D8(v31, v32, v33, v34, v35, v36, v37, v38, v60);
    v39 = sub_10001D77C();
    sub_100018B54(v39);
    sub_10001D760();
    v41 = v0[22];
    v40 = v0[23];
    v42 = v0[21];
    if (v30)
    {

      v43 = sub_10001D6B8();
      v44(v43);
      sub_10001D854();
      sub_10001D804();
      v52 = v0[23];
      v51 = v0[24];

      sub_10001D71C();
      goto LABEL_8;
    }

    v45 = v0[20];
    v46 = sub_10001D6B8();
    v47(v46);
    sub_10001D67C();
    sub_10001D72C();
    v49 = *(v48 + 16);
    sub_10001D788();
    v50();
  }

  else
  {
    v16 = v0[29];
    v17 = v0[26];
    v18 = v0[18];
    v19 = v0[10];
    sub_10001D960();
    sub_10001D754(v19);
    (*(v20 + 16))();
    sub_100004408(v0 + 7);
    v21 = sub_1000441AC();
    v22 = (v17 + 8);
    v23 = (v16 + 8);
    v24 = v0[30];
    v26 = v0[27];
    v25 = v0[28];
    v28 = v0[24];
    v27 = v0[25];

    sub_10001D6E0();
    sub_10001D370();
    (*v22)(v26, v27);
    v54 = *v23;
    v55 = sub_10001D7F8();
    v56(v55);
  }

  sub_10001D804();
  v58 = v0[23];
  v57 = v0[24];

  sub_10001D70C();
LABEL_8:

  return v53();
}

uint64_t sub_100019B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  (*(v10[29] + 8))(v10[30], v10[28]);
  v11 = v10[32];
  v12 = v10[23];
  v13 = v10[19];
  sub_100003514(&qword_100060820, &unk_100046E90);
  v14 = sub_10001D83C();
  sub_10001D894(v14, xmmword_1000465C0);
  v15 = sub_10001D77C();
  sub_100018B54(v15);
  sub_10001D760();
  v17 = v10[22];
  v16 = v10[23];
  v18 = v10[21];
  if (v13)
  {

    v19 = sub_10001D6B8();
    v20(v19);
    sub_10001D854();
    sub_10001D804();
    v28 = v10[23];
    v27 = v10[24];

    sub_10001D71C();
  }

  else
  {
    v21 = v10[20];
    v22 = sub_10001D6B8();
    v23(v22);
    sub_10001D67C();
    sub_10001D72C();
    v25 = *(v24 + 16);
    sub_10001D788();
    v26();

    sub_10001D804();
    v39 = v10[23];
    v38 = v10[24];

    sub_10001D70C();
  }

  sub_10001D86C();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_100019CFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_100003514(&qword_100060A58, &qword_1000470A8);
  v4 = sub_1000161BC(v3);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = &v79 - v9;
  v10 = sub_100003514(&qword_100060A60, &qword_1000470B0);
  v11 = sub_1000161BC(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v87 = &v79 - v14;
  v15 = sub_100043C9C();
  v16 = sub_1000061E8(v15);
  v88 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003514(&qword_100060A68, &qword_1000470B8);
  v23 = sub_1000161BC(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v79 - v26;
  v28 = sub_100003514(&qword_100060A70, &qword_1000470C0);
  v29 = sub_1000161BC(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v79 - v32;
  v34 = sub_100043C7C();
  v35 = sub_1000061E8(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v35);
  v42 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v79 - v43;
  v45 = a1;
  v46 = v90;
  sub_10001C704(v45, v89);
  if (v46)
  {

LABEL_8:
    if (qword_10005FF30 != -1)
    {
      sub_10001D6F8();
      swift_once();
    }

    v56 = sub_100043DBC();
    sub_1000060A4(v56, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100013414();
    v57 = sub_100043D4C();
    sub_10000EA9C(v57);
    v59 = *(v58 + 72);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    *(swift_allocObject() + 16) = xmmword_1000468F0;
    v62 = AMSSetLogKeyIfNeeded();
    sub_10004494C();

    type metadata accessor for JSExternalAuthenticatorObject();
    sub_100043D1C();

    sub_100043CFC();
    sub_100043D8C();

    sub_10001CC20();
    swift_allocError();
    *v63 = 0;
    return swift_willThrow();
  }

  v90 = v42;
  v80 = v44;
  v81 = v37;
  v79 = v21;
  v82 = v89[0];
  v83 = v33;
  if (v89[3])
  {

    v47 = v15;
    sub_100043C3C();
    v48 = sub_100043C2C();
    sub_10000464C(v27, 0, 1, v48);
    v49 = v34;
  }

  else
  {
    v50 = sub_100043C2C();
    sub_10000464C(v27, 1, 1, v50);

    v49 = v34;
    v47 = v15;
  }

  v51 = v90;
  v52 = v83;

  sub_100043C6C();
  sub_10000464C(v52, 0, 1, v49);
  v54 = v80;
  v53 = v81;
  (*(v81 + 32))(v80, v52, v49);
  (*(v53 + 16))(v51, v54, v49);
  v55 = v87;
  sub_100043C8C();
  if (sub_1000046E4(v55, 1, v47) == 1)
  {
    (*(v53 + 8))(v54, v49);
    sub_10001CC74(v89);
    sub_10001D0C8(v55, &qword_100060A60, &qword_1000470B0);
    goto LABEL_8;
  }

  v65 = v79;
  (*(v88 + 32))(v79, v55, v47);
  if (v89[6])
  {

    sub_10001CC74(v89);
    v66 = v86;
    sub_100043FCC();
  }

  else
  {
    sub_10001CC74(v89);
    v66 = v86;
    sub_100043FDC();
  }

  v68 = v84;
  v67 = v85;
  sub_10001D064(v66, v84, &qword_100060A58, &qword_1000470A8);
  v69 = sub_10004402C();
  if (sub_1000046E4(v68, 1, v69) == 1)
  {
    sub_10001D0C8(v68, &qword_100060A58, &qword_1000470A8);
    if (qword_10005FF30 != -1)
    {
      sub_10001D6F8();
      swift_once();
    }

    v70 = sub_100043DBC();
    sub_1000060A4(v70, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100013414();
    v71 = sub_100043D4C();
    sub_10000EA9C(v71);
    v73 = *(v72 + 72);
    v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    *(swift_allocObject() + 16) = xmmword_1000468F0;
    v76 = AMSSetLogKeyIfNeeded();
    sub_10004494C();

    type metadata accessor for JSExternalAuthenticatorObject();
    sub_100043D1C();

    sub_100043CFC();
    sub_100043D8C();

    sub_10001CC20();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();
    sub_10001D0C8(v86, &qword_100060A58, &qword_1000470A8);
    (*(v88 + 8))(v79, v47);
    return (*(v81 + 8))(v80, v49);
  }

  else
  {
    sub_10001D0C8(v66, &qword_100060A58, &qword_1000470A8);
    (*(v88 + 8))(v65, v47);
    (*(v81 + 8))(v80, v49);
    sub_10001D754(v69);
    return (*(v78 + 32))(v67, v68, v69);
  }
}

char *sub_10001A65C(void *a1, void *a2, void *a3)
{
  v45 = a3;
  v43 = a1;
  v4 = type metadata accessor for ExternalAuthenticatorCredentialsResponse(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100043E7C();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003514(&qword_100060A80, &qword_1000470D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = sub_10004402C();
  v40 = *(v17 - 8);
  v41 = v17;
  v18 = *(v40 + 64);
  __chkstk_darwin(v17);
  v48 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v42 = v7;
  v44 = v16;
  v20 = sub_100043DBC();
  sub_1000060A4(v20, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v21 = *(sub_100043D4C() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v47[3] = type metadata accessor for JSExternalAuthenticatorObject();
  v47[0] = a2;
  v24 = a2;
  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v47);
  sub_100043CFC();
  sub_100043D9C();

  v27 = v48;
  v28 = v46;
  sub_100019CFC(v45, v48);
  if (v28)
  {
    return v14;
  }

  v29 = v44;
  sub_100043FEC();
  sub_10001D064(v29, v14, &qword_100060A80, &qword_1000470D8);
  v30 = v42;
  if (sub_1000046E4(v14, 1, v42) != 1)
  {
    v33 = v38;
    v32 = v39;
    (*(v39 + 32))(v38, v14, v30);
    (*(v32 + 16))(v37, v33, v30);
    v34 = v43;
    sub_10001DC58(v43, v47);
    sub_10000477C(0, &qword_100060800, JSValue_ptr);
    sub_10001D370();
    v35 = v34;
    v14 = sub_100044A9C();
    (*(v32 + 8))(v33, v30);
    goto LABEL_9;
  }

  sub_10001D0C8(v14, &qword_100060A80, &qword_1000470D8);
  result = [objc_opt_self() valueWithUndefinedInContext:v43];
  if (result)
  {
    v14 = result;
LABEL_9:
    sub_10001D0C8(v29, &qword_100060A80, &qword_1000470D8);
    (*(v40 + 8))(v27, v41);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001AC78(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v44 = a1;
  v43 = a5;
  v41 = a3;
  v39 = a2;
  v42 = sub_1000441BC();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v42);
  v46 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  __chkstk_darwin(v8);
  v11 = v38 - v10;
  v12 = sub_100003514(&qword_100060A50, &unk_100047080);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v38 - v14;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v16 = sub_100043DBC();
  v38[2] = sub_1000060A4(v16, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v17 = *(sub_100043D4C() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v45[3] = type metadata accessor for JSExternalAuthenticatorObject();
  v45[0] = a4;
  v20 = a4;
  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v45);
  sub_100043CFC();
  sub_100043D9C();

  v23 = sub_100044A5C();
  v38[1] = v15;
  sub_10000464C(v15, 1, 1, v23);
  v24 = v6;
  v25 = *(v6 + 16);
  v26 = v42;
  v25(v11, v39, v42);
  v25(v46, v41, v26);
  v27 = *(v24 + 80);
  v28 = (v27 + 40) & ~v27;
  v29 = (v40 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v27 + v29 + 8) & ~v27;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v43;
  *(v31 + 4) = v43;
  v33 = *(v24 + 32);
  v33(&v31[v28], v11, v26);
  v34 = v44;
  *&v31[v29] = v44;
  v33(&v31[v30], v46, v26);
  v35 = v32;
  v36 = v34;
  sub_10002AFB8();
}

uint64_t sub_10001B054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_1000446CC();
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ExternalAuthenticatorUserInfoResponse(0) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v12 = sub_10004402C();
  v7[20] = v12;
  v13 = *(v12 - 8);
  v7[21] = v13;
  v14 = *(v13 + 64) + 15;
  v7[22] = swift_task_alloc();
  v15 = sub_10004407C();
  v7[23] = v15;
  v16 = *(v15 - 8);
  v7[24] = v16;
  v17 = *(v16 + 64) + 15;
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_10001B1FC, 0, 0);
}

uint64_t sub_10001B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  v11 = v10[22];
  v12 = v10[12];
  type metadata accessor for JSExternalAuthenticatorObject();
  v13 = sub_10001D77C();
  sub_100019CFC(v13, v14);
  v15 = async function pointer to ExternalPartnerAuthenticator.retrieveUserInfo()[1];
  v16 = swift_task_alloc();
  v10[26] = v16;
  *v16 = v10;
  v16[1] = sub_10001B410;
  sub_10001D7C0();
  sub_10001D86C();

  return ExternalPartnerAuthenticator.retrieveUserInfo()(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_10001B410()
{
  v2 = *v1;
  sub_10001D8AC();
  *v4 = v3;
  v5 = v2[26];
  *v4 = *v1;
  *(v3 + 216) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {
    v6 = sub_10001B838;
  }

  else
  {
    v6 = sub_10001B574;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001B574()
{
  sub_10001D904();
  v1 = v0[27];
  v2 = v0[14];
  (*(v0[24] + 16))(v0[19], v0[25], v0[23]);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v3 = sub_10001D83C();
  v4 = sub_10001D930(v3, xmmword_1000465C0);
  sub_10001DFA0(v4, v5);
  if (v1)
  {
    v7 = v0[24];
    v6 = v0[25];
    v8 = v0[23];
    v9 = v0[19];
    sub_10001D6C8();
    sub_10001D370();
    v10 = *(v7 + 8);
    v11 = sub_10001D7F8();
    v12(v11);
    sub_10001D854();
    v19 = v0[18];
    v20 = v0[14];
    sub_100003514(&qword_100060820, &unk_100046E90);
    v21 = sub_10001D83C();
    sub_10001D7D8(v21, v22, v23, v24, v25, v26, v27, v28, v50);
    v29 = sub_10001D77C();
    sub_100018B54(v29);
    sub_10001D760();
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];
    if (v20)
    {

      v33 = sub_10001D6B8();
      v34(v33);
      sub_10001D854();
      sub_10001D7C0();
      v42 = v0[18];
      v41 = v0[19];

      sub_10001D71C();
      goto LABEL_8;
    }

    v35 = v0[15];
    v36 = sub_10001D6B8();
    v37(v36);
    sub_10001D67C();
    sub_10001D72C();
    v39 = *(v38 + 16);
    sub_10001D788();
    v40();
  }

  else
  {
    v13 = v0[24];
    sub_10001D924();
    sub_10001D960();
    sub_10001D754(0);
    (*(v14 + 16))();
    sub_100004408(v0 + 7);
    v15 = sub_1000441AC();
    v16 = v0[25];
    v17 = v0[23];
    v18 = v0[19];

    sub_10001D6C8();
    sub_10001D370();
    v44 = *(v13 + 8);
    v45 = sub_10001D7F8();
    v46(v45);
  }

  sub_10001D7C0();
  v48 = v0[18];
  v47 = v0[19];

  sub_10001D70C();
LABEL_8:

  return v43();
}

uint64_t sub_10001B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  v11 = v10[27];
  v12 = v10[18];
  v13 = v10[14];
  sub_100003514(&qword_100060820, &unk_100046E90);
  v14 = sub_10001D83C();
  sub_10001D894(v14, xmmword_1000465C0);
  v15 = sub_10001D77C();
  sub_100018B54(v15);
  sub_10001D760();
  v17 = v10[17];
  v16 = v10[18];
  v18 = v10[16];
  if (v13)
  {

    v19 = sub_10001D6B8();
    v20(v19);
    sub_10001D854();
    sub_10001D7C0();
    v28 = v10[18];
    v27 = v10[19];

    sub_10001D71C();
  }

  else
  {
    v21 = v10[15];
    v22 = sub_10001D6B8();
    v23(v22);
    sub_10001D67C();
    sub_10001D72C();
    v25 = *(v24 + 16);
    sub_10001D788();
    v26();

    sub_10001D7C0();
    v39 = v10[18];
    v38 = v10[19];

    sub_10001D70C();
  }

  sub_10001D86C();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_10001BA2C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1000448BC();
  v9 = sub_1000061E8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  sub_10004489C();
  if (!v3)
  {
    v4 = sub_1000448AC();
    (*(v11 + 8))(v15, v8);
  }

  return v4;
}

uint64_t sub_10001BB68(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v44 = a5;
  v45 = a1;
  v41 = a3;
  v39 = a2;
  v42 = sub_1000441BC();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  v7 = __chkstk_darwin(v42);
  v43 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v38 - v8;
  v10 = sub_100003514(&qword_100060A50, &unk_100047080);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v38 - v12;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v14 = sub_100043DBC();
  v38[2] = sub_1000060A4(v14, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v15 = *(sub_100043D4C() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v46[3] = type metadata accessor for JSExternalAuthenticatorObject();
  v46[0] = a4;
  v18 = a4;
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v46);
  sub_100043CFC();
  sub_100043D9C();

  v21 = sub_100044A5C();
  v38[1] = v13;
  sub_10000464C(v13, 1, 1, v21);
  v22 = v40;
  v23 = *(v40 + 16);
  v38[0] = v9;
  v24 = v9;
  v25 = v42;
  v23(v24, v39, v42);
  v26 = v43;
  v23(v43, v41, v25);
  v27 = *(v22 + 80);
  v28 = (v27 + 40) & ~v27;
  v29 = (v6 + v27 + v28) & ~v27;
  v30 = (v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v44;
  *(v31 + 4) = v44;
  v33 = *(v22 + 32);
  v33(&v31[v28], v38[0], v25);
  v33(&v31[v29], v26, v25);
  v34 = v45;
  *&v31[v30] = v45;
  v35 = v32;
  v36 = v34;
  sub_10002AFB8();
}