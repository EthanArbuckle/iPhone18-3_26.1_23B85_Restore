uint64_t sub_100002370()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014B568);
  sub_100003D38(v0, qword_10014B568);
  return sub_100100AD4();
}

__n128 initializeBufferWithCopyOfBuffer for Coordinate(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Coordinate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Coordinate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_1000024B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000024C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000024E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 sub_100002548(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002554(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002574(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_1000025DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_10000269C()
{
  sub_100101F84();
  swift_getWitnessTable();
  sub_100100844();
  return sub_100101FE4();
}

uint64_t sub_100002704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100100FD4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100002780(_DWORD *a1, int *a2)
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

_DWORD *sub_1000027B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1000027DC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1000028DC(uint64_t a1, uint64_t a2)
{
  result = sub_1000FFAB4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002930(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000FFAC4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100002988@<X0>(void *a1@<X8>)
{
  result = sub_1000FFAD4();
  *a1 = v3;
  return result;
}

uint64_t sub_1000029B8(uint64_t a1, uint64_t a2)
{
  result = sub_1001013B4();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_100002A0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001013C4();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_100002A64@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1001013D4();
  *a1 = v3;
  return result;
}

uint64_t sub_100002A94(uint64_t a1, id *a2)
{
  result = sub_100100FB4();
  *a2 = 0;
  return result;
}

uint64_t sub_100002B0C(uint64_t a1, id *a2)
{
  v3 = sub_100100FC4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002B8C@<X0>(void *a1@<X8>)
{
  sub_100100FD4();
  v2 = sub_100100F94();

  *a1 = v2;
  return result;
}

uint64_t sub_100002BD0()
{
  swift_getWitnessTable();

  return sub_100100834();
}

uint64_t sub_100002C5C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_100023198(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002C9C()
{
  sub_100002F60(&qword_10014BD50, type metadata accessor for FileProtectionType);
  sub_100002F60(&qword_10014BD58, type metadata accessor for FileProtectionType);

  return sub_100101DF4();
}

uint64_t sub_100002D58()
{
  sub_100002F60(&qword_10014BD70, type metadata accessor for Key);
  sub_100002F60(&qword_10014BD78, type metadata accessor for Key);

  return sub_100101DF4();
}

uint64_t sub_100002E14()
{
  sub_100002F60(&qword_10014BA50, type metadata accessor for DynamicRange);
  sub_100002F60(&qword_10014BA58, type metadata accessor for DynamicRange);

  return sub_100101DF4();
}

uint64_t sub_100002F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002FA8()
{
  sub_100002F60(&qword_10014BDB8, type metadata accessor for AttributeName);
  sub_100002F60(&qword_10014BDC0, type metadata accessor for AttributeName);

  return sub_100101DF4();
}

uint64_t sub_100003064()
{
  sub_100002F60(&qword_10014BD80, type metadata accessor for FeatureKey);
  sub_100002F60(&qword_10014BD88, type metadata accessor for FeatureKey);

  return sub_100101DF4();
}

uint64_t sub_100003120()
{
  sub_100002F60(&qword_10014BDA8, type metadata accessor for TraitKey);
  sub_100002F60(&qword_10014BDB0, type metadata accessor for TraitKey);

  return sub_100101DF4();
}

double sub_1000031DC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000031E8()
{
  sub_100002F60(&qword_10014BD90, type metadata accessor for Weight);
  sub_100002F60(&qword_10014BD98, type metadata accessor for Weight);
  sub_100004A8C();
  return sub_100101DF4();
}

uint64_t sub_1000032B0()
{
  sub_100002F60(&qword_10014BE28, type metadata accessor for SystemDesign);
  sub_100002F60(&unk_10014BE30, type metadata accessor for SystemDesign);

  return sub_100101DF4();
}

uint64_t sub_10000336C()
{
  sub_100002F60(&qword_10014BD20, type metadata accessor for MKPointOfInterestCategory);
  sub_100002F60(&qword_10014BD28, type metadata accessor for MKPointOfInterestCategory);

  return sub_100101DF4();
}

uint64_t sub_100003428()
{
  sub_100002F60(&qword_10014BD40, type metadata accessor for URLResourceKey);
  sub_100002F60(&qword_10014BD48, type metadata accessor for URLResourceKey);

  return sub_100101DF4();
}

uint64_t sub_1000034E4()
{
  sub_100002F60(&qword_10014BD00, type metadata accessor for URLFileProtection);
  sub_100002F60(&qword_10014BD08, type metadata accessor for URLFileProtection);

  return sub_100101DF4();
}

_DWORD *sub_1000035A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_1000035B0@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000035BC()
{
  sub_100002F60(&qword_10014BD30, type metadata accessor for UILayoutPriority);
  sub_100002F60(&qword_10014BD38, type metadata accessor for UILayoutPriority);
  return sub_100101DF4();
}

uint64_t sub_100003678()
{
  sub_100002F60(&qword_10014BD10, type metadata accessor for FileAttributeKey);
  sub_100002F60(&qword_10014BD18, type metadata accessor for FileAttributeKey);

  return sub_100101DF4();
}

uint64_t sub_100003734@<X0>(void *a1@<X8>)
{
  v2 = sub_100100F94();

  *a1 = v2;
  return result;
}

uint64_t sub_10000377C()
{
  sub_100002F60(&qword_10014BD60, type metadata accessor for OptionKey);
  sub_100002F60(&qword_10014BD68, type metadata accessor for OptionKey);

  return sub_100101DF4();
}

void sub_100003840()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_100101FC4(*&v1);
}

uint64_t sub_100003894()
{
  sub_100100FD4();
  v0 = sub_100101124();

  return v0;
}

uint64_t sub_1000038D0()
{
  sub_100100FD4();
  sub_100101074();
}

Swift::Int sub_100003924()
{
  sub_100100FD4();
  sub_100101F84();
  sub_100101074();
  v0 = sub_100101FE4();

  return v0;
}

void sub_1000039A0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_100101FB4(LODWORD(v1));
}

uint64_t sub_1000039DC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_100003A54()
{
  v0 = sub_100100FD4();
  v2 = v1;
  if (v0 == sub_100100FD4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100101E84();
  }

  return v5 & 1;
}

void sub_100003AF0(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 >= a1)
  {
    v13 = 1.0 / a2 * a1;
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    v14 = CGRectGetMidY(v21) + v13 * -0.5;
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    if (v14 >= 1.0 - v13)
    {
      MinY = 1.0 - v13;
    }

    else
    {
      MinY = v14;
    }

    v22.origin.x = a3;
    v22.origin.y = a4;
    v22.size.width = a5;
    v22.size.height = a6;
    if (CGRectGetMinY(v22) < MinY)
    {
      v23.origin.x = a3;
      v23.origin.y = a4;
      v23.size.width = a5;
      v23.size.height = a6;
      MinY = CGRectGetMinY(v23);
    }

    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    if (v13 + MinY < CGRectGetMaxY(v24))
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMaxY(v25);
    }
  }

  else
  {
    v10 = a2 / a1;
    v16.origin.x = a3;
    v16.origin.y = a4;
    v16.size.width = a5;
    v16.size.height = a6;
    v11 = CGRectGetMidX(v16) + v10 * -0.5;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    if (v11 >= 1.0 - v10)
    {
      MinX = 1.0 - v10;
    }

    else
    {
      MinX = v11;
    }

    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (CGRectGetMinX(v17) < MinX)
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      MinX = CGRectGetMinX(v18);
    }

    v19.origin.x = a3;
    v19.origin.y = a4;
    v19.size.width = a5;
    v19.size.height = a6;
    if (v10 + MinX < CGRectGetMaxX(v19))
    {
      v20.origin.x = a3;
      v20.origin.y = a4;
      v20.size.width = a5;
      v20.size.height = a6;
      CGRectGetMaxX(v20);
    }
  }
}

uint64_t *sub_100003CD4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003D38(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003DE0(uint64_t a1, int a2)
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

uint64_t sub_100003E00(uint64_t result, int a2, int a3)
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

__n128 sub_100003EC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100003EDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003EFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_100004A8C()
{
  result = qword_10014BDA0;
  if (!qword_10014BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014BDA0);
  }

  return result;
}

void sub_100004B44(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100004DD8()
{
  sub_100101A94();
  result = sub_100101A94();
  if (v1 <= 0x3F)
  {
    result = _s8MetadataC5InputOMa();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100004EC8()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014BF00);
  v1 = sub_100003D38(v0, qword_10014BF00);
  if (qword_10014B888 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100004F90(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100004FD0(a1);
  return v2;
}

uint64_t sub_100004FD0(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = sub_100101A94();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + *(*v1 + 112)) = xmmword_10010BC70;
  v5 = *(*v1 + 120);
  v6 = _s8MetadataC5InputOMa();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

uint64_t sub_100005110()
{
  v1 = v0;
  v2 = (v0 + *(*v0 + 112));
  v3 = *v2;
  v4 = v2[1];
  v5 = *v2;
  if (v4 >> 60 == 11)
  {
    v5 = sub_1000051B0(v1);
    v6 = *v2;
    v7 = v2[1];
    *v2 = v5;
    v2[1] = v8;
    sub_10000736C(v5, v8);
    sub_100007380(v6, v7);
  }

  sub_100007394(v3, v4);
  return v5;
}

uint64_t sub_1000051B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - v5;
  v7 = _s8MetadataC5InputOMa();
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1 + *(v2 + 120), v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v9;
  }

  (*(v4 + 32))(v6, v9, v3);
  v11 = sub_100100E74();
  (*(v4 + 8))(v6, v3);
  return v11;
}

uint64_t sub_1000053B0()
{
  v1 = *(*v0 + 104);
  sub_100101A94();
  v2 = sub_100101A94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007380(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  v3 = *(*v0 + 120);
  v4 = _s8MetadataC5InputOMa();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1000054E4()
{
  sub_1000053B0();

  return swift_deallocClassInstance();
}

uint64_t sub_100005574()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000055E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1000056FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

BOOL sub_1000058B8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  if (v2)
  {
  }

  return v2 == 0;
}

void sub_100005900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100100034();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000FF804();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001007A4();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin(v9);
  v82 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000FFB34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(a2 + 32))(a1, a2);
  if (v15)
  {
    v16 = sub_100005110();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v19 = *((swift_isaMask & *v2) + 0x140);
  v20 = (v19)(v15);
  v85 = v18 >> 60;
  if (v20)
  {
    v21 = v20;
    v22 = [v20 assetMetaData];

    if (v22)
    {
      v23 = sub_1000FF564();
      v75 = v16;
      v25 = v24;

      v26 = v25;
      v16 = v75;
      sub_1000064C0(v23, v26);
      if (v85 >= 0xF)
      {
        if (qword_10014B580 != -1)
        {
          swift_once();
        }

        v27 = sub_100100AE4();
        sub_100003D38(v27, qword_10014BF00);
        v28 = v3;
        v29 = sub_100100AC4();
        v72 = sub_1001015C4();
        v73 = v29;
        v30 = os_log_type_enabled(v29, v72);
        v74 = v28;
        if (v30)
        {
          v31 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v86 = v70;
          *v31 = 136446466;
          sub_1001007D4();
          v71 = v18;
          v32 = v28;
          sub_100007324(&qword_10014C038, &type metadata accessor for AssetType);
          v33 = sub_100101E44();
          v35 = v34;

          v36 = sub_10007A774(v33, v35, &v86);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2082;
          sub_1000FF874();
          sub_100007324(&qword_10014C018, &type metadata accessor for UUID);
          v18 = v71;
          v37 = sub_100101E44();
          v39 = sub_10007A774(v37, v38, &v86);

          *(v31 + 14) = v39;
          v40 = v73;
          _os_log_impl(&_mh_execute_header, v73, v72, "Setting existing non-nil assetMetaData to nil. Asset type: %{public}s, id: %{public}s", v31, 0x16u);
          swift_arrayDestroy();

          v16 = v75;
        }

        else
        {
        }

        (*(v12 + 104))(v14, enum case for JournalFeatureFlags.debug(_:), v11);
        v41 = sub_1000FFB24();
        (*(v12 + 8))(v14, v11);
        if (v41)
        {
          v42 = 0x6E776F6E6B6E55;
          v86 = 0;
          v87 = 0xE000000000000000;
          sub_100101C64(148);
          v88._countAndFlagsBits = 0x7974207465737341;
          v88._object = 0xEC000000203A6570;
          sub_1001010B4(v88);
          v89._countAndFlagsBits = sub_1001007C4();
          sub_1001010B4(v89);

          v90._countAndFlagsBits = 0x492074657373410ALL;
          v90._object = 0xEB00000000203A44;
          sub_1001010B4(v90);
          sub_1000FF874();
          sub_100007324(&qword_10014C018, &type metadata accessor for UUID);
          v91._countAndFlagsBits = sub_100101E44();
          sub_1001010B4(v91);

          v92._countAndFlagsBits = 0x617473656D69740ALL;
          v92._object = 0xEC000000203A706DLL;
          sub_1001010B4(v92);
          v43 = v76;
          sub_1000FF7F4();
          sub_100007324(&qword_10014C020, &type metadata accessor for Date);
          v44 = v78;
          v93._countAndFlagsBits = sub_100101E44();
          sub_1001010B4(v93);

          (*(v77 + 8))(v43, v44);
          v94._object = 0x80000001001045D0;
          v94._countAndFlagsBits = 0xD000000000000033;
          sub_1001010B4(v94);
          v45 = v19();
          if (v45 && (v46 = v45, v47 = [v45 entry], v46, v47))
          {
            v48 = [v47 debugDescription];

            v49 = sub_100100FD4();
            v51 = v50;

            v52._countAndFlagsBits = v49;
          }

          else
          {
            v51 = 0xE700000000000000;
            v52._countAndFlagsBits = 0x6E776F6E6B6E55;
          }

          v52._object = v51;
          sub_1001010B4(v52);

          v95._object = 0x8000000100104610;
          v95._countAndFlagsBits = 0xD000000000000033;
          sub_1001010B4(v95);
          v53 = v19();
          if (v53)
          {
            v54 = v53;
            v55 = [v53 debugDescription];

            v42 = sub_100100FD4();
            v57 = v56;
          }

          else
          {
            v57 = 0xE700000000000000;
          }

          v96._countAndFlagsBits = v42;
          v96._object = v57;
          sub_1001010B4(v96);

          v97._countAndFlagsBits = 10;
          v97._object = 0xE100000000000000;
          sub_1001010B4(v97);
          (*(v80 + 104))(v79, enum case for TapToRadarUtilities.RadarClassification.crashHangDataLoss(_:), v81);
          v58 = v82;
          sub_100100794();
          v59 = [objc_opt_self() defaultCenter];
          if (qword_10014B770 != -1)
          {
            swift_once();
          }

          v81 = qword_100158700;
          sub_100007210(&qword_10014C028);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10010BC80;
          v86 = 0x6F666E49727474;
          v87 = 0xE700000000000000;
          sub_100101BF4();
          v61 = v84;
          *(inited + 96) = v84;
          v62 = sub_100007258((inited + 72));
          v63 = v83;
          (*(v83 + 16))(v62, v58, v61);
          sub_10004D288(inited);
          swift_setDeallocating();
          sub_1000072BC(inited + 32);
          isa = sub_100100E44().super.isa;

          [v59 postNotificationName:v81 object:0 userInfo:isa];

          (*(v63 + 8))(v58, v61);
          v16 = v75;
        }
      }
    }
  }

  v65 = v19();
  if (v65)
  {
    v66 = v65;
    if (v85 <= 0xE)
    {
      sub_100006514(v16, v18);
      v67 = sub_1000FF554().super.isa;
      sub_1000064AC(v16, v18);
    }

    else
    {
      v67 = 0;
    }

    [v66 setAssetMetaData:v67];
  }

  v68 = v19();
  if (v68)
  {
    v69 = v68;
    [v68 setIsUploadedToCloud:0];
    sub_1000064AC(v16, v18);
  }

  else
  {
    sub_1000064AC(v16, v18);
  }
}

uint64_t sub_1000064AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000064C0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000064C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006514(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v7 = sub_100101824();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_100101284();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[8] = v8;
  v5[9] = v10;

  return _swift_task_switch(sub_100006668, v8, v10);
}

uint64_t sub_100006668()
{
  v28 = v0;
  v1 = (*((swift_isaMask & **(v0 + 32)) + 0x128))();
  *(v0 + 80) = v1;
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_allocObject();
    *(v0 + 88) = v6;
    *(v6 + 16) = *(v0 + 16);
    *(v6 + 32) = v5;
    (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v7 = v5;
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_100006A3C;
    v9 = *(v0 + 56);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_100007400, v6, &type metadata for () + 8);
  }

  else
  {
    if (qword_10014B580 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 32);
    v11 = sub_100100AE4();
    sub_100003D38(v11, qword_10014BF00);
    v12 = v10;
    v13 = sub_100100AC4();
    v14 = sub_1001015B4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 32);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v17 = 136446466;
      sub_1001007D4();
      sub_100007324(&qword_10014C038, &type metadata accessor for AssetType);
      v18 = sub_100101E44();
      v20 = v19;

      v21 = sub_10007A774(v18, v20, &v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      sub_1000FF874();
      sub_100007324(&qword_10014C018, &type metadata accessor for UUID);
      v22 = sub_100101E44();
      v24 = sub_10007A774(v22, v23, &v27);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Asset doesn't have a managed object context. Won't save metadata for %{public}s asset with id: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_100006A3C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[8];
    v5 = v2[9];

    return _swift_task_switch(sub_100006B90, v4, v5);
  }
}

uint64_t sub_100006B90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006BF8(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0x140))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 assetMetaData];

    if (v7)
    {
      v9 = sub_1000FF564();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    v16 = v9;
    v17 = v11;
    __chkstk_darwin(v8);
    v15[2] = a1;
    v15[3] = a2;
    sub_100007210(&qword_10014C040);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v12 = _s8MetadataCMa();
    sub_100006F68(sub_1000073A8, v15, &type metadata for Never, v12, v13, &v18);
    sub_1000064AC(v16, v17);
    v5 = v18;
  }

  return (*(a2 + 40))(v5, a1, a2);
}

uint64_t sub_100006DF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = _s8MetadataC5InputOMa();
  __chkstk_darwin(v4);
  v6 = (&v11 - v5);
  v8 = *a1;
  v7 = a1[1];
  _s8MetadataCMa();
  *v6 = v8;
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  sub_100004FD0(v6);
  *a2 = v9;
  return sub_100006514(v8, v7);
}

uint64_t sub_100006F68@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_100007210(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100007258(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000072BC(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014C030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000736C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006514(a1, a2);
  }

  return a1;
}

uint64_t sub_100007380(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1000064AC(a1, a2);
  }

  return a1;
}

uint64_t sub_100007394(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_10000736C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000073C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007460(uint64_t a1)
{
  v2[3] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = sub_100101284();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[4] = v3;
  v2[5] = v5;

  return _swift_task_switch(sub_1000074F0, v3, v5);
}

uint64_t sub_1000074F0()
{
  v1 = v0[3];
  v2 = *(v1 + qword_10014C058);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_100007210(&qword_10014C180);
  *v4 = v0;
  v4[1] = sub_1000075F8;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10010BDB8, v3, v5);
}

uint64_t sub_1000075F8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_100007730;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_100007714;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100007730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100007794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000077B8, 0, 0);
}

uint64_t sub_1000077B8()
{
  v1 = *(*(v0 + 32) + qword_10014C048);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100007864;

  return CKDatabase.records(for:desiredKeys:)(v1, 0);
}

uint64_t sub_100007864(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_1000079B0, 0, 0);
  }
}

void sub_100007A04()
{

  v1 = *(v0 + qword_10014C058);
}

id sub_100007A54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchRecordDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100007A8C(uint64_t a1)
{

  v2 = *(a1 + qword_10014C058);
}

uint64_t type metadata accessor for BatchRecordDownloadOperation()
{
  result = qword_10014C088;
  if (!qword_10014C088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007B8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
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

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_100007C20, v4, v6);
}

uint64_t sub_100007C20()
{
  v1 = v0[4];
  v2 = *(v1 + qword_10014C058);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_100007210(&qword_10014C180);
  *v4 = v0;
  v4[1] = sub_100007D28;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10010BDA8, v3, v5);
}

uint64_t sub_100007D28()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100007E64;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100007E44;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100007E64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100007ED0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008124;

  return sub_100007794(a1, a2, v6);
}

uint64_t sub_100007F80(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008030;

  return sub_100007794(a1, a2, v6);
}

uint64_t sub_100008030()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008128@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C228);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C238);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C238);
  v13 = sub_100007210(&qword_10014C208);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C208);
  }

  sub_10000FFB4(v11, &qword_10014C238);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000FFF54();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000FFF54();
    sub_1000100E4(&qword_10014C1C0, &type metadata accessor for MusicAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C208);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C238);
  return swift_endAccess();
}

uint64_t sub_1000084CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C240);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C248);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C248);
  v13 = sub_100007210(&qword_10014C250);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C250);
  }

  sub_10000FFB4(v11, &qword_10014C248);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000FFED4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000FFED4();
    sub_1000100E4(&qword_10014C258, &type metadata accessor for AudioAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C250);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C248);
  return swift_endAccess();
}

uint64_t sub_100008870@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C3D0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C3D8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C3D8);
  v13 = sub_100007210(&qword_10014C3E0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C3E0);
  }

  sub_10000FFB4(v11, &qword_10014C3D8);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C3D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100100384();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_100100384();
    sub_1000100E4(&qword_10014C3E8, &type metadata accessor for MultiPinMapAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C3E0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C3D8);
  return swift_endAccess();
}

uint64_t sub_100008C14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C3F0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C3F8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C3F8);
  v13 = sub_100007210(&qword_10014C400);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C400);
  }

  sub_10000FFB4(v11, &qword_10014C3F8);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100100214();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_100100214();
    sub_1000100E4(&qword_10014C408, &type metadata accessor for GenericMapAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C400);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C3F8);
  return swift_endAccess();
}

uint64_t sub_100008FB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C3B0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C3B8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C3B8);
  v13 = sub_100007210(&qword_10014C3C0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C3C0);
  }

  sub_10000FFB4(v11, &qword_10014C3B8);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100100554();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_100100554();
    sub_1000100E4(&qword_10014C3C8, &type metadata accessor for WorkoutRouteAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C3C0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C3B8);
  return swift_endAccess();
}

uint64_t sub_10000935C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C348);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C350);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C350);
  v13 = sub_100007210(&qword_10014C358);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C358);
  }

  sub_10000FFB4(v11, &qword_10014C350);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C348);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000FFE34();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000FFE34();
    sub_1000100E4(&qword_10014C360, &type metadata accessor for LinkAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C358);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C350);
  return swift_endAccess();
}

uint64_t sub_100009700@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C268);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C270);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C270);
  v13 = sub_100007210(&qword_10014C278);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C278);
  }

  sub_10000FFB4(v11, &qword_10014C270);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100100464();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_100100464();
    sub_1000100E4(&qword_10014C280, &type metadata accessor for WorkoutIconAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C278);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C270);
  return swift_endAccess();
}

uint64_t sub_100009AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C288);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C2A0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C2A0);
  v13 = sub_100007210(&qword_10014C298);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C298);
  }

  sub_10000FFB4(v11, &qword_10014C2A0);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C288);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1001003C4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1001003C4();
    sub_1000100E4(&qword_10014C2A8, &type metadata accessor for StateOfMindAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C298);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C2A0);
  return swift_endAccess();
}

uint64_t sub_100009E48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C388);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C3A0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C3A0);
  v13 = sub_100007210(&qword_10014C398);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C398);
  }

  sub_10000FFB4(v11, &qword_10014C3A0);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100100264();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_100100264();
    sub_1000100E4(&qword_10014C3A8, &type metadata accessor for ReflectionAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C398);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C3A0);
  return swift_endAccess();
}

uint64_t sub_10000A1EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C510);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C518);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C518);
  v13 = sub_100007210(&qword_10014C520);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C520);
  }

  sub_10000FFB4(v11, &qword_10014C518);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100100004();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_100100004();
    sub_1000100E4(&qword_10014C528, &type metadata accessor for VisitAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C520);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C518);
  return swift_endAccess();
}

uint64_t sub_10000A590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C2B0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C2C0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C2C0);
  v13 = sub_100007210(&qword_10014C2B8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C2B8);
  }

  sub_10000FFB4(v11, &qword_10014C2C0);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C2B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1001004B4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1001004B4();
    sub_1000100E4(&qword_10014C2C8, &type metadata accessor for PhotoLibraryAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C2B8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C2C0);
  return swift_endAccess();
}

uint64_t sub_10000A934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C320);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C338);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C338);
  v13 = sub_100007210(&qword_10014C330);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C330);
  }

  sub_10000FFB4(v11, &qword_10014C338);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1001000B4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1001000B4();
    sub_1000100E4(&qword_10014C340, &type metadata accessor for ContactAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C330);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C338);
  return swift_endAccess();
}

uint64_t sub_10000ACD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C410);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C428);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C428);
  v13 = sub_100007210(&qword_10014C420);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C420);
  }

  sub_10000FFB4(v11, &qword_10014C428);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1001000D4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1001000D4();
    sub_1000100E4(&qword_10014C430, &type metadata accessor for DrawingAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C420);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C428);
  return swift_endAccess();
}

uint64_t sub_10000B07C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C2D0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C2E8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C2E8);
  v13 = sub_100007210(&qword_10014C2E0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C2E0);
  }

  sub_10000FFB4(v11, &qword_10014C2E8);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C2D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100100114();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_100100114();
    sub_1000100E4(&qword_10014C2F0, &type metadata accessor for PodcastAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C2E0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C2E8);
  return swift_endAccess();
}

uint64_t sub_10000B420@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C448);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C460);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C460);
  v13 = sub_100007210(&qword_10014C458);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C458);
  }

  sub_10000FFB4(v11, &qword_10014C460);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C448);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100100164();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_100100164();
    sub_1000100E4(&qword_10014C468, &type metadata accessor for ConfettiAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C458);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C460);
  return swift_endAccess();
}

uint64_t sub_10000B7C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C368);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C370);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C370);
  v13 = sub_100007210(&qword_10014C378);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C378);
  }

  sub_10000FFB4(v11, &qword_10014C370);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C368);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1001005F4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1001005F4();
    sub_1000100E4(&qword_10014C380, &type metadata accessor for MotionActivityAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C378);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C370);
  return swift_endAccess();
}

uint64_t sub_10000BB68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C470);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C488);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C488);
  v13 = sub_100007210(&qword_10014C480);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C480);
  }

  sub_10000FFB4(v11, &qword_10014C488);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C470);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1001006B4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1001006B4();
    sub_1000100E4(&qword_10014C490, &type metadata accessor for ThirdPartyMediaAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C480);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C488);
  return swift_endAccess();
}

uint64_t sub_10000BF0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C2F8);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100007210(&qword_10014C310);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_100010014(v1 + v12, v11, &qword_10014C310);
  v13 = sub_100007210(&qword_10014C308);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10001012C(v11, a1, &qword_10014C308);
  }

  sub_10000FFB4(v11, &qword_10014C310);
  sub_100010014(v1 + *(*v1 + 120), v5, &qword_10014C2F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000FFDE4();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    sub_1000FFDE4();
    sub_1000100E4(&qword_10014C318, &type metadata accessor for BookAssetMetadata);
    sub_1000FF544();
    sub_1000064C0(v19, v18);
  }

  sub_100010014(a1, v9, &qword_10014C308);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10001007C(v9, v1 + v12, &qword_10014C310);
  return swift_endAccess();
}

uint64_t sub_10000C2B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C228);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension10MusicAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension10MusicAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C230);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C208);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C228);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100008128(a1);
  }

  else
  {
    v17 = sub_1000FFF54();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000C4EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C240);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension10AudioAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension10AudioAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C260);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C250);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C240);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_1000084CC(a1);
  }

  else
  {
    v17 = sub_1000FFED4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000C72C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C3F0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension15GenericMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension15GenericMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C498);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C400);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C3F0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100008C14(a1);
  }

  else
  {
    v17 = sub_100100214();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000C96C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C3D0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C4A0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C3E0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C3D0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100008870(a1);
  }

  else
  {
    v17 = sub_100100384();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000CBAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C3B0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension17WorkoutRouteAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension17WorkoutRouteAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C4C0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C3C0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C3B0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100008FB8(a1);
  }

  else
  {
    v17 = sub_100100554();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000CDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C288);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension16StateOfMindAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension16StateOfMindAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C290);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C298);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C288);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100009AA4(a1);
  }

  else
  {
    v17 = sub_1001003C4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000D02C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C388);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension15ReflectionAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension15ReflectionAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C390);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C398);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C388);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100009E48(a1);
  }

  else
  {
    v17 = sub_100100264();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000D26C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C2B0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&unk_10014EEA0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C2B8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C2B0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000A590(a1);
  }

  else
  {
    v17 = sub_1001004B4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000D4AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C2B0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension10VideoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension10VideoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&unk_10014EEA0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C2B8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C2B0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000A590(a1);
  }

  else
  {
    v17 = sub_1001004B4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000D6EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C320);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension12ContactAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension12ContactAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C328);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C330);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C320);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000A934(a1);
  }

  else
  {
    v17 = sub_1001000B4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000D92C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C410);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension12DrawingAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension12DrawingAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C418);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C420);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C410);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000ACD8(a1);
  }

  else
  {
    v17 = sub_1001000D4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000DB6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C2D0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension12PodcastAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension12PodcastAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C2D8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C2E0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C2D0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000B07C(a1);
  }

  else
  {
    v17 = sub_100100114();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000DDAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C448);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension13ConfettiAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension13ConfettiAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C450);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C458);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C448);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000B420(a1);
  }

  else
  {
    v17 = sub_100100164();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000DFEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C2B0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension14LivePhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension14LivePhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&unk_10014EEA0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C2B8);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C2B0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000A590(a1);
  }

  else
  {
    v17 = sub_1001004B4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000E22C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C470);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension20ThirdPartyMediaAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension20ThirdPartyMediaAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C478);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C480);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C470);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000BB68(a1);
  }

  else
  {
    v17 = sub_1001006B4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_10000E46C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014C2F8);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC21JournalShareExtension9BookAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension9BookAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000FF564();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_100007210(&qword_10014C300);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_100007210(&qword_10014C308);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_10010BC70;
      sub_10001012C(v5, v13 + *(*v13 + 120), &qword_10014C2F8);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10000BF0C(a1);
  }

  else
  {
    v17 = sub_1000FFDE4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

id sub_10000E6BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MusicAsset()
{
  result = qword_10014C1B0;
  if (!qword_10014C1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000E7C4()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v71 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100100F84();
  __chkstk_darwin(v3 - 8);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&unk_10014D640);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v9 - 8);
  v68 = &v66 - v10;
  v11 = sub_100100A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014C208);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v18 = sub_1000FFF54();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  sub_10000C2B0(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000FFB4(v17, &qword_10014C208);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_100100994();
  v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v69 = [v23 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_1000FFF24();
  v25 = v21;
  v67 = v19;
  if (v26)
  {
    v27 = v71;
LABEL_6:
    v29 = v69;
    v30 = sub_100100F94();

    goto LABEL_7;
  }

  sub_1000FFF44();
  v27 = v71;
  if (v28)
  {
    goto LABEL_6;
  }

  v30 = 0;
  v29 = v69;
LABEL_7:
  [v29 setDisplayName:v30];

  v73 = sub_1000FFF44();
  v74[0] = v31;
  v32 = 0;
  v74[1] = sub_1000FFF14();
  v74[2] = v33;
  v34 = &_swiftEmptyArrayStorage;
LABEL_8:
  v35 = &v74[2 * v32];
  while (++v32 != 3)
  {
    v36 = v35 + 2;
    v37 = *v35;
    v35 += 2;
    if (v37)
    {
      v66 = v25;
      v71 = v18;
      v38 = v5;
      v39 = v27;
      v40 = *(v36 - 3);

      v41 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_10000F02C(0, *(v34 + 2) + 1, 1, v34);
      }

      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        v34 = sub_10000F02C((v42 > 1), v43 + 1, 1, v34);
      }

      *(v34 + 2) = v43 + 1;
      v44 = &v34[16 * v43];
      *(v44 + 4) = v40;
      *(v44 + 5) = v37;
      v8 = v41;
      v27 = v39;
      v5 = v38;
      v18 = v71;
      v25 = v66;
      goto LABEL_8;
    }
  }

  sub_100007210(&qword_10014C210);
  swift_arrayDestroy();
  v72 = v34;
  sub_100007210(&unk_10014D670);
  sub_10000F138();
  sub_100100EA4();

  v45 = sub_100100F94();

  v22 = v69;
  [v69 setContentDescription:v45];

  v46 = v68;
  sub_1000FFF34();
  v47 = sub_1000FF514();
  v48 = *(v47 - 8);
  v50 = 0;
  if ((*(v48 + 48))(v46, 1, v47) != 1)
  {
    sub_1000FF474(v49);
    v50 = v51;
    (*(v48 + 8))(v46, v47);
  }

  [v22 setThumbnailURL:v50];

  v52 = *(v70 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v52 && (v53 = [v52 entry]) != 0)
  {
    v54 = v53;
    sub_1000FFBA4();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = sub_1000FF804();
  (*(*(v56 - 8) + 56))(v8, v55, 1, v56);
  sub_100100F14();
  sub_1000FF8A4();
  v57 = sub_100101004();
  v59 = v58;
  sub_100007210(&qword_10014C220);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10010BC80;
  v61 = sub_100081080(v57, v59, v8);
  v63 = v62;

  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  v64 = sub_1001011C4().super.isa;

  [v22 setAlternateNames:v64];

  sub_10000FFB4(v8, &unk_10014D640);
  (*(v67 + 8))(v25, v18);
  return v22;
}

char *sub_10000F02C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007210(&qword_10014C220);
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

unint64_t sub_10000F138()
{
  result = qword_10014C218;
  if (!qword_10014C218)
  {
    sub_10000F19C(&unk_10014D670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014C218);
  }

  return result;
}

uint64_t sub_10000F19C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

double *sub_10000F20C(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007210(&qword_10014C548);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_100007210(&qword_10014C550);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000F3A4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007210(&qword_10014C4B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000F4CC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007210(&qword_10014C4F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_10000F5D0(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007210(&qword_10014C500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
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

    a4[2] = 0.0;
  }

  else
  {
    sub_100007210(&qword_10014C508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000F72C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007210(&qword_10014C4A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000F860(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
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

  v9 = *(a4 + 16);
  if (v8 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100007210(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = (v11 + 4);
  v15 = (a4 + 32);
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

double *sub_10000F984(double *result, int64_t a2, char a3, double *a4)
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
    sub_100007210(&qword_10014C4D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_100007210(&qword_10014C4E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000FAFC(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
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

  sub_100007210(a5);
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

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_10000FCD8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100007210(&qword_10014C220);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

double *sub_10000FDAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
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

  sub_100007210(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
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

double *sub_10000FEA8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100007210(&qword_10014C538);
  v4 = *(sub_100007210(&qword_10014C540) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FFB4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100007210(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100010014(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100007210(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001007C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100007210(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000100E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001012C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100007210(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010194()
{
  type metadata accessor for HealthManager();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(HKHealthStore) init];
  sub_100010F50(0, &qword_10014C648);
  *(v0 + 24) = sub_100101614();
  result = sub_100100AD4();
  qword_100158438 = v0;
  return result;
}

id sub_1000103FC(char a1)
{
  if (![objc_opt_self() isHealthDataAvailable])
  {
    v5 = sub_100100AC4();
    v9 = sub_1001015B4();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, v9, "HealthKit is not available on this device", v10, 2u);
      goto LABEL_8;
    }

LABEL_9:

    return 0;
  }

  sub_100010F50(0, &qword_10014C650);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (a1)
  {
    v4 = [ObjCClassFromMetadata categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
    if (!v4)
    {
      v5 = sub_100100AC4();
      v6 = sub_1001015B4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v14 = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_10007A774(0x4D6C7566646E696DLL, 0xEE00736574756E69, &v14);
        _os_log_impl(&_mh_execute_header, v5, v6, "Couldn't create a HKSampleType for %s", v7, 0xCu);
        sub_10001100C(v8);

LABEL_8:

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = [ObjCClassFromMetadata stateOfMindType];
  }

  v12 = [v1[2] authorizationStatusForType:v4];
  if (v12)
  {
    v13 = v12;
    if ([v1 hasSeenBothHealthTCCs])
    {
      [v1 setHasSeenBothHealthTCCs:1];
    }

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100010654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[18] = a3;
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[21] = v6;
  v5[22] = v8;

  return _swift_task_switch(sub_1000106E8, v6, v8);
}

uint64_t sub_1000106E8()
{
  if ([objc_opt_self() isHealthDataAvailable])
  {
    sub_100010F50(0, &qword_10014C650);
    v1 = [swift_getObjCClassFromMetadata() categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
    v0[23] = v1;
    if (v1)
    {
      v2 = v0[20];
      v3 = v1;
      isa = sub_1000FF754().super.isa;
      v5 = sub_1000FF754().super.isa;
      v6 = [objc_opt_self() categorySampleWithType:v3 value:0 startDate:isa endDate:v5];
      v0[24] = v6;

      v7 = *(v2 + 16);
      v0[2] = v0;
      v0[3] = sub_1000109E4;
      v8 = swift_continuation_init();
      v0[17] = sub_100007210(&qword_10014C658);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100010CF8;
      v0[13] = &unk_1001355C8;
      v0[14] = v8;
      [v7 saveObject:v6 withCompletion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v9 = sub_100100AC4();
    v10 = sub_1001015B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Couldn't create a HKCategoryType of type .mindfulSession";
      goto LABEL_10;
    }
  }

  else
  {
    v9 = sub_100100AC4();
    v10 = sub_1001015B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "HealthKit is not available on this device";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000109E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_100010B78;
  }

  else
  {
    v5 = sub_100010B14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100010B14()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100010B78()
{
  swift_willThrow();
  swift_errorRetain();
  v1 = sub_100100AC4();
  v2 = sub_1001015B4();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  v5 = v0[23];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Saving a mindfulSessionCategory type encountered an error : %@", v6, 0xCu);
    sub_100011058(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100010CF8(uint64_t a1, int a2, void *a3)
{
  v5 = sub_1000110C0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_100007210(&qword_10014EBE0);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

uint64_t sub_100010DB0()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension13HealthManager_logger;
  v2 = sub_100100AE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthManager()
{
  result = qword_10014C588;
  if (!qword_10014C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010EB0()
{
  result = sub_100100AE4();
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

uint64_t sub_100010F50(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100010FA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001100C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100011058(uint64_t a1)
{
  v2 = sub_100007210(&unk_10014D660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000110C0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1000111E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100011240()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014C688);
  v1 = sub_100003D38(v0, qword_10014C688);
  if (qword_10014B888 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100011308(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 272) = a1;
  v3 = sub_1000FFB34();
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  sub_100101304();
  *(v2 + 184) = sub_1001012F4();
  v5 = sub_100101284();
  *(v2 + 192) = v5;
  *(v2 + 200) = v4;

  return _swift_task_switch(sub_100011400, v5, v4);
}

double *sub_100011400()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 272);
  *(v0 + 208) = CFAbsoluteTimeGetCurrent();
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_sizeType) = v2;
  v3 = sub_1000C9368(v2);
  v5 = v4;
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  if (v2 == 3)
  {
    v10 = -70.0;
  }

  else if (v2 == 7)
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v7 + 104))(v6, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v9 = sub_1000FFB24();
    (*(v7 + 8))(v6, v8);
    if (v9)
    {
      v10 = -145.0;
    }

    else
    {
      v10 = -116.0;
    }
  }

  else
  {
    v10 = -16.0;
  }

  v11 = *(*(v0 + 152) + OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_routeCoordinates);
  if (v11 >> 62)
  {
    v12 = sub_100101DA4();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {

    result = sub_100016DB8(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_100101CA4();
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      v16 = v15;
      [v15 coordinate];
      v17 = MKMapPointForCoordinate(v31);

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (*&v19 >= *&v18 >> 1)
      {
        sub_100016DB8((*&v18 > 1uLL), *&v19 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v19 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v19 + 4] = v17;
    }
  }

  *(v0 + 232) = _swiftEmptyArrayStorage;
  v20 = *(v0 + 272);

  v22 = sub_1000139A8(v21, v20, v3, v5, (v5 + v10) * 0.5);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_1000116F4;

  return sub_100013FE8(v22, v24, v26, v28, v3, v5);
}

uint64_t sub_1000116F4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return _swift_task_switch(sub_10001181C, v4, v3);
}

uint64_t sub_10001181C()
{
  v1 = *(v0 + 152);
  [*(v0 + 248) _setRendersInBackground:1];
  v2 = OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_mapSnapshotter;
  v3 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_mapSnapshotter);
  if (v3)
  {
    [v3 cancel];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 248);
  *(v1 + v2) = 0;

  v6 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v5];
  v7 = *(v1 + v2);
  *(v1 + v2) = v6;

  v8 = *(v1 + v2);
  *(v0 + 256) = v8;
  if (v8)
  {
    v9 = qword_10014B5E0;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_100158470;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_100011A70;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_100007210(&qword_10014C7B0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000994EC;
    *(v0 + 104) = &unk_1001355F0;
    *(v0 + 112) = v12;
    [v10 startWithQueue:v11 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 248);

    sub_100011EE8(*(v0 + 152));

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_100011A70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {

    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_100011C90;
  }

  else
  {
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_100011B88;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100011B88()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];

  v4 = v0[18];

  v5 = [objc_opt_self() polylineWithPoints:v3 + 32 count:*(v3 + 16)];

  [v1 mapRect];
  v10 = sub_1000143C4(v5, v4, v6, v7, v8, v9);

  sub_100011EE8(v0[19]);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100011C90()
{
  v17 = v0;
  v1 = v0[32];

  swift_willThrow();

  if (qword_10014B590 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = sub_100100AE4();
  sub_100003D38(v3, qword_10014C688);
  v4 = v2;
  swift_errorRetain();
  v5 = sub_100100AC4();
  v6 = sub_1001015B4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  if (v7)
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10007A774(*(v9 + OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_id), *(v9 + OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_id + 8), &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "RouteMapGenerator [assetId: %s]: error generating snapshot: %@", v10, 0x16u);
    sub_10000FFB4(v11, &unk_10014D660);

    sub_10001100C(v12);
  }

  else
  {
  }

  sub_100011EE8(v0[19]);

  v14 = v0[1];

  return v14(0);
}

void sub_100011EE8(uint64_t a1)
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_100101C64(83);
  v12._object = 0x8000000100104C30;
  v12._countAndFlagsBits = 0xD000000000000021;
  sub_1001010B4(v12);
  type metadata accessor for CGSize(0);
  sub_100101D84();
  v13._countAndFlagsBits = 0x497465737361202CLL;
  v13._object = 0xEB00000000203A64;
  sub_1001010B4(v13);
  sub_1001010B4(*(a1 + OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_id));
  v14._countAndFlagsBits = 0x73746E696F70202CLL;
  v14._object = 0xEA0000000000203ALL;
  sub_1001010B4(v14);
  if (*(a1 + OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_routeCoordinates) >> 62)
  {
    sub_100101DA4();
  }

  v15._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v15);

  v16._countAndFlagsBits = 0x6574756365786520;
  v16._object = 0xED0000206E692064;
  sub_1001010B4(v16);
  CFAbsoluteTimeGetCurrent();
  sub_100101384();
  v17._countAndFlagsBits = 0x73646E6F63657320;
  v17._object = 0xE800000000000000;
  sub_1001010B4(v17);
  v3 = v10;
  v2 = v11;
  if (qword_10014B590 != -1)
  {
    swift_once();
  }

  v4 = sub_100100AE4();
  sub_100003D38(v4, qword_10014C688);

  v5 = sub_100100AC4();
  v6 = sub_1001015D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    v9 = sub_10007A774(v3, v2, &v10);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10001100C(v8);
  }

  else
  {
  }
}

void sub_1000121EC(void *a1, id a2, char a3, uint64_t a4, uint64_t a5, CLLocationDegrees a6, CLLocationDegrees a7, double a8, double a9, double a10, double a11, CLLocationDegrees a12, CLLocationDegrees a13)
{
  v84.latitude = a6;
  v84.longitude = a7;
  v24 = [a2 image];
  [v24 size];
  v26 = v25;

  v27 = [a2 image];
  [v27 size];
  v29 = v28;

  v30 = [a2 image];
  [v30 drawInRect:{0.0, 0.0, v26, v29}];

  v85 = sub_100014834(0, a3);
  v31 = 2.0;
  if ((a3 - 3) <= 4u)
  {
    v31 = dbl_10010C370[(a3 - 3)];
  }

  v32 = OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_routeCoordinates;
  v33 = *(a4 + OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_routeCoordinates);
  if (v33 >> 62)
  {
    if (sub_100101DA4() == 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v48 = *(a4 + v32);
    v49 = type metadata accessor for WorkoutGradientPathRenderer();
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC21JournalShareExtension27WorkoutGradientPathRenderer_routeCoordinates] = v48;
    v86.receiver = v50;
    v86.super_class = v49;

    v51 = objc_msgSendSuper2(&v86, "initWithOverlay:", a5);
    v52 = [a1 CGContext];
    v53 = a2;
    sub_100014B38(v52, v51, v53, a8, a9, a10, a11, v31);

    v54 = [a1 CGContext];
    CGContextStrokePath(v54);

    v55 = sub_100014834(1, a3);
    v88.latitude = a12;
    v88.longitude = a13;
    v56 = MKMapPointForCoordinate(v88);
    v57 = [a1 CGContext];
    v58 = MKCoordinateForMapPoint(v56);
    [v53 pointForCoordinate:{v58.latitude, v58.longitude}];
    v60 = v59;
    v62 = v61;
    [v55 bounds];
    v63 = v60 - CGRectGetMidX(v91);
    [v55 centerOffset];
    v65 = v63 + v64;
    [v55 bounds];
    v66 = v62 - CGRectGetMidY(v92);
    [v55 centerOffset];
    v68 = v66 + v67;
    CGContextSaveGState(v57);
    CGContextTranslateCTM(v57, v65, v68);
    [v55 prepareForSnapshotting];
    v69 = [v55 layer];
    [v69 renderInContext:v57];

    CGContextRestoreGState(v57);
    v70 = MKMapPointForCoordinate(v84);
    v71 = [a1 CGContext];
    v72 = MKCoordinateForMapPoint(v70);
    [v53 pointForCoordinate:{v72.latitude, v72.longitude}];
    v74 = v73;
    v76 = v75;
    [v85 bounds];
    v77 = v74 - CGRectGetMidX(v93);
    [v85 centerOffset];
    v79 = v77 + v78;
    [v85 bounds];
    v80 = v76 - CGRectGetMidY(v94);
    [v85 centerOffset];
    v82 = v80 + v81;
    CGContextSaveGState(v71);
    CGContextTranslateCTM(v71, v79, v82);
    [v85 prepareForSnapshotting];
    v83 = [v85 layer];
    [v83 renderInContext:v71];

    CGContextRestoreGState(v71);
    return;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = MKMapPointForCoordinate(v84);
  v35 = [a1 CGContext];
  v36 = MKCoordinateForMapPoint(v34);
  [a2 pointForCoordinate:{v36.latitude, v36.longitude}];
  v38 = v37;
  v40 = v39;
  [v85 bounds];
  v41 = v38 - CGRectGetMidX(v89);
  [v85 centerOffset];
  v43 = v41 + v42;
  [v85 bounds];
  v44 = v40 - CGRectGetMidY(v90);
  [v85 centerOffset];
  v46 = v44 + v45;
  CGContextSaveGState(v35);
  CGContextTranslateCTM(v35, v43, v46);
  [v85 prepareForSnapshotting];
  v47 = [v85 layer];
  [v47 renderInContext:v35];

  CGContextRestoreGState(v35);
}

void sub_100012790(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1000128D0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

Swift::Int sub_10001294C()
{
  v1 = *v0;
  sub_100101F84();
  sub_100101F94(v1);
  return sub_100101FE4();
}

Swift::Int sub_1000129C0()
{
  v1 = *v0;
  sub_100101F84();
  sub_100101F94(v1);
  return sub_100101FE4();
}

void (*sub_100012A18(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10001370C(v4, a2);
  return sub_100012A90;
}

void sub_100012A90(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_100012ADC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC21JournalShareExtension29WorkoutLocationAnnotationView_assetSizeType] = a4;
  if (a3)
  {
    v10 = sub_100100F94();
  }

  else
  {
    v10 = 0;
  }

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithAnnotation:reuseIdentifier:", a1, v10);

  v12 = 7.0;
  if ((a4 - 3) <= 4u)
  {
    v12 = dbl_10010C398[(a4 - 3)];
  }

  v13 = v11;
  [v13 setFrame:{0.0, 0.0, v12, v12}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  [v15 setCanShowCallout:1];
  sub_100012C5C(a1);

  swift_unknownObjectRelease();
  return v15;
}

void sub_100012C5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001008F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WorkoutStartLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_10001511C();
      if (qword_10014B968 != -1)
      {
        swift_once();
      }

      v8 = qword_100158AE8;
LABEL_10:
      v9 = sub_100003D38(v4, v8);
      (*(v5 + 16))(v7, v9, v4);
      v10 = sub_1001019E4();
      [v2 setTintColor:v10];

      return;
    }

    type metadata accessor for WorkoutEndLocationAnnotation();
    if (swift_dynamicCastClass())
    {
      sub_10001511C();
      if (qword_10014B960 != -1)
      {
        swift_once();
      }

      v8 = qword_100158AD0;
      goto LABEL_10;
    }
  }

  v13 = [objc_opt_self() whiteColor];
  [v2 setTintColor:v13];
  v11 = v13;
}

void sub_100012EB4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = 1.0;
    if (v4[OBJC_IVAR____TtC21JournalShareExtension29WorkoutLocationAnnotationView_assetSizeType] - 3 <= 4)
    {
      v10 = dbl_10010C3C0[(v4[OBJC_IVAR____TtC21JournalShareExtension29WorkoutLocationAnnotationView_assetSizeType] - 3)];
    }

    c = v9;
    CGContextSetLineWidth(v9, v10);
    v11 = [v4 tintColor];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 CGColor];

      CGContextSetFillColorWithColor(c, v13);
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 CGColor];

      CGContextSetStrokeColorWithColor(c, v15);
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      v19 = CGRectInset(v18, v10, v10);
      CGContextAddEllipseInRect(c, v19);
      CGContextDrawPath(c, kCGPathFillStroke);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1000130F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100013280(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *&_swiftEmptyArrayStorage[2];
    if (!v13)
    {

LABEL_43:
      v41 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
LABEL_44:
      v42 = v41;
      v43 = [v41 CGColor];

      return v43;
    }

LABEL_14:
    v14 = _swiftEmptyArrayStorage[4];
    v15 = v14;
    v16 = v13 - 1;
    if (v13 != 1)
    {
      v17 = &_swiftEmptyArrayStorage[5];
      v15 = _swiftEmptyArrayStorage[4];
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
        }

        --v16;
      }

      while (v16);
    }

    v20 = v13;
    if (v13 > 3)
    {
      v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = vdupq_lane_s64(*&v20, 0);
      v24 = &_swiftEmptyArrayStorage[6];
      v22 = 0.0;
      v25 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = vdivq_f64(v24[-1], v23);
        v27 = vdivq_f64(*v24, v23);
        v22 = v22 + v26.f64[0] + v26.f64[1] + v27.f64[0] + v27.f64[1];
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v13 == v21)
      {
LABEL_26:
        v31 = v13 - 1;
        if (v13 != 1)
        {
          v32 = &_swiftEmptyArrayStorage[5];
          do
          {
            v33 = *v32++;
            v34 = v33;
            if (v14 < v33)
            {
              v14 = v34;
            }

            --v31;
          }

          while (v31);
        }

        if (v22 * 0.9 >= a1)
        {
          if (a1 < 0.0 || v22 == 0.0)
          {
            goto LABEL_43;
          }
        }

        else if (a1 < 0.0 || v22 == 0.0 || v22 * 1.1 > a1)
        {
          goto LABEL_43;
        }

        v35 = (a1 - v15) / (v14 - v15);
        if (v35 >= 0.5)
        {
          v40 = v35 + -0.5 + v35 + -0.5;
          v37 = round(v40 * -179.0 + 255.0);
          v38 = round(v40 * 13.0 + 204.0);
          v39 = v40 * 100.0 + 0.0;
        }

        else
        {
          v36 = v35 + v35;
          v37 = round(v36 * 0.0 + 255.0);
          v38 = round(v36 * 145.0 + 59.0);
          v39 = 48.0 - v36 * 48.0;
        }

        v41 = [objc_allocWithZone(UIColor) initWithRed:v37 / 255.0 green:v38 / 255.0 blue:round(v39) / 255.0 alpha:0.85];
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0.0;
    }

    v28 = v13 - v21;
    v29 = &_swiftEmptyArrayStorage[v21 + 4];
    do
    {
      v30 = *v29++;
      v22 = v22 + v30 / v20;
      --v28;
    }

    while (v28);
    goto LABEL_26;
  }

  v4 = sub_100101DA4();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_100016DE8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100101CA4();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 speed];
      v10 = v9;

      v12 = *&_swiftEmptyArrayStorage[2];
      v11 = *&_swiftEmptyArrayStorage[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_100016DE8((v11 > 1), v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = v13;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1000136A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutGradientPathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_10001370C(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_100013974(v5);
  v5[9] = sub_100013810((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1000137B0;
}

void sub_1000137B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_100013810(uint64_t a1, unsigned __int8 a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_10004C5B8(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1000FC020();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1000F9870(v14, a3 & 1);
    v9 = sub_10004C5B8(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_100101ED4();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_10001392C;
}

Swift::Int sub_10001392C(Swift::Int result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_1000FBD5C(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_1000FAA00(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_100013974(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10001399C;
}

double sub_1000139A8(double *a1, unsigned __int8 a2, double a3, double a4, double a5)
{
  v10 = sub_1000FFB34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = &a1[2 * v14 + 4];
    v18 = *(v17 - 16);
    v19 = *(v17 - 8);
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
  }

  v20 = [objc_opt_self() polylineWithPoints:a1 + 4 count:v14];

  [v20 boundingMapRect];
  if (a3 >= 1.0 && a4 >= 1.0)
  {
    v51 = v16;
    v52 = v15;
    v53 = v19;
    v54 = v18;
    v25 = sqrt(v23 * v23 + v24 * v24) * 0.5;
    v26 = 8.0;
    v27 = v24;
    v28 = v23;
    v55 = v21;
    v56 = v22;
    if (a2 > 3u)
    {
      if (a2 > 6u)
      {
        (*(v11 + 104))(v13, enum case for JournalFeatureFlags.fullScreenViewer(_:), v10);
        v45 = sub_1000FFB24();
        (*(v11 + 8))(v13, v10);

        v35 = v55;
        v36 = v56;
        v34 = v28;
        v33 = v27;
        v46 = 58.0;
        if (v45)
        {
          v46 = a3 * 0.5 - a5;
        }

        v37 = v25 / (a5 + -20.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v46;
        goto LABEL_30;
      }
    }

    else
    {
      v29 = 35.0;
      if (a2 == 2)
      {
        v29 = 8.0;
      }

      if (a2 > 1u)
      {
        v26 = v29;
      }
    }

    v30 = sub_100101E84();

    v31 = 20.0;
    if ((v30 & 1) == 0)
    {
      if (a2 == 1)
      {

        v37 = v25 / (a5 + -20.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v26;
        v33 = v27;
        v34 = v28;
        v35 = v55;
        v36 = v56;
        v43 = v53;
        v42 = v54;
        goto LABEL_31;
      }

      v32 = sub_100101E84();

      v33 = v27;
      v34 = v28;
      v35 = v55;
      v36 = v56;
      if (v32)
      {
        goto LABEL_26;
      }

      if (a2 == 3)
      {

        v35 = v55;
        v36 = v56;
        v34 = v28;
        v33 = v27;
        v37 = v25 / (a5 + -15.0);
        v38 = v37 * a5;
        v39 = v37 * a3;
        v40 = v37 * a4;
        v41 = v37 * v26;
        v43 = v53;
        v42 = v54;
        v44 = 12.0;
LABEL_33:
        v48 = v37 * v44 * 0.5;
        v59.origin.y = v51;
        v59.origin.x = v52;
        v59.size.width = v48;
        v59.size.height = v48;
        v57 = MKMapRectUnion(*&v35, v59);
        v60.origin.x = v42;
        v60.origin.y = v43;
        v60.size.width = v48;
        v60.size.height = v48;
        v58 = MKMapRectUnion(v57, v60);
        v21 = v58.origin.x + v58.size.width * 0.5 - (v41 + v38);
        v22 = v58.origin.y + v58.size.height * 0.5 - (v41 + v38);
        v23 = v39;
        v24 = v40;
        goto LABEL_34;
      }

      v47 = sub_100101E84();

      if (v47)
      {
        v31 = 15.0;
      }

      else
      {
        v31 = 10.0;
      }
    }

    v33 = v27;
    v34 = v28;
    v35 = v55;
    v36 = v56;
LABEL_26:
    v37 = v25 / (a5 - v31);
    v38 = v37 * a5;
    v39 = v37 * a3;
    v40 = v37 * a4;
    v41 = v26 * v37;
    if (a2 != 7)
    {
      v43 = v53;
      v42 = v54;
      if (a2 == 6)
      {
        v44 = 4.0;
        goto LABEL_33;
      }

      if (a2 == 3)
      {
        v44 = 12.0;
        goto LABEL_33;
      }

LABEL_31:
      v44 = 7.0;
      goto LABEL_33;
    }

LABEL_30:
    v44 = 24.0;
    v43 = v53;
    v42 = v54;
    goto LABEL_33;
  }

LABEL_34:
  *&v49 = MKCoordinateRegionForMapRect(*&v21);

  return v49;
}

uint64_t sub_100013FE8(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_100101304();
  *(v6 + 64) = sub_1001012F4();
  v8 = sub_100101284();

  return _swift_task_switch(sub_100014088, v8, v7);
}

uint64_t sub_100014088()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  [v5 setTraitCollection:v6];

  v14.latitude = v4;
  v14.longitude = v3;
  if (CLLocationCoordinate2DIsValid(v14) && v2 >= 0.0 && v1 >= 0.0)
  {
    [v5 setRegion:{*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)}];
  }

  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  [v5 setMapType:0];
  [v5 setSize:{v8, v7}];
  v9 = [objc_allocWithZone(MKStandardMapConfiguration) init];
  v10 = [objc_opt_self() filterExcludingAllCategories];
  [v9 setPointOfInterestFilter:v10];

  [v5 setPreferredConfiguration:v9];
  v11 = *(v0 + 8);

  return v11(v5);
}

id sub_100014254(double a1, double a2)
{
  if (qword_10014B598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_10014C6A0;
  if (*(off_10014C6A0 + 2) && (v5 = sub_10004C544(a1, a2), (v6 & 1) != 0))
  {
    v11 = *(v4[7] + 8 * v5);
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    v8 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
    swift_beginAccess();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = off_10014C6A0;
    off_10014C6A0 = 0x8000000000000000;
    sub_1000FB2C0(v9, isUniquelyReferenced_nonNull_native, a1, a2);
    off_10014C6A0 = v12;
    swift_endAccess();
    return v9;
  }
}

uint64_t sub_1000143C4(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v16 = OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_routeCoordinates;
  v17 = *&v6[OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_routeCoordinates];
  if (v17 >> 62)
  {
    result = sub_100101DA4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {

    v19 = sub_100101CA4();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v19 = *(v17 + 32);
  }

  v7 = &off_100140000;
  [v19 coordinate];
  v8 = v20;
  v9 = v21;

  v22 = *&v6[v16];
  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_8:
    v23 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v49 = a5;
      v51 = a6;
      if ((v22 & 0xC000000000000001) == 0)
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (v23 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_28:
          __break(1u);
          return result;
        }

        v24 = *(v22 + 8 * v23 + 32);
LABEL_13:
        [v24 v7[510]];
        v26 = v25;
        v28 = v27;

        v29 = v6[OBJC_IVAR____TtC21JournalShareExtension17RouteMapGenerator_sizeType];
        if (v29 == 8)
        {
          v30 = [a2 image];
          [v30 size];
          v32 = v31;
          v34 = v33;

          LOBYTE(v29) = sub_10005B4D4(0.0, 0.0, v32, v34);
        }

        v35 = [a2 image];
        [v35 size];
        v37 = v36;
        v39 = v38;

        v40 = sub_100014254(v37, v39);
        v41 = swift_allocObject();
        *(v41 + 16) = a2;
        *(v41 + 24) = v29;
        *(v41 + 32) = v6;
        *(v41 + 40) = v8;
        *(v41 + 48) = v9;
        *(v41 + 56) = a1;
        *(v41 + 64) = a3;
        *(v41 + 72) = a4;
        *(v41 + 80) = v50;
        *(v41 + 88) = v52;
        *(v41 + 96) = v26;
        *(v41 + 104) = v28;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_1000147C0;
        *(v42 + 24) = v41;
        aBlock[4] = sub_1000147F4;
        aBlock[5] = v42;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100012790;
        aBlock[3] = &unk_100135668;
        v43 = _Block_copy(aBlock);
        v44 = a2;
        v45 = v6;
        v46 = a1;

        v47 = [v40 imageWithActions:v43];

        _Block_release(v43);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v47;
        }

        goto LABEL_27;
      }

LABEL_25:

      v24 = sub_100101CA4();

      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_100101DA4();
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100014778()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10001481C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100014834(char a1, char a2)
{
  if (qword_10014B5A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_10014C6A8;
  if (*(off_10014C6A8 + 2) && (v5 = sub_10004C5B8(a2), (v6 & 1) != 0) && (v7 = *(v4[7] + 8 * v5), *(v7 + 16)) && (v8 = sub_10004C5FC(a1 & 1), (v9 & 1) != 0))
  {
    v26 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    return v26;
  }

  else
  {
    v11 = 0xD000000000000027;
    swift_endAccess();
    if (a1)
    {
      started = type metadata accessor for WorkoutEndLocationAnnotation();
      v13 = "csImageRendererContext8";
    }

    else
    {
      started = type metadata accessor for WorkoutStartLocationAnnotation();
      v13 = "nnotationView.endingPin";
      v11 = 0xD000000000000029;
    }

    v14 = [objc_allocWithZone(started) init];
    v15 = objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView());
    v16 = sub_100012ADC(v14, v11, v13 | 0x8000000000000000, a2);
    swift_beginAccess();
    if (*(off_10014C6A8 + 2) && (sub_10004C5B8(a2), (v17 & 1) != 0))
    {
      swift_endAccess();
      swift_beginAccess();
      v19 = sub_100012A18(v28, a2);
      if (*v18)
      {
        v20 = v18;
        v16 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v20;
        *v20 = 0x8000000000000000;
        sub_1000FB568(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
        *v20 = v27;
      }

      (v19)(v28, 0);
    }

    else
    {
      swift_endAccess();
      sub_100007210(&qword_10014C7C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10010BC80;
      *(inited + 32) = a1 & 1;
      v23 = inited + 32;
      *(inited + 40) = v16;
      v24 = sub_10004D3E8(inited);
      swift_setDeallocating();
      v16 = v16;
      sub_10000FFB4(v23, &qword_10014C7C8);
      swift_beginAccess();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v29 = off_10014C6A8;
      off_10014C6A8 = 0x8000000000000000;
      sub_1000FB41C(v24, a2, v25);
      off_10014C6A8 = v29;
    }

    swift_endAccess();
    return v16;
  }
}

void sub_100014B38(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  v63 = a3;
  v60 = a8;
  v61.size.width = a6;
  v61.size.height = a7;
  v61.origin.y = a5;
  v61.origin.x = a4;
  v66 = sub_1000FF804();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v55 = a2;
  v13 = *(a2 + OBJC_IVAR____TtC21JournalShareExtension27WorkoutGradientPathRenderer_routeCoordinates);
  if (!(v13 >> 62))
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v59 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_100101CA4();
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;
    v16 = [v14 timestamp];
    sub_1000FF7B4();

    sub_1000FF584();
    v18 = v17;
    v20 = *(v10 + 8);
    v19 = v10 + 8;
    v65 = v20;
    v20(v12, v66);
    if (v13 >> 62)
    {
      v21 = sub_100101DA4();
      if (!v21)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    if (v21 >= 1)
    {
      v58 = a1;
      v22 = 0;
      v23 = v60;
      v62 = v23 * v23;
      v54 = v23 + v23;
      v53 = xmmword_10010C1F0;
      v24 = v59;
      v57 = v19;
      v56 = v13;
      do
      {
        v64 = v18;
        if (v24)
        {
          v27 = sub_100101CA4();
        }

        else
        {
          v27 = *(v13 + 8 * v22 + 32);
        }

        v28 = v27;
        [v15 coordinate];
        v29 = MKMapPointForCoordinate(v73);
        [v28 coordinate];
        v30 = MKMapPointForCoordinate(v74);
        v31 = MKCoordinateForMapPoint(v29);
        v32 = v63;
        [v63 pointForCoordinate:{v31.latitude, v31.longitude}];
        v34 = v33;
        v36 = v35;
        v37 = MKCoordinateForMapPoint(v30);
        [v32 pointForCoordinate:{v37.latitude, v37.longitude}];
        if (v62 <= (v38 - v34) * (v38 - v34) + (v39 - v36) * (v39 - v36))
        {
          v75.origin.x = fmin(v29.x, v30.x);
          v75.origin.y = fmin(v29.y, v30.y);
          v75.size.width = vabdd_f64(v29.x, v30.x);
          v75.size.height = vabdd_f64(v29.y, v30.y);
          if (MKMapRectIntersectsRect(v61, v75))
          {
            v40 = [v28 timestamp];
            sub_1000FF7B4();

            sub_1000FF584();
            v42 = v41;
            v65(v12, v66);
            v43 = v42 - v64;
            [v28 speed];
            v45 = v44;
            Mutable = CGPathCreateMutable();
            v68 = 0;
            v69 = 0;
            v67 = 0x3FF0000000000000;
            v70 = 0x3FF0000000000000;
            v71 = 0;
            v72 = 0;
            sub_100101624();
            sub_100101634();
            if (v43 <= 5.0)
            {
              v48 = sub_100101A64();
              v49 = v58;
              CGContextAddPath(v58, v48);
              v51 = sub_100013280(v45);
              CGContextSetFillColorWithColor(v49, v51);
              v52 = kCGPathFill;
            }

            else
            {
              sub_100007210(&qword_10014C7B8);
              v47 = swift_allocObject();
              *(v47 + 16) = v53;
              *(v47 + 32) = 0;
              *(v47 + 40) = v54;
              v48 = sub_100101A54();

              v49 = v58;
              CGContextAddPath(v58, v48);
              CGContextSetLineWidth(v49, v60);
              CGContextSetLineCap(v49, kCGLineCapRound);
              v50 = [objc_opt_self() grayColor];
              v51 = [v50 CGColor];

              CGContextSetStrokeColorWithColor(v49, v51);
              v52 = kCGPathStroke;
            }

            CGContextDrawPath(v49, v52);
            v13 = v56;
            v24 = v59;
          }

          v15 = v28;
        }

        ++v22;
        v25 = [v28 timestamp];
        sub_1000FF7B4();

        sub_1000FF584();
        v18 = v26;

        v65(v12, v66);
      }

      while (v21 != v22);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (sub_100101DA4())
  {
    goto LABEL_3;
  }
}

unint64_t sub_10001511C()
{
  result = qword_10014C7D0;
  if (!qword_10014C7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014C7D0);
  }

  return result;
}

void sub_100015168(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, double a8, double a9)
{
  v58 = a9;
  v53 = a7;
  v55.size.width = a5;
  v55.size.height = a6;
  v55.origin.y = a4;
  v55.origin.x = a3;
  v12 = sub_1000FF804();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v49 = a2;
  v16 = *(a2 + OBJC_IVAR____TtC21JournalShareExtension27WorkoutGradientPathRenderer_routeCoordinates);
  v17 = v16 >> 62;
  v54 = v16;
  if (!(v16 >> 62))
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v57 = v54 & 0xC000000000000001;
    if ((v54 & 0xC000000000000001) != 0)
    {
      v18 = sub_100101CA4();
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v54 + 32);
    }

    v19 = v18;
    v20 = [v18 timestamp];
    sub_1000FF7B4();

    sub_1000FF584();
    v22 = v21;
    v23 = *(v13 + 8);
    v52 = v13 + 8;
    v59 = v23;
    v23(v15, v12);
    if (v17)
    {
      v24 = sub_100101DA4();
      if (!v24)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      v24 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_23;
      }
    }

    if (v24 >= 1)
    {
      v51 = a1;
      v25 = 0;
      v26 = v53;
      v56 = v26 * v26;
      v48 = v26 + v26;
      v47 = xmmword_10010C1F0;
      v27 = v54;
      v50 = v12;
      do
      {
        if (v57)
        {
          v36 = sub_100101CA4();
        }

        else
        {
          v36 = *(v27 + 8 * v25 + 32);
        }

        v37 = v36;
        [v19 coordinate];
        v38 = MKMapPointForCoordinate(v66);
        [v37 coordinate];
        v39 = MKMapPointForCoordinate(v67);
        if (v56 <= (v39.x - a8 - (v38.x - a8)) * (v39.x - a8 - (v38.x - a8)) + (v39.y - v58 - (v38.y - v58)) * (v39.y - v58 - (v38.y - v58)))
        {
          v68.origin.x = fmin(v38.x, v39.x);
          v68.origin.y = fmin(v38.y, v39.y);
          v68.size.width = vabdd_f64(v38.x, v39.x);
          v68.size.height = vabdd_f64(v38.y, v39.y);
          if (MKMapRectIntersectsRect(v55, v68))
          {
            v40 = [v37 timestamp];
            sub_1000FF7B4();

            sub_1000FF584();
            v42 = v41;
            v59(v15, v12);
            v43 = v42 - v22;
            [v37 speed];
            v45 = v44;
            Mutable = CGPathCreateMutable();
            v61 = 0;
            v62 = 0;
            v60 = 0x3FF0000000000000;
            v63 = 0x3FF0000000000000;
            v64 = 0;
            v65 = 0;
            sub_100101624();
            sub_100101634();
            if (v43 > 5.0)
            {
              sub_100007210(&qword_10014C7B8);
              v28 = swift_allocObject();
              *(v28 + 16) = v47;
              *(v28 + 32) = 0;
              *(v28 + 40) = v48;
              v29 = sub_100101A54();

              v30 = v51;
              CGContextAddPath(v51, v29);
              CGContextSetLineWidth(v30, v53);
              CGContextSetLineCap(v30, kCGLineCapRound);
              v31 = [objc_opt_self() grayColor];
              v32 = [v31 CGColor];

              CGContextSetStrokeColorWithColor(v30, v32);
              v33 = kCGPathStroke;
            }

            else
            {
              v29 = sub_100101A64();
              v30 = v51;
              CGContextAddPath(v51, v29);
              v32 = sub_100013280(v45);
              CGContextSetFillColorWithColor(v30, v32);
              v33 = kCGPathFill;
            }

            CGContextDrawPath(v30, v33);
            v12 = v50;
            v27 = v54;
          }

          v19 = v37;
        }

        ++v25;
        v34 = [v37 timestamp];
        sub_1000FF7B4();

        sub_1000FF584();
        v22 = v35;

        v59(v15, v12);
      }

      while (v24 != v25);
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (sub_100101DA4())
  {
    goto LABEL_3;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutLocationAnnotationView.WorkoutLocationAnnotationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutLocationAnnotationView.WorkoutLocationAnnotationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001589C()
{
  result = qword_10014C7D8;
  if (!qword_10014C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014C7D8);
  }

  return result;
}

uint64_t sub_1000158FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_10001591C, 0, 0);
}

uint64_t sub_10001591C()
{
  sub_100007210(&qword_10014C880);
  v1 = sub_1000FFA74();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000159E8;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 16, v1, 0, 0);
}

uint64_t sub_1000159E8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100015D9C;
  }

  else
  {

    v2 = sub_100015B04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100015B04()
{
  v1 = v0[2];
  v0[8] = v1;
  if (v1)
  {
    sub_100007210(&qword_10014C888);
    v2 = sub_1000FFA64();
    v0[9] = v2;
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_100015C58;
    v4 = v0[3];

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v4, v2, 0, 0);
  }

  else
  {
    v5 = v0[3];
    v6 = sub_1000FF804();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100015C58()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100015E00, 0, 0);
  }

  else
  {
    v3 = v2[8];

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100015D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015E6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100015E8C, 0, 0);
}

uint64_t sub_100015E8C()
{
  sub_100007210(&qword_10014C878);
  v1 = sub_1000FFA84();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100015F58;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 56, v1, 0, 0);
}

uint64_t sub_100015F58()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1000160E4;
  }

  else
  {

    v2 = sub_100016074;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100016074()
{
  v1 = *(v0 + 16);
  sub_100101944();
  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000160E4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100016158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioAsset()
{
  result = qword_10014C808;
  if (!qword_10014C808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016260()
{
  v36 = sub_100100594();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007210(&qword_10014C250);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - v4;
  sub_10000C4EC(v32 - v4);
  v6 = sub_1000FFED4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000FFB4(v5, &qword_10014C250);
    return 0;
  }

  v8 = sub_1000FFEA4();
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_100016E08(0, v9, 0);
    v10 = v37;
    v12 = *(v0 + 16);
    v11 = v0 + 16;
    v13 = *(v11 + 64);
    v32[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v33 = *(v11 + 56);
    v34 = v12;
    v35 = v11;
    v15 = (v11 - 8);
    do
    {
      v16 = v36;
      v34(v2, v14, v36);
      v17 = sub_100100584();
      v19 = v18;
      (*v15)(v2, v16);
      v37 = v10;
      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_100016E08((v20 > 1), v21 + 1, 1);
        v10 = v37;
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[2 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v14 += v33;
      --v9;
    }

    while (v9);

    v24 = v10[2];
    if (v24 != 0.0)
    {
LABEL_12:
      v25 = 0;
      v26 = 0;
      v27 = (v10 + 5);
      v28 = 0xE000000000000000;
      while (v26 < *(v10 + 2))
      {
        ++v26;
        v30 = *(v27 - 1);
        v29 = *v27;
        v37 = v25;
        v38 = v28;

        v39._countAndFlagsBits = v30;
        v39._object = v29;
        sub_1001010B4(v39);

        v25 = v37;
        v28 = v38;
        v27 += 2;
        if (*&v24 == v26)
        {
          v31 = v37;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    if (v24 != 0.0)
    {
      goto LABEL_12;
    }
  }

  v31 = 0;
LABEL_18:

  return v31;
}

id sub_1000165C0()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000FFED4();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007210(&qword_10014C250);
  __chkstk_darwin(v8 - 8);
  v10 = v51 - v9;
  v11 = sub_100007210(&unk_10014D640);
  v12 = __chkstk_darwin(v11 - 8);
  v55 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v51 - v14;
  v16 = sub_100100A04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  v21 = sub_100016260();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v51[1] = v3;
      sub_100100994();
      v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
      isa = sub_100100944().super.isa;
      v28 = [v26 initWithContentType:isa];

      (*(v17 + 8))(v19, v16);
      sub_1000800A4(0, 0, v23, v24);

      v29 = v55;
      if (*(v20 + OBJC_IVAR____TtC21JournalShareExtension10AudioAsset_metadata))
      {

        sub_1000084CC(v10);

        v31 = v53;
        v30 = v54;
        if (!(*(v53 + 48))(v10, 1, v54))
        {
          v39 = v52;
          (*(v31 + 16))(v52, v10, v30);
          sub_10000FFB4(v10, &qword_10014C250);
          sub_1000FFE94();
          (*(v31 + 8))(v39, v30);
          v40 = sub_1000FF804();
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(v29, 1, v40) != 1)
          {
            (*(v41 + 32))(v15, v29, v40);
            (*(v41 + 56))(v15, 0, 1, v40);
LABEL_19:
            sub_100100F14();
            sub_1000FF8A4();
            v42 = sub_100101004();
            v44 = v43;
            sub_100007210(&qword_10014C220);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_10010BC80;
            v46 = sub_100081080(v42, v44, v15);
            v48 = v47;

            *(v45 + 32) = v46;
            *(v45 + 40) = v48;
            v49 = sub_1001011C4().super.isa;

            [v28 setAlternateNames:v49];

            sub_10000FFB4(v15, &unk_10014D640);
            return v28;
          }

LABEL_9:
          v33 = *(v20 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
          if (v33 && (v34 = [v33 entry]) != 0)
          {
            v35 = v34;
            sub_1000FFBA4();

            v36 = 0;
          }

          else
          {
            v36 = 1;
          }

          v37 = sub_1000FF804();
          v38 = *(v37 - 8);
          (*(v38 + 56))(v15, v36, 1, v37);
          if ((*(v38 + 48))(v29, 1, v37) != 1)
          {
            sub_10000FFB4(v29, &unk_10014D640);
          }

          goto LABEL_19;
        }

        sub_10000FFB4(v10, &qword_10014C250);
      }

      v32 = sub_1000FF804();
      (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_100016D30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000FFED4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_100016D74(size_t a1, int64_t a2, char a3)
{
  result = sub_1000174E4(a1, a2, a3, *v3, &qword_10014C898, &unk_10010C520, type metadata accessor for AssetAttachment.AssetType);
  *v3 = result;
  return result;
}

double *sub_100016DB8(double *a1, int64_t a2, char a3)
{
  result = sub_1000172C8(a1, a2, a3, *v3, &qword_10014C890);
  *v3 = result;
  return result;
}

char *sub_100016DE8(char *a1, int64_t a2, char a3)
{
  result = sub_100016F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100016E08(double *a1, int64_t a2, char a3)
{
  result = sub_100017044(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100016E28(size_t a1, int64_t a2, char a3)
{
  result = sub_1000174E4(a1, a2, a3, *v3, &qword_10014C4F0, &unk_10010C0C8, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
  *v3 = result;
  return result;
}

double *sub_100016E6C(double *a1, int64_t a2, char a3)
{
  result = sub_1000171A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100016E8C(double *a1, int64_t a2, char a3)
{
  result = sub_1000172C8(a1, a2, a3, *v3, &qword_10014C860);
  *v3 = result;
  return result;
}

size_t sub_100016EBC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000174E4(a1, a2, a3, *v3, &qword_10014C8A0, &unk_10010C530, &type metadata accessor for MergeableTextList);
  *v3 = result;
  return result;
}

double *sub_100016F00(double *a1, int64_t a2, char a3)
{
  result = sub_1000176C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100016F20(double *a1, int64_t a2, char a3)
{
  result = sub_1000179A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100016F40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007210(&qword_10014C4F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_100017044(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007210(&qword_10014C220);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000171A0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007210(&qword_10014C4B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000172C8(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
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

  v9 = *(a4 + 16);
  if (v8 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100007210(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = (v11 + 4);
  v15 = (a4 + 32);
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

double *sub_1000173C4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007210(&qword_10014C4A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000174E4(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
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

  sub_100007210(a5);
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

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_1000176C0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007210(&qword_10014C868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1000177B4(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100007210(&qword_10014C538);
  v10 = *(sub_100007210(&qword_10014C540) - 8);
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

  *(v13 + 2) = v8;
  *(v13 + 3) = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100007210(&qword_10014C540) - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

double *sub_1000179A4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007210(&qword_10014C858);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100017AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[187] = a4;
  v4[181] = a3;
  v4[193] = sub_100007210(&qword_10014C240);
  v4[199] = swift_task_alloc();
  v6 = sub_1000FFED4();
  v4[205] = v6;
  v4[211] = *(v6 - 8);
  v4[212] = swift_task_alloc();
  v4[213] = type metadata accessor for AssetAttachment.AssetType(0);
  v4[214] = swift_task_alloc();
  v7 = sub_1000FF874();
  v4[215] = v7;
  v4[216] = *(v7 - 8);
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v8 = sub_1001007D4();
  v4[219] = v8;
  v4[220] = *(v8 - 8);
  v4[221] = swift_task_alloc();
  v4[222] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0);
  v4[223] = swift_task_alloc();
  v4[224] = swift_task_alloc();
  v9 = sub_1000FFC54();
  v4[225] = v9;
  v4[226] = *(v9 - 8);
  v4[227] = swift_task_alloc();
  v4[228] = swift_task_alloc();
  v4[229] = swift_task_alloc();
  v4[230] = sub_100007210(&unk_10014D640);
  v4[231] = swift_task_alloc();
  v4[232] = swift_task_alloc();
  v4[233] = swift_task_alloc();
  v4[234] = swift_task_alloc();
  v10 = sub_1000FF514();
  v4[235] = v10;
  v4[236] = *(v10 - 8);
  v4[237] = swift_task_alloc();
  v4[238] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = sub_100101284();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v4[240] = v13;
  v4[239] = v11;

  return _swift_task_switch(sub_100017E70, v11, v13);
}

uint64_t sub_100017E70()
{
  v1 = v0[238];
  v2 = v0[236];
  v3 = v0[235];
  v4 = v0[226];
  v20 = v0[225];
  v21 = v0[229];
  v22 = v0[224];
  v19 = v0[187];
  v5 = v0[181];
  v6 = *(v2 + 16);
  v0[241] = v6;
  v0[242] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = objc_allocWithZone(AVURLAsset);
  sub_1000FF474(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9 options:0];
  v0[243] = v11;

  v12 = *(v2 + 8);
  v0[244] = v12;
  v0[245] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v3);
  v13 = swift_allocObject();
  v0[246] = v13;
  *(v13 + 16) = v11;
  v14 = v11;
  swift_asyncLet_begin();
  v15 = swift_allocObject();
  v0[247] = v15;
  *(v15 + 16) = v14;
  v16 = v14;
  swift_asyncLet_begin();
  v17 = *(v4 + 16);
  v0[248] = v17;
  v0[249] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v21, v19, v20);
  v6(v22, v5, v3);
  (*(v2 + 56))(v22, 0, 1, v3);

  return _swift_asyncLet_get_throwing(v0 + 82, v0 + 175, sub_1000180D0, v0 + 162);
}

uint64_t sub_1000180D0()
{
  v1[250] = v0;
  if (v0)
  {
    v2 = v1[229];
    v3 = v1[226];
    v4 = v1[225];
    sub_10000FFB4(v1[224], &qword_10014EBD0);
    v5 = *(v3 + 8);
    v1[256] = v5;
    v5(v2, v4);
    v6 = v1[240];
    v7 = v1[239];

    return _swift_task_switch(sub_100018C58, v7, v6);
  }

  else
  {
    v1[251] = v1[175];
    v8 = v1[234];

    return _swift_asyncLet_get_throwing(v1 + 2, v8, sub_1000181C8, v1 + 182);
  }
}

uint64_t sub_1000181C8()
{
  v1[252] = v0;
  if (v0)
  {
    v2 = v1[229];
    v3 = v1[226];
    v4 = v1[225];
    sub_10000FFB4(v1[224], &qword_10014EBD0);
    v5 = *(v3 + 8);
    v1[257] = v5;
    v5(v2, v4);
    v6 = v1[240];
    v7 = v1[239];
    v8 = sub_100018EB8;
  }

  else
  {
    v6 = v1[240];
    v7 = v1[239];
    v8 = sub_100018290;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100018290()
{
  v1 = v0[248];
  v54 = v0[236];
  v56 = v0[235];
  v2 = v0[228];
  v60 = v0[227];
  v3 = v0[226];
  v4 = v0[225];
  v48 = v0[229];
  v52 = v0[223];
  v53 = v0[224];
  v5 = v0[222];
  v58 = v0[221];
  v6 = v0[220];
  v61 = v6;
  v7 = v0[219];
  v8 = v0[218];
  v9 = v0[216];
  v50 = v0[217];
  v51 = v0[215];
  sub_100010014(v0[234], v0[233], &unk_10014D640);
  v49 = v7;
  (*(v6 + 104))(v5, enum case for AssetType.audio(_:), v7);
  v1(v2, v48, v4);
  sub_1000FF864();
  v10 = objc_allocWithZone(type metadata accessor for AudioAsset());
  *&v10[OBJC_IVAR____TtC21JournalShareExtension10AudioAsset_metadata] = 0;
  (*(v9 + 16))(v50, v8, v51);
  (*(v6 + 16))(v58, v5, v7);
  v1(v60, v2, v4);
  v11 = sub_1000429EC(v50, v58, v60);
  v0[253] = v11;
  v12 = *(v9 + 8);
  v12(v8, v51);
  v13 = *(v3 + 8);
  v0[254] = v13;
  v0[255] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59 = v13;
  v13(v2, v4);
  (*(v61 + 8))(v5, v49);
  sub_100010014(v53, v52, &qword_10014EBD0);
  v64 = v11;
  if ((*(v54 + 48))(v52, 1, v56) == 1)
  {
    sub_10000FFB4(v0[223], &qword_10014EBD0);
  }

  else
  {
    v14 = v0[241];
    v15 = v11;
    v16 = v0[237];
    v63 = v12;
    v17 = v0[235];
    v18 = v0[218];
    v19 = v0[215];
    v20 = v0[214];
    (*(v0[236] + 32))(v16, v0[223], v17);
    v14(v20, v16, v17);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1000FF864();
    v21 = sub_1000FF814();
    v23 = v22;
    v63(v18, v19);
    type metadata accessor for AssetAttachment(0);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    sub_10001931C(v20, v24 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType);
    v25 = (v24 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
    *v25 = v21;
    v25[1] = v23;
    v26 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
    swift_beginAccess();
    sub_1001011B4();
    if (*((*&v15[v26] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v15[v26] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100101204();
    }

    v27 = v0[244];
    v28 = v0[237];
    v29 = v0[235];
    sub_100101234();
    swift_endAccess();
    v27(v28, v29);
  }

  v30 = v0[231];
  sub_100010014(v0[233], v30, &unk_10014D640);
  v31 = sub_1000FF804();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v30, 1, v31);
  v35 = v0[231];
  if (v34 == 1)
  {
    sub_1000FF7C4();
    if (v33(v35, 1, v31) != 1)
    {
      sub_10000FFB4(v0[231], &unk_10014D640);
    }
  }

  else
  {
    (*(v32 + 32))(v0[232], v0[231], v31);
  }

  v36 = v0[233];
  v55 = v0[225];
  v57 = v0[229];
  v37 = v0[224];
  v38 = v0[212];
  v39 = v0[211];
  v62 = v0[205];
  v40 = v0[199];
  (*(v32 + 56))(v0[232], 0, 1, v31);
  sub_1000FFEB4();
  sub_10000FFB4(v36, &unk_10014D640);
  sub_10000FFB4(v37, &qword_10014EBD0);
  v59(v57, v55);
  (*(v39 + 32))(v40, v38, v62);
  swift_storeEnumTagMultiPayload();
  sub_100007210(&qword_10014C260);
  v41 = swift_allocObject();
  v42 = *(*v41 + 104);
  v43 = sub_100007210(&qword_10014C250);
  (*(*(v43 - 8) + 56))(v41 + v42, 1, 1, v43);
  *(v41 + *(*v41 + 112)) = xmmword_10010BC70;
  sub_100019290(v40, v41 + *(*v41 + 120));
  *&v64[OBJC_IVAR____TtC21JournalShareExtension10AudioAsset_metadata] = v41;

  v64[OBJC_IVAR____TtC21JournalShareExtension5Asset_isHidden] = 1;
  v44 = *&v64[OBJC_IVAR____TtC21JournalShareExtension5Asset_context];
  if (v44)
  {
    *(swift_task_alloc() + 16) = v64;
    v45 = v64;
    v46 = v44;
    sub_100007210(&qword_10014C870);
    sub_100101814();
  }

  return _swift_asyncLet_finish(v0 + 82, v0 + 175, sub_100018A28, v0 + 200);
}

uint64_t sub_100018A80()
{
  v1 = *(v0 + 2032);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1800);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1448);

  v1(v5, v4);
  v2(v6, v3);

  v7 = *(v0 + 8);
  v8 = *(v0 + 2024);

  return v7(v8);
}

uint64_t sub_100018CD0()
{
  v1 = *(v0 + 2048);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1800);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1448);

  v1(v5, v4);
  v2(v6, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100018F30()
{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1800);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1448);

  v1(v5, v4);
  v2(v6, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100019118()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019150(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008030;

  return sub_1000158FC(a1, v4);
}

uint64_t sub_1000191F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008124;

  return sub_100015E6C(a1, v4);
}

uint64_t sub_100019290(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001931C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019398(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014D0D0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019424(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100007210(&qword_10014D0D0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for EntryListType()
{
  result = qword_10014C918;
  if (!qword_10014C918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100019500()
{
  sub_100019558();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100019558()
{
  if (!qword_10014C928)
  {
    v0 = sub_1000FF874();
    if (!v1)
    {
      atomic_store(v0, &qword_10014C928);
    }
  }
}

uint64_t sub_1000195A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntryListType();
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007210(&qword_10014C950);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_100019878(a1, &v22 - v13);
  sub_100019878(a2, &v14[v15]);
  v16 = sub_100007210(&qword_10014D0D0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 2, v16);
  if (!v18)
  {
    sub_100019878(v14, v10);
    if (!v17(&v14[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = sub_1000FF844();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_100019944(v14);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v14[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v14[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_1000198DC(v14);
    v19 = 0;
    return v19 & 1;
  }

  sub_100019944(v14);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_100019878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryListType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000198DC(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014C950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019944(uint64_t a1)
{
  v2 = type metadata accessor for EntryListType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000199A0()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014C958);
  v1 = sub_100003D38(v0, qword_10014C958);
  if (qword_10014B868 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_1001587C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__n128 sub_100019A68@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v12.receiver = v2;
  v12.super_class = type metadata accessor for MosaicLayout.Attributes();
  objc_msgSendSuper2(&v12, "copyWithZone:", a1);
  sub_100101B14();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  *(v11 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = v2[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType];
  v6 = v11 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii;
  result = *&v2[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 32];
  v8 = *&v2[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 48];
  v10 = *&v2[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
  v9 = *&v2[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 16];
  *(v6 + 32) = result;
  *(v6 + 48) = v8;
  *v6 = v10;
  *(v6 + 16) = v9;
  a2[3] = ObjectType;
  *a2 = v11;
  return result;
}

uint64_t sub_100019B9C(uint64_t a1)
{
  swift_getObjectType();
  sub_100023304(a1, &v21);
  v3 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v4 = sub_1000110C0(&v21, *(&v22 + 1));
    v5 = *(v3 - 8);
    __chkstk_darwin(v4);
    v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_100101E64();
    (*(v5 + 8))(v7, v3);
    sub_10001100C(&v21);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for MosaicLayout.Attributes();
  v25.receiver = v1;
  v25.super_class = v9;
  v10 = objc_msgSendSuper2(&v25, "isEqual:", v8);
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_100023304(a1, &v21);
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast())
      {
        v11 = v17;
        if (sub_1000749F8(v1[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType], *(v17 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType)))
        {
          v21 = *&v11[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
          v22 = *&v11[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 16];
          v23 = *&v11[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 32];
          v24 = *&v11[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 48];
          v12 = *&v1[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 16];
          v16[0] = *&v1[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
          v16[1] = v12;
          v13 = *&v1[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 48];
          v16[2] = *&v1[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 32];
          v16[3] = v13;
          v17 = v21;
          v18 = v22;
          v19 = v23;
          v20 = v24;
          v14 = CACornerRadiiEqualToRadii();

          return v14;
        }
      }
    }

    else
    {
      sub_10002329C(&v21);
    }
  }

  return 0;
}

uint64_t sub_100019EC0()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_100101C64(18);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MosaicLayout.Attributes();
  v1 = objc_msgSendSuper2(&v6, "debugDescription");
  sub_100100FD4();

  sub_1000231D0(1);

  v2 = sub_100101054();
  v4 = v3;

  v9._countAndFlagsBits = v2;
  v9._object = v4;
  sub_1001010B4(v9);

  v10._countAndFlagsBits = 0x7954657A6973203BLL;
  v10._object = 0xED0000203D206570;
  sub_1001010B4(v10);
  sub_100101D84();
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  sub_1001010B4(v11);
  return v7;
}

void sub_10001A0C4()
{
  v1 = v0;
  v2 = sub_1001007D4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v1106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v1106 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v1106 - v11;
  __chkstk_darwin(v10);
  v1160 = &v1106 - v13;
  v1182 = sub_1000FFA44();
  v1180 = *(v1182 - 8);
  __chkstk_darwin(v1182);
  v1181 = &v1106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1177 = sub_1000FFB34();
  v15 = *(v1177 - 8);
  v16 = __chkstk_darwin(v1177);
  v1158 = &v1106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v1157 = &v1106 - v19;
  v20 = __chkstk_darwin(v18);
  v1156 = &v1106 - v21;
  v22 = __chkstk_darwin(v20);
  v1155 = &v1106 - v23;
  v24 = __chkstk_darwin(v22);
  v1166 = &v1106 - v25;
  __chkstk_darwin(v24);
  v27 = &v1106 - v26;
  v28 = type metadata accessor for MosaicLayout();
  v1188.receiver = v1;
  v1188.super_class = v28;
  objc_msgSendSuper2(&v1188, "prepareLayout");
  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    v1149 = v12;
    v1151 = v2;
    v31 = OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_cachedAttributes;
    swift_beginAccess();
    v1178 = v31;
    *&v1[v31] = _swiftEmptyArrayStorage;

    v32 = v30;
    [v32 bounds];
    Width = CGRectGetWidth(v1206);
    v34 = &v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_contentBounds];
    *v34 = 0;
    *(v34 + 1) = 0;
    *(v34 + 2) = Width;
    *(v34 + 3) = 0;
    if ([v32 numberOfSections] < 1)
    {

LABEL_353:
      return;
    }

    v1147 = v6;
    v1148 = v9;
    v1163 = [v32 numberOfItemsInSection:0];
    [v32 bounds];
    v36 = v35;
    v1165 = v32;

    v1153 = OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_enforceShowCompressedAssetGrid;
    LODWORD(v9) = v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_enforceShowCompressedAssetGrid];
    x = (v36 + -8.0) * 0.5 + 4.0;
    y = x * 1.5;
    if ((v9 & 1) == 0)
    {
      v40 = v1177;
      if (qword_10014B6C0 != -1)
      {
        goto LABEL_366;
      }

      goto LABEL_7;
    }

    v39 = 5;
    v40 = v1177;
LABEL_8:
    v41 = v1163;
    v42 = v15[13];
    v1170 = enum case for JournalFeatureFlags.portraitAssetGrid(_:);
    v1168 = v42;
    v1169 = v15 + 13;
    v42(v27);
    v43 = sub_1000FFB24();
    v44 = v40;
    v45 = v43;
    v46 = v15[1];
    v1171 = v15 + 1;
    v1167 = v46;
    v46(v27, v44);
    v47 = x + x;
    if (v39 >= v41)
    {
      v47 = x;
    }

    if ((v45 & ~v9 & ((v41 - 6) < 4)) != 0)
    {
      v48 = y;
    }

    else
    {
      v48 = v47;
    }

    if (v41 == 1)
    {
      if (v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_sizeType] == 2)
      {

        v49 = 0.5;
        goto LABEL_23;
      }

      v50 = sub_100101E84();

      if (v50)
      {
        v49 = 0.5;
        goto LABEL_23;
      }
    }

    if (v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_sizeType] > 3u || v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_sizeType])
    {
      v51 = sub_100101E84();

      if ((v51 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v49 = 1.5;
LABEL_23:
    v48 = v48 * v49;
LABEL_24:
    v52 = swift_allocObject();
    v1162 = v52;
    *(v52 + 16) = 0;
    v15 = (v52 + 16);
    v53 = *&v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius];
    v54 = *&v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius + 8];
    v55 = v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius + 16];
    if (v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius + 16])
    {
      v53 = 4.0;
    }

    v1184 = v53;
    if (v55)
    {
      v56 = 4.0;
    }

    else
    {
      v56 = v54;
    }

    v1183 = v56;
    v57 = *&v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius];
    v58 = *&v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius + 8];
    v59 = v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius + 16];
    if (v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius + 16])
    {
      v57 = 4.0;
    }

    v1185 = v57;
    if (v59)
    {
      v60 = 4.0;
    }

    else
    {
      v60 = v58;
    }

    v1186 = v60;
    v61 = [v1165 delegate];
    if (v61)
    {
      v62 = v61;
      swift_getObjectType();
      v1161 = swift_conformsToProtocol2();
      if (v1161)
      {
        v1164 = v62;
LABEL_39:
        v40 = OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_isExpanded;
        v1175 = OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_sizeType;
        swift_beginAccess();
        v63 = *v15;
        if (*v15 < v41)
        {
          ++v1180;
          v1150 = v48 * 0.5;
          v1131 = v1161 + 16;
          v1120 = (v3 + 4);
          v1121 = v1161 + 8;
          v1130 = (v3 + 13);
          v1129 = (v3 + 1);
          v1128 = v48 * 0.666666667;
          v1123 = 0.333333333;
          v1127 = v48 * 0.333333333;
          v1152 = v36 * 0.5;
          v1119 = enum case for AssetType.unknown(_:);
          v1126 = enum case for AssetType.multiPinMap(_:);
          v1122 = enum case for AssetType.genericMap(_:);
          v1179 = xmmword_10010C1F0;
          v64 = 0;
          __asm { FMOV            V1.2D, #4.0 }

          v1174 = _Q1;
          v1173 = v36;
          v1172 = v48;
          v9 = v1162;
          v1176 = v15;
          v1159 = v40;
          do
          {
            if (v41 == 1)
            {
              v70 = v1[v1175];
              type metadata accessor for MosaicLayout.Attributes();
              sub_100007210(&qword_10014CA78);
              v71 = swift_allocObject();
              *(v71 + 16) = v1179;
              *(v71 + 32) = 0;
              *(v71 + 40) = v63;
              v72 = v1181;
              sub_1000FFA04();
              isa = sub_1000FFA14().super.isa;
              v74 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:isa];

              (*v1180)(v72, v1182);
              v3 = v74;
              [v3 setFrame:{0.0, 0.0, v36, v48}];
              *(v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = v70;
              v75 = (v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii);
              v76 = v1185;
              v77 = v1186;
              *v75 = v1185;
              v75[1] = v77;
              v75[2] = v76;
              v75[3] = v77;
              v78 = v1184;
              v79 = v1183;
              v75[4] = v1184;
              v75[5] = v79;
              v75[6] = v78;
              v75[7] = v79;
              v80 = v1178;
              swift_beginAccess();
              sub_1001011B4();
              if (*((*&v80[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v80[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_100101204();
              }

              v27 = &v80[v1];
              sub_100101234();
              swift_endAccess();
              v1322.origin.x = 0.0;
              v1322.origin.y = 0.0;
              v1322.size.width = v36;
              v1322.size.height = v48;
              v1207 = CGRectUnion(*v34, v1322);
              x = v1207.origin.x;
              y = v1207.origin.y;
              v81 = v1207.size.width;
              height = v1207.size.height;

              *v34 = x;
              *(v34 + 1) = y;
              *(v34 + 2) = v81;
              *(v34 + 3) = height;
              v15 = v1176;
              v83 = *v1176 + 1;
              if (__OFADD__(*v1176, 1))
              {
                __break(1u);
LABEL_356:
                __break(1u);
LABEL_357:
                __break(1u);
LABEL_358:
                __break(1u);
LABEL_359:
                __break(1u);
LABEL_360:
                __break(1u);
LABEL_361:
                __break(1u);
LABEL_362:
                __break(1u);
LABEL_363:
                __break(1u);
LABEL_364:
                __break(1u);
LABEL_365:
                __break(1u);
LABEL_366:
                swift_once();
LABEL_7:
                v39 = qword_100158628;
                goto LABEL_8;
              }

              goto LABEL_45;
            }

            if (v41 <= 6)
            {
              if (v41 <= 3)
              {
                if (v41 != 2)
                {
                  if (v41 == 3)
                  {
                    v1189.origin = v64;
                    v1189.size = v64;
                    v1187.origin = v64;
                    v1187.size = v64;
                    v1220.origin.x = 0.0;
                    v1220.origin.y = 0.0;
                    v1220.size.width = v36;
                    v1220.size.height = v48;
                    v158 = v1152;
                    CGRectDivide(v1220, &v1189, &v1187, v1152, CGRectMinXEdge);
                    memset(&v1189, 0, sizeof(v1189));
                    memset(&v1187, 0, sizeof(v1187));
                    v1221.origin.x = 0.0;
                    v1221.origin.y = 0.0;
                    v1221.size.width = v36;
                    v1221.size.height = v48;
                    CGRectDivide(v1221, &v1189, &v1187, v158, CGRectMaxXEdge);
                    v159 = v1189.origin.x;
                    v160 = v1189.origin.y;
                    v161 = v48;
                    v162 = v1189.size.width;
                    v163 = v36;
                    v164 = v1189.size.height;
                    v1144 = sub_1000233D0(0.0, 0.0, v163, v161);
                    v1145 = v165;
                    v1146 = v166;
                    v168 = v167;
                    v169 = v1166;
                    v170 = v1177;
                    v1168(v1166, v1170, v1177);
                    v171 = sub_1000FFB24();
                    v1167(v169, v170);
                    if (v1164)
                    {
                      if (v171)
                      {
                        ObjectType = swift_getObjectType();
                        v173 = v1181;
                        sub_1000FFA04();
                        v174 = *(v1161 + 16);
                        v175 = v174(v1165, v1, v173, ObjectType);
                        v176 = *v1180;
                        (*v1180)(v173, v1182);
                        if (v175)
                        {
                          v177 = swift_getObjectType();
                          v178 = v1181;
                          sub_1000FFA04();
                          v179 = (v174)(v1165, v1, v178, v177, v1161);
                          v176(v178, v1182);
                          if (v179)
                          {
                            memset(&v1189, 0, sizeof(v1189));
                            memset(&v1187, 0, sizeof(v1187));
                            v1222.origin.x = v159;
                            v1222.origin.y = v160;
                            v1222.size.width = v162;
                            v1222.size.height = v164;
                            CGRectDivide(v1222, &v1189, &v1187, v162 * 0.5, CGRectMinXEdge);
                            v180 = v1189.origin.x;
                            v181 = v1189.origin.y;
                            v1142 = v1189.size.height;
                            v1143 = v1189.size.width;
                            memset(&v1189, 0, sizeof(v1189));
                            memset(&v1187, 0, sizeof(v1187));
                            v1223.origin.x = v159;
                            v1223.origin.y = v160;
                            v1223.size.width = v162;
                            v1223.size.height = v164;
                            CGRectDivide(v1223, &v1189, &v1187, v162 * 0.5, CGRectMaxXEdge);
                            v1140 = v1189.origin.y;
                            v1141 = v1189.origin.x;
                            v1138 = v1189.size.height;
                            v1139 = v1189.size.width;
                            type metadata accessor for MosaicLayout.Attributes();
                            v1154 = COERCE_DOUBLE(sub_100007210(&qword_10014CA78));
                            v182 = swift_allocObject();
                            *(v182 + 16) = v1179;
                            v183 = v1176;
                            v184 = *v1176;
                            *(v182 + 32) = 0;
                            *(v182 + 40) = v184;
                            v185 = v1181;
                            sub_1000FFA04();
                            v186 = sub_1000FFA14().super.isa;
                            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                            v188 = [ObjCClassFromMetadata layoutAttributesForCellWithIndexPath:v186];

                            v176(v185, v1182);
                            v189 = v188;
                            v191 = v1144;
                            v190 = v1145;
                            v192 = v1146;
                            [v189 setFrame:{v1144, v1145, v1146, v168}];
                            v189[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = 3;
                            v193 = &v189[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
                            v194 = v1186;
                            *v193 = v1185;
                            v193[1] = v194;
                            v195 = v1174;
                            *(v193 + 1) = v1174;
                            *(v193 + 2) = v195;
                            *&v195 = v1183;
                            v193[6] = v1184;
                            *(v193 + 7) = v195;
                            v196 = v1178;
                            swift_beginAccess();
                            sub_1001011B4();
                            if (*((*&v196[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v196[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                            {
                              sub_100101204();
                              v196 = v1178;
                            }

                            sub_100101234();
                            swift_endAccess();
                            v1323.origin.x = v191;
                            v1323.origin.y = v190;
                            v1323.size.width = v192;
                            v1323.size.height = v168;
                            v1224 = CGRectUnion(*v34, v1323);
                            v197 = v1224.origin.x;
                            v198 = v1224.origin.y;
                            v199 = v1224.size.width;
                            v200 = v1224.size.height;

                            *v34 = v197;
                            *(v34 + 1) = v198;
                            *(v34 + 2) = v199;
                            *(v34 + 3) = v200;
                            v201 = *v183 + 1;
                            v36 = v1173;
                            v48 = v1172;
                            if (__OFADD__(*v183, 1))
                            {
                              goto LABEL_372;
                            }

                            *v183 = v201;
                            v202 = swift_allocObject();
                            *(v202 + 16) = v1179;
                            *(v202 + 32) = 0;
                            *(v202 + 40) = v201;
                            v203 = v1181;
                            sub_1000FFA04();
                            v204 = sub_1000FFA14().super.isa;
                            v205 = [ObjCClassFromMetadata layoutAttributesForCellWithIndexPath:v204];

                            v176(v203, v1182);
                            v206 = v205;
                            v208 = v1142;
                            v207 = v1143;
                            [v206 setFrame:{v180, v181, v1143, v1142}];
                            v206[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = 5;
                            v209 = &v206[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
                            v210 = v1174;
                            *v209 = v1174;
                            *(v209 + 1) = v210;
                            *(v209 + 2) = v210;
                            *(v209 + 3) = v210;
                            swift_beginAccess();
                            sub_1001011B4();
                            if (*((*&v196[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v196[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                            {
                              sub_100101204();
                              v196 = v1178;
                            }

                            sub_100101234();
                            swift_endAccess();
                            v1324.origin.x = v180;
                            v1324.origin.y = v181;
                            v1324.size.width = v207;
                            v1324.size.height = v208;
                            v1225 = CGRectUnion(*v34, v1324);
                            v211 = v1225.origin.x;
                            v212 = v1225.origin.y;
                            v213 = v1225.size.width;
                            v214 = v1225.size.height;

                            *v34 = v211;
                            *(v34 + 1) = v212;
                            *(v34 + 2) = v213;
                            *(v34 + 3) = v214;
                            v215 = *v183 + 1;
                            if (__OFADD__(*v183, 1))
                            {
                              goto LABEL_373;
                            }

                            v216 = v196;
                            *v183 = v215;
                            v217 = v183;
                            v218 = swift_allocObject();
                            *(v218 + 16) = v1179;
                            *(v218 + 32) = 0;
                            *(v218 + 40) = v215;
                            v219 = v1181;
                            sub_1000FFA04();
                            v220 = sub_1000FFA14().super.isa;
                            v221 = [ObjCClassFromMetadata layoutAttributesForCellWithIndexPath:v220];

                            v176(v219, v1182);
                            v222 = v221;
                            v224 = v1140;
                            v223 = v1141;
                            v226 = v1138;
                            v225 = v1139;
                            [v222 setFrame:{v1141, v1140, v1139, v1138}];
                            v222[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = 5;
                            v227 = &v222[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
                            v228 = v1174;
                            *v227 = v1174;
                            v229 = v1186;
                            v227[2] = v1185;
                            v227[3] = v229;
                            v230 = v1183;
                            v227[4] = v1184;
                            v227[5] = v230;
                            *(v227 + 3) = v228;
                            swift_beginAccess();
                            sub_1001011B4();
                            sub_10002316C(*((*&v1[v216] & 0xFFFFFFFFFFFFFF8) + 0x10));
                            sub_100101234();
                            swift_endAccess();
                            v1325.origin.x = v223;
                            v1325.origin.y = v224;
                            v1325.size.width = v225;
                            v1325.size.height = v226;
                            v1226 = CGRectUnion(*v34, v1325);
                            v231 = v1226.origin.x;
                            v232 = v1226.origin.y;
                            v233 = v1226.size.width;
                            v234 = v1226.size.height;

                            *v34 = v231;
                            *(v34 + 1) = v232;
                            *(v34 + 2) = v233;
                            *(v34 + 3) = v234;
                            v15 = v217;
                            _VF = __OFADD__(*v217, 1);
                            v235 = *v217 + 1;
                            v41 = v1163;
                            if (_VF)
                            {
                              goto LABEL_374;
                            }

                            *v15 = v235;
                            v9 = v1162;
                            v40 = v1159;
                            goto LABEL_298;
                          }
                        }
                      }
                    }

                    memset(&v1189, 0, sizeof(v1189));
                    memset(&v1187, 0, sizeof(v1187));
                    v1265.origin.x = v159;
                    v1265.origin.y = v160;
                    v1265.size.width = v162;
                    v1265.size.height = v164;
                    CGRectDivide(v1265, &v1189, &v1187, v164 * 0.5, CGRectMinYEdge);
                    v1142 = v1189.origin.y;
                    v1143 = v1189.origin.x;
                    v469 = v1189.size.width;
                    v470 = v1189.size.height;
                    memset(&v1189, 0, sizeof(v1189));
                    memset(&v1187, 0, sizeof(v1187));
                    v1266.origin.x = v159;
                    v1266.origin.y = v160;
                    v1266.size.width = v162;
                    v1266.size.height = v164;
                    CGRectDivide(v1266, &v1189, &v1187, v164 * 0.5, CGRectMaxYEdge);
                    v1140 = v1189.origin.y;
                    v1141 = v1189.origin.x;
                    v1138 = v1189.size.height;
                    v1139 = v1189.size.width;
                    type metadata accessor for MosaicLayout.Attributes();
                    v3 = sub_100007210(&qword_10014CA78);
                    v471 = swift_allocObject();
                    *(v471 + 16) = v1179;
                    v277 = v1176;
                    v472 = *v1176;
                    *(v471 + 32) = 0;
                    *(v471 + 40) = v472;
                    v473 = v1181;
                    sub_1000FFA04();
                    v474 = sub_1000FFA14().super.isa;
                    v15 = swift_getObjCClassFromMetadata();
                    v40 = [v15 layoutAttributesForCellWithIndexPath:v474];

                    v1154 = *v1180;
                    (*&v1154)(v473, v1182);
                    v9 = v40;
                    v476 = v1144;
                    v475 = v1145;
                    v477 = v1146;
                    [v9 setFrame:{v1144, v1145, v1146, v168}];
                    *(v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 3;
                    v478 = v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii;
                    v479 = v1186;
                    *v478 = v1185;
                    *(v478 + 8) = v479;
                    v480 = v1174;
                    *(v478 + 16) = v1174;
                    *(v478 + 32) = v480;
                    *&v480 = v1183;
                    *(v478 + 48) = v1184;
                    *(v478 + 56) = v480;
                    v481 = v1178;
                    swift_beginAccess();
                    sub_1001011B4();
                    if (*((*&v481[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v481[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v40 = *((*&v481[v1] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_100101204();
                      v481 = v1178;
                    }

                    sub_100101234();
                    swift_endAccess();
                    v1333.origin.x = v476;
                    v1333.origin.y = v475;
                    v1333.size.width = v477;
                    v1333.size.height = v168;
                    v1267 = CGRectUnion(*v34, v1333);
                    x = v1267.origin.x;
                    y = v1267.origin.y;
                    v482 = v1267.size.width;
                    v483 = v1267.size.height;

                    *v34 = x;
                    *(v34 + 1) = y;
                    *(v34 + 2) = v482;
                    *(v34 + 3) = v483;
                    v27 = (*v277 + 1);
                    v36 = v1173;
                    v48 = v1172;
                    if (__OFADD__(*v277, 1))
                    {
                      goto LABEL_363;
                    }

                    *v277 = v27;
                    v484 = swift_allocObject();
                    *(v484 + 16) = v1179;
                    *(v484 + 32) = 0;
                    *(v484 + 40) = v27;
                    v485 = v1181;
                    sub_1000FFA04();
                    v486 = sub_1000FFA14().super.isa;
                    v40 = [v15 layoutAttributesForCellWithIndexPath:v486];

                    (*&v1154)(v485, v1182);
                    v9 = v40;
                    v488 = v1142;
                    v487 = v1143;
                    [v9 setFrame:{v1143, v1142, v469, v470}];
                    *(v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 4;
                    v489 = v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii;
                    v490 = v1174;
                    *v489 = v1174;
                    *(v489 + 16) = v490;
                    v491 = v1183;
                    *(v489 + 32) = v1184;
                    *(v489 + 40) = v491;
                    *(v489 + 48) = v490;
                    swift_beginAccess();
                    sub_1001011B4();
                    if (*((*&v481[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v481[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v40 = *((*&v481[v1] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_100101204();
                      v481 = v1178;
                    }

                    sub_100101234();
                    swift_endAccess();
                    v1334.origin.x = v487;
                    v1334.origin.y = v488;
                    v1334.size.width = v469;
                    v1334.size.height = v470;
                    v1268 = CGRectUnion(*v34, v1334);
                    x = v1268.origin.x;
                    y = v1268.origin.y;
                    v492 = v1268.size.width;
                    v493 = v1268.size.height;

                    *v34 = x;
                    *(v34 + 1) = y;
                    *(v34 + 2) = v492;
                    *(v34 + 3) = v493;
                    v27 = (*v277 + 1);
                    if (__OFADD__(*v277, 1))
                    {
                      goto LABEL_364;
                    }

                    *v277 = v27;
                    v494 = swift_allocObject();
                    *(v494 + 16) = v1179;
                    *(v494 + 32) = 0;
                    *(v494 + 40) = v27;
                    v495 = v1181;
                    sub_1000FFA04();
                    v496 = sub_1000FFA14().super.isa;
                    v497 = [v15 layoutAttributesForCellWithIndexPath:v496];

                    (*&v1154)(v495, v1182);
                    v3 = v497;
                    v499 = v1140;
                    v498 = v1141;
                    v501 = v1138;
                    v500 = v1139;
                    [v3 setFrame:{v1141, v1140, v1139, v1138}];
                    *(v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 4;
                    v502 = (v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii);
                    v503 = v1174;
                    *v502 = v1174;
                    v504 = v1186;
                    v502[2] = v1185;
                    v502[3] = v504;
                    *(v502 + 2) = v503;
                    *(v502 + 3) = v503;
                    swift_beginAccess();
                    sub_1001011B4();
                    v505 = *((*&v481[v1] & 0xFFFFFFFFFFFFFF8) + 0x10);
                    v506 = *((*&v481[v1] & 0xFFFFFFFFFFFFFF8) + 0x18);
                    v507 = v481;
                    v41 = v1163;
                    if (v505 >= v506 >> 1)
                    {
                      v15 = v505;
                      sub_100101204();
                      v507 = v1178;
                    }

                    v27 = &v507[v1];
                    sub_100101234();
                    swift_endAccess();
                    v1335.origin.x = v498;
                    v1335.origin.y = v499;
                    v1335.size.width = v500;
                    v1335.size.height = v501;
                    v1269 = CGRectUnion(*v34, v1335);
                    x = v1269.origin.x;
                    y = v1269.origin.y;
                    v508 = v1269.size.width;
                    v509 = v1269.size.height;

                    *v34 = x;
                    *(v34 + 1) = y;
                    *(v34 + 2) = v508;
                    *(v34 + 3) = v509;
                    v340 = *v277 + 1;
                    v9 = v1162;
                    v40 = v1159;
                    if (__OFADD__(*v277, 1))
                    {
                      goto LABEL_365;
                    }

                    goto LABEL_229;
                  }

LABEL_125:
                  if (v41 < 13)
                  {
                    break;
                  }

                  sub_10009937C(CGRectMinYEdge, &v1189.origin, 0.5, 0.0, 0.0, v36, v48);
                  v463 = v1190;
                  v464 = v1191;
                  v465 = v1192;
                  v466 = v1193;
                  sub_1000236CC(&v1189.origin, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                  v467 = *(v40 + v1);
                  v1154 = v463;
                  v1145 = v465;
                  v1146 = v464;
                  v1144 = v466;
                  if (v467)
                  {
                    LOBYTE(v468) = 1;
                  }

                  else
                  {
                    v554 = 2;
                    v468 = 0;
                    v555 = &qword_100134418;
                    do
                    {
                      v557 = *v555++;
                      v556 = v557;
                      if ((v557 & ~v468) == 0)
                      {
                        v556 = 0;
                      }

                      v468 |= v556;
                      --v554;
                    }

                    while (v554);
                  }

                  v953 = v1190;
                  v954 = v1191;
                  v955 = v1192;
                  v956 = v1193;
                  v1134 = v1195;
                  v1135 = v1194;
                  v1132 = v1197;
                  v1133 = v1196;
                  v1138 = v1199;
                  v1139 = v1198;
                  v1136 = v1201;
                  v1137 = v1200;
                  v1142 = v1203;
                  v1143 = v1202;
                  v1140 = v1205;
                  v1141 = v1204;
                  v957 = v1183;
                  v958 = v1184;
                  v959 = v1185;
                  v960 = v1186;
                  sub_10002205C(3, v468, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 0, v9, v1, v953, v954, v955, v956, v959, v960, 4.0, 4.0, v958, v957);
                  sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v959, v960, 4.0, 4.0, v958, v957);
                  sub_10002205C(6, 2, v9, v1, v1139, v1138, v1137, v1136, v959, v960, 4.0, 4.0, v958, v957);
                  if (*(v40 + v1) == 1)
                  {
                    v961 = _swiftEmptyArrayStorage[2];
                    v962 = v1154;
                    v964 = v1145;
                    v963 = v1146;
                    v965 = v1144;
                    v966 = 0;
                    if (v961 != 0.0)
                    {
                      v967 = &_swiftEmptyArrayStorage[4];
                      v969 = v1142;
                      v968 = v1143;
                      v971 = v1140;
                      v970 = v1141;
                      do
                      {
                        v973 = *v967++;
                        v972 = v973;
                        if ((v973 & ~v966) == 0)
                        {
                          v972 = 0;
                        }

                        v966 |= v972;
                        --*&v961;
                      }

                      while (v961 != 0.0);
LABEL_283:
                      v974 = v1183;
                      v975 = v1184;
                      v723 = v1185;
                      v724 = v1186;
                      sub_10002205C(6, v966, v9, v1, v968, v969, v970, v971, v1185, v1186, 4.0, 4.0, v1184, v1183);
                      sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v962, v963, v964, v965);
                      v1154 = v1190;
                      v1146 = v1191;
                      v1145 = v1192;
                      v1144 = v1193;
                      sub_1000234C4(&v1189.origin, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                      v976 = v1190;
                      v977 = v1191;
                      v978 = v1192;
                      v979 = v1193;
                      v1139 = v1194;
                      v1138 = v1195;
                      v1137 = v1196;
                      v1136 = v1197;
                      v1143 = v1198;
                      v1142 = v1199;
                      v1141 = v1200;
                      v1140 = v1201;
                      sub_10002205C(6, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v723, v724, 4.0, 4.0, v975, v974);
                      sub_10002205C(6, 4, v9, v1, v976, v977, v978, v979, v723, v724, 4.0, 4.0, v975, v974);
                      sub_10002205C(6, 0, v9, v1, v1139, v1138, v1137, v1136, v723, v724, 4.0, 4.0, v975, v974);
                      sub_10002205C(6, 0, v9, v1, v1143, v1142, v1141, v1140, v723, v724, 4.0, 4.0, v975, v974);
                      sub_1000234C4(&v1189.origin, v1154, v1146, v1145, v1144);
                      v980 = v1190;
                      v981 = v1191;
                      v982 = v1192;
                      v983 = v1193;
                      v1143 = v1194;
                      v1142 = v1195;
                      v1141 = v1196;
                      v1140 = v1197;
                      v1154 = v1198;
                      v1146 = v1199;
                      v1145 = v1200;
                      v1144 = v1201;
                      sub_10002205C(6, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v723, v724, 4.0, 4.0, v975, v974);
                      sub_10002205C(6, 0, v9, v1, v980, v981, v982, v983, v723, v724, 4.0, 4.0, v975, v974);
                      sub_10002205C(6, 0, v9, v1, v1143, v1142, v1141, v1140, v723, v724, 4.0, 4.0, v975, v974);
                      v1103 = v975;
                      v1105 = v974;
                      v725 = 4.0;
                      v726 = 4.0;
                      v727 = v1154;
                      v729 = v1145;
                      v728 = v1146;
                      v730 = v1144;
                      v731 = 6;
LABEL_284:
                      v984 = v9;
                      v985 = v723;
                      v986 = v724;
                      goto LABEL_296;
                    }
                  }

                  else
                  {
                    LOBYTE(v966) = 8;
                    v962 = v1154;
                    v964 = v1145;
                    v963 = v1146;
                    v965 = v1144;
                  }

                  v969 = v1142;
                  v968 = v1143;
                  v971 = v1140;
                  v970 = v1141;
                  goto LABEL_283;
                }

                v1189.origin = v64;
                v1189.size = v64;
                v1187.origin = v64;
                v1187.size = v64;
                v1227.origin.x = 0.0;
                v1227.origin.y = 0.0;
                v1227.size.width = v36;
                v1227.size.height = v48;
                v236 = v1152;
                CGRectDivide(v1227, &v1189, &v1187, v1152, CGRectMinXEdge);
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1228.origin.x = 0.0;
                v1228.origin.y = 0.0;
                v1228.size.width = v36;
                v1228.size.height = v48;
                CGRectDivide(v1228, &v1189, &v1187, v236, CGRectMaxXEdge);
                v1154 = v1189.origin.x;
                v1146 = v1189.origin.y;
                v237 = v1189.size.width;
                v238 = v1189.size.height;
                v36 = sub_1000233D0(0.0, 0.0, v36, v48);
                v240 = v239;
                v242 = v241;
                v244 = v243;
                type metadata accessor for MosaicLayout.Attributes();
                v3 = v15;
                v1145 = COERCE_DOUBLE(sub_100007210(&qword_10014CA78));
                v245 = swift_allocObject();
                *(v245 + 16) = v1179;
                v246 = *v15;
                *(v245 + 32) = 0;
                *(v245 + 40) = v246;
                v247 = v1181;
                sub_1000FFA04();
                v248 = sub_1000FFA14().super.isa;
                v15 = swift_getObjCClassFromMetadata();
                v249 = [v15 layoutAttributesForCellWithIndexPath:v248];
                v250 = v1178;
                v251 = v249;

                v252 = v247;
                v253 = *v1180;
                (*v1180)(v252, v1182);
                v9 = v251;
                [v9 setFrame:{v36, v240, v242, v244}];
                *(v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 3;
                v254 = v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii;
                v255 = v1186;
                *v254 = v1185;
                *(v254 + 8) = v255;
                v256 = v1174;
                *(v254 + 16) = v1174;
                *(v254 + 32) = v256;
                *&v256 = v1183;
                *(v254 + 48) = v1184;
                *(v254 + 56) = v256;
                swift_beginAccess();
                sub_1001011B4();
                v40 = *((*&v250[v1] & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v40 >= *((*&v250[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                }

                sub_100101234();
                swift_endAccess();
                v1326.origin.x = v36;
                v1326.origin.y = v240;
                v1326.size.width = v242;
                v1326.size.height = v244;
                v1229 = CGRectUnion(*v34, v1326);
                x = v1229.origin.x;
                y = v1229.origin.y;
                v257 = v1229.size.width;
                v258 = v1229.size.height;

                *v34 = x;
                *(v34 + 1) = y;
                *(v34 + 2) = v257;
                *(v34 + 3) = v258;
                v27 = (*v3 + 1);
                if (__OFADD__(*v3, 1))
                {
                  goto LABEL_357;
                }

                v259 = v3;
                *v3 = v27;
                v260 = swift_allocObject();
                *(v260 + 16) = v1179;
                *(v260 + 32) = 0;
                *(v260 + 40) = v27;
                v261 = v1181;
                sub_1000FFA04();
                v262 = sub_1000FFA14().super.isa;
                v263 = [v15 layoutAttributesForCellWithIndexPath:v262];

                v253(v261, v1182);
                v3 = v263;
                v264 = v1154;
                v265 = v1146;
                [v3 setFrame:{v1154, v1146, v237, v238}];
                *(v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 3;
                v266 = (v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii);
                v267 = v1174;
                *v266 = v1174;
                v268 = v1186;
                v266[2] = v1185;
                v266[3] = v268;
                v269 = v1183;
                v266[4] = v1184;
                v266[5] = v269;
                *(v266 + 3) = v267;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*&v250[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v250[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                }

                v27 = &v250[v1];
                sub_100101234();
                swift_endAccess();
                v1327.origin.x = v264;
                v1327.origin.y = v265;
                v1327.size.width = v237;
                v1327.size.height = v238;
                v1230 = CGRectUnion(*v34, v1327);
                x = v1230.origin.x;
                y = v1230.origin.y;
                v270 = v1230.size.width;
                v271 = v1230.size.height;

                *v34 = x;
                *(v34 + 1) = y;
                *(v34 + 2) = v270;
                *(v34 + 3) = v271;
                _VF = __OFADD__(*v259, 1);
                v83 = *v259 + 1;
                v36 = v1173;
                v48 = v1172;
                v15 = v259;
                v9 = v1162;
                v41 = v1163;
                v40 = v1159;
                if (_VF)
                {
                  goto LABEL_358;
                }

LABEL_45:
                *v15 = v83;
                goto LABEL_298;
              }

              if (v41 == 4)
              {
                v1189.origin = v64;
                v1189.size = v64;
                v1187.origin = v64;
                v1187.size = v64;
                v1249.origin.x = 0.0;
                v1249.origin.y = 0.0;
                v1249.size.width = v36;
                v1249.size.height = v48;
                v390 = v1152;
                CGRectDivide(v1249, &v1189, &v1187, v1152, CGRectMinXEdge);
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1250.origin.x = 0.0;
                v1250.origin.y = 0.0;
                v1250.size.width = v36;
                v1250.size.height = v48;
                CGRectDivide(v1250, &v1189, &v1187, v390, CGRectMaxXEdge);
                v391 = v1189.origin.x;
                v392 = v1189.origin.y;
                v393 = v1189.size.width;
                v394 = v1189.size.height;
                v395 = sub_1000233D0(0.0, 0.0, v36, v48);
                v397 = v396;
                v399 = v398;
                v401 = v400;
                v402 = v1166;
                v403 = v1177;
                v1168(v1166, v1170, v1177);
                v404 = sub_1000FFB24();
                v1167(v402, v403);
                v1145 = v397;
                v1146 = v395;
                if (v404)
                {
                  v1143 = v399;
                  v1144 = v401;
                  *&v405 = v1130 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
                  if (v1164)
                  {
                    v406 = swift_getObjectType();
                    v1154 = v405;
                    v407 = v406;
                    v408 = v1181;
                    sub_1000FFA04();
                    v1141 = *(v1161 + 16);
                    v409 = v1165;
                    LODWORD(v1142) = (*&v1141)(v1165, v1, v408, v407);
                    v1139 = *v1180;
                    v410 = v1182;
                    (*&v1139)(v408, v1182);
                    v1140 = COERCE_DOUBLE(swift_getObjectType());
                    sub_1000FFA04();
                    v411 = v409;
                    v412 = v1161;
                    v413 = (*&v1141)(v411, v1, v408, COERCE_DOUBLE(*&v1140), v1161);
                    v414 = v410;
                    v415 = v1139;
                    (*&v1139)(v408, v414);
                    LODWORD(v1140) = v413 ^ 1;
                    v416 = swift_getObjectType();
                    sub_100007210(&qword_10014CA78);
                    v417 = swift_allocObject();
                    *(v417 + 16) = v1179;
                    *(v417 + 32) = xmmword_10010C5D0;
                    sub_1000FFA04();
                    v418 = v1149;
                    (*(v412 + 8))(v1165, v1, v408, v416, v412);
                    (*&v415)(v408, v1182);
                    v419 = v418;
                    v405 = v1154;
                    v420 = v1151;
                    (*v1120)(v1160, v419, v1151);
                    v421 = *v1130;
                  }

                  else
                  {
                    v421 = *v1130;
                    v420 = v1151;
                    (*v1130)(v1160, v1119, v1151);
                    LODWORD(v1142) = 0;
                    LODWORD(v1140) = 1;
                  }

                  v1154 = v405;
                  v1141 = *&v421;
                  v421(v1148, v1126, v420);
                  sub_1000237E8();
                  sub_100101174();
                  sub_100101174();
                  if (*&v1189.origin.x == *&v1187.origin.x && *&v1189.origin.y == *&v1187.origin.y)
                  {
                    v738 = 1;
                  }

                  else
                  {
                    v738 = sub_100101E84();
                  }

                  v739 = *v1129;
                  v740 = v1151;
                  (*v1129)(v1148, v1151);

                  if (v738)
                  {
                    v741 = v1141;
                    if (LOBYTE(v1142))
                    {
                      goto LABEL_230;
                    }
                  }

                  else
                  {
                    v742 = v1147;
                    v741 = v1141;
                    (*&v1141)(v1147, v1122, v740);
                    v743 = sub_100074C38();
                    v739(v742, v740);
                    if (v743 & LODWORD(v1142))
                    {
                      goto LABEL_230;
                    }
                  }

                  v744 = v1147;
                  (*&v741)(v1147, v1126, v740);
                  v745 = sub_100074C38();
                  v739(v744, v740);
                  if ((v745 & 1) == 0)
                  {
                    v746 = v1147;
                    (*&v741)(v1147, v1122, v740);
                    v747 = sub_100074C38();
                    v739(v746, v740);
                    if (((v747 | LODWORD(v1140)) & 1) == 0)
                    {
LABEL_230:
                      memset(&v1189, 0, sizeof(v1189));
                      memset(&v1187, 0, sizeof(v1187));
                      v1315.origin.x = v391;
                      v1315.origin.y = v392;
                      v1315.size.width = v393;
                      v1315.size.height = v394;
                      CGRectDivide(v1315, &v1189, &v1187, v393 * 0.5, CGRectMinXEdge);
                      v1316.origin.y = v392;
                      v823 = v1189.origin.x;
                      v824 = v1189.origin.y;
                      v825 = v1189.size.width;
                      v1316.origin.x = v391;
                      v826 = v1189.size.height;
                      memset(&v1189, 0, sizeof(v1189));
                      memset(&v1187, 0, sizeof(v1187));
                      v1316.size.width = v393;
                      v1316.size.height = v394;
                      CGRectDivide(v1316, &v1189, &v1187, v393 * 0.5, CGRectMaxXEdge);
                      v1154 = v1189.origin.x;
                      v1141 = v1189.size.width;
                      v1142 = v1189.origin.y;
                      v1140 = v1189.size.height;
                      memset(&v1189, 0, sizeof(v1189));
                      memset(&v1187, 0, sizeof(v1187));
                      v1317.origin.x = v823;
                      v1317.origin.y = v824;
                      v1317.size.width = v825;
                      v1317.size.height = v826;
                      CGRectDivide(v1317, &v1189, &v1187, v826 * 0.5, CGRectMinYEdge);
                      v1138 = v1189.origin.y;
                      v1139 = v1189.origin.x;
                      v1136 = v1189.size.height;
                      v1137 = v1189.size.width;
                      memset(&v1189, 0, sizeof(v1189));
                      memset(&v1187, 0, sizeof(v1187));
                      v1318.origin.x = v823;
                      v1318.origin.y = v824;
                      v1318.size.width = v825;
                      v1318.size.height = v826;
                      CGRectDivide(v1318, &v1189, &v1187, v826 * 0.5, CGRectMaxYEdge);
                      v827 = 2;
                      v828 = 0;
                      v829 = &qword_100134238;
                      v40 = v1159;
                      v830 = v1160;
                      v15 = v1176;
                      v831 = v739;
                      v9 = v1162;
                      v41 = v1163;
                      do
                      {
                        v833 = *v829++;
                        v832 = v833;
                        if ((v833 & ~v828) == 0)
                        {
                          v832 = 0;
                        }

                        v828 |= v832;
                        --v827;
                      }

                      while (v827);
                      v1061 = v1189.origin.x;
                      v1062 = v1189.origin.y;
                      v1063 = v1189.size.width;
                      v1064 = v1189.size.height;
                      v1065 = v1183;
                      v1066 = v1184;
                      v1067 = v1185;
                      v1068 = v1186;
                      sub_10002205C(3, v828, v1162, v1, v1146, v1145, v1143, v1144, v1185, v1186, 4.0, 4.0, v1184, v1183);
                      sub_10002205C(6, 0, v9, v1, v1139, v1138, v1137, v1136, v1067, v1068, 4.0, 4.0, v1066, v1065);
                      sub_10002205C(6, 0, v9, v1, v1061, v1062, v1063, v1064, v1067, v1068, 4.0, 4.0, v1066, v1065);
                      v1069 = 2;
                      v36 = v1173;
                      v48 = v1172;
                      v1070 = 0;
                      v1071 = &qword_100134268;
                      do
                      {
                        v1073 = *v1071++;
                        v1072 = v1073;
                        if ((v1073 & ~v1070) == 0)
                        {
                          v1072 = 0;
                        }

                        v1070 |= v1072;
                        --v1069;
                      }

                      while (v1069);
                      sub_10002205C(5, v1070, v9, v1, v1154, v1142, v1141, v1140, v1185, v1186, 4.0, 4.0, v1184, v1183);
                      v831(v830, v1151);
                      goto LABEL_298;
                    }
                  }

                  v739(v1160, v740);
                  v15 = v1176;
                  v399 = v1143;
                  v401 = v1144;
                }

                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1307.origin.x = v391;
                v1307.origin.y = v392;
                v1307.size.width = v393;
                v1307.size.height = v394;
                CGRectDivide(v1307, &v1189, &v1187, v394 * 0.5, CGRectMinYEdge);
                v1143 = v1189.origin.y;
                v1144 = v1189.origin.x;
                v1141 = v1189.size.height;
                v1142 = v1189.size.width;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1308.origin.x = v391;
                v1308.origin.y = v392;
                v1308.size.width = v393;
                v1308.size.height = v394;
                CGRectDivide(v1308, &v1189, &v1187, v394 * 0.5, CGRectMaxYEdge);
                v748 = v1189.origin.x;
                v749 = v1189.origin.y;
                v750 = v1189.size.width;
                v751 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1309.origin.x = v748;
                v1309.origin.y = v749;
                v1309.size.width = v750;
                v1309.size.height = v751;
                CGRectDivide(v1309, &v1189, &v1187, v750 * 0.5, CGRectMinXEdge);
                v1139 = v1189.origin.y;
                v1140 = v1189.origin.x;
                v1137 = v1189.size.height;
                v1138 = v1189.size.width;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1310.origin.x = v748;
                v1310.origin.y = v749;
                v1310.size.width = v750;
                v1310.size.height = v751;
                CGRectDivide(v1310, &v1189, &v1187, v750 * 0.5, CGRectMaxXEdge);
                v752 = v1189.origin.x;
                v1135 = v1189.size.width;
                v1136 = v1189.origin.y;
                v1134 = v1189.size.height;
                type metadata accessor for MosaicLayout.Attributes();
                v277 = v15;
                sub_100007210(&qword_10014CA78);
                v753 = swift_allocObject();
                *(v753 + 16) = v1179;
                v754 = *v15;
                *(v753 + 32) = 0;
                *(v753 + 40) = v754;
                v755 = v1181;
                sub_1000FFA04();
                v756 = sub_1000FFA14().super.isa;
                v757 = swift_getObjCClassFromMetadata();
                v758 = [v757 layoutAttributesForCellWithIndexPath:v756];

                v1154 = *v1180;
                (*&v1154)(v755, v1182);
                v759 = v758;
                v760 = v1178;
                v761 = v759;
                v763 = v1145;
                v762 = v1146;
                [v759 setFrame:{v1146, v1145, v399, v401}];
                v761[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = 3;
                v764 = &v761[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
                v765 = v1186;
                *v764 = v1185;
                v764[1] = v765;
                v766 = v1174;
                *(v764 + 1) = v1174;
                *(v764 + 2) = v766;
                *&v766 = v1183;
                v764[6] = v1184;
                *(v764 + 7) = v766;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*&v760[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v760[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                  v760 = v1178;
                }

                sub_100101234();
                swift_endAccess();
                v1336.origin.x = v762;
                v1336.origin.y = v763;
                v1336.size.width = v399;
                v1336.size.height = v401;
                v1311 = CGRectUnion(*v34, v1336);
                v767 = v1311.origin.x;
                v768 = v1311.origin.y;
                v769 = v1311.size.width;
                v770 = v1311.size.height;

                *v34 = v767;
                *(v34 + 1) = v768;
                *(v34 + 2) = v769;
                *(v34 + 3) = v770;
                v771 = *v277 + 1;
                if (__OFADD__(*v277, 1))
                {
                  __break(1u);
LABEL_368:
                  __break(1u);
LABEL_369:
                  __break(1u);
LABEL_370:
                  __break(1u);
LABEL_371:
                  __break(1u);
LABEL_372:
                  __break(1u);
LABEL_373:
                  __break(1u);
LABEL_374:
                  __break(1u);
                }

                v772 = v760;
                *v277 = v771;
                v773 = swift_allocObject();
                *(v773 + 16) = v1179;
                *(v773 + 32) = 0;
                *(v773 + 40) = v771;
                v774 = v1181;
                sub_1000FFA04();
                v775 = sub_1000FFA14().super.isa;
                v776 = [v757 layoutAttributesForCellWithIndexPath:v775];

                (*&v1154)(v774, v1182);
                v777 = v776;
                v779 = v1143;
                v778 = v1144;
                v781 = v1141;
                v780 = v1142;
                [v777 setFrame:{v1144, v1143, v1142, v1141}];
                v777[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = 4;
                v782 = &v777[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
                v783 = v1174;
                *v782 = v1174;
                *(v782 + 1) = v783;
                v784 = v1183;
                *(v782 + 4) = v1184;
                *(v782 + 5) = v784;
                *(v782 + 3) = v783;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*&v772[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v772[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                  v772 = v1178;
                }

                sub_100101234();
                swift_endAccess();
                v1337.origin.x = v778;
                v1337.origin.y = v779;
                v1337.size.width = v780;
                v1337.size.height = v781;
                v1312 = CGRectUnion(*v34, v1337);
                v785 = v1312.origin.x;
                v786 = v1312.origin.y;
                v787 = v1312.size.width;
                v788 = v1312.size.height;

                *v34 = v785;
                *(v34 + 1) = v786;
                *(v34 + 2) = v787;
                *(v34 + 3) = v788;
                v789 = *v277 + 1;
                if (__OFADD__(*v277, 1))
                {
                  goto LABEL_368;
                }

                *v277 = v789;
                v790 = swift_allocObject();
                *(v790 + 16) = v1179;
                *(v790 + 32) = 0;
                *(v790 + 40) = v789;
                v791 = v1181;
                sub_1000FFA04();
                v792 = sub_1000FFA14().super.isa;
                v793 = [v757 layoutAttributesForCellWithIndexPath:v792];

                (*&v1154)(v791, v1182);
                v794 = v793;
                v796 = v1139;
                v795 = v1140;
                v798 = v1137;
                v797 = v1138;
                [v794 setFrame:{v1140, v1139, v1138, v1137}];
                v794[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = 6;
                v799 = &v794[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
                v800 = v1174;
                *v799 = v1174;
                *(v799 + 1) = v800;
                *(v799 + 2) = v800;
                *(v799 + 3) = v800;
                swift_beginAccess();
                sub_1001011B4();
                v36 = v1173;
                v48 = v1172;
                if (*((*&v772[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v772[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                  v772 = v1178;
                }

                sub_100101234();
                swift_endAccess();
                v1338.origin.x = v795;
                v1338.origin.y = v796;
                v1338.size.width = v797;
                v1338.size.height = v798;
                v1313 = CGRectUnion(*v34, v1338);
                v801 = v1313.origin.x;
                v802 = v1313.origin.y;
                v803 = v1313.size.width;
                v804 = v1313.size.height;

                *v34 = v801;
                *(v34 + 1) = v802;
                *(v34 + 2) = v803;
                *(v34 + 3) = v804;
                v805 = *v277 + 1;
                if (__OFADD__(*v277, 1))
                {
                  goto LABEL_369;
                }

                *v277 = v805;
                v806 = swift_allocObject();
                *(v806 + 16) = v1179;
                *(v806 + 32) = 0;
                *(v806 + 40) = v805;
                v807 = v1181;
                sub_1000FFA04();
                v808 = sub_1000FFA14().super.isa;
                v809 = [v757 layoutAttributesForCellWithIndexPath:v808];

                (*&v1154)(v807, v1182);
                v810 = v809;
                v812 = v1135;
                v811 = v1136;
                v813 = v1134;
                [v810 setFrame:{v752, v1136, v1135, v1134}];
                v810[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = 6;
                v814 = &v810[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
                v815 = v1174;
                *v814 = v1174;
                v816 = v1186;
                v814[2] = v1185;
                v814[3] = v816;
                *(v814 + 2) = v815;
                *(v814 + 3) = v815;
                swift_beginAccess();
                sub_1001011B4();
                v817 = *((*&v772[v1] & 0xFFFFFFFFFFFFFF8) + 0x10);
                v818 = *((*&v772[v1] & 0xFFFFFFFFFFFFFF8) + 0x18);
                v41 = v1163;
                if (v817 >= v818 >> 1)
                {
                  sub_100101204();
                }

                sub_100101234();
                swift_endAccess();
                v1339.origin.x = v752;
                v1339.origin.y = v811;
                v1339.size.width = v812;
                v1339.size.height = v813;
                v1314 = CGRectUnion(*v34, v1339);
                v819 = v1314.origin.x;
                v820 = v1314.origin.y;
                v821 = v1314.size.width;
                v822 = v1314.size.height;

                *v34 = v819;
                *(v34 + 1) = v820;
                *(v34 + 2) = v821;
                *(v34 + 3) = v822;
                v340 = *v277 + 1;
                v9 = v1162;
                v40 = v1159;
                if (__OFADD__(*v277, 1))
                {
                  goto LABEL_370;
                }

                goto LABEL_229;
              }

              if (v41 == 5)
              {
                sub_1000236CC(&v1189.origin, 0.0, 0.0, v36, v48);
                v272 = v1189.origin.x;
                v273 = v1189.origin.y;
                v274 = v1189.size.width;
                v275 = v1189.size.height;
                v36 = v1190;
                v276 = v1191;
                v1145 = v1193;
                v1146 = v1192;
                v1143 = v1195;
                v1144 = v1194;
                v1141 = v1197;
                v1142 = v1196;
                v1139 = v1199;
                v1140 = v1198;
                v1137 = v1201;
                v1138 = v1200;
                v1135 = v1203;
                v1136 = v1202;
                v1133 = v1205;
                v1134 = v1204;
                type metadata accessor for MosaicLayout.Attributes();
                v277 = v15;
                v3 = sub_100007210(&qword_10014CA78);
                v278 = swift_allocObject();
                *(v278 + 16) = v1179;
                v279 = *v15;
                *(v278 + 32) = 0;
                *(v278 + 40) = v279;
                v280 = v1181;
                sub_1000FFA04();
                v281 = sub_1000FFA14().super.isa;
                v15 = swift_getObjCClassFromMetadata();
                v282 = [v15 layoutAttributesForCellWithIndexPath:v281];

                v1154 = *v1180;
                (*&v1154)(v280, v1182);
                v283 = v282;
                v40 = v1178;
                v9 = v283;
                [v283 setFrame:{v272, v273, v274, v275}];
                *(v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 3;
                v284 = v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii;
                v285 = v1186;
                *v284 = v1185;
                *(v284 + 8) = v285;
                v286 = v1174;
                *(v284 + 16) = v1174;
                *(v284 + 32) = v286;
                *&v286 = v1183;
                *(v284 + 48) = v1184;
                *(v284 + 56) = v286;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*(v40 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v40 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                  v40 = v1178;
                }

                sub_100101234();
                swift_endAccess();
                v1328.origin.x = v272;
                v1328.origin.y = v273;
                v1328.size.width = v274;
                v1328.size.height = v275;
                v1231 = CGRectUnion(*v34, v1328);
                x = v1231.origin.x;
                y = v1231.origin.y;
                v287 = v1231.size.width;
                v288 = v1231.size.height;

                *v34 = x;
                *(v34 + 1) = y;
                *(v34 + 2) = v287;
                *(v34 + 3) = v288;
                v27 = (*v277 + 1);
                if (__OFADD__(*v277, 1))
                {
                  goto LABEL_356;
                }

                *v277 = v27;
                v289 = swift_allocObject();
                *(v289 + 16) = v1179;
                *(v289 + 32) = 0;
                *(v289 + 40) = v27;
                v290 = v1181;
                sub_1000FFA04();
                v291 = sub_1000FFA14().super.isa;
                v292 = [v15 layoutAttributesForCellWithIndexPath:v291];

                (*&v1154)(v290, v1182);
                v293 = v292;
                v40 = v1178;
                v9 = v293;
                v295 = v1145;
                v294 = v1146;
                [v293 setFrame:{v36, v276, v1146, v1145}];
                *(v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 6;
                v296 = (v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii);
                v297 = v1174;
                *v296 = v1174;
                v296[1] = v297;
                v296[2] = v297;
                v296[3] = v297;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*(v40 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v40 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                  v40 = v1178;
                }

                sub_100101234();
                swift_endAccess();
                v1329.origin.x = v36;
                v1329.origin.y = v276;
                v1329.size.width = v294;
                v1329.size.height = v295;
                v1232 = CGRectUnion(*v34, v1329);
                x = v1232.origin.x;
                y = v1232.origin.y;
                v298 = v1232.size.width;
                v299 = v1232.size.height;

                *v34 = x;
                *(v34 + 1) = y;
                *(v34 + 2) = v298;
                *(v34 + 3) = v299;
                v27 = (*v277 + 1);
                v41 = v1163;
                if (__OFADD__(*v277, 1))
                {
                  goto LABEL_359;
                }

                *v277 = v27;
                v300 = swift_allocObject();
                *(v300 + 16) = v1179;
                *(v300 + 32) = 0;
                *(v300 + 40) = v27;
                v301 = v1181;
                sub_1000FFA04();
                v302 = sub_1000FFA14().super.isa;
                v303 = [v15 layoutAttributesForCellWithIndexPath:v302];

                (*&v1154)(v301, v1182);
                v304 = v303;
                v40 = v1178;
                v9 = v304;
                v306 = v1143;
                v305 = v1144;
                v308 = v1141;
                v307 = v1142;
                [v304 setFrame:{v1144, v1143, v1142, v1141}];
                *(v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 6;
                v309 = (v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii);
                v310 = v1174;
                *v309 = v1174;
                v309[1] = v310;
                v309[2] = v310;
                v309[3] = v310;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*(v40 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v40 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                  v40 = v1178;
                }

                sub_100101234();
                swift_endAccess();
                v1330.origin.x = v305;
                v1330.origin.y = v306;
                v1330.size.width = v307;
                v1330.size.height = v308;
                v1233 = CGRectUnion(*v34, v1330);
                x = v1233.origin.x;
                y = v1233.origin.y;
                v311 = v1233.size.width;
                v312 = v1233.size.height;

                *v34 = x;
                *(v34 + 1) = y;
                *(v34 + 2) = v311;
                *(v34 + 3) = v312;
                v27 = (*v277 + 1);
                v36 = v1173;
                v48 = v1172;
                if (__OFADD__(*v277, 1))
                {
                  goto LABEL_360;
                }

                *v277 = v27;
                v313 = swift_allocObject();
                *(v313 + 16) = v1179;
                *(v313 + 32) = 0;
                *(v313 + 40) = v27;
                v314 = v1181;
                sub_1000FFA04();
                v315 = sub_1000FFA14().super.isa;
                v316 = [v15 layoutAttributesForCellWithIndexPath:v315];

                (*&v1154)(v314, v1182);
                v317 = v316;
                v40 = v1178;
                v9 = v317;
                v319 = v1139;
                v318 = v1140;
                v321 = v1137;
                v320 = v1138;
                [v317 setFrame:{v1140, v1139, v1138, v1137}];
                *(v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 6;
                v322 = v9 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii;
                v323 = v1174;
                *v322 = v1174;
                *(v322 + 16) = v323;
                v324 = v1183;
                *(v322 + 32) = v1184;
                *(v322 + 40) = v324;
                *(v322 + 48) = v323;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*(v40 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v40 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                  v40 = v1178;
                }

                sub_100101234();
                swift_endAccess();
                v1331.origin.x = v318;
                v1331.origin.y = v319;
                v1331.size.width = v320;
                v1331.size.height = v321;
                v1234 = CGRectUnion(*v34, v1331);
                x = v1234.origin.x;
                y = v1234.origin.y;
                v325 = v1234.size.width;
                v326 = v1234.size.height;

                *v34 = x;
                *(v34 + 1) = y;
                *(v34 + 2) = v325;
                *(v34 + 3) = v326;
                v27 = (*v277 + 1);
                if (__OFADD__(*v277, 1))
                {
                  goto LABEL_361;
                }

                *v277 = v27;
                v327 = swift_allocObject();
                *(v327 + 16) = v1179;
                *(v327 + 32) = 0;
                *(v327 + 40) = v27;
                v328 = v1181;
                sub_1000FFA04();
                v329 = sub_1000FFA14().super.isa;
                v330 = [v15 layoutAttributesForCellWithIndexPath:v329];

                v15 = v1178;
                (*&v1154)(v328, v1182);
                v3 = v330;
                v332 = v1135;
                v331 = v1136;
                v334 = v1133;
                v333 = v1134;
                [v3 setFrame:{v1136, v1135, v1134, v1133}];
                *(v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType) = 6;
                v335 = (v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii);
                v336 = v1174;
                *v335 = v1174;
                v337 = v1186;
                v335[2] = v1185;
                v335[3] = v337;
                *(v335 + 2) = v336;
                *(v335 + 3) = v336;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*(v15 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                  v15 = v1178;
                }

                v27 = v15 + v1;
                sub_100101234();
                swift_endAccess();
                v1332.origin.x = v331;
                v1332.origin.y = v332;
                v1332.size.width = v333;
                v1332.size.height = v334;
                v1235 = CGRectUnion(*v34, v1332);
                x = v1235.origin.x;
                y = v1235.origin.y;
                v338 = v1235.size.width;
                v339 = v1235.size.height;

                *v34 = x;
                *(v34 + 1) = y;
                *(v34 + 2) = v338;
                *(v34 + 3) = v339;
                v340 = *v277 + 1;
                v9 = v1162;
                v40 = v1159;
                if (__OFADD__(*v277, 1))
                {
                  goto LABEL_362;
                }

LABEL_229:
                v15 = v277;
                *v277 = v340;
                goto LABEL_298;
              }

              v100 = v1155;
              v101 = v1177;
              (v1168)(v1155, v1170, v1177, 0);
              v102 = sub_1000FFB24();
              v1167(v100, v101);
              if ((v102 & 1) == 0 || v1[v1153] == 1 && *(v40 + v1) != 1)
              {
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1272.origin.x = 0.0;
                v1272.origin.y = 0.0;
                v1272.size.width = v36;
                v1272.size.height = v48;
                v521 = v1150;
                CGRectDivide(v1272, &v1189, &v1187, v1150, CGRectMinYEdge);
                v522 = v1189.origin.x;
                v523 = v1189.origin.y;
                v524 = v1189.size.width;
                v525 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1273.origin.x = 0.0;
                v1273.origin.y = 0.0;
                v1273.size.width = v36;
                v1273.size.height = v48;
                CGRectDivide(v1273, &v1189, &v1187, v521, CGRectMaxYEdge);
                v1154 = v1189.origin.x;
                v1145 = v1189.size.width;
                v1146 = v1189.origin.y;
                v1144 = v1189.size.height;
                sub_1000236CC(&v1189.origin, v522, v523, v524, v525);
                if (*(v40 + v1))
                {
                  LOBYTE(v526) = 1;
                }

                else
                {
                  v562 = 2;
                  v526 = 0;
                  v563 = &qword_100134298;
                  do
                  {
                    v565 = *v563++;
                    v564 = v565;
                    if ((v565 & ~v526) == 0)
                    {
                      v564 = 0;
                    }

                    v526 |= v564;
                    --v562;
                  }

                  while (v562);
                }

                v1014 = v1189.origin.x;
                v1015 = v1189.origin.y;
                v1016 = v1189.size.width;
                v1017 = v1189.size.height;
                v1018 = v1190;
                v1019 = v1191;
                v1124 = v1193;
                v1125 = v1192;
                v1134 = v1195;
                v1135 = v1194;
                v1132 = v1197;
                v1133 = v1196;
                v1138 = v1199;
                v1139 = v1198;
                v1136 = v1201;
                v1137 = v1200;
                v1142 = v1203;
                v1143 = v1202;
                v1140 = v1205;
                v1141 = v1204;
                type metadata accessor for MosaicLayout.Attributes();
                sub_100007210(&qword_10014CA78);
                v1020 = swift_allocObject();
                *(v1020 + 16) = v1179;
                v1021 = *v15;
                *(v1020 + 32) = 0;
                *(v1020 + 40) = v1021;
                v1022 = v15;
                v1023 = v1181;
                sub_1000FFA04();
                v1024 = sub_1000FFA14().super.isa;
                v1025 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:v1024];

                (*v1180)(v1023, v1182);
                v1026 = v1025;
                [v1026 setFrame:{v1014, v1015, v1016, v1017}];
                v1026[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = 3;
                v1027 = v1185;
                if ((v526 & 4) != 0)
                {
                  v1028 = v1185;
                }

                else
                {
                  v1028 = 4.0;
                }

                v1029 = v1186;
                if ((v526 & 4) != 0)
                {
                  v1030 = v1186;
                }

                else
                {
                  v1030 = 4.0;
                }

                if ((v526 & 8) == 0)
                {
                  v1027 = 4.0;
                  v1029 = 4.0;
                }

                v1031 = v1184;
                if ((v526 & 2) != 0)
                {
                  v1032 = v1184;
                }

                else
                {
                  v1032 = 4.0;
                }

                v1033 = v1183;
                if ((v526 & 2) != 0)
                {
                  v1034 = v1183;
                }

                else
                {
                  v1034 = 4.0;
                }

                v1035 = &v1026[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
                *v1035 = v1028;
                v1035[1] = v1030;
                if (v526)
                {
                  v1036 = v1031;
                }

                else
                {
                  v1036 = 4.0;
                }

                v1035[2] = v1027;
                v1035[3] = v1029;
                if (v526)
                {
                  v1037 = v1033;
                }

                else
                {
                  v1037 = 4.0;
                }

                v1035[4] = v1032;
                v1035[5] = v1034;
                v1035[6] = v1036;
                v1035[7] = v1037;
                v1038 = v1178;
                swift_beginAccess();
                sub_1001011B4();
                if (*((*&v1038[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1038[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                }

                sub_100101234();
                swift_endAccess();
                v1340.origin.x = v1014;
                v1340.origin.y = v1015;
                v1340.size.width = v1016;
                v1340.size.height = v1017;
                v1319 = CGRectUnion(*v34, v1340);
                v1039 = v1319.origin.x;
                v1040 = v1319.origin.y;
                v1041 = v1319.size.width;
                v1042 = v1319.size.height;

                *v34 = v1039;
                *(v34 + 1) = v1040;
                *(v34 + 2) = v1041;
                *(v34 + 3) = v1042;
                if (__OFADD__(*v1022, 1))
                {
                  goto LABEL_371;
                }

                v15 = v1022;
                *(v9 + 16) = *v1022 + 1;
                v1043 = v1183;
                v1044 = v1184;
                v1045 = v1185;
                v1046 = v1186;
                sub_10002205C(6, 0, v9, v1, v1018, v1019, v1125, v1124, v1185, v1186, 4.0, 4.0, v1184, v1183);
                sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v1045, v1046, 4.0, 4.0, v1044, v1043);
                sub_10002205C(6, 2, v9, v1, v1139, v1138, v1137, v1136, v1045, v1046, 4.0, 4.0, v1044, v1043);
                v40 = v1159;
                if (*(v1159 + v1) == 1)
                {
                  v1047 = _swiftEmptyArrayStorage[2];
                  v36 = v1173;
                  v48 = v1172;
                  v1048 = v1142;
                  v1049 = v1143;
                  v1051 = v1140;
                  v1050 = v1141;
                  v1052 = 0;
                  if (v1047 != 0.0)
                  {
                    v1053 = &_swiftEmptyArrayStorage[4];
                    do
                    {
                      v1055 = *v1053++;
                      v1054 = v1055;
                      if ((v1055 & ~v1052) == 0)
                      {
                        v1054 = 0;
                      }

                      v1052 |= v1054;
                      --*&v1047;
                    }

                    while (v1047 != 0.0);
                  }
                }

                else
                {
                  LOBYTE(v1052) = 8;
                  v36 = v1173;
                  v48 = v1172;
                  v1048 = v1142;
                  v1049 = v1143;
                  v1051 = v1140;
                  v1050 = v1141;
                }

                sub_10002205C(6, v1052, v9, v1, v1049, v1048, v1050, v1051, v1185, v1186, 4.0, 4.0, v1184, v1183);
                v1056 = 2;
                v1057 = 0;
                v1058 = &qword_1001342C8;
                do
                {
                  v1060 = *v1058++;
                  v1059 = v1060;
                  if ((v1060 & ~v1057) == 0)
                  {
                    v1059 = 0;
                  }

                  v1057 |= v1059;
                  --v1056;
                }

                while (v1056);
                sub_10002205C(1, v1057, v9, v1, v1154, v1146, v1145, v1144, v1185, v1186, 4.0, 4.0, v1184, v1183);
                goto LABEL_298;
              }

              v103 = v1164;
              if (sub_100022384(4, v1164, v1161, v1165, v1) & 1) != 0 && (sub_100022384(5, v103, v1161, v1165, v1))
              {
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1210.origin.x = 0.0;
                v1210.origin.y = 0.0;
                v1210.size.width = v36;
                v1210.size.height = v48;
                v104 = v1152;
                CGRectDivide(v1210, &v1189, &v1187, v1152, CGRectMinXEdge);
                v105 = v1189.origin.x;
                v106 = v1189.origin.y;
                v107 = v1189.size.width;
                v108 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1211.origin.x = 0.0;
                v1211.origin.y = 0.0;
                v1211.size.width = v1173;
                v1211.size.height = v1172;
                CGRectDivide(v1211, &v1189, &v1187, v104, CGRectMaxXEdge);
                v1154 = v1189.origin.x;
                v1145 = v1189.size.width;
                v1146 = v1189.origin.y;
                v1144 = v1189.size.height;
                v109 = v108 * v1123;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1212.origin.x = v105;
                v1212.origin.y = v106;
                v1212.size.width = v107;
                v1212.size.height = v108;
                CGRectDivide(v1212, &v1189, &v1187, v108 * 0.666666667, CGRectMinYEdge);
                v110 = v1189.origin.x;
                v111 = v1189.origin.y;
                v112 = v1189.size.width;
                v1143 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1213.origin.x = v105;
                v1213.origin.y = v106;
                v1213.size.width = v107;
                v1213.size.height = v108;
                CGRectDivide(v1213, &v1189, &v1187, v109, CGRectMaxYEdge);
                v113 = v1189.origin.x;
                v114 = v1189.origin.y;
                v115 = v1189.size.width;
                v116 = v1189.size.height;
                sub_10002205C(3, 1, v9, v1, v110, v111, v112, v1143, v1185, v1186, 4.0, 4.0, v1184, v1183);
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1214.origin.x = v113;
                v1214.origin.y = v114;
                v1214.size.width = v115;
                v1214.size.height = v116;
                CGRectDivide(v1214, &v1189, &v1187, v115 * 0.5, CGRectMinXEdge);
                v117 = v1189.origin.x;
                v118 = v1189.origin.y;
                v119 = v1189.size.width;
                v1142 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1215.origin.x = v113;
                v1215.origin.y = v114;
                v1215.size.width = v115;
                v1215.size.height = v116;
                CGRectDivide(v1215, &v1189, &v1187, v115 * 0.5, CGRectMaxXEdge);
                v1143 = v1189.origin.x;
                v120 = v1189.origin.y;
                v121 = v1189.size.width;
                v122 = v1189.size.height;
                v123 = v1183;
                v124 = v1184;
                v125 = v117;
                v126 = v118;
                v127 = v1185;
                v128 = v1186;
                sub_10002205C(6, 4, v9, v1, v125, v126, v119, v1142, v1185, v1186, 4.0, 4.0, v1184, v1183);
                sub_10002205C(6, 0, v9, v1, v1143, v120, v121, v122, v127, v128, 4.0, 4.0, v124, v123);
                v130 = v1144;
                v129 = v1145;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v131 = v1154;
                v1216.origin.x = v1154;
                v132 = v1146;
                v1216.origin.y = v1146;
                v1216.size.width = v1145;
                v1216.size.height = v1144;
                CGRectDivide(v1216, &v1189, &v1187, v1144 * 0.333333333, CGRectMinYEdge);
                v1143 = v1189.origin.x;
                v133 = v1189.origin.y;
                v134 = v1189.size.width;
                v135 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1217.origin.x = v131;
                v1217.origin.y = v132;
                v1217.size.width = v129;
                v1217.size.height = v130;
                CGRectDivide(v1217, &v1189, &v1187, v130 * 0.666666667, CGRectMaxYEdge);
                v136 = v1189.origin.x;
                v137 = v1189.origin.y;
                v138 = v1189.size.width;
                v139 = v1189.size.height;
                sub_10002205C(4, 2, v9, v1, v1143, v133, v134, v135, v1185, v1186, 4.0, 4.0, v1184, v1183);
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1218.origin.x = v136;
                v1218.origin.y = v137;
                v1218.size.width = v138;
                v1218.size.height = v139;
                CGRectDivide(v1218, &v1189, &v1187, v138 * 0.5, CGRectMinXEdge);
                v140 = v1189.origin.x;
                v141 = v1189.origin.y;
                v142 = v1189.size.width;
                v1145 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1219.origin.x = v136;
                v1219.origin.y = v137;
                v1219.size.width = v138;
                v1219.size.height = v139;
                CGRectDivide(v1219, &v1189, &v1187, v138 * 0.5, CGRectMaxXEdge);
                v1154 = v1189.origin.x;
                v1146 = v1189.origin.y;
                v143 = v1189.size.width;
                v144 = v1189.size.height;
                v145 = v1183;
                v146 = v1184;
                v147 = v140;
                v148 = v141;
                v36 = v1173;
                v149 = v142;
                v48 = v1172;
                v150 = v1185;
                v151 = v1186;
                sub_10002205C(5, 0, v9, v1, v147, v148, v149, v1145, v1185, v1186, 4.0, 4.0, v1184, v1183);
                sub_10002205C(5, 8, v9, v1, v1154, v1146, v143, v144, v150, v151, 4.0, 4.0, v146, v145);
              }

              else
              {
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1276.origin.x = 0.0;
                v1276.origin.y = 0.0;
                v1276.size.width = v36;
                v1276.size.height = v48;
                CGRectDivide(v1276, &v1189, &v1187, v1128, CGRectMinYEdge);
                v570 = v1189.origin.x;
                v571 = v1189.origin.y;
                v572 = v1189.size.width;
                v573 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1277.origin.x = 0.0;
                v1277.origin.y = 0.0;
                v1277.size.width = v36;
                v1277.size.height = v48;
                CGRectDivide(v1277, &v1189, &v1187, v1127, CGRectMaxYEdge);
                v1145 = v1189.origin.y;
                v1146 = v1189.origin.x;
                v1144 = v1189.size.width;
                v1154 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1278.origin.x = v570;
                v1278.origin.y = v571;
                v1278.size.width = v572;
                v1278.size.height = v573;
                CGRectDivide(v1278, &v1189, &v1187, v572 * 0.5, CGRectMinXEdge);
                v1142 = v1189.origin.y;
                v1143 = v1189.origin.x;
                v1140 = v1189.size.height;
                v1141 = v1189.size.width;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1279.origin.x = v570;
                v1279.origin.y = v571;
                v1279.size.width = v572;
                v1279.size.height = v573;
                CGRectDivide(v1279, &v1189, &v1187, v572 * 0.5, CGRectMaxXEdge);
                v574 = v1189.origin.x;
                v575 = v1189.origin.y;
                v576 = v1189.size.width;
                v577 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1280.origin.x = v574;
                v1280.origin.y = v575;
                v1280.size.width = v576;
                v1280.size.height = v577;
                CGRectDivide(v1280, &v1189, &v1187, v577 * 0.5, CGRectMinYEdge);
                v1138 = v1189.origin.y;
                v1139 = v1189.origin.x;
                v1136 = v1189.size.height;
                v1137 = v1189.size.width;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1281.origin.x = v574;
                v1281.origin.y = v575;
                v1281.size.width = v576;
                v1281.size.height = v577;
                CGRectDivide(v1281, &v1189, &v1187, v577 * 0.5, CGRectMaxYEdge);
                v578 = v1189.origin.x;
                v579 = v1189.origin.y;
                v580 = v1189.size.width;
                v581 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1282.origin.x = v578;
                v1282.origin.y = v579;
                v1282.size.width = v580;
                v1282.size.height = v581;
                CGRectDivide(v1282, &v1189, &v1187, v580 * 0.5, CGRectMinXEdge);
                v1134 = v1189.origin.y;
                v1135 = v1189.origin.x;
                v1132 = v1189.size.height;
                v1133 = v1189.size.width;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1283.origin.x = v578;
                v1283.origin.y = v579;
                v1283.size.width = v580;
                v1283.size.height = v581;
                CGRectDivide(v1283, &v1189, &v1187, v580 * 0.5, CGRectMaxXEdge);
                v582 = v1189.origin.x;
                v583 = v1189.origin.y;
                v584 = v1189.size.width;
                v585 = v1189.size.height;
                v586 = v1183;
                v587 = v1184;
                v588 = v1185;
                v589 = v1186;
                sub_10002205C(3, 1, v9, v1, v1143, v1142, v1141, v1140, v1185, v1186, 4.0, 4.0, v1184, v1183);
                sub_10002205C(4, 2, v9, v1, v1139, v1138, v1137, v1136, v588, v589, 4.0, 4.0, v587, v586);
                sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v588, v589, 4.0, 4.0, v587, v586);
                sub_10002205C(6, 0, v9, v1, v582, v583, v584, v585, v588, v589, 4.0, 4.0, v587, v586);
                v591 = v1144;
                v590 = v1145;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v592 = v1146;
                v1284.origin.x = v1146;
                v1284.origin.y = v1145;
                v1284.size.width = v1144;
                v593 = v1154;
                v1284.size.height = v1154;
                CGRectDivide(v1284, &v1189, &v1187, v1144 * 0.5, CGRectMinXEdge);
                v1143 = v1189.origin.x;
                v1142 = v1189.origin.y;
                v1141 = v1189.size.width;
                v1140 = v1189.size.height;
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v1285.origin.x = v592;
                v1285.origin.y = v590;
                v1285.size.width = v591;
                v1285.size.height = v593;
                CGRectDivide(v1285, &v1189, &v1187, v591 * 0.5, CGRectMaxXEdge);
                v594 = v1189.origin.x;
                v595 = v1189.origin.y;
                v596 = v1189.size.width;
                v597 = v1189.size.height;
                v598 = v1185;
                sub_10002205C(4, 4, v9, v1, v1143, v1142, v1141, v1140, v1185, v589, 4.0, 4.0, v587, v586);
                v1104 = v586;
                v36 = v1173;
                v599 = v597;
                v48 = v1172;
                sub_10002205C(4, 8, v9, v1, v594, v595, v596, v599, v598, v589, 4.0, 4.0, v587, v1104);
              }
            }

            else
            {
              if (v41 > 9)
              {
                if (v41 == 10)
                {
                  v1189.origin = v64;
                  v1189.size = v64;
                  v1187.origin = v64;
                  v1187.size = v64;
                  v1263.origin.x = 0.0;
                  v1263.origin.y = 0.0;
                  v1263.size.width = v36;
                  v1263.size.height = v48;
                  v457 = v1150;
                  CGRectDivide(v1263, &v1189, &v1187, v1150, CGRectMinYEdge);
                  v458 = v1189.origin.x;
                  v459 = v1189.origin.y;
                  v460 = v1189.size.width;
                  v461 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1264.origin.x = 0.0;
                  v1264.origin.y = 0.0;
                  v1264.size.width = v36;
                  v1264.size.height = v48;
                  CGRectDivide(v1264, &v1189, &v1187, v457, CGRectMaxYEdge);
                  v1154 = v1189.origin.x;
                  v1145 = v1189.size.width;
                  v1146 = v1189.origin.y;
                  v1144 = v1189.size.height;
                  sub_1000236CC(&v1189.origin, v458, v459, v460, v461);
                  if (*(v40 + v1))
                  {
                    LOBYTE(v462) = 1;
                  }

                  else
                  {
                    v550 = 2;
                    v462 = 0;
                    v551 = &qword_100134388;
                    do
                    {
                      v553 = *v551++;
                      v552 = v553;
                      if ((v553 & ~v462) == 0)
                      {
                        v552 = 0;
                      }

                      v462 |= v552;
                      --v550;
                    }

                    while (v550);
                  }

                  v932 = v1190;
                  v933 = v1191;
                  v934 = v1192;
                  v935 = v1193;
                  v1134 = v1195;
                  v1135 = v1194;
                  v1132 = v1197;
                  v1133 = v1196;
                  v1138 = v1199;
                  v1139 = v1198;
                  v1136 = v1201;
                  v1137 = v1200;
                  v1142 = v1203;
                  v1143 = v1202;
                  v1140 = v1205;
                  v1141 = v1204;
                  v936 = v1183;
                  v937 = v1184;
                  v938 = v1185;
                  v939 = v1186;
                  sub_10002205C(3, v462, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 0, v9, v1, v932, v933, v934, v935, v938, v939, 4.0, 4.0, v937, v936);
                  sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v938, v939, 4.0, 4.0, v937, v936);
                  sub_10002205C(6, 2, v9, v1, v1139, v1138, v1137, v1136, v938, v939, 4.0, 4.0, v937, v936);
                  if (*(v40 + v1) == 1)
                  {
                    v940 = _swiftEmptyArrayStorage[2];
                    if (v940 == 0.0)
                    {
                      LOBYTE(v941) = 0;
                    }

                    else
                    {
                      v941 = 0;
                      v942 = &_swiftEmptyArrayStorage[4];
                      do
                      {
                        v944 = *v942++;
                        v943 = v944;
                        if ((v944 & ~v941) == 0)
                        {
                          v943 = 0;
                        }

                        v941 |= v943;
                        --*&v940;
                      }

                      while (v940 != 0.0);
                    }
                  }

                  else
                  {
                    LOBYTE(v941) = 8;
                  }

                  v945 = v1183;
                  v946 = v1184;
                  v947 = v1185;
                  v948 = v1186;
                  sub_10002205C(6, v941, v9, v1, v1143, v1142, v1141, v1140, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v1154, v1146, v1145, v1144);
                  v1154 = v1190;
                  v1146 = v1191;
                  v1145 = v1192;
                  v1144 = v1193;
                  sub_1000234C4(&v1189.origin, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                  v949 = v1190;
                  v950 = v1191;
                  v951 = v1192;
                  v952 = v1193;
                  v1139 = v1194;
                  v1138 = v1195;
                  v1137 = v1196;
                  v1136 = v1197;
                  v1143 = v1198;
                  v1142 = v1199;
                  v1141 = v1200;
                  v1140 = v1201;
                  sub_10002205C(6, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v947, v948, 4.0, 4.0, v946, v945);
                  sub_10002205C(6, 4, v9, v1, v949, v950, v951, v952, v947, v948, 4.0, 4.0, v946, v945);
                  sub_10002205C(6, 0, v9, v1, v1139, v1138, v1137, v1136, v947, v948, 4.0, 4.0, v946, v945);
                  sub_10002205C(6, 0, v9, v1, v1143, v1142, v1141, v1140, v947, v948, 4.0, 4.0, v946, v945);
                  sub_10002205C(3, 8, v9, v1, v1154, v1146, v1145, v1144, v947, v948, 4.0, 4.0, v946, v945);
                  goto LABEL_297;
                }

                if (v41 != 11)
                {
                  if (v41 != 12)
                  {
                    goto LABEL_125;
                  }

                  sub_10009937C(CGRectMinYEdge, &v1189.origin, 0.5, 0.0, 0.0, v36, v48);
                  v152 = v1190;
                  v153 = v1191;
                  v154 = v1192;
                  v155 = v1193;
                  sub_1000236CC(&v1189.origin, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                  v156 = *(v40 + v1);
                  v1154 = v152;
                  v1145 = v154;
                  v1146 = v153;
                  v1144 = v155;
                  if (v156)
                  {
                    LOBYTE(v157) = 1;
                  }

                  else
                  {
                    v546 = 2;
                    v157 = 0;
                    v547 = &qword_1001343E8;
                    do
                    {
                      v549 = *v547++;
                      v548 = v549;
                      if ((v549 & ~v157) == 0)
                      {
                        v548 = 0;
                      }

                      v157 |= v548;
                      --v546;
                    }

                    while (v546);
                  }

                  v890 = v1190;
                  v891 = v1191;
                  v892 = v1192;
                  v893 = v1193;
                  v1134 = v1195;
                  v1135 = v1194;
                  v1132 = v1197;
                  v1133 = v1196;
                  v1138 = v1199;
                  v1139 = v1198;
                  v1136 = v1201;
                  v1137 = v1200;
                  v1142 = v1203;
                  v1143 = v1202;
                  v1140 = v1205;
                  v1141 = v1204;
                  v894 = v1183;
                  v895 = v1184;
                  v896 = v1185;
                  v897 = v1186;
                  sub_10002205C(3, v157, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 0, v9, v1, v890, v891, v892, v893, v896, v897, 4.0, 4.0, v895, v894);
                  sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v896, v897, 4.0, 4.0, v895, v894);
                  sub_10002205C(6, 2, v9, v1, v1139, v1138, v1137, v1136, v896, v897, 4.0, 4.0, v895, v894);
                  if (*(v40 + v1) == 1)
                  {
                    v898 = _swiftEmptyArrayStorage[2];
                    v900 = v1144;
                    v899 = v1145;
                    v901 = 0;
                    if (v898 != 0.0)
                    {
                      v902 = &_swiftEmptyArrayStorage[4];
                      v904 = v1142;
                      v903 = v1143;
                      v906 = v1140;
                      v905 = v1141;
                      do
                      {
                        v908 = *v902++;
                        v907 = v908;
                        if ((v908 & ~v901) == 0)
                        {
                          v907 = 0;
                        }

                        v901 |= v907;
                        --*&v898;
                      }

                      while (v898 != 0.0);
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    LOBYTE(v901) = 8;
                    v900 = v1144;
                    v899 = v1145;
                  }

                  v904 = v1142;
                  v903 = v1143;
                  v906 = v1140;
                  v905 = v1141;
LABEL_258:
                  v909 = v1183;
                  v910 = v1184;
                  v911 = v1185;
                  v912 = v1186;
                  sub_10002205C(6, v901, v9, v1, v903, v904, v905, v906, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v1154, v1146, v899, v900);
                  v1144 = v1190;
                  v1145 = v1191;
                  v1146 = v1192;
                  v1154 = v1193;
                  sub_1000234C4(&v1189.origin, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                  v913 = v1190;
                  v914 = v1191;
                  v915 = v1192;
                  v916 = v1193;
                  v1139 = v1194;
                  v1138 = v1195;
                  v1137 = v1196;
                  v1136 = v1197;
                  v1143 = v1198;
                  v1142 = v1199;
                  v1141 = v1200;
                  v1140 = v1201;
                  sub_10002205C(6, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v911, v912, 4.0, 4.0, v910, v909);
                  sub_10002205C(6, 4, v9, v1, v913, v914, v915, v916, v911, v912, 4.0, 4.0, v910, v909);
                  sub_10002205C(6, 0, v9, v1, v1139, v1138, v1137, v1136, v911, v912, 4.0, 4.0, v910, v909);
                  sub_10002205C(6, 0, v9, v1, v1143, v1142, v1141, v1140, v911, v912, 4.0, 4.0, v910, v909);
                  v917 = v1166;
                  v918 = v1177;
                  v1168(v1166, v1170, v1177);
                  v919 = sub_1000FFB24();
                  v1167(v917, v918);
                  if (v919 & 1) != 0 && (v1[v1153] != 1 || *(v40 + v1) == 1) && (sub_100022384(11, v1164, v1161, v1165, v1))
                  {
                    sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v1144, v1145, v1146, v1154);
                    v1154 = v1190;
                    v1145 = v1192;
                    v1146 = v1191;
                    v1144 = v1193;
                    sub_10009937C(CGRectMinYEdge, &v1189.origin, 0.5, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                    v920 = v1190;
                    v921 = v1191;
                    v922 = v1192;
                    v923 = v1193;
                    v924 = v1183;
                    v925 = v1184;
                    v876 = v1185;
                    v877 = v1186;
                    sub_10002205C(6, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                    sub_10002205C(6, 0, v9, v1, v920, v921, v922, v923, v876, v877, 4.0, 4.0, v925, v924);
                    v1103 = v925;
                    v1105 = v924;
                    v725 = 4.0;
                    v726 = 4.0;
                    v727 = v1154;
                    v729 = v1145;
                    v728 = v1146;
                    v730 = v1144;
                    v731 = 5;
                  }

                  else
                  {
                    sub_10009937C(CGRectMinYEdge, &v1189.origin, 0.5, v1144, v1145, v1146, v1154);
                    v1154 = v1190;
                    v1145 = v1192;
                    v1146 = v1191;
                    v1144 = v1193;
                    sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                    v926 = v1190;
                    v927 = v1191;
                    v928 = v1192;
                    v929 = v1193;
                    v930 = v1183;
                    v931 = v1184;
                    v876 = v1185;
                    v877 = v1186;
                    sub_10002205C(6, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                    sub_10002205C(6, 0, v9, v1, v926, v927, v928, v929, v876, v877, 4.0, 4.0, v931, v930);
                    v1103 = v931;
                    v1105 = v930;
                    v725 = 4.0;
                    v726 = 4.0;
                    v727 = v1154;
                    v729 = v1145;
                    v728 = v1146;
                    v730 = v1144;
                    v731 = 4;
                  }

                  goto LABEL_295;
                }

                sub_10009937C(CGRectMinYEdge, &v1189.origin, 0.5, 0.0, 0.0, v36, v48);
                v384 = v1190;
                v385 = v1191;
                v386 = v1192;
                v387 = v1193;
                sub_1000236CC(&v1189.origin, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                v388 = *(v40 + v1);
                v1154 = v384;
                v1145 = v386;
                v1146 = v385;
                v1144 = v387;
                if (v388)
                {
                  LOBYTE(v389) = 1;
                }

                else
                {
                  v538 = 2;
                  v389 = 0;
                  v539 = &qword_1001343B8;
                  do
                  {
                    v541 = *v539++;
                    v540 = v541;
                    if ((v541 & ~v389) == 0)
                    {
                      v540 = 0;
                    }

                    v389 |= v540;
                    --v538;
                  }

                  while (v538);
                }

                v687 = v1190;
                v688 = v1191;
                v689 = v1192;
                v690 = v1193;
                v1134 = v1195;
                v1135 = v1194;
                v1132 = v1197;
                v1133 = v1196;
                v1138 = v1199;
                v1139 = v1198;
                v1136 = v1201;
                v1137 = v1200;
                v1142 = v1203;
                v1143 = v1202;
                v1140 = v1205;
                v1141 = v1204;
                v691 = v1183;
                v692 = v1184;
                v693 = v1185;
                v694 = v1186;
                sub_10002205C(3, v389, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                sub_10002205C(6, 0, v9, v1, v687, v688, v689, v690, v693, v694, 4.0, 4.0, v692, v691);
                sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v693, v694, 4.0, 4.0, v692, v691);
                sub_10002205C(6, 2, v9, v1, v1139, v1138, v1137, v1136, v693, v694, 4.0, 4.0, v692, v691);
                if (*(v40 + v1) == 1)
                {
                  v695 = _swiftEmptyArrayStorage[2];
                  v697 = v1144;
                  v696 = v1145;
                  v698 = 0;
                  if (v695 != 0.0)
                  {
                    v699 = &_swiftEmptyArrayStorage[4];
                    v701 = v1142;
                    v700 = v1143;
                    v703 = v1140;
                    v702 = v1141;
                    do
                    {
                      v705 = *v699++;
                      v704 = v705;
                      if ((v705 & ~v698) == 0)
                      {
                        v704 = 0;
                      }

                      v698 |= v704;
                      --*&v695;
                    }

                    while (v695 != 0.0);
                    goto LABEL_198;
                  }
                }

                else
                {
                  LOBYTE(v698) = 8;
                  v697 = v1144;
                  v696 = v1145;
                }

                v701 = v1142;
                v700 = v1143;
                v703 = v1140;
                v702 = v1141;
LABEL_198:
                v706 = v1183;
                v707 = v1184;
                v708 = v1185;
                v709 = v1186;
                sub_10002205C(6, v698, v9, v1, v700, v701, v702, v703, v1185, v1186, 4.0, 4.0, v1184, v1183);
                sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v1154, v1146, v696, v697);
                v1144 = v1190;
                v1145 = v1191;
                v1146 = v1192;
                v1154 = v1193;
                sub_1000234C4(&v1189.origin, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                v710 = v1190;
                v711 = v1191;
                v712 = v1192;
                v713 = v1193;
                v1139 = v1194;
                v1138 = v1195;
                v1137 = v1196;
                v1136 = v1197;
                v1143 = v1198;
                v1142 = v1199;
                v1141 = v1200;
                v1140 = v1201;
                sub_10002205C(6, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v708, v709, 4.0, 4.0, v707, v706);
                sub_10002205C(6, 4, v9, v1, v710, v711, v712, v713, v708, v709, 4.0, 4.0, v707, v706);
                sub_10002205C(6, 0, v9, v1, v1139, v1138, v1137, v1136, v708, v709, 4.0, 4.0, v707, v706);
                sub_10002205C(6, 0, v9, v1, v1143, v1142, v1141, v1140, v708, v709, 4.0, 4.0, v707, v706);
                v714 = v1166;
                v715 = v1177;
                v1168(v1166, v1170, v1177);
                v716 = sub_1000FFB24();
                v1167(v714, v715);
                if (v716 & 1) != 0 && (v1[v1153] != 1 || *(v40 + v1) == 1) && (sub_100022384(9, v1164, v1161, v1165, v1) & 1) != 0 && (sub_100022384(10, v1164, v1161, v1165, v1))
                {
                  sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v1144, v1145, v1146, v1154);
                  v717 = v1190;
                  v718 = v1191;
                  v719 = v1192;
                  v720 = v1193;
                  v721 = v1183;
                  v722 = v1184;
                  v723 = v1185;
                  v724 = v1186;
                  sub_10002205C(5, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  v1103 = v722;
                  v1105 = v721;
                  v725 = 4.0;
                  v726 = 4.0;
                  v727 = v717;
                  v728 = v718;
                  v729 = v719;
                  v730 = v720;
                  v731 = 5;
                }

                else
                {
                  sub_10009937C(CGRectMinYEdge, &v1189.origin, 0.5, v1144, v1145, v1146, v1154);
                  v732 = v1190;
                  v733 = v1191;
                  v734 = v1192;
                  v735 = v1193;
                  v736 = v1183;
                  v737 = v1184;
                  v723 = v1185;
                  v724 = v1186;
                  sub_10002205C(4, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  v1103 = v737;
                  v1105 = v736;
                  v725 = 4.0;
                  v726 = 4.0;
                  v727 = v732;
                  v728 = v733;
                  v729 = v734;
                  v730 = v735;
                  v731 = 4;
                }

                goto LABEL_284;
              }

              if (v41 == 7)
              {
                v422 = v1156;
                v423 = v1177;
                (v1168)(v1156, v1170, v1177, 0);
                v424 = sub_1000FFB24();
                v1167(v422, v423);
                if ((v424 & 1) == 0 || v1[v1153] == 1 && *(v40 + v1) != 1)
                {
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1274.origin.x = 0.0;
                  v1274.origin.y = 0.0;
                  v1274.size.width = v36;
                  v1274.size.height = v48;
                  v527 = v1150;
                  CGRectDivide(v1274, &v1189, &v1187, v1150, CGRectMinYEdge);
                  v528 = v1189.origin.x;
                  v529 = v1189.origin.y;
                  v530 = v1189.size.width;
                  v531 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1275.origin.x = 0.0;
                  v1275.origin.y = 0.0;
                  v1275.size.width = v36;
                  v1275.size.height = v48;
                  CGRectDivide(v1275, &v1189, &v1187, v527, CGRectMaxYEdge);
                  v532 = v1189.origin.x;
                  v533 = v1189.origin.y;
                  v534 = v1189.size.width;
                  v535 = v1189.size.height;
                  sub_1000236CC(&v1189.origin, v528, v529, v530, v531);
                  v536 = *(v40 + v1);
                  v1154 = v532;
                  v1145 = v534;
                  v1146 = v533;
                  v1144 = v535;
                  if (v536)
                  {
                    LOBYTE(v537) = 1;
                  }

                  else
                  {
                    v566 = 2;
                    v537 = 0;
                    v567 = &qword_1001342F8;
                    do
                    {
                      v569 = *v567++;
                      v568 = v569;
                      if ((v569 & ~v537) == 0)
                      {
                        v568 = 0;
                      }

                      v537 |= v568;
                      --v566;
                    }

                    while (v566);
                  }

                  v1074 = v1190;
                  v1075 = v1191;
                  v1076 = v1192;
                  v1077 = v1193;
                  v1134 = v1195;
                  v1135 = v1194;
                  v1132 = v1197;
                  v1133 = v1196;
                  v1138 = v1199;
                  v1139 = v1198;
                  v1136 = v1201;
                  v1137 = v1200;
                  v1142 = v1203;
                  v1143 = v1202;
                  v1140 = v1205;
                  v1141 = v1204;
                  v1078 = v1183;
                  v1079 = v1184;
                  v1080 = v1185;
                  v1081 = v1186;
                  sub_10002205C(3, v537, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 0, v9, v1, v1074, v1075, v1076, v1077, v1080, v1081, 4.0, 4.0, v1079, v1078);
                  sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v1080, v1081, 4.0, 4.0, v1079, v1078);
                  sub_10002205C(6, 2, v9, v1, v1139, v1138, v1137, v1136, v1080, v1081, 4.0, 4.0, v1079, v1078);
                  if (*(v40 + v1) == 1)
                  {
                    v1082 = _swiftEmptyArrayStorage[2];
                    if (v1082 != 0.0)
                    {
                      v1083 = 0;
                      v1084 = &_swiftEmptyArrayStorage[4];
                      v1086 = v1142;
                      v1085 = v1143;
                      v1088 = v1140;
                      v1087 = v1141;
                      do
                      {
                        v1090 = *v1084++;
                        v1089 = v1090;
                        if ((v1090 & ~v1083) == 0)
                        {
                          v1089 = 0;
                        }

                        v1083 |= v1089;
                        --*&v1082;
                      }

                      while (v1082 != 0.0);
                      goto LABEL_351;
                    }

                    LOBYTE(v1083) = 0;
                  }

                  else
                  {
                    LOBYTE(v1083) = 8;
                  }

                  v1086 = v1142;
                  v1085 = v1143;
                  v1088 = v1140;
                  v1087 = v1141;
LABEL_351:
                  v1091 = v1183;
                  v1092 = v1184;
                  v1093 = v1185;
                  sub_10002205C(6, v1083, v9, v1, v1085, v1086, v1087, v1088, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  v1095 = v1145;
                  v1094 = v1146;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1096 = v1154;
                  v1320.origin.x = v1154;
                  v1320.origin.y = v1146;
                  v1320.size.width = v1145;
                  v1097 = v1144;
                  v1320.size.height = v1144;
                  CGRectDivide(v1320, &v1189, &v1187, v1145 * 0.5, CGRectMinXEdge);
                  v1143 = v1189.origin.x;
                  v1142 = v1189.origin.y;
                  v1141 = v1189.size.width;
                  v1140 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1321.origin.x = v1096;
                  v1321.origin.y = v1094;
                  v1321.size.width = v1095;
                  v1321.size.height = v1097;
                  CGRectDivide(v1321, &v1189, &v1187, v1095 * 0.5, CGRectMaxXEdge);
                  v1098 = v1189.origin.x;
                  v1099 = v1189.origin.y;
                  v1100 = v1189.size.width;
                  v1101 = v1189.size.height;
                  v1102 = v1186;
                  sub_10002205C(3, 4, v9, v1, v1143, v1142, v1141, v1140, v1093, v1186, 4.0, 4.0, v1092, v1091);
                  sub_10002205C(3, 8, v9, v1, v1098, v1099, v1100, v1101, v1093, v1102, 4.0, 4.0, v1092, v1091);
                  v64 = 0;
                  v36 = v1173;
                  v48 = v1172;
                  goto LABEL_299;
                }

                v425 = v1164;
                if (sub_100022384(5, v1164, v1161, v1165, v1) & 1) != 0 && (sub_100022384(6, v425, v1161, v1165, v1))
                {
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1251.origin.x = 0.0;
                  v1251.origin.y = 0.0;
                  v1251.size.width = v36;
                  v1251.size.height = v48;
                  v426 = v1152;
                  CGRectDivide(v1251, &v1189, &v1187, v1152, CGRectMinXEdge);
                  v427 = v1189.origin.x;
                  v428 = v1189.origin.y;
                  v429 = v1189.size.width;
                  v430 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1252.origin.x = 0.0;
                  v1252.origin.y = 0.0;
                  v1252.size.width = v1173;
                  v1252.size.height = v1172;
                  CGRectDivide(v1252, &v1189, &v1187, v426, CGRectMaxXEdge);
                  v1135 = v1189.origin.x;
                  v431 = v1189.origin.y;
                  v432 = v1189.size.width;
                  v433 = v1189.size.height;
                  v434 = v430 * v1123;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1253.origin.x = v427;
                  v1253.origin.y = v428;
                  v1253.size.width = v429;
                  v1253.size.height = v430;
                  CGRectDivide(v1253, &v1189, &v1187, v430 * 0.666666667, CGRectMinYEdge);
                  v1138 = v1189.origin.y;
                  v1139 = v1189.origin.x;
                  v1136 = v1189.size.height;
                  v1137 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1254.origin.x = v427;
                  v1254.origin.y = v428;
                  v1254.size.width = v429;
                  v1254.size.height = v430;
                  CGRectDivide(v1254, &v1189, &v1187, v434, CGRectMaxYEdge);
                  v435 = v1189.origin.x;
                  v436 = v1189.origin.y;
                  v437 = v1189.size.width;
                  v438 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1255.origin.x = v435;
                  v1255.origin.y = v436;
                  v1255.size.width = v437;
                  v1255.size.height = v438;
                  CGRectDivide(v1255, &v1189, &v1187, v437 * 0.5, CGRectMinXEdge);
                  v1142 = v1189.origin.y;
                  v1143 = v1189.origin.x;
                  v1140 = v1189.size.height;
                  v1141 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1256.origin.x = v435;
                  v1256.origin.y = v436;
                  v1256.size.width = v437;
                  v1256.size.height = v438;
                  CGRectDivide(v1256, &v1189, &v1187, v437 * 0.5, CGRectMaxXEdge);
                  v1154 = v1189.origin.x;
                  v1145 = v1189.size.width;
                  v1146 = v1189.origin.y;
                  v1144 = v1189.size.height;
                  v1134 = v433 * 0.666666667;
                  v439 = v433;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v440 = v1135;
                  v1257.origin.x = v1135;
                  v441 = v431;
                  v1257.origin.y = v431;
                  v1257.size.width = v432;
                  v1257.size.height = v433;
                  CGRectDivide(v1257, &v1189, &v1187, v433 * 0.333333333, CGRectMinYEdge);
                  v442 = v1189.origin.x;
                  v443 = v1189.origin.y;
                  v444 = v1189.size.width;
                  v445 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1258.origin.x = v440;
                  v1258.origin.y = v441;
                  v1258.size.width = v432;
                  v1258.size.height = v439;
                  CGRectDivide(v1258, &v1189, &v1187, v1134, CGRectMaxYEdge);
                  v1135 = v1189.origin.x;
                  v446 = v1189.origin.y;
                  v447 = v1189.size.width;
                  v448 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1259.origin.x = v442;
                  v1259.origin.y = v443;
                  v1259.size.width = v444;
                  v1259.size.height = v445;
                  CGRectDivide(v1259, &v1189, &v1187, v444 * 0.5, CGRectMinXEdge);
                  v1113 = v1189.origin.y;
                  v1114 = v1189.origin.x;
                  v1111 = v1189.size.height;
                  v1112 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1260.origin.x = v442;
                  v1260.origin.y = v443;
                  v1260.size.width = v444;
                  v1260.size.height = v445;
                  CGRectDivide(v1260, &v1189, &v1187, v444 * 0.5, CGRectMaxXEdge);
                  v1117 = v1189.origin.y;
                  v1118 = v1189.origin.x;
                  v1115 = v1189.size.height;
                  v1116 = v1189.size.width;
                  v449 = v447 * 0.5;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v450 = v1135;
                  v1261.origin.x = v1135;
                  v1261.origin.y = v446;
                  v1261.size.width = v447;
                  v1261.size.height = v448;
                  CGRectDivide(v1261, &v1189, &v1187, v447 * 0.5, CGRectMinXEdge);
                  v1132 = v1189.origin.y;
                  v1133 = v1189.origin.x;
                  v1124 = v1189.size.height;
                  v1125 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1262.origin.x = v450;
                  v1262.origin.y = v446;
                  v1262.size.width = v447;
                  v36 = v1173;
                  v1262.size.height = v448;
                  v48 = v1172;
                  CGRectDivide(v1262, &v1189, &v1187, v449, CGRectMaxXEdge);
                  v451 = v1189.origin.x;
                  v452 = v1189.origin.y;
                  v1134 = v1189.size.height;
                  v1135 = v1189.size.width;
                  v453 = v1183;
                  v454 = v1184;
                  v455 = v1185;
                  v456 = v1186;
                  sub_10002205C(3, 1, v9, v1, v1139, v1138, v1137, v1136, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 0, v9, v1, v1114, v1113, v1112, v1111, v455, v456, 4.0, 4.0, v454, v453);
                  sub_10002205C(6, 2, v9, v1, v1118, v1117, v1116, v1115, v455, v456, 4.0, 4.0, v454, v453);
                  sub_10002205C(6, 4, v9, v1, v1143, v1142, v1141, v1140, v455, v456, 4.0, 4.0, v454, v453);
                  sub_10002205C(6, 0, v9, v1, v1154, v1146, v1145, v1144, v455, v456, 4.0, 4.0, v454, v453);
                  sub_10002205C(5, 0, v9, v1, v1133, v1132, v1125, v1124, v455, v456, 4.0, 4.0, v454, v453);
                  sub_10002205C(5, 8, v9, v1, v451, v452, v1135, v1134, v455, v456, 4.0, 4.0, v454, v453);
                }

                else
                {
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1286.origin.x = 0.0;
                  v1286.origin.y = 0.0;
                  v1286.size.width = v36;
                  v1286.size.height = v48;
                  CGRectDivide(v1286, &v1189, &v1187, v1128, CGRectMinYEdge);
                  v600 = v1189.origin.x;
                  v601 = v1189.origin.y;
                  v602 = v1189.size.width;
                  v603 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1287.origin.x = 0.0;
                  v1287.origin.y = 0.0;
                  v1287.size.width = v36;
                  v1287.size.height = v48;
                  CGRectDivide(v1287, &v1189, &v1187, v1127, CGRectMaxYEdge);
                  v1145 = v1189.origin.y;
                  v1146 = v1189.origin.x;
                  v1144 = v1189.size.width;
                  v1154 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1288.origin.x = v600;
                  v1288.origin.y = v601;
                  v1288.size.width = v602;
                  v1288.size.height = v603;
                  CGRectDivide(v1288, &v1189, &v1187, v602 * 0.5, CGRectMinXEdge);
                  v1142 = v1189.origin.y;
                  v1143 = v1189.origin.x;
                  v1140 = v1189.size.height;
                  v1141 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1289.origin.x = v600;
                  v1289.origin.y = v601;
                  v1289.size.width = v602;
                  v1289.size.height = v603;
                  CGRectDivide(v1289, &v1189, &v1187, v602 * 0.5, CGRectMaxXEdge);
                  v604 = v1189.origin.x;
                  v605 = v1189.origin.y;
                  v606 = v1189.size.width;
                  v607 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1290.origin.x = v604;
                  v1290.origin.y = v605;
                  v1290.size.width = v606;
                  v1290.size.height = v607;
                  CGRectDivide(v1290, &v1189, &v1187, v607 * 0.5, CGRectMinYEdge);
                  v1138 = v1189.origin.y;
                  v1139 = v1189.origin.x;
                  v1136 = v1189.size.height;
                  v1137 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1291.origin.x = v604;
                  v1291.origin.y = v605;
                  v1291.size.width = v606;
                  v1291.size.height = v607;
                  CGRectDivide(v1291, &v1189, &v1187, v607 * 0.5, CGRectMaxYEdge);
                  v608 = v1189.origin.x;
                  v609 = v1189.origin.y;
                  v610 = v1189.size.width;
                  v611 = v1189.size.height;
                  v612 = v1189.size.width * 0.5;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1292.origin.x = v608;
                  v1292.origin.y = v609;
                  v1292.size.width = v610;
                  v1292.size.height = v611;
                  CGRectDivide(v1292, &v1189, &v1187, v610 * 0.5, CGRectMinXEdge);
                  v1132 = v1189.origin.x;
                  v613 = v1189.origin.y;
                  v614 = v1189.size.width;
                  v615 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1293.origin.x = v608;
                  v1293.origin.y = v609;
                  v1293.size.width = v610;
                  v1293.size.height = v611;
                  CGRectDivide(v1293, &v1189, &v1187, v612, CGRectMaxXEdge);
                  v1134 = v1189.origin.y;
                  v1135 = v1189.origin.x;
                  v616 = v1189.size.width;
                  v1133 = v1189.size.height;
                  v617 = v1183;
                  v618 = v1184;
                  v619 = v1185;
                  v620 = v1186;
                  sub_10002205C(3, 1, v9, v1, v1143, v1142, v1141, v1140, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(4, 2, v9, v1, v1139, v1138, v1137, v1136, v619, v620, 4.0, 4.0, v618, v617);
                  sub_10002205C(6, 0, v9, v1, v1132, v613, v614, v615, v619, v620, 4.0, 4.0, v618, v617);
                  sub_10002205C(6, 0, v9, v1, v1135, v1134, v616, v1133, v619, v620, 4.0, 4.0, v618, v617);
                  v622 = v1144;
                  v621 = v1145;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v623 = v1146;
                  v1294.origin.x = v1146;
                  v1294.origin.y = v1145;
                  v1294.size.width = v1144;
                  v624 = v1154;
                  v1294.size.height = v1154;
                  CGRectDivide(v1294, &v1189, &v1187, v1144 * 0.5, CGRectMinXEdge);
                  v1143 = v1189.origin.x;
                  v625 = v1189.origin.y;
                  v626 = v1189.size.width;
                  v627 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1295.origin.x = v623;
                  v1295.origin.y = v621;
                  v1295.size.width = v622;
                  v1295.size.height = v624;
                  CGRectDivide(v1295, &v1189, &v1187, v622 * 0.5, CGRectMaxXEdge);
                  v1154 = v1189.origin.x;
                  v1146 = v1189.origin.y;
                  v1145 = v1189.size.width;
                  v1144 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v628 = v1143;
                  v1296.origin.x = v1143;
                  v1296.origin.y = v625;
                  v1296.size.width = v626;
                  v1296.size.height = v627;
                  CGRectDivide(v1296, &v1189, &v1187, v626 * 0.5, CGRectMinXEdge);
                  v629 = v1189.origin.x;
                  v630 = v1189.origin.y;
                  v631 = v1189.size.width;
                  v1141 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1297.origin.x = v628;
                  v1297.origin.y = v625;
                  v1297.size.width = v626;
                  v1297.size.height = v627;
                  v48 = v1172;
                  CGRectDivide(v1297, &v1189, &v1187, v626 * 0.5, CGRectMaxXEdge);
                  v1143 = v1189.origin.x;
                  v1142 = v1189.origin.y;
                  v632 = v1189.size.width;
                  v633 = v1189.size.height;
                  v634 = v1183;
                  v635 = v1184;
                  v636 = v629;
                  v637 = v630;
                  v638 = v1185;
                  v639 = v1186;
                  sub_10002205C(6, 4, v9, v1, v636, v637, v631, v1141, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  v640 = v633;
                  v36 = v1173;
                  sub_10002205C(6, 0, v9, v1, v1143, v1142, v632, v640, v638, v639, 4.0, 4.0, v635, v634);
                  sub_10002205C(4, 8, v9, v1, v1154, v1146, v1145, v1144, v638, v639, 4.0, 4.0, v635, v634);
                }
              }

              else
              {
                if (v41 != 8)
                {
                  v84 = v1166;
                  v85 = v1177;
                  (v1168)(v1166, v1170, v1177, 0);
                  v86 = sub_1000FFB24();
                  v1167(v84, v85);
                  v87 = 0.666666667;
                  if ((v86 & 1) == 0)
                  {
                    v87 = 0.5;
                  }

                  v88 = v48 * v87;
                  memset(&v1189, 0, sizeof(v1189));
                  v89 = v48 * (1.0 - v87);
                  memset(&v1187, 0, sizeof(v1187));
                  v1208.origin.x = 0.0;
                  v1208.origin.y = 0.0;
                  v1208.size.width = v36;
                  v1208.size.height = v48;
                  CGRectDivide(v1208, &v1189, &v1187, v88, CGRectMinYEdge);
                  v90 = v1189.origin.x;
                  v91 = v1189.origin.y;
                  v92 = v1189.size.width;
                  v93 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1209.origin.x = 0.0;
                  v1209.origin.y = 0.0;
                  v1209.size.width = v36;
                  v1209.size.height = v48;
                  CGRectDivide(v1209, &v1189, &v1187, v89, CGRectMaxYEdge);
                  v94 = v1189.origin.x;
                  v95 = v1189.origin.y;
                  v96 = v1189.size.width;
                  v97 = v1189.size.height;
                  sub_1000236CC(&v1189.origin, v90, v91, v92, v93);
                  v98 = *(v40 + v1);
                  v1154 = v94;
                  v1145 = v96;
                  v1146 = v95;
                  v1144 = v97;
                  if (v98)
                  {
                    LOBYTE(v99) = 1;
                  }

                  else
                  {
                    v542 = 2;
                    v99 = 0;
                    v543 = &qword_100134358;
                    do
                    {
                      v545 = *v543++;
                      v544 = v545;
                      if ((v545 & ~v99) == 0)
                      {
                        v544 = 0;
                      }

                      v99 |= v544;
                      --v542;
                    }

                    while (v542);
                  }

                  v834 = v1190;
                  v835 = v1191;
                  v836 = v1192;
                  v837 = v1193;
                  v1134 = v1195;
                  v1135 = v1194;
                  v1132 = v1197;
                  v1133 = v1196;
                  v1138 = v1199;
                  v1139 = v1198;
                  v1136 = v1201;
                  v1137 = v1200;
                  v1142 = v1203;
                  v1143 = v1202;
                  v1140 = v1205;
                  v1141 = v1204;
                  v838 = v1183;
                  v839 = v1184;
                  v840 = v1185;
                  v841 = v1186;
                  sub_10002205C(3, v99, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 0, v9, v1, v834, v835, v836, v837, v840, v841, 4.0, 4.0, v839, v838);
                  sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v840, v841, 4.0, 4.0, v839, v838);
                  sub_10002205C(6, 2, v9, v1, v1139, v1138, v1137, v1136, v840, v841, 4.0, 4.0, v839, v838);
                  if (*(v40 + v1) == 1)
                  {
                    v842 = _swiftEmptyArrayStorage[2];
                    v843 = v1154;
                    v845 = v1145;
                    v844 = v1146;
                    v846 = v1144;
                    v847 = 0;
                    if (v842 != 0.0)
                    {
                      v848 = &_swiftEmptyArrayStorage[4];
                      v849 = v1142;
                      v850 = v1143;
                      v852 = v1140;
                      v851 = v1141;
                      do
                      {
                        v854 = *v848++;
                        v853 = v854;
                        if ((v854 & ~v847) == 0)
                        {
                          v853 = 0;
                        }

                        v847 |= v853;
                        --*&v842;
                      }

                      while (v842 != 0.0);
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    LOBYTE(v847) = 8;
                    v843 = v1154;
                    v845 = v1145;
                    v844 = v1146;
                    v846 = v1144;
                  }

                  v849 = v1142;
                  v850 = v1143;
                  v852 = v1140;
                  v851 = v1141;
LABEL_244:
                  sub_10002205C(6, v847, v9, v1, v850, v849, v851, v852, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v843, v844, v845, v846);
                  v855 = v1189.origin.x;
                  v856 = v1189.origin.y;
                  v857 = v1189.size.width;
                  v858 = v1189.size.height;
                  v859 = v1190;
                  v860 = v1191;
                  v861 = v1192;
                  v862 = v1193;
                  v863 = v1158;
                  v864 = v1177;
                  v1168(v1158, v1170, v1177);
                  v865 = sub_1000FFB24();
                  v1167(v863, v864);
                  if ((v865 & 1) != 0 && (v1[v1153] != 1 || *(v40 + v1) == 1))
                  {
                    sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v855, v856, v857, v858);
                    v866 = v1189.origin.x;
                    v867 = v1189.origin.y;
                    v868 = v1189.size.width;
                    v869 = v1189.size.height;
                    v1140 = v1191;
                    v1141 = v1190;
                    v1138 = v1193;
                    v1139 = v1192;
                    sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v859, v860, v861, v862);
                    v870 = v1189.origin.x;
                    v871 = v1189.origin.y;
                    v1142 = v1189.size.height;
                    v1143 = v1189.size.width;
                    v1154 = v1190;
                    v1145 = v1192;
                    v1146 = v1191;
                    v1144 = v1193;
                    v872 = v1183;
                    v873 = v1184;
                    v874 = v866;
                    v875 = v867;
                    v876 = v1185;
                    v877 = v1186;
                    sub_10002205C(6, 4, v9, v1, v874, v875, v868, v869, v1185, v1186, 4.0, 4.0, v1184, v1183);
                    sub_10002205C(6, 0, v9, v1, v1141, v1140, v1139, v1138, v876, v877, 4.0, 4.0, v873, v872);
                    sub_10002205C(6, 0, v9, v1, v870, v871, v1143, v1142, v876, v877, 4.0, 4.0, v873, v872);
                    v1103 = v873;
                    v1105 = v872;
                    v725 = 4.0;
                    v726 = 4.0;
                    v727 = v1154;
                    v729 = v1145;
                    v728 = v1146;
                    v730 = v1144;
                    v731 = 6;
                    goto LABEL_295;
                  }

                  sub_10009937C(CGRectMinYEdge, &v1189.origin, 0.5, v855, v856, v857, v858);
                  v1154 = v862;
                  v878 = v1189.origin.x;
                  v1145 = v860;
                  v1146 = v861;
                  v879 = v1189.origin.y;
                  v880 = v1189.size.width;
                  v1144 = v859;
                  v881 = v1189.size.height;
                  sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v1190, v1191, v1192, v1193);
                  v1138 = v1189.origin.y;
                  v1139 = v1189.origin.x;
                  v882 = v1189.size.width;
                  v883 = v1189.size.height;
                  v1142 = v1191;
                  v1143 = v1190;
                  v1140 = v1193;
                  v1141 = v1192;
                  v884 = v1183;
                  v885 = v1184;
                  v886 = v878;
                  v887 = v879;
                  v888 = v1185;
                  v889 = v1186;
                  sub_10002205C(6, 0, v9, v1, v886, v887, v880, v881, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 4, v9, v1, v1139, v1138, v882, v883, v888, v889, 4.0, 4.0, v885, v884);
                  sub_10002205C(6, 0, v9, v1, v1143, v1142, v1141, v1140, v888, v889, 4.0, 4.0, v885, v884);
                  sub_10002205C(6, 8, v9, v1, v1144, v1145, v1146, v1154, v888, v889, 4.0, 4.0, v885, v884);
                  goto LABEL_297;
                }

                v341 = v1157;
                v342 = v1177;
                (v1168)(v1157, v1170, v1177, 0);
                v343 = sub_1000FFB24();
                v1167(v341, v342);
                if ((v343 & 1) == 0 || v1[v1153] == 1 && *(v40 + v1) != 1)
                {
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1270.origin.x = 0.0;
                  v1270.origin.y = 0.0;
                  v1270.size.width = v36;
                  v1270.size.height = v48;
                  v510 = v1150;
                  CGRectDivide(v1270, &v1189, &v1187, v1150, CGRectMinYEdge);
                  v511 = v1189.origin.x;
                  v512 = v1189.origin.y;
                  v513 = v1189.size.width;
                  v514 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1271.origin.x = 0.0;
                  v1271.origin.y = 0.0;
                  v1271.size.width = v36;
                  v1271.size.height = v48;
                  CGRectDivide(v1271, &v1189, &v1187, v510, CGRectMaxYEdge);
                  v515 = v1189.origin.x;
                  v516 = v1189.origin.y;
                  v517 = v1189.size.width;
                  v518 = v1189.size.height;
                  sub_1000236CC(&v1189.origin, v511, v512, v513, v514);
                  v519 = *(v40 + v1);
                  v1154 = v515;
                  v1145 = v517;
                  v1146 = v516;
                  v1144 = v518;
                  if (v519)
                  {
                    LOBYTE(v520) = 1;
                  }

                  else
                  {
                    v558 = 2;
                    v520 = 0;
                    v559 = &qword_100134328;
                    do
                    {
                      v561 = *v559++;
                      v560 = v561;
                      if ((v561 & ~v520) == 0)
                      {
                        v560 = 0;
                      }

                      v520 |= v560;
                      --v558;
                    }

                    while (v558);
                  }

                  v987 = v1190;
                  v988 = v1191;
                  v989 = v1192;
                  v990 = v1193;
                  v1134 = v1195;
                  v1135 = v1194;
                  v1132 = v1197;
                  v1133 = v1196;
                  v1138 = v1199;
                  v1139 = v1198;
                  v1136 = v1201;
                  v1137 = v1200;
                  v1142 = v1203;
                  v1143 = v1202;
                  v1140 = v1205;
                  v1141 = v1204;
                  v991 = v1183;
                  v992 = v1184;
                  v993 = v1185;
                  v994 = v1186;
                  sub_10002205C(3, v520, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 0, v9, v1, v987, v988, v989, v990, v993, v994, 4.0, 4.0, v992, v991);
                  sub_10002205C(6, 0, v9, v1, v1135, v1134, v1133, v1132, v993, v994, 4.0, 4.0, v992, v991);
                  sub_10002205C(6, 2, v9, v1, v1139, v1138, v1137, v1136, v993, v994, 4.0, 4.0, v992, v991);
                  if (*(v40 + v1) == 1)
                  {
                    v995 = _swiftEmptyArrayStorage[2];
                    v996 = v1154;
                    v998 = v1145;
                    v997 = v1146;
                    v999 = v1144;
                    v1000 = 0;
                    if (v995 != 0.0)
                    {
                      v1001 = &_swiftEmptyArrayStorage[4];
                      v1003 = v1142;
                      v1002 = v1143;
                      v1005 = v1140;
                      v1004 = v1141;
                      do
                      {
                        v1007 = *v1001++;
                        v1006 = v1007;
                        if ((v1007 & ~v1000) == 0)
                        {
                          v1006 = 0;
                        }

                        v1000 |= v1006;
                        --*&v995;
                      }

                      while (v995 != 0.0);
LABEL_294:
                      v1008 = v1183;
                      v1009 = v1184;
                      v876 = v1185;
                      v877 = v1186;
                      sub_10002205C(6, v1000, v9, v1, v1002, v1003, v1004, v1005, v1185, v1186, 4.0, 4.0, v1184, v1183);
                      sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v996, v997, v998, v999);
                      v1154 = v1190;
                      v1146 = v1191;
                      v1145 = v1192;
                      v1144 = v1193;
                      sub_10009937C(CGRectMinYEdge, &v1189.origin, 0.5, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height);
                      v1010 = v1190;
                      v1011 = v1191;
                      v1012 = v1192;
                      v1013 = v1193;
                      sub_10002205C(4, 0, v9, v1, v1189.origin.x, v1189.origin.y, v1189.size.width, v1189.size.height, v876, v877, 4.0, 4.0, v1009, v1008);
                      sub_10002205C(4, 4, v9, v1, v1010, v1011, v1012, v1013, v876, v877, 4.0, 4.0, v1009, v1008);
                      v1103 = v1009;
                      v1105 = v1008;
                      v725 = 4.0;
                      v726 = 4.0;
                      v727 = v1154;
                      v729 = v1145;
                      v728 = v1146;
                      v730 = v1144;
                      v731 = 3;
LABEL_295:
                      v984 = v9;
                      v985 = v876;
                      v986 = v877;
LABEL_296:
                      sub_10002205C(v731, 8, v984, v1, v727, v728, v729, v730, v985, v986, v725, v726, v1103, v1105);
LABEL_297:
                      v36 = v1173;
                      v48 = v1172;
LABEL_298:
                      v64 = 0;
                      goto LABEL_299;
                    }
                  }

                  else
                  {
                    LOBYTE(v1000) = 8;
                    v996 = v1154;
                    v998 = v1145;
                    v997 = v1146;
                    v999 = v1144;
                  }

                  v1003 = v1142;
                  v1002 = v1143;
                  v1005 = v1140;
                  v1004 = v1141;
                  goto LABEL_294;
                }

                v344 = sub_100022384(7, v1164, v1161, v1165, v1);
                memset(&v1189, 0, sizeof(v1189));
                memset(&v1187, 0, sizeof(v1187));
                v345 = 0;
                v346 = 0;
                v347 = v36;
                v348 = v48;
                if (v344)
                {
                  v349 = v1152;
                  CGRectDivide(*&v345, &v1189, &v1187, v1152, CGRectMinXEdge);
                  v350 = v1189.origin.x;
                  v351 = v1189.origin.y;
                  v352 = v1189.size.width;
                  v353 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1236.origin.x = 0.0;
                  v1236.origin.y = 0.0;
                  v1236.size.width = v1173;
                  v1236.size.height = v1172;
                  CGRectDivide(v1236, &v1189, &v1187, v349, CGRectMaxXEdge);
                  v1135 = v1189.origin.x;
                  v354 = v1189.origin.y;
                  v355 = v1189.size.width;
                  v356 = v1189.size.height;
                  v357 = v353 * v1123;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1237.origin.x = v350;
                  v1237.origin.y = v351;
                  v1237.size.width = v352;
                  v1237.size.height = v353;
                  CGRectDivide(v1237, &v1189, &v1187, v353 * 0.666666667, CGRectMinYEdge);
                  v1138 = v1189.origin.y;
                  v1139 = v1189.origin.x;
                  v1136 = v1189.size.height;
                  v1137 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1238.origin.x = v350;
                  v1238.origin.y = v351;
                  v1238.size.width = v352;
                  v1238.size.height = v353;
                  CGRectDivide(v1238, &v1189, &v1187, v357, CGRectMaxYEdge);
                  v358 = v1189.origin.x;
                  v359 = v1189.origin.y;
                  v360 = v1189.size.width;
                  v361 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1239.origin.x = v358;
                  v1239.origin.y = v359;
                  v1239.size.width = v360;
                  v1239.size.height = v361;
                  CGRectDivide(v1239, &v1189, &v1187, v360 * 0.5, CGRectMinXEdge);
                  v1142 = v1189.origin.y;
                  v1143 = v1189.origin.x;
                  v1140 = v1189.size.height;
                  v1141 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1240.origin.x = v358;
                  v1240.origin.y = v359;
                  v1240.size.width = v360;
                  v1240.size.height = v361;
                  CGRectDivide(v1240, &v1189, &v1187, v360 * 0.5, CGRectMaxXEdge);
                  v1154 = v1189.origin.x;
                  v1145 = v1189.size.width;
                  v1146 = v1189.origin.y;
                  v1144 = v1189.size.height;
                  v1134 = v356 * 0.666666667;
                  v362 = v356;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v363 = v1135;
                  v1241.origin.x = v1135;
                  v364 = v354;
                  v1241.origin.y = v354;
                  v1241.size.width = v355;
                  v1241.size.height = v356;
                  CGRectDivide(v1241, &v1189, &v1187, v356 * 0.333333333, CGRectMinYEdge);
                  v365 = v1189.origin.x;
                  v366 = v1189.origin.y;
                  v367 = v1189.size.width;
                  v368 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1242.origin.x = v363;
                  v1242.origin.y = v364;
                  v1242.size.width = v355;
                  v1242.size.height = v362;
                  CGRectDivide(v1242, &v1189, &v1187, v1134, CGRectMaxYEdge);
                  v369 = v1189.origin.x;
                  v1135 = v1189.origin.y;
                  v370 = v1189.size.width;
                  v371 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1243.origin.x = v365;
                  v1243.origin.y = v366;
                  v1243.size.width = v367;
                  v1243.size.height = v368;
                  CGRectDivide(v1243, &v1189, &v1187, v367 * 0.5, CGRectMinXEdge);
                  v1111 = v1189.origin.y;
                  v1112 = v1189.origin.x;
                  v1109 = v1189.size.height;
                  v1110 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1244.origin.x = v365;
                  v1244.origin.y = v366;
                  v1244.size.width = v367;
                  v1244.size.height = v368;
                  CGRectDivide(v1244, &v1189, &v1187, v367 * 0.5, CGRectMaxXEdge);
                  v1115 = v1189.origin.y;
                  v1116 = v1189.origin.x;
                  v1113 = v1189.size.height;
                  v1114 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1245.origin.x = v369;
                  v372 = v1135;
                  v1245.origin.y = v1135;
                  v1245.size.width = v370;
                  v1245.size.height = v371;
                  CGRectDivide(v1245, &v1189, &v1187, v370 * 0.5, CGRectMinXEdge);
                  v373 = v1189.origin.x;
                  v1125 = v1189.origin.y;
                  v374 = v1189.size.width;
                  v375 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1246.origin.x = v369;
                  v1246.origin.y = v372;
                  v1246.size.width = v370;
                  v1246.size.height = v371;
                  CGRectDivide(v1246, &v1189, &v1187, v370 * 0.5, CGRectMaxXEdge);
                  v1134 = v1189.origin.y;
                  v1135 = v1189.origin.x;
                  v1132 = v1189.size.height;
                  v1133 = v1189.size.width;
                  v376 = v375 * 0.5;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1247.origin.x = v373;
                  v377 = v1125;
                  v1247.origin.y = v1125;
                  v1247.size.width = v374;
                  v1247.size.height = v375;
                  CGRectDivide(v1247, &v1189, &v1187, v375 * 0.5, CGRectMinYEdge);
                  v378 = v1189.origin.x;
                  v379 = v1189.origin.y;
                  v1107 = v1189.size.height;
                  v1108 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1248.origin.x = v373;
                  v1248.origin.y = v377;
                  v1248.size.width = v374;
                  v36 = v1173;
                  v1248.size.height = v375;
                  v48 = v1172;
                  CGRectDivide(v1248, &v1189, &v1187, v376, CGRectMaxYEdge);
                  v1124 = v1189.origin.y;
                  v1125 = v1189.origin.x;
                  v1117 = v1189.size.height;
                  v1118 = v1189.size.width;
                  v380 = v1183;
                  v381 = v1184;
                  v382 = v1185;
                  v383 = v1186;
                  sub_10002205C(3, 1, v9, v1, v1139, v1138, v1137, v1136, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 0, v9, v1, v1112, v1111, v1110, v1109, v382, v383, 4.0, 4.0, v381, v380);
                  sub_10002205C(6, 2, v9, v1, v1116, v1115, v1114, v1113, v382, v383, 4.0, 4.0, v381, v380);
                  sub_10002205C(6, 0, v9, v1, v378, v379, v1108, v1107, v382, v383, 4.0, 4.0, v381, v380);
                  sub_10002205C(6, 4, v9, v1, v1143, v1142, v1141, v1140, v382, v383, 4.0, 4.0, v381, v380);
                  sub_10002205C(6, 0, v9, v1, v1154, v1146, v1145, v1144, v382, v383, 4.0, 4.0, v381, v380);
                  sub_10002205C(6, 0, v9, v1, v1125, v1124, v1118, v1117, v382, v383, 4.0, 4.0, v381, v380);
                  sub_10002205C(5, 8, v9, v1, v1135, v1134, v1133, v1132, v382, v383, 4.0, 4.0, v381, v380);
                }

                else
                {
                  CGRectDivide(*&v345, &v1189, &v1187, v1128, CGRectMinYEdge);
                  v641 = v1189.origin.x;
                  v642 = v1189.origin.y;
                  v643 = v1189.size.width;
                  v644 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1298.origin.x = 0.0;
                  v1298.origin.y = 0.0;
                  v1298.size.width = v36;
                  v1298.size.height = v48;
                  CGRectDivide(v1298, &v1189, &v1187, v1127, CGRectMaxYEdge);
                  v1145 = v1189.origin.y;
                  v1146 = v1189.origin.x;
                  v1144 = v1189.size.width;
                  v1154 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1299.origin.x = v641;
                  v1299.origin.y = v642;
                  v1299.size.width = v643;
                  v1299.size.height = v644;
                  CGRectDivide(v1299, &v1189, &v1187, v643 * 0.5, CGRectMinXEdge);
                  v1142 = v1189.origin.y;
                  v1143 = v1189.origin.x;
                  v1140 = v1189.size.height;
                  v1141 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1300.origin.x = v641;
                  v1300.origin.y = v642;
                  v1300.size.width = v643;
                  v1300.size.height = v644;
                  CGRectDivide(v1300, &v1189, &v1187, v643 * 0.5, CGRectMaxXEdge);
                  v645 = v1189.origin.x;
                  v646 = v1189.origin.y;
                  v647 = v1189.size.width;
                  v648 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1301.origin.x = v645;
                  v1301.origin.y = v646;
                  v1301.size.width = v647;
                  v1301.size.height = v648;
                  CGRectDivide(v1301, &v1189, &v1187, v648 * 0.5, CGRectMinYEdge);
                  v1138 = v1189.origin.y;
                  v1139 = v1189.origin.x;
                  v1136 = v1189.size.height;
                  v1137 = v1189.size.width;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1302.origin.x = v645;
                  v1302.origin.y = v646;
                  v1302.size.width = v647;
                  v1302.size.height = v648;
                  CGRectDivide(v1302, &v1189, &v1187, v648 * 0.5, CGRectMaxYEdge);
                  v649 = v1189.origin.x;
                  v650 = v1189.origin.y;
                  v651 = v1189.size.width;
                  v652 = v1189.size.height;
                  v653 = v1189.size.width * 0.5;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1303.origin.x = v649;
                  v1303.origin.y = v650;
                  v1303.size.width = v651;
                  v1303.size.height = v652;
                  CGRectDivide(v1303, &v1189, &v1187, v651 * 0.5, CGRectMinXEdge);
                  v1132 = v1189.origin.x;
                  v654 = v1189.origin.y;
                  v655 = v1189.size.width;
                  v656 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1304.origin.x = v649;
                  v1304.origin.y = v650;
                  v1304.size.width = v651;
                  v1304.size.height = v652;
                  CGRectDivide(v1304, &v1189, &v1187, v653, CGRectMaxXEdge);
                  v1134 = v1189.origin.y;
                  v1135 = v1189.origin.x;
                  v657 = v1189.size.width;
                  v1133 = v1189.size.height;
                  v658 = v1183;
                  v659 = v1184;
                  v660 = v1185;
                  v661 = v1186;
                  sub_10002205C(3, 1, v9, v1, v1143, v1142, v1141, v1140, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(4, 2, v9, v1, v1139, v1138, v1137, v1136, v660, v661, 4.0, 4.0, v659, v658);
                  sub_10002205C(6, 0, v9, v1, v1132, v654, v655, v656, v660, v661, 4.0, 4.0, v659, v658);
                  sub_10002205C(6, 0, v9, v1, v1135, v1134, v657, v1133, v660, v661, 4.0, 4.0, v659, v658);
                  v663 = v1144;
                  v662 = v1145;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v664 = v1146;
                  v1305.origin.x = v1146;
                  v1305.origin.y = v1145;
                  v1305.size.width = v1144;
                  v665 = v1154;
                  v1305.size.height = v1154;
                  CGRectDivide(v1305, &v1189, &v1187, v1144 * 0.5, CGRectMinXEdge);
                  v1143 = v1189.origin.x;
                  v666 = v1189.origin.y;
                  v667 = v1189.size.width;
                  v668 = v1189.size.height;
                  memset(&v1189, 0, sizeof(v1189));
                  memset(&v1187, 0, sizeof(v1187));
                  v1306.origin.x = v664;
                  v1306.origin.y = v662;
                  v1306.size.width = v663;
                  v1306.size.height = v665;
                  CGRectDivide(v1306, &v1189, &v1187, v663 * 0.5, CGRectMaxXEdge);
                  v669 = v1189.origin.x;
                  v670 = v1189.origin.y;
                  v671 = v1189.size.width;
                  v672 = v1189.size.height;
                  sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v1143, v666, v667, v668);
                  v673 = v1189.origin.x;
                  v674 = v1189.origin.y;
                  v675 = v1189.size.width;
                  v676 = v1189.size.height;
                  v1141 = v1190;
                  v1140 = v1191;
                  v1139 = v1192;
                  v1138 = v1193;
                  sub_10009937C(CGRectMinXEdge, &v1189.origin, 0.5, v669, v670, v671, v672);
                  v1143 = v1189.origin.x;
                  v1142 = v1189.origin.y;
                  v677 = v1189.size.width;
                  v678 = v1189.size.height;
                  v1154 = v1190;
                  v1146 = v1191;
                  v1145 = v1192;
                  v1144 = v1193;
                  v679 = v1183;
                  v680 = v1184;
                  v681 = v673;
                  v682 = v674;
                  v683 = v1185;
                  v684 = v1186;
                  sub_10002205C(6, 4, v9, v1, v681, v682, v675, v676, v1185, v1186, 4.0, 4.0, v1184, v1183);
                  sub_10002205C(6, 4, v9, v1, v1141, v1140, v1139, v1138, v683, v684, 4.0, 4.0, v680, v679);
                  v685 = v677;
                  v36 = v1173;
                  v686 = v678;
                  v48 = v1172;
                  sub_10002205C(6, 4, v9, v1, v1143, v1142, v685, v686, v683, v684, 4.0, 4.0, v680, v679);
                  sub_10002205C(6, 0, v9, v1, v1154, v1146, v1145, v1144, v683, v684, 4.0, 4.0, v680, v679);
                }
              }
            }

            v64 = 0;
LABEL_299:
            v63 = *v15;
          }

          while (*v15 < v41);
        }

        swift_unknownObjectRelease();
        v32 = v1165;
        goto LABEL_353;
      }

      swift_unknownObjectRelease();
    }

    v1164 = 0;
    v1161 = 0;
    goto LABEL_39;
  }
}