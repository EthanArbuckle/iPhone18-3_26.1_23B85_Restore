id variable initialization expression of LockScreenDataModel.homeManager()
{
  sub_100001ADC();
  v0 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v0 setDiscretionary:0];
  [v0 setAdaptive:1];
  v1 = [objc_allocWithZone(HMHomeManager) initWithConfiguration:v0];

  return v1;
}

unint64_t sub_100001ADC()
{
  result = qword_100080C00;
  if (!qword_100080C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100080C00);
  }

  return result;
}

uint64_t sub_100001B38(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000666F0(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100001BAC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_1000666F0(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

void *sub_100001C38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  return _swift_task_switch(sub_100001C6C, 0, 0);
}

uint64_t sub_100001C6C()
{
  v27 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_100067318();
  v0[17] = sub_1000026A8(v2, qword_100085CA0);
  v3 = v1;

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_10000D4F0(v7, v6, &v26);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D4F0(0xD00000000000001DLL, 0x800000010006C230, &v26);
    *(v9 + 22) = 2080;
    if (v8)
    {
      v10 = [v3 name];
      v11 = sub_100067BC8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE400000000000000;
      v11 = 1819047278;
    }

    v14 = sub_10000D4F0(v11, v13, &v26);

    *(v9 + 24) = v14;
    swift_arrayDestroy();
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  sub_1000024F4(&qword_1000808D0);
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = xmmword_100068BF0;
  if (qword_100080768 != -1)
  {
    swift_once();
  }

  v16 = *(&xmmword_100085C08 + 1);
  v17 = qword_100085C18;
  v18 = unk_100085C20;
  v19 = xmmword_100085C28;
  v20 = qword_100085C38;
  *(inited + 32) = xmmword_100085C08;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  *(inited + 64) = v19;
  *(inited + 80) = v20;

  sub_1000026E0(*(&v19 + 1));
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_100001FE0;
  v22 = v0[15];
  v23 = v0[16];
  v24 = v0[14];

  return LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:)(inited, v24, v22, v23);
}

uint64_t sub_100001FE0(uint64_t a1)
{
  *(*v1 + 160) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();

  return _swift_task_switch(sub_100002114, 0, 0);
}

void sub_100002114()
{
  v37 = v0;
  v1 = sub_10000878C(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 160));

  v2 = v1[2];
  if (!v2)
  {
    v10 = 0xEA00000000006D75;
    v6 = 0x9380E29380E2;

    v24 = sub_1000672F8();
    v25 = sub_100067E08();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 120);
      v26 = *(v0 + 128);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315138;
      v30 = v27;
      v10 = 0xEA00000000006D75;
      *(v28 + 4) = sub_10000D4F0(v30, v26, &v36);
      _os_log_impl(&_mh_execute_header, v24, v25, "...{%s} has no air qualities, returning placeholder", v28, 0xCu);
      sub_1000026F0(v29);
    }

    v9 = 0x6964656D2E697161;
    v8 = 0xA600000000000000;
    v22 = 0.0;
    v23 = 5.0;
    goto LABEL_14;
  }

  v3 = sub_100008A70(v1);
  v5 = v4;

  v6 = sub_100008CD4(v3, v5 & 1);
  v8 = v7;
  v35 = v5;
  if ((v5 & 1) == 0)
  {
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v10 = 0xE700000000000000;
        v9 = 0x776F6C2E697161;
        goto LABEL_4;
      }
    }

    else if (v3 == 5)
    {
      v10 = 0xE800000000000000;
      v9 = 0x686769682E697161;
      goto LABEL_4;
    }
  }

  v9 = 0x6964656D2E697161;
  v10 = 0xEA00000000006D75;
LABEL_4:

  v11 = sub_1000672F8();
  v12 = sub_100067E08();

  if (os_log_type_enabled(v11, v12))
  {
    v34 = v2;
    v33 = *(v0 + 128);
    v13 = v3;
    v14 = v10;
    v15 = v6;
    v16 = *(v0 + 120);
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = v16;
    v6 = v15;
    v10 = v14;
    v3 = v13;
    v2 = v34;
    *(v17 + 4) = sub_10000D4F0(v18, v33, &v36);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10000D4F0(v6, v8, &v36);
    _os_log_impl(&_mh_execute_header, v11, v12, "...{%s} airQuality is: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  if (v35)
  {
    v19 = 0;
  }

  else
  {
    v19 = v3;
  }

  v20 = __OFSUB__(6, v19);
  v21 = 6 - v19;
  if (v20)
  {
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = 4.0;
LABEL_14:
  v31 = *(v0 + 104);
  LOBYTE(v36) = v2 == 0;
  *v31 = 0;
  *(v31 + 8) = v23;
  *(v31 + 16) = v22;
  *(v31 + 24) = v2 == 0;
  *(v31 + 32) = v6;
  *(v31 + 40) = v8;
  *(v31 + 48) = v9;
  *(v31 + 56) = v10;
  *(v31 + 64) = 0;
  v32 = *(v0 + 8);

  v32();
}

uint64_t sub_1000024F4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000253C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002584()
{
  result = qword_1000808B8;
  if (!qword_1000808B8)
  {
    sub_10000253C(&qword_1000808B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000808B8);
  }

  return result;
}

unint64_t sub_1000025E8()
{
  result = qword_1000808C0;
  if (!qword_1000808C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000808C0);
  }

  return result;
}

__n128 sub_10000263C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000264C(uint64_t a1, int a2)
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

uint64_t sub_10000266C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000026A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000026E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000026F0(uint64_t a1)
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

void sub_100002750(uint64_t a1, unint64_t *a2)
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

int *sub_1000027D0@<X0>(uint64_t a1@<X8>)
{
  if (__OFADD__(qword_100085BC0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_100085BC0;
    v20[0] = 0x206574616D696C43;
    v20[1] = 0xE800000000000000;
    v21._countAndFlagsBits = sub_100068148();
    sub_100067C48(v21);

    v2 = 0x206574616D696C43;
    v1 = 0xE800000000000000;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_100067318();
  sub_1000026A8(v4, qword_100085CA0);

  v5 = sub_1000672F8();
  v6 = sub_100067E08();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_10000D4F0(v2, v1, v20);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000D4F0(0xD000000000000010, 0x800000010006C430, v20);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100066F28();
  if (qword_100080750 != -1)
  {
    swift_once();
  }

  v10 = qword_100085BB0;
  v9 = *algn_100085BB8;
  v11 = qword_100080880;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_100086008;

  sub_100067A58();
  v14 = v13;
  v16 = v15;
  result = type metadata accessor for ThreeColumnDataEntry();
  v18 = (a1 + result[5]);
  *v18 = v10;
  v18[1] = v9;
  *(a1 + result[6]) = v12;
  v19 = (a1 + result[7]);
  *v19 = v14;
  v19[1] = v16;
  *(a1 + result[8]) = 3;
  return result;
}

uint64_t sub_100002AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100067A88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_1000809D0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  v13 = qword_100085BC0 + 1;
  if (__OFADD__(qword_100085BC0, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = v9;
    v28 = a1;
    v9 = v7;
    v29 = a2;
    ++qword_100085BC0;
    v32 = 0x206574616D696C43;
    v33 = 0xE800000000000000;
    v31 = v13;
    v34._countAndFlagsBits = sub_100068148();
    sub_100067C48(v34);

    v7 = v32;
    v3 = v33;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v30 = a3;
  v14 = sub_100067318();
  sub_1000026A8(v14, qword_100085CA0);

  v15 = sub_1000672F8();
  v16 = sub_100067E08();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10000D4F0(v7, v3, &v32);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006C410, &v32);
    swift_arrayDestroy();
  }

  v18 = v28;
  v19 = sub_100067D28();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  (*(v8 + 16))(v10, v18, v9);
  v20 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v21 = (v27 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v30;
  *(v22 + 4) = v29;
  *(v22 + 5) = v23;
  (*(v8 + 32))(&v22[v20], v10, v9);
  v24 = &v22[v21];
  *v24 = v7;
  v24[1] = v3;

  sub_100024F48(0, 0, v12, &unk_100068F40, v22);
}

uint64_t sub_100002E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for ThreeColumnDataEntry();
  v12 = swift_task_alloc();
  v8[4] = v12;
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_100002F64;

  return sub_1000030F0(v12, a6, a7, a8);
}

uint64_t sub_100002F64()
{

  return _swift_task_switch(sub_100003060, 0, 0);
}

uint64_t sub_100003060()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_100005984(v1, type metadata accessor for ThreeColumnDataEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000030F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  sub_100066FB8();
  v4[11] = swift_task_alloc();
  sub_100067B88();
  v4[12] = swift_task_alloc();
  v5 = sub_100066F38();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_1000679B8();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_100003274, 0, 0);
}

uint64_t sub_100003274()
{
  v29 = v0;
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v1 = qword_100085C80;
  v0[20] = qword_100085C80;
  v2 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[21] = v3;
  v4 = qword_100080788;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_100067318();
  v0[22] = sub_1000026A8(v6, qword_100085CA0);
  v7 = v5;

  v8 = sub_1000672F8();
  v9 = sub_100067E08();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_10000D4F0(v11, v10, &v28);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10000D4F0(0xD00000000000001ALL, 0x800000010006C3F0, &v28);
    *(v12 + 22) = 2080;
    if (v3)
    {
      v13 = [v7 name];
      v14 = sub_100067BC8();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_10000D4F0(v14, v16, &v28);

    *(v12 + 24) = v17;
    swift_arrayDestroy();
  }

  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[16];
  v21 = v0[17];
  sub_100067A68();
  (*(v21 + 104))(v19, enum case for WidgetFamily.systemSmall(_:), v20);
  sub_100005B04(&qword_1000809E8, &type metadata accessor for WidgetFamily);
  sub_100067C78();
  sub_100067C78();
  v22 = *(v21 + 8);
  v22(v19, v20);
  v22(v18, v20);
  if (v0[5] == v0[6])
  {
    v23 = 5;
  }

  else
  {
    v23 = 3;
  }

  v24 = swift_task_alloc();
  v0[23] = v24;
  *v24 = v0;
  v24[1] = sub_100003640;
  v25 = v0[9];
  v26 = v0[10];

  return sub_100005B54(v3, v25, v26, v23);
}

uint64_t sub_100003640(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100003740, 0, 0);
}

uint64_t sub_100003740()
{
  v32 = v0;

  v1 = sub_1000672F8();
  v2 = sub_100067E08();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000D4F0(v4, v3, &v31);
    *(v5 + 12) = 2080;
    v6 = sub_100067CB8();
    v8 = sub_10000D4F0(v6, v7, &v31);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "...{%s} climateSummaryRows are %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = sub_100014FA4();
  sub_100066F28();
  if (qword_100080750 != -1)
  {
    swift_once();
  }

  v10 = v0[24];
  v29 = qword_100085BB0;
  v30 = *algn_100085BB8;
  v11 = *(v10 + 16);

  if (!v11)
  {

    sub_1000024F4(&qword_1000809F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100068BF0;
    sub_100067B38();
    sub_100066FA8();
    v12 = sub_100067BE8();
    *(v10 + 32) = 0xD000000000000018;
    *(v10 + 40) = 0x800000010006C3B0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0xE000000000000000;
    *(v10 + 64) = v12;
    *(v10 + 72) = v13;
    *(v10 + 80) = 0;
  }

  v14 = v0[21];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  if (v9)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  v19 = v0[7];
  sub_100067A58();
  v21 = v20;
  v23 = v22;

  (*(v16 + 32))(v19, v15, v17);
  v24 = type metadata accessor for ThreeColumnDataEntry();
  v25 = (v19 + v24[5]);
  *v25 = v29;
  v25[1] = v30;
  *(v19 + v24[6]) = v10;
  v26 = (v19 + v24[7]);
  *v26 = v21;
  v26[1] = v23;
  *(v19 + v24[8]) = v18;

  v27 = v0[1];

  return v27();
}

uint64_t sub_100003AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100067A88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_1000809D0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  v13 = qword_100085BC0 + 1;
  if (__OFADD__(qword_100085BC0, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = v9;
    v28 = a1;
    v9 = v7;
    v29 = a2;
    ++qword_100085BC0;
    v32 = 0x206574616D696C43;
    v33 = 0xE800000000000000;
    v31 = v13;
    v34._countAndFlagsBits = sub_100068148();
    sub_100067C48(v34);

    v7 = v32;
    v3 = v33;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v30 = a3;
  v14 = sub_100067318();
  sub_1000026A8(v14, qword_100085CA0);

  v15 = sub_1000672F8();
  v16 = sub_100067E08();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10000D4F0(v7, v3, &v32);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006C390, &v32);
    swift_arrayDestroy();
  }

  v18 = v28;
  v19 = sub_100067D28();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  (*(v8 + 16))(v10, v18, v9);
  v20 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v21 = (v27 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v30;
  *(v22 + 4) = v29;
  *(v22 + 5) = v23;
  (*(v8 + 32))(&v22[v20], v10, v9);
  v24 = &v22[v21];
  *v24 = v7;
  v24[1] = v3;

  sub_100024F48(0, 0, v12, &unk_100068F10, v22);
}

uint64_t sub_100003E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_100066F38();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  sub_100067A28();
  v8[11] = swift_task_alloc();
  v10 = sub_1000024F4(&qword_1000809D8);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_100004004, 0, 0);
}

uint64_t sub_100004004()
{
  sub_1000024F4(&qword_1000809E0);
  v1 = type metadata accessor for ThreeColumnDataEntry();
  v0[15] = v1;
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = xmmword_100068BF0;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100004134;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  return sub_1000030F0(v3 + v2, v7, v5, v6);
}

uint64_t sub_100004134()
{

  return _swift_task_switch(sub_100004230, 0, 0);
}

uint64_t sub_100004230()
{
  v2 = v0[13];
  v1 = v0[14];
  v11 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v10 = v0[2];
  sub_100066F28();
  sub_100066F08();
  v7 = *(v6 + 8);
  v7(v3, v5);
  sub_100067A18();
  v7(v4, v5);
  sub_100005B04(&qword_1000809A8, type metadata accessor for ThreeColumnDataEntry);
  sub_100067AE8();
  v10(v1);
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000043C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004474;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100004474()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005B50;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000461C()
{
  sub_100066FB8();
  __chkstk_darwin();
  sub_100067B88();
  __chkstk_darwin();
  sub_100067B38();
  sub_100066FA8();
  result = sub_100067BE8();
  qword_100085BB0 = result;
  *algn_100085BB8 = v1;
  return result;
}

uint64_t sub_100004738@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for ThreeColumnCategoryView(0);
  (__chkstk_darwin)();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000024F4(&qword_1000809B0);
  v5 = *(v21 - 8);
  (__chkstk_darwin)();
  v7 = &v20 - v6;
  sub_1000024F4(&qword_1000809B8);
  v8 = (__chkstk_darwin)();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for ThreeColumnDataEntry() + 32);
  v22 = v1;
  if (*(v1 + v13) <= 2u)
  {
    sub_100066ED8();

    v15 = sub_100066EE8();
    v14 = *(v15 - 8);
    if ((*(v14 + 48))(v10, 1, v15) != 1)
    {
      (*(v14 + 32))(v12, v10, v15);
      (*(v14 + 56))(v12, 0, 1, v15);
      goto LABEL_7;
    }
  }

  else
  {
    v15 = sub_100066EE8();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  sub_100066ED8();
  sub_100066EE8();
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) != 1)
  {
    sub_1000055A0(v10);
  }

LABEL_7:
  sub_100005250(v22, v4);
  v16 = *(v2 + 20);
  *&v4[v16] = swift_getKeyPath();
  sub_1000024F4(&qword_1000809C0);
  swift_storeEnumTagMultiPayload();
  v17 = sub_100005B04(&qword_1000809C8, type metadata accessor for ThreeColumnCategoryView);
  sub_1000677C8();
  sub_100005984(v4, type metadata accessor for ThreeColumnCategoryView);
  v24 = v2;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_100067858();
  (*(v5 + 8))(v7, v18);
  return sub_1000055A0(v12);
}

uint64_t sub_100004BC8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100066FB8();
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000024F4(&qword_1000808E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = sub_1000024F4(&qword_1000808E8);
  v24[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = sub_1000024F4(&qword_1000808F0);
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  type metadata accessor for ClimateCategoryWidgetView();
  sub_100005B04(&qword_1000808F8, type metadata accessor for ClimateCategoryWidgetView);
  sub_100005198();
  sub_100067A08();
  if (qword_100080750 != -1)
  {
    swift_once();
  }

  v28 = qword_100085BB0;
  v29 = *algn_100085BB8;
  v14 = sub_1000051EC();
  v15 = sub_1000025E8();
  sub_100067628();
  (*(v5 + 8))(v7, v4);
  sub_100067B38();
  sub_100066FA8();
  v32 = sub_100067BE8();
  v33 = v16;
  v28 = v4;
  v29 = &type metadata for String;
  v30 = v14;
  v31 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100067608();

  (*(v24[0] + 8))(v10, v8);
  sub_1000024F4(&qword_100080910);
  v18 = sub_1000679B8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100068BF0;
  (*(v19 + 104))(v21 + v20, enum case for WidgetFamily.accessoryRectangular(_:), v18);
  v28 = v8;
  v29 = &type metadata for String;
  v30 = OpaqueTypeConformance2;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_100067618();

  return (*(v25 + 8))(v13, v22);
}

uint64_t type metadata accessor for ClimateCategoryWidgetView()
{
  result = qword_100080970;
  if (!qword_100080970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100005198()
{
  result = qword_100080900;
  if (!qword_100080900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080900);
  }

  return result;
}

unint64_t sub_1000051EC()
{
  result = qword_100080908;
  if (!qword_100080908)
  {
    sub_10000253C(&qword_1000808E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080908);
  }

  return result;
}

uint64_t sub_100005250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000052D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100005358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000053C8()
{
  result = type metadata accessor for ThreeColumnDataEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100005434()
{
  sub_10000253C(&qword_1000808F0);
  sub_10000253C(&qword_1000808E8);
  sub_10000253C(&qword_1000808E0);
  sub_1000051EC();
  sub_1000025E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000055A0(uint64_t a1)
{
  v2 = sub_1000024F4(&qword_1000809B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005610(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100067A88() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100004474;

  return sub_100003E9C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100005758()
{
  v1 = sub_100067A88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000583C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100067A88() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100005B50;

  return sub_100002E7C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100005984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000059E8()
{
  result = qword_1000809F8;
  if (!qword_1000809F8)
  {
    sub_10000253C(&qword_100080A00);
    type metadata accessor for ThreeColumnCategoryView(255);
    sub_100005B04(&qword_1000809C8, type metadata accessor for ThreeColumnCategoryView);
    swift_getOpaqueTypeConformance2();
    sub_100005B04(&qword_100080A08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000809F8);
  }

  return result;
}

uint64_t sub_100005B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  sub_100066FB8();
  v5[40] = swift_task_alloc();
  sub_100067B88();
  v5[41] = swift_task_alloc();

  return _swift_task_switch(sub_100005C18, 0, 0);
}

uint64_t sub_100005C18()
{
  v27 = v0;
  if (qword_1000807A0 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = sub_100067318();
  sub_1000026A8(v2, qword_100085CE8);
  v3 = v1;

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[36];
    v6 = v0[37];
    v8 = v0[35];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_10000D4F0(v7, v6, &v26);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D4F0(0xD000000000000028, 0x800000010006C640, &v26);
    *(v9 + 22) = 2080;
    if (v8)
    {
      v10 = [v3 name];
      v11 = sub_100067BC8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_10000D4F0(v11, v13, &v26);

    *(v9 + 24) = v14;
    swift_arrayDestroy();
  }

  if (v0[35])
  {
    v15 = qword_100080758;
    v16 = v3;
    if (v15 != -1)
    {
      v25 = v16;
      swift_once();
      v16 = v25;
    }

    v17 = qword_100085BC8;
    v18 = v16;
    v19 = swift_task_alloc();
    v0[42] = v19;
    *v19 = v0;
    v19[1] = sub_100005F50;
    v20 = v0[36];
    v21 = v0[37];
    v22 = v0[35];

    return LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:)(v17, v22, v20, v21);
  }

  else
  {

    v24 = v0[1];

    return v24(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100005F50(uint64_t a1)
{
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_100006050, 0, 0);
}

uint64_t sub_100006050()
{
  v1 = sub_100008EA4(*(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 344));
  if (*(v1 + 2))
  {
    v2 = v1;
    sub_1000024F4(&qword_1000809F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100068BF0;
    type metadata accessor for LockScreenDataModel();
    v4 = sub_100009188(v2);
    v6 = v5;
    sub_100067B38();
    sub_100066FA8();
    v7 = sub_100067BE8();
    v9 = v8;
    v10 = sub_10000658C(v2);
    v12 = v11;

    *(inited + 32) = v4;
    *(inited + 40) = v6;
    *(inited + 48) = v7;
    *(inited + 56) = v9;
    *(inited + 64) = v10;
    *(inited + 72) = v12;
    *(inited + 80) = 0;
    sub_10003F4CC(inited);
  }

  else
  {
  }

  v13 = sub_10000878C(*(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 344));
  if (v13[2])
  {
    v14 = sub_100008A70(v13);
    v16 = v15;

    sub_1000024F4(&qword_1000809F0);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_100068BF0;
    if ((v16 & 1) == 0)
    {
      if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v19 = 0xE700000000000000;
          v18 = 0x776F6C2E697161;
          goto LABEL_7;
        }
      }

      else if (v14 == 5)
      {
        v19 = 0xE800000000000000;
        v18 = 0x686769682E697161;
        goto LABEL_7;
      }
    }

    v18 = 0x6964656D2E697161;
    v19 = 0xEA00000000006D75;
LABEL_7:
    sub_100067B38();
    sub_100066FA8();
    v20 = sub_100067BE8();
    v22 = v21;
    v23 = sub_100008CD4(v14, v16 & 1);
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    *(v17 + 48) = v20;
    *(v17 + 56) = v22;
    *(v17 + 64) = v23;
    *(v17 + 72) = v24;
    *(v17 + 80) = 0;
    sub_10003F4CC(v17);
    goto LABEL_9;
  }

LABEL_9:
  v25 = *(v0 + 280);
  v26 = sub_100009294(v25, *(v0 + 288), *(v0 + 296), *(v0 + 344));

  if (*(v26 + 2))
  {
    sub_1000024F4(&qword_1000809F0);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_100068BF0;
    sub_100067B38();
    sub_100066FA8();
    v28 = sub_100067BE8();
    v30 = v29;
    v31 = sub_10000979C(v26);
    v33 = v32;

    strcpy((v27 + 32), "humidity.fill");
    *(v27 + 46) = -4864;
    *(v27 + 48) = v28;
    *(v27 + 56) = v30;
    *(v27 + 64) = v31;
    *(v27 + 72) = v33;
    *(v27 + 80) = 1;
    sub_10003F4CC(v27);
  }

  else
  {
  }

  v37 = sub_100056BB0(*(v0 + 304), _swiftEmptyArrayStorage);
  if ((v36 & 1) == 0)
  {
    goto LABEL_13;
  }

  v41 = v36;
  v42 = v35;
  v43 = v34;
  sub_100068178();
  swift_unknownObjectRetain_n();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = *(v44 + 2);

  if (__OFSUB__(v41 >> 1, v42))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v45 != (v41 >> 1) - v42)
  {
LABEL_30:
    swift_unknownObjectRelease();
    v36 = v41;
    v35 = v42;
    v34 = v43;
LABEL_13:
    v38 = *(v0 + 280);
    sub_10005DFE0(v37, v34, v35, v36);
    v40 = v39;

    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v40 = swift_dynamicCastClass();
  v46 = *(v0 + 280);
  swift_unknownObjectRelease();
  if (v40)
  {
  }

  else
  {
    swift_unknownObjectRelease();

    v40 = _swiftEmptyArrayStorage;
  }

LABEL_24:

  v47 = *(v0 + 8);

  return v47(v40);
}

uint64_t sub_10000658C(uint64_t a1)
{
  v2 = sub_1000024F4(&qword_100080A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v79 - v3;
  v5 = sub_100066FB8();
  __chkstk_darwin(v5 - 8);
  v88 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000024F4(&qword_100080A88);
  v7 = *(v87 - 8);
  __chkstk_darwin(v87);
  v9 = &v79 - v8;
  v10 = sub_1000024F4(&qword_100080A78);
  v11 = __chkstk_darwin(v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v79 - v15;
  __chkstk_darwin(v14);
  v19 = &v79 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(a1 + 32);
    v22 = v20 - 1;
    v89 = v17;
    v90 = v7;
    v84 = v4;
    if (v22)
    {
      v25 = (a1 + 40);
      v26 = v22;
      v27 = v21;
      do
      {
        v28 = *v25++;
        v29 = v28;
        if (v28 < v27)
        {
          v27 = v29;
        }

        --v26;
      }

      while (v26);
      v30 = (a1 + 40);
      do
      {
        v31 = *v30++;
        v32 = v31;
        if (v21 < v31)
        {
          v21 = v32;
        }

        --v22;
      }

      while (v22);
      v23 = v9;
    }

    else
    {
      v23 = v9;
    }

    v33 = objc_opt_self();
    v34 = [v33 celsius];
    v35 = sub_100009700(0, &qword_100080A80);
    sub_100066DC8();
    v36 = [v33 celsius];
    sub_100066DC8();
    sub_100006D64(v23);
    sub_100066F98();
    sub_100066EA8();
    v37 = sub_100067E48();
    v81 = v19;
    sub_100066E18();

    sub_100066DD8();
    v39 = v38;
    v85 = v16;
    v40 = v89 + 8;
    v86 = *(v89 + 8);
    v86(v13, v10);
    v93._countAndFlagsBits = v39;
    v41 = v23;
    v42 = v87;
    v43 = sub_100066E78();
    v79 = v44;
    v80 = v43;
    v45 = v90 + 8;
    v82 = *(v90 + 8);
    v82(v41, v42);
    sub_100006D64(v41);
    sub_100066F98();
    sub_100066EA8();
    v83 = v35;
    v46 = sub_100067E48();
    sub_100066E18();

    sub_100066DD8();
    v48 = v47;
    v49 = v13;
    v50 = v13;
    v51 = v10;
    v89 = v40;
    v86(v50, v10);
    v52 = v82;
    v93._countAndFlagsBits = v48;
    v53 = sub_100066E78();
    v55 = v54;
    v56 = v41;
    v57 = v42;
    v58 = v79;
    v90 = v45;
    v52(v41, v57);
    if (v80 == v53 && v58 == v55)
    {
    }

    else
    {
      v59 = sub_100068168();

      if ((v59 & 1) == 0)
      {
        sub_100066F98();
        sub_100066EA8();
        v69 = sub_100067E48();
        v61 = v51;
        v68 = v81;
        sub_100066E18();

        sub_100066DD8();
        v71 = v70;
        v86(v49, v51);
        v93._countAndFlagsBits = v71;
        v72 = v52;
        v73 = v56;
        sub_100006D64(v56);
        v80 = sub_100009748();
        v79 = sub_100009948();
        v74 = v87;
        sub_100067AF8();
        v72(v73, v74);
        v93 = v92;
        v95._countAndFlagsBits = 9666786;
        v95._object = 0xA300000000000000;
        sub_100067C48(v95);
        sub_100066F98();
        sub_100066EA8();
        v75 = sub_100067E48();
        v62 = v85;
        sub_100066E18();

        sub_100066DD8();
        v77 = v76;
        v66 = v86;
        v86(v49, v61);
        v91 = v77;
        sub_100006D64(v73);
        sub_100067AF8();
        v82(v73, v74);
        sub_100067C48(v92);

        v96._countAndFlagsBits = 45250;
        v96._object = 0xA200000000000000;
        sub_100067C48(v96);
        countAndFlagsBits = v93._countAndFlagsBits;
        goto LABEL_20;
      }
    }

    sub_100066F98();
    sub_100066EA8();
    v60 = sub_100067E48();
    v61 = v51;
    v62 = v85;
    sub_100066E18();

    sub_100066DD8();
    v64 = v63;
    v65 = v51;
    v66 = v86;
    v86(v49, v65);
    v93._countAndFlagsBits = v64;
    sub_100006D64(v56);
    sub_100009748();
    sub_100009948();
    v67 = v87;
    sub_100067AF8();
    v52(v56, v67);
    v93 = v92;
    v94._countAndFlagsBits = 45250;
    v94._object = 0xA200000000000000;
    sub_100067C48(v94);
    countAndFlagsBits = v93._countAndFlagsBits;
    v68 = v81;
LABEL_20:
    v66(v62, v61);
    v66(v68, v61);
    return countAndFlagsBits;
  }

  return 0x9380E29380E2;
}

uint64_t sub_100006D64@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_1000024F4(&qword_100080A60);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100066EC8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100066FB8();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000024F4(&qword_100080A88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  sub_100066F98();
  sub_100009748();
  sub_100066E88();
  sub_100009700(0, &qword_100080A80);
  sub_100066F98();
  sub_100066EA8();
  v11 = sub_100067E48();
  v12 = [objc_opt_self() celsius];
  sub_100067E88();

  sub_100066EB8();
  sub_100066E98();
  (*(v3 + 8))(v5, v2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100007020()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v18[1] = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000024F4(&qword_100080A58);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = sub_1000024F4(&qword_100080A60);
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000024F4(&qword_100080A68);
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000024F4(&qword_100080A70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  v18[0] = sub_1000024F4(&qword_100080A78);
  v11 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v13 = v18 - v12;
  v14 = [objc_opt_self() celsius];
  sub_100009700(0, &qword_100080A80);
  sub_100066DC8();
  sub_100066DF8();
  sub_100066EA8();
  sub_100006D64(v4);
  v15 = sub_1000024F4(&qword_100080A88);
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  sub_100066F98();
  sub_100066E08();
  v16 = sub_100066DE8();
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18[0]);
  return v16;
}

void sub_1000073D0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *a2;
  if (sub_100028364(*a2, a3))
  {
    if (qword_1000807A0 != -1)
    {
      swift_once();
    }

    v8 = sub_100067318();
    sub_1000026A8(v8, qword_100085CE8);
    v9 = v7;

    v10 = sub_1000672F8();
    v11 = sub_100067E08();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *&v32 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_10000D4F0(a4, a5, &v32);
      *(v12 + 12) = 2080;
      v13 = sub_100067E38();
      v15 = sub_10000D4F0(v13, v14, &v32);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "{%s} air quality sensor '%s' did not respond", v12, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  if (qword_1000807A0 != -1)
  {
    swift_once();
  }

  v16 = sub_100067318();
  sub_1000026A8(v16, qword_100085CE8);
  v17 = v7;

  v18 = sub_1000672F8();
  v19 = sub_100067E08();

  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_20;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v20 = 136315650;
  *(v20 + 4) = sub_10000D4F0(a4, a5, &v34);
  *(v20 + 12) = 2080;
  v22 = sub_100067E38();
  v24 = sub_10000D4F0(v22, v23, &v34);

  *(v20 + 14) = v24;
  *(v20 + 22) = 2112;
  if ([v17 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {
    sub_1000096A0(&v32, &qword_100080A28);
    goto LABEL_18;
  }

  sub_100009700(0, &qword_100080A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v25 = sub_100067BA8();
    goto LABEL_19;
  }

  v25 = v29;
LABEL_19:
  *(v20 + 24) = v25;
  *v21 = v25;
  _os_log_impl(&_mh_execute_header, v18, v19, "{%s} air quality sensor '%s' cached value is: %@", v20, 0x20u);
  sub_1000096A0(v21, &qword_100080CA0);

  swift_arrayDestroy();

LABEL_20:
  if ([v17 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (*(&v31 + 1))
  {
    sub_100009700(0, &qword_100080A30);
    if (swift_dynamicCast())
    {
      v26 = v34;
      v27 = [v34 integerValue];

      sub_1000024F4(&qword_100080A98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100068BF0;
      *(inited + 32) = v27;
      sub_10003F6B0(inited);
    }
  }

  else
  {
    sub_1000096A0(&v32, &qword_100080A28);
  }
}

void sub_1000078EC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6, const char *a7)
{
  v11 = *a2;
  if (sub_100028364(*a2, a3))
  {
    if (qword_1000807A0 != -1)
    {
      swift_once();
    }

    v12 = sub_100067318();
    sub_1000026A8(v12, qword_100085CE8);
    v13 = v11;

    v14 = sub_1000672F8();
    v15 = sub_100067E08();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *&v39 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10000D4F0(a4, a5, &v39);
      *(v16 + 12) = 2080;
      v17 = sub_100067E38();
      v19 = sub_10000D4F0(v17, v18, &v39);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, a7, v16, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  format = a6;
  if (qword_1000807A0 != -1)
  {
    swift_once();
  }

  v20 = sub_100067318();
  sub_1000026A8(v20, qword_100085CE8);
  v21 = v11;

  v22 = sub_1000672F8();
  v23 = sub_100067E08();

  if (!os_log_type_enabled(v22, v23))
  {

    goto LABEL_20;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  *v24 = 136315650;
  *(v24 + 4) = sub_10000D4F0(a4, a5, &v36);
  *(v24 + 12) = 2080;
  v26 = sub_100067E38();
  v28 = sub_10000D4F0(v26, v27, &v36);

  *(v24 + 14) = v28;
  *(v24 + 22) = 2112;
  if ([v21 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_1000096A0(&v39, &qword_100080A28);
    goto LABEL_18;
  }

  sub_100009700(0, &qword_100080A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v29 = sub_100067BA8();
    goto LABEL_19;
  }

  v29 = v35;
LABEL_19:
  *(v24 + 24) = v29;
  *v25 = v29;
  _os_log_impl(&_mh_execute_header, v22, v23, format, v24, 0x20u);
  sub_1000096A0(v25, &qword_100080CA0);

  swift_arrayDestroy();

LABEL_20:
  if ([v21 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    sub_100009700(0, &qword_100080A30);
    if (swift_dynamicCast())
    {
      v30 = v36;
      [v36 doubleValue];
      v32 = v31;

      sub_1000024F4(&qword_100080A38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100068BF0;
      *(inited + 32) = v32;
      sub_10003F5C4(inited);
    }
  }

  else
  {
    sub_1000096A0(&v39, &qword_100080A28);
  }
}

uint64_t sub_100007E24()
{
  sub_1000024F4(&qword_1000808D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100068F50;
  if (qword_100080760 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_100085BD0 + 1);
  v2 = qword_100085BE0;
  v3 = qword_100085BE8;
  v4 = xmmword_100085BF0;
  v5 = qword_100085C00;
  *(v0 + 32) = xmmword_100085BD0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;

  sub_1000026E0(*(&v4 + 1));
  if (qword_100080768 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_100085C08 + 1);
  v7 = qword_100085C18;
  v8 = unk_100085C20;
  v9 = xmmword_100085C28;
  v10 = qword_100085C38;
  *(v0 + 88) = xmmword_100085C08;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;
  *(v0 + 120) = v9;
  *(v0 + 136) = v10;

  sub_1000026E0(*(&v9 + 1));
  if (qword_100080770 != -1)
  {
    swift_once();
  }

  v11 = *(&xmmword_100085C40 + 1);
  v12 = qword_100085C50;
  v13 = qword_100085C58;
  v14 = xmmword_100085C60;
  v15 = qword_100085C70;
  *(v0 + 144) = xmmword_100085C40;
  *(v0 + 152) = v11;
  *(v0 + 160) = v12;
  *(v0 + 168) = v13;
  *(v0 + 176) = v14;
  *(v0 + 192) = v15;
  qword_100085BC8 = v0;

  return sub_1000026E0(*(&v14 + 1));
}

uint64_t sub_100008014()
{
  v16 = sub_100067228();
  v0 = *(v16 - 8);
  __chkstk_darwin(v16);
  v15 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0x800000010006C4B0;
  sub_1000024F4(&qword_100080A48);
  v2 = sub_1000670C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100068F50;
  v7 = v6 + v5;
  v8 = *(v3 + 104);
  v8(v7, enum case for ServiceKind.temperatureSensor(_:), v2);
  v8(v7 + v4, enum case for ServiceKind.thermostat(_:), v2);
  v8(v7 + 2 * v4, enum case for ServiceKind.heaterCooler(_:), v2);
  v10 = v15;
  v9 = v16;
  (*(v0 + 104))(v15, enum case for CharacteristicKind.currentTemperature(_:), v16);
  sub_1000024F4(&qword_100080A50);
  v11 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100068BF0;
  result = (*(v0 + 32))(v12 + v11, v10, v9);
  *&xmmword_100085BD0 = 0xD000000000000013;
  *(&xmmword_100085BD0 + 1) = v17;
  qword_100085BE0 = v6;
  qword_100085BE8 = _swiftEmptyArrayStorage;
  xmmword_100085BF0 = v12;
  qword_100085C00 = 0;
  return result;
}

uint64_t sub_1000082B0()
{
  v0 = sub_100067228();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_100080A48);
  v4 = sub_1000670C8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v11 = xmmword_100068BF0;
  *(v7 + 16) = xmmword_100068BF0;
  (*(v5 + 104))(v7 + v6, enum case for ServiceKind.airQualitySensor(_:), v4);
  (*(v1 + 104))(v3, enum case for CharacteristicKind.airQuality(_:), v0);
  sub_1000024F4(&qword_100080A50);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  result = (*(v1 + 32))(v9 + v8, v3, v0);
  *&xmmword_100085C08 = 0xD000000000000013;
  *(&xmmword_100085C08 + 1) = 0x800000010006C5C0;
  qword_100085C18 = v7;
  unk_100085C20 = &_swiftEmptyArrayStorage;
  qword_100085C38 = 0;
  xmmword_100085C28 = v9;
  return result;
}

uint64_t sub_1000084F0()
{
  v16 = sub_100067228();
  v0 = *(v16 - 8);
  __chkstk_darwin(v16);
  v15 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0x800000010006C450;
  sub_1000024F4(&qword_100080A48);
  v2 = sub_1000670C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100068F50;
  v7 = v6 + v5;
  v8 = *(v3 + 104);
  v8(v7, enum case for ServiceKind.humiditySensor(_:), v2);
  v8(v7 + v4, enum case for ServiceKind.thermostat(_:), v2);
  v8(v7 + 2 * v4, enum case for ServiceKind.humidifierDehumidifier(_:), v2);
  v10 = v15;
  v9 = v16;
  (*(v0 + 104))(v15, enum case for CharacteristicKind.currentRelativeHumidity(_:), v16);
  sub_1000024F4(&qword_100080A50);
  v11 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100068BF0;
  result = (*(v0 + 32))(v12 + v11, v10, v9);
  *&xmmword_100085C40 = 0xD000000000000010;
  *(&xmmword_100085C40 + 1) = v17;
  qword_100085C50 = v6;
  qword_100085C58 = _swiftEmptyArrayStorage;
  xmmword_100085C60 = v12;
  qword_100085C70 = 0;
  return result;
}

void *sub_10000878C(id a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_100080768 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v20 = xmmword_100085C08;
    v21 = *&qword_100085C18;
    v22 = xmmword_100085C28;
    v23 = qword_100085C38;
    if (a1)
    {
      v6 = [a1 accessories];
      sub_100009700(0, &qword_100080A10);
      v7 = sub_100067CA8();

      v24 = v20;
      v25 = v21;
      v8 = *(&v22 + 1);
      v26[0] = v22;
      sub_100009578(&v24, v18);
      sub_1000095D4(&v25, v18, &qword_100080A18);
      sub_1000095D4(&v25 + 8, v18, &qword_100080A18);
      sub_1000095D4(v26, v18, &qword_100080A20);
      sub_1000026E0(v8);
      v9 = sub_1000126F8(v7, &v20);
      sub_10000963C(&v24);
      sub_1000096A0(&v25, &qword_100080A18);
      sub_1000096A0(&v25 + 8, &qword_100080A18);
      sub_1000096A0(v26, &qword_100080A20);
      sub_100009690(v8);
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }

    v18[0] = &_swiftEmptyArrayStorage;
    if (v9 >> 62)
    {
      break;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_19;
    }

LABEL_7:
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        a1 = sub_100068058();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        a1 = *(v9 + 8 * v11 + 32);
      }

      v12 = a1;
      v13 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v19 = a1;
      sub_1000073D0(v18, &v19, a4, a2, a3);

      ++v11;
      if (v13 == v10)
      {
        v14 = v18[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  a1 = sub_1000680C8();
  v10 = a1;
  if (a1)
  {
    goto LABEL_7;
  }

LABEL_19:
  v14 = &_swiftEmptyArrayStorage;
LABEL_20:

  return v14;
}

uint64_t sub_100008A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v6 = *v2++;
      v5 = v6;
      if (v6 != 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000DAB8(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
        }

        v4 = *&_swiftEmptyArrayStorage[2];
        v3 = *&_swiftEmptyArrayStorage[3];
        if (v4 >= v3 >> 1)
        {
          sub_10000DAB8((v3 > 1), v4 + 1, 1);
        }

        *&_swiftEmptyArrayStorage[2] = v4 + 1;
        _swiftEmptyArrayStorage[v4 + 4] = v5;
      }

      --v1;
    }

    while (v1);
  }

  v7 = *&_swiftEmptyArrayStorage[2];
  if (!v7)
  {

    return 0;
  }

  sub_10000DA98(0, v7, 0);
  v8 = 0;
  v9 = *&_swiftEmptyArrayStorage[2];
  do
  {
    v10 = *&_swiftEmptyArrayStorage[v8 + 4];
    v11 = *&_swiftEmptyArrayStorage[3];
    if (v9 >= v11 >> 1)
    {
      sub_10000DA98((v11 > 1), v9 + 1, 1);
    }

    ++v8;
    *&_swiftEmptyArrayStorage[2] = v9 + 1;
    _swiftEmptyArrayStorage[v9++ + 4] = v10;
  }

  while (v7 != v8);

  v12 = *&_swiftEmptyArrayStorage[2];
  if (!v12)
  {
    v14 = 0.0;
    goto LABEL_25;
  }

  if (v12 <= 3)
  {
    v13 = 0;
    v14 = 0.0;
LABEL_23:
    v18 = v12 - v13;
    v19 = &_swiftEmptyArrayStorage[v13 + 4];
    do
    {
      v20 = *v19++;
      v14 = v14 + v20;
      --v18;
    }

    while (v18);
    goto LABEL_25;
  }

  v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  v16 = &_swiftEmptyArrayStorage[6];
  v14 = 0.0;
  v17 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v14 = v14 + *(v16 - 2) + *(v16 - 1) + *v16 + v16[1];
    v16 += 4;
    v17 -= 4;
  }

  while (v17);
  if (v12 != v13)
  {
    goto LABEL_23;
  }

LABEL_25:

  v21 = round(fmax(fmin(v14 / v7, 5.0), 1.0));
  if (v21 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v21 < 9.22337204e18)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100008CD4(uint64_t a1, char a2)
{
  v4 = 0x9380E29380E2;
  v5 = sub_100066FB8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100067B88();
  __chkstk_darwin(v6 - 8);
  if ((a2 & 1) == 0)
  {
    if (a1 <= 2)
    {
      if (a1 == 1 || a1 == 2)
      {
        goto LABEL_9;
      }
    }

    else if (a1 == 3 || a1 == 4 || a1 == 5)
    {
LABEL_9:
      sub_100067B38();
      sub_100066FA8();
      return sub_100067BE8();
    }
  }

  return v4;
}

double *sub_100008EA4(id a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_100080760 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v20 = xmmword_100085BD0;
    v21 = *&qword_100085BE0;
    v22 = xmmword_100085BF0;
    v23 = qword_100085C00;
    v4 = _swiftEmptyArrayStorage;
    if (a1)
    {
      v5 = [a1 accessories];
      sub_100009700(0, &qword_100080A10);
      v6 = sub_100067CA8();

      v24 = v20;
      v25 = v21;
      v7 = *(&v22 + 1);
      v26[0] = v22;
      sub_100009578(&v24, v18);
      sub_1000095D4(&v25, v18, &qword_100080A18);
      sub_1000095D4(&v25 + 8, v18, &qword_100080A18);
      sub_1000095D4(v26, v18, &qword_100080A20);
      sub_1000026E0(v7);
      v8 = sub_1000126F8(v6, &v20);
      sub_10000963C(&v24);
      sub_1000096A0(&v25, &qword_100080A18);
      sub_1000096A0(&v25 + 8, &qword_100080A18);
      sub_1000096A0(v26, &qword_100080A20);
      sub_100009690(v7);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_7:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        a1 = sub_100068058();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        a1 = *(v8 + 8 * v10 + 32);
      }

      v11 = a1;
      v12 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v19 = a1;
      sub_1000078EC(v18, &v19, a4, a2, a3, "{%s} temperature sensor '%s' cached value is: %@", "{%s} temperature sensor '%s' did not respond");

      ++v10;
      if (v12 == v9)
      {
        v4 = v18[0];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  a1 = sub_1000680C8();
  v9 = a1;
  if (a1)
  {
    goto LABEL_7;
  }

LABEL_15:

  return v4;
}

uint64_t sub_100009188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0x9380E29380E2;
  }

  if (v1 > 3)
  {
    v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    v5 = (a1 + 48);
    v3 = 0.0;
    v6 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v3 = v3 + *(v5 - 2) + *(v5 - 1) + *v5 + v5[1];
      v5 += 4;
      v6 -= 4;
    }

    while (v6);
    if (v1 == v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0.0;
  }

  v7 = v1 - v2;
  v8 = (a1 + 8 * v2 + 32);
  do
  {
    v9 = *v8++;
    v3 = v3 + v9;
    --v7;
  }

  while (v7);
LABEL_10:
  v10 = v3 / v1;
  if (v10 < 15.0)
  {
    return 0x656D6F6D72656874;
  }

  if (v10 >= 21.0)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000012;
}

double *sub_100009294(id a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_100080770 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v20 = xmmword_100085C40;
    v21 = *&qword_100085C50;
    v22 = xmmword_100085C60;
    v23 = qword_100085C70;
    v4 = _swiftEmptyArrayStorage;
    if (a1)
    {
      v5 = [a1 accessories];
      sub_100009700(0, &qword_100080A10);
      v6 = sub_100067CA8();

      v24 = v20;
      v25 = v21;
      v7 = *(&v22 + 1);
      v26[0] = v22;
      sub_100009578(&v24, v18);
      sub_1000095D4(&v25, v18, &qword_100080A18);
      sub_1000095D4(&v25 + 8, v18, &qword_100080A18);
      sub_1000095D4(v26, v18, &qword_100080A20);
      sub_1000026E0(v7);
      v8 = sub_1000126F8(v6, &v20);
      sub_10000963C(&v24);
      sub_1000096A0(&v25, &qword_100080A18);
      sub_1000096A0(&v25 + 8, &qword_100080A18);
      sub_1000096A0(v26, &qword_100080A20);
      sub_100009690(v7);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_7:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        a1 = sub_100068058();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        a1 = *(v8 + 8 * v10 + 32);
      }

      v11 = a1;
      v12 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v19 = a1;
      sub_1000078EC(v18, &v19, a4, a2, a3, "{%s} humidity sensor '%s' cached value is: %@", "{%s} humidity sensor '%s' did not respond");

      ++v10;
      if (v12 == v9)
      {
        v4 = v18[0];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  a1 = sub_1000680C8();
  v9 = a1;
  if (a1)
  {
    goto LABEL_7;
  }

LABEL_15:

  return v4;
}

uint64_t sub_1000095D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000024F4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009690(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000096A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000024F4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009700(uint64_t a1, unint64_t *a2)
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

unint64_t sub_100009748()
{
  result = qword_100080A90;
  if (!qword_100080A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080A90);
  }

  return result;
}

uint64_t sub_10000979C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_27;
  }

  v2 = *(result + 32);
  v3 = v2;
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = (result + 40);
    v3 = *(result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 < v3)
      {
        v3 = v7;
      }

      --v4;
    }

    while (v4);
  }

  v8 = round(v3);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = v1 - 1;
  if (v9)
  {
    v10 = (result + 40);
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v2 < v11)
      {
        v2 = v12;
      }

      --v9;
    }

    while (v9);
  }

  v13 = round(v2);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (*&v8 == *&v13)
  {
    return sub_100068148();
  }

  v14 = sub_100068148();
  v15._countAndFlagsBits = 9666786;
  v15._object = 0xA300000000000000;
  sub_100067C48(v15);
  v16._countAndFlagsBits = sub_100068148();
  sub_100067C48(v16);

  return v14;
}

unint64_t sub_100009948()
{
  result = qword_100080AA0;
  if (!qword_100080AA0)
  {
    sub_10000253C(&qword_100080A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080AA0);
  }

  return result;
}

uint64_t LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1000099D4, 0, 0);
}

uint64_t sub_1000099D4()
{
  v27 = v0;
  if (qword_100080790 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_100067318();
  sub_1000026A8(v2, qword_100085CB8);
  v3 = v1;

  v4 = sub_1000672F8();
  v5 = sub_100067DD8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10000D4F0(v7, v6, &v26);
    *(v9 + 12) = 2080;
    if (v8)
    {
      v10 = [v3 name];
      v11 = sub_100067BC8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE400000000000000;
      v11 = 1819047278;
    }

    v14 = sub_10000D4F0(v11, v13, &v26);

    *(v9 + 14) = v14;
    swift_arrayDestroy();
  }

  if (v0[4])
  {
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];
    v18 = v0[3];
    v19 = swift_task_alloc();
    v0[8] = v19;
    v19[2] = v15;
    v19[3] = v18;
    v19[4] = v3;
    v19[5] = v17;
    v19[6] = v16;
    v20 = v3;
    v21 = swift_task_alloc();
    v0[9] = v21;
    v22 = sub_1000024F4(&qword_100080AA8);
    *v21 = v0;
    v21[1] = sub_100009D2C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002CLL, 0x800000010006C670, sub_1000126E8, v19, v22);
  }

  else
  {
    if (_swiftEmptyArrayStorage >> 62 && sub_1000680C8())
    {
      sub_1000123F8(_swiftEmptyArrayStorage);
    }

    else
    {
      v23 = &_swiftEmptySetSingleton;
    }

    v24 = v0[1];

    return v24(v23);
  }
}

uint64_t sub_100009D2C()
{

  return _swift_task_switch(sub_100009E44, 0, 0);
}

uint64_t sub_100009E44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_100009EA8(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100067F88();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_10000DAD8(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = sub_100067F38();
    }

    else
    {
      v3 = sub_100067F08();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1000120F4(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 description];
        v14 = sub_100067BC8();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 2);
        v18 = *(v36 + 3);
        if (v19 >= v18 >> 1)
        {
          sub_10000DAD8((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 2) = v19 + 1;
        v20 = &v17[2 * v19];
        *(v20 + 4) = v14;
        *(v20 + 5) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_100067F58())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1000024F4(&qword_100080B78);
          v6 = sub_100067D48();
          sub_100067FD8();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1000141B8(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1000141B8(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1000141B8(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

double *LockScreenDataModel.characteristics(matching:for:filterOutHiddenStatusAccessories:)(uint64_t a1, id a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = [a2 accessories];
  sub_100009700(0, &qword_100080A10);
  v4 = sub_100067CA8();

  v13 = *a1;
  v5 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = v5;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  sub_100009578(&v13, v9);
  sub_1000095D4(&v12, v9, &qword_100080A18);
  sub_1000095D4(&v11, v9, &qword_100080A18);
  sub_1000095D4(&v10, v9, &qword_100080A20);
  sub_1000026E0(v6);
  v7 = sub_1000126F8(v4, a1);
  sub_10000963C(&v13);
  sub_1000096A0(&v12, &qword_100080A18);
  sub_1000096A0(&v11, &qword_100080A18);
  sub_1000096A0(&v10, &qword_100080A20);
  sub_100009690(v6);

  return v7;
}

uint64_t CharacteristicFetchSpecification.init(loggingName:serviceKinds:associatedServiceKinds:characteristicKind:processingBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_1000024F4(&qword_100080A50);
  v14 = sub_100067228();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100068BF0;
  result = (*(v15 + 32))(v17 + v16, a5, v14);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = v17;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t CharacteristicFetchSpecification.init(loggingName:serviceKinds:associatedServiceKinds:characteristicKinds:processingBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_10000A4E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v18[1] = a2;
  v11 = sub_1000024F4(&qword_100080BB0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - v13;
  (*(v12 + 16))(v18 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  (*(v12 + 32))(v16 + v15, v14, v11);

  LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:completion:)(a3, a4, a5, a6, sub_100014358, v16);
}

uint64_t sub_10000A664(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_100080790 != -1)
  {
    swift_once();
  }

  v8 = sub_100067318();
  sub_1000026A8(v8, qword_100085CB8);

  v9 = sub_1000672F8();
  v10 = sub_100067DD8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000D4F0(a3, a4, &v24);
    sub_1000026F0(v12);
  }

  if (a1)
  {

    swift_errorRetain();
    v13 = sub_1000672F8();
    v14 = sub_100067DD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_10000D4F0(a3, a4, &v24);
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v16 = sub_1000681A8();
      v18 = sub_10000D4F0(v16, v17, &v24);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "...{%s} returned error %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {

    v19 = sub_1000672F8();
    v20 = sub_100067DD8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10000D4F0(a3, a4, &v24);
      _os_log_impl(&_mh_execute_header, v19, v20, "...{%s} returned NO error", v21, 0xCu);
      sub_1000026F0(v22);
    }
  }

  v24 = a2;

  sub_1000024F4(&qword_100080BB0);
  return sub_100067D08();
}

uint64_t LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:completion:)(unint64_t a1, uint64_t *a2, uint64_t a3, id a4, __objc2_class_ro *a5, uint64_t a6)
{
  v130 = a6;
  v135 = a2;
  v10 = sub_100066F38();
  v126 = *(v10 - 8);
  __chkstk_darwin(v10);
  v133 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100080790 != -1)
  {
LABEL_61:
    swift_once();
  }

  v12 = sub_100067318();
  v13 = sub_1000026A8(v12, qword_100085CB8);

  v14 = sub_1000672F8();
  v15 = sub_100067DD8();

  v16 = os_log_type_enabled(v14, v15);
  v134 = a3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = a1;
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000D4F0(a3, a4, &aBlock);
    sub_1000026F0(v19);
    a1 = v18;
  }

  v128 = v13;
  v20 = sub_1000672F8();
  a3 = sub_100067DD8();

  v21 = os_log_type_enabled(v20, a3);
  v132 = a4;
  v129 = a5;
  v127 = v10;
  if (v21)
  {
    v22 = a4;
    v23 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    aBlock = v124;
    *v23 = 136315394;
    *(v23 + 4) = sub_10000D4F0(v134, v22, &aBlock);
    *(v23 + 12) = 2080;
    v24 = a1;
    v25 = *(a1 + 16);
    v26 = _swiftEmptyArrayStorage;
    v125 = v24;
    if (v25)
    {
      LODWORD(v123) = a3;
      v136[0] = _swiftEmptyArrayStorage;
      sub_10000DAD8(0, v25, 0);
      v26 = v136[0];
      v27 = (v24 + 40);
      do
      {
        v29 = *(v27 - 1);
        v28 = *v27;
        v136[0] = v26;
        v31 = *(v26 + 2);
        v30 = *(v26 + 3);

        if (v31 >= v30 >> 1)
        {
          sub_10000DAD8((v30 > 1), v31 + 1, 1);
          v26 = v136[0];
        }

        *(v26 + 2) = v31 + 1;
        v32 = &v26[2 * v31];
        *(v32 + 4) = v29;
        *(v32 + 5) = v28;
        v27 += 7;
        --v25;
      }

      while (v25);
      a5 = v129;
      a3 = v123;
    }

    v136[0] = v26;
    sub_1000024F4(&qword_100080AB8);
    sub_1000141C4(&qword_100080AC0, &qword_100080AB8);
    v33 = sub_100067B18();
    v35 = v34;

    v36 = sub_10000D4F0(v33, v35, &aBlock);

    *(v23 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v20, a3, "...{%s} will process fetch specifications %s", v23, 0x16u);
    swift_arrayDestroy();

    a4 = v132;
    a1 = v125;
  }

  else
  {
  }

  v37 = v131;
  v38 = v135;
  a1 = sub_1000134D4(a1, v38);

  v131 = v38;
  v39 = v134;
  if (!(a1 >> 62))
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_15;
    }

LABEL_63:

    if (_swiftEmptyArrayStorage >> 62)
    {
      if (sub_1000680C8())
      {
        sub_1000123F8(_swiftEmptyArrayStorage);
        v115 = v116;
      }

      else
      {
        v115 = &_swiftEmptySetSingleton;
      }
    }

    else
    {
      v115 = &_swiftEmptySetSingleton;
    }

    (a5)(0, v115);
  }

  v40 = sub_1000680C8();
  if (!v40)
  {
    goto LABEL_63;
  }

LABEL_15:
  v123 = a1 >> 62;
  v41 = 0;
  v10 = a1 & 0xC000000000000001;
  v135 = (a1 & 0xFFFFFFFFFFFFFF8);
  do
  {
    if (v10)
    {
      v42 = sub_100068058();
    }

    else
    {
      if (v41 >= v135[2])
      {
        goto LABEL_58;
      }

      v42 = *(a1 + 8 * v41 + 32);
    }

    v43 = v42;
    a3 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    aBlock = v42;
    sub_10000BBFC(&aBlock, v39, a4, a1);

    ++v41;
  }

  while (a3 != v40);
  v44 = 0;
  aBlock = _swiftEmptyArrayStorage;
  a5 = &LockScreenDataModel;
  while (v40 != v44)
  {
    if (v10)
    {
      v45 = sub_100068058();
    }

    else
    {
      if (v44 >= v135[2])
      {
        goto LABEL_60;
      }

      v45 = *(a1 + 8 * v44 + 32);
    }

    v46 = v45;
    a3 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_59;
    }

    a4 = [objc_opt_self() readRequestWithCharacteristic:v45];

    ++v44;
    v39 = v134;
    if (a4)
    {
      sub_100067C88();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100067CC8();
      }

      sub_100067CE8();
      v44 = a3;
    }
  }

  sub_100009700(0, &qword_100080AB0);
  isa = sub_100067C98().super.isa;

  v48 = [objc_opt_self() characteristicBatchRequestWithReadRequests:isa];

  v49 = v132;
  if (!v48)
  {

    if (_swiftEmptyArrayStorage >> 62 && sub_1000680C8())
    {
      sub_1000123F8(_swiftEmptyArrayStorage);
      v85 = v117;
    }

    else
    {
      v85 = &_swiftEmptySetSingleton;
    }

    (v129)(0, v85);
  }

  v50 = swift_allocObject();

  v52 = sub_100013930(v51);

  *(v50 + 16) = v52;
  v122 = v50 + 16;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v120 = v53 + 16;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v118 = v54 + 16;
  v55 = swift_allocObject();
  v55[2] = v50;
  v55[3] = v39;
  v55[4] = v49;
  v55[5] = v54;
  v141 = sub_100013B00;
  v142 = v55;
  aBlock = _NSConcreteStackBlock;
  v138 = 1107296256;
  v139 = sub_10000C920;
  v140 = &unk_10007E480;
  v56 = _Block_copy(&aBlock);

  v125 = v50;

  v124 = v54;

  [v48 setProgressHandler:v56];
  _Block_release(v56);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  v58 = (v57 + 16);
  v59 = swift_allocObject();
  *(v59 + 16) = v53;
  *(v59 + 24) = v57;
  v141 = sub_100013B74;
  v142 = v59;
  aBlock = _NSConcreteStackBlock;
  v138 = 1107296256;
  v139 = sub_10000CA2C;
  v140 = &unk_10007E4F8;
  v60 = _Block_copy(&aBlock);
  v119 = v53;

  [v48 setCompletionHandler:v60];
  _Block_release(v60);

  v61 = sub_1000672F8();
  v62 = sub_100067DD8();

  v63 = os_log_type_enabled(v61, v62);
  v121 = v57;
  if (v63)
  {
    v64 = v48;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_10000D4F0(v134, v132, &aBlock);
    sub_1000026F0(v66);
    v39 = v134;

    v48 = v64;
  }

  v67 = v127;
  v68 = v131;
  v131 = v48;
  [v68 performBatchCharacteristicRequest:v48];
  v69 = v133;
  sub_100066F28();
  sub_100066EF8();
  v71 = v70;
  v72 = *(v126 + 8);
  v72(v69, v67);
  swift_beginAccess();
  while (1)
  {
    v73 = v133;
    sub_100066F28();
    sub_100066EF8();
    v75 = v74;
    v72(v73, v67);
    if (v75 - v71 >= 10.0)
    {
      break;
    }

    [objc_opt_self() sleepForTimeInterval:0.02];
    if (*v58 == 1)
    {
      v76 = v132;

      v77 = v125;

      v78 = sub_1000672F8();
      v79 = sub_100067DD8();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v136[0] = v128;
        *v80 = 136315906;
        *(v80 + 4) = sub_10000D4F0(v134, v76, v136);
        *(v80 + 12) = 2048;
        v81 = v133;
        sub_100066F28();
        sub_100066EF8();
        v83 = v82;
        v72(v81, v67);
        *(v80 + 14) = v83 - v71;
        *(v80 + 22) = 2048;
        if (v123)
        {
          v84 = sub_1000680C8();
        }

        else
        {
          v84 = v135[2];
        }

        v96 = v131;
        v97 = v125;
        v98 = v119;

        *(v80 + 24) = v84;

        *(v80 + 32) = 2080;
        swift_beginAccess();

        sub_100009EA8(v107);

        v108 = sub_100067CB8();
        v110 = v109;

        v111 = sub_10000D4F0(v108, v110, v136);

        *(v80 + 34) = v111;
        _os_log_impl(&_mh_execute_header, v78, v79, "...{%s} fetch completed in %fs, got %ld results, nilCharacteristics = %s", v80, 0x2Au);
        swift_arrayDestroy();

        v95 = v129;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v95 = v129;
        v96 = v131;
        v97 = v77;
        v98 = v119;
      }

      swift_beginAccess();
      v112 = *(v98 + 16);
      swift_beginAccess();
      v113 = *(v97 + 16);
      swift_errorRetain();

      (v95)(v112, v113);

      goto LABEL_56;
    }
  }

  v86 = v132;

  v87 = v125;

  v88 = v124;

  v89 = sub_1000672F8();
  v90 = sub_100067DD8();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v136[0] = swift_slowAlloc();
    *v91 = 136316162;
    *(v91 + 4) = sub_10000D4F0(v39, v86, v136);
    *(v91 + 12) = 2048;
    *(v91 + 14) = 0x4024000000000000;
    *(v91 + 22) = 2048;
    swift_beginAccess();
    *(v91 + 24) = v88[2];

    *(v91 + 32) = 2048;
    v92 = v129;
    if (v123)
    {
      v93 = sub_1000680C8();
    }

    else
    {
      v93 = v135[2];
    }

    *(v91 + 34) = v93;

    *(v91 + 42) = 2080;
    swift_beginAccess();
    v99 = v125;

    sub_100009EA8(v100);

    v101 = sub_100067CB8();
    v103 = v102;

    v104 = sub_10000D4F0(v101, v103, v136);

    *(v91 + 44) = v104;
    _os_log_impl(&_mh_execute_header, v89, v90, "...{%s} fetch timed out after %fs, got %ld results of %ld requested, nilCharacteristics = %s", v91, 0x34u);
    swift_arrayDestroy();
    v87 = v99;

    v94 = v131;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v92 = v129;
    v94 = v131;
  }

  swift_beginAccess();
  v105 = *(v119 + 16);
  swift_beginAccess();
  v106 = *(v87 + 16);
  swift_errorRetain();

  (v92)(v105, v106);

LABEL_56:
}

void sub_10000BBFC(void **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (qword_100080790 != -1)
  {
    swift_once();
  }

  v8 = sub_100067318();
  sub_1000026A8(v8, qword_100085CB8);
  v9 = v7;

  v10 = sub_1000672F8();
  v11 = sub_100067DD8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315906;
    *(v12 + 4) = sub_10000D4F0(a2, a3, &v24);
    *(v12 + 12) = 2048;
    v13 = sub_10000BE48(v9, a4);
    if (v14)
    {
      v15 = -1;
    }

    else
    {
      v15 = v13;
    }

    *(v12 + 14) = v15;

    *(v12 + 22) = 2080;
    v16 = sub_100067E38();
    v18 = sub_10000D4F0(v16, v17, &v24);

    *(v12 + 24) = v18;
    *(v12 + 32) = 2080;
    v19 = [v9 localizedDescription];
    v20 = sub_100067BC8();
    v22 = v21;

    v23 = sub_10000D4F0(v20, v22, &v24);

    *(v12 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "...{%s} [%ld] will fetch accessory '%s' characteristic: '%s'", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

unint64_t sub_10000BE48(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1000680C8();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_100068058();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_100009700(0, &qword_100080B50);
    v8 = sub_100067E88();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10000BF58()
{
  v0 = sub_1000673C8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000673E8();
  sub_100013F64(&qword_100080BD8, &type metadata accessor for LayoutSubviews);
  sub_100067D78();
  if ((v11 & 1) == 0)
  {
    return v10;
  }

  sub_100067D68();
  sub_100067D98();
  v4 = v12;
  if (v12 == v10)
  {
    return 0;
  }

  v5 = (v1 + 16);
  v6 = (v1 + 8);
  while (1)
  {
    v7 = sub_100067DB8();
    (*v5)(v3);
    (v7)(&v10, 0);
    sub_100013F64(&unk_100080BE0, &type metadata accessor for LayoutSubview);
    LOBYTE(v7) = sub_100067B28();
    (*v6)(v3, v0);
    if (v7)
    {
      break;
    }

    sub_100067DA8();
    sub_100067D98();
    v4 = v12;
    if (v12 == v10)
    {
      return 0;
    }
  }

  return v4;
}

void sub_10000C1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009700(0, &qword_100080B50);
  sub_100014148();
  v18[1] = sub_100067D38();
  sub_100012318(a1, a2, a3, v19);
  v6 = v19[0];
  v7 = v19[1];
  v8 = v19[3];
  v9 = v19[4];
  v16 = v19[5];
  v10 = (v19[2] + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_100067FB8() || (swift_dynamicCast(), v15 = v17, v13 = v8, v14 = v9, !v17))
    {
LABEL_15:
      sub_1000141B0();

      return;
    }

LABEL_13:
    v18[0] = v15;
    if (v16(v18))
    {
      sub_10000E90C(v18, v15);
    }

    else
    {
    }

    v8 = v13;
    v9 = v14;
  }

  v11 = v8;
  v12 = v9;
  v13 = v8;
  if (v9)
  {
LABEL_9:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v6 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_15;
    }

    v12 = *(v7 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10000C398(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{

  sub_100013CC0(a1, a2 + 16, a3, a4, a5);

  if (qword_100080790 != -1)
  {
    swift_once();
  }

  v10 = sub_100067318();
  sub_1000026A8(v10, qword_100085CB8);

  v11 = sub_1000672F8();
  v12 = sub_100067DD8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_10000D4F0(a3, a4, &v15);
    *(v13 + 12) = 2048;
    swift_beginAccess();
    *(v13 + 14) = *(a5 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "...{%s} fetch progress - %ld", v13, 0x16u);
    sub_1000026F0(v14);
  }

  else
  {
  }
}

uint64_t sub_10000C598(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if ([*a1 value])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = [v8 request];
      v11 = [v10 characteristic];

      swift_beginAccess();
      v12 = sub_100011B4C(v11);
      swift_endAccess();
    }
  }

  if (qword_100080790 != -1)
  {
    swift_once();
  }

  v13 = sub_100067318();
  sub_1000026A8(v13, qword_100085CB8);

  v14 = v8;

  v15 = sub_1000672F8();
  v16 = sub_100067DD8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v26[0] = v27;
    *v17 = 136315906;
    *(v17 + 4) = sub_10000D4F0(a3, a4, v26);
    *(v17 + 12) = 2048;
    swift_beginAccess();
    *(v17 + 14) = *(a5 + 16);

    *(v17 + 22) = 2112;
    v19 = [v14 request];
    v20 = [v19 characteristic];

    *(v17 + 24) = v20;
    *v18 = v20;
    *(v17 + 32) = 2112;
    if ([v14 value])
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
LABEL_11:
        *(v17 + 34) = v21;
        v18[1] = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "...{%s} [%ld] fetched characteristic '%@' response %@", v17, 0x2Au);
        sub_1000024F4(&qword_100080CA0);
        swift_arrayDestroy();

        sub_1000026F0(v27);

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v21 = sub_100067BA8();
    goto LABEL_11;
  }

LABEL_13:
  result = swift_beginAccess();
  v23 = *(a5 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v25;
  }

  return result;
}

uint64_t sub_10000C920(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009700(0, &qword_100080B80);
  v2 = sub_100067CA8();

  v1(v2);
}

uint64_t sub_10000C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  swift_errorRetain();

  result = swift_beginAccess();
  *(a3 + 16) = 1;
  return result;
}

void sub_10000CA2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10000CA98@<X0>(id *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = sub_100067228();
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a1;
  v9 = *(a2 + 32);
  v53 = &_swiftEmptyArrayStorage;
  v10 = *(v9 + 16);
  if (v10)
  {
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v46 = *(v11 + 56);
    v47 = v12;
    v48 = &_swiftEmptyArrayStorage;
    v14 = (v11 - 8);
    do
    {
      v15 = v11;
      v47(v8, v13, v5);
      v16 = [v49 characteristics];
      sub_100009700(0, &qword_100080B50);
      v17 = sub_100067CA8();

      __chkstk_darwin(v18);
      *(&v41 - 2) = v8;
      v19 = v50;
      v20 = sub_100020590(sub_10001420C, (&v41 - 4), v17);
      v50 = v19;

      (*v14)(v8, v5);
      if (v20)
      {
        sub_100067C88();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100067CC8();
        }

        sub_100067CE8();
        v48 = v53;
      }

      v13 += v46;
      --v10;
      v11 = v15;
    }

    while (v10);
  }

  else
  {
    v48 = &_swiftEmptyArrayStorage;
  }

  v53 = &_swiftEmptyArrayStorage;
  v21 = v48;
  if (v48 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000680C8())
  {
    v23 = 0;
    v46 = v21 & 0xFFFFFFFFFFFFFF8;
    v47 = (v21 & 0xC000000000000001);
    v43 = "eInHomeStatusKey";
    v44 = "v16@?0@NSError8";
    v24 = &LockScreenDataModel;
    v45 = i;
    while (1)
    {
      if (v47)
      {
        v25 = sub_100068058();
      }

      else
      {
        if (v23 >= *(v46 + 16))
        {
          goto LABEL_31;
        }

        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v28 = [v25 service];
      if (v28)
      {
        v29 = v28;
        v49 = v26;
        v30 = [v28 v24[15].name];
        v31 = v24;
        v32 = sub_100067BA8();
        v33 = [v30 objectForKeyedSubscript:v32];

        v34 = [v29 accessory];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 v31[15].name];
          v37 = sub_100067BA8();
          v38 = [v36 objectForKeyedSubscript:v37];

          v21 = v48;
          v39 = v49;
          if (v33)
          {
            v52 = v33;
            sub_1000024F4(&qword_100080BA0);
            if ((swift_dynamicCast() & 1) != 0 && (v51 & 1) == 0)
            {

              swift_unknownObjectRelease();
              i = v45;
              v24 = &LockScreenDataModel;
              goto LABEL_14;
            }
          }

          i = v45;
          v24 = &LockScreenDataModel;
          if (v38)
          {
            v52 = v38;
            sub_1000024F4(&qword_100080BA0);
            if (swift_dynamicCast())
            {
              if ((v51 & 1) == 0)
              {

                goto LABEL_14;
              }
            }
          }
        }

        else
        {

          swift_unknownObjectRelease();
          i = v45;
          v24 = v31;
        }
      }

      sub_100068088();
      sub_1000680A8();
      sub_1000680B8();
      sub_100068098();
LABEL_14:
      ++v23;
      if (v27 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  *v42 = v53;
  return result;
}

void LockScreenDataModel.characteristics(matching:from:)(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = v2;
  v3 = *(a1 + 5);
  v8 = *(a1 + 4);
  v4 = swift_allocObject();
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = a1[2];
  *(v4 + 64) = *(a1 + 6);
  sub_100009578(&v11, v7);
  sub_1000095D4(&v10, v7, &qword_100080A18);
  sub_1000095D4(&v9, v7, &qword_100080A18);
  sub_1000095D4(&v8, v7, &qword_100080A20);
  sub_1000026E0(v3);

  sub_10000C1C8(v6, sub_100013BDC, v4);
}

BOOL sub_10000D0E4(id *a1, uint64_t a2)
{
  v4 = sub_1000024F4(&qword_100080B68);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = sub_1000670C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = [*a1 service];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v32 = v14;
  v33 = v7;
  v19 = [v17 serviceType];
  sub_100067BC8();

  sub_100067C18();

  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    (*(v11 + 104))(v16, enum case for ServiceKind.null(_:), v10);
    if (v20(v9, 1, v10) != 1)
    {
      sub_1000096A0(v9, &qword_100080B68);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = sub_10003F378(v16, *(a2 + 16));
  v22 = *(v11 + 8);
  v22(v16, v10);
  if (!v21)
  {

    return 0;
  }

  v23 = *(a2 + 24);
  if (*(v23 + 16))
  {
    v24 = [v18 associatedServiceType];
    if (v24)
    {
      v25 = v24;
      sub_100067BC8();
      v31 = v23;

      v26 = v33;
      sub_100067C18();
      v23 = v31;

      if (v20(v26, 1, v10) != 1)
      {
        v27 = v32;
        (*(v11 + 32))(v32, v26, v10);
LABEL_17:
        v28 = sub_10003F378(v27, v23);

        v22(v27, v10);
        return v28;
      }
    }

    else
    {
      v26 = v33;
      (*(v11 + 56))(v33, 1, 1, v10);
    }

    v27 = v32;
    (*(v11 + 104))(v32, enum case for ServiceKind.null(_:), v10);
    if (v20(v26, 1, v10) != 1)
    {
      sub_1000096A0(v26, &qword_100080B68);
    }

    goto LABEL_17;
  }

  return 1;
}

unint64_t sub_10000D4F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000D5BC(v11, 0, 0, 1, a1, a2);
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
    sub_10001422C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000026F0(v11);
  return v7;
}

unint64_t sub_10000D5BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000D6C8(a5, a6);
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
    result = sub_100068078();
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

char *sub_10000D6C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D714(a1, a2);
  sub_10000D844(&off_10007E0C0);
  return v3;
}

char *sub_10000D714(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000D930(v5, 0);
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

  result = sub_100068078();
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
        v10 = sub_100067C58();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000D930(v10, 0);
        result = sub_100068028();
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

uint64_t sub_10000D844(uint64_t result)
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

  result = sub_10000D9A4(result, v11, 1, v3);
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

void *sub_10000D930(uint64_t a1, uint64_t a2)
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

  sub_1000024F4(&qword_100080BA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000D9A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024F4(&qword_100080BA8);
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

char *sub_10000DA98(char *a1, int64_t a2, char a3)
{
  result = sub_10000DCC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000DAB8(char *a1, int64_t a2, char a3)
{
  result = sub_10000DDCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_10000DAD8(double *a1, int64_t a2, char a3)
{
  result = sub_10000DED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_10000DAF8(double *a1, int64_t a2, char a3)
{
  result = sub_10000DFDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000DB18(size_t a1, int64_t a2, char a3)
{
  result = sub_10000E730(a1, a2, a3, *v3, &qword_100080B00, &unk_1000690B0, &type metadata accessor for StaticService);
  *v3 = result;
  return result;
}

double *sub_10000DB5C(double *a1, int64_t a2, char a3)
{
  result = sub_10000E0E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000DB7C(size_t a1, int64_t a2, char a3)
{
  result = sub_10000E730(a1, a2, a3, *v3, &qword_100080B18, &unk_1000690C8, &type metadata accessor for StaticHome);
  *v3 = result;
  return result;
}

size_t sub_10000DBC0(size_t a1, int64_t a2, char a3)
{
  result = sub_10000E200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000DBE0(size_t a1, int64_t a2, char a3)
{
  result = sub_10000E730(a1, a2, a3, *v3, &qword_100080AC8, &unk_10006B170, type metadata accessor for SecurityIntentAccessoryAppEntity);
  *v3 = result;
  return result;
}

double *sub_10000DC24(double *a1, int64_t a2, char a3)
{
  result = sub_10000E3F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_10000DC44(double *a1, int64_t a2, char a3)
{
  result = sub_10000E538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_10000DC64(double *a1, int64_t a2, char a3)
{
  result = sub_10000E62C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000DC84(size_t a1, int64_t a2, char a3)
{
  result = sub_10000E730(a1, a2, a3, *v3, &qword_100080BD0, &unk_100069158, &type metadata accessor for LayoutSubview);
  *v3 = result;
  return result;
}

char *sub_10000DCC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024F4(&qword_100080A38);
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

char *sub_10000DDCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024F4(&qword_100080A98);
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

double *sub_10000DED0(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_1000024F4(&qword_100080B70);
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

double *sub_10000DFDC(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_1000024F4(&qword_100080BB8);
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

double *sub_10000E0E0(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_1000024F4(&qword_100080AE0);
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

size_t sub_10000E200(size_t result, int64_t a2, char a3, unint64_t a4)
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

  sub_1000024F4(&qword_100080B08);
  v10 = *(sub_1000024F4(&qword_100080B10) - 8);
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
  v15 = *(sub_1000024F4(&qword_100080B10) - 8);
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

double *sub_10000E3F0(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000024F4(&qword_100080AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000024F4(&qword_100080AD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000E538(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_1000024F4(&qword_100080BC0);
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

double *sub_10000E62C(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_1000024F4(&qword_100080BC8);
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

size_t sub_10000E730(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1000024F4(a5);
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

uint64_t sub_10000E90C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100067F98();

    if (v9)
    {

      sub_100009700(0, &qword_100080B50);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_100067F88();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10000F3E4(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_10000F5D4();
    }

    v18 = v8;
    sub_100010210(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009700(0, &qword_100080B50);
  v11 = sub_100067E78(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_100010294(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100067E88();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_10000EB44(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100067228();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100013F64(&qword_100080B38, &type metadata accessor for CharacteristicKind);
  v33 = a2;
  v11 = sub_100067B08();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100013F64(&qword_100080B40, &type metadata accessor for CharacteristicKind);
      v21 = sub_100067B28();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100010404(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10000EE24(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000670C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100013F64(&qword_100080AE8, &type metadata accessor for ServiceKind);
  v33 = a2;
  v11 = sub_100067B08();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100013F64(&qword_100080AF0, &type metadata accessor for ServiceKind);
      v21 = sub_100067B28();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000106CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10000F104(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100066F88();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100013F64(&qword_100080B20, &type metadata accessor for UUID);
  v33 = a2;
  v11 = sub_100067B08();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100013F64(&qword_100080B28, &type metadata accessor for UUID);
      v21 = sub_100067B28();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100010994(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_10000F3E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000024F4(&qword_100080B60);
    v2 = sub_100068008();
    v14 = v2;
    sub_100067F48();
    if (sub_100067FB8())
    {
      sub_100009700(0, &qword_100080B50);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_10000F5D4();
        }

        v2 = v14;
        result = sub_100067E78(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_100067FB8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10000F5D4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000024F4(&qword_100080B60);
  result = sub_100067FF8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_100067E78(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10000F7FC()
{
  v1 = v0;
  v35 = sub_100067228();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000024F4(&qword_100080B48);
  result = sub_100067FF8();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100013F64(&qword_100080B38, &type metadata accessor for CharacteristicKind);
      result = sub_100067B08();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10000FB58()
{
  v1 = v0;
  v35 = sub_1000670C8();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000024F4(&qword_100080AF8);
  result = sub_100067FF8();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100013F64(&qword_100080AE8, &type metadata accessor for ServiceKind);
      result = sub_100067B08();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10000FEB4()
{
  v1 = v0;
  v35 = sub_100066F88();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000024F4(&qword_100080B30);
  result = sub_100067FF8();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100013F64(&qword_100080B20, &type metadata accessor for UUID);
      result = sub_100067B08();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_100010210(uint64_t a1, void *a2)
{
  sub_100067E78(a2[5]);
  result = sub_100067F28();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100010294(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000F5D4();
  }

  else
  {
    if (v7 > v6)
    {
      sub_100010C5C();
      goto LABEL_12;
    }

    sub_100010FE4();
  }

  v8 = *v3;
  v9 = sub_100067E78(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009700(0, &qword_100080B50);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100067E88();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100068188();
  __break(1u);
}

uint64_t sub_100010404(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_100067228();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000F7FC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100010DAC(&type metadata accessor for CharacteristicKind, &qword_100080B48);
      goto LABEL_12;
    }

    sub_1000111F8();
  }

  v12 = *v3;
  sub_100013F64(&qword_100080B38, &type metadata accessor for CharacteristicKind);
  v13 = sub_100067B08();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100013F64(&qword_100080B40, &type metadata accessor for CharacteristicKind);
      v21 = sub_100067B28();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100068188();
  __break(1u);
  return result;
}

uint64_t sub_1000106CC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1000670C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000FB58();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100010DAC(&type metadata accessor for ServiceKind, &qword_100080AF8);
      goto LABEL_12;
    }

    sub_100011514();
  }

  v12 = *v3;
  sub_100013F64(&qword_100080AE8, &type metadata accessor for ServiceKind);
  v13 = sub_100067B08();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100013F64(&qword_100080AF0, &type metadata accessor for ServiceKind);
      v21 = sub_100067B28();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100068188();
  __break(1u);
  return result;
}

uint64_t sub_100010994(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_100066F88();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000FEB4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100010DAC(&type metadata accessor for UUID, &qword_100080B30);
      goto LABEL_12;
    }

    sub_100011830();
  }

  v12 = *v3;
  sub_100013F64(&qword_100080B20, &type metadata accessor for UUID);
  v13 = sub_100067B08();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100013F64(&qword_100080B28, &type metadata accessor for UUID);
      v21 = sub_100067B28();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100068188();
  __break(1u);
  return result;
}

id sub_100010C5C()
{
  v1 = v0;
  sub_1000024F4(&qword_100080B60);
  v2 = *v0;
  v3 = sub_100067FE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100010DAC(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000024F4(a2);
  v9 = *v2;
  v10 = sub_100067FE8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_100010FE4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000024F4(&qword_100080B60);
  result = sub_100067FF8();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_100067E78(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000111F8()
{
  v1 = v0;
  v32 = sub_100067228();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000024F4(&qword_100080B48);
  v6 = sub_100067FF8();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100013F64(&qword_100080B38, &type metadata accessor for CharacteristicKind);
      result = sub_100067B08();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100011514()
{
  v1 = v0;
  v32 = sub_1000670C8();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000024F4(&qword_100080AF8);
  v6 = sub_100067FF8();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100013F64(&qword_100080AE8, &type metadata accessor for ServiceKind);
      result = sub_100067B08();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100011830()
{
  v1 = v0;
  v32 = sub_100066F88();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000024F4(&qword_100080B30);
  v6 = sub_100067FF8();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100013F64(&qword_100080B20, &type metadata accessor for UUID);
      result = sub_100067B08();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100011B4C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_100067FC8();

    if (v5)
    {
      v6 = sub_100011CE4();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_100009700(0, &qword_100080B50);
  v9 = sub_100067E78(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_100067E88();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100010C5C();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100011E4C(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_100011CE4()
{
  v1 = v0;

  v2 = sub_100067F88();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10000F3E4(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_100067E78(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100009700(0, &qword_100080B50);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_100067E88();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100011E4C(v8);
  result = sub_100067E88();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100011E4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100067F18();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_100067E78(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t (*sub_100011FEC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100068058();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000143EC;
  }

  __break(1u);
  return result;
}

void (*sub_10001206C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100068058();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000120EC;
  }

  __break(1u);
  return result;
}

void sub_1000120F4(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100067FA8();
      sub_100009700(0, &qword_100080B50);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100009700(0, &qword_100080B50);
    if (sub_100067F68() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100067F78();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_100067E78(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_100067E88();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100012318@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100067F48();
    sub_100009700(0, &qword_100080B50);
    sub_100014148();
    sub_100067D58();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_1000123F8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1000680C8())
    {
LABEL_3:
      sub_1000024F4(&qword_100080B60);
      v3 = sub_100068018();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1000680C8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100068058();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100067E78(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009700(0, &qword_100080B50);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100067E88();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_100067E78(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009700(0, &qword_100080B50);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100067E88();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_1000126F8(int64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = sub_1000024F4(&qword_100080B68);
  v4 = __chkstk_darwin(v3 - 8);
  v92 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v72 - v6;
  v8 = sub_1000670C8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_bridgeObject = __chkstk_darwin(v10);
  v96 = &v72 - v14;
  if (a1 >> 62)
  {
    goto LABEL_118;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    do
    {
      v80 = a1 & 0xC000000000000001;
      v79 = a1 & 0xFFFFFFFFFFFFFF8;
      v78 = a1 + 32;
      v16 = (v9 + 48);
      v93 = (v9 + 32);
      v95 = enum case for ServiceKind.null(_:);
      v94 = (v9 + 104);
      v104 = (v9 + 8);
      v87 = (v9 + 56);
      v9 = 0;
      v17 = &_swiftEmptyArrayStorage;
      v103 = isUniquelyReferenced_nonNull_bridgeObject;
      v105 = v16;
      v77 = a1;
      v91 = v12;
      v76 = v15;
      while (1)
      {
        if (v80)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_100068058();
          v19 = __OFADD__(v9++, 1);
          if (v19)
          {
            goto LABEL_106;
          }
        }

        else
        {
          if (v9 >= *(v79 + 16))
          {
            goto LABEL_107;
          }

          isUniquelyReferenced_nonNull_bridgeObject = *(v78 + 8 * v9);
          v19 = __OFADD__(v9++, 1);
          if (v19)
          {
            goto LABEL_106;
          }
        }

        v83 = v9;
        v86 = isUniquelyReferenced_nonNull_bridgeObject;
        v20 = [isUniquelyReferenced_nonNull_bridgeObject services];
        sub_100009700(0, &qword_100080B98);
        v21 = sub_100067CA8();

        v99 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v21 >> 62)
        {
          v102 = sub_1000680C8();
        }

        else
        {
          v102 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v88 = v17;
        v109 = *v82;
        v12 = *(v82 + 2);
        v22 = *(v82 + 3);
        v23 = *(v82 + 5);
        v110 = *(v82 + 4);
        v24 = *(v82 + 6);
        sub_100009578(&v109, v106);

        a1 = &unk_10006B880;
        sub_1000095D4(&v110, v106, &qword_100080A20);
        sub_1000026E0(v23);
        sub_100009578(&v109, v106);
        v101 = v12;

        v100 = v22;

        sub_1000095D4(&v110, v106, &qword_100080A20);
        v85 = v23;
        v84 = v24;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000026E0(v23);
        v9 = v102;
        if (v102)
        {
          v25 = 0;
          v98 = v21 & 0xC000000000000001;
          v90 = &_swiftEmptyArrayStorage;
          v97 = v21;
          while (2)
          {
            v26 = v25;
LABEL_17:
            if (v98)
            {
              isUniquelyReferenced_nonNull_bridgeObject = sub_100068058();
            }

            else
            {
              if (v26 >= *(v99 + 16))
              {
                goto LABEL_105;
              }

              isUniquelyReferenced_nonNull_bridgeObject = *(v21 + 8 * v26 + 32);
            }

            v12 = isUniquelyReferenced_nonNull_bridgeObject;
            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_104;
            }

            v29 = [isUniquelyReferenced_nonNull_bridgeObject serviceType];
            sub_100067BC8();

            sub_100067C18();
            a1 = v103;

            v30 = *v16;
            if ((*v16)(v7, 1, a1) == 1)
            {
              v31 = v96;
              (*v94)(v96, v95, a1);
              if (v30(v7, 1, a1) != 1)
              {
                sub_1000096A0(v7, &qword_100080B68);
              }
            }

            else
            {
              v31 = v96;
              (*v93)(v96, v7, a1);
            }

            v32 = v7;
            v33 = sub_10003F378(v31, v101);
            v34 = v31;
            v35 = v33;
            v36 = *v104;
            (*v104)(v34, a1);
            if (v35)
            {
              if (!*(v100 + 16))
              {
LABEL_34:
                v108 = v12;
                v40 = v81;
                sub_10000CA98(&v108, v82, &v107);
                v81 = v40;

                v41 = v107;
                v9 = v107 >> 62;
                if (v107 >> 62)
                {
                  v42 = sub_1000680C8();
                }

                else
                {
                  v42 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v7 = v32;
                v43 = v90 >> 62;
                v16 = v105;
                if (v90 >> 62)
                {
                  isUniquelyReferenced_nonNull_bridgeObject = sub_1000680C8();
                  a1 = isUniquelyReferenced_nonNull_bridgeObject + v42;
                  if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v42))
                  {
                    goto LABEL_110;
                  }
                }

                else
                {
                  isUniquelyReferenced_nonNull_bridgeObject = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  a1 = isUniquelyReferenced_nonNull_bridgeObject + v42;
                  if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v42))
                  {
                    goto LABEL_110;
                  }
                }

                isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                if (isUniquelyReferenced_nonNull_bridgeObject)
                {
                  if (!v43)
                  {
                    v12 = v90 & 0xFFFFFFFFFFFFFF8;
                    if (a1 > *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
LABEL_44:
                      isUniquelyReferenced_nonNull_bridgeObject = sub_100068068();
                      v90 = isUniquelyReferenced_nonNull_bridgeObject;
                      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
                    }

                    a1 = *(v12 + 16);
                    v44 = (*(v12 + 24) >> 1) - a1;
                    if (v9)
                    {
                      if (v41 < 0)
                      {
                        v9 = v41;
                      }

                      else
                      {
                        v9 = v41 & 0xFFFFFFFFFFFFFF8;
                      }

                      v89 = sub_1000680C8();
                      if (!v89)
                      {
                        goto LABEL_62;
                      }

                      isUniquelyReferenced_nonNull_bridgeObject = sub_1000680C8();
                      if (v44 < isUniquelyReferenced_nonNull_bridgeObject)
                      {
                        goto LABEL_115;
                      }

                      if (v89 < 1)
                      {
                        goto LABEL_117;
                      }

                      v73 = isUniquelyReferenced_nonNull_bridgeObject;
                      v75 = v42;
                      v74 = v12;
                      v47 = v12 + 8 * a1 + 32;
                      sub_1000141C4(&qword_100080B90, &qword_100080B88);
                      a1 = 0;
                      do
                      {
                        sub_1000024F4(&qword_100080B88);
                        v48 = v41;
                        v49 = sub_10001206C(v106, a1, v41);
                        v51 = *v50;
                        (v49)(v106, 0);
                        v41 = v48;
                        *(v47 + 8 * a1++) = v51;
                      }

                      while (v89 != a1);
                      v42 = v75;
                      v12 = v74;
                      v46 = v73;
LABEL_58:

                      v52 = v46 < v42;
                      v21 = v97;
                      v9 = v102;
                      if (v52)
                      {
                        goto LABEL_111;
                      }

                      if (v46 >= 1)
                      {
                        v53 = *(v12 + 16);
                        v19 = __OFADD__(v53, v46);
                        v54 = v53 + v46;
                        if (v19)
                        {
                          goto LABEL_114;
                        }

                        *(v12 + 16) = v54;
                      }
                    }

                    else
                    {
                      v9 = v41 & 0xFFFFFFFFFFFFFF8;
                      v45 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v45)
                      {
                        if (v44 < v45)
                        {
                          goto LABEL_116;
                        }

                        v46 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        a1 = v12 + 8 * a1;
                        sub_100009700(0, &qword_100080B50);
                        swift_arrayInitWithCopy();
                        goto LABEL_58;
                      }

LABEL_62:

                      v52 = v42 <= 0;
                      v21 = v97;
                      v9 = v102;
                      if (!v52)
                      {
                        goto LABEL_111;
                      }
                    }

                    if (v25 != v9)
                    {
                      continue;
                    }

                    goto LABEL_71;
                  }
                }

                else if (!v43)
                {
                  goto LABEL_44;
                }

                sub_1000680C8();
                goto LABEL_44;
              }

              v37 = [v12 associatedServiceType];
              if (v37)
              {
                v38 = v37;
                sub_100067BC8();

                v39 = v92;
                sub_100067C18();
                a1 = v103;

                if (v30(v39, 1, a1) == 1)
                {
                  goto LABEL_31;
                }

                v27 = v91;
                (*v93)(v91, v39, a1);
              }

              else
              {
                v39 = v92;
                (*v87)(v92, 1, 1, a1);
LABEL_31:
                v27 = v91;
                (*v94)(v91, v95, a1);
                if (v30(v39, 1, a1) != 1)
                {
                  sub_1000096A0(v39, &qword_100080B68);
                }
              }

              v28 = sub_10003F378(v27, v100);
              v36(v27, a1);
              if (v28)
              {
                goto LABEL_34;
              }
            }

            break;
          }

          ++v26;
          v9 = v102;
          v7 = v32;
          v16 = v105;
          v21 = v97;
          if (v25 == v102)
          {
            goto LABEL_71;
          }

          goto LABEL_17;
        }

        v90 = &_swiftEmptyArrayStorage;
LABEL_71:
        sub_10000963C(&v109);

        v12 = v101;

        sub_1000096A0(&v110, &qword_100080A20);
        v55 = v85;
        sub_100009690(v85);

        sub_10000963C(&v109);

        sub_1000096A0(&v110, &qword_100080A20);
        sub_100009690(v55);

        v9 = v90 >> 62;
        v56 = v90 >> 62 ? sub_1000680C8() : *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v57 = v88;
        v58 = v88 >> 62;
        if (v88 >> 62)
        {
          break;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        a1 = isUniquelyReferenced_nonNull_bridgeObject + v56;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v56))
        {
          goto LABEL_103;
        }

LABEL_75:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v58)
          {
            v59 = v57 & 0xFFFFFFFFFFFFFF8;
            if (a1 <= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          }

LABEL_80:
          sub_1000680C8();
          goto LABEL_81;
        }

        if (v58)
        {
          goto LABEL_80;
        }

LABEL_81:
        isUniquelyReferenced_nonNull_bridgeObject = sub_100068068();
        v88 = isUniquelyReferenced_nonNull_bridgeObject;
        v59 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_82:
        v60 = *(v59 + 16);
        v61 = *(v59 + 24);
        if (v9)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_1000680C8();
          a1 = isUniquelyReferenced_nonNull_bridgeObject;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
LABEL_4:

            a1 = v77;
            v18 = v76;
            v9 = v83;
            v17 = v88;
            if (v56 > 0)
            {
              goto LABEL_108;
            }

            goto LABEL_5;
          }
        }

        else
        {
          a1 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a1)
          {
            goto LABEL_4;
          }
        }

        if (((v61 >> 1) - v60) < v56)
        {
          goto LABEL_109;
        }

        v101 = v59;
        v102 = v56;
        v62 = v59 + 8 * v60 + 32;
        if (v9)
        {
          if (a1 < 1)
          {
            goto LABEL_113;
          }

          sub_1000141C4(&qword_100080B90, &qword_100080B88);
          v12 = 0;
          v63 = v90;
          do
          {
            sub_1000024F4(&qword_100080B88);
            v64 = sub_10001206C(v106, v12, v63);
            v66 = *v65;
            (v64)(v106, 0);
            *(v62 + 8 * v12++) = v66;
          }

          while (a1 != v12);
        }

        else
        {
          sub_100009700(0, &qword_100080B50);
          swift_arrayInitWithCopy();
        }

        if (v102 < 1)
        {
          a1 = v77;
          v18 = v76;
          v9 = v83;
          v17 = v88;
        }

        else
        {
          v67 = *(v101 + 16);
          v19 = __OFADD__(v67, v102);
          v68 = v67 + v102;
          a1 = v77;
          v18 = v76;
          v9 = v83;
          v17 = v88;
          if (v19)
          {
            goto LABEL_112;
          }

          *(v101 + 16) = v68;
        }

LABEL_5:
        if (v9 == v18)
        {
          return v17;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = sub_1000680C8();
      a1 = isUniquelyReferenced_nonNull_bridgeObject + v56;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v56))
      {
        goto LABEL_75;
      }

LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
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
      v69 = isUniquelyReferenced_nonNull_bridgeObject;
      v70 = sub_1000680C8();
      isUniquelyReferenced_nonNull_bridgeObject = v69;
      v15 = v70;
    }

    while (v70);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000134D4(uint64_t a1, void *a2)
{
  v34 = *(a1 + 16);
  if (!v34)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v40 = _swiftEmptyArrayStorage;
  v33 = a1 + 32;
  while (1)
  {
    v37 = v2;
    v4 = (v33 + 56 * v2);
    v5 = v4[5];
    v6 = v4[6];
    v7 = v4[3];
    v8 = v4[4];
    v10 = v4[1];
    v9 = v4[2];
    v39[0] = *v4;
    v39[1] = v10;
    v39[2] = v9;
    v39[3] = v7;
    v39[4] = v8;
    v39[5] = v5;
    v39[6] = v6;

    sub_1000026E0(v5);
    v11 = [a2 accessories];
    sub_100009700(0, &qword_100080A10);
    v12 = sub_100067CA8();

    sub_1000026E0(v5);
    v13 = sub_1000126F8(v12, v39);

    sub_100009690(v5);

    sub_100009690(v5);
    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      v15 = sub_1000680C8();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v40;
    v17 = v40 >> 62;
    if (v40 >> 62)
    {
      v32 = sub_1000680C8();
      v19 = v32 + v15;
      if (__OFADD__(v32, v15))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v18 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v15;
      if (__OFADD__(v18, v15))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v17)
      {
        v20 = v16 & 0xFFFFFFFFFFFFFF8;
        if (v19 <= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1000680C8();
      goto LABEL_15;
    }

    if (v17)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_100068068();
    v40 = result;
    v20 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v14)
    {
      break;
    }

    v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v22 >> 1) - v21) < v15)
    {
      goto LABEL_36;
    }

    v24 = v20 + 8 * v21 + 32;
    v36 = v15;
    if (v14)
    {
      if (v23 < 1)
      {
        goto LABEL_38;
      }

      sub_1000141C4(&qword_100080B90, &qword_100080B88);
      for (i = 0; i != v23; ++i)
      {
        sub_1000024F4(&qword_100080B88);
        v26 = sub_10001206C(v38, i, v13);
        v28 = *v27;
        (v26)(v38, 0);
        *(v24 + 8 * i) = v28;
      }
    }

    else
    {
      sub_100009700(0, &qword_100080B50);
      swift_arrayInitWithCopy();
    }

    if (v36 >= 1)
    {
      v29 = *(v20 + 16);
      v30 = __OFADD__(v29, v36);
      v31 = v29 + v36;
      if (v30)
      {
        goto LABEL_37;
      }

      *(v20 + 16) = v31;
    }

LABEL_4:
    v2 = v37 + 1;
    if (v37 + 1 == v34)
    {
      return v40;
    }
  }

  result = sub_1000680C8();
  v23 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000138F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013930(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100009700(0, &qword_100080B50);
    sub_100014148();
    result = sub_100067D38();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_100068058();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10000E90C(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000680C8();
  }

  v5 = result;
  v4 = sub_1000680C8();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100013A70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013AB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013B0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013B7C()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100013BE4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100013BFC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100013C18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100013C60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100013CC0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000680C8())
  {
    v9 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_100068058();
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v16 = v10;
      sub_10000C598(&v16, a2, a3, a4, a5);

      if (!v5)
      {
        ++v9;
        if (v12 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100013DC8(uint64_t a1)
{
  v2 = sub_1000670C8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100013F64(&qword_100080AE8, &type metadata accessor for ServiceKind);
  result = sub_100067D38();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10000EE24(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100013F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100013FAC(uint64_t a1)
{
  v2 = sub_100066F88();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100013F64(&qword_100080B20, &type metadata accessor for UUID);
  result = sub_100067D38();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10000F104(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

unint64_t sub_100014148()
{
  result = qword_100080B58;
  if (!qword_100080B58)
  {
    sub_100009700(255, &qword_100080B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080B58);
  }

  return result;
}

uint64_t sub_1000141B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000141C4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000253C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001422C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100014288()
{
  v1 = sub_1000024F4(&qword_100080BB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100014358(uint64_t a1, uint64_t a2)
{
  sub_1000024F4(&qword_100080BB0);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_10000A664(a1, a2, v5, v6);
}

void *LockScreenDataModel.currentHome.getter()
{
  v1 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LockScreenDataModel.currentHome.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_10001450C()
{
  result = sub_10001452C();
  qword_100085C80 = result;
  return result;
}

char *sub_10001452C()
{
  v0 = sub_100066F38();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(type metadata accessor for LockScreenDataModel()) init];
  v58 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager;
  v59 = v4;
  [*&v4[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager] setDelegate:?];
  sub_100066F28();
  sub_100066EF8();
  v6 = v5;
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  v7 = v9;
  v9(v3, v0);
  v11 = &unk_100085000;
  v12 = &LockScreenDataModel;
  if ((byte_100085C78 & 1) == 0)
  {
    v41 = &LockScreenDataModel;
    *&v10 = 138412546;
    v60 = v10;
    v61 = v7;
    do
    {
      v44 = objc_autoreleasePoolPush();
      v45 = objc_opt_self();
      [v45 v41[14].ivar_lyt];
      if ((v11[3192] & 1) == 0)
      {
        if (v12[26].weak_ivar_lyt != -1)
        {
          swift_once();
        }

        v46 = sub_100067318();
        sub_1000026A8(v46, qword_100085CA0);
        v47 = sub_1000672F8();
        v48 = sub_100067E08();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = v8;
          v51 = v0;
          v52 = v12;
          v53 = swift_slowAlloc();
          *v49 = v60;
          v54 = [v45 mainThread];
          *(v49 + 4) = v54;
          *v53 = v54;
          *(v49 + 12) = 2112;
          v55 = [v45 currentThread];
          *(v49 + 14) = v55;
          v53[1] = v55;
          _os_log_impl(&_mh_execute_header, v47, v48, "DataModel.shared is STILL spinning waiting for HomeKit — main thread is %@ current thread is %@", v49, 0x16u);
          sub_1000024F4(&qword_100080CA0);
          swift_arrayDestroy();
          v12 = v52;
          v0 = v51;
          v8 = v50;
          v7 = v61;

          v11 = &unk_100085000;
        }

        sub_100066F28();
        sub_100066EF8();
        v43 = v42;
        v7(v3, v0);
        v41 = &LockScreenDataModel;
        if (v43 - v6 > 60.0)
        {
          exit(-1);
        }
      }

      objc_autoreleasePoolPop(v44);
    }

    while ((v11[3192] & 1) == 0);
  }

  sub_100009700(0, &qword_100080CA8);
  v13 = sub_100067E58();
  v14 = swift_allocObject();
  v15 = v59;
  *(v14 + 16) = v59;
  v67 = sub_100016BA4;
  v68 = v14;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_100014C64;
  v66 = &unk_10007E628;
  v16 = _Block_copy(&aBlock);
  v17 = v15;

  v18 = sub_100067C08();
  v19 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_defaultsHomeSensingChangedNotifyToken;
  swift_beginAccess();
  notify_register_dispatch((v18 + 32), &v17[v19], v13, v16);
  swift_endAccess();
  _Block_release(v16);

  v20 = sub_100067E58();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v67 = sub_100016BE0;
  v68 = v21;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_100014C64;
  v66 = &unk_10007E678;
  v22 = _Block_copy(&aBlock);
  v23 = v17;

  v24 = sub_100067C08();
  v25 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_defaultsSelectedHomeChangedNotifyToken;
  swift_beginAccess();
  notify_register_dispatch((v24 + 32), &v23[v25], v20, v22);
  swift_endAccess();
  _Block_release(v22);

  v26 = *&v15[v58];
  v27 = sub_10004D774(v26);

  v28 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v29 = *&v23[v28];
  *&v23[v28] = v27;

  if (v12[26].weak_ivar_lyt != -1)
  {
    swift_once();
  }

  v30 = sub_100067318();
  sub_1000026A8(v30, qword_100085CA0);
  v31 = v23;
  v32 = sub_1000672F8();
  v33 = sub_100067E08();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v62 = v35;
    *v34 = 136315138;
    v36 = *&v23[v28];
    if (v36)
    {
      v37 = [v36 name];
      v38 = sub_100067BC8();
      v40 = v39;
    }

    else
    {
      v40 = 0xE400000000000000;
      v38 = 1701736302;
    }

    v56 = sub_10000D4F0(v38, v40, &v62);

    *(v34 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v32, v33, "User's home is now %s", v34, 0xCu);
    sub_1000026F0(v35);
  }

  return v31;
}

id LockScreenDataModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_100014C64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100014CB8(uint64_t a1, char *a2, const char *a3)
{
  v5 = sub_10004D774(*&a2[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager]);
  v6 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v7 = *&a2[v6];
  *&a2[v6] = v5;

  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v8 = sub_100067318();
  sub_1000026A8(v8, qword_100085CA0);
  v9 = a2;
  v10 = sub_1000672F8();
  v11 = sub_100067E08();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = *&a2[v6];
    if (v14)
    {
      v15 = [v14 name];
      v16 = sub_100067BC8();
      v18 = v17;
    }

    else
    {
      v18 = 0xE400000000000000;
      v16 = 1701736302;
    }

    v19 = sub_10000D4F0(v16, v18, &v20);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 0xCu);
    sub_1000026F0(v13);
  }
}