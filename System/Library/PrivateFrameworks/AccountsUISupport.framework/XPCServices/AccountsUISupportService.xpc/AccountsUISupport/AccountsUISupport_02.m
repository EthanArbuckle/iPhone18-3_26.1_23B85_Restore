uint64_t _s27AccountsUISupportServiceLib7RequestV6MethodO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100051890;
  v6._object = a2;
  v4 = sub_100042AA4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t _s27AccountsUISupportServiceLib7RequestV11HeaderFieldO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100051940;
  v6._object = a2;
  v4 = sub_100042AA4(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100022824(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054FC8, &qword_100045EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100022890()
{
  result = qword_100054FD0;
  if (!qword_100054FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FD0);
  }

  return result;
}

unint64_t sub_1000228E8()
{
  result = qword_100054FD8;
  if (!qword_100054FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FD8);
  }

  return result;
}

unint64_t sub_100022940()
{
  result = qword_100054FE0;
  if (!qword_100054FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FE0);
  }

  return result;
}

uint64_t sub_100022994(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000229B0(uint64_t a1)
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

uint64_t sub_1000229D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000229F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100022A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100022A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Request.HeaderField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Request.HeaderField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100022C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022C9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100022CE4()
{
  result = qword_100054FF8;
  if (!qword_100054FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FF8);
  }

  return result;
}

unint64_t sub_100022D38()
{
  result = qword_100055000;
  if (!qword_100055000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055000);
  }

  return result;
}

uint64_t sub_100022D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(qword_100055008, &unk_100045300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 Resource.init<A>(request:decoder:transform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v17 = *(a1 + 80);
  *(a8 + 64) = *(a1 + 64);
  *(a8 + 80) = v17;
  v18 = *(a1 + 96);
  v19 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v19;
  result = *(a1 + 48);
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = result;
  *(a8 + 96) = v18;
  *(a8 + 104) = sub_100023190;
  *(a8 + 112) = v16;
  return result;
}

uint64_t Resource.parse.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t Resource.parse.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

__n128 Resource.init(request:parse:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v4;
  v5 = *(a1 + 96);
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 96) = v5;
  *(a4 + 104) = a2;
  *(a4 + 112) = a3;
  return result;
}

uint64_t sub_100022F70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a5;
  v21 = *(a8 - 8);
  v22 = a6;
  v11 = *(v21 + 64);
  v12 = __chkstk_darwin(a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v12 statusCode] < 200 || objc_msgSend(a1, "statusCode") > 299)
  {
    v15 = [a1 statusCode];
    v16 = 0;
    v17 = 1;
LABEL_4:
    sub_100009B58();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = v17;
    return swift_willThrow();
  }

  if (!NSHTTPURLResponse.contentTypeConformsTo(_:)(AccountsUISupportServiceLib_ContentType_json))
  {
    v15 = NSHTTPURLResponse.subscript.getter(3u);
    v16 = v20;
    v17 = 0;
    goto LABEL_4;
  }

  result = sub_100041B04();
  if (!v8)
  {
    v23(a1, v14);
    return (*(v21 + 8))(v14, a8);
  }

  return result;
}

uint64_t sub_100023150()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002321C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100023258(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100023284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1000232CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023394(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v5 = sub_100041D04();
  v3[29] = v5;
  v6 = *(v5 - 8);
  v3[30] = v6;
  v7 = *(v6 + 64) + 15;
  v3[31] = swift_task_alloc();
  v8 = sub_100041AD4();
  v3[32] = v8;
  v9 = *(v8 - 8);
  v3[33] = v9;
  v10 = *(v9 + 64) + 15;
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000234EC, 0, 0);
}

uint64_t sub_1000234EC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000A744(*(v0 + 208), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 216) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 232));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A800(*(v0 + 224), &qword_100054958, &qword_100043920);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 224), *(v0 + 232));
  }

  v10 = *(v0 + 272);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 200);
  v17 = *(v15 + 16);
  v16 = *(v15 + 32);
  *(v0 + 16) = *v15;
  *(v0 + 32) = v17;
  *(v0 + 48) = v16;
  v19 = *(v15 + 64);
  v18 = *(v15 + 80);
  v20 = *(v15 + 48);
  *(v0 + 112) = *(v15 + 96);
  *(v0 + 80) = v19;
  *(v0 + 96) = v18;
  *(v0 + 64) = v20;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v21 = type metadata accessor for DelegateHelper();
  v22 = objc_allocWithZone(v21);
  v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v23 = &v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v24 = *(v0 + 136);
  *v23 = *(v0 + 120);
  v23[1] = v24;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v22;
  *(v0 + 192) = v21;
  v25 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 280) = v25;
  v26 = *(v14 + 16);
  v27 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v28 = swift_task_alloc();
  *(v0 + 288) = v28;
  *v28 = v0;
  v28[1] = sub_10002375C;
  v29 = *(v0 + 272);

  return NSURLSession.data(for:delegate:)(v29, v25);
}

uint64_t sub_10002375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 288);
  v9 = *v4;
  v5[37] = a1;
  v5[38] = a2;
  v5[39] = a3;
  v5[40] = v3;

  if (v3)
  {
    v7 = sub_1000239F0;
  }

  else
  {
    v7 = sub_100023874;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100023874()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[25];
  v7 = *(v5 + 104);
  v6 = *(v5 + 112);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v2;
  v7(v8, v4, v3);
  v10 = v0[38];
  v11 = v0[39];
  v12 = v0[37];
  v13 = v0[35];
  v14 = v0[33];
  if (v1)
  {
    (*(v14 + 8))(v0[34], v0[32]);

    sub_100004F50(v12, v10);
    v15 = v0[34];
    v16 = v0[31];
    v17 = v0[28];
  }

  else
  {
    v19 = v0[31];
    v20 = v0[28];
    v21 = v0[34];
    (*(v14 + 8))();

    sub_100004F50(v12, v10);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000239F0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 320);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100023A98(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v5 = sub_100041D04();
  v3[29] = v5;
  v6 = *(v5 - 8);
  v3[30] = v6;
  v7 = *(v6 + 64) + 15;
  v3[31] = swift_task_alloc();
  v8 = sub_100041AD4();
  v3[32] = v8;
  v9 = *(v8 - 8);
  v3[33] = v9;
  v10 = *(v9 + 64) + 15;
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100023BF0, 0, 0);
}

uint64_t sub_100023BF0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000A744(*(v0 + 208), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 216) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 232));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A800(*(v0 + 224), &qword_100054958, &qword_100043920);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 224), *(v0 + 232));
  }

  v10 = *(v0 + 272);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = *(v0 + 200);
  v17 = *(v15 + 16);
  v16 = *(v15 + 32);
  *(v0 + 16) = *v15;
  *(v0 + 32) = v17;
  *(v0 + 48) = v16;
  v19 = *(v15 + 64);
  v18 = *(v15 + 80);
  v20 = *(v15 + 48);
  *(v0 + 112) = *(v15 + 96);
  *(v0 + 80) = v19;
  *(v0 + 96) = v18;
  *(v0 + 64) = v20;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v21 = type metadata accessor for DelegateHelper();
  v22 = objc_allocWithZone(v21);
  v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v23 = &v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v24 = *(v0 + 136);
  *v23 = *(v0 + 120);
  v23[1] = v24;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v22;
  *(v0 + 192) = v21;
  v25 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 280) = v25;
  v26 = *(v14 + 16);
  v27 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v28 = swift_task_alloc();
  *(v0 + 288) = v28;
  *v28 = v0;
  v28[1] = sub_100023E60;
  v29 = *(v0 + 272);

  return NSURLSession.data(for:delegate:)(v29, v25);
}

uint64_t sub_100023E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 288);
  v9 = *v4;
  v5[37] = a1;
  v5[38] = a2;
  v5[39] = a3;
  v5[40] = v3;

  if (v3)
  {
    v7 = sub_1000239F0;
  }

  else
  {
    v7 = sub_100023F78;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100023F78()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 200);
  v7 = *(v5 + 104);
  v6 = *(v5 + 112);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v2;
  v7(v8, v4, v3);
  v10 = *(v0 + 304);
  v11 = *(v0 + 312);
  v12 = *(v0 + 296);
  v13 = *(v0 + 280);
  v14 = *(v0 + 264);
  if (v1)
  {
    (*(v14 + 8))(*(v0 + 272), *(v0 + 256));

    sub_100004F50(v12, v10);
    v15 = *(v0 + 272);
    v16 = *(v0 + 248);
    v17 = *(v0 + 224);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 248);
    v21 = *(v0 + 224);
    v22 = *(v0 + 272);
    (*(v14 + 8))();

    sub_100004F50(v12, v10);
    v23 = *(v0 + 328);

    v24 = *(v0 + 8);

    return v24(v23);
  }
}

uint64_t sub_100024130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v6 = sub_100041D04();
  v4[30] = v6;
  v7 = *(v6 - 8);
  v4[31] = v7;
  v8 = *(v7 + 64) + 15;
  v4[32] = swift_task_alloc();
  v9 = sub_100041AD4();
  v4[33] = v9;
  v10 = *(v9 - 8);
  v4[34] = v10;
  v11 = *(v10 + 64) + 15;
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_100024288, 0, 0);
}

uint64_t sub_100024288()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  sub_10000A744(*(v0 + 216), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 224) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 240));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A800(*(v0 + 232), &qword_100054958, &qword_100043920);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 232), *(v0 + 240));
  }

  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = *(v0 + 224);
  v15 = *(v0 + 208);
  v17 = *(v15 + 16);
  v16 = *(v15 + 32);
  *(v0 + 16) = *v15;
  *(v0 + 32) = v17;
  *(v0 + 48) = v16;
  v19 = *(v15 + 64);
  v18 = *(v15 + 80);
  v20 = *(v15 + 48);
  *(v0 + 112) = *(v15 + 96);
  *(v0 + 80) = v19;
  *(v0 + 96) = v18;
  *(v0 + 64) = v20;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v21 = type metadata accessor for DelegateHelper();
  v22 = objc_allocWithZone(v21);
  v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v23 = &v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v24 = *(v0 + 136);
  *v23 = *(v0 + 120);
  v23[1] = v24;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v22;
  *(v0 + 192) = v21;
  v25 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 288) = v25;
  v26 = *(v14 + 16);
  v27 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v28 = swift_task_alloc();
  *(v0 + 296) = v28;
  *v28 = v0;
  v28[1] = sub_1000244F8;
  v29 = *(v0 + 280);

  return NSURLSession.data(for:delegate:)(v29, v25);
}

uint64_t sub_1000244F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 296);
  v9 = *v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;

  if (v3)
  {
    v7 = sub_100024798;
  }

  else
  {
    v7 = sub_100024610;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100024610()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[25];
  v5 = v0[26];
  v8 = *(v5 + 104);
  v7 = *(v5 + 112);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = v2;
  v8(v9, v4, v3);
  v11 = v0[39];
  v12 = v0[40];
  v13 = v0[38];
  v14 = v0[36];
  v15 = v0[34];
  if (v1)
  {
    (*(v15 + 8))(v0[35], v0[33]);

    sub_100004F50(v13, v11);
    v16 = v0[35];
    v17 = v0[32];
    v18 = v0[29];
  }

  else
  {
    v20 = v0[32];
    v21 = v0[29];
    v22 = v0[35];
    (*(v15 + 8))();

    sub_100004F50(v13, v11);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100024798()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 328);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 232);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100024840(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = sub_100041D04();
  v3[30] = v5;
  v6 = *(v5 - 8);
  v3[31] = v6;
  v7 = *(v6 + 64) + 15;
  v3[32] = swift_task_alloc();
  v8 = sub_100041AD4();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_100024998, 0, 0);
}

uint64_t sub_100024998()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  sub_10000A744(*(v0 + 216), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 224) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 240));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A800(*(v0 + 232), &qword_100054958, &qword_100043920);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 232), *(v0 + 240));
  }

  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = *(v0 + 224);
  v15 = *(v0 + 208);
  v17 = *(v15 + 16);
  v16 = *(v15 + 32);
  *(v0 + 16) = *v15;
  *(v0 + 32) = v17;
  *(v0 + 48) = v16;
  v19 = *(v15 + 64);
  v18 = *(v15 + 80);
  v20 = *(v15 + 48);
  *(v0 + 112) = *(v15 + 96);
  *(v0 + 80) = v19;
  *(v0 + 96) = v18;
  *(v0 + 64) = v20;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v21 = type metadata accessor for DelegateHelper();
  v22 = objc_allocWithZone(v21);
  v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v23 = &v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v24 = *(v0 + 136);
  *v23 = *(v0 + 120);
  v23[1] = v24;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v22;
  *(v0 + 192) = v21;
  v25 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 288) = v25;
  v26 = *(v14 + 16);
  v27 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v28 = swift_task_alloc();
  *(v0 + 296) = v28;
  *v28 = v0;
  v28[1] = sub_100024C08;
  v29 = *(v0 + 280);

  return NSURLSession.data(for:delegate:)(v29, v25);
}

uint64_t sub_100024C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 296);
  v9 = *v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;

  if (v3)
  {
    v7 = sub_100024798;
  }

  else
  {
    v7 = sub_100024D20;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100024D20()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[26];
  v7 = *(v5 + 104);
  v6 = *(v5 + 112);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v2;
  v7(v8, v4, v3);
  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[38];
  v13 = v0[36];
  v14 = v0[34];
  if (v1)
  {
    (*(v14 + 8))(v0[35], v0[33]);

    sub_100004F50(v12, v10);
    v15 = v0[35];
    v16 = v0[32];
    v17 = v0[29];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[32];
    v21 = v0[29];
    v22 = v0[35];
    (*(v14 + 8))();

    sub_100004F50(v12, v10);
    v23 = v0[25];

    v24 = v0[1];

    return v24(v23);
  }
}

void sub_100024ED8(void *a1, uint64_t a2)
{
  v77 = a2;
  v106 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  v110 = *(v106 - 8);
  v3 = *(v110 + 64);
  __chkstk_darwin(v106);
  v101 = &v72 - v4;
  v96 = sub_1000423E4();
  v98 = *(v96 - 8);
  v5 = *(v98 + 64);
  __chkstk_darwin(v96);
  v95 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v72 - v12;
  v14 = sub_100042114();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v81 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003288(&qword_100055300, &qword_100045C08);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v90 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v72 - v22;
  v115 = _swiftEmptyArrayStorage;
  sub_1000130A4(0, 0, 0);
  *&v83 = v115;
  v24 = *a1;
  v25 = a1;
  v99 = a1[1];
  v26 = *(v24 + 64);
  v87 = v24 + 64;
  v120 = v24;
  v97 = v24;
  v27 = -1 << *(v24 + 32);
  if (-v27 < 64)
  {
    v28 = ~(-1 << -v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v26;
  v30 = a1[2];
  v31 = v25[4];
  v80 = v25[3];
  sub_10000A744(&v120, &v116, &qword_100055320, &unk_100045C48);
  v85 = v15 + 16;
  v89 = (v15 + 56);
  v88 = (v15 + 48);
  v82 = v27;
  v32 = (63 - v27) >> 6;
  v104 = (v110 + 56);
  v92 = v98 + 16;
  v91 = v98 + 32;
  v103 = (v110 + 48);
  v79 = (v15 + 32);
  v86 = v15;
  v78 = (v15 + 8);
  v33 = v23;
  v105 = v30;

  v84 = v31;

  v34 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v35 = 0;
  v94 = v11;
  v93 = v13;
  v102 = v14;
  for (i = v33; ; v33 = i)
  {
    while (1)
    {
      v109 = v34;
      if (!v34)
      {
        break;
      }

      v36 = *(v34 + 16);
      if (v110 == v36)
      {
        v37 = 1;
      }

      else
      {
        if (v110 >= v36)
        {
          goto LABEL_35;
        }

        v38 = v34 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        v39 = v110;
        (*(v86 + 16))(v33, v38 + *(v86 + 72) * v110, v14);
        v37 = 0;
        v110 = v39 + 1;
      }

      (*v89)(v33, v37, 1, v14);
      v40 = v90;
      sub_100031250(v33, v90, &qword_100055300, &qword_100045C08);
      if ((*v88)(v40, 1, v14) == 1)
      {
        break;
      }

      v57 = v81;
      (*v79)(v81, v90, v14);
      v108(&v111, v57);
      (*v78)(v57, v14);
      v58 = v112;
      v76 = v111;
      v114[0] = v111;
      v114[1] = v112;
      if (v80(v114))
      {

        v59 = sub_100042614();
        v75 = v58;
        if (v59)
        {
          v60 = v58;
          v61 = v59;
          v62 = sub_10002FC54(v59, 0);

          v74 = sub_10002F980(&v111, (v62 + 4), v61, v76, v60);

          if (v74 != v61)
          {
            goto LABEL_36;
          }
        }

        else
        {

          v62 = _swiftEmptyArrayStorage;
        }

        sub_10001CF9C(v62, v77, &v116);
        v63 = v116;
        v64 = v117;
        v65 = v118;
        v66 = v119;
        v67 = v83;
        v115 = v83;
        v69 = *(v83 + 16);
        v68 = *(v83 + 24);
        if (v69 >= v68 >> 1)
        {
          v83 = v116;
          v74 = v117;
          v73 = v118;
          v72 = v119;
          sub_1000130A4((v68 > 1), v69 + 1, 1);
          v66 = v72;
          v65 = v73;
          v64 = v74;
          v63 = v83;
          v67 = v115;
        }

        v67[2] = v69 + 1;
        *&v83 = v67;
        v70 = &v67[7 * v69];
        *(v70 + 2) = v63;
        v70[6] = v64;
        v70[7] = v65;
        v71 = v76;
        v70[8] = v66;
        v70[9] = v71;
        v70[10] = v75;
        v14 = v102;
        v34 = v109;
      }

      else
      {

        v34 = v109;
      }
    }

    if (!v29)
    {
      break;
    }

    v41 = v35;
LABEL_20:
    v44 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v45 = v44 | (v41 << 6);
    v46 = v97;
    v47 = v98;
    v48 = v95;
    v49 = v96;
    (*(v98 + 16))(v95, *(v97 + 48) + *(v98 + 72) * v45, v96);
    v50 = *(*(v46 + 56) + 8 * v45);
    v51 = v106;
    v52 = *(v106 + 48);
    v53 = *(v47 + 32);
    v13 = v93;
    v53(v93, v48, v49);
    *&v13[v52] = v50;
    (*v104)(v13, 0, 1, v51);

    v43 = v41;
    v11 = v94;
LABEL_21:
    sub_100031250(v13, v11, &qword_100054DE0, &qword_100045C40);
    if ((*v103)(v11, 1, v51) == 1)
    {
      sub_100031208();

      sub_100031210(v109);

      return;
    }

    v54 = v101;
    sub_100031250(v11, v101, &qword_100054DD0, &unk_1000452F0);
    v99(&v111, v54);
    sub_10000A800(v54, &qword_100054DD0, &unk_1000452F0);
    v34 = v111;
    v55 = v112;
    v56 = v113;
    sub_100031210(v109);
    v110 = 0;
    v107 = v56;
    v108 = v55;
    v35 = v43;
    v14 = v102;
  }

  if (v32 <= v35 + 1)
  {
    v42 = v35 + 1;
  }

  else
  {
    v42 = v32;
  }

  v43 = v42 - 1;
  while (1)
  {
    v41 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v41 >= v32)
    {
      v51 = v106;
      (*v104)(v13, 1, 1, v106);
      v29 = 0;
      goto LABEL_21;
    }

    v29 = *(v87 + 8 * v41);
    ++v35;
    if (v29)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1000258A8()
{
  v0 = sub_100042414();
  sub_100001D84(v0, qword_1000558C0);
  sub_100001DE8(v0, qword_1000558C0);
  return sub_100042404();
}

uint64_t Service.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
  v4 = sub_100041F84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Service.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054958, &qword_100043920);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23[-1] - v4;
  v6 = sub_100041D04();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for CloudKitServer();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = CloudKitServer.init(baseURL:)(v5);
  v23[3] = v7;
  v23[4] = &off_100051CC8;
  v23[0] = v10;
  v11 = type metadata accessor for Service();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_100025BB4(v23, v7);
  v16 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_10002FCD0(*v18, a1, v14);
  sub_100004BD8(v23);
  return v20;
}

uint64_t type metadata accessor for Service()
{
  result = qword_100055228;
  if (!qword_100055228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100025BB4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t static Service.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Service();
  sub_100041FD4();
  sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem);
  sub_100031058(&qword_1000548F8, type metadata accessor for Service);
  result = sub_100041D84();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
    v8 = sub_100041F84();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t Service.deinit()
{
  v1 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
  v2 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem;
  sub_100041FD4();
  sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem);
  sub_100041DA4();
  v3 = sub_100041F84();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + v2);

  sub_100004BD8((v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService));
  v5 = *(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains + 8);
  sub_10002FF04(*(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t Service.__deallocating_deinit()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
  if (is_remote)
  {
    v3 = sub_100041F84();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    v4 = *(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem);
  }

  else
  {
    v5 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem;
    sub_100041FD4();
    sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem);
    sub_100041DA4();
    v6 = sub_100041F84();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = *(v0 + v5);

    sub_100004BD8((v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService));
    v8 = *(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains + 8);
    sub_10002FF04(*(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains));
  }

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int Service.hashValue.getter()
{
  sub_100042C54();
  type metadata accessor for Service();
  sub_100031058(&qword_1000550A0, type metadata accessor for Service);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t Service.unownedExecutor.getter()
{
  if ((sub_100041E74() & 1) == 0)
  {
    type metadata accessor for Service();
    sub_100031058(&qword_1000548F8, type metadata accessor for Service);
    return sub_100041D34();
  }

  return v0;
}

uint64_t sub_100026104()
{
  if ((sub_100041E74() & 1) == 0)
  {
    type metadata accessor for Service();
    return sub_100041D34();
  }

  return v0;
}

uint64_t sub_100026158(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for Service();
  sub_100041FD4();
  sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem);
  result = sub_100041D84();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
    v8 = sub_100041F84();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem) = v4;

    return v6;
  }

  return result;
}

uint64_t sub_100026288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000F77C;

  return Service.checkIsAvailable()();
}

uint64_t Service.checkIsAvailable()()
{
  *(v1 + 136) = v0;
  v2 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  *(v1 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000263B0, v0, 0);
}

{
  v1[2] = v0;
  v2 = sub_100041E84();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_100041F44();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000268D0, 0, 0);
}

uint64_t sub_1000263B0()
{
  *(v0 + 152) = *sub_100004C24((*(v0 + 136) + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService), *(*(v0 + 136) + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService + 24));

  return _swift_task_switch(sub_100026430, 0, 0);
}

uint64_t sub_100026430()
{
  v1 = v0[18];
  v2 = *(v0[19] + 16);
  sub_100004CBC((v0 + 2));
  v3 = sub_100041D04();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_100026530;
  v5 = v0[18];

  return sub_100023394((v0 + 2), v5);
}

uint64_t sub_100026530()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 144);
  v5 = *v1;
  *(v2 + 168) = v0;

  sub_10000A800(v4, &qword_100054958, &qword_100043920);
  sub_10000A800(v2 + 16, &qword_1000550A8, &qword_100045538);
  if (v0)
  {

    return _swift_task_switch(sub_1000266C4, 0, 0);
  }

  else
  {
    v6 = *(v2 + 144);

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_1000266C4()
{
  v1 = v0[18];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_100026728()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E968;

  return Service.checkIsAvailable()();
}

uint64_t sub_1000268D0()
{
  v1 = v0[2];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[8];
    v3 = *(v0[2] + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem);
    sub_100041F54();
    v4 = sub_100003288(&qword_1000550B0, &unk_100045550);
    sub_100041F24();
    v5 = v0[8];
    sub_100041F04();
    v9 = v0[5];
    sub_100041E94();
    v10 = async function pointer to XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)[1];
    v11 = swift_task_alloc();
    v0[9] = v11;
    v12 = type metadata accessor for Service();
    v13 = sub_100031058(&qword_1000548F8, type metadata accessor for Service);
    *v11 = v0;
    v11[1] = sub_100026B40;
    v14 = v0[8];
    v15 = v0[5];
    v16 = v0[2];

    return XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v16, v15, v14, v4, v12, v4, v13, &protocol self-conformance witness table for Error);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_100026D00;
    v7 = v0[2];

    return Service.checkIsAvailable()();
  }
}

uint64_t sub_100026B40()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100026E34;
  }

  else
  {
    v3 = sub_100026C54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100026C54()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100026D00()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v7 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 40);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100026E34()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100026ED4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E968;

  return Service.validate(_:)(a1, a2);
}

uint64_t Service.validate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100042184();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100042394();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = _s22OnlineValidationActionOMa();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_100042384();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_100027134, v2, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100041E84();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_100042394();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_100041F44();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100027AB8, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100041E84();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_100042264();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_100003288(&qword_100055128, &unk_100045710);
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_100041F44();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100029244, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100041E84();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_100042294();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_100003288(&qword_100055190, &unk_100045860);
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_100041F44();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002AF44, 0, 0);
}

uint64_t sub_100027134()
{
  v2 = v0[11];
  v1 = v0[12];
  sub_100014E58(v0[3], v0[16]);
  sub_1000151F4(v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v0[9] + 32))(v0[10], v0[12], v0[8]);
      v4 = swift_task_alloc();
      v0[20] = v4;
      *v4 = v0;
      v4[1] = sub_1000275F4;
      v5 = v0[10];
      v6 = v0[4];
      v7 = v0[2];

      return sub_10002CBCC(v7, v5);
    }

    else
    {
      (*(v0[14] + 32))(v0[2], v0[16], v0[13]);
      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[12];
      v14 = v0[10];
      v15 = v0[7];

      v16 = v0[1];

      return v16();
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_100027330;
    v10 = v0[4];

    return sub_10002C574();
  }
}

uint64_t sub_100027330(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;

  return _swift_task_switch(sub_100027448, v5, 0);
}

uint64_t sub_100027448()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[14];
  v21 = v4;
  v22 = v0[16];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v9 = v0[6];
  v20 = v0[5];
  v18 = v0[8];
  v19 = v0[2];
  (*(v5 + 16))();
  sub_100042374();
  sub_1000422E4();
  (*(v7 + 8))(v6, v18);

  sub_1000130C4(v8, v2, v1);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  (*(v9 + 8))(v8, v20);
  sub_100042354();
  v10 = *(v5 + 8);
  v10(v3, v21);
  v10(v22, v21);
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[12];
  v14 = v0[10];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000275F4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100027704, v2, 0);
}

uint64_t sub_100027704()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000277D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.validate(_:)(a1, a2);
}

uint64_t sub_100027AB8()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[19];
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = v0[3];
    v8 = *(v0[4] + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem);
    sub_100041F54();
    (*(v5 + 16))(v4, v7, v6);
    sub_100041EA4();
    sub_100031058(&qword_1000550C0, &type metadata accessor for PreliminaryInformation);
    sub_100031058(&qword_1000550C8, &type metadata accessor for PreliminaryInformation);
    sub_100041F14();
    v9 = v0[19];
    v10 = sub_100042384();
    sub_100031058(&qword_1000550D0, &type metadata accessor for PreliminaryInformation.Validated);
    sub_100031058(&qword_1000550D8, &type metadata accessor for PreliminaryInformation.Validated);
    sub_100041F34();
    v11 = v0[19];
    sub_100041F04();
    v17 = v0[10];
    sub_100041E94();
    v18 = _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTu[1];
    v19 = swift_task_alloc();
    v0[20] = v19;
    v20 = type metadata accessor for Service();
    sub_100031058(&qword_1000548F8, type metadata accessor for Service);
    *v19 = v0;
    v19[1] = sub_100027ED8;
    v21 = v0[19];
    v22 = v0[10];
    v23 = v0[4];
    v26 = v0[7];
    v24 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v24, v23, v22, v21, &type metadata for Never, v10, v20, &type metadata for Never);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = sub_100027FE8;
    v13 = v0[3];
    v14 = v0[4];
    v15 = v0[2];

    return Service.validate(_:)(v15, v13);
  }
}

uint64_t sub_100027ED8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10003132C;
  }

  else
  {
    v3 = sub_100031320;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027FE8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v10 = *v0;

  v3 = v1[19];
  v4 = v1[16];
  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[7];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_10002817C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000281A0, v2, 0);
}

uint64_t sub_1000281A0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042314();
  v4 = sub_100042304();
  v5 = sub_100031058(&qword_1000550E8, &type metadata accessor for PreliminaryInformation.NextStep);
  v6 = sub_100031058(&qword_1000550F0, &type metadata accessor for PreliminaryInformation.NextStep);
  v7 = sub_100031058(&qword_1000550F8, &type metadata accessor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055100, &type metadata accessor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, dword_100045BF0, v1, v3, v4, v5, v6, v7);
}

uint64_t Service.resolve(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000283D4, v2, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100041E84();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_100042394();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_100041F44();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000288CC, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100029BAC, v2, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100041E84();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_100042264();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_100003288(&qword_100055128, &unk_100045710);
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_100041F44();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002A0A4, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10002B69C, v2, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100041E84();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_100042294();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_100003288(&qword_100055190, &unk_100045860);
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_100041F44();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002BB94, 0, 0);
}

uint64_t sub_1000283D4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042314();
  v4 = sub_100042304();
  v5 = sub_100031058(&qword_1000550E8, &type metadata accessor for PreliminaryInformation.NextStep);
  v6 = sub_100031058(&qword_1000550F0, &type metadata accessor for PreliminaryInformation.NextStep);
  v7 = sub_100031058(&qword_1000550F8, &type metadata accessor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055100, &type metadata accessor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045648, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_1000285E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.resolve(_:)(a1, a2);
}

uint64_t sub_1000288CC()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[19];
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = v0[3];
    v8 = *(v0[4] + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem);
    sub_100041F54();
    (*(v5 + 16))(v4, v7, v6);
    sub_100041EA4();
    sub_100031058(&qword_1000550C0, &type metadata accessor for PreliminaryInformation);
    sub_100031058(&qword_1000550C8, &type metadata accessor for PreliminaryInformation);
    sub_100041F14();
    v9 = v0[19];
    v10 = sub_100003288(&qword_100055110, &qword_100045668);
    sub_100030D8C(&qword_100055118, &qword_100055110, &qword_100045668);
    sub_100030D8C(&qword_100055120, &qword_100055110, &qword_100045668);
    sub_100041F34();
    v11 = v0[19];
    sub_100041F04();
    v13 = v0[10];
    sub_100041E94();
    v14 = _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTu[1];
    v15 = swift_task_alloc();
    v0[20] = v15;
    v16 = type metadata accessor for Service();
    sub_100031058(&qword_1000548F8, type metadata accessor for Service);
    *v15 = v0;
    v15[1] = sub_100027ED8;
    v17 = v0[19];
    v18 = v0[10];
    v19 = v0[4];
    v23 = v0[7];
    v20 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v20, v19, v18, v17, &type metadata for Never, v10, v16, &type metadata for Never);
  }

  else
  {
    v12 = v0[4];

    return _swift_task_switch(sub_100028CBC, v12, 0);
  }
}

uint64_t sub_100028CBC()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_100042314();
  v4 = sub_100042304();
  v5 = sub_100031058(&qword_1000550E8, &type metadata accessor for PreliminaryInformation.NextStep);
  v6 = sub_100031058(&qword_1000550F0, &type metadata accessor for PreliminaryInformation.NextStep);
  v7 = sub_100031058(&qword_1000550F8, &type metadata accessor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055100, &type metadata accessor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error);
  *v2 = v0;
  v2[1] = sub_100031338;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045660, v1, v3, v4, v5, v6, v7);
}

uint64_t Service.validate(_:)()
{
  return _swift_task_switch(sub_100028EE8, v0, 0);
}

{
  return _swift_task_switch(sub_10002ABE8, v0, 0);
}

uint64_t sub_100028F5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.validate(_:)(a1, a2);
}

uint64_t sub_100029244()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[19];
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = v0[3];
    v8 = *(v0[4] + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem);
    sub_100041F54();
    (*(v5 + 16))(v4, v7, v6);
    sub_100041EA4();
    sub_100031058(&qword_100055130, &type metadata accessor for PasswordAccount.Known);
    sub_100031058(&qword_100055138, &type metadata accessor for PasswordAccount.Known);
    sub_100041F14();
    v9 = v0[19];
    v10 = sub_100042254();
    sub_100031058(&qword_100055140, &type metadata accessor for PasswordAccount.Known.Validated);
    sub_100031058(&qword_100055148, &type metadata accessor for PasswordAccount.Known.Validated);
    sub_100041F34();
    v11 = v0[19];
    sub_100041F04();
    v13 = v0[10];
    sub_100041E94();
    v14 = _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTu[1];
    v15 = swift_task_alloc();
    v0[20] = v15;
    v16 = type metadata accessor for Service();
    sub_100031058(&qword_1000548F8, type metadata accessor for Service);
    *v15 = v0;
    v15[1] = sub_100029634;
    v17 = v0[19];
    v18 = v0[10];
    v19 = v0[4];
    v23 = v0[7];
    v20 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v20, v19, v18, v17, &type metadata for Never, v10, v16, &type metadata for Never);
  }

  else
  {
    v12 = v0[4];

    return _swift_task_switch(sub_100031324, v12, 0);
  }
}

uint64_t sub_100029634()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10003132C;
  }

  else
  {
    v3 = sub_100029744;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100029744()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  v8 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100029844(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100029868, v2, 0);
}

uint64_t sub_100029868()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042204();
  v4 = sub_100042244();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_100055160, &type metadata accessor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055168, &type metadata accessor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055170, &type metadata accessor for PasswordAccount.Known.Error);
  *v2 = v0;
  v2[1] = sub_100029A78;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045BE8, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_100029A78()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100029BAC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042204();
  v4 = sub_100042244();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_100055160, &type metadata accessor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055168, &type metadata accessor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055170, &type metadata accessor for PasswordAccount.Known.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045798, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_100029DBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.resolve(_:)(a1, a2);
}

uint64_t sub_10002A0A4()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[19];
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = v0[3];
    v8 = *(v0[4] + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem);
    sub_100041F54();
    (*(v5 + 16))(v4, v7, v6);
    sub_100041EA4();
    sub_100031058(&qword_100055130, &type metadata accessor for PasswordAccount.Known);
    sub_100031058(&qword_100055138, &type metadata accessor for PasswordAccount.Known);
    sub_100041F14();
    v9 = v0[19];
    v10 = sub_100003288(&qword_100055178, &qword_1000457B8);
    sub_100030D8C(&qword_100055180, &qword_100055178, &qword_1000457B8);
    sub_100030D8C(&qword_100055188, &qword_100055178, &qword_1000457B8);
    sub_100041F34();
    v11 = v0[19];
    sub_100041F04();
    v13 = v0[10];
    sub_100041E94();
    v14 = _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTu[1];
    v15 = swift_task_alloc();
    v0[20] = v15;
    v16 = type metadata accessor for Service();
    sub_100031058(&qword_1000548F8, type metadata accessor for Service);
    *v15 = v0;
    v15[1] = sub_10002A49C;
    v17 = v0[19];
    v18 = v0[10];
    v19 = v0[4];
    v23 = v0[7];
    v20 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v20, v19, v18, v17, &type metadata for Never, v10, v16, &type metadata for Never);
  }

  else
  {
    v12 = v0[4];

    return _swift_task_switch(sub_10002A6A4, v12, 0);
  }
}

uint64_t sub_10002A49C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10002AA64;
  }

  else
  {
    v3 = sub_10002A5AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A5AC()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002A6A4()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_100042204();
  v4 = sub_100042244();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_100055160, &type metadata accessor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055168, &type metadata accessor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055170, &type metadata accessor for PasswordAccount.Known.Error);
  *v2 = v0;
  v2[1] = sub_10002A8B4;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_1000457B0, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_10002A8B4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v11 = *v0;

  v4 = v1[19];
  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[10];
  v8 = v1[7];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_10002AA64()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  sub_100031058(&qword_1000550E0, &type metadata accessor for XPCSystem.RemoteInvocationCancellationError);
  swift_allocError();
  (*(v6 + 32))(v7, v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[7];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v9 + 8))(v8, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10002AC5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.validate(_:)(a1, a2);
}

uint64_t sub_10002AF44()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[19];
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = v0[3];
    v8 = *(v0[4] + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem);
    sub_100041F54();
    (*(v5 + 16))(v4, v7, v6);
    sub_100041EA4();
    sub_100031058(&qword_100055198, &type metadata accessor for PasswordAccount.Unknown);
    sub_100031058(&qword_1000551A0, &type metadata accessor for PasswordAccount.Unknown);
    sub_100041F14();
    v9 = v0[19];
    v10 = sub_100042284();
    sub_100031058(&qword_1000551A8, &type metadata accessor for PasswordAccount.Unknown.Validated);
    sub_100031058(&qword_1000551B0, &type metadata accessor for PasswordAccount.Unknown.Validated);
    sub_100041F34();
    v11 = v0[19];
    sub_100041F04();
    v13 = v0[10];
    sub_100041E94();
    v14 = _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTu[1];
    v15 = swift_task_alloc();
    v0[20] = v15;
    v16 = type metadata accessor for Service();
    sub_100031058(&qword_1000548F8, type metadata accessor for Service);
    *v15 = v0;
    v15[1] = sub_10002B334;
    v17 = v0[19];
    v18 = v0[10];
    v19 = v0[4];
    v23 = v0[7];
    v20 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v20, v19, v18, v17, &type metadata for Never, v10, v16, &type metadata for Never);
  }

  else
  {
    v12 = v0[4];

    return _swift_task_switch(sub_100031328, v12, 0);
  }
}

uint64_t sub_10002B334()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10003132C;
  }

  else
  {
    v3 = sub_100031334;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002B444(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10002B468, v2, 0);
}

uint64_t sub_10002B468()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042204();
  v4 = sub_100042274();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_1000551B8, &type metadata accessor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C0, &type metadata accessor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C8, &type metadata accessor for PasswordAccount.Unknown.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045BE0, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_10002B69C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042204();
  v4 = sub_100042274();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_1000551B8, &type metadata accessor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C0, &type metadata accessor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C8, &type metadata accessor for PasswordAccount.Unknown.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_1000458E8, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_10002B8AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.resolve(_:)(a1, a2);
}

uint64_t sub_10002BB94()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[19];
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = v0[3];
    v8 = *(v0[4] + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem);
    sub_100041F54();
    (*(v5 + 16))(v4, v7, v6);
    sub_100041EA4();
    sub_100031058(&qword_100055198, &type metadata accessor for PasswordAccount.Unknown);
    sub_100031058(&qword_1000551A0, &type metadata accessor for PasswordAccount.Unknown);
    sub_100041F14();
    v9 = v0[19];
    v10 = sub_100003288(&qword_1000551D0, &unk_100046700);
    sub_100030D8C(&qword_1000551D8, &qword_1000551D0, &unk_100046700);
    sub_100030D8C(&qword_1000551E0, &qword_1000551D0, &unk_100046700);
    sub_100041F34();
    v11 = v0[19];
    sub_100041F04();
    v13 = v0[10];
    sub_100041E94();
    v14 = _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTu[1];
    v15 = swift_task_alloc();
    v0[20] = v15;
    v16 = type metadata accessor for Service();
    sub_100031058(&qword_1000548F8, type metadata accessor for Service);
    *v15 = v0;
    v15[1] = sub_100027ED8;
    v17 = v0[19];
    v18 = v0[10];
    v19 = v0[4];
    v23 = v0[7];
    v20 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v20, v19, v18, v17, &type metadata for Never, v10, v16, &type metadata for Never);
  }

  else
  {
    v12 = v0[4];

    return _swift_task_switch(sub_10002BF8C, v12, 0);
  }
}

uint64_t sub_10002BF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_100042204();
  v4 = sub_100042274();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_1000551B8, &type metadata accessor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C0, &type metadata accessor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C8, &type metadata accessor for PasswordAccount.Unknown.Error);
  *v2 = v0;
  v2[1] = sub_100031338;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, dword_100045900, v1, v3, v4, v5, v6, v7);
}

Swift::Int sub_10002C19C()
{
  v2 = *v0;
  sub_100042C54();
  type metadata accessor for Service();
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_10002C1FC()
{
  v1 = *v0;
  type metadata accessor for Service();
  sub_100031058(&qword_1000548F8, type metadata accessor for Service);
  return sub_100041E44();
}

Swift::Int sub_10002C278()
{
  v2 = *v0;
  sub_100042C54();
  type metadata accessor for Service();
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_10002C2D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
  v5 = sub_100041F84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10002C350(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for Service();
  v5 = sub_100031058(&qword_1000548F8, type metadata accessor for Service);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_10002C3DC()
{
  v1 = *v0;
  type metadata accessor for Service();
  sub_100031058(&qword_1000548F8, type metadata accessor for Service);
  sub_100031058(&qword_1000552F8, &type metadata accessor for XPCSystem.ActorID);
  return sub_100041E54();
}

uint64_t sub_10002C4A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Service();
  sub_100031058(&qword_1000548F8, type metadata accessor for Service);
  sub_100031058(&qword_1000552F0, &type metadata accessor for XPCSystem.ActorID);
  result = sub_100041E64();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002C574()
{
  *(v1 + 216) = v0;
  v2 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  *(v1 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10002C610, v0, 0);
}

uint64_t sub_10002C610()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains;
  v0[29] = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains;
  v3 = (v1 + v2);
  v4 = *v3;
  v0[30] = *v3;
  v5 = v3[1];
  v0[31] = v5;
  if (v4)
  {
    v6 = v0[28];
    sub_1000311C8(v4);

    v7 = v0[1];

    return v7(v4, v5);
  }

  else
  {
    v0[32] = *sub_100004C24((v1 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService), *(v1 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService + 24));

    return _swift_task_switch(sub_10002C710, 0, 0);
  }
}

uint64_t sub_10002C710()
{
  v1 = v0[28];
  v2 = *(v0[32] + 16);
  sub_10000D20C((v0 + 2));
  v3 = sub_100041D04();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_10002C814;
  v5 = v0[28];

  return sub_100024840((v0 + 2), v5);
}

uint64_t sub_10002C814(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = v1;

  v7 = v4[28];
  if (v1)
  {
    sub_10000A800(v7, &qword_100054958, &qword_100043920);
    sub_10000A800((v4 + 2), &qword_100055318, &unk_100045C30);
    v8 = sub_10002CAC8;
    v9 = 0;
  }

  else
  {
    v10 = v4[27];
    v4[35] = a1;
    sub_10000A800(v7, &qword_100054958, &qword_100043920);
    sub_10000A800((v4 + 2), &qword_100055318, &unk_100045C30);
    v8 = sub_10002C9BC;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10002C9BC()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = (v0[27] + v0[29]);
  v0[22] = v1;
  v0[23] = sub_100034ACC;
  v0[24] = 0;
  v0[25] = sub_10001A020;
  v0[26] = 0;

  sub_100024ED8(v0 + 22, 2);
  v5 = v4;

  v6 = *v3;
  v7 = v3[1];
  *v3 = v1;
  v3[1] = v5;

  sub_10002FF04(v6);
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[28];
  sub_1000311C8(v0[30]);

  v11 = v0[1];

  return v11(v8, v5);
}

uint64_t sub_10002CAE4()
{
  v1 = v0[34];
  v2 = sub_100009630(_swiftEmptyArrayStorage);
  v0[17] = v2;
  v0[18] = sub_100034ACC;
  v0[19] = 0;
  v0[20] = sub_10001A020;
  v0[21] = 0;

  sub_100024ED8(v0 + 17, 2);
  v4 = v3;

  v5 = v0[31];
  v6 = v0[28];
  sub_1000311C8(v0[30]);

  v7 = v0[1];

  return v7(v2, v4);
}

uint64_t sub_10002CBCC(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_100042334();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v7 = sub_100042394();
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v11 = *(*(sub_100003288(&qword_100055300, &qword_100045C08) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v12 = sub_100042184();
  v3[30] = v12;
  v13 = *(v12 - 8);
  v3[31] = v13;
  v14 = *(v13 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v15 = sub_100042114();
  v3[34] = v15;
  v16 = *(v15 - 8);
  v3[35] = v16;
  v17 = *(v16 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_10002CE38, v2, 0);
}

uint64_t sub_10002CE38()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  v7 = v0[20];
  sub_1000422E4();
  sub_100042134();
  v8 = *(v5 + 8);
  v0[39] = v8;
  v0[40] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v10 = v0[26];
    v9 = v0[27];
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[22];
    v14 = v0[23];
    v16 = v0[19];
    v15 = v0[20];
    sub_10000A800(v0[29], &qword_100055300, &qword_100045C08);
    (*(v10 + 16))(v9, v15, v11);
    (*(v14 + 104))(v12, enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:), v13);
    sub_100042364();
    v18 = v0[37];
    v17 = v0[38];
    v19 = v0[36];
    v21 = v0[32];
    v20 = v0[33];
    v23 = v0[28];
    v22 = v0[29];
    v24 = v0[27];
    v25 = v0[24];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = v0[37];
    v29 = v0[38];
    v31 = v0[35];
    v30 = v0[36];
    v32 = v0[34];
    v33 = v0[21];
    (*(v31 + 32))(v29, v0[29], v32);
    v34 = sub_100004C24((v33 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService), *(v33 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService + 24));
    v35 = *(v31 + 16);
    v35(v28, v29, v32);
    v35(v30, v28, v32);
    v0[17] = sub_100042564();
    v0[18] = v36;
    sub_100009BAC();
    v37 = sub_100042894();
    v39 = v38;

    v40 = sub_1000183A8(v37, v39);
    v42 = v41;

    v0[41] = v40;
    v0[42] = v42;
    v43 = *(v31 + 8);
    v0[43] = v43;
    v0[44] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v28, v32);
    v0[45] = *v34;

    return _swift_task_switch(sub_10002D140, 0, 0);
  }
}

uint64_t sub_10002D140()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[28];
  v4 = *(v0[45] + 16);
  sub_10000B4EC((v0 + 2));

  v5 = sub_100041D04();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_10002D258;
  v7 = v0[28];

  return sub_100023A98((v0 + 2), v7);
}

uint64_t sub_10002D258(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(v4 + 376) = v1;

  v7 = *(v4 + 224);
  if (v1)
  {
    sub_10000A800(v7, &qword_100054958, &qword_100043920);
    sub_10000A800(v4 + 16, &qword_100055328, &unk_100045C60);
    v8 = sub_10002D69C;
    v9 = 0;
  }

  else
  {
    v10 = *(v4 + 168);
    *(v4 + 408) = a1;
    sub_10000A800(v7, &qword_100054958, &qword_100043920);
    sub_10000A800(v4 + 16, &qword_100055328, &unk_100045C60);
    v8 = sub_10002D400;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10002D400()
{
  if (*(v0 + 408))
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 160);
    sub_1000422E4();
    v3 = swift_task_alloc();
    *(v0 + 384) = v3;
    *v3 = v0;
    v3[1] = sub_10002D948;
    v4 = *(v0 + 168);

    return sub_10002C574();
  }

  else
  {
    if (qword_100054910 != -1)
    {
      swift_once();
    }

    v6 = sub_100042414();
    sub_100001DE8(v6, qword_1000558C0);
    v7 = sub_1000423F4();
    v8 = sub_1000427D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Email domain has MX record.", v9, 2u);
    }

    v30 = *(v0 + 344);
    v31 = *(v0 + 352);
    v28 = *(v0 + 272);
    v29 = *(v0 + 304);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);

    (*(v10 + 16))(v11, v16, v12);
    (*(v14 + 104))(v13, enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:), v15);
    sub_100042364();
    v30(v29, v28);
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v20 = *(v0 + 288);
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);
    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v25 = *(v0 + 216);
    v26 = *(v0 + 192);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10002D6B8()
{
  if (qword_100054910 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = sub_100042414();
  sub_100001DE8(v2, qword_1000558C0);
  swift_errorRetain();
  v3 = sub_1000423F4();
  v4 = sub_1000427C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[47];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Online validation failed: %@", v6, 0xCu);
    sub_10000A800(v7, &qword_100054FC8, &qword_100045EF0);
  }

  v9 = v0[47];
  v32 = v0[43];
  v33 = v0[44];
  v30 = v0[34];
  v31 = v0[38];
  v10 = v0[26];
  v11 = v0[27];
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[22];
  v14 = v0[23];
  v16 = v3;
  v17 = v0[19];
  v18 = v0[20];

  (*(v10 + 16))(v11, v18, v12);
  (*(v14 + 104))(v13, enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:), v15);
  sub_100042364();

  v32(v31, v30);
  v20 = v0[37];
  v19 = v0[38];
  v21 = v0[36];
  v23 = v0[32];
  v22 = v0[33];
  v25 = v0[28];
  v24 = v0[29];
  v26 = v0[27];
  v27 = v0[24];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10002D948(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v5 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = a2;

  return _swift_task_switch(sub_10002DA60, v5, 0);
}

uint64_t sub_10002DA60()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[32];
  v6 = v0[30];

  v7 = sub_1000130C4(v5, v2, v1);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4(v5, v6);
  if (qword_100054910 != -1)
  {
    swift_once();
  }

  v8 = sub_100042414();
  sub_100001DE8(v8, qword_1000558C0);

  v9 = sub_1000423F4();
  v10 = sub_1000427D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v7[2];

    _os_log_impl(&_mh_execute_header, v9, v10, "Email domain has no MX record. Found %ld suggestion(s).", v11, 0xCu);
  }

  else
  {
  }

  v12 = v0[43];
  v30 = v0[44];
  v13 = v0[38];
  v14 = v0[34];
  v15 = v0[24];
  v16 = v0[22];
  v17 = v0[23];
  v18 = v0[19];
  (*(v0[26] + 16))(v0[27], v0[20], v0[25]);
  *v15 = v7;
  (*(v17 + 104))(v15, enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButDomainNotFound(_:), v16);

  sub_100042364();
  v12(v13, v14);
  v20 = v0[37];
  v19 = v0[38];
  v21 = v0[36];
  v23 = v0[32];
  v22 = v0[33];
  v25 = v0[28];
  v24 = v0[29];
  v26 = v0[27];
  v27 = v0[24];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10002DCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v7 = sub_100042304();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[5] = v10;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10002DE0C;

  return sub_10002DFC4(a1, a3, v10);
}

uint64_t sub_10002DE0C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_10002DF44, 0, 0);
  }

  else
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_10002DF44()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002DFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100042304();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_100042334();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_100042384();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10002E140, v3, 0);
}

uint64_t sub_10002E140()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_100014E58(v0[3], v0[14]);
  sub_100042344();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButDomainNotFound(_:))
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_3:
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_10002E490;
    v6 = v0[14];
    v7 = v0[8];
    v8 = v0[4];
    v9 = v0[2];

    return sub_10002E718(v9, v6, v7);
  }

  if (v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.empty(_:) || v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:))
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[5];
    (*(v13 + 16))(v17, v12, v14);
    (*(v16 + 104))(v17, enum case for PreliminaryInformation.Error.invalid(_:), v15);
    sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error);
    swift_willThrowTypedImpl();
    (*(v13 + 8))(v12, v14);
  }

  else
  {
    if (v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButSuspicious(_:) || v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:))
    {
      goto LABEL_3;
    }

    v20 = v0[13];
    v19 = v0[14];
    v22 = v0[11];
    v21 = v0[12];
    v23 = v0[9];
    v24 = v0[10];
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[5];
    (*(v20 + 16))(v27, v19, v21);
    (*(v26 + 104))(v27, enum case for PreliminaryInformation.Error.invalid(_:), v25);
    sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error);
    swift_willThrowTypedImpl();
    (*(v20 + 8))(v19, v21);
    (*(v24 + 8))(v22, v23);
  }

  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10002E490()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10002E658;
  }

  else
  {
    v6 = sub_10002E5BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10002E5BC()
{
  v1 = v0[11];
  v2 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002E658()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002E718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = v3;
  v4[22] = a3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v6 = *(*(type metadata accessor for ResolvedDomain(0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v7 = *(*(sub_100003288(&qword_100055300, &qword_100045C08) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = sub_100042184();
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();
  v11 = sub_100042394();
  v4[30] = v11;
  v12 = *(v11 - 8);
  v4[31] = v12;
  v13 = *(v12 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v14 = sub_100042114();
  v4[34] = v14;
  v15 = *(v14 - 8);
  v4[35] = v15;
  v16 = *(v15 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_10002E960, v3, 0);
}

uint64_t sub_10002E960()
{
  v1 = v0[35];
  v39 = v0[34];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[20];
  sub_100042374();
  sub_1000422E4();
  (*(v4 + 8))(v2, v3);
  sub_100042134();
  (*(v5 + 8))(v6, v7);
  v10 = (*(v1 + 48))(v8, 1, v39);
  v11 = v0[37];
  v12 = v0[38];
  v13 = v0[36];
  if (v10 == 1)
  {
    v15 = v0[32];
    v14 = v0[33];
    v36 = v0[29];
    v37 = v0[25];
    v38 = v0[24];
    v40 = v0[23];
    v16 = v0[22];
    v17 = v0[20];
    sub_10000A800(v0[26], &qword_100055300, &qword_100045C08);
    v18 = sub_100042384();
    (*(*(v18 - 8) + 16))(v16, v17, v18);
    v19 = enum case for PreliminaryInformation.Error.invalid(_:);
    v20 = sub_100042304();
    (*(*(v20 - 8) + 104))(v16, v19, v20);
    sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error);
    swift_willThrowTypedImpl();

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[34];
    v24 = v0[35];
    v25 = v0[21];
    (*(v24 + 32))(v0[38], v0[26], v23);
    v26 = sub_100004C24((v25 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService), *(v25 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService + 24));
    v27 = *(v24 + 16);
    v27(v11, v12, v23);
    v27(v13, v11, v23);
    v0[17] = sub_100042564();
    v0[18] = v28;
    sub_100009BAC();
    v29 = sub_100042894();
    v31 = v30;

    v32 = sub_1000183A8(v29, v31);
    v34 = v33;

    v0[39] = v32;
    v0[40] = v34;
    v35 = *(v24 + 8);
    v0[41] = v35;
    v0[42] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v11, v23);
    v0[43] = *v26;

    return _swift_task_switch(sub_10002ED10, 0, 0);
  }
}

uint64_t sub_10002ED10()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[23];
  v4 = *(v0[43] + 16);
  sub_100009818((v0 + 2));

  v5 = sub_100041D04();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v6[1] = sub_10002EE2C;
  v7 = v0[25];
  v8 = v0[23];

  return sub_100024130(v7, (v0 + 2), v8);
}

uint64_t sub_10002EE2C()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 184);
  v5 = *v1;
  *(v2 + 360) = v0;

  sub_10000A800(v4, &qword_100054958, &qword_100043920);
  sub_10000A800(v2 + 16, &qword_100055308, &qword_100045C18);
  if (v0)
  {
    v6 = sub_10002F0E0;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 168);
    v6 = sub_10002EF9C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002EF9C()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[32];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[19];
  v8 = v0[20];
  sub_1000310A0(v6, v7);
  sub_100042374();
  sub_10002F264(v7, v5, v9);
  sub_100031168(v6, type metadata accessor for ResolvedDomain);
  v2(v3, v4);
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  v14 = v0[32];
  v13 = v0[33];
  v15 = v0[29];
  v17 = v0[25];
  v16 = v0[26];
  v19 = v0[23];
  v18 = v0[24];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10002F0FC()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v5 = v0[34];
  v6 = v0[32];
  v8 = v0[19];
  v7 = v0[20];
  sub_100042374();
  sub_1000422A4();

  v3(v4, v5);
  v9 = enum case for PreliminaryInformation.NextStep.unknownAccount(_:);
  v10 = sub_100042314();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[36];
  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[29];
  v18 = v0[25];
  v17 = v0[26];
  v20 = v0[23];
  v19 = v0[24];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10002F264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v56 = a1;
  v51 = sub_1000421F4();
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000421C4();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100042234();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100042394();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ResolvedDomain.Known(0);
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100042184();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_1000423B4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v43 - v27;
  v29 = type metadata accessor for ResolvedDomain(0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000310A0(v56, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100031104(v32, v18);
    v33 = v52;
    v34 = v53;
    v35 = v54;
    (*(v52 + 16))(v14, v54, v53);
    (*(v43 + 16))(v45, &v18[v15[5]], v44);
    v36 = *(v18 + 1);
    v44 = *v18;
    (*(v46 + 16))(v48, &v18[v15[6]], v47);
    (*(v49 + 16))(v50, &v18[v15[7]], v51);

    v37 = v55;
    sub_100042214();
    (*(v33 + 8))(v35, v34);
    sub_100031168(v56, type metadata accessor for ResolvedDomain);
    sub_100031168(v18, type metadata accessor for ResolvedDomain.Known);
    v38 = &enum case for PreliminaryInformation.NextStep.knownAccount(_:);
  }

  else
  {
    (*(v22 + 32))(v28, v32, v21);
    v39 = v54;
    sub_1000422E4();
    sub_1000422F4();
    (*(v22 + 16))(v26, v28, v21);
    v37 = v55;
    sub_1000423C4();
    (*(v52 + 8))(v39, v53);
    sub_100031168(v56, type metadata accessor for ResolvedDomain);
    (*(v22 + 8))(v28, v21);
    v38 = &enum case for PreliminaryInformation.NextStep.oauth(_:);
  }

  v40 = *v38;
  v41 = sub_100042314();
  return (*(*(v41 - 8) + 104))(v37, v40, v41);
}

uint64_t sub_10002F980(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = sub_100042934();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = sub_1000429A4();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = sub_100042CD4();
    v22 = sub_100042CD4();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *sub_10002FC54(uint64_t a1, uint64_t a2)
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

  sub_100003288(&qword_100054E10, &unk_100044C90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_10002FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_100041F84();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = type metadata accessor for CloudKitServer();
  v16[4] = &off_100051CC8;
  v16[0] = a1;
  swift_defaultActor_initialize();
  v10 = (a3 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem;
  *(a3 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem) = a2;
  type metadata accessor for Service();
  v15 = a2;
  sub_100041FD4();
  sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem);
  sub_100031058(&qword_1000548F8, type metadata accessor for Service);

  sub_100041D94();
  (*(v6 + 32))(a3 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id, v9, v14);
  sub_1000312B8(v16, a3 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService);
  v15 = *(a3 + v11);

  sub_100041D44();

  sub_100004BD8(v16);

  return a3;
}

uint64_t sub_10002FF04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002FF44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E968;

  return Service.checkIsAvailable()();
}

uint64_t sub_10002FFD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_100031330;

  return Service.validate(_:)(a3, v8);
}

uint64_t sub_100030188(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000F77C;

  return sub_10002DCF4(a1, v7, v6, a2);
}

uint64_t sub_10003023C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_100031330;

  return Service.resolve(_:)(a3, v8);
}

uint64_t sub_1000303EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_100031330;

  return Service.validate(_:)(a3, v8);
}

uint64_t sub_10003059C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F77C;

  return sub_10002F868(a1, v5);
}

uint64_t sub_100030650(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_100030800;

  return Service.resolve(_:)(a3, v8);
}

uint64_t sub_100030800()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100030978(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_100031330;

  return Service.validate(_:)(a3, v8);
}

uint64_t sub_100030B28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F77C;

  return sub_10002F8F4(a1, v5);
}

uint64_t sub_100030BDC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_100031330;

  return Service.resolve(_:)(a3, v8);
}

uint64_t sub_100030D8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000D628(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100030EAC(uint64_t a1)
{
  result = sub_100031058(&qword_1000548F8, type metadata accessor for Service);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100030F9C()
{
  result = sub_100041F84();
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

uint64_t sub_100031058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000310A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedDomain(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedDomain.Known(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000311C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100031210(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100031250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003288(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000312B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SimpleURLSessionNetworkAPI.__allocating_init(sessionDescription:configuration:baseURL:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v12 = sub_100041D04();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10 + v11, a4, v12);
  v14 = [objc_opt_self() sessionWithConfiguration:a3];
  *(v10 + 16) = v14;
  if (a2)
  {
    v15 = v14;
    v16 = sub_1000424E4();

    v14 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v14 setSessionDescription:v16];

  (*(v13 + 8))(a4, v12);
  return v10;
}

uint64_t SimpleURLSessionNetworkAPI.apiRequest<A>(resource:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = *(*(sub_100003288(&qword_100054958, &qword_100043920) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v6 = sub_100041D04();
  v4[30] = v6;
  v7 = *(v6 - 8);
  v4[31] = v7;
  v8 = *(v7 + 64) + 15;
  v4[32] = swift_task_alloc();
  v9 = sub_100041AD4();
  v4[33] = v9;
  v10 = *(v9 - 8);
  v4[34] = v10;
  v11 = *(v10 + 64) + 15;
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000315D0, 0, 0);
}

uint64_t sub_1000315D0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  sub_10000A744(*(v0 + 216), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 224) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 240));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000452C(*(v0 + 232));
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 232), *(v0 + 240));
  }

  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = *(v0 + 224);
  v15 = *(v0 + 208);
  v17 = *(v15 + 16);
  v16 = *(v15 + 32);
  *(v0 + 16) = *v15;
  *(v0 + 32) = v17;
  *(v0 + 48) = v16;
  v19 = *(v15 + 64);
  v18 = *(v15 + 80);
  v20 = *(v15 + 48);
  *(v0 + 112) = *(v15 + 96);
  *(v0 + 80) = v19;
  *(v0 + 96) = v18;
  *(v0 + 64) = v20;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v21 = type metadata accessor for DelegateHelper();
  v22 = objc_allocWithZone(v21);
  v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v23 = &v22[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v24 = *(v0 + 136);
  *v23 = *(v0 + 120);
  v23[1] = v24;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v22;
  *(v0 + 192) = v21;
  v25 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 288) = v25;
  v26 = *(v14 + 16);
  v27 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v28 = swift_task_alloc();
  *(v0 + 296) = v28;
  *v28 = v0;
  v28[1] = sub_1000244F8;
  v29 = *(v0 + 280);

  return NSURLSession.data(for:delegate:)(v29, v25);
}

uint64_t sub_100031828(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10001BD40(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_100041BD4();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100031954(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10001C078(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_100003288(&qword_100054DD8, "Z&");
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100031A8C(uint64_t result)
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

  result = sub_10001C5A0(result, v12, 1, v3);
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

  memcpy((v3 + 2 * v8 + 32), (v6 + 32), 2 * v2);

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

uint64_t SimpleURLSessionNetworkAPI.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v4 = sub_100041D04();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SimpleURLSessionNetworkAPI.init(sessionDescription:configuration:baseURL:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v9 = sub_100041D04();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, a4, v9);
  v11 = [objc_opt_self() sessionWithConfiguration:a3];
  *(v4 + 16) = v11;
  if (a2)
  {
    v12 = v11;
    v13 = sub_1000424E4();

    v11 = v12;
  }

  else
  {
    v13 = 0;
  }

  [v11 setSessionDescription:v13];

  (*(v10 + 8))(a4, v9);
  return v4;
}

uint64_t SimpleURLSessionNetworkAPI.deinit()
{
  v1 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v2 = sub_100041D04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SimpleURLSessionNetworkAPI.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v2 = sub_100041D04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100031E3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003288(&qword_100054958, &qword_100043920);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v63 = &v59 - v5;
  v6 = sub_100041D04();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request.makeURL(baseURL:)(v9);
  v60 = v9;
  sub_100041A84();
  v10 = *v1;
  v11 = *&aDelete_1[8 * v10];
  v12 = qword_100045CF0[v10];
  sub_100041A54();
  sub_10001DE88(v1[6], v1[7]);
  v64 = a1;
  sub_100041AB4();
  v59 = v1;
  v13 = v1[4];
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  v19 = 0xE600000000000000;
LABEL_22:
  if (v16)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v30 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v40 = sub_100042A54();
      if (!v40)
      {
        goto LABEL_65;
      }

LABEL_44:
      v41 = 0;
      v60 = v19 & 0xFFFFFFFFFFFFFF8;
      v61 = v19 & 0xC000000000000001;
      while (1)
      {
        if (v61)
        {
          v43 = sub_100042974();
        }

        else
        {
          if (v41 >= *(v60 + 16))
          {
            goto LABEL_63;
          }

          v43 = *(v19 + 8 * v41 + 32);
        }

        v44 = v43;
        v45 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_62;
        }

        v46 = v40;
        v47 = [v43 domain];
        sub_1000424F4();

        v67._countAndFlagsBits = 46;
        v67._object = 0xE100000000000000;
        v48 = sub_100042644(v67);

        v49 = [v44 domain];
        v50 = sub_1000424F4();
        v52 = v51;

        if (v48)
        {
          v68._countAndFlagsBits = v50;
          v68._object = v52;
          v53 = sub_100042654(v68);
        }

        else
        {
          if (v63 == v50 && v62 == v52)
          {

            v40 = v46;
            goto LABEL_46;
          }

          v53 = sub_100042BD4();
        }

        v54 = v53;

        v40 = v46;
        if ((v54 & 1) == 0)
        {

          goto LABEL_47;
        }

LABEL_46:
        sub_1000429B4();
        v42 = v65[2];
        sub_1000429E4();
        sub_1000429F4();
        sub_1000429C4();
LABEL_47:
        ++v41;
        if (v45 == v40)
        {
          goto LABEL_65;
        }
      }
    }

    if (v30 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v30);
    ++v18;
    if (v16)
    {
      v18 = v30;
LABEL_27:
      v31 = __clz(__rbit64(v16)) | (v18 << 6);
      v32 = *(*(v13 + 48) + v31);
      if (v32 <= 4)
      {
        v20 = 0x65696B6F6F43;
        if (v32 == 3)
        {
          v20 = 0x2D746E65746E6F43;
        }

        v21 = 0xEC00000065707954;
        if (v32 != 3)
        {
          v21 = 0xE600000000000000;
        }

        if (v32 == 2)
        {
          v20 = 0x2D746E65746E6F43;
          v21 = 0xEE006874676E654CLL;
        }

        v22 = 0x747065636341;
        if (*(*(v13 + 48) + v31))
        {
          v22 = 0x7A69726F68747541;
        }

        v23 = 0xED00006E6F697461;
        if (!*(*(v13 + 48) + v31))
        {
          v23 = 0xE600000000000000;
        }

        v24 = *(*(v13 + 48) + v31) <= 1u;
      }

      else
      {
        v20 = 0x65676E6152;
        if (v32 != 8)
        {
          v20 = 0x6B6F6F432D746553;
        }

        v21 = 0xE500000000000000;
        if (v32 != 8)
        {
          v21 = 0xEA00000000006569;
        }

        if (v32 == 7)
        {
          v20 = 0x616D67617250;
          v21 = 0xE600000000000000;
        }

        v22 = 1734431813;
        if (v32 != 5)
        {
          v22 = 0x6E6F697461636F4CLL;
        }

        v23 = 0xE400000000000000;
        if (v32 != 5)
        {
          v23 = 0xE800000000000000;
        }

        v24 = *(*(v13 + 48) + v31) <= 6u;
      }

      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = v20;
      }

      if (v24)
      {
        v26 = v23;
      }

      else
      {
        v26 = v21;
      }

      v16 &= v16 - 1;
      v27 = (*(v13 + 56) + 16 * v31);
      v28 = *v27;
      v29 = v27[1];

      v66.value._countAndFlagsBits = v28;
      v66.value._object = v29;
      v69._countAndFlagsBits = v25;
      v69._object = v26;
      sub_100041AC4(v66, v69);

      goto LABEL_22;
    }
  }

  v33 = v63;
  sub_100041A94();
  v35 = v61;
  v34 = v62;
  if ((*(v61 + 48))(v33, 1, v62))
  {
    return sub_10000452C(v33);
  }

  v37 = v60;
  (*(v35 + 16))(v60, v33, v34);
  sub_10000452C(v33);
  v63 = sub_100041CE4();
  v39 = v38;
  result = (*(v35 + 8))(v37, v34);
  v62 = v39;
  if (!v39)
  {
    return result;
  }

  v19 = v59[5];
  v65 = _swiftEmptyArrayStorage;
  if (v19 >> 62)
  {
    goto LABEL_64;
  }

  v40 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
    goto LABEL_44;
  }

LABEL_65:

  v55 = objc_opt_self();
  sub_1000165CC();
  isa = sub_1000426E4().super.isa;

  v57 = [v55 requestHeaderFieldsWithCookies:isa];

  v58 = sub_100042474();
  sub_100032844(v58);
}

uint64_t URLRequest.init(request:baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100031E3C(a3);
  sub_100005000(a1);
  v5 = sub_100041D04();
  v6 = *(*(v5 - 8) + 8);

  return v6(a2, v5);
}

uint64_t Request.makeURL(baseURL:)@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_100003288(&qword_100054958, &qword_100043920);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_100041D04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003288(&qword_100055330, &qword_100045C78);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - v13;
  v15 = sub_100041C24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[1];
  v21 = v1[2];
  sub_100041CC4();
  sub_100041C04();
  (*(v7 + 8))(v10, v6);
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v23 = sub_100041BE4();
    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      v24 = v23;
    }

    v28 = v24;
    v25 = v1[3];

    sub_100031828(v26);
    if (v28[2])
    {
    }

    sub_100041BF4();
    sub_100041C14();
    result = (*(v7 + 48))(v5, 1, v6);
    if (result != 1)
    {
      (*(v16 + 8))(v19, v15);

      return (*(v7 + 32))(v27, v5, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100032844(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    v19._countAndFlagsBits = v13;
    v19._object = v14;
    sub_100041AA4(v18, v19);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100032998(uint64_t a1, uint64_t a2, unsigned __int8 a3, void (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v4 = a3;
  v5 = 0xE600000000000000;
  if (a3 > 4u)
  {
    v13 = 0x616D67617250;
    v14 = 0xE500000000000000;
    v15 = 0x65676E6152;
    if (a3 != 8)
    {
      v15 = 0x6B6F6F432D746553;
      v14 = 0xEA00000000006569;
    }

    if (a3 != 7)
    {
      v13 = v15;
      v5 = v14;
    }

    v16 = 0xE400000000000000;
    v17 = 1734431813;
    if (a3 != 5)
    {
      v17 = 0x6E6F697461636F4CLL;
      v16 = 0xE800000000000000;
    }

    if (a3 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 6)
    {
      v12 = v16;
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v6 = 0x747065636341;
    v7 = 0xEE006874676E654CLL;
    v8 = 0x2D746E65746E6F43;
    v9 = 0xEC00000065707954;
    v10 = 0x2D746E65746E6F43;
    if (a3 != 3)
    {
      v10 = 0x65696B6F6F43;
      v9 = 0xE600000000000000;
    }

    if (a3 != 2)
    {
      v8 = v10;
      v7 = v9;
    }

    if (a3)
    {
      v6 = 0x7A69726F68747541;
      v5 = 0xED00006E6F697461;
    }

    if (a3 <= 1u)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    if (v4 <= 1)
    {
      v12 = v5;
    }

    else
    {
      v12 = v7;
    }
  }

  a4(a1, a2, v11, v12);
}

uint64_t URLRequest.setByteRange(_:)()
{
  v1._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1000425C4(v2);
  v3._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v3);

  v4.value._countAndFlagsBits = 0x3D7365747962;
  v5._countAndFlagsBits = 0x65676E6152;
  v4.value._object = 0xE600000000000000;
  v5._object = 0xE500000000000000;
  sub_100041AC4(v4, v5);
}

{
  v1._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1000425C4(v2);
  v3.value._countAndFlagsBits = 0x3D7365747962;
  v4._countAndFlagsBits = 0x65676E6152;
  v3.value._object = 0xE600000000000000;
  v4._object = 0xE500000000000000;
  sub_100041AC4(v3, v4);
}

void URLRequest.setByteRange(_:)(uint64_t a1, uint64_t a2)
{
  v3._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1000425C4(v4);
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v5._countAndFlagsBits = sub_100042BA4();
    sub_1000425C4(v5);

    v6.value._countAndFlagsBits = 0x3D7365747962;
    v7._countAndFlagsBits = 0x65676E6152;
    v6.value._object = 0xE600000000000000;
    v7._object = 0xE500000000000000;
    sub_100041AC4(v6, v7);
  }
}

uint64_t type metadata accessor for SimpleURLSessionNetworkAPI()
{
  result = qword_100055360;
  if (!qword_100055360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032DEC()
{
  result = sub_100041D04();
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

uint64_t sub_100032EA0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100042234();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000421C4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1000421F4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_100033020(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100042234();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000421C4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1000421F4();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000331AC()
{
  result = sub_100042234();
  if (v1 <= 0x3F)
  {
    result = sub_1000421C4();
    if (v2 <= 0x3F)
    {
      result = sub_1000421F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100033278(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000332B0()
{
  result = sub_1000423B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ResolvedDomain.Known(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100033324()
{
  v1 = type metadata accessor for ResolvedDomain.Known(0);
  v2 = *(*(v1 - 1) + 64);
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000423B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ResolvedDomain(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000310A0(v0, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100031104(v13, v4);
    sub_100042C64(1uLL);
    v14 = *v4;
    v15 = v4[1];
    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
    v16 = v1[5];
    sub_100042234();
    sub_100033C2C(&qword_100055540, &type metadata accessor for PasswordAccount.Known.Kind);
    sub_1000424A4();
    v17 = v1[6];
    sub_1000421C4();
    sub_100033C2C(&qword_100055548, &type metadata accessor for IncomingServer);
    sub_1000424A4();
    v18 = v1[7];
    sub_1000421F4();
    sub_100033C2C(&qword_100055550, &type metadata accessor for OutgoingServer);
    sub_1000424A4();
    return sub_1000340E0(v4, type metadata accessor for ResolvedDomain.Known);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_100042C64(0);
    sub_100033C2C(&qword_100055558, &type metadata accessor for OAuth.Kind);
    sub_1000424A4();
    return (*(v6 + 8))(v9, v5);
  }
}

Swift::Int sub_100033670()
{
  sub_100042C54();
  sub_100033324();
  return sub_100042C94();
}

Swift::Int sub_1000336B4()
{
  sub_100042C54();
  sub_100033324();
  return sub_100042C94();
}

Swift::Int sub_10003373C(int *a1)
{
  sub_100042C54();
  v3 = *v1;
  v4 = v1[1];
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  v5 = a1[5];
  sub_100042234();
  sub_100033C2C(&qword_100055540, &type metadata accessor for PasswordAccount.Known.Kind);
  sub_1000424A4();
  v6 = a1[6];
  sub_1000421C4();
  sub_100033C2C(&qword_100055548, &type metadata accessor for IncomingServer);
  sub_1000424A4();
  v7 = a1[7];
  sub_1000421F4();
  sub_100033C2C(&qword_100055550, &type metadata accessor for OutgoingServer);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_100033898(uint64_t a1, int *a2)
{
  v4 = *v2;
  v5 = v2[1];
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  v6 = a2[5];
  sub_100042234();
  sub_100033C2C(&qword_100055540, &type metadata accessor for PasswordAccount.Known.Kind);
  sub_1000424A4();
  v7 = a2[6];
  sub_1000421C4();
  sub_100033C2C(&qword_100055548, &type metadata accessor for IncomingServer);
  sub_1000424A4();
  v8 = a2[7];
  sub_1000421F4();
  sub_100033C2C(&qword_100055550, &type metadata accessor for OutgoingServer);
  return sub_1000424A4();
}

Swift::Int sub_1000339E0(uint64_t a1, int *a2)
{
  sub_100042C54();
  v4 = *v2;
  v5 = v2[1];
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  v6 = a2[5];
  sub_100042234();
  sub_100033C2C(&qword_100055540, &type metadata accessor for PasswordAccount.Known.Kind);
  sub_1000424A4();
  v7 = a2[6];
  sub_1000421C4();
  sub_100033C2C(&qword_100055548, &type metadata accessor for IncomingServer);
  sub_1000424A4();
  v8 = a2[7];
  sub_1000421F4();
  sub_100033C2C(&qword_100055550, &type metadata accessor for OutgoingServer);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_100033B38(void *a1, void *a2, int *a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_100042BD4() & 1) == 0)
  {
    return 0;
  }

  v5 = a3[5];
  if ((sub_100042224() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[6];
  if ((sub_1000421A4() & 1) == 0)
  {
    return 0;
  }

  v7 = a3[7];

  return sub_1000421D4();
}

uint64_t sub_100033C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100033C74(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v32 = type metadata accessor for ResolvedDomain.Known(0);
  v3 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000423B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResolvedDomain(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v18 = sub_100003288(&qword_100055560, &qword_100045E18);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v32 - v21;
  v23 = *(v20 + 56);
  sub_1000310A0(a1, &v32 - v21);
  sub_1000310A0(v33, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000310A0(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v10, &v22[v23], v6);
      v29 = sub_1000423A4();
      v30 = *(v7 + 8);
      v30(v10, v6);
      v30(v17, v6);
      sub_1000340E0(v22, type metadata accessor for ResolvedDomain);
      return v29 & 1;
    }

    (*(v7 + 8))(v17, v6);
    goto LABEL_15;
  }

  sub_1000310A0(v22, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000340E0(v15, type metadata accessor for ResolvedDomain.Known);
LABEL_15:
    sub_100034078(v22);
LABEL_18:
    v29 = 0;
    return v29 & 1;
  }

  sub_100031104(&v22[v23], v5);
  v24 = *v15 == *v5 && v15[1] == v5[1];
  v25 = v32;
  if (!v24 && (sub_100042BD4() & 1) == 0 || (v26 = v25[5], (sub_100042224() & 1) == 0) || (v27 = v25[6], (sub_1000421A4() & 1) == 0) || (v28 = v25[7], (sub_1000421D4() & 1) == 0))
  {
    sub_1000340E0(v5, type metadata accessor for ResolvedDomain.Known);
    sub_1000340E0(v15, type metadata accessor for ResolvedDomain.Known);
    sub_1000340E0(v22, type metadata accessor for ResolvedDomain);
    goto LABEL_18;
  }

  sub_1000340E0(v5, type metadata accessor for ResolvedDomain.Known);
  sub_1000340E0(v15, type metadata accessor for ResolvedDomain.Known);
  sub_1000340E0(v22, type metadata accessor for ResolvedDomain);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_100034078(uint64_t a1)
{
  v2 = sub_100003288(&qword_100055560, &qword_100045E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000340E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100034150(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 56) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 48) + v12);

    v17 = sub_10001F724(v16);
    if ((v18 & 1) == 0)
    {

      return 0;
    }

    v19 = (*(a2 + 56) + 16 * v17);
    if (*v19 == v15 && v19[1] == v14)
    {
    }

    else
    {
      v21 = sub_100042BD4();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000342B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100042114();
  v85 = *(v4 - 8);
  v5 = *(v85 + 64);
  v6 = __chkstk_darwin(v4);
  v84 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v64 - v8;
  v79 = sub_1000423E4();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v79);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = &v64 - v14;
  v15 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  result = __chkstk_darwin(v17);
  v77 = &v64 - v20;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = v19;
  v21 = 0;
  v22 = *(a1 + 64);
  v65 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v78 = (v10 + 32);
  v68 = v10 + 16;
  v69 = (v10 + 8);
  v80 = (v85 + 8);
  v81 = v85 + 16;
  v66 = v26;
  v67 = v10;
  v70 = a2;
  v72 = a1;
  while (v25)
  {
    v75 = (v25 - 1) & v25;
    v27 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_17:
    v32 = v74;
    v33 = v79;
    (*(v10 + 16))(v74, *(a1 + 48) + *(v10 + 72) * v27, v79);
    v34 = *(a1 + 56);
    v35 = v10;
    v36 = *(v34 + 8 * v27);
    v37 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    v38 = *(v37 + 48);
    v39 = *(v35 + 32);
    v40 = v71;
    v39(v71, v32, v33);
    *(v40 + v38) = v36;
    (*(*(v37 - 8) + 56))(v40, 0, 1, v37);

LABEL_18:
    v41 = v77;
    sub_100022C2C(v40, v77);
    v42 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    v43 = 1;
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      return v43;
    }

    v44 = *(v42 + 48);
    v45 = v79;
    v46 = v76;
    (*v78)(v76, v41, v79);
    v47 = *(v41 + v44);
    v48 = v70;
    v49 = sub_10001F7AC(v46);
    v51 = v50;
    (*v69)(v46, v45);
    if ((v51 & 1) == 0 || (v73 = v21, v86 = *(*(v48 + 56) + 8 * v49), v52 = *(v86 + 16), v52 != *(v47 + 16)))
    {
LABEL_32:

      return 0;
    }

    a1 = v72;
    if (v52 && v86 != v47)
    {
      v53 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v82 = v47 + v53;
      v83 = v86 + v53;

      v54 = 0;
      while (v54 < *(v86 + 16))
      {
        v55 = *(v85 + 72) * v54;
        v56 = *(v85 + 16);
        result = v56(v9, v83 + v55, v4);
        if (v54 >= *(v47 + 16))
        {
          goto LABEL_37;
        }

        v57 = v47;
        v58 = v9;
        v59 = v84;
        v56(v84, v82 + v55, v4);
        sub_100034F64();
        v60 = sub_1000424D4();
        v61 = *v80;
        v62 = v59;
        v9 = v58;
        (*v80)(v62, v4);
        result = (v61)(v58, v4);
        if ((v60 & 1) == 0)
        {

          goto LABEL_32;
        }

        ++v54;
        v47 = v57;
        if (v52 == v54)
        {

          a1 = v72;
          goto LABEL_6;
        }
      }

      goto LABEL_36;
    }

LABEL_6:

    v26 = v66;
    v10 = v67;
    v25 = v75;
    v21 = v73;
  }

  if (v26 <= v21 + 1)
  {
    v28 = v21 + 1;
  }

  else
  {
    v28 = v26;
  }

  v29 = v28 - 1;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      v63 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
      v40 = v71;
      (*(*(v63 - 8) + 56))(v71, 1, 1, v63);
      v75 = 0;
      v21 = v29;
      goto LABEL_18;
    }

    v31 = *(v65 + 8 * v30);
    ++v21;
    if (v31)
    {
      v75 = (v31 - 1) & v31;
      v27 = __clz(__rbit64(v31)) | (v30 << 6);
      v21 = v30;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_100034924(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_10001F844(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_100042BD4();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100034ACC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  sub_1000100C8(a1, &v11 - v7);
  *a2 = *&v8[*(v5 + 56)];
  a2[1] = sub_100034BB0;
  a2[2] = 0;
  v9 = sub_1000423E4();
  return (*(*(v9 - 8) + 8))(v8, v9);
}

uint64_t sub_100034BB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100042114();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_100042564();
  *a2 = result;
  a2[1] = v9;
  return result;
}

Swift::Int sub_100034C7C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100042C54();
  sub_1000218E0(v4, v1);
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v4, v2);
  return sub_100042C94();
}

void sub_100034CD0(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1000218E0(a1, v3);

  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(a1, v4);
}

Swift::Int sub_100034D10()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100042C54();
  sub_1000218E0(v4, v1);
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v4, v2);
  return sub_100042C94();
}

uint64_t sub_100034D60(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1000342B0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _s27AccountsUISupportServiceLib9SuggesterV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3);
}

unint64_t sub_100034DC0()
{
  result = qword_100055568;
  if (!qword_100055568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055568);
  }

  return result;
}

BOOL sub_100034E30(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_100042114() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_100034F64();
  }

  while ((sub_1000424D4() & 1) == 0);
  return v4 != v5;
}

unint64_t sub_100034F64()
{
  result = qword_100055570;
  if (!qword_100055570)
  {
    sub_100042114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055570);
  }

  return result;
}

uint64_t sub_100034FD8()
{
  v0 = sub_100042414();
  sub_100001D84(v0, qword_100055580);
  sub_100001DE8(v0, qword_100055580);
  return sub_100042404();
}

uint64_t sub_100035048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_100042BD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_100042BD4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_10003514C(char a1)
{
  sub_100042C54();
  sub_100042C64(a1 & 1);
  return sub_100042C94();
}

uint64_t sub_100035194(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

BOOL sub_1000351C4(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  return sub_100035114(*a1, *a2);
}

Swift::Int sub_100035208(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_10003514C(*v1);
}

void sub_100035224(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  sub_100035124(a1, *v2);
}

Swift::Int sub_100035260(uint64_t a1, void *a2)
{
  sub_100042C54();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  sub_100035124(v12, *v2);
  return sub_100042C94();
}

uint64_t sub_1000352B8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_100035194(*v1);
}

uint64_t sub_1000352D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  result = sub_100035048(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_10003531C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  result = sub_1000383A8();
  *a2 = result;
  return result;
}

uint64_t sub_100035358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000353AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100035400(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_100042BD4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000354A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000354F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100035548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  result = sub_100035400(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_100035594@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000355DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100035630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t CodableResult.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v68 = a2[2];
  v4 = v68;
  v69 = v3;
  v70 = v5;
  v71 = v6;
  v10 = v5;
  v65 = a1;
  v66 = v5;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v57 = type metadata accessor for CodableResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_100042B84();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  v13 = __chkstk_darwin(v11);
  v56 = &v46 - v14;
  v58 = *(v3 - 8);
  v15 = *(v58 + 64);
  __chkstk_darwin(v13);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v4;
  v69 = v3;
  v70 = v10;
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v17 = type metadata accessor for CodableResult.SuccessCodingKeys();
  v18 = swift_getWitnessTable();
  v50 = v17;
  v48 = v18;
  v53 = sub_100042B84();
  v52 = *(v53 - 8);
  v19 = *(v52 + 64);
  v20 = __chkstk_darwin(v53);
  v49 = &v46 - v21;
  v51 = *(v4 - 8);
  v22 = *(v51 + 64);
  v23 = __chkstk_darwin(v20);
  v47 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 - 1);
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v6;
  v64 = v4;
  v68 = v4;
  v69 = v3;
  v61 = v3;
  v62 = v8;
  v70 = v66;
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  type metadata accessor for CodableResult.CodingKeys();
  swift_getWitnessTable();
  v29 = sub_100042B84();
  v66 = *(v29 - 8);
  v30 = *(v66 + 64);
  __chkstk_darwin(v29);
  v32 = &v46 - v31;
  v33 = v65[4];
  sub_100004C24(v65, v65[3]);
  sub_100042CC4();
  (*(v25 + 16))(v28, v67, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v58;
    v35 = v54;
    v36 = v61;
    (*(v58 + 32))(v54, v28, v61);
    LOBYTE(v68) = 1;
    v37 = v56;
    v38 = v29;
    sub_100042B34();
    v39 = v60;
    sub_100042B74();
    (*(v59 + 8))(v37, v39);
    (*(v34 + 8))(v35, v36);
    v29 = v38;
  }

  else
  {
    v40 = v51;
    v41 = v47;
    v42 = v64;
    (*(v51 + 32))(v47, v28, v64);
    LOBYTE(v68) = 0;
    v43 = v49;
    sub_100042B34();
    v44 = v53;
    sub_100042B74();
    (*(v52 + 8))(v43, v44);
    (*(v40 + 8))(v41, v42);
  }

  return (*(v66 + 8))(v32, v29);
}

uint64_t CodableResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v93 = a1;
  v79 = a9;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v76 = type metadata accessor for CodableResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v68 = sub_100042B24();
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  __chkstk_darwin(v68);
  v77 = &v62 - v17;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v18 = type metadata accessor for CodableResult.SuccessCodingKeys();
  v19 = swift_getWitnessTable();
  v73 = v18;
  v72 = v19;
  v66 = sub_100042B24();
  v65 = *(v66 - 8);
  v20 = *(v65 + 64);
  __chkstk_darwin(v66);
  v74 = &v62 - v21;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  type metadata accessor for CodableResult.CodingKeys();
  v84 = swift_getWitnessTable();
  v80 = sub_100042B24();
  v83 = *(v80 - 8);
  v22 = *(v83 + 64);
  __chkstk_darwin(v80);
  v24 = &v62 - v23;
  v69 = a2;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  v82 = a3;
  v71 = a4;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v70 = a6;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v25 = type metadata accessor for CodableResult();
  v78 = *(v25 - 8);
  v26 = *(v78 + 64);
  v27 = __chkstk_darwin(v25);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v62 - v31;
  __chkstk_darwin(v30);
  v34 = &v62 - v33;
  v35 = v93[4];
  sub_100004C24(v93, v93[3]);
  v81 = v24;
  v36 = v85;
  sub_100042CB4();
  if (!v36)
  {
    v64 = v29;
    v84 = v32;
    v63 = v34;
    v85 = v25;
    v37 = v81;
    v38 = v80;
    *&v86 = sub_100042B14();
    sub_100042714();
    swift_getWitnessTable();
    *&v88 = sub_1000428C4();
    *(&v88 + 1) = v39;
    *&v89 = v40;
    *(&v89 + 1) = v41;
    sub_1000428B4();
    swift_getWitnessTable();
    sub_100042794();
    v42 = v86;
    if (v86 == 2 || (v62 = v88, v86 = v88, v87 = v89, (sub_1000427A4() & 1) == 0))
    {
      v51 = sub_100042994();
      swift_allocError();
      v53 = v52;
      v54 = *(sub_100003288(qword_100055598, &qword_100045ED0) + 48);
      *v53 = v85;
      sub_100042AC4();
      sub_100042984();
      (*(*(v51 - 8) + 104))(v53, enum case for DecodingError.typeMismatch(_:), v51);
      swift_willThrow();
      (*(v83 + 8))(v37, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v86) = 1;
        v43 = v77;
        v44 = v38;
        sub_100042AB4();
        v46 = v78;
        v45 = v79;
        v47 = v83;
        v48 = v68;
        sub_100042B04();
        (*(v67 + 8))(v43, v48);
        (*(v47 + 8))(v37, v44);
        swift_unknownObjectRelease();
        v49 = v64;
      }

      else
      {
        LOBYTE(v86) = 0;
        v55 = v74;
        v56 = v38;
        sub_100042AB4();
        v46 = v78;
        v45 = v79;
        v57 = v83;
        v58 = v66;
        sub_100042B04();
        (*(v65 + 8))(v55, v58);
        (*(v57 + 8))(v37, v56);
        swift_unknownObjectRelease();
        v49 = v84;
      }

      v50 = v85;
      swift_storeEnumTagMultiPayload();
      v60 = *(v46 + 32);
      v61 = v63;
      v60(v63, v49, v50);
      v60(v45, v61, v50);
    }
  }

  return sub_100004BD8(v93);
}

uint64_t static CodableResult<>.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v52 = a1;
  v53 = a2;
  v50 = *(a4 - 8);
  v8 = *(v50 + 64);
  v9 = __chkstk_darwin(a1);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v9);
  v45 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  v55 = v15;
  v51 = v15;
  v56 = v16;
  v57 = v17;
  v58 = v18;
  v59 = v19;
  v60 = v20;
  v21 = type metadata accessor for CodableResult();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v45 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v30 = *(v48 + 64);
  v31 = __chkstk_darwin(TupleTypeMetadata2);
  v33 = &v45 - v32;
  v34 = *(v31 + 48);
  v35 = *(v22 + 16);
  v35(&v45 - v32, v52, v21);
  v35(&v33[v34], v53, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35(v26, v33, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v50;
      v36 = v51;
      v38 = v46;
      (*(v50 + 32))(v46, &v33[v34], v51);
      v39 = sub_1000424D4();
      v40 = *(v37 + 8);
      v40(v38, v36);
      v40(v26, v36);
      goto LABEL_10;
    }

    (*(v50 + 8))(v26, v51);
LABEL_7:
    v39 = 0;
    v22 = v48;
    v21 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v35(v28, v33, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v49 + 8))(v28, a3);
    goto LABEL_7;
  }

  v41 = v49;
  v42 = v45;
  (*(v49 + 32))(v45, &v33[v34], a3);
  v39 = sub_1000424D4();
  v43 = *(v41 + 8);
  v43(v42, a3);
  v43(v28, a3);
LABEL_10:
  (*(v22 + 8))(v33, v21);
  return v39 & 1;
}

uint64_t sub_1000369A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[6];
  v7 = *(a4 - 16);
  v8 = a3[8];
  v6 = a3[7];
  return static CodableResult<>.__derived_enum_equals(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], *(a4 - 8)) & 1;
}

uint64_t _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a1;
  v8[10] = a5;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a8;
  v8[7] = v23;
  v8[8] = v24;
  v11 = type metadata accessor for CodableResult();
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v8[13] = v14;
  v15 = *(a5 - 8);
  v8[14] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v8[15] = v17;
  v8[16] = swift_task_alloc();
  v21 = (a2 + *a2);
  v18 = a2[1];
  v19 = swift_task_alloc();
  v8[17] = v19;
  *v19 = v8;
  v19[1] = sub_100036BD8;

  return v21(v14, v17);
}

uint64_t sub_100036BD8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100036D9C;
  }

  else
  {
    v3 = sub_100036CE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100036CE8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100036D9C()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[9];
  v4 = *(v0[14] + 32);
  v4(v1, v0[15], v2);
  v4(v3, v1, v2);
  swift_storeEnumTagMultiPayload();
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t _s20AccountsUISupportXPC13CodableResultO3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v14);
  }

  (*(v7 + 32))(v11, v14, v6);
  (*(v7 + 16))(a2, v11, v6);
  v16 = a1[8];
  swift_willThrowTypedImpl();
  return (*(v7 + 8))(v11, v6);
}

uint64_t _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v29;
  v8[14] = a1;
  v8[15] = a5;
  v15 = *(a5 - 8);
  v8[18] = v15;
  v16 = *(v15 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v17 = *(a8 + 8);
  v8[23] = v17;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = v27;
  v8[7] = v28;
  v8[8] = v17;
  v18 = type metadata accessor for CodableResult();
  v8[24] = v18;
  v19 = *(v18 - 8);
  v8[25] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v8[26] = v21;
  v25 = (a2 + *a2);
  v22 = a2[1];
  v23 = swift_task_alloc();
  v8[27] = v23;
  *v23 = v8;
  v23[1] = sub_10003729C;

  return v25(v21);
}

uint64_t sub_10003729C()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1000377C0;
  }

  else
  {
    v3 = sub_1000373B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000373B0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  _s20AccountsUISupportXPC13CodableResultO3getxyq_YKF(*(v0 + 192), *(v0 + 176), *(v0 + 112));
  v3 = *(v0 + 200);
  if (v1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 120);
    (*(v3 + 8))(*(v0 + 208), *(v0 + 192));
    v9 = *(v7 + 32);
    v9(v6, v4, v8);
    v10 = sub_100042BB4();
    if (v10)
    {
      v11 = v10;
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 120));
    }

    else
    {
      v18 = *(v0 + 184);
      v19 = *(v0 + 152);
      v20 = *(v0 + 120);
      v11 = swift_allocError();
      v9(v21, v19, v20);
    }

    v22 = *(v0 + 168);
    v23 = *(v0 + 120);
    *(v0 + 96) = v11;
    swift_errorRetain();
    sub_100003288(&qword_1000550B0, &unk_100045550);
    if (swift_dynamicCast())
    {
      v24 = *(v0 + 184);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 136);
      v28 = *(v0 + 144);
      v29 = *(v0 + 120);

      (*(v28 + 32))(v26, v25, v29);
      (*(v28 + 16))(v27, v26, v29);
      swift_willThrowTypedImpl();
      (*(v28 + 8))(v26, v29);
      v30 = *(v0 + 96);
    }

    else
    {
      v31 = *(v0 + 96);

      if (qword_100055578 != -1)
      {
        swift_once();
      }

      v32 = sub_100042414();
      sub_100001DE8(v32, qword_100055580);
      swift_errorRetain();
      v33 = sub_1000423F4();
      v34 = sub_1000427C4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&_mh_execute_header, v33, v34, "XPC failure: %@", v35, 0xCu);
        sub_100022824(v36);
      }

      v38 = *(v0 + 184);
      v40 = *(v0 + 128);
      v39 = *(v0 + 136);
      v41 = *(v0 + 120);

      swift_getErrorValue();
      v42 = *(v0 + 72);
      v43 = *(v0 + 80);
      sub_100042BC4();
      sub_100042194();

      swift_willThrowTypedImpl();
    }

    v44 = *(v0 + 208);
    v45 = *(v0 + 168);
    v46 = *(v0 + 176);
    v48 = *(v0 + 152);
    v47 = *(v0 + 160);

    v17 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 208);
    (*(v3 + 8))();

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1000377C0()
{
  v0[12] = v0[28];
  v1 = v0[21];
  v2 = v0[15];
  swift_errorRetain();
  sub_100003288(&qword_1000550B0, &unk_100045550);
  if (swift_dynamicCast())
  {
    v3 = v0[23];
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[15];

    (*(v7 + 32))(v5, v4, v8);
    (*(v7 + 16))(v6, v5, v8);
    swift_willThrowTypedImpl();
    (*(v7 + 8))(v5, v8);
    v9 = v0[12];
  }

  else
  {
    v10 = v0[12];

    if (qword_100055578 != -1)
    {
      swift_once();
    }

    v11 = sub_100042414();
    sub_100001DE8(v11, qword_100055580);
    swift_errorRetain();
    v12 = sub_1000423F4();
    v13 = sub_1000427C4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "XPC failure: %@", v14, 0xCu);
      sub_100022824(v15);
    }

    v17 = v0[23];
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[15];

    swift_getErrorValue();
    v21 = v0[9];
    v22 = v0[10];
    sub_100042BC4();
    sub_100042194();

    swift_willThrowTypedImpl();
  }

  v23 = v0[26];
  v24 = v0[21];
  v25 = v0[22];
  v27 = v0[19];
  v26 = v0[20];

  v28 = v0[1];

  return v28();
}

uint64_t static CodableResult<>.logAndIgnoreErrors(closure:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_100037BC0;

  return v9(a1);
}

uint64_t sub_100037BC0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100037D60;
  }

  else
  {
    v3 = sub_100037CD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100037CD4()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100037D60()
{
  if (qword_100055578 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_100042414();
  sub_100001DE8(v2, qword_100055580);
  swift_errorRetain();
  v3 = sub_1000423F4();
  v4 = sub_1000427C4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "XPC failure: %@", v7, 0xCu);
    sub_100022824(v8);
  }

  else
  {
  }

  (*(*(v0[3] - 8) + 56))(v0[2], 1, 1);
  v10 = v0[1];

  return v10();
}

uint64_t sub_100037F30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100037FAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1000380D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
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

uint64_t $DistributedService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v4 = sub_100041F84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static $DistributedService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for $DistributedService();
  sub_100041FD4();
  sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
  result = sub_100041D84();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
    v8 = sub_100041F84();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t type metadata accessor for $DistributedService()
{
  result = qword_1000557E8;
  if (!qword_1000557E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t $DistributedService.deinit()
{
  v1 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v2 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem;
  sub_100041FD4();
  sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);
  sub_100041DA4();
  v3 = sub_100041F84();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedService.__deallocating_deinit()
{
  v1 = v0;
  is_remote = swift_distributed_actor_is_remote();
  v3 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  if (is_remote)
  {
    v4 = sub_100041F84();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
    v5 = (v0 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
  }

  else
  {
    v5 = (v0 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);
    sub_100041DA4();
    v6 = sub_100041F84();
    (*(*(v6 - 8) + 8))(v1 + v3, v6);
  }

  v7 = *v5;

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v1);
}

Swift::Int $DistributedService.hashValue.getter()
{
  sub_100042C54();
  type metadata accessor for $DistributedService();
  sub_1000419EC(&qword_1000557A8, type metadata accessor for $DistributedService);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t $DistributedService.__allocating_init(actorSystem:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  $DistributedService.init(actorSystem:)(a1);
  return v5;
}

uint64_t $DistributedService.init(actorSystem:)(uint64_t a1)
{
  v9 = sub_100041F84();
  v3 = *(v9 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v9);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem;
  *(v1 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = a1;
  type metadata accessor for $DistributedService();
  v10 = a1;
  sub_100041FD4();
  sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);

  sub_100041D94();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id, v6, v9);
  v10 = *(v1 + v7);

  sub_100041D44();

  return v1;
}

uint64_t $DistributedService.unownedExecutor.getter()
{
  if ((sub_100041E74() & 1) == 0)
  {
    type metadata accessor for $DistributedService();
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
    return sub_100041D34();
  }

  return v0;
}

uint64_t sub_100038B78()
{
  if ((sub_100041E74() & 1) == 0)
  {
    type metadata accessor for $DistributedService();
    return sub_100041D34();
  }

  return v0;
}

uint64_t sub_100038BCC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for $DistributedService();
  sub_100041FD4();
  sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);
  result = sub_100041D84();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
    v8 = sub_100041F84();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = v4;

    return v6;
  }

  return result;
}

uint64_t DistributedService<>.checkIsAvailable()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = sub_100041E24();

  return _swift_task_switch(sub_100038D88, v4, v3);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_100041E84();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  v3[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10003971C, 0, 0);
}

uint64_t sub_100038DA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E968;

  return sub_100038E44();
}

uint64_t sub_100038E44()
{
  v1[3] = v0;
  v2 = sub_100041E84();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_100041F44();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100038F60, 0, 0);
}

uint64_t sub_100038F60()
{
  v1 = v0[3];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = *(v0[3] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[10] = v4;
    v0[2] = v4;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);

    sub_100041D74();
    v5 = type metadata accessor for $DistributedService();
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    v6 = v0[9];
    v7 = v0[7];
    v8 = sub_100003288(&qword_1000550B0, &unk_100045550);
    sub_100041DE4();
    v9 = v0[9];
    v10 = v0[7];
    sub_100041DC4();
    v12 = v0[6];
    sub_100041E94();
    v13 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)[1];
    v14 = swift_task_alloc();
    v0[11] = v14;
    v15 = sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
    *v14 = v0;
    v14[1] = sub_10003929C;
    v16 = v0[9];
    v17 = v0[6];
    v18 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v18, v17, v16, v8, v5, v8, v15, &protocol self-conformance witness table for Error);
  }

  else
  {
    v11 = v0[3];

    return _swift_task_switch(sub_100038D88, v11, 0);
  }
}

uint64_t sub_10003929C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100039470;
  }

  else
  {
    v3 = sub_1000393B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000393B0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100039470()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003971C()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[15];
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[8];
    v8 = v0[4];
    v9 = v0[2];
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    v10 = v0[12];
    v11 = v0[10];
    v12 = sub_100003288(&qword_1000550B0, &unk_100045550);
    sub_100041DE4();
    v13 = v0[12];
    v14 = v0[10];
    sub_100041DC4();
    v21 = v0[7];
    sub_100041E94();
    v22 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)[1];
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_100039A74;
    v24 = v0[15];
    v25 = v0[12];
    v26 = v0[8];
    v27 = v0[7];
    v28 = v0[4];
    v29 = v0[2];
    v33 = v0[13];
    v34 = v0[9];

    return dispatch thunk of DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v28, v27, v25, v12, v29, v12, v26, &protocol self-conformance witness table for Error);
  }

  else
  {
    v30 = (v0[3] + 16);
    v31 = (*v30 + **v30);
    v15 = (*v30)[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_100039C68;
    v17 = v0[3];
    v18 = v0[4];
    v19 = v0[2];

    return v31(v19, v17);
  }
}

uint64_t sub_100039A74()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100039DB8;
  }

  else
  {
    v3 = sub_100039B88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100039B88()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100039C68()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v8 = *v0;

  v3 = v1[15];
  v4 = v1[12];
  v5 = v1[7];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100039DB8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t DistributedService<>.validate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v6 = sub_100041E24();

  return _swift_task_switch(sub_100041A38, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_100042394();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003A970, 0, 0);
}

{
  v4 = *(a4 + 8);
  v6 = sub_100041E24();

  return _swift_task_switch(sub_10003BD20, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_100042264();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = sub_100003288(&qword_100055128, &unk_100045710);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003C688, 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_100042294();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = sub_100003288(&qword_100055190, &unk_100045860);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003EA00, 0, 0);
}

uint64_t sub_100039F1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_100039FD8(a1, a2);
}

uint64_t sub_100039FD8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_100042394();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_100041F44();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003A1BC, 0, 0);
}

uint64_t sub_10003A1BC()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);

    sub_100041D74();
    v5 = type metadata accessor for $DistributedService();
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_100042384();
    sub_100041DF4();
    v12 = v0[17];
    v13 = v0[15];
    sub_100041DC4();
    v15 = v0[8];
    sub_100041E94();
    v16 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_10003A59C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v21, v20, v19, v18, &type metadata for Never, v11, v5, &type metadata for Never);
  }

  else
  {
    v14 = v0[5];

    return _swift_task_switch(sub_100041A38, v14, 0);
  }
}

uint64_t sub_10003A59C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100041A48;
  }

  else
  {
    v3 = sub_100041A40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003A970()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_100042384();
    sub_100041DF4();
    v24 = v0[20];
    v25 = v0[18];
    sub_100041DC4();
    v26 = v0[9];
    sub_100041E94();
    v27 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_10003AD90;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v39 = v0[21];
    v40 = v0[17];
    v38 = v0[16];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v34, v32, v31, v30, &type metadata for Never, v23, v33, &type metadata for Never);
  }

  else
  {
    v35 = (v0[5] + 32);
    v36 = (*v35 + **v35);
    v10 = (*v35)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_100041A50;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v36(v16, v14, v15, v12);
  }
}

uint64_t sub_10003AD90()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_100041A34;
  }

  else
  {
    v3 = sub_100041A4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t DistributedService<>.resolve(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v6 = sub_100041E24();

  return _swift_task_switch(sub_100041A3C, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_100042394();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003B880, 0, 0);
}

{
  v4 = *(a4 + 8);
  v6 = sub_100041E24();

  return _swift_task_switch(sub_10003CB24, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_100042264();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = sub_100003288(&qword_100055128, &unk_100045710);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003D7A0, 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_100042294();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = sub_100003288(&qword_100055190, &unk_100045860);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003F77C, 0, 0);
}

uint64_t sub_10003AF34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003AFF0(a1, a2);
}

uint64_t sub_10003AFF0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_100042394();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_100041F44();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003B1D4, 0, 0);
}

uint64_t sub_10003B1D4()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);

    sub_100041D74();
    v5 = type metadata accessor for $DistributedService();
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_100003288(&qword_100055110, &qword_100045668);
    sub_100041DF4();
    v12 = v0[17];
    v13 = v0[15];
    sub_100041DC4();
    v15 = v0[8];
    sub_100041E94();
    v16 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_10003A59C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v21, v20, v19, v18, &type metadata for Never, v11, v5, &type metadata for Never);
  }

  else
  {
    v14 = v0[5];

    return _swift_task_switch(sub_100041A3C, v14, 0);
  }
}

uint64_t sub_10003B880()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_100003288(&qword_100055110, &qword_100045668);
    sub_100041DF4();
    v24 = v0[20];
    v25 = v0[18];
    sub_100041DC4();
    v26 = v0[9];
    sub_100041E94();
    v27 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_10003AD90;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v39 = v0[21];
    v40 = v0[17];
    v38 = v0[16];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v34, v32, v31, v30, &type metadata for Never, v23, v33, &type metadata for Never);
  }

  else
  {
    v35 = (v0[5] + 48);
    v36 = (*v35 + **v35);
    v10 = (*v35)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_100041A50;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v36(v16, v14, v15, v12);
  }
}

uint64_t sub_10003BD40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003BDFC(a1, a2);
}

uint64_t sub_10003BDFC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_100042264();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_100003288(&qword_100055128, &unk_100045710);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_100041F44();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003BFE0, 0, 0);
}

uint64_t sub_10003BFE0()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);

    sub_100041D74();
    v5 = type metadata accessor for $DistributedService();
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_100042254();
    sub_100041DF4();
    v12 = v0[17];
    v13 = v0[15];
    sub_100041DC4();
    v15 = v0[8];
    sub_100041E94();
    v16 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_10003A59C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v21, v20, v19, v18, &type metadata for Never, v11, v5, &type metadata for Never);
  }

  else
  {
    v14 = v0[5];

    return _swift_task_switch(sub_10003BD20, v14, 0);
  }
}

uint64_t sub_10003C688()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_100042254();
    sub_100041DF4();
    v24 = v0[20];
    v25 = v0[18];
    sub_100041DC4();
    v26 = v0[9];
    sub_100041E94();
    v27 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_10003AD90;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v39 = v0[21];
    v40 = v0[17];
    v38 = v0[16];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v34, v32, v31, v30, &type metadata for Never, v23, v33, &type metadata for Never);
  }

  else
  {
    v35 = (v0[5] + 64);
    v36 = (*v35 + **v35);
    v10 = (*v35)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_100041A50;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v36(v16, v14, v15, v12);
  }
}

uint64_t sub_10003CB44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003CC00(a1, a2);
}

uint64_t sub_10003CC00(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_100042264();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_100003288(&qword_100055128, &unk_100045710);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_100041F44();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003CDE4, 0, 0);
}

uint64_t sub_10003CDE4()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);

    sub_100041D74();
    v5 = type metadata accessor for $DistributedService();
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_100003288(&qword_100055178, &qword_1000457B8);
    sub_100041DF4();
    v12 = v0[17];
    v13 = v0[15];
    sub_100041DC4();
    v15 = v0[8];
    sub_100041E94();
    v16 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_10003D1D8;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v21, v20, v19, v18, &type metadata for Never, v11, v5, &type metadata for Never);
  }

  else
  {
    v14 = v0[5];

    return _swift_task_switch(sub_10003CB24, v14, 0);
  }
}

uint64_t sub_10003D1D8()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_10003D3EC;
  }

  else
  {
    v3 = sub_10003D2EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003D2EC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003D3EC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003D7A0()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_100003288(&qword_100055178, &qword_1000457B8);
    sub_100041DF4();
    v24 = v0[20];
    v25 = v0[18];
    sub_100041DC4();
    v26 = v0[9];
    sub_100041E94();
    v27 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_10003DBD4;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v39 = v0[21];
    v40 = v0[17];
    v38 = v0[16];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v34, v32, v31, v30, &type metadata for Never, v23, v33, &type metadata for Never);
  }

  else
  {
    v35 = (v0[5] + 80);
    v36 = (*v35 + **v35);
    v10 = (*v35)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_10003DE10;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v36(v16, v14, v15, v12);
  }
}

uint64_t sub_10003DBD4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_10003DFA4;
  }

  else
  {
    v3 = sub_10003DCE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003DCE8()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = v0[23];
  v11 = v0[20];
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10003DE10()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v10 = *v0;

  v3 = v1[23];
  v4 = v1[20];
  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[9];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_10003DFA4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[25];
  v8 = v0[20];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10003E0B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003E174(a1, a2);
}

uint64_t sub_10003E174(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_100042294();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_100003288(&qword_100055190, &unk_100045860);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_100041F44();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003E358, 0, 0);
}

uint64_t sub_10003E358()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);

    sub_100041D74();
    v5 = type metadata accessor for $DistributedService();
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_100042284();
    sub_100041DF4();
    v12 = v0[17];
    v13 = v0[15];
    sub_100041DC4();
    v15 = v0[8];
    sub_100041E94();
    v16 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_10003A59C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v21, v20, v19, v18, &type metadata for Never, v11, v5, &type metadata for Never);
  }

  else
  {
    v14 = v0[5];

    return _swift_task_switch(sub_100041A38, v14, 0);
  }
}

uint64_t sub_10003EA00()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_100042284();
    sub_100041DF4();
    v24 = v0[20];
    v25 = v0[18];
    sub_100041DC4();
    v26 = v0[9];
    sub_100041E94();
    v27 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_10003AD90;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v39 = v0[21];
    v40 = v0[17];
    v38 = v0[16];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v34, v32, v31, v30, &type metadata for Never, v23, v33, &type metadata for Never);
  }

  else
  {
    v35 = (v0[5] + 96);
    v36 = (*v35 + **v35);
    v10 = (*v35)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_100041A50;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v36(v16, v14, v15, v12);
  }
}

uint64_t sub_10003EE28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003EEE4(a1, a2);
}

uint64_t sub_10003EEE4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_100042294();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_100003288(&qword_100055190, &unk_100045860);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_100041F44();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003F0C8, 0, 0);
}

uint64_t sub_10003F0C8()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem);

    sub_100041D74();
    v5 = type metadata accessor for $DistributedService();
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_100003288(&qword_1000551D0, &unk_100046700);
    sub_100041DF4();
    v12 = v0[17];
    v13 = v0[15];
    sub_100041DC4();
    v15 = v0[8];
    sub_100041E94();
    v16 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_10003A59C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v21, v20, v19, v18, &type metadata for Never, v11, v5, &type metadata for Never);
  }

  else
  {
    v14 = v0[5];

    return _swift_task_switch(sub_100041A3C, v14, 0);
  }
}

uint64_t sub_10003F77C()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_100003288(&qword_1000551D0, &unk_100046700);
    sub_100041DF4();
    v24 = v0[20];
    v25 = v0[18];
    sub_100041DC4();
    v26 = v0[9];
    sub_100041E94();
    v27 = async function pointer to dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_10003AD90;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v39 = v0[21];
    v40 = v0[17];
    v38 = v0[16];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v34, v32, v31, v30, &type metadata for Never, v23, v33, &type metadata for Never);
  }

  else
  {
    v35 = (v0[5] + 112);
    v36 = (*v35 + **v35);
    v10 = (*v35)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_100041A50;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v36(v16, v14, v15, v12);
  }
}

Swift::Int sub_10003FBB0()
{
  v2 = *v0;
  sub_100042C54();
  type metadata accessor for $DistributedService();
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_10003FC10()
{
  v1 = *v0;
  type metadata accessor for $DistributedService();
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
  return sub_100041E44();
}

Swift::Int sub_10003FC8C()
{
  v2 = *v0;
  sub_100042C54();
  type metadata accessor for $DistributedService();
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_10003FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a4;
  v7 = *a5;
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_10000E968;

  return DistributedService<>.checkIsAvailable()(v6, v7);
}

uint64_t sub_10003FD94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_100041DB4();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_100031330;

  return DistributedService<>.validate(_:)(a3, v12, v13, v14);
}

uint64_t sub_10003FF24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_100041DB4();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_100031330;

  return DistributedService<>.resolve(_:)(a3, v12, v13, v14);
}

uint64_t sub_1000400B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_100041DB4();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_100031330;

  return DistributedService<>.validate(_:)(a3, v12, v13, v14);
}

uint64_t sub_100040244(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_100041DB4();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_100030800;

  return DistributedService<>.resolve(_:)(a3, v12, v13, v14);
}

uint64_t sub_1000403D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_100041DB4();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_100031330;

  return DistributedService<>.validate(_:)(a3, v12, v13, v14);
}

uint64_t sub_100040564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_100041DB4();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_100031330;

  return DistributedService<>.resolve(_:)(a3, v12, v13, v14);
}

uint64_t sub_1000407CC(uint64_t a1)
{
  result = sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000408FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v5 = sub_100041F84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100040978(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for $DistributedService();
  v5 = sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_100040A04()
{
  v1 = *v0;
  type metadata accessor for $DistributedService();
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
  sub_1000419EC(&qword_1000552F8, &type metadata accessor for XPCSystem.ActorID);
  return sub_100041E54();
}

uint64_t sub_100040ACC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedService();
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService);
  sub_1000419EC(&qword_1000552F0, &type metadata accessor for XPCSystem.ActorID);
  result = sub_100041E64();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100040BA4()
{
  result = sub_100041F84();
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

uint64_t sub_100040C4C(int a1, int a2, int a3, int a4, int a5, int a6, id a7)
{
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = result;
    v13 = (*(result + 24) + **(result + 24));
    v11 = *(*(result + 24) + 4);
    v12 = swift_task_alloc();
    *(v7 + 16) = v12;
    *v12 = v7;
    v12[1] = sub_10000F77C;

    return v13(a7, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100040D8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 40) + **(result + 40));
    v16 = *(*(result + 40) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_100031330;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100040F9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 56) + **(result + 56));
    v16 = *(*(result + 56) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_100031330;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000411AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 72) + **(result + 72));
    v16 = *(*(result + 72) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_100031330;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000413BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 88) + **(result + 88));
    v16 = *(*(result + 88) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_100031330;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000415CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 104) + **(result + 104));
    v16 = *(*(result + 104) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_100031330;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000417DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 120) + **(result + 120));
    v16 = *(*(result + 120) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_100031330;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000419EC(unint64_t *a1, void (*a2)(uint64_t))
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