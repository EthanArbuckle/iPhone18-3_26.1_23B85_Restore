uint64_t sub_1000012E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = &off_100006E10;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "queryNewsPlusEngagement";
      v4 = 0xD000000000000018;
    }

    else
    {
      v5 = "queryLocalNewsEngagement";
      v4 = 0xD00000000000001CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = "queryNewsAppEngagement";
    }

    else
    {
      v5 = &off_100006E10;
    }
  }

  if (a2 > 1u)
  {
    v2 = "queryNewsPlusEngagement";
    v6 = "queryLocalNewsEngagement";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v6 = "queryNewsAppEngagement";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD000000000000016;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000068EC();
  }

  return v10 & 1;
}

Swift::Int sub_100001404()
{
  sub_10000694C();
  sub_10000678C();
  return sub_10000696C();
}

Swift::Int sub_100001480()
{
  sub_10000694C();
  sub_10000678C();
  return sub_10000696C();
}

uint64_t sub_1000014D8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000C5B0;
  v7._object = v3;
  v5 = sub_10000689C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

void sub_10000152C(uint64_t a1@<X8>)
{
  strcpy(a1, "json-payload");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_100001570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10000C5E8;
  v8._object = a2;
  v6 = sub_10000689C(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1000015D4(uint64_t a1)
{
  v2 = sub_100002410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001610(uint64_t a1)
{
  v2 = sub_100002410();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000164C(void *a1, char a2)
{
  v4 = sub_100002384(&qword_100010370, &qword_100007118);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_1000023CC(a1, a1[3]);
  sub_100002410();
  sub_10000698C();
  v11[15] = a2;
  sub_100002770();
  sub_1000068BC();
  return (*(v5 + 8))(v8, v4);
}

void *sub_100001794@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100002214(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000017DC()
{
  v1 = *v0;
  v3._countAndFlagsBits = 0x646E616D6D6F635BLL;
  v3._object = 0xEA0000000000203ALL;
  sub_10000679C(v3);
  sub_10000687C();
  v4._countAndFlagsBits = 93;
  v4._object = 0xE100000000000000;
  sub_10000679C(v4);
  return 0;
}

uint64_t sub_1000018D0(void *a1, char a2)
{
  v4 = sub_100002384(&qword_100010360, &qword_100007110);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_1000023CC(a1, a1[3]);
  sub_100002674();
  sub_10000698C();
  v11[15] = a2;
  sub_10000271C();
  sub_1000068BC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100001A18(void *a1, char a2)
{
  v4 = sub_100002384(&qword_1000103C8, &qword_1000073F0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_1000023CC(a1, a1[3]);
  sub_100002B8C();
  sub_10000698C();
  v11[15] = a2;
  sub_100002C34();
  sub_1000068BC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100001B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000068EC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100001C0C(uint64_t a1)
{
  v2 = sub_100002674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001C48(uint64_t a1)
{
  v2 = sub_100002674();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100001C84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100002504(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100001CCC()
{
  sub_10000694C();
  sub_10000695C(0);
  return sub_10000696C();
}

Swift::Int sub_100001D10()
{
  sub_10000694C();
  sub_10000695C(0);
  return sub_10000696C();
}

uint64_t sub_100001D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000068EC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100001DF0(uint64_t a1)
{
  v2 = sub_100002B8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001E2C(uint64_t a1)
{
  v2 = sub_100002B8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100001E68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100002A1C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100001EBC()
{
  v1 = *v0;
  sub_10000694C();
  sub_10000678C();

  return sub_10000696C();
}

uint64_t sub_100001F70()
{
  *v0;
  *v0;
  sub_10000678C();
}

Swift::Int sub_100002010()
{
  v1 = *v0;
  sub_10000694C();
  sub_10000678C();

  return sub_10000696C();
}

uint64_t sub_1000020C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100003078(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000020F0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = &off_100006E10;
  v4 = "queryNewsPlusEngagement";
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001CLL;
    v4 = "queryLocalNewsEngagement";
  }

  if (*v1)
  {
    v2 = 0xD000000000000017;
    v3 = "queryNewsAppEngagement";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

void *sub_100002214(uint64_t *a1)
{
  v3 = sub_100002384(&qword_100010330, &qword_100007100);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1000023CC(a1, a1[3]);
  sub_100002410();
  sub_10000697C();
  if (v1)
  {
    sub_100002464(a1);
  }

  else
  {
    sub_1000024B0();
    sub_1000068AC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_100002464(a1);
  }

  return v9;
}

uint64_t sub_100002384(uint64_t *a1, uint64_t *a2)
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

void *sub_1000023CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002410()
{
  result = qword_100010338;
  if (!qword_100010338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010338);
  }

  return result;
}

uint64_t sub_100002464(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000024B0()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

void *sub_100002504(uint64_t *a1)
{
  v3 = sub_100002384(&qword_100010348, &qword_100007108);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1000023CC(a1, a1[3]);
  sub_100002674();
  sub_10000697C();
  if (v1)
  {
    sub_100002464(a1);
  }

  else
  {
    sub_1000026C8();
    sub_1000068AC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_100002464(a1);
  }

  return v9;
}

unint64_t sub_100002674()
{
  result = qword_100010350;
  if (!qword_100010350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010350);
  }

  return result;
}

unint64_t sub_1000026C8()
{
  result = qword_100010358;
  if (!qword_100010358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010358);
  }

  return result;
}

unint64_t sub_10000271C()
{
  result = qword_100010368;
  if (!qword_100010368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010368);
  }

  return result;
}

unint64_t sub_100002770()
{
  result = qword_100010378;
  if (!qword_100010378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010378);
  }

  return result;
}

unint64_t sub_100002810()
{
  result = qword_100010380;
  if (!qword_100010380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010380);
  }

  return result;
}

unint64_t sub_100002868()
{
  result = qword_100010388;
  if (!qword_100010388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010388);
  }

  return result;
}

unint64_t sub_1000028C0()
{
  result = qword_100010390;
  if (!qword_100010390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010390);
  }

  return result;
}

unint64_t sub_100002918()
{
  result = qword_100010398;
  if (!qword_100010398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010398);
  }

  return result;
}

unint64_t sub_100002970()
{
  result = qword_1000103A0;
  if (!qword_1000103A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103A0);
  }

  return result;
}

unint64_t sub_1000029C8()
{
  result = qword_1000103A8;
  if (!qword_1000103A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103A8);
  }

  return result;
}

void *sub_100002A1C(uint64_t *a1)
{
  v3 = sub_100002384(&qword_1000103B0, &qword_1000073E8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1000023CC(a1, a1[3]);
  sub_100002B8C();
  sub_10000697C();
  if (v1)
  {
    sub_100002464(a1);
  }

  else
  {
    sub_100002BE0();
    sub_1000068AC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_100002464(a1);
  }

  return v9;
}

unint64_t sub_100002B8C()
{
  result = qword_1000103B8;
  if (!qword_1000103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103B8);
  }

  return result;
}

unint64_t sub_100002BE0()
{
  result = qword_1000103C0;
  if (!qword_1000103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103C0);
  }

  return result;
}

unint64_t sub_100002C34()
{
  result = qword_1000103D0;
  if (!qword_1000103D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103D0);
  }

  return result;
}

uint64_t sub_100002C88(unsigned int *a1, int a2)
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

_WORD *sub_100002CD8(_WORD *result, int a2, int a3)
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

uint64_t sub_100002D64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100002DF4(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100002EC8()
{
  result = qword_1000103D8;
  if (!qword_1000103D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103D8);
  }

  return result;
}

unint64_t sub_100002F20()
{
  result = qword_1000103E0;
  if (!qword_1000103E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E0);
  }

  return result;
}

unint64_t sub_100002F78()
{
  result = qword_1000103E8;
  if (!qword_1000103E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E8);
  }

  return result;
}

unint64_t sub_100002FD0()
{
  result = qword_1000103F0;
  if (!qword_1000103F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103F0);
  }

  return result;
}

unint64_t sub_100003024()
{
  result = qword_1000103F8;
  if (!qword_1000103F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103F8);
  }

  return result;
}

uint64_t sub_100003078(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C620;
  v6._object = a2;
  v4 = sub_10000689C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000030E4(void *a1, uint64_t a2)
{
  v5 = objc_opt_self();
  sub_1000023CC(a1, a1[3]);
  v13 = 0;
  v6 = [v5 dataWithJSONObject:sub_1000068DC() options:a2 error:&v13];
  swift_unknownObjectRelease();
  v7 = v13;
  if (v6)
  {
    v8 = sub_10000668C();
    v10 = v9;

    sub_1000062D4();
    sub_10000660C();
    result = sub_100006328(v8, v10);
    if (!v2)
    {
      return v14;
    }
  }

  else
  {
    v12 = v7;
    sub_10000664C();

    return swift_willThrow();
  }

  return result;
}

Swift::Int sub_100003244()
{
  v1 = *v0;
  sub_10000694C();
  sub_10000695C(v1);
  return sub_10000696C();
}

Swift::Int sub_1000032B8()
{
  v1 = *v0;
  sub_10000694C();
  sub_10000695C(v1);
  return sub_10000696C();
}

double sub_100003330@<D0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = sub_1000066CC();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v36 - v6;
  v8 = sub_10000667C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = [objc_opt_self() defaultManager];
  v20 = sub_10000677C();
  v21 = [v19 containerURLForSecurityApplicationGroupIdentifier:v20];

  if (v21)
  {
    sub_10000666C();

    sub_10000665C();
    (*(v9 + 16))(v13, v16, v8);
    sub_1000066BC();
    v23 = v37;
    v22 = v38;
    (*(v37 + 16))(v5, v7, v38);
    v24 = sub_1000066AC();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_10000669C();
    v28 = v39;
    v39[3] = v24;
    v28[4] = &protocol witness table for EngagementDataManager;
    *v28 = v27;
    (*(v23 + 8))(v7, v22);
    v29 = *(v9 + 8);
    v29(v16, v8);
    v29(v18, v8);
  }

  else
  {
    v31 = v39;
    if (qword_100010328 != -1)
    {
      swift_once();
    }

    v32 = sub_10000672C();
    sub_100005AAC(v32, qword_1000115A8);
    v33 = sub_10000670C();
    v34 = sub_1000067DC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error while loading container for News. Ensure you have access to the application group folder.", v35, 2u);
    }

    v31[4] = 0;
    result = 0.0;
    *v31 = 0u;
    *(v31 + 1) = 0u;
  }

  return result;
}

uint64_t sub_100003708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100010328 != -1)
  {
    swift_once();
  }

  v12 = sub_10000672C();
  sub_100005AAC(v12, qword_1000115A8);
  v13 = sub_10000670C();
  v14 = sub_1000067EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "PerformRequest: Asking Manager for properties", v15, 2u);
  }

  v16 = a1[4];
  sub_1000023CC(a1, a1[3]);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;

  sub_1000066DC();
}

uint64_t sub_100003898(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void))
{
  v48 = a2;
  v7 = sub_100002384(&qword_100010540, &qword_100007690);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v45 - v9;
  v11 = sub_1000066FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000626C(a1, v10, &qword_100010540, &qword_100007690);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000061FC(v10, &qword_100010540, &qword_100007690);
    if (qword_100010328 != -1)
    {
      swift_once();
    }

    v16 = sub_10000672C();
    sub_100005AAC(v16, qword_1000115A8);

    v17 = sub_10000670C();
    v18 = sub_1000067DC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = a4;
      v21 = swift_slowAlloc();
      v49[0] = v21;
      *v19 = 136315138;
      *(v19 + 4) = sub_100004458(v48, a3, v49);
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get propertyValues for %s, returning empty response", v19, 0xCu);
      sub_100002464(v21);
      a4 = v20;
    }

    v22 = sub_100006030();
    v50 = sub_100002384(&qword_100010548, &qword_100007698);
    v49[0] = v22;
    a4(v49, 0);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v23 = sub_1000066EC();
    v48 = sub_100002384(&qword_100010548, &qword_100007698);
    v50 = v48;
    v49[0] = v23;
    sub_100002384(&qword_100010550, &qword_1000076A0);
    inited = swift_initStackObject();
    v47 = xmmword_100007600;
    *(inited + 16) = xmmword_100007600;
    *(inited + 32) = 0x65736E6F70736572;
    *(inited + 40) = 0xE800000000000000;
    sub_1000061A0(v49, inited + 48);
    v25 = sub_100005DFC(inited);
    swift_setDeallocating();
    sub_1000061FC(inited + 32, &qword_100010558, &qword_1000076A8);
    sub_100002384(&qword_100010560, &qword_1000076B0);
    v26 = swift_initStackObject();
    *(v26 + 16) = v47;
    *(v26 + 32) = 0x7961702D6E6F736ALL;
    v27 = v26 + 32;
    *(v26 + 40) = 0xEC00000064616F6CLL;
    *(v26 + 48) = v25;
    v28 = sub_100005F2C(v26);
    swift_setDeallocating();
    sub_1000061FC(v27, &qword_100010568, &qword_1000076B8);
    v29 = sub_100004154(v28);

    sub_100002464(v49);
    if (qword_100010328 != -1)
    {
      swift_once();
    }

    v30 = sub_10000672C();
    sub_100005AAC(v30, qword_1000115A8);
    v31 = sub_10000670C();
    v32 = sub_1000067EC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "PerformRequest: Sending value back to AMS", v33, 2u);
    }

    v34 = sub_10000670C();
    v35 = sub_1000067EC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49[0] = v46;
      *v36 = 136315138;
      v37 = sub_10000676C();
      *&v47 = v29;
      v39 = v12;
      v40 = v11;
      v41 = v15;
      v42 = a4;
      v43 = sub_100004458(v37, v38, v49);
      v29 = v47;

      *(v36 + 4) = v43;
      a4 = v42;
      v15 = v41;
      v11 = v40;
      v12 = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "Plugin Response = %s", v36, 0xCu);
      sub_100002464(v46);
    }

    v50 = v48;
    v49[0] = v29;
    a4(v49, 0);
    (*(v12 + 8))(v15, v11);
  }

  return sub_1000061FC(v49, &qword_1000104F0, &qword_100007670);
}

uint64_t sub_100003F1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100003FE0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000626C(a1, v12, &qword_1000104F0, &qword_100007670);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_1000023CC(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_1000068DC();
  (*(v7 + 8))(v10, v5);
  sub_100002464(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_10000663C();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

unint64_t sub_100004154(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002384(&qword_100010570, &qword_1000076C0);
    v2 = sub_10000688C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        sub_100002384(&qword_100010548, &qword_100007698);
        swift_dynamicCast();
        sub_10000625C(&v25, v27);
        sub_10000625C(v27, v28);
        sub_10000625C(v28, &v26);
        result = sub_100004A00(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100002464(v12);
          result = sub_10000625C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_10000625C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_1000043F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004458(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004524(v11, 0, 0, 1, a1, a2);
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
    sub_1000061A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002464(v11);
  return v7;
}

unint64_t sub_100004524(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004630(a5, a6);
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
    result = sub_10000686C();
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

char *sub_100004630(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000467C(a1, a2);
  sub_1000047AC(&off_10000C6A0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000467C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004898(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000686C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000067AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004898(v10, 0);
        result = sub_10000685C();
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

uint64_t sub_1000047AC(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000490C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100004898(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002384(&qword_100010588, &unk_1000076D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000490C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002384(&qword_100010588, &unk_1000076D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100004A00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000694C();
  sub_10000678C();
  v6 = sub_10000696C();

  return sub_100004A78(a1, a2, v6);
}

unint64_t sub_100004A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000068EC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100004B30(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v71 = a2;
  v5 = sub_10000673C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v75 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000680C();
  v69 = *(v70 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000067FC();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10000675C();
  v73 = *(v74 - 8);
  v14 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  _Block_copy(a3);
  if (qword_100010328 != -1)
  {
    swift_once();
  }

  v17 = sub_10000672C();
  sub_100005AAC(v17, qword_1000115A8);
  v18 = sub_10000670C();
  v19 = sub_1000067EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received request.", v20, 2u);
  }

  v21 = objc_opt_self();
  sub_1000023CC(a1, a1[3]);
  LODWORD(v21) = [v21 isValidJSONObject:sub_1000068DC()];
  swift_unknownObjectRelease();
  if (!v21)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v84._countAndFlagsBits = 91;
    v84._object = 0xE100000000000000;
    sub_10000679C(v84);
    sub_10000687C();
    v85._countAndFlagsBits = 93;
    v85._object = 0xE100000000000000;
    sub_10000679C(v85);
    v25 = aBlock;

    v26 = sub_10000670C();
    v27 = sub_1000067DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&aBlock = v29;
      *v28 = 136315138;
      v30 = sub_100004458(v25, *(&v25 + 1), &aBlock);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Invalid input = %s", v28, 0xCu);
      sub_100002464(v29);
    }

    else
    {
    }

    sub_100005AE4();
    aBlock = 0u;
    v78 = 0u;
    swift_allocError();
    *v31 = 2;
LABEL_11:
    sub_10000626C(&aBlock, v82, &qword_1000104F0, &qword_100007670);
    v32 = v83;
    if (v83)
    {
      v33 = sub_1000023CC(v82, v83);
      v34 = *(v32 - 8);
      v35 = *(v34 + 64);
      __chkstk_darwin(v33);
      v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v37);
      v38 = sub_1000068DC();
      (*(v34 + 8))(v37, v32);
      sub_100002464(v82);
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_10000663C();
    (a3)[2](a3, v38, v39);
    swift_unknownObjectRelease();

    sub_1000061FC(&aBlock, &qword_1000104F0, &qword_100007670);
  }

  v22 = sub_10000662C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_10000661C();
  v40 = sub_1000030E4(a1, 0);

  if (qword_100010320 != -1)
  {
    swift_once();
  }

  sub_10000626C(qword_100011580, &aBlock, &qword_1000104F8, &qword_100007678);
  if (!*(&v78 + 1))
  {
    sub_1000061FC(&aBlock, &qword_1000104F8, &qword_100007678);
    v52 = sub_10000670C();
    v53 = sub_1000067DC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to instantiate manager", v54, 2u);
    }

    sub_100005AE4();
    aBlock = 0u;
    v78 = 0u;
    swift_allocError();
    *v55 = 0;
    goto LABEL_11;
  }

  sub_100005B38(&aBlock, v82);
  v41 = sub_10000670C();
  v42 = sub_1000067EC();
  v43 = os_log_type_enabled(v41, v42);
  v66 = v16;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&aBlock = v45;
    *v44 = 136380675;
    LOBYTE(v81[0]) = v40;
    sub_100005D58();
    v46 = sub_1000068CC();
    v48 = sub_100004458(v46, v47, &aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "performRequest: receivedRequest = %{private}s", v44, 0xCu);
    sub_100002464(v45);
  }

  if (v40 > 1u)
  {
    if (v40 == 2)
    {
      v49 = "queryNewsPlusEngagement";
      v50 = 0xD000000000000018;
    }

    else
    {
      v49 = "queryLocalNewsEngagement";
      v50 = 0xD00000000000001CLL;
    }
  }

  else if (v40)
  {
    v49 = "queryNewsAppEngagement";
    v50 = 0xD000000000000017;
  }

  else
  {
    v49 = &off_100006E10;
    v50 = 0xD000000000000016;
  }

  v65 = v50;
  v64 = v49 | 0x8000000000000000;
  v63 = sub_100005B50();
  v56 = v72;
  sub_10000674C();
  *&aBlock = &_swiftEmptyArrayStorage;
  sub_100005CBC(&qword_100010508, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002384(&qword_100010510, &qword_100007680);
  sub_100005D04(&qword_100010518, &qword_100010510, &qword_100007680);
  sub_10000684C();
  (*(v69 + 104))(v68, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
  v57 = sub_10000682C();
  sub_100005BE4(v82, v81);
  v58 = swift_allocObject();
  sub_100005B38(v81, (v58 + 2));
  v59 = v64;
  v58[7] = v65;
  v58[8] = v59;
  v60 = v66;
  v58[9] = sub_100005AA4;
  v58[10] = v60;
  v58[11] = v71;
  v79 = sub_100005C90;
  v80 = v58;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v78 = sub_100003F1C;
  *(&v78 + 1) = &unk_10000CAD8;
  v61 = _Block_copy(&aBlock);

  sub_10000674C();
  v76 = &_swiftEmptyArrayStorage;
  sub_100005CBC(&qword_100010520, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002384(&qword_100010528, &qword_100007688);
  sub_100005D04(&qword_100010530, &qword_100010528, &qword_100007688);
  v62 = v75;
  sub_10000684C();
  sub_10000681C();
  _Block_release(v61);

  (*(v6 + 8))(v62, v5);
  (*(v73 + 8))(v56, v74);
  sub_100002464(v82);
}

uint64_t sub_100005A6C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005AAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100005AE4()
{
  result = qword_1000104E8;
  if (!qword_1000104E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104E8);
  }

  return result;
}

uint64_t sub_100005B38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100005B50()
{
  result = qword_100010500;
  if (!qword_100010500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010500);
  }

  return result;
}

uint64_t sub_100005B9C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005BE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005C48()
{
  sub_100002464(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100005CA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005D04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005B9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005D58()
{
  result = qword_100010538;
  if (!qword_100010538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010538);
  }

  return result;
}

uint64_t sub_100005DAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100005DEC(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return sub_100003898(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t sub_100005DFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002384(&qword_100010570, &qword_1000076C0);
    v3 = sub_10000688C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000626C(v4, &v13, &qword_100010558, &qword_1000076A8);
      v5 = v13;
      v6 = v14;
      result = sub_100004A00(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000625C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100005F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002384(&qword_100010578, &qword_1000076C8);
    v3 = sub_10000688C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004A00(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100006030()
{
  v7[3] = sub_100002384(&qword_100010548, &qword_100007698);
  v7[0] = &_swiftEmptyDictionarySingleton;
  sub_100002384(&qword_100010550, &qword_1000076A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100007600;
  *(inited + 32) = 0x65736E6F70736572;
  *(inited + 40) = 0xE800000000000000;
  sub_1000061A0(v7, inited + 48);
  v1 = sub_100005DFC(inited);
  swift_setDeallocating();
  sub_1000061FC(inited + 32, &qword_100010558, &qword_1000076A8);
  sub_100002384(&qword_100010560, &qword_1000076B0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_100007600;
  *(v2 + 32) = 0x7961702D6E6F736ALL;
  v3 = v2 + 32;
  *(v2 + 40) = 0xEC00000064616F6CLL;
  *(v2 + 48) = v1;
  v4 = sub_100005F2C(v2);
  swift_setDeallocating();
  sub_1000061FC(v3, &qword_100010568, &qword_1000076B8);
  v5 = sub_100004154(v4);

  sub_100002464(v7);
  return v5;
}

uint64_t sub_1000061A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000061FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002384(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_10000625C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000626C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002384(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000062D4()
{
  result = qword_100010580;
  if (!qword_100010580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010580);
  }

  return result;
}

uint64_t sub_100006328(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for NewsEngagementPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsEngagementPluginError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000064D4()
{
  result = qword_100010590;
  if (!qword_100010590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010590);
  }

  return result;
}

uint64_t sub_100006528()
{
  v0 = sub_10000672C();
  sub_1000065A8(v0, qword_1000115A8);
  sub_100005AAC(v0, qword_1000115A8);
  return sub_10000671C();
}

uint64_t *sub_1000065A8(uint64_t a1, uint64_t *a2)
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