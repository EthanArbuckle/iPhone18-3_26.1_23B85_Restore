uint64_t sub_10001D218()
{
  *(v0 + 104) = sub_10002162C();
  sub_10002164C();
  *(v0 + 112) = sub_10002163C();
  sub_10001FF30(&qword_1000302E8, &type metadata accessor for WidgetActor);
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_10001D2E8, v2, v1);
}

uint64_t sub_10001D2E8()
{
  v2 = v0[13];
  v1 = v0[14];

  v0[15] = sub_10002161C();

  return _swift_task_switch(sub_10001D358, 0, 0);
}

uint64_t sub_10001D358()
{
  sub_100021C6C();
  *(v0 + 128) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_10001D3EC, v2, v1);
}

uint64_t sub_10001D3EC()
{
  v2 = v0[15];
  v1 = v0[16];

  v0[17] = sub_1000215EC();

  return _swift_task_switch(sub_10001D464, 0, 0);
}

uint64_t sub_10001D464()
{
  v1 = v0[17];
  v24 = v1;
  if (v1)
  {
    v2 = [v1 homes];
    sub_10000E9F4();
    v3 = sub_100021C0C();

    if (v3 >> 62)
    {
      sub_100021D8C();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [v1 hasOptedToHH2];
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[8];
  v25 = v0[10];
  v26 = v0[7];
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v27 = v0[4];
  v12 = v0[2];
  sub_10002154C();
  sub_10002142C();
  sub_10002140C();
  v23 = sub_1000103E4();
  if (sub_10002141C())
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  v22 = v13;
  sub_100021ACC();
  v15 = v14;
  v17 = v16;

  (*(v5 + 8))(v6, v25);
  (*(v8 + 32))(v12, v7, v26);
  v18 = type metadata accessor for HistoricalUsageEntry();
  (*(v10 + 32))(v12 + v18[5], v9, v27);
  *(v12 + v18[6]) = v23;
  *(v12 + v18[7]) = v22;
  v19 = (v12 + v18[8]);
  *v19 = v15;
  v19[1] = v17;

  v20 = v0[1];

  return v20();
}

uint64_t sub_10001D68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_100021A8C();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = *(*(sub_10002118C() - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = sub_1000215DC();
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = sub_1000214EC();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = sub_1000216DC();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10001D89C, 0, 0);
}

uint64_t sub_10001D89C()
{
  v18 = v0;
  v1 = v0[24];
  v2 = v0[9];
  sub_1000216BC();

  v3 = sub_1000216CC();
  v4 = sub_100021CBC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  if (v5)
  {
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10001EC04(0xD000000000000011, 0x8000000100024300, &v17);
    *(v10 + 12) = 2080;
    v11 = sub_10000EAE0();
    v13 = sub_10001EC04(v11, v12, &v17);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s resolving usageSnapshot type for configuration: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v6, v8);
  v0[25] = sub_10002162C();
  v0[26] = sub_10002164C();
  v0[27] = sub_10002163C();
  v0[28] = sub_10001FF30(&qword_1000302E8, &type metadata accessor for WidgetActor);
  v15 = sub_100021C4C();

  return _swift_task_switch(sub_10001DAD8, v15, v14);
}

uint64_t sub_10001DAD8()
{
  v1 = v0[27];
  v2 = v0[25];

  v0[29] = sub_10002161C();

  return _swift_task_switch(sub_10001DB4C, 0, 0);
}

uint64_t sub_10001DB4C()
{
  sub_100021C6C();
  *(v0 + 240) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_10001DBE0, v2, v1);
}

uint64_t sub_10001DBE0()
{
  v2 = v0[29];
  v1 = v0[30];

  v0[31] = sub_1000215EC();

  return _swift_task_switch(sub_10001DC58, 0, 0);
}

uint64_t sub_10001DC58()
{
  v1 = v0[28];
  v2 = v0[26];
  v0[32] = sub_10002163C();
  v4 = sub_100021C4C();

  return _swift_task_switch(sub_10001DCEC, v4, v3);
}

uint64_t sub_10001DCEC()
{
  v1 = v0[32];
  v2 = v0[25];

  v0[33] = sub_10002161C();
  v3 = async function pointer to WidgetDataModel.orderedHomes.getter[1];
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_10001DD94;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10001DD94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v8 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v5 = v3[33];

    v6 = sub_10001E150;
  }

  else
  {
    v6 = sub_10001DEBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001DEBC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);

  v3 = *(v1 + 16);
  v4 = *(v0 + 280);
  if (v3)
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    sub_10001F234(0, v3, 0);
    v7 = *(v6 + 16);
    v6 += 16;
    v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v30 = *(v6 + 56);
    v31 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = *(v0 + 168);
      v11 = *(v0 + 144);
      v12 = *(v0 + 128);
      v31(v11, v8, v12);
      sub_1000215AC();
      sub_1000215CC();
      sub_1000214CC();
      (*v9)(v11, v12);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001F234(v13 > 1, v14 + 1, 1);
      }

      v15 = *(v0 + 168);
      v16 = *(v0 + 152);
      _swiftEmptyArrayStorage[2] = v14 + 1;
      (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      v8 += v30;
      --v3;
    }

    while (v3);
  }

  v17 = *(v0 + 280);

  *(v0 + 296) = *(v0 + 288);
  *(v0 + 304) = _swiftEmptyArrayStorage;
  v18 = *(v0 + 72);
  sub_100020FBC();
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  *(v0 + 312) = v19;
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  if (v19)
  {

    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  sub_10000A634(v20, v19);
  v26 = async function pointer to static HistoricalUsageWidgetCommon.timeline(siteDetailIdentifier:homes:)[1];
  v27 = swift_task_alloc();
  *(v0 + 320) = v27;
  *v27 = v0;
  v27[1] = sub_10001E270;
  v28 = *(v0 + 112);

  return static HistoricalUsageWidgetCommon.timeline(siteDetailIdentifier:homes:)(v28, v25, v19, _swiftEmptyArrayStorage);
}

uint64_t sub_10001E150()
{
  *(v0 + 296) = 0;
  *(v0 + 304) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 72);
  sub_100020FBC();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 312) = v2;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  if (v2)
  {

    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  sub_10000A634(v3, v2);
  v9 = async function pointer to static HistoricalUsageWidgetCommon.timeline(siteDetailIdentifier:homes:)[1];
  v10 = swift_task_alloc();
  *(v0 + 320) = v10;
  *v10 = v0;
  v10[1] = sub_10001E270;
  v11 = *(v0 + 112);

  return static HistoricalUsageWidgetCommon.timeline(siteDetailIdentifier:homes:)(v11, v8, v2, _swiftEmptyArrayStorage);
}

uint64_t sub_10001E270(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 304);
  v6 = *v1;
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_10001E3AC, 0, 0);
}

uint64_t sub_10001E3AC()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[31];
  v14 = v0[24];
  v15 = v0[21];
  v4 = v0[14];
  v16 = v0[18];
  v17 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[9];
  v12 = v0[11];
  v13 = v0[8];
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v3;
  v9[4] = v7;
  sub_10001CE94(sub_10001FEA4, v9, v1, type metadata accessor for HistoricalUsageEntry, sub_10001F2DC, &type metadata accessor for HistoricalUsageEntryCommon, type metadata accessor for HistoricalUsageEntry);

  (*(v6 + 16))(v5, v4, v12);
  type metadata accessor for HistoricalUsageEntry();
  sub_10001FF30(&qword_100030A38, type metadata accessor for HistoricalUsageEntry);
  sub_100021B0C();

  (*(v6 + 8))(v4, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001E5B8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a1;
  v6 = sub_1000212EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002113C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002142C();
  sub_10002140C();
  if (a2)
  {
    if ([a2 hasOptedToHH2])
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = 3;
  }

  sub_100021ACC();
  v18 = v17;
  v20 = v19;
  (*(v12 + 32))(a4, v15, v11);
  v21 = type metadata accessor for HistoricalUsageEntry();
  (*(v7 + 32))(a4 + v21[5], v10, v6);
  *(a4 + v21[6]) = v25;
  *(a4 + v21[7]) = v16;
  v22 = (a4 + v21[8]);
  *v22 = v18;
  v22[1] = v20;
}

uint64_t sub_10001E7C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002144C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002151C();
  sub_10002142C();
  v7 = type metadata accessor for HistoricalUsageEntry();
  v8 = a1 + v7[5];
  sub_10002140C();
  v9 = sub_1000103E4();
  sub_100021ACC();
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v6, v2);
  *(a1 + v7[6]) = v9;
  *(a1 + v7[7]) = 3;
  v15 = (a1 + v7[8]);
  *v15 = v11;
  v15[1] = v13;
  return result;
}

uint64_t sub_10001E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10001D0A0(a1, v6, a3);
}

uint64_t sub_10001E99C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10001D68C(a1, v6, a3);
}

uint64_t sub_10001EA5C()
{
  sub_100021D1C(54);
  v5._countAndFlagsBits = 0xD000000000000018;
  v5._object = 0x8000000100024790;
  sub_100021BCC(v5);
  v6._countAndFlagsBits = sub_10002112C();
  sub_100021BCC(v6);

  v7._countAndFlagsBits = 2106912;
  v7._object = 0xE300000000000000;
  sub_100021BCC(v7);
  v1 = type metadata accessor for HistoricalUsageEntry();
  v2 = *(v0 + *(v1 + 24));
  v8._countAndFlagsBits = sub_10000EAE0();
  sub_100021BCC(v8);

  v9._object = 0x80000001000247B0;
  v9._countAndFlagsBits = 0xD000000000000015;
  sub_100021BCC(v9);
  v3 = *(v1 + 20);
  sub_1000212EC();
  sub_10001FF30(&qword_100030A60, &type metadata accessor for HistoricalUsageSnapshot);
  v10._countAndFlagsBits = sub_100021D9C();
  sub_100021BCC(v10);

  return 0;
}

uint64_t sub_10001EC04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001ECD0(v11, 0, 0, 1, a1, a2);
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
    sub_10001FE48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008C24(v11);
  return v7;
}

unint64_t sub_10001ECD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001EDDC(a5, a6);
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
    result = sub_100021D3C();
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

char *sub_10001EDDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001EE28(a1, a2);
  sub_10001EF58(&off_10002D538);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001EE28(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001F044(v5, 0);
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

  result = sub_100021D3C();
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
        v10 = sub_100021BDC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001F044(v10, 0);
        result = sub_100021D0C();
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

uint64_t sub_10001EF58(uint64_t result)
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

  result = sub_10001F0B8(result, v12, 1, v3);
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

void *sub_10001F044(uint64_t a1, uint64_t a2)
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

  sub_1000066C8(&qword_100030A50, &qword_100023D00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001F0B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000066C8(&qword_100030A50, &qword_100023D00);
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

size_t sub_10001F1AC(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030700, &qword_100023588, type metadata accessor for ForecastLocationEntity);
  *v3 = result;
  return result;
}

size_t sub_10001F1F0(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030620, &unk_100023D20, type metadata accessor for UtilityRateInfoEntry);
  *v3 = result;
  return result;
}

size_t sub_10001F234(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030A58, &qword_100023D10, &type metadata accessor for HistoricalUsageWidgetCommon.Home);
  *v3 = result;
  return result;
}

char *sub_10001F278(char *a1, int64_t a2, char a3)
{
  result = sub_10001F320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001F298(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030960, &qword_100023A78, type metadata accessor for GridForecastEntry);
  *v3 = result;
  return result;
}

size_t sub_10001F2DC(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030A48, &qword_100023CF8, type metadata accessor for HistoricalUsageEntry);
  *v3 = result;
  return result;
}

char *sub_10001F320(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000066C8(&qword_1000306F0, &qword_100023570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10001F43C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000066C8(a5, a6);
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

uint64_t sub_10001F618(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v37 = a1;
  v38 = a4;
  v36 = a2;
  v5 = type metadata accessor for HistoricalUsageEntry();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000216DC();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v35);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000211BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000211DC();
  v18 = *(v34 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v34);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for Calendar.Identifier.gregorian(_:), v13);
  sub_1000211CC();
  (*(v14 + 8))(v17, v13);
  sub_1000216BC();
  v22 = sub_1000216CC();
  v23 = sub_100021C9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v33 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242E0, &v39);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s THIS SHOULD NEVER GET CALLED", v25, 0xCu);
    sub_100008C24(v26);

    a3 = v33;
  }

  (*(v9 + 8))(v12, v35);
  sub_10002111C();
  v27 = &v8[v5[5]];
  sub_1000212CC();
  sub_100021ACC();
  *&v8[v5[6]] = v37;
  v8[v5[7]] = 3;
  v28 = &v8[v5[8]];
  *v28 = v29;
  *(v28 + 1) = v30;

  a3(v8);
  sub_10001FDEC(v8);
  return (*(v18 + 8))(v21, v34);
}

uint64_t sub_10001F9CC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v38 = a2;
  v39 = a1;
  v6 = sub_100021A8C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000066C8(&qword_100030A40, &qword_100023CF0);
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v42);
  v11 = v35 - v10;
  v12 = type metadata accessor for HistoricalUsageEntry();
  v37 = *(v12 - 1);
  v13 = *(v37 + 64);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000216DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000216BC();
  v21 = sub_1000216CC();
  v22 = sub_100021C9C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35[1] = a4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v36 = a3;
    v26 = v25;
    v43 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242C0, &v43);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s THIS SHOULD NEVER GET CALLED", v24, 0xCu);
    sub_100008C24(v26);
    a3 = v36;
  }

  (*(v17 + 8))(v20, v16);
  sub_10002111C();
  v27 = &v15[v12[5]];
  sub_1000212DC();
  sub_100021ACC();
  *&v15[v12[6]] = v39;
  v15[v12[7]] = 3;
  v28 = &v15[v12[8]];
  *v28 = v29;
  *(v28 + 1) = v30;
  sub_1000066C8(&qword_100030A48, &qword_100023CF8);
  v31 = *(v37 + 72);
  v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100022E90;
  sub_10000A8FC(v15, v33 + v32);

  sub_100021A7C();
  sub_10001FF30(&qword_100030A38, type metadata accessor for HistoricalUsageEntry);
  sub_100021B0C();
  a3(v11);
  (*(v40 + 8))(v11, v42);
  return sub_10001FDEC(v15);
}

uint64_t sub_10001FDEC(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalUsageEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001FEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FF30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001FF7C()
{
  result = qword_100030A68;
  if (!qword_100030A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A68);
  }

  return result;
}

unint64_t sub_10001FFD0()
{
  sub_100021D1C(18);

  sub_100020FBC();
  sub_1000066C8(&qword_1000306D8, &qword_100023528);
  v1._countAndFlagsBits = sub_100021BBC();
  sub_100021BCC(v1);

  return 0xD000000000000010;
}

uint64_t sub_10002008C()
{
  v0 = sub_1000210BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000211AC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100021B7C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000210DC();
  sub_100008BC0(v9, qword_100030B98);
  sub_100008B88(v9, qword_100030B98);
  sub_100021B2C();
  sub_10002119C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000210EC();
}

unint64_t sub_10002027C()
{
  result = qword_100030A70;
  if (!qword_100030A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A70);
  }

  return result;
}

unint64_t sub_1000202D4()
{
  result = qword_100030A78;
  if (!qword_100030A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A78);
  }

  return result;
}

uint64_t sub_100020378@<X0>(uint64_t a1@<X8>)
{
  if (qword_100030110 != -1)
  {
    swift_once();
  }

  v2 = sub_1000210DC();
  v3 = sub_100008B88(v2, qword_100030B98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100020420(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000E294();
  *v5 = v2;
  v5[1] = sub_100006460;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_1000204CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100020540();
  *a1 = result;
  return result;
}

uint64_t sub_1000204F4(uint64_t a1)
{
  v2 = sub_10001FF7C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100020540()
{
  v0 = sub_10002102C();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000066C8(&qword_1000302B8, &unk_100023530);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000210BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000211AC();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100021B7C();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000210DC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_1000066C8(&qword_1000306E0, &qword_100023540);
  sub_100021B2C();
  sub_10002119C();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_1000210EC();
  (*(v23 + 56))(v12, 1, 1, v22);
  v25 = sub_100020F6C();
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10000F964();
  return sub_100020FCC();
}

uint64_t sub_1000209D4(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100032C08 == -1)
  {
    if (qword_100032C10)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100020E9C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100032C10)
    {
      return _availability_version_check();
    }
  }

  if (qword_100032C00 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100020EB4();
    a3 = v10;
    a4 = v9;
    v8 = dword_100032BF0 < v11;
    if (dword_100032BF0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100032BF4 > a3)
      {
        return 1;
      }

      if (dword_100032BF4 >= a3)
      {
        return dword_100032BF8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100032BF0 < a2;
  if (dword_100032BF0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100020B68(uint64_t result)
{
  v1 = qword_100032C10;
  if (qword_100032C10)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100032C10 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100032BF0, &dword_100032BF4, &dword_100032BF8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}