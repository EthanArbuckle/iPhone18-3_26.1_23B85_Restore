uint64_t sub_100193A38()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100194304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v7[30] = a2;
  v7[31] = a3;
  v7[29] = a1;
  sub_100080FB4(&unk_1003CE2B0);
  v7[36] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v7[37] = v8;
  v9 = *(v8 - 8);
  v7[38] = v9;
  v7[39] = *(v9 + 64);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  sub_100080FB4(&qword_1003CDB98);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v10 = type metadata accessor for ExternalPurchaseTokenV2Response();
  v7[47] = v10;
  v11 = *(v10 - 8);
  v7[48] = v11;
  v7[49] = *(v11 + 64);
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();

  return _swift_task_switch(sub_10019450C, 0, 0);
}

uint64_t sub_10019450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10008C07C();
  sub_1000B0108();
  v17 = (v16[32] + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v16[54] = *v17;
  v16[55] = v17[1];

  v19 = sub_1001A81B0(v18);
  v16[56] = v19;
  if (v19)
  {
    v16[57] = sub_100189260();
    v16[58] = v20;
    static Date.now.getter();
    swift_task_alloc();
    sub_1000F2F10();
    v16[59] = v21;
    *v21 = v22;
    v21[1] = sub_1001946DC;
    sub_10008BE10();

    return sub_100198330(v23, v24, v25, v26, v27, v28);
  }

  else
  {

    sub_10008B5E0();
    v44 = sub_1000894A0();
    *v31 = 12;
    swift_willThrow();
    sub_10019DA40();
    sub_10019DE10();
    v42 = v33;
    v43 = v32;

    sub_100098AC4();
    sub_10008BE10();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v42, v43, v44, a13, a14, a15, a16);
  }
}

uint64_t sub_1001946DC()
{
  sub_1000B0004();
  v2 = *v1;
  v3 = *v1;
  sub_100098AB4();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[42];
  v6 = v2[38];
  v7 = v2[37];
  if (v0)
  {

    v8 = *(v6 + 8);
    v3[75] = v8;
  }

  else
  {
    v8 = *(v6 + 8);
    v3[60] = v8;
  }

  v8(v5, v7);
  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100194C68()
{
  sub_10008BE9C();
  v1 = sub_10019DAA4();
  *(v0 + 512) = sub_10019B944(v1, &swift_unknownObjectWeakAssign);
  v2 = sub_10009F0B8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100194CE0()
{
  sub_10008C07C();
  sub_1000B0108();
  v17 = v0[57];
  v18 = v0[58];
  v1 = v0[55];
  v16 = v0[54];
  v2 = v0[40];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v6 = v0[35];
  v19 = v0[34];
  v20 = v0[62];
  (*(v4 + 16))(v2, v0[41], v5);
  v7 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[65] = v9;
  *(v9 + 2) = v16;
  *(v9 + 3) = v1;
  *(v9 + 4) = v17;
  *(v9 + 5) = v18;
  (*(v4 + 32))(&v9[v7], v2, v5);
  *&v9[v8] = v20;
  v10 = &v9[(v8 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v10 = v19;
  *(v10 + 1) = v6;

  v11 = swift_task_alloc();
  v0[66] = v11;
  *v11 = v0;
  v11[1] = sub_100194E64;
  sub_10008BE10();

  return sub_1001D5D00(v12, v13);
}

uint64_t sub_100194E64()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10019557C()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100195DD0()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 592) = v0;

  if (v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100196280()
{
  sub_10008BE9C();
  sub_100081DFC(v0[46], 1, 1, v0[47]);
  v0[61] = v0[75];
  sub_10013B1E8(v0[46], &qword_1003CDB98);
  static Date.now.getter();
  v1 = swift_allocObject();
  v0[62] = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  if (qword_1003CBE28 != -1)
  {
    v1 = sub_10019D9E8();
  }

  v2 = sub_10019DBDC(v1, qword_1003D0980);

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100196348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000B026C();
  sub_1000B016C();
  v15 = *(v14 + 448);
  v16 = *(v14 + 360);

  sub_10013B1E8(v16, &qword_1003CDB98);
  sub_10019DA40();
  sub_10019E048();

  sub_100098AC4();
  sub_10008E654();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100196434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000B026C();
  sub_1000B016C();
  v15 = *(v14 + 448);
  v16 = *(v14 + 360);

  sub_10013B1E8(v16, &qword_1003CDB98);
  sub_10019DA40();
  sub_10019E048();

  sub_100098AC4();
  sub_10008E654();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100196520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  v7[35] = a2;
  v7[36] = a3;
  v7[34] = a1;
  v8 = type metadata accessor for UUID();
  v7[41] = v8;
  v7[42] = *(v8 - 8);
  v7[43] = swift_task_alloc();

  return _swift_task_switch(sub_1001965EC, 0, 0);
}

uint64_t sub_100196A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10008C070();
  v11 = v10;
  sub_1000AFE64();
  *v12 = v11;
  v13 = *v5;
  sub_100098AB4();
  *v14 = v13;
  v11[46] = v4;

  if (!v4)
  {
    v11[47] = a4;
    v11[48] = a3;
    v11[49] = a2;
    v11[50] = a1;
  }

  sub_100098AD0();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100196BA0()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[44];
  v6 = v0[34];
  v6[3] = &type metadata for ExternalPurchaseTokenV1Response;
  v6[4] = &off_10038DDA8;
  sub_1000B069C();
  v7 = swift_allocObject();
  *v6 = v7;

  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v7[5] = v4;

  sub_100098AA4();

  return v8();
}

uint64_t sub_100196C5C()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

unint64_t sub_100196CC0(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_100196CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1000AFCB8();
}

uint64_t sub_100196D14()
{
  sub_1000B0004();
  v1 = v0[2];
  v2 = sub_100189260();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  if (*(v1 + 16))
  {
    type metadata accessor for ExternalPurchaseTokenV2Response();
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_100196EE8;
    v6 = sub_100123E30();

    return sub_100197310(v6, v7, v8, v9, v2, v4, v10, v11);
  }

  else if (*v0[2])
  {
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    sub_10019DA58(v13);
    v14 = sub_1000B06F4(v0[2]);

    return sub_100197D90(v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = sub_10019707C;
    v22 = sub_1000B06F4(v0[3]);

    return sub_1001978B4(v22, v23, v2, v4, v24, v25);
  }
}

uint64_t sub_100196EE8()
{
  sub_100098BB4();
  v1 = *v0;
  v2 = *v0;
  sub_100098AB4();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 96) = v5;
  *v5 = v4;
  sub_10019DA58(v5);
  v6 = sub_1000B06F4(*(v1 + 16));

  return sub_100197D90(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10019707C()
{
  sub_100098BB4();
  v1 = *v0;
  v2 = *v0;
  sub_100098AB4();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 96) = v5;
  *v5 = v4;
  sub_10019DA58(v5);
  v6 = sub_1000B06F4(*(v1 + 16));

  return sub_100197D90(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100197210()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_100197310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = type metadata accessor for Date();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v8[13] = *(v10 + 64);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001973F0, 0, 0);
}

uint64_t sub_100197558()
{
  sub_10008BE9C();
  v1 = sub_10019DAA4();
  *(v0 + 128) = sub_10019B944(v1, &swift_unknownObjectWeakAssign);
  v2 = sub_10009F0B8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1001975D0()
{
  sub_10008C07C();
  sub_1000B0108();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[4];
  v17 = v0[2];
  v18 = v0[6];
  (*(v4 + 16))(v2, v0[8], v3);
  v8 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[17] = v9;
  *(v9 + 2) = v16;
  *(v9 + 3) = v6;
  *(v9 + 4) = v18;
  *(v9 + 5) = v5;
  *(v9 + 6) = v17;
  *(v9 + 7) = v7;
  (*(v4 + 32))(&v9[v8], v2, v3);
  v10 = &v9[(v1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v10 = v19;
  *(v10 + 1) = v20;

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_100197750;
  sub_10008BE10();

  return sub_1001D5E3C(v12, v13);
}

uint64_t sub_100197750()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100197850()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1001978B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1000AFCB8();
}

uint64_t sub_1001978D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1000B026C();
  a21 = v23;
  a22 = v24;
  sub_1000B016C();
  a20 = v22;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v25 = v22[7];
  v27 = v22[2];
  v26 = v22[3];
  v28 = type metadata accessor for SKLogger();
  sub_10007EDA4(v28, qword_1003F26C8);
  sub_1000AFE34();
  _StringGuts.grow(_:)(47);

  a10 = 0xD00000000000002DLL;
  a11 = 0x800000010031B8F0;
  v29._countAndFlagsBits = v27;
  v29._object = v26;
  String.append(_:)(v29);
  static os_log_type_t.debug.getter();

  v30 = Logger.logObject.getter();

  if (sub_10009F1F4())
  {
    v32 = v22[6];
    v31 = v22[7];
    sub_10008E688();
    v33 = sub_100143E48();
    *v25 = 136446466;
    a9 = v33;
    a10 = 91;
    a11 = 0xE100000000000000;
    v34._countAndFlagsBits = v32;
    v34._object = v31;
    String.append(_:)(v34);
    sub_10009F134();
    v35 = a11;
    v36 = sub_100080210(a10, a11, &a9);

    *(v25 + 4) = v36;
    sub_1000B04AC();
    v37 = sub_10009F14C();
    sub_100080210(v37, v38, v39);
    sub_1000B03CC();
    *(v25 + 14) = v35;
    sub_10019DBA8();
    sub_1000B0648(v40, v41, v42, v43);
    sub_100098BC0();
    sub_10008BF3C();
    sub_1000AFF34();
  }

  else
  {
  }

  if (qword_1003CBE28 != -1)
  {
    sub_10019D9E8();
  }

  v22[8] = qword_1003D0980;
  sub_100123E74();
  sub_10008E654();

  return _swift_task_switch(v44, v45, v46);
}

uint64_t sub_100197AD0()
{
  sub_10008BE9C();
  v1 = sub_10019DAA4();
  *(v0 + 72) = sub_10019B944(v1, &swift_unknownObjectWeakAssign);
  v2 = sub_10009F0B8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100197B48()
{
  sub_1000B0004();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1000B069C();
  v5 = swift_allocObject();
  v0[10] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100197C38;

  return sub_1001D5E3C(sub_10019C688, v5);
}

uint64_t sub_100197C38()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100197D38()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_100197D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  type metadata accessor for ExternalPurchaseTokenV2Response();
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100197E2C, 0, 0);
}

uint64_t sub_100197F94()
{
  sub_10008BE9C();
  v1 = sub_10019DC8C();
  *(v0 + 88) = sub_10019B944(v1, &_swift_weakAssign);
  v2 = sub_100123E74();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100198010()
{
  sub_100098BB4();
  *(v0 + 96) = sub_1001928AC();
  *(v0 + 104) = 0;
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100198098()
{
  sub_1000B0004();
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[3];
  v3 = v0[4];
  if (v0[12])
  {
    v5 = v0[12];
  }

  else
  {
    v5 = _swiftEmptyDictionarySingleton;
  }

  sub_10019B9AC(v0[2], v0[9]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10023F1C0(v2, v4, v3, isUniquelyReferenced_nonNull_native);

  v0[14] = v5;

  return _swift_task_switch(sub_100198168, v1, 0);
}

uint64_t sub_100198168()
{
  sub_100098BB4();
  v1 = v0[13];
  sub_100192C0C(v0[14]);
  v0[15] = v1;

  sub_100098AD0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1001981FC()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v0();
}

uint64_t sub_100198260()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1001982C8()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_100198330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_100080FB4(&qword_1003CDB98);
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for ExternalPurchaseTokenV2Response();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_100198404, 0, 0);
}

uint64_t sub_100198404()
{
  sub_10008BE9C();
  if (qword_1003CBE30 != -1)
  {
    sub_10019DCF4();
  }

  *(v0 + 88) = qword_1003D0988;
  v1 = sub_100123E74();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100198484()
{
  sub_10008BE9C();
  v1 = sub_10019DC8C();
  *(v0 + 96) = sub_10019B944(v1, &_swift_weakAssign);
  v2 = sub_100123E74();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100198500()
{
  sub_100098BB4();
  *(v0 + 104) = sub_1001928AC();
  *(v0 + 112) = 0;
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100198588()
{
  sub_100098BB4();
  if (!v0[13])
  {
    v3 = v0[9];

    v4 = sub_10017CA88();
    sub_100081DFC(v4, v5, v6, v3);
    goto LABEL_5;
  }

  v2 = v0[8];
  v1 = v0[9];
  sub_1001DAB80(v0[3], v0[4], v0[13], v2);

  if (sub_100081D0C(v2, 1, v1) == 1)
  {

LABEL_5:
    sub_10013B1E8(v0[8], &qword_1003CDB98);
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  sub_10019C90C(v0[8], v0[10]);
  v10 = static Date.> infix(_:_:)();

  v11 = v0[10];
  if ((v10 & 1) == 0)
  {
    sub_10019CC34(v11);
    goto LABEL_6;
  }

  sub_10019C90C(v11, v0[2]);
  v7 = 0;
LABEL_7:
  sub_100081DFC(v0[2], v7, 1, v0[9]);

  sub_100098AA4();

  return v8();
}

uint64_t sub_1001986D0()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_100198744(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for ExternalPurchaseTokenV2Response() + 28));
  v6 = (v5 + 56);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      return 0;
    }

    v8 = *(v6 - 3);
    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v6 += 4;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

  return v8;
}

uint64_t sub_100198814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_1001988E8;

  return sub_100196CF8(a6, a7, a8, v17, a4, a5);
}

uint64_t sub_1001988E8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001989EC()
{
  **(v0 + 16) = *(v0 + 32) != 0;
  sub_100098AC4();
  return v1();
}

uint64_t sub_100198A20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383AE0, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100198A98@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100198A20(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100198AC8()
{
  v1 = sub_10019DFDC();
  result = sub_100196CC0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100198AF0(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D0B90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_10019D39C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100080F0C(a1);
  return v7;
}

unint64_t sub_100198CD4(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_100198D34(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100198D84(char a1)
{
  if (a1)
  {
    return 0x7079546E656B6F74;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_100198DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100080FB4(&qword_1003D0BB0);
  sub_1000890DC();
  v9 = v8;
  sub_100089118();
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  sub_100086D24(a1, a1[3]);
  sub_10019D3F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_100198F2C(void *a1)
{
  sub_100080FB4(&qword_1003D0BA0);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  sub_100086D24(a1, a1[3]);
  sub_10019D3F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v5 = sub_10009F14C();
    v6(v5);
  }

  sub_100080F0C(a1);
  return sub_1001073E4();
}

uint64_t sub_100199114@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100383B30;
  result = sub_100198D34(*a1, v3);
  *a2 = result;
  return result;
}

unint64_t sub_10019914C()
{
  v1 = sub_10019DFDC();
  result = sub_100198CD4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10019917C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100383B30;
  result = sub_100198D34(a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_1001991AC(uint64_t a1)
{
  v2 = sub_10019D39C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001991E8(uint64_t a1)
{
  v2 = sub_10019D39C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019928C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100383B80;
  result = sub_100198D34(*a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_1001992C4()
{
  v1 = sub_10019DFDC();
  result = sub_100198D84(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001992F4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100383B80;
  result = sub_100198D34(a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_100199324(uint64_t a1)
{
  v2 = sub_10019D3F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100199360(uint64_t a1)
{
  v2 = sub_10019D3F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001993C8@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100199420@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100080FB4(&qword_1003D0B50);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v5);
  v16 = type metadata accessor for ExternalPurchaseTokenV2Response();
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v17 = a1;
  sub_100086D24(a1, v8);
  sub_10019D228();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(v17);
  }

  v22 = 0;
  sub_10019DE8C();
  *v7 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v21 = 2;
  sub_10019DE8C();
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    static Date.distantPast.getter();
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
  }

  v20 = 1;
  sub_10019DE8C();
  *(v7 + 1) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v7 + 2) = v11;
  sub_100080FB4(&qword_1003D0B60);
  v19 = 3;
  sub_10019D2D0(&qword_1003D0B68, sub_10019D27C);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    v12 = v18;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = sub_10019DD28();
  v14(v13);
  *&v7[*(v16 + 28)] = v12;
  sub_10019B9AC(v7, a2);
  sub_100080F0C(v17);
  return sub_10019CC34(v7);
}

uint64_t sub_1001997A8(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003D0B78);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  sub_100086D24(a1, a1[3]);
  sub_10019D228();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  sub_1000892B8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    sub_1000892B8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = type metadata accessor for ExternalPurchaseTokenV2Response();
    Date.timeIntervalSince1970.getter();
    v15 = 2;
    sub_1000892B8();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (*(*(v3 + *(v11 + 28)) + 16))
    {
      v14 = *(v3 + *(v11 + 28));
      v13[15] = 3;
      sub_100080FB4(&qword_1003D0B60);
      sub_10019D2D0(&qword_1003D0B80, sub_10019D348);
      sub_1000892B8();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1001999C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383BD0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100199A10(char a1)
{
  result = 0x7669746341736168;
  switch(a1)
  {
    case 1:
      result = 0x6D61466E656B6F74;
      break;
    case 2:
      sub_1000B00A8();
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x746E456E656B6F74;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100199AF8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001999C4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100199B28()
{
  v1 = sub_10019DFDC();
  result = sub_100199A10(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_100199B58@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001999C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100199B80(uint64_t a1)
{
  v2 = sub_10019D228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100199BBC(uint64_t a1)
{
  v2 = sub_10019D228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100199C28(void *a1, void **a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a7 + 16;
  sub_100080FB4(&unk_1003D28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED410;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v31 = &type metadata for String;
  aBlock = a2;
  v29 = a3;

  *(inited + 32) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &aBlock);
  v31 = &type metadata for String;
  aBlock = a4;
  v29 = a5;

  *(inited + 40) = sub_100223CB4(0x5F746E756F636361, 0xEA00000000006469, &aBlock);
  Date.timeIntervalSinceReferenceDate.getter();
  v31 = &type metadata for Double;
  aBlock = v15;
  *(inited + 48) = sub_10013CD88(0x6974617269707865, 0xEA00000000006E6FLL, &aBlock, 5);
  type metadata accessor for ExternalGatewayTokenFamilyEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [a1 connection];
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_10018EF2C(inited, &qword_1003CCBC0);
  swift_setDeallocating();
  sub_10009E32C();
  v18 = sub_10018F08C();
  v19 = [ObjCClassFromMetadata queryOnConnection:v17 predicate:v18];

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v26;
  v20[4] = a8;
  v20[5] = a9;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10019CD3C;
  *(v21 + 24) = v20;
  v32 = sub_1000939AC;
  v33 = v21;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100223D74;
  v31 = &unk_10038DAF0;
  v22 = _Block_copy(&aBlock);
  v23 = a1;

  [v19 enumeratePersistentIDsUsingBlock:v22];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100199F7C(uint64_t a1, int a2, _BYTE *a3, id a4, uint64_t *a5)
{
  v8 = [a4 connection];
  v9 = [objc_allocWithZone(type metadata accessor for ExternalGatewayTokenFamilyEntity()) initWithPersistentID:a1 onConnection:v8];

  v10 = sub_10019A2D8();
  v12 = v11;
  swift_beginAccess();
  *a5 = v10;
  a5[1] = v12;

  *a3 = 1;
}

uint64_t sub_10019A2D8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringValueForProperty:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    sub_10009E7E4();
    swift_allocError();
    *v5 = 0x61665F6E656B6F74;
    *(v5 + 8) = 0xEF64695F796C696DLL;
    *(v5 + 48) = 0;
    return swift_willThrow();
  }
}

BOOL sub_10019A3B8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v38 = a4;
  v39 = a6;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ExternalGatewayTokenFamilyEntity();
  (*(v17 + 16))(v19, a8, v16);

  v20 = [a1 connection];
  v21 = sub_10019A754(a2, a3, v38, a5, v39, a7, v19, v20);
  if (([v21 existsInDatabase] & 1) == 0)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for SKLogger();
    sub_10007EDA4(v22, qword_1003F26C8);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v41 = 0xD000000000000023;
    v42 = 0x800000010031B740;
    v23._countAndFlagsBits = a2;
    v23._object = a3;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 0x61746164206E6920;
    v24._object = 0xEC00000065736162;
    String.append(_:)(v24);
    v26 = v41;
    v25 = v42;
    v27 = static os_log_type_t.error.getter();

    v28 = Logger.logObject.getter();

    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136446466;
      v40 = v30;
      v41 = 91;
      v42 = 0xE100000000000000;
      v31._countAndFlagsBits = a9;
      v31._object = a10;
      String.append(_:)(v31);
      v32._countAndFlagsBits = 8285;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      v33 = sub_100080210(v41, v42, &v40);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v34 = sub_100080210(v26, v25, &v40);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v35 = [v21 persistentID];

  return v35 != 0;
}

id sub_10019A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = Dictionary.init(dictionaryLiteral:)();
  v28 = &type metadata for String;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  sub_10008B5D0(&v27, v26);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v28 = &type metadata for String;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  sub_10008B5D0(&v27, v26);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v28 = &type metadata for String;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  sub_10008B5D0(&v27, v26);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v17 = type metadata accessor for Date();
  v28 = v17;
  v18 = sub_10009E720(&v27);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v18, a7, v17);
  sub_10008B5D0(&v27, v26);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v20 = v16;
  v21 = objc_allocWithZone(v25);
  sub_100223354(v20);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v21 initWithPropertyValues:isa onConnection:a8];

  (*(v19 + 8))(a7, v17);
  return v23;
}

id sub_10019AA0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100080FB4(&unk_1003D28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2A0;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v19 = &type metadata for String;
  v17 = a2;
  v18 = a3;

  *(inited + 32) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v17);
  v20 = inited;
  if (a5)
  {
    v19 = &type metadata for String;
    v17 = a4;
    v18 = a5;

    sub_100223CB4(0x5F746E756F636361, 0xEA00000000006469, &v17);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    inited = v20;
  }

  type metadata accessor for ExternalGatewayTokenFamilyEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [a1 connection];
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_10018EF2C(inited, &qword_1003CCBB8);

  v13 = sub_10018F08C();
  v14 = [ObjCClassFromMetadata queryOnConnection:v12 predicate:v13];

  v15 = [v14 deleteAllEntities];
  return v15;
}

void sub_10019AC28(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];

  _StringGuts.grow(_:)(165);
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000100314AC0;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v4._object = 0x800000010031B920;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 665632;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x695F656C646E7562;
  v6._object = 0xE900000000000064;
  String.append(_:)(v6);
  v7._object = 0x8000000100314AE0;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x5F746E756F636361;
  v8._object = 0xEA00000000006469;
  String.append(_:)(v8);
  v9._object = 0x8000000100314AE0;
  v9._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x61665F6E656B6F74;
  v10._object = 0xEF64695F796C696DLL;
  String.append(_:)(v10);
  v11._object = 0x8000000100314AE0;
  v11._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x6974617269707865;
  v12._object = 0xEA00000000006E6FLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000002FLL;
  v13._object = 0x800000010031BA00;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x695F656C646E7562;
  v14._object = 0xE900000000000064;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 2604;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x5F746E756F636361;
  v16._object = 0xEA00000000006469;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000018;
  v17._object = 0x800000010031BA30;
  String.append(_:)(v17);
  v18 = String._bridgeToObjectiveC()();

  [a1 executeStatement:v18];
}

void sub_10019AEB8(void *a1)
{
  _StringGuts.grow(_:)(60);
  v2._countAndFlagsBits = 0x4154205245544C41;
  v2._object = 0xEC00000020454C42;
  String.append(_:)(v2);
  v3._object = 0x800000010031B920;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x4C4F43204444410ALL;
  v4._object = 0xEC000000204E4D55;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x6974617269707865;
  v5._object = 0xEA00000000006E6FLL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x800000010031BA50;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [a1 executeStatement:v7];

  v8 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v8];
}

id sub_10019B058()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

BOOL sub_10019B12C(id a1)
{
  while (1)
  {
    v2 = [a1 currentSchemaVersion];
    if (v2 > 18000)
    {
      return v2 > 18000;
    }

    v3 = [a1 currentSchemaVersion];
    if (!v3)
    {
      v23 = sub_10019AC28;
      v24 = 0;
      aBlock = _NSConcreteStackBlock;
      v20 = 1107296256;
      v21 = sub_100224D90;
      v4 = &unk_10038D9B0;
      goto LABEL_7;
    }

    if (v3 != 18001)
    {
      if (v3 != 18000)
      {
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for SKLogger();
        sub_10007EDA4(v7, qword_1003F26C8);
        aBlock = 0;
        v20 = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        v8._object = 0x800000010031B940;
        v8._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v8);
        v25 = [a1 currentSchemaVersion];
        v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v9);

        v10._countAndFlagsBits = 540949792;
        v10._object = 0xE400000000000000;
        String.append(_:)(v10);
        v25 = 18001;
        v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v11);

        v13 = aBlock;
        v12 = v20;
        v14 = static os_log_type_t.error.getter();

        v15 = Logger.logObject.getter();

        if (os_log_type_enabled(v15, v14))
        {
          v16 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v16 = 136446466;
          *(v16 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
          *(v16 + 12) = 2082;
          v17 = sub_100080210(v13, v12, &aBlock);

          *(v16 + 14) = v17;
          _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return v2 > 18000;
      }

      v23 = sub_10019AEB8;
      v24 = 0;
      aBlock = _NSConcreteStackBlock;
      v20 = 1107296256;
      v21 = sub_100224D90;
      v4 = &unk_10038D988;
LABEL_7:
      v22 = v4;
      v5 = _Block_copy(&aBlock);

      v6 = [a1 migrateToVersion:18001 usingBlock:v5];
      _Block_release(v5);
      if ((v6 & 1) == 0)
      {
        return v2 > 18000;
      }
    }
  }
}

id sub_10019B510(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

uint64_t type metadata accessor for ExternalPurchaseTokenV2Response()
{
  result = qword_1003D0AF8;
  if (!qword_1003D0AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019B74C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  swift_defaultActor_initialize();
  a3(v3 + 112, 0);
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  return v3;
}

uint64_t sub_10019B7C8()
{
  type metadata accessor for Date();
  sub_1000890DC();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 64) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_1000B03F4();
  v6(v5);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

BOOL sub_10019B8A0()
{
  sub_1000B06A8();
  v2 = type metadata accessor for Date();
  sub_1000B046C(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_10019A3B8(v0, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v7, *v8, *(v8 + 8));
}

uint64_t sub_10019B944(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  v5 = a1(v2 + 112);
  if (!v5)
  {
    v5 = (*(v4 + 120))();
    a2(v4 + 112, v5);
  }

  return v5;
}

uint64_t sub_10019B9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalPurchaseTokenV2Response();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019BA10()
{
  result = qword_1003D0A58;
  if (!qword_1003D0A58)
  {
    sub_1000852D4(&qword_1003D0A50);
    sub_10019BB60(&qword_1003D0A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0A58);
  }

  return result;
}

unint64_t sub_10019BAB8()
{
  result = qword_1003D0A68;
  if (!qword_1003D0A68)
  {
    sub_1000852D4(&qword_1003D0A50);
    sub_10019BB60(&qword_1003D2750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0A68);
  }

  return result;
}

uint64_t sub_10019BB60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExternalPurchaseTokenV2Response();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019BBA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019BBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019BC00(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v4 = sub_10019C034(v12, v7, v4, a2);

      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  __chkstk_darwin(v8);
  v9 = &v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_10011FF6C(0, v7, v9);

  v10 = sub_10019BDC4(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_10019BDC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v30 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_12:
    v15 = v12 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_100080F58(*(a3 + 56) + 32 * v15, v34);
    v32[0] = v18;
    v32[1] = v17;
    sub_100080F58(v34, &v33);
    if (*(a4 + 16))
    {
      v29 = v15;
      Hasher.init(_seed:)();
      swift_bridgeObjectRetain_n();
      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v11 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 != v18 || v22[1] != v17)
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        sub_10013B1E8(v32, &qword_1003D0A88);
        sub_100080F0C(v34);

        *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v25 = __OFADD__(v30++, 1);
        v9 = v35;
        if (v25)
        {
          goto LABEL_27;
        }

        goto LABEL_5;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    sub_10013B1E8(v32, &qword_1003D0A88);
    sub_100080F0C(v34);

    v9 = v35;
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      v26 = sub_10019C0D4(v28, a2, v30, a3);

      return v26;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v35 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_10019C034(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_10019BDC4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_10019C0D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100080FB4(&qword_1003CE650);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_100080F58(v17 + 32 * v16, v33);
    sub_10008B5D0(v33, v32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_10008B5D0(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10019C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_10019C3D4;

  return sub_100192088(a2, a3, a4, a5);
}

uint64_t sub_10019C3D4()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;

  *v4 = v2 & 1;
  sub_100098AC4();

  return v7();
}

uint64_t sub_10019C4D4()
{
  type metadata accessor for Notification();
  sub_1000890DC();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1000B03F4();
  v6(v5);

  return _swift_deallocObject(v0, ((v2 + 40) & ~v2) + v4, v2 | 7);
}

uint64_t sub_10019C58C()
{
  sub_1000B06A8();
  type metadata accessor for Notification();
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1000A7644;
  sub_10019DFF4();

  return v3();
}

uint64_t sub_10019C694(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10019C6D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10019C70C()
{
  type metadata accessor for Date();
  sub_1000890DC();
  v2 = *(v1 + 80);
  v4 = (((*(v3 + 64) + ((v2 + 48) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_1000B03F4();
  v6(v5);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10019C7F4()
{
  sub_1000B06A8();
  v2 = type metadata accessor for Date();
  sub_1000B046C(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100199C28(v0, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10019C89C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CDB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019C90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalPurchaseTokenV2Response();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019C970()
{
  v1 = (type metadata accessor for ExternalPurchaseTokenV2Response() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[8];
  type metadata accessor for Date();
  sub_10013B618();
  (*(v6 + 8))(v0 + v3 + v5);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10019CA98()
{
  v2 = type metadata accessor for ExternalPurchaseTokenV2Response();
  sub_1000B046C(v2);
  v5 = *(v0 + 40);
  v6 = (v0 + ((*(v4 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1000AFC98;
  sub_10019DFF4();

  return sub_100198814(v10, v11, v12, v13, v5, v14, v7, v8);
}

unint64_t sub_10019CBE0()
{
  result = qword_1003D0A90;
  if (!qword_1003D0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0A90);
  }

  return result;
}

uint64_t sub_10019CC34(uint64_t a1)
{
  v2 = type metadata accessor for ExternalPurchaseTokenV2Response();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019CC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CDB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019CD00()
{

  sub_1000B069C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10019CD58()
{

  sub_1000B069C();

  return _swift_deallocObject(v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayTokenManager.TokenError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10019CE7CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10019CEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000B06A8();
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 24);

    return sub_100081D0C(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10019CF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_100081DFC(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_10019D034()
{
  sub_10019D128(319, &qword_1003CD3C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10019D128(319, &unk_1003D0B08, &type metadata for ExternalPurchaseTokenV2Response.Token, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019D128(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10019D17C()
{
  result = qword_1003D0B40;
  if (!qword_1003D0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0B40);
  }

  return result;
}

unint64_t sub_10019D1D4()
{
  result = qword_1003D0B48;
  if (!qword_1003D0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0B48);
  }

  return result;
}

unint64_t sub_10019D228()
{
  result = qword_1003D0B58;
  if (!qword_1003D0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0B58);
  }

  return result;
}

unint64_t sub_10019D27C()
{
  result = qword_1003D0B70;
  if (!qword_1003D0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0B70);
  }

  return result;
}

uint64_t sub_10019D2D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(&qword_1003D0B60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019D348()
{
  result = qword_1003D0B88;
  if (!qword_1003D0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0B88);
  }

  return result;
}

unint64_t sub_10019D39C()
{
  result = qword_1003D0B98;
  if (!qword_1003D0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0B98);
  }

  return result;
}

unint64_t sub_10019D3F0()
{
  result = qword_1003D0BA8;
  if (!qword_1003D0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BA8);
  }

  return result;
}

_BYTE *sub_10019D454(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10019D520);
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

_BYTE *storeEnumTagSinglePayload for ExternalPurchaseTokenV2Response.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10019D624);
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

unint64_t sub_10019D660()
{
  result = qword_1003D0BB8;
  if (!qword_1003D0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BB8);
  }

  return result;
}

unint64_t sub_10019D6B8()
{
  result = qword_1003D0BC0;
  if (!qword_1003D0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BC0);
  }

  return result;
}

unint64_t sub_10019D710()
{
  result = qword_1003D0BC8;
  if (!qword_1003D0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BC8);
  }

  return result;
}

unint64_t sub_10019D768()
{
  result = qword_1003D0BD0;
  if (!qword_1003D0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BD0);
  }

  return result;
}

unint64_t sub_10019D7C0()
{
  result = qword_1003D0BD8;
  if (!qword_1003D0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BD8);
  }

  return result;
}

unint64_t sub_10019D818()
{
  result = qword_1003D0BE0;
  if (!qword_1003D0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BE0);
  }

  return result;
}

unint64_t sub_10019D870()
{
  result = qword_1003D0BE8;
  if (!qword_1003D0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BE8);
  }

  return result;
}

unint64_t sub_10019D8C8()
{
  result = qword_1003D0BF0;
  if (!qword_1003D0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BF0);
  }

  return result;
}

unint64_t sub_10019D920()
{
  result = qword_1003D0BF8;
  if (!qword_1003D0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0BF8);
  }

  return result;
}

uint64_t sub_10019D9E8()
{

  return swift_once();
}

unint64_t sub_10019DA08()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;
  return 0xD000000000000020;
}

void sub_10019DA78()
{
  v1 = 0x3A64656C69616620;
  v2 = 0xE900000000000020;

  String.append(_:)(*&v1);
}

void sub_10019DAE0(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000012;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_10019DB04()
{
  v2 = *(v0 + 320);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
}

uint64_t sub_10019DB38()
{
}

uint64_t sub_10019DB8C()
{

  return swift_slowAlloc();
}

unint64_t sub_10019DBF8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 + 4) = v4;
  *(v3 + 12) = 2082;

  return sub_100080210(a2, v2, va);
}

void sub_10019DC40()
{
  v2[12] = sub_1000FF948;
  v2[13] = v0;
  v2[14] = v1;
}

uint64_t sub_10019DC58()
{

  return sub_1000B5E48(0, 0, v0, &unk_1002F77D8, v1);
}

uint64_t sub_10019DCF4()
{

  return swift_once();
}

uint64_t sub_10019DD38()
{

  return swift_once();
}

uint64_t sub_10019DD58()
{
  v2 = *(v0 + 344);
  v3 = *(v0 + 408);

  return sub_10019C90C(v2, v3);
}

uint64_t sub_10019DDD8()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_10019DDF4()
{

  return swift_dynamicCast();
}

void sub_10019DE1C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10019DE64()
{
}

uint64_t sub_10019DE9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a9;
  a1[5] = v10;

  return sub_10019C90C(v9, a1 + v11);
}

uint64_t sub_10019DEC4()
{
}

uint64_t sub_10019DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 4) = v10;
  *(v11 + 12) = 2082;
  return a10;
}

uint64_t sub_10019DF4C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_10019DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (v11 + v14);
  *v16 = a10;
  v16[1] = a11;
  *(v11 + v13) = v12;
}

unint64_t sub_10019DF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100080210(0, 0xE000000000000000, &a9);
}

uint64_t sub_10019DFA4()
{

  return swift_willThrow();
}

uint64_t sub_10019E048()
{
}

unint64_t sub_10019E068(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_100080210(0xD000000000000016, v3 | 0x8000000000000000, va);
}

uint64_t sub_10019E088()
{
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);

  return sub_10019C89C(v2, v3);
}

void sub_10019E0A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v3 = a2 | 0x8000000000000000;
  String.append(_:)(*&a1);
}

uint64_t sub_10019E0C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10019E150()
{
  v1 = *(v0 + OBJC_IVAR____TtC9storekitd13DialogContext_bundleID);

  return v1;
}

uint64_t sub_10019E270@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9storekitd13DialogContext_bundleURL;
  type metadata accessor for URL();
  sub_100098B7C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id sub_10019E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = OBJC_IVAR____TtC9storekitd13DialogContext_dialogObserver;
  *&v5[OBJC_IVAR____TtC9storekitd13DialogContext_dialogObserver] = 0;
  v10 = &v5[OBJC_IVAR____TtC9storekitd13DialogContext_bundleID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = OBJC_IVAR____TtC9storekitd13DialogContext_bundleURL;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a3, v12);
  *&v5[v9] = a5;
  *&v5[OBJC_IVAR____TtC9storekitd13DialogContext_processInfo] = a4;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for DialogContext();
  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v13 + 8))(a3, v12);
  return v14;
}

uint64_t sub_10019E5C4()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10008E5A4(0, &qword_1003CC1F0);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_1001A1CB4();
  sub_100080FB4(&qword_1003D0D00);
  sub_1001A1D0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1003D0C00 = result;
  return result;
}

uint64_t sub_10019E7DC(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  if (qword_1003CBE38 != -1)
  {
    swift_once();
  }

  v5 = qword_1003D0C00;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = &v13;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001A1C50;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001A1C68;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019F1F8;
  aBlock[3] = &unk_10038E090;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_10019E988(uint64_t a1, void ***a2, uint64_t (*a3)(), uint64_t a4)
{
  v8 = type metadata accessor for SKLogger();
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1003D0C08;
  v12 = &off_1002EA000;
  if (qword_1003D0C08)
  {
    goto LABEL_12;
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v40 = a1;
  v13 = sub_10007EDA4(v8, qword_1003F26C8);
  sub_10007EDDC(v13, v10);
  v14 = Logger.logObject.getter();
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v10, v15);
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v14, v16, "Connecting to UI service", v17, 2u);
    v12 = &off_1002EA000;
  }

  sub_10008E5A4(0, &qword_1003D0C80);
  v18 = sub_10019EEB4(0xD000000000000019, 0x800000010031C060, 0);
  v19 = qword_1003D0C08;
  qword_1003D0C08 = v18;

  v20 = objc_opt_self();
  v21 = [v20 interfaceWithProtocol:&OBJC_PROTOCOL___SKDialogProtocol];
  v22 = [v20 interfaceWithProtocol:&OBJC_PROTOCOL___PaymentSheetDelegate];
  [v21 setInterface:v22 forSelector:"handlePurchase:paymentSheetDelegate:resultHandler:" argumentIndex:1 ofReply:0];
  if (qword_1003D0C08)
  {
    [qword_1003D0C08 setRemoteObjectInterface:v21];
    v23 = qword_1003D0C08;
    if (qword_1003D0C08)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v40;
      v45 = sub_1001A1C9C;
      v46 = v24;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_10019E0C0;
      v44 = &unk_10038E0E0;
      v25 = _Block_copy(&aBlock);
      v26 = v23;

      [v26 setInterruptionHandler:v25];
      v27 = v25;
      v12 = &off_1002EA000;
      _Block_release(v27);

      v28 = qword_1003D0C08;
      if (qword_1003D0C08)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = v40;
        v45 = sub_1001A1CA4;
        v46 = v29;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_10019E0C0;
        v44 = &unk_10038E130;
        v30 = _Block_copy(&aBlock);
        v31 = v28;
        v12 = &off_1002EA000;

        [v31 setInvalidationHandler:v30];
        _Block_release(v30);

        if (qword_1003D0C08)
        {
          v32 = qword_1003D0C08;
          [v32 resume];
        }
      }
    }
  }

  v11 = qword_1003D0C08;
  if (qword_1003D0C08)
  {
LABEL_12:
    v45 = a3;
    v46 = a4;
    aBlock = _NSConcreteStackBlock;
    v42 = *(v12 + 176);
    v43 = sub_1000977C8;
    v44 = &unk_10038E158;
    v33 = _Block_copy(&aBlock);
    v34 = v11;

    v35 = [v34 remoteObjectProxyWithErrorHandler:v33];
    _Block_release(v33);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100080FB4(&unk_1003D0CE8);
    v36 = swift_dynamicCast();
    v37 = aBlock;
    if (!v36)
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  *a2 = v37;
  return swift_unknownObjectRelease();
}

id sub_10019EEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_10019EF30(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger();
  __chkstk_darwin(v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v5 = sub_10007EDA4(v2, qword_1003F26C8);
  sub_10007EDDC(v5, v4);
  v6 = Logger.logObject.getter();
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, v8, "UI service interrupted", v9, 2u);
  }

  if (qword_1003CBE38 != -1)
  {
    swift_once();
  }

  v10 = qword_1003D0C00;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001A2380;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1001A2368;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019F1F8;
  aBlock[3] = &unk_10038E248;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  dispatch_sync(v14, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019F220(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger();
  __chkstk_darwin(v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v5 = sub_10007EDA4(v2, qword_1003F26C8);
  sub_10007EDDC(v5, v4);
  v6 = Logger.logObject.getter();
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, v8, "UI service invalidated", v9, 2u);
  }

  if (qword_1003CBE38 != -1)
  {
    swift_once();
  }

  v10 = qword_1003D0C00;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001A1CAC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1001A2368;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019F1F8;
  aBlock[3] = &unk_10038E1D0;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  dispatch_sync(v14, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

void sub_10019F4E8()
{
  v0 = qword_1003D0C08;
  qword_1003D0C08 = 0;
}

uint64_t sub_10019F4F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_10013B438(sub_10019F510);
}

uint64_t sub_10019F510()
{
  sub_100098BB4();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_10008E5A4(0, &unk_1003CE560);
  *v2 = v0;
  v2[1] = sub_10019F61C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001DLL, 0x800000010031C040, sub_1001A1A00, v1, v3);
}

uint64_t sub_10019F61C()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_10019F744;
  }

  else
  {

    v6 = sub_10019F728;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10019F744()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_10019F7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = type metadata accessor for SKLogger();
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100080FB4(&unk_1003D0C70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - v10;
  if (*(a2 + OBJC_IVAR____TtC9storekitd13DialogContext_dialogObserver))
  {
    v12 = *(a2 + OBJC_IVAR____TtC9storekitd13DialogContext_dialogObserver);
    (*(v9 + 16))(v11, a1, v8);
LABEL_5:
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v11, v8);
    aBlock[4] = sub_1001A1B14;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019FE54;
    aBlock[3] = &unk_10038E018;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v12 handleAuthenticateRequest:v29 resultHandler:v18];
    _Block_release(v18);
    return swift_unknownObjectRelease();
  }

  v27[0] = v5;
  v27[1] = type metadata accessor for DialogContext();
  v28 = a1;
  v13 = *(v9 + 16);
  v13(v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  v12 = sub_10019E7DC(sub_1001A1A0C, v15);

  if (v12)
  {
    v13(v11, v28, v8);
    goto LABEL_5;
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v20 = sub_10007EDA4(v27[0], qword_1003F26C8);
  sub_10007EDDC(v20, v7);
  v21 = Logger.logObject.getter();
  v22 = type metadata accessor for Logger();
  (*(*(v22 - 8) + 8))(v7, v22);
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v21, v23, "Failed authenticate request. No dialog observer.", v24, 2u);
  }

  sub_1001A18A8();
  v25 = swift_allocError();
  *v26 = 0;
  aBlock[0] = v25;
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10019FBA8(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger();
  __chkstk_darwin(v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v5 = sub_10007EDA4(v2, qword_1003F26C8);
  sub_10007EDDC(v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = _convertErrorToNSError(_:)();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v8, "Failed authenticate request %{public}@", v9, 0xCu);
    sub_1001A1BB8(v10);
  }

  v13[1] = a1;
  swift_errorRetain();
  sub_100080FB4(&unk_1003D0C70);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10019FDA0(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
LABEL_3:
    sub_100080FB4(&unk_1003D0C70);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    sub_1001A18A8();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  v3 = a1;
  sub_100080FB4(&unk_1003D0C70);
  return CheckedContinuation.resume(returning:)();
}

void sub_10019FE54(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10019FF00(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A2360;

  return sub_10019F4F8(v6);
}

uint64_t sub_10019FFDC()
{
  sub_100098BB4();
  v1 = [objc_allocWithZone(AMSSystemAlertDialogTask) initWithRequest:v0[19]];
  v0[20] = v1;
  v2 = [v1 present];
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001A0130;
  v3 = swift_continuation_init();
  v0[17] = sub_100080FB4(&unk_1003D0C60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001A0308;
  v0[13] = &unk_10038DFA0;
  v0[14] = v3;
  [v2 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001A0130()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 176) = v2;
  if (v2)
  {
    v3 = sub_1001A0298;
  }

  else
  {
    v3 = sub_1001A0238;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A0238()
{
  sub_10008BE9C();
  v1 = *(v0 + 168);

  v2 = sub_10008C048();

  return v3(v2);
}

uint64_t sub_1001A0298()
{
  sub_100098BB4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  swift_willThrow();

  sub_100098AC4();

  return v3();
}

uint64_t sub_1001A0354(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_100224DF8(a6, v10);
}

uint64_t sub_1001A03D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001A0498;

  return sub_10019FFC4(v6);
}

uint64_t sub_1001A0498()
{
  sub_1000B0004();
  sub_1000B06C0();
  v4 = v3[3];
  v5 = v3[2];
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;

  v8 = v3[4];
  if (v0)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = sub_1000AFF24();
    v11(v10, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v12 = sub_1000AFF24();
    v13(v12, v1, 0);
    _Block_release(v8);
  }

  sub_1000AFF14();

  return v14();
}

uint64_t sub_1001A0620()
{
  sub_100098BB4();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = sub_1000B00E0(v4);
  *v5 = v6;
  v5[1] = sub_1001A06BC;

  return sub_1001A08A4(v3, v1);
}

uint64_t sub_1001A06BC()
{
  sub_10008BE9C();
  v3 = v2;
  sub_10008C070();
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1001A07CC(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1001A233C;

  return sub_1001A0620();
}

uint64_t sub_1001A08A4(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  return sub_10013B438(sub_1001A08C0);
}

uint64_t sub_1001A08C0()
{
  if (!sub_1001A197C(*(v0 + 208)))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v1 = *(v0 + 224);
  v19 = *(v0 + 216);
  v2 = *(v0 + 208);
  *(v0 + 144) = 7368801;
  *(v0 + 152) = 0xE300000000000000;
  sub_1001A23AC();
  *(v0 + 168) = &type metadata for String;
  v3 = sub_1001A23DC(0x8000000100315CD0);
  sub_1001A2388(v3);
  sub_10008E550(v0 + 80);
  *(v0 + 144) = 0x707041666572;
  *(v0 + 152) = 0xE600000000000000;
  sub_1001A23AC();
  v4 = *(v1 + OBJC_IVAR____TtC9storekitd13DialogContext_bundleID);
  v5 = *(v1 + OBJC_IVAR____TtC9storekitd13DialogContext_bundleID + 8);
  *(v0 + 168) = &type metadata for String;
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  sub_10008B5D0((v0 + 144), (v0 + 176));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001A2388(isUniquelyReferenced_nonNull_native);
  sub_10008E550(v0 + 80);
  *(v0 + 144) = 0x6369706F74;
  *(v0 + 152) = 0xE500000000000000;
  sub_1001A23AC();
  *(v0 + 168) = &type metadata for String;
  v7 = sub_1001A23DC(0x800000010031C020);
  sub_1001A2388(v7);
  sub_10008E550(v0 + 80);
  sub_1001A18FC(v20, v2);
  v8 = [objc_allocWithZone(AMSSystemEngagementTask) initWithRequest:v2];
  *(v0 + 232) = v8;
  [v8 setClientInfo:*(v1 + OBJC_IVAR____TtC9storekitd13DialogContext_processInfo)];
  [v8 setBag:v19];
  v9 = [v8 present];
  *(v0 + 240) = v9;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1001A0BA4;
  v10 = swift_continuation_init();
  *(v0 + 136) = sub_100080FB4(&qword_1003D2800);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001A0308;
  *(v0 + 104) = &unk_10038DF78;
  *(v0 + 112) = v10;
  [v9 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1001A0BA4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 248) = v2;
  if (v2)
  {
    v3 = sub_1001A0D0C;
  }

  else
  {
    v3 = sub_1001A0CAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A0CAC()
{
  sub_10008BE9C();
  v1 = *(v0 + 240);

  v2 = sub_10008C048();

  return v3(v2);
}

uint64_t sub_1001A0D0C()
{
  sub_100098BB4();
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  swift_willThrow();

  sub_100098AC4();

  return v3();
}

uint64_t *sub_1001A0D7C(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A0ED4(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  v5[6] = v10;
  v11 = a1;
  swift_unknownObjectRetain();
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1001A0FCC;

  return sub_1001A08A4(v11, a2);
}

uint64_t sub_1001A0FCC()
{
  sub_1000B06C0();
  v4 = v3[4];
  v5 = v3[2];
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;

  swift_unknownObjectRelease();
  v8 = v3[5];

  if (v0)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = sub_1000AFF24();
    v11(v10, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v12 = sub_1000AFF24();
    v13(v12, v1, 0);
    _Block_release(v8);
  }

  sub_1000AFF14();

  return v14();
}

uint64_t sub_1001A11A8()
{
  v9 = v0;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SKLogger();
  sub_10007EDA4(v1, qword_1003F26C8);
  v2 = static os_log_type_t.error.getter();
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v8[0] = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_100080210(0, 0xE000000000000000, v8);
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_100080210(0xD00000000000002ELL, 0x800000010031BFF0, v8);
    _os_log_impl(&_mh_execute_header, v3, v2, "%{public}s%{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  sub_1001A18A8();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();
  sub_100098AC4();

  return v6();
}

uint64_t sub_1001A1390(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_1001A23CC();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = a1;

  return sub_100224DF8(a7, v12);
}

uint64_t sub_1001A1448(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1001A1510;

  return sub_1001A1194();
}

uint64_t sub_1001A1510()
{
  sub_1000B06C0();
  v4 = v3[4];
  v5 = v3[2];
  v6 = *v2;
  sub_100098AB4();
  *v7 = v6;

  swift_unknownObjectRelease();
  v8 = v3[5];
  if (v0)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = sub_1000AFF24();
    v11(v10, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v12 = sub_1000AFF24();
    v13(v12, v1, 0);
    _Block_release(v8);
  }

  sub_1000AFF14();

  return v14();
}

id sub_1001A16D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DialogContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DialogContext()
{
  result = qword_1003D0C40;
  if (!qword_1003D0C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A17F4()
{
  result = type metadata accessor for URL();
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

unint64_t sub_1001A18A8()
{
  result = qword_1003D0C50;
  if (!qword_1003D0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0C50);
  }

  return result;
}

void sub_1001A18FC(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setMetricsOverlay:isa];
}

uint64_t sub_1001A197C(void *a1)
{
  v1 = [a1 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001A1A0C(uint64_t a1)
{
  sub_100080FB4(&unk_1003D0C70);

  return sub_10019FBA8(a1);
}

uint64_t sub_1001A1A88()
{
  sub_100080FB4(&unk_1003D0C70);
  sub_100098B7C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001A1B14(void *a1, uint64_t a2)
{
  sub_100080FB4(&unk_1003D0C70);

  return sub_10019FDA0(a1, a2);
}

uint64_t sub_1001A1BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A1BB8(uint64_t a1)
{
  v2 = sub_100080FB4(&qword_1003D18D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A1C20()
{

  v0 = sub_1001A23CC();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_1001A1CB4()
{
  result = qword_1003D0CF8;
  if (!qword_1003D0CF8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0CF8);
  }

  return result;
}

unint64_t sub_1001A1D0C()
{
  result = qword_1003D0D08;
  if (!qword_1003D0D08)
  {
    sub_1000852D4(&qword_1003D0D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0D08);
  }

  return result;
}

uint64_t sub_1001A1D74()
{
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_1000B00D0();

  return v4(v3);
}

uint64_t sub_1001A1E24()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A1E7C()
{
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_1000B00D0();

  return v4(v3);
}

uint64_t sub_1001A1F34()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  v1 = sub_1001A23CC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1001A1F7C()
{
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_1000B00D0();

  return v4(v3);
}

uint64_t sub_1001A2030()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000A7644;
  v3 = sub_1000B00D0();

  return v4(v3);
}

uint64_t sub_1001A20D4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001A211C()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_1000B00D0();

  return v4(v3);
}

_BYTE *storeEnumTagSinglePayload for DialogContext.DialogContextError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001A228CLL);
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

unint64_t sub_1001A22C8()
{
  result = qword_1003D0D70;
  if (!qword_1003D0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0D70);
  }

  return result;
}

void sub_1001A2388(char a1)
{

  sub_10023EE74(v2 + 176, v1, a1);
}

uint64_t sub_1001A23AC()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_1001A23DC@<X0>(uint64_t a1@<X8>)
{
  *v2 = 0xD000000000000012;
  *(v1 + 152) = a1;
  sub_10008B5D0(v2, (v1 + 176));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1001A2690()
{
  sub_10008BE9C();
  *(v0 + 48) = sub_10019D99C();

  return _swift_task_switch(sub_1001A26F8, 0, 0);
}

uint64_t sub_1001A26F8()
{
  sub_100098BB4();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  *(v0 + 56) = v2;
  if (v2)
  {
    *(v0 + 64) = 0;
    *(v0 + 72) = *(v1 + 40);

    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v4 = sub_1001A776C(v3);

    return sub_10017F65C(v4, v5);
  }

  else
  {

    sub_100098AC4();

    return v7();
  }
}

uint64_t sub_1001A27CC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  return _swift_task_switch(sub_1001A28D4, 0, 0);
}

uint64_t sub_1001A28D4()
{
  sub_100098BB4();
  v1 = *(v0 + 64) + 1;
  if (v1 == *(v0 + 56))
  {

    sub_100098AC4();

    return v2();
  }

  else
  {
    *(v0 + 64) = v1;
    *(v0 + 72) = *(*(v0 + 32) + 16 * v1 + 40);

    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v5 = sub_1001A776C();

    return sub_10017F65C(v5, v6);
  }
}

id sub_1001A29B0()
{
  String._bridgeToObjectiveC()();
  sub_1000B02A4();
  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier:v0];

  return v1;
}

uint64_t sub_1001A2A0C()
{
  sub_100080FB4(&qword_1003D0E80);
  swift_allocObject();
  result = sub_10019D9C0(sub_10018F15C, 0);
  qword_1003D0D80 = result;
  return result;
}

uint64_t sub_1001A2A70()
{
  sub_10008BE9C();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v4);
  v1[11] = sub_100124174();
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for LegacyRestoreCompletedTransactionsRequest();
  v1[13] = v5;
  sub_1000B01B0(v5);
  v1[14] = sub_1000B05D0();
  v6 = sub_100080FB4(&qword_1003CD4B8);
  sub_1000B01B0(v6);
  v1[15] = sub_100124174();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v1[18] = v7;
  sub_1000B046C(v7);
  v1[19] = v8;
  v1[20] = sub_1000B05D0();
  v9 = sub_1000B043C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001A3260()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_1000B043C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001A3358()
{
  sub_1000B02BC();
  v1 = *(v0 + 184);
  sub_10008B5E0();
  swift_allocError();
  *v2 = 5;
  swift_willThrow();

  sub_1001A77B4();

  sub_100098AC4();

  return v3();
}

uint64_t sub_1001A3434()
{
  sub_100098BB4();
  v2 = *v1;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_10008BEFC();
  *v6 = v5;
  v9[28] = v7;
  v9[29] = v8;
  v9[30] = v10;
  v9[31] = v11;
  v9[32] = v0;

  sub_1001A77EC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1001A3578()
{
  sub_10008BE9C();
  sub_100105C8C(*(v0 + 72) + *(v0 + 296), *(v0 + 120), &qword_1003CD4B8);
  if (sub_1001A77D0() == 1)
  {
    sub_1000AF25C(*(v0 + 120), &qword_1003CD4B8);
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 120);
    (*(v0 + 168))(*(v0 + 88), v2, *(v0 + 144));
    sub_1001A76FC();
    sub_1001A76A4(v2, v3);
    v1 = 0;
  }

  sub_100081DFC(*(v0 + 88), v1, 1, *(v0 + 144));
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_1001A369C;

  return sub_1001A6CE0();
}

uint64_t sub_1001A369C()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 88);
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  sub_1000AF25C(v2, &unk_1003D0540);
  sub_1001A77EC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001A37C4()
{
  sub_10008BE9C();
  if (qword_1003CBE40 != -1)
  {
    sub_1001A7714();
  }

  v1 = qword_1003D0D80;
  *(v0 + 272) = qword_1003D0D80;

  return _swift_task_switch(sub_1001A3848, v1, 0);
}

uint64_t sub_1001A3848()
{
  sub_10008BE9C();
  v0[35] = sub_10019D99C();
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_1001A38E4;
  sub_1000B06F4(v0[8]);

  return sub_100181E3C();
}

uint64_t sub_1001A38E4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_1000B043C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001A39DC()
{
  sub_1000B02BC();
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);

  sub_1001A779C();
  sub_1001A76A4(v2, v3);

  v4 = sub_1001073F0();
  sub_1000BC8B4(v4, v5);
  if (v1 >= 1)
  {
    sandbox_extension_release();
  }

  sub_1001A77B4();

  sub_10009F198();
  v8 = *(v0 + 224);

  return v7(v8);
}

uint64_t sub_1001A3AD8()
{
  sub_1000B02BC();
  v1 = *(v0 + 208);
  sub_1001A779C();
  sub_1001A76A4(v2, v3);
  if (v1 < 1)
  {
    v4 = *(v0 + 184);
  }

  else
  {
    v4 = *(v0 + 184);
    sandbox_extension_release();
  }

  sub_1001A77B4();

  sub_100098AC4();

  return v5();
}

uint64_t sub_1001A3BB0(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_100123B28(sub_1001A3BCC, v1);
}

uint64_t sub_1001A3EB4()
{
  sub_100098BB4();
  v3 = v2;
  sub_1000AFE64();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 112) = v0;

  if (!v0)
  {
  }

  sub_1001A77EC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001A3FDC()
{
  sub_10008BE9C();
  v1 = *(v0 + 88);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1001A4038()
{
  v25 = v1;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v2 = *(v1 + 112);
  v3 = type metadata accessor for SKLogger();
  sub_1000B01C8(v3, qword_1003F26C8);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1000B00A8();
  v4._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v4);
  *(v1 + 64) = v2;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);
  v9 = static os_log_type_t.error.getter();

  Logger.logObject.getter();
  sub_1000B02A4();

  v10 = os_log_type_enabled(v0, v9);
  v11 = *(v1 + 88);
  if (v10)
  {
    sub_1000B7DC8();
    v21 = v12;
    v20 = v6;
    v13 = swift_slowAlloc();
    v14 = sub_10008E670();
    *v13 = 136446466;
    v22 = v14;
    v23 = 91;
    v24 = 0xE100000000000000;
    v15._countAndFlagsBits = v8;
    v15._object = v7;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8285;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    sub_100080210(91, 0xE100000000000000, &v22);

    sub_100184D18();
    v17 = sub_100080210(v20, v5, &v22);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v0, v9, "%{public}s%{public}s", v13, 0x16u);
    sub_1000B0048();
    sub_100081C28();
    sub_10008BF90();
  }

  else
  {
  }

  sub_100098AC4();

  return v18();
}

uint64_t sub_1001A42E8()
{
  sub_10008BE9C();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_100080FB4(&qword_1003CD4B8);
  sub_1000B01B0(v4);
  v1[10] = sub_1000B05D0();
  v5 = sub_1000B043C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001A4370()
{
  sub_100098BB4();
  v1 = v0[10];
  v2 = v0[8];
  v3 = type metadata accessor for LegacyUnfinishedTransactionsTask();
  sub_100105C8C(v2 + *(v3 + 20), v1, &qword_1003CD4B8);
  v4 = type metadata accessor for CustomReceiptURL();
  v5 = sub_1001A77D0();
  v6 = v0[10];
  if (v5 == 1)
  {
    sub_1000AF25C(v0[10], &qword_1003CD4B8);
    v7 = -1;
    goto LABEL_10;
  }

  v8 = (v6 + *(v4 + 20));
  v9 = *v8;
  v10 = v8[1];

  sub_1001A76FC();
  sub_1001A76A4(v6, v11);
  if ((v10 & 0x1000000000000000) != 0)
  {
    sub_1001073F0();
    v9 = sub_1001B3950();
    v13 = v12;

    v10 = v13;
    if ((v13 & 0x2000000000000000) == 0)
    {
LABEL_5:
      if ((v9 & 0x1000000000000000) == 0)
      {
        sub_1001073F0();
        _StringObject.sharedUTF8.getter();
      }

      goto LABEL_9;
    }
  }

  else if ((v10 & 0x2000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v0[4] = v9;
  v0[5] = v10 & 0xFFFFFFFFFFFFFFLL;
LABEL_9:
  v7 = sandbox_extension_consume();

LABEL_10:
  v0[11] = v7;
  if (qword_1003CBE40 != -1)
  {
    sub_1001A7714();
  }

  v14 = qword_1003D0D80;
  v0[12] = qword_1003D0D80;

  return _swift_task_switch(sub_1001A44EC, v14, 0);
}

uint64_t sub_1001A44EC()
{
  sub_10008BE9C();
  v1 = sub_10019D99C();
  v0[13] = v1;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1001A4590;
  v3 = sub_1000B06F4(v0[7]);

  return sub_1001A4C38(v3, v4, v1);
}

uint64_t sub_1001A4590()
{
  sub_100098BB4();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  if (v2)
  {
    v8 = swift_task_alloc();
    v4[15] = v8;
    *v8 = v6;
    v8[1] = sub_1001A472C;
    sub_1000B06F4(v4[13]);

    return sub_1001A5E04();
  }

  else
  {
    v10 = swift_task_alloc();
    v4[17] = v10;
    *v10 = v6;
    v10[1] = sub_1001A48A8;
    v11 = sub_1000B06F4(v4[7]);

    return sub_10018269C(v11);
  }
}

uint64_t sub_1001A472C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 128) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001A4828()
{
  sub_10008BE9C();
  v1 = *(v0 + 88);

  v2 = *(v0 + 128);
  if (v1 >= 1)
  {
    sandbox_extension_release();
  }

  sub_10009F198();

  return v3(v2);
}

uint64_t sub_1001A48A8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001A49A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v26;
  a24 = v27;
  sub_1000B0108();
  a22 = v25;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v28 = v25[18];
  v29 = type metadata accessor for SKLogger();
  sub_1000B01C8(v29, qword_1003F26C8);
  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  a12 = 0x20646E756F46;
  a13 = 0xE600000000000000;
  v25[6] = *(v28 + 16);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  sub_1000B00A8();
  v31._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v31);
  v33 = a12;
  v32 = a13;
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v35 = v25[2];
  v34 = v25[3];
  v36 = static os_log_type_t.default.getter();

  Logger.logObject.getter();
  sub_1000B02A4();

  v37 = os_log_type_enabled(v24, v36);
  v38 = v25[13];
  if (v37)
  {
    sub_1000B7DC8();
    a10 = v33;
    v39 = swift_slowAlloc();
    sub_10008E670();
    *v39 = 136446466;
    sub_10009F0A0();
    v40._countAndFlagsBits = v35;
    v40._object = v34;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 8285;
    v41._object = 0xE200000000000000;
    String.append(_:)(v41);
    v42 = sub_100080210(a12, a13, &a11);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    v43 = sub_100080210(a10, v32, &a11);

    *(v39 + 14) = v43;
    sub_10008C0B8(&_mh_execute_header, v44, v45, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_10008BF90();
    sub_100081C28();
  }

  else
  {
  }

  if (v25[11] >= 1)
  {
    sandbox_extension_release();
  }

  sub_10009F198();
  sub_10008BE10();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1001A4C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return sub_100123B28(sub_1001A4C58, v3);
}

uint64_t sub_1001A5048()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  v8 = swift_task_alloc();
  *(v4 + 152) = v8;
  *v8 = v6;
  v8[1] = sub_1001A5160;

  return sub_1000A10AC(v2);
}

uint64_t sub_1001A5160()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 160) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001A5440()
{
  sub_100098BB4();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  if (v2)
  {
    v8 = swift_task_alloc();
    *(v4 + 176) = v8;
    *v8 = v6;
    v8[1] = sub_1001A559C;
    sub_1000B06F4(*(v4 + 112));

    return sub_100180BDC();
  }

  else
  {
    sub_10009F198();

    return v10(0);
  }
}

uint64_t sub_1001A559C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 184) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001A58DC(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_100123B28(sub_1001A58F8, v1);
}

uint64_t sub_1001A58F8()
{
  sub_100098BB4();
  if (*(v0[6] + OBJC_IVAR____TtC9storekitd6Client_hasEverHadIAPs))
  {
    sub_10009F198();

    return v2(1);
  }

  else
  {
    v0[8] = sub_1001A7AB4(v1);
    swift_getObjectType();
    if (qword_1003CBFA0 != -1)
    {
      swift_once();
    }

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1001A5A24;
    v5 = sub_100093DD0();

    return sub_10024EFF4(v5);
  }
}

uint64_t sub_1001A5A24()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    v9 = *(v5 + 56);
    v10 = sub_1001A5D9C;
  }

  else
  {
    v11 = *(v5 + 56);
    swift_unknownObjectRelease();
    *(v5 + 88) = v3 & 1;
    v10 = sub_1001A5B4C;
    v9 = v11;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1001A5D9C()
{
  sub_10008BE9C();
  swift_unknownObjectRelease();

  sub_10009F198();

  return v0(0);
}

uint64_t sub_1001A5E04()
{
  sub_10008BE9C();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_100080FB4(&qword_1003D0E60);
  v1[12] = v5;
  sub_1000B046C(v5);
  v1[13] = v6;
  v1[14] = sub_1000B05D0();
  v7 = sub_100080FB4(&qword_1003D0E68);
  v1[15] = v7;
  sub_1000B046C(v7);
  v1[16] = v8;
  v1[17] = sub_1000B05D0();
  v9 = sub_100080FB4(&qword_1003D0E70);
  v1[18] = v9;
  sub_1000B046C(v9);
  v1[19] = v10;
  v1[20] = sub_1000B05D0();
  v11 = sub_100080FB4(&qword_1003CD4B8);
  sub_1000B01B0(v11);
  v1[21] = sub_100124174();
  v1[22] = swift_task_alloc();
  v12 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v12);
  v1[23] = sub_100124174();
  v1[24] = swift_task_alloc();
  v13 = type metadata accessor for LegacyUnfinishedTransactionsRequest();
  v1[25] = v13;
  sub_1000B01B0(v13);
  v1[26] = sub_1000B05D0();
  v14 = sub_1000B043C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1001A5FFC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 80);
  v3 = *(type metadata accessor for LegacyUnfinishedTransactionsTask() + 20);
  *(v0 + 304) = v3;
  sub_100105C8C(v2 + v3, v1, &qword_1003CD4B8);
  v4 = type metadata accessor for CustomReceiptURL();
  *(v0 + 216) = v4;
  v5 = sub_100081D0C(v1, 1, v4);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  if (v5 == 1)
  {
    sub_1000AF25C(*(v0 + 176), &qword_1003CD4B8);
    v8 = type metadata accessor for URL();
    v9 = v6;
    v10 = 1;
  }

  else
  {
    v11 = type metadata accessor for URL();
    sub_100098B7C();
    (*(v12 + 16))(v6, v7, v11);
    sub_1001A76FC();
    sub_1001A76A4(v7, v13);
    v9 = v6;
    v10 = 0;
    v8 = v11;
  }

  sub_100081DFC(v9, v10, 1, v8);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = *(v0 + 192);
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  v23 = *(v0 + 72);
  *v15 = v23;
  sub_1000B71B8(v16, v15 + *(v14 + 20));
  *(swift_task_alloc() + 16) = v15;
  (*(v22 + 104))(v20, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v21);
  v24 = v23;
  AsyncStream.init(_:bufferingPolicy:_:)();

  AsyncStream.makeAsyncIterator()();
  (*(v18 + 8))(v17, v19);
  *(v0 + 224) = sub_1001A75B0();
  *(v0 + 232) = _swiftEmptyArrayStorage;
  v25 = swift_task_alloc();
  *(v0 + 240) = v25;
  *v25 = v0;
  v26 = sub_1001A7734(v25);

  return AsyncStream.Iterator.next(isolation:)(v26);
}

uint64_t sub_1001A625C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_1000B043C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001A6354()
{
  v1 = *(v0 + 16);
  *(v0 + 248) = v1;
  v2 = *(v0 + 40);
  *(v0 + 264) = *(v0 + 32);
  *(v0 + 272) = v2;
  if (v1)
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 168);
    sub_100105C8C(*(v0 + 80) + *(v0 + 304), v4, &qword_1003CD4B8);
    v5 = sub_100081D0C(v4, 1, v3);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    if (v5 == 1)
    {
      sub_1000AF25C(*(v0 + 168), &qword_1003CD4B8);
      v8 = type metadata accessor for URL();
      v9 = v6;
      v10 = 1;
    }

    else
    {
      v15 = type metadata accessor for URL();
      sub_100098B7C();
      (*(v16 + 16))(v6, v7, v15);
      sub_1001A76FC();
      sub_1001A76A4(v7, v17);
      v9 = v6;
      v10 = 0;
      v8 = v15;
    }

    sub_100081DFC(v9, v10, 1, v8);
    v18 = swift_task_alloc();
    *(v0 + 280) = v18;
    *v18 = v0;
    v18[1] = sub_1001A6598;

    return sub_1001A6CE0();
  }

  else
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_1001A686C;
    v12 = sub_100093DD0();

    return sub_10017F65C(v12, v13);
  }
}

uint64_t sub_1001A6598()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 184);
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  sub_1000AF25C(v2, &unk_1003D0540);
  sub_1001A77EC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001A66C0(uint64_t a1)
{
  v2 = v1[31];
  v3 = *(v2 + 16);
  v4 = *(v1[29] + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_15;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1[29];
  if (!isUniquelyReferenced_nonNull_native || (v7 = *(v6 + 24) >> 1, v7 < v4 + v3))
  {
    sub_1001DA128();
    v6 = v8;
    v7 = *(v8 + 24) >> 1;
  }

  if (*(v2 + 16))
  {
    v9 = v7 - *(v6 + 16);
    a1 = type metadata accessor for LegacyTransactionInternal();
    if (v9 >= v3)
    {
      swift_arrayInitWithCopy();

      if (!v3)
      {
        goto LABEL_11;
      }

      v10 = *(v6 + 16);
      v11 = __OFADD__(v10, v3);
      v12 = v10 + v3;
      if (!v11)
      {
        *(v6 + 16) = v12;
        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return AsyncStream.Iterator.next(isolation:)(a1);
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  sub_1001A7604(v1[31], v1[32], v1[33], v1[34]);
  v1[29] = v6;
  v13 = swift_task_alloc();
  v1[30] = v13;
  *v13 = v1;
  a1 = sub_1001A7734();

  return AsyncStream.Iterator.next(isolation:)(a1);
}

uint64_t sub_1001A686C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_1000B043C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001A6B08()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_1000B043C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001A6C00()
{
  sub_1000B02BC();
  sub_1001A76A4(*(v0 + 208), type metadata accessor for LegacyUnfinishedTransactionsRequest);

  sub_10009F198();
  v2 = *(v0 + 232);

  return v1(v2);
}

uint64_t sub_1001A6CE0()
{
  sub_10008BE9C();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v6);
  v1[12] = sub_1000B05D0();
  v7 = type metadata accessor for URL();
  v1[13] = v7;
  sub_1000B046C(v7);
  v1[14] = v8;
  v1[15] = sub_1000B05D0();
  v9 = sub_1000B043C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001A7158()
{
  sub_100098BB4();
  v2 = *v1;
  sub_1000AFE64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_1001A72E4;
  }

  else
  {
    v6 = sub_1001A7278;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001A7278()
{
  sub_10008BE9C();
  sub_1000BC8B4(*(v0 + 56), *(v0 + 64));

  sub_100098AC4();

  return v1();
}

uint64_t sub_1001A72E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v25;
  a24 = v26;
  sub_1000B0108();
  a22 = v24;
  v27 = v24[17];
  sub_1000BC8B4(v24[7], v24[8]);
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v28 = type metadata accessor for SKLogger();
  v29 = sub_10007EDA4(v28, qword_1003F26C8);
  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  v30 = a13;
  v24[2] = a12;
  v24[3] = v30;
  sub_1000B00A8();
  v31._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v31);
  v24[6] = v27;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v32 = v24[2];
  v33 = v24[3];
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v35 = v24[4];
  v34 = v24[5];
  v36 = static os_log_type_t.error.getter();

  Logger.logObject.getter();
  sub_1000B0404();

  if (os_log_type_enabled(v29, v36))
  {
    sub_1000B7DC8();
    a10 = v27;
    v37 = swift_slowAlloc();
    sub_10008E670();
    *v37 = 136446466;
    sub_10009F0A0();
    v38._countAndFlagsBits = v35;
    v38._object = v34;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 8285;
    v39._object = 0xE200000000000000;
    String.append(_:)(v39);
    sub_100080210(a12, a13, &a11);

    sub_100184D18();
    v40 = sub_100080210(v32, v33, &a11);

    *(v37 + 14) = v40;
    sub_1000AFFA8(&_mh_execute_header, v41, v42, "%{public}s%{public}s");
    sub_1000B0048();
    sub_100081C28();
    sub_10008BF90();
  }

  else
  {
  }

  sub_100098AC4();
  sub_10008BE10();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1001A7554()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1001A75B0()
{
  result = qword_1003D0E78;
  if (!qword_1003D0E78)
  {
    type metadata accessor for LegacyTransactionManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0E78);
  }

  return result;
}

uint64_t sub_1001A7604(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {

    return sub_1000BC8B4(a3, a4);
  }

  return result;
}

unint64_t sub_1001A7660()
{
  result = qword_1003CE6E8;
  if (!qword_1003CE6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003CE6E8);
  }

  return result;
}

uint64_t sub_1001A76A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001A7714()
{

  return swift_once();
}

uint64_t sub_1001A77D0()
{

  return sub_100081D0C(v0, 1, v1);
}

void sub_1001A7804(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

_BYTE *storeEnumTagSinglePayload for StoreKitFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001A78F0);
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

unint64_t sub_1001A792C()
{
  result = qword_1003D0E88;
  if (!qword_1003D0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0E88);
  }

  return result;
}

const char *sub_1001A7994(char a1)
{
  if (!a1)
  {
    return "UseStoreKitBag";
  }

  if (a1 == 1)
  {
    return "UseStoreKitService";
  }

  return "UseTransactionCacheManager";
}

uint64_t sub_1001A7C68()
{
  sub_1001B55C0();
  if (!v1)
  {
    return sub_1001AAAD8() & 1;
  }

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  sub_10007EDA4(v2, qword_1003F26C8);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v3._countAndFlagsBits = 0xD000000000000037;
  v3._object = 0x800000010031C9D0;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID));
  v4._object = 0x800000010031CA10;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5 = static os_log_type_t.default.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    sub_1000B7DC8();
    v7 = swift_slowAlloc();
    sub_1000B7DBC();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136446466;
    v10 = sub_100093CF0(v8, v9, v14);
    sub_100093BF8(v10);
    v11 = sub_100080210(0, 0xE000000000000000, v14);

    *(v7 + 14) = v11;
    sub_1001B552C(&_mh_execute_header, v12, v5, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1001B5198();
  }

  else
  {
  }

  return 0;
}

void sub_1001A7E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100093D08();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_100080FB4(&unk_1003D0540);
  v28 = sub_1000B01B0(v27);
  __chkstk_darwin(v28);
  sub_1001460C4();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = sub_100080FB4(&qword_1003D1088);
  v36 = sub_1000B01B0(v35);
  __chkstk_darwin(v36);
  sub_1001460C4();
  sub_1001B5330();
  __chkstk_darwin(v37);
  sub_1001B5448();
  __chkstk_darwin(v38);
  v40 = &a9 - v39;
  sub_1001B4D7C(v20 + OBJC_IVAR____TtC9storekitd6Client_serverOverride, &a9 - v39, &qword_1003D1088);
  v41 = type metadata accessor for Client.Server(0);
  sub_1001B53F4();
  sub_1001B5430(v42, v43, v44);
  if (!v49)
  {
    sub_1001B5268();
    v48 = v40;
LABEL_6:
    sub_1001B4A94(v48, v26);
    goto LABEL_11;
  }

  sub_10013B1E8(v40, &qword_1003D1088);
  sub_1001B55C0();
  if (v49)
  {
    v45 = sub_100080FB4(&qword_1003CCB50);
    v46 = v26;
    v47 = 1;
LABEL_10:
    sub_100081DFC(v46, v47, 2, v45);
    goto LABEL_11;
  }

  sub_1001B55C0();
  if (v49)
  {
    sub_100080FB4(&qword_1003CCB50);
    v46 = sub_1001B52BC();
    goto LABEL_10;
  }

  sub_10008E5A4(0, &unk_1003CED80);
  sub_10018C168(*(v20 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID), *(v20 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8), 1, v34);
  sub_1001B4DC8(v34, v31, &unk_1003D0540);
  v50 = type metadata accessor for URL();
  sub_1001B5430(v31, 1, v50);
  if (!v51)
  {
    (*(*(v50 - 8) + 32))(v22, v31, v50);
    v52 = sub_100080FB4(&qword_1003CCB50);
    sub_100081DFC(v22, 0, 2, v52);
  }

  sub_1001B53E8();
  sub_100081DFC(v53, v54, v55, v56);
  sub_1001B4DC8(v22, v21, &qword_1003D1088);
  v57 = sub_1001B53A4();
  sub_1001B5430(v57, v58, v41);
  if (!v49)
  {
    sub_1001B5268();
    v48 = v21;
    goto LABEL_6;
  }

  sub_100080FB4(&qword_1003CCB50);
  v59 = sub_1001B52BC();
  sub_100081DFC(v59, v60, 2, v61);
  v62 = sub_1001B53A4();
  sub_1001B5430(v62, v63, v41);
  if (!v49)
  {
    sub_10013B1E8(v21, &qword_1003D1088);
  }

LABEL_11:
  sub_100093CB8();
}

id sub_1001A8808()
{
  v3 = sub_1001B5124();
  __chkstk_darwin(v3);
  sub_1001460C4();
  sub_1001B5330();
  __chkstk_darwin(v4);
  sub_1001B5340();
  v5 = [objc_opt_self() currentProcess];
  v6 = sub_1001AA204();
  [v5 setAccountMediaType:v6];

  v7 = String._bridgeToObjectiveC()();
  [v5 setProxyAppBundleID:v7];

  v8._countAndFlagsBits = 0x6C7070612E6D6F63;
  v8._object = 0xEA00000000002E65;
  v9 = String.hasPrefix(_:)(v8);
  if (v9)
  {
    v17 = String._bridgeToObjectiveC()();
    [v5 setBundleIdentifier:v17];
  }

  sub_1001A7E5C(v9, v10, v11, v12, v13, v14, v15, v16, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60);
  v18 = sub_100080FB4(&qword_1003CCB50);
  sub_100081DFC(v1, 2, 2, v18);
  v19 = sub_1001B5580();
  v21 = sub_1001A9B8C(v19, v20);
  sub_1001B3348(v1, type metadata accessor for Client.Server);
  v22 = sub_1001B3348(v2, type metadata accessor for Client.Server);
  if (v21 & 1) != 0 || (sub_1001A7E5C(v22, v23, v24, v25, v26, v27, v28, v29, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61), v30 = sub_1001B53A4(), sub_100081DFC(v30, v31, 2, v18), v32 = sub_1001B5580(), v34 = sub_1001A9B8C(v32, v33), sub_1001B3348(v1, type metadata accessor for Client.Server), sub_1001B3348(v2, type metadata accessor for Client.Server), (v34))
  {
    if ((*(v0 + OBJC_IVAR____TtC9storekitd6Client_auditToken + 32) & 1) == 0)
    {
      v35 = Data.init(bytes:count:)();
      sub_1001B48A0(v35, v36, v5);
    }
  }

  return v5;
}

void sub_1001A8A94()
{
  sub_100093D08();
  v2 = v1;
  v130 = v3;
  HIDWORD(v129) = v4;
  v5 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v126 - v7;
  type metadata accessor for URL();
  sub_1000890DC();
  v131 = v10;
  v132 = v9;
  __chkstk_darwin(v9);
  sub_10018ECCC();
  v128 = v11;
  sub_10018ED10();
  __chkstk_darwin(v12);
  sub_1001B5378();
  v127 = v13;
  v14 = sub_1001B5124();
  __chkstk_darwin(v14);
  sub_1001B510C();
  v15 = sub_100080FB4(&unk_1003CE610);
  sub_1000B01B0(v15);
  sub_100089118();
  __chkstk_darwin(v16);
  v18 = &v126 - v17;
  v19 = off_1003CAF18;

  sub_1001A9AD0(256);
  v20 = static String._fromSubstring(_:)();
  v22 = v21;

  *(&v137 + 1) = &type metadata for String;
  *&v136 = v20;
  *(&v136 + 1) = v22;
  sub_1001B5418();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001B5508(isUniquelyReferenced_nonNull_native);

  v24 = off_1003CAF20;

  sub_1001A9AD0(100);
  v25 = static String._fromSubstring(_:)();
  v27 = v26;

  *(&v137 + 1) = &type metadata for String;
  *&v136 = v25;
  *(&v136 + 1) = v27;
  sub_1001B5418();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001B5508(v28);

  if (*(v1 + OBJC_IVAR____TtC9storekitd6Client_storeItemID))
  {
    *&v136 = *(v1 + OBJC_IVAR____TtC9storekitd6Client_storeItemID);
    v29 = off_1003CAEF0;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v137 + 1) = &type metadata for String;
    *&v136 = v30;
    *(&v136 + 1) = v31;
    sub_1001B51F0();
    v32 = sub_1001B5144();
    sub_10023ED0C(v32, v29, v33);
  }

  if (*(v1 + OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID))
  {
    *&v136 = *(v1 + OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID);
    v34 = off_1003CAEF8;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v137 + 1) = &type metadata for String;
    *&v136 = v35;
    *(&v136 + 1) = v36;
    sub_1001B51F0();
    v37 = sub_1001B5144();
    sub_10023ED0C(v37, v34, v38);
  }

  v39 = off_1003CAF58;
  v40 = objc_opt_self();
  v41 = v39;
  v126 = v40;
  v42 = [v40 deviceGUID];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  *(&v137 + 1) = &type metadata for String;
  *&v136 = v43;
  *(&v136 + 1) = v45;
  sub_1001B51F0();
  v46 = sub_1001B5144();
  sub_10023ED0C(v46, v41, v47);

  v48 = v133;
  v49 = off_1003CB128;
  sub_1001B4D7C(v2 + OBJC_IVAR____TtC9storekitd6Client_deviceVendorID, v18, &unk_1003CE610);
  v50 = type metadata accessor for UUID();
  LODWORD(v42) = sub_100081D0C(v18, 1, v50);
  v51 = v49;
  if (v42 == 1)
  {
    sub_10013B1E8(v18, &unk_1003CE610);
    v52 = sub_100219330(v51);
    if (v53)
    {
      v54 = v52;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = v48;
      v56 = *(v48 + 24);
      sub_100080FB4(&unk_1003D3130);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v55, v56);
      v57 = v134;

      sub_10008B5D0((*(v57 + 56) + 32 * v54), &v136);
      type metadata accessor for SKServerKey(0);
      sub_1001B5250();
      sub_1001B3300(v58, v59);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v136 = 0u;
      v137 = 0u;
    }

    v72 = v132;

    v64 = sub_10013B1E8(&v136, &unk_1003CCB70);
  }

  else
  {
    v60 = UUID.uuidString.getter();
    *(&v137 + 1) = &type metadata for String;
    *&v136 = v60;
    *(&v136 + 1) = v61;
    (*(*(v50 - 8) + 8))(v18, v50);
    sub_1001B51F0();
    v62 = sub_1001B5144();
    sub_10023ED0C(v62, v51, v63);

    v72 = v132;
  }

  v73 = v131;
  if (*(v2 + OBJC_IVAR____TtC9storekitd6Client_isAlmond) == 1)
  {
    sub_1001A7E5C(v64, v65, v66, v67, v68, v69, v70, v71, v126, v127, v128, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, *(&v135 + 1));
    sub_100080FB4(&qword_1003CCB50);
    v74 = sub_1001B52BC();
    if (sub_100081D0C(v74, v75, v76))
    {
      sub_1001B50AC();
      sub_1001B3348(v0, v77);
    }

    else
    {
      (*(v73 + 8))(v0, v72);
      v78 = off_1003CAFD0;
      *(&v137 + 1) = &type metadata for String;
      *&v136 = 49;
      *(&v136 + 1) = 0xE100000000000000;
      sub_1001B5418();
      v79 = v78;
      swift_isUniquelyReferenced_nonNull_native();
      v80 = sub_1001B5144();
      sub_10023ED0C(v80, v79, v81);
    }
  }

  if (*(v2 + OBJC_IVAR____TtC9storekitd6Client_isBeta) == 1)
  {
    v82 = off_1003CAFD8;
    *(&v137 + 1) = &type metadata for Bool;
    LOBYTE(v136) = 1;
    sub_1001B5418();
    v83 = v82;
    swift_isUniquelyReferenced_nonNull_native();
    v84 = sub_1001B5144();
    sub_10023ED0C(v84, v83, v85);
  }

  sub_1001B4D7C(v130, v8, &unk_1003D0540);
  sub_1001B5430(v8, 1, v72);
  if (v86)
  {
    sub_10013B1E8(v8, &unk_1003D0540);
    sub_10008E5A4(0, &qword_1003D1058);
    v87 = v128;
    (*(v73 + 16))(v128, v2 + OBJC_IVAR____TtC9storekitd6Client_callerBundleURL, v72);
    v92 = sub_1001AFCD4(v87, v88);
    if (!v92)
    {
      goto LABEL_32;
    }

LABEL_22:
    v93 = off_1003CAEE8;
    v94 = v92;
    v95 = v93;
    v96 = [v94 opaqueDSIDString];
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    *(&v137 + 1) = &type metadata for String;
    *&v136 = v97;
    *(&v136 + 1) = v99;
    sub_1001B51F0();
    v100 = sub_1001B5144();
    sub_10023ED0C(v100, v95, v101);

    if ((v129 & 0x100000000) != 0)
    {
      v102 = [v94 receiptType];
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      *&v136 = v103;
      *(&v136 + 1) = v105;
      *&v134 = 0x65646F6358;
      *(&v134 + 1) = 0xE500000000000000;
      sub_100106050();
      LOBYTE(v102) = StringProtocol.contains<A>(_:)();

      if ((v102 & 1) == 0)
      {
        v106 = off_1003CB0A8;
        v107 = [v94 receiptDataString];
        v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v109;

        *(&v137 + 1) = &type metadata for String;
        *&v136 = v108;
        *(&v136 + 1) = v110;
        sub_1001B51F0();
        v111 = sub_1001B5144();
        sub_10023ED0C(v111, v106, v112);

        v113 = v133;
        if ([v94 isDSIDless])
        {
          v114 = off_1003CB0B8;
          v115 = sub_1001B4A38(v126, &selRef_serialNumber);
          if (v116)
          {
            *(&v137 + 1) = &type metadata for String;
            *&v136 = v115;
            *(&v136 + 1) = v116;
            v117 = sub_1001B51F0();
            v133 = v113;
            sub_10023ED0C(&v134, v114, v117);

            goto LABEL_32;
          }

          v118 = sub_100219330(v114);
          if (v119)
          {
            v120 = v118;
            v121 = swift_isUniquelyReferenced_nonNull_native();
            v133 = v113;
            v122 = *(v113 + 24);
            sub_100080FB4(&unk_1003D3130);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v121, v122);
            v123 = v133;

            sub_10008B5D0((*(v123 + 56) + 32 * v120), &v134);
            type metadata accessor for SKServerKey(0);
            sub_1001B5250();
            sub_1001B3300(v124, v125);
            _NativeDictionary._delete(at:)();
          }

          else
          {
            v134 = 0u;
            v135 = 0u;
          }

          sub_10013B1E8(&v134, &unk_1003CCB70);
        }
      }
    }

    goto LABEL_32;
  }

  v89 = v127;
  v90 = sub_1000B7EA0();
  v91(v90);
  sub_10008E5A4(0, &qword_1003D1058);
  URL.path.getter();
  v92 = sub_1001B12C0();
  (*(v73 + 8))(v89, v72);
  if (v92)
  {
    goto LABEL_22;
  }

LABEL_32:
  sub_100093CB8();
}

id sub_1001A9498()
{
  v0 = objc_opt_self();
  v1 = sub_1001A8808();
  v2 = [v0 ams_configurationWithProcessInfo:v1 bag:sub_1001A7AB4(v1)];

  swift_unknownObjectRelease();
  v3 = String._bridgeToObjectiveC()();
  [v2 set_sourceApplicationBundleIdentifier:v3];

  sub_10008E5A4(0, &qword_1003D2C60);
  v4 = sub_10001E11C();
  return sub_1001AB3E4(v4, 0, 0);
}

id sub_1001A9564(uint64_t a1)
{
  v1 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:sub_1001A7AB4(a1)];
  v2 = swift_unknownObjectRelease();
  v3 = sub_1001A81B0(v2);
  [v1 setAccount:v3];

  v4 = sub_1001A8808();
  [v1 setClientInfo:v4];

  return v1;
}

uint64_t sub_1001A95FC(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v22 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v22;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v22 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = _StringObject.sharedUTF8.getter();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_1001B4318(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1001A98F4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = sub_1001A9AA4(a1, a2);
  if (a1)
  {
    if (v9)
    {
      v11 = v10 - v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = a4 >> 62;
    v13 = BYTE6(a4);
    switch(v12)
    {
      case 1uLL:
        LODWORD(v14) = HIDWORD(a3) - a3;
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          __break(1u);
        }

        else
        {
          v14 = v14;
LABEL_15:
          if (v11 == v14)
          {
LABEL_16:
            sub_1001B4D28();
            result = dispatch thunk of DataProtocol.copyBytes(to:count:)();
            v20 = a1[1];
            *a5 = *a1;
            a5[1] = v20;
            return result;
          }

          if (!v12)
          {
            goto LABEL_22;
          }

          if (v12 != 1)
          {
            v22 = *(a3 + 16);
            v21 = *(a3 + 24);
            v13 = v21 - v22;
            if (!__OFSUB__(v21, v22))
            {
              goto LABEL_22;
            }

LABEL_26:
            __break(1u);
            JUMPOUT(0x1001A9A94);
          }

          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            v13 = HIDWORD(a3) - a3;
LABEL_22:
            sub_1001B4CD4();
            swift_allocError();
            *v23 = v11;
            *(v23 + 8) = v13;
            *(v23 + 16) = 0;
            return swift_willThrow();
          }
        }

        __break(1u);
        goto LABEL_26;
      case 2uLL:
        v17 = *(a3 + 16);
        v16 = *(a3 + 24);
        v18 = __OFSUB__(v16, v17);
        v14 = v16 - v17;
        if (!v18)
        {
          goto LABEL_15;
        }

        __break(1u);
LABEL_11:
        if (!v11)
        {
          goto LABEL_16;
        }

        v13 = 0;
        goto LABEL_22;
      case 3uLL:
        goto LABEL_11;
      default:
        v14 = v13;
        goto LABEL_15;
    }
  }

  sub_1001B4CD4();
  swift_allocError();
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_1001A9AA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x400000000000000) >> 59 != 31)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001A9AD0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    String.subscript.getter();

    return sub_1001B5400();
  }

  return result;
}

uint64_t sub_1001A9B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001B5124();
  __chkstk_darwin(v4);
  sub_100093D40();
  v5 = sub_100080FB4(&qword_1003D1050);
  sub_1000B01B0(v5);
  sub_100089118();
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = *(v7 + 56);
  sub_1001B339C(a1, &v26 - v8);
  sub_1001B339C(a2, &v9[v10]);
  v11 = sub_100080FB4(&qword_1003CCB50);
  v12 = sub_1001B52BC();
  v14 = sub_100081D0C(v12, v13, v11);
  if (!v14)
  {
    sub_1001B50F4();
    v16 = sub_1001073F0();
    sub_1001B339C(v16, v17);
    v18 = sub_100081D0C(&v9[v10], 2, v11);
    v19 = type metadata accessor for URL();
    sub_100098B7C();
    v21 = *(v20 + 8);
    if (!v18)
    {
      v21(&v9[v10], v19);
      v24 = sub_1001B5400();
      (v21)(v24);
      goto LABEL_11;
    }

    v22 = sub_1001B5400();
    (v21)(v22);
    goto LABEL_9;
  }

  if (v14 != 1)
  {
    if (sub_100081D0C(&v9[v10], 2, v11) == 2)
    {
      goto LABEL_11;
    }

LABEL_9:
    sub_10013B1E8(v9, &qword_1003D1050);
    return 0;
  }

  sub_1001B5430(&v9[v10], 2, v11);
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_1001B50AC();
  sub_1001B3348(v9, v25);
  return 1;
}

void sub_1001A9D84()
{
  sub_100093D08();
  v4 = v3;
  v5 = sub_100080FB4(&qword_1003D1068);
  v6 = sub_1000B01B0(v5);
  __chkstk_darwin(v6);
  sub_1001460C4();
  sub_1001B5318();
  __chkstk_darwin(v7);
  v8 = sub_1001B558C();
  v9 = type metadata accessor for Client.TimedClientOverride(v8);
  sub_1000890DC();
  __chkstk_darwin(v10);
  sub_100093D40();
  sub_1001B540C();
  v11 = type metadata accessor for ClientOverride(0);
  sub_1000B0690();
  sub_100081DFC(v12, v13, v14, v11);
  v15 = sub_1001B1F00();
  v16 = sub_1001073E4();
  sub_1001DAB54(v16, v17, v15, v18);

  sub_1001B5430(v2, 1, v9);
  if (v19)
  {
    sub_10013B1E8(v2, &qword_1003D1068);
  }

  else
  {
    sub_1001B50DC();
    sub_1001B4A94(v2, v0);
    Date.timeIntervalSinceNow.getter();
    if (v20 <= 0.0)
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v21 = type metadata accessor for SKLogger();
      sub_10007EDA4(v21, qword_1003F26C8);
      sub_1000B01F4();
      _StringGuts.grow(_:)(38);

      v38[0] = 0xD000000000000028;
      v38[1] = 0x800000010031C970;
      v22._countAndFlagsBits = sub_1001073E4();
      String.append(_:)(v22);
      v23 = static os_log_type_t.default.getter();

      v24 = Logger.logObject.getter();

      if (os_log_type_enabled(v24, v23))
      {
        sub_1000B7DC8();
        v25 = swift_slowAlloc();
        sub_1000B7DBC();
        v37 = swift_slowAlloc();
        v38[0] = v37;
        *v25 = 136446466;
        v27 = sub_100093CF0(v37, v26, v38);
        sub_1001B5468(v27);
        v28 = sub_100080210(0xD000000000000028, 0x800000010031C970, v38);

        *(v25 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
        swift_arrayDestroy();
        sub_1000B7D68();

        sub_1000B7D68();
      }

      else
      {
      }

      v29 = sub_1001B1F00();
      v30 = sub_1001073E4();
      sub_1000B6328(v30, v31);
      if (v32)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38[0] = v29;
        v34 = v29[3];
        sub_100080FB4(&unk_1003D3160);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34);
        sub_1001B5648();
        sub_1001B50DC();
        sub_1001B4A94(v35, v1);
        sub_1001073F0();
        _NativeDictionary._delete(at:)();
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      sub_100081DFC(v1, v36, 1, v9);
      sub_10013B1E8(v1, &qword_1003D1068);
      sub_1001B22AC();
      sub_1001B52F0();
    }

    else
    {
      sub_10013B1E8(v4, &unk_1003D20F0);
      sub_1001B5170();
      sub_1001B339C(v0, v4);
      sub_1001B52F0();
      sub_100081DFC(v4, 0, 1, v11);
    }
  }

  sub_100093CB8();
}

uint64_t sub_1001AA198()
{
  if (![objc_opt_self() deviceIsiPad])
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9storekitd6Client_iOSTargetPlatform);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    return 0;
  }

  v2 = AMSMediaTaskPlatformiPhone;
  v4 = AMSMediaTaskPlatformiPhone;
  return v2;
}

uint64_t sub_1001AA400()
{
  v2 = sub_1001B5124();
  __chkstk_darwin(v2);
  sub_1001B510C();
  sub_1001B50F4();
  sub_1001B339C(v1, v0);
  sub_100080FB4(&qword_1003CCB50);
  v3 = sub_1001B52BC();
  v6 = sub_100081D0C(v3, v4, v5);
  if (v6)
  {
    if (v6 == 1)
    {
      return 0x69746375646F7250;
    }

    else
    {
      return 0x786F62646E6153;
    }
  }

  else
  {
    type metadata accessor for URL();
    sub_10013B618();
    (*(v8 + 8))(v0);
    return 0x65646F6358;
  }
}

uint64_t sub_1001AA5B0()
{
  v1 = v0;
  type metadata accessor for URL();
  sub_1000890DC();
  __chkstk_darwin(v2);
  sub_100093D40();
  sub_1001B540C();
  v3 = sub_1001B5124();
  __chkstk_darwin(v3);
  sub_100093D40();
  v6 = v5 - v4;
  sub_1001B50F4();
  sub_1001B339C(v1, v6);
  v7 = sub_100080FB4(&qword_1003CCB50);
  v8 = sub_100081D0C(v6, 2, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      return 0x69746375646F7250;
    }

    else
    {
      return 0x786F62646E6153;
    }
  }

  else
  {
    v10 = sub_1001B55F0();
    v11(v10);
    sub_1001B53BC();
    sub_1001B50C4();
    sub_1001B3300(v12, v13);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = sub_1001B5494();
    String.append(_:)(v15);
    v9 = v19;
    v16 = sub_100093DD0();
    v17(v16);
  }

  return v9;
}

uint64_t sub_1001AA77C()
{
  v2 = sub_1001B5124();
  __chkstk_darwin(v2);
  sub_1001B510C();
  sub_1001B50F4();
  sub_1001B339C(v1, v0);
  sub_100080FB4(&qword_1003CCB50);
  v3 = sub_1001B52BC();
  result = sub_100081D0C(v3, v4, v5);
  if (result)
  {
    if (result != 1)
    {
      return 2;
    }
  }

  else
  {
    type metadata accessor for URL();
    sub_10013B618();
    (*(v7 + 8))(v0);
    return 3;
  }

  return result;
}

uint64_t sub_1001AAA34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9storekitd6Client_callerBundleURL;
  type metadata accessor for URL();
  sub_100098B7C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1001AAAD8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_1001073F0();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, v4, 0);

  if (AppBooleanValue)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_10007EDA4(v6, qword_1003F26C8);
    v7 = static os_log_type_t.default.getter();
    v8 = Logger.logObject.getter();
    if (os_log_type_enabled(v8, v7))
    {
      sub_1000B7DC8();
      v9 = swift_slowAlloc();
      sub_1000B7DBC();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136446466;
      v11 = sub_1000B056C(v10);
      sub_100093BF8(v11);
      *(v9 + 14) = sub_100080210(0xD00000000000004FLL, 0x800000010031CA50, &v33);
      sub_1001B552C(&_mh_execute_header, v12, v7, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1001B5198();
    }

    goto LABEL_20;
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v8 = result;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (sub_1001B4914(v14, v15, v8) == 2)
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v16 = type metadata accessor for SKLogger();
      sub_10007EDA4(v16, qword_1003F26C8);
      v17 = static os_log_type_t.default.getter();
      v18 = Logger.logObject.getter();
      if (!os_log_type_enabled(v18, v17))
      {
        goto LABEL_19;
      }

      v19 = "lation restrictions";
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1001B5240();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v0 = 136446466;
      v21 = sub_1000B056C(v20);
      sub_1001B51E0(v21);
      v22 = 0xD00000000000004ALL;
    }

    else
    {
      if ([v8 isOnDeviceAppInstallationAllowed])
      {

        return 1;
      }

      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v23 = type metadata accessor for SKLogger();
      sub_10007EDA4(v23, qword_1003F26C8);
      v24 = static os_log_type_t.default.getter();
      v18 = Logger.logObject.getter();
      if (!os_log_type_enabled(v18, v24))
      {
        goto LABEL_19;
      }

      v19 = "se device is in store demo mode";
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1001B5240();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v0 = 136446466;
      v26 = sub_1000B056C(v25);
      sub_1001B51E0(v26);
      v22 = 0xD000000000000053;
    }

    *(v0 + 14) = sub_100080210(v22, v19 | 0x8000000000000000, &v33);
    sub_1001B5560();
    _os_log_impl(v27, v28, v29, v30, v31, v32);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();

LABEL_19:

LABEL_20:
    return 0;
  }

  __break(1u);
  return result;
}

id sub_1001AB238(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  String._bridgeToObjectiveC()();
  sub_10001E11C();

  return a1;
}

id sub_1001AB3E4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1001B55FC();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v3 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v6;
}

id sub_1001AB464(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    String._bridgeToObjectiveC()();
    sub_10001E11C();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_1001AB4E8()
{
  sub_100093D08();
  v3 = v2;
  sub_1001B52B0();
  type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_100093D40();
  v5 = sub_100080FB4(&unk_1003D20F0);
  v6 = sub_1000B01B0(v5);
  __chkstk_darwin(v6);
  sub_1001460C4();
  sub_1001B5330();
  __chkstk_darwin(v7);
  sub_1001B5340();
  if (v3)
  {
    sub_1001AB908();

    v8 = type metadata accessor for ClientOverride(0);
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for ClientOverride(0);
    v9 = 1;
  }

  sub_100081DFC(v1, v9, 1, v8);
  swift_getObjectType();
  v10 = sub_1001B5580();
  sub_1001B4D7C(v10, v11, v12);
  v13 = v0;
  sub_1001ABF2C();
  sub_10013B1E8(v1, &unk_1003D20F0);

  sub_1001B55E4();
  swift_deallocPartialClassInstance();
  sub_100093CB8();
}

void sub_1001AB908()
{
  sub_100093D08();
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_1000890DC();
  v62 = v5;
  __chkstk_darwin(v6);
  sub_10018ECCC();
  v60 = v7;
  sub_10018ED10();
  __chkstk_darwin(v8);
  sub_1001B5378();
  v59 = v9;
  v10 = sub_100080FB4(&unk_1003CE610);
  v11 = sub_1000B01B0(v10);
  __chkstk_darwin(v11);
  sub_1001460C4();
  sub_1001B5318();
  __chkstk_darwin(v12);
  sub_10018ED54();
  v61 = v13;
  sub_10018ED10();
  __chkstk_darwin(v14);
  sub_1001B5458();
  sub_1000B0690();
  sub_100081DFC(v15, v16, v17, v4);
  v18 = type metadata accessor for ClientOverride(0);
  v19 = v18[7];
  v63 = sub_100080FB4(&qword_1003CCB50);
  sub_100081DFC(v3 + v19, 1, 3, v63);
  *v3 = xmmword_1002F0420;
  v20 = v18[10];
  sub_1000B0690();
  sub_100081DFC(v21, v22, v23, v4);
  sub_1000BC8B4(*v3, v3[1]);
  *v3 = xmmword_1002F0420;
  sub_1001B4BA8(v1, v3 + v20);
  sub_1001B5548(off_1003CAEA0);
  if (v67)
  {
    v24 = swift_dynamicCast();
    if (v24)
    {
      v25 = v64;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v65;
    }

    else
    {
      v26 = 0xF000000000000000;
    }
  }

  else
  {
    sub_10013B1E8(v66, &unk_1003CCB70);
    v25 = 0;
    v26 = 0xF000000000000000;
  }

  sub_1000BC8B4(*v3, v3[1]);
  *v3 = v25;
  v3[1] = v26;
  sub_1001B5548(off_1003CAEA8);
  if (v67)
  {
    v27 = swift_dynamicCast();
    v28 = v64;
    v29 = v65;
    if (!v27)
    {
      v28 = 0;
      v29 = 0;
    }
  }

  else
  {
    sub_10013B1E8(v66, &unk_1003CCB70);
    v28 = 0;
    v29 = 0;
  }

  v3[2] = v28;
  v3[3] = v29;
  sub_1001B5548(off_1003CAEB0);
  if (v67)
  {
    v30 = sub_1001B5220();
    v31 = v64;
    v32 = v65;
    if (!v30)
    {
      v31 = 0;
      v32 = 0;
    }
  }

  else
  {
    sub_10013B1E8(v66, &unk_1003CCB70);
    v31 = 0;
    v32 = 0;
  }

  v3[4] = v31;
  v3[5] = v32;
  sub_1001B5548(off_1003CAED8);
  if (v67)
  {
    sub_1001B5220();
    sub_1001B55AC();
  }

  else
  {
    sub_10013B1E8(v66, &unk_1003CCB70);
    v33 = 0;
    v34 = 1;
  }

  v35 = v3 + v18[9];
  *v35 = v33;
  v35[8] = v34;
  sub_1001B5548(off_1003CAED0);
  if (v67)
  {
    sub_1001B5220();
    sub_1001B55AC();
  }

  else
  {
    sub_10013B1E8(v66, &unk_1003CCB70);
    v36 = 0;
    v37 = 1;
  }

  v38 = v3 + v18[8];
  *v38 = v36;
  v38[8] = v37;
  sub_1001B5548(off_1003CAEC0);
  if (!v67)
  {
    sub_10013B1E8(v66, &unk_1003CCB70);
    goto LABEL_32;
  }

  if ((sub_1001B5220() & 1) == 0)
  {
LABEL_32:
    sub_1001B52C8();
    v40 = 1;
    goto LABEL_33;
  }

  sub_1001B52C8();
  if (v64 == 2)
  {
    v39 = 3;
  }

  else
  {
    v39 = 1;
  }

  if (v64 == 1)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39;
  }

LABEL_33:
  sub_100081DFC(v3 + v19, v40, 3, v63);
  v41 = sub_1001B5488();
  sub_100219334(v41, v42);
  if (v67)
  {
    if ((sub_1001B5220() & 1) == 0)
    {
      goto LABEL_40;
    }

    UUID.init(uuidString:)();

    v43 = sub_1001B53A4();
    sub_1001B5430(v43, v44, v4);
    if (!v45)
    {
      v58 = *(v62 + 32);
      v58(v59, v61, v4);
      sub_10013B1E8(v3 + v20, &unk_1003CE610);
      v58(v3 + v20, v59, v4);
LABEL_45:
      v57 = 0;
      goto LABEL_46;
    }

    v46 = &unk_1003CE610;
    v47 = v61;
  }

  else
  {
    v46 = &unk_1003CCB70;
    v47 = v66;
  }

  sub_10013B1E8(v47, v46);
LABEL_40:
  v48 = sub_1001B5488();
  sub_100219334(v48, v49);
  if (v67)
  {
    v50 = swift_dynamicCast();
    sub_100081DFC(v0, v50 ^ 1u, 1, v4);
    sub_1001B5430(v0, 1, v4);
    if (!v45)
    {
      v51 = *(v62 + 32);
      v51(v60, v0, v4);
      sub_10013B1E8(v3 + v20, &unk_1003CE610);
      v51(v3 + v20, v60, v4);
      goto LABEL_45;
    }
  }

  else
  {
    sub_10013B1E8(v66, &unk_1003CCB70);
    sub_1000B0690();
    sub_100081DFC(v52, v53, v54, v4);
  }

  v55 = sub_1001B5580();
  sub_10013B1E8(v55, v56);
  sub_10013B1E8(v3 + v20, &unk_1003CE610);
  v57 = 1;
LABEL_46:
  sub_100081DFC(v3 + v20, v57, 1, v4);
  sub_100093CB8();
}

void sub_1001ABF2C()
{
  sub_1000892DC();
  v37 = v0;
  v46 = v3;
  v5 = v4;
  v6 = sub_100080FB4(&unk_1003D20F0);
  v7 = sub_1000B01B0(v6);
  __chkstk_darwin(v7);
  sub_1001460C4();
  sub_1001B5448();
  __chkstk_darwin(v8);
  sub_1001B5378();
  v38 = v9;
  sub_1001B53DC();
  v10 = type metadata accessor for URL();
  sub_1000890DC();
  v36 = v11;
  __chkstk_darwin(v12);
  sub_1001460C4();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = [v5 processIdentifier];
  v20 = sub_1001B6A0C(v5);
  v41 = 0x5D746E65696C435BLL;
  v42 = 0xE900000000000020;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = v22;
  String.append(_:)(*&v20);

  v24._countAndFlagsBits = 91;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  LODWORD(v39) = v19;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 93;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  [v5 auditToken];
  sub_1001AE5E0();
  if (v1)
  {
    sub_10013B1E8(v46, &unk_1003D20F0);
  }

  else
  {
    v27 = v36;
    v35 = v10;

    v28 = v38;
    sub_1001B4D7C(v46, v38, &unk_1003D20F0);
    if (([v5 sk_allowClientOverride] & 1) == 0)
    {
      sub_10013B1E8(v28, &unk_1003D20F0);
      type metadata accessor for ClientOverride(0);
      sub_1000B0690();
      sub_100081DFC(v29, v30, v31, v32);
    }

    [v5 auditToken];
    v43 = v39;
    v44 = v40;
    v45 = 0;
    (*(v27 + 16))(v15, v18, v35);
    sub_1001B4D7C(v28, v2, &unk_1003D20F0);
    sub_1001AC968();

    sub_10013B1E8(v46, &unk_1003D20F0);
    sub_10013B1E8(v38, &unk_1003D20F0);
    v33 = sub_1001B5488();
    v34(v33);
  }

  sub_1000892C4();
}

void sub_1001AC388()
{
  sub_100093D08();
  v4 = v3;
  sub_1001B52B0();
  v31[6] = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v5);
  sub_100093D40();
  v31[7] = v7 - v6;
  sub_1001B53DC();
  v8 = type metadata accessor for URL();
  sub_1000890DC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10018ECCC();
  v31[8] = v12;
  sub_10018ED10();
  __chkstk_darwin(v13);
  sub_1001B5340();
  v14 = sub_100080FB4(&unk_1003D20F0);
  v15 = sub_1000B01B0(v14);
  __chkstk_darwin(v15);
  sub_1001460C4();
  sub_1001B5330();
  __chkstk_darwin(v16);
  v18 = v31 - v17;
  sub_1001B51A8();
  *&v34 = v19;
  *(&v34 + 1) = v20;
  sub_1001B50C4();
  v23 = sub_1001B3300(v21, v22);
  v32 = v8;
  v33 = v0;
  v31[5] = v23;
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = sub_1001B5494();
  String.append(_:)(v25);
  v31[9] = *(&v34 + 1);
  v31[4] = v34;
  if (v4)
  {
    sub_1001AB908();

    v26 = type metadata accessor for ClientOverride(0);
    v27 = 0;
  }

  else
  {
    v26 = type metadata accessor for ClientOverride(0);
    v27 = 1;
  }

  sub_100081DFC(v18, v27, 1, v26);
  swift_getObjectType();
  v34 = 0u;
  v35 = 0u;
  v36 = 1;
  v28 = v2;
  v30 = v32;
  v29 = v33;
  (*(v10 + 16))(v28, v33, v32);
  sub_1001B4D7C(v18, v1, &unk_1003D20F0);
  sub_1001AC968();

  (*(v10 + 8))(v29, v30);
  sub_10013B1E8(v18, &unk_1003D20F0);
  swift_deallocPartialClassInstance();
  sub_100093CB8();
}

void sub_1001AC968()
{
  sub_1000892DC();
  v236 = v1;
  v233 = v0;
  v234 = v4;
  v245 = v5;
  v7 = v6;
  v8 = type metadata accessor for Client.Server(0);
  v9 = sub_1000B01B0(v8);
  __chkstk_darwin(v9);
  sub_10018ECCC();
  sub_1001B5188();
  __chkstk_darwin(v10);
  sub_1001B5378();
  v220 = v11;
  sub_1001B53DC();
  v242 = type metadata accessor for URL();
  sub_1000890DC();
  v246 = v12;
  __chkstk_darwin(v13);
  sub_10018ECCC();
  sub_1001B5188();
  __chkstk_darwin(v14);
  sub_10018ED54();
  sub_1001B5188();
  __chkstk_darwin(v15);
  sub_10018ED54();
  v231 = v16;
  sub_10018ED10();
  __chkstk_darwin(v17);
  sub_10018ED54();
  v230 = v18;
  sub_10018ED10();
  __chkstk_darwin(v19);
  sub_10018ED54();
  v232 = v20;
  sub_10018ED10();
  __chkstk_darwin(v21);
  sub_1001B5448();
  __chkstk_darwin(v22);
  sub_1001B5378();
  v249 = v23;
  v24 = sub_100080FB4(&unk_1003D20F0);
  v25 = sub_1000B01B0(v24);
  __chkstk_darwin(v25);
  sub_10018ECCC();
  v228 = v26;
  sub_10018ED10();
  __chkstk_darwin(v27);
  sub_10018ED54();
  sub_1001B5188();
  __chkstk_darwin(v28);
  v30 = &v218 - v29;
  v31 = type metadata accessor for ClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v32);
  sub_10018ECCC();
  v237 = v33;
  sub_10018ED10();
  __chkstk_darwin(v34);
  v36 = (&v218 - v35);
  v37 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v38);
  sub_10018ECCC();
  sub_1001B5188();
  __chkstk_darwin(v39);
  sub_10018ED54();
  sub_1001B5188();
  __chkstk_darwin(v40);
  sub_10018ED54();
  sub_1001B5188();
  __chkstk_darwin(v41);
  sub_10018ED54();
  v229 = v42;
  sub_10018ED10();
  __chkstk_darwin(v43);
  sub_10018ED54();
  sub_1001B5188();
  __chkstk_darwin(v44);
  sub_1001B5458();
  sub_1001B51A8();
  v247 = v45;
  v248 = v46;
  v243 = v7;
  v47._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = sub_1001B5494();
  String.append(_:)(v48);
  v49 = v248;
  v235 = v247;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  sub_10007EDA4(v37, qword_1003F26C8);
  sub_1001B5094();
  v238 = v50;
  sub_1001B339C(v50, v3);

  v51 = v3;
  Logger.logObject.getter();
  sub_1001B52B0();
  type metadata accessor for Logger();
  sub_10013B618();
  v240 = *(v52 + 8);
  v241 = v53;
  v239 = v52 + 8;
  v240(v3);
  v54 = static os_log_type_t.info.getter();

  v55 = os_log_type_enabled(v3, v54);
  v244 = v49;
  if (v55)
  {
    v56 = sub_1001B5688();
    sub_1001B53B0();
    v57 = swift_slowAlloc();
    v247 = v57;
    *v56 = 136446210;
    v58 = sub_1001B55D8();
    *(v56 + 4) = sub_100080210(v58, v49, v59);
    _os_log_impl(&_mh_execute_header, v51, v54, "%{public}s  Initializing client", v56, 0xCu);
    sub_100080F0C(v57);
    sub_1000B7D68();

    sub_1000B7D68();
  }

  v60 = v249;
  sub_1001B4D7C(v245, v30, &unk_1003D20F0);
  v61 = sub_100081D0C(v30, 1, v31);
  v62 = v237;
  if (v61 == 1)
  {
    sub_10013B1E8(v30, &unk_1003D20F0);
  }

  else
  {
    sub_1001B5298();
    sub_1001B4A94(v30, v36);
    sub_1001B5094();
    sub_1001B339C(v238, v227);
    sub_1001B5170();
    v63 = sub_100107510();
    sub_1001B339C(v63, v64);
    v65 = v244;

    Logger.logObject.getter();
    v66 = sub_1001B5364();
    v67(v66);
    v68 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v36, v68))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1001B5240();
      v69 = swift_slowAlloc();
      v227 = v36;
      v247 = v69;
      *v249 = 136446466;
      v70 = sub_1001B55D8();
      v72 = sub_100080210(v70, v65, v71);
      sub_1001B51E0(v72);
      v73 = sub_1001BC574();
      v75 = v74;
      sub_1001B3348(v62, type metadata accessor for ClientOverride);
      v76 = v2;
      v77 = sub_100080210(v73, v75, &v247);

      *(v249 + 14) = v77;
      v2 = v76;
      sub_1001B5560();
      _os_log_impl(v78, v79, v80, v81, v82, v83);
      swift_arrayDestroy();
      sub_1000B7D68();

      v60 = v249;
      sub_1000B7D68();

      v84 = v227;
    }

    else
    {

      sub_1001B3348(v62, type metadata accessor for ClientOverride);
      v84 = v36;
    }

    sub_1001B3348(v84, type metadata accessor for ClientOverride);
  }

  v86 = v242;
  v85 = v243;
  v88 = URL.hasDirectoryPath.getter();
  if (v88)
  {
    v89 = *(v246 + 16);
    v90 = ((v246 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v89(v60, v85, v86);
  }

  else
  {
    URL._bridgeToObjectiveC()(v87);
    v92 = v91;
    v93 = _CFBundleCopyBundleURLForExecutableURL();

    if (!v93)
    {
      goto LABEL_50;
    }

    v60 = v249;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = *(v246 + 16);
    v90 = ((v246 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  }

  v89(v2, v60, v86);
  v94 = objc_allocWithZone(LSApplicationRecord);
  v95 = v236;
  v96 = sub_1001B35E8(v2, 0);
  if (v95)
  {
  }

  else
  {
    v107 = v96;
    if (v96)
    {
LABEL_27:
      v112 = v245;
      v113 = v224;
      sub_1001B4D7C(v245, v224, &unk_1003D20F0);
      objc_allocWithZone(v233);
      v114 = v107;
      v115 = sub_1001AFD6C(v234, v114, v113);
      v237 = v114;
      v116 = v244;
LABEL_36:
      sub_1001B5094();
      v138 = v226;
      sub_1001B339C(v238, v226);

      v139 = v115;
      v140 = Logger.logObject.getter();
      (v240)(v138, v241);
      v141 = v116;
      v142 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v140, v142))
      {
        v143 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        *v143 = 136446978;
        v144 = sub_1001B55D8();
        v146 = sub_100080210(v144, v141, v145);
        v147 = sub_1001B5468(v146);
        v148 = v220;
        sub_1001A7E5C(v147, v149, v150, v151, v152, v153, v154, v155, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229);
        v156 = sub_1001AA5B0();
        v158 = v157;
        sub_1001B50AC();
        sub_1001B3348(v148, v159);
        sub_100080210(v156, v158, &v247);
        sub_1001B55CC();

        *(v143 + 14) = v156;
        *(v143 + 22) = 2082;
        sub_1001B54EC();
        v160 = sub_1001B55F0();
        v163 = sub_100080210(v160, v161, v162);

        *(v143 + 24) = v163;
        *(v143 + 32) = 2082;
        sub_1001B54EC();
        v164 = sub_1001B55F0();
        v167 = sub_100080210(v164, v165, v166);

        *(v143 + 34) = v167;
        _os_log_impl(&_mh_execute_header, v140, v142, "%{public}s Initialized with server %{public}s bundle ID %{public}s and request bundle ID %{public}s]", v143, 0x2Au);
        swift_arrayDestroy();
        v86 = v242;
        sub_1000B7D68();

        v112 = v245;
        sub_1000B7D68();
      }

      v168 = v225;
      sub_1001A7E5C(v169, v170, v171, v172, v173, v174, v175, v176, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229);
      v177 = sub_100080FB4(&qword_1003CCB50);
      if (sub_100081D0C(v168, 2, v177))
      {

        sub_10013B1E8(v112, &unk_1003D20F0);
        v178 = sub_1001B5350();
        (v140)(v178);
        v179 = sub_1001B55A0();
        (v140)(v179);
        sub_1001B50AC();
        sub_1001B3348(v168, v180);
      }

      else
      {
        (*(v246 + 32))(v223, v168, v86);
        sub_1001B5094();
        sub_1001B339C(v238, v219);
        v199 = v244;

        Logger.logObject.getter();
        v200 = sub_1001B5364();
        v201(v200);
        v202 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v140, v202))
        {
          v203 = sub_1001B5688();
          sub_1001B53B0();
          v204 = swift_slowAlloc();
          v247 = v204;
          *v203 = 136446210;
          v205 = sub_1001B55D8();
          v207 = sub_100080210(v205, v199, v206);

          *(v203 + 4) = v207;
          _os_log_impl(&_mh_execute_header, v140, v202, "%{public}s StoreKit testing enabled.", v203, 0xCu);
          sub_100080F0C(v204);
          sub_1000B7D68();

          sub_1000B7D68();
        }

        else
        {
        }

        v212 = [objc_opt_self() sharedInstance];
        URL.path.getter();
        v213 = String._bridgeToObjectiveC()();

        sub_1001B54EC();
        sub_1001B55F0();
        v214 = String._bridgeToObjectiveC()();

        [v212 useConfigurationDirectory:v213 forBundleID:v214];

        sub_10013B1E8(v245, &unk_1003D20F0);
        v215 = sub_1001B5350();
        (v212)(v215);
        v216 = sub_1001B561C();
        (v212)(v216);
        v217 = sub_1001B55A0();
        (v212)(v217);
      }

      goto LABEL_46;
    }
  }

  v97 = v86;
  v98 = v85;
  v99 = v232;
  v100 = v97;
  (v89)(v232, v60);
  v101 = objc_allocWithZone(LSApplicationExtensionRecord);
  v102 = sub_1001B3804(v99);
  v108 = v98;
  if (v102)
  {
    v109 = v102;
    v110 = [v109 containingBundleRecord];

    v86 = v100;
    if (v110)
    {
      objc_opt_self();
      v111 = swift_dynamicCastObjCClass();
      if (v111)
      {
        v107 = v111;
        goto LABEL_27;
      }
    }

    v60 = v249;
    if (v88)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v86 = v100;
    if (v88)
    {
      goto LABEL_30;
    }
  }

  URL._bridgeToObjectiveC()(v103);
  v105 = v104;
  v106 = CFBundleCopyInfoDictionaryForURL(v104);

  if (!v106)
  {
LABEL_30:
    URL._bridgeToObjectiveC()(v103);
    v118 = v117;
    v106 = CFBundleCopyInfoDictionaryForURL(v117);

    if (!v106)
    {

      sub_1001B5094();
      sub_1001B339C(v238, v221);
      v89(v222, v108, v86);
      Logger.logObject.getter();
      v181 = sub_1001B5364();
      v182(v181);
      v183 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(0, v183))
      {
        sub_1000B7DC8();
        swift_slowAlloc();
        sub_1001B5240();
        v244 = swift_slowAlloc();
        v247 = v244;
        *v60 = 136446466;
        v184 = sub_1001B5478();
        v185 = sub_100080210(v184, 0xE600000000000000, &v247);
        sub_1001B51E0(v185);
        sub_1001B50C4();
        sub_1001B3300(v186, v187);
        v188 = dispatch thunk of CustomStringConvertible.description.getter();
        v190 = v189;
        v191 = sub_1001B5384();
        v90(v191);
        v192 = sub_100080210(v188, v190, &v247);
        v108 = v243;

        *(v60 + 14) = v192;
        sub_1001B5560();
        _os_log_impl(v193, v194, v195, v196, v197, v198);
        swift_arrayDestroy();
        sub_1001B5198();

        sub_1000B7D68();
      }

      else
      {

        v208 = sub_1001B5384();
        v90(v208);
      }

      v209 = v245;
      sub_1001B497C();
      sub_1000ED9E4();
      v210 = swift_allocError();
      sub_1001B54D0(v210, v211);
      sub_10013B1E8(v209, &unk_1003D20F0);
      (v90)(v108, v89);
      (v90)(v249, v89);
LABEL_46:
      sub_1000892C4();
      return;
    }
  }

  v237 = v106;
  sub_1001B5094();
  sub_1001B339C(v238, v229);
  v119 = v230;
  v89(v230, v108, v86);
  Logger.logObject.getter();
  v120 = sub_1001B55FC();
  (v240)(v120, v241);
  v121 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v121))
  {
    sub_1000B7DC8();
    v122 = swift_slowAlloc();
    sub_1000B7DBC();
    v232 = swift_slowAlloc();
    v247 = v232;
    *v122 = 136446466;
    v123 = sub_1001B5478();
    v124 = sub_100080210(v123, 0xE600000000000000, &v247);
    sub_1001B5468(v124);
    sub_1001B50C4();
    sub_1001B3300(v125, v126);
    v127 = dispatch thunk of CustomStringConvertible.description.getter();
    v129 = v128;
    v236 = *(v246 + 8);
    v236(v119, v242);
    v130 = sub_100080210(v127, v129, &v247);
    v86 = v242;

    *(v122 + 14) = v130;
    _os_log_impl(&_mh_execute_header, v60, v121, "[%{public}s] Cannot find application record for %{public}s. Initializing with bundle.", v122, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {

    v236 = *(v246 + 8);
    v236(v119, v86);
  }

  v112 = v245;
  v131 = v231;
  v89(v231, v249, v86);
  objc_opt_self();
  v132 = v237;
  sub_1000ED9E4();
  swift_dynamicCastObjCClassUnconditional();
  v247 = 0;
  v133 = v132;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  v134 = v247;
  if (v247)
  {

    v135 = v228;
    sub_1001B4D7C(v112, v228, &unk_1003D20F0);
    v136 = objc_allocWithZone(v233);
    v137 = sub_1001AEC40(v234, v131, v134, v135);
    v116 = v244;
    v115 = v137;

    v237 = 0;
    goto LABEL_36;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1001ADC78()
{
  sub_100093D08();
  ObjectType = swift_getObjectType();
  type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v1);
  sub_100093D40();
  v2 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v2);
  sub_100089118();
  __chkstk_darwin(v3);
  v5 = v19 - v4;
  sub_1001B51A8();
  v20[0] = v6;
  v20[1] = v7;
  v8._countAndFlagsBits = sub_100093CAC();
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_1001B5494();
  String.append(_:)(v9);
  v19[1] = v20[0];
  v10 = objc_allocWithZone(LSApplicationRecord);

  v11 = sub_100093CAC();
  v13 = sub_1001B3728(v11, v12, 0);
  memset(v20, 0, sizeof(v20));
  v21 = 1;
  type metadata accessor for ClientOverride(0);
  sub_1000B0690();
  sub_100081DFC(v14, v15, v16, v17);
  v18 = objc_allocWithZone(ObjectType);
  sub_1001AFD6C(v20, v13, v5);

  swift_getObjectType();
  sub_1001B55E4();
  swift_deallocPartialClassInstance();
  sub_100093CB8();
}

void sub_1001AE0B0()
{
  sub_100093D08();
  v40 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v6);
  sub_100093D40();
  v39 = v8 - v7;
  v9 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for URL();
  sub_1000890DC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1001460C4();
  sub_1001B5318();
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  sub_1001A98F4(v44, 1, v4, v2, &v41);
  v33 = v12;
  v34 = v15;
  v35 = v13;
  v36 = v5;
  v37 = v4;
  v38 = v2;
  v20 = v41;
  v21 = v42;
  v22 = v43;
  sub_1001AE5E0();
  swift_getObjectType();
  v44[2] = v20;
  v45 = v21;
  v46 = v22;
  v47 = 0;
  v23 = v34;
  v24 = sub_1000B7EA0();
  v25 = v35;
  v26(v24);
  type metadata accessor for ClientOverride(0);
  sub_1000B0690();
  sub_100081DFC(v27, v28, v29, v30);
  sub_1001AC968();
  (*(v23 + 8))(v19, v25);
  v31 = sub_1001B556C();
  sub_10008E168(v31, v32);
  swift_deallocPartialClassInstance();
  sub_100093CB8();
}

void sub_1001AE5E0()
{
  sub_1000892DC();
  v72 = v0;
  *v73.val = v2;
  v75 = v3;
  v69 = v4;
  v70 = v5;
  *&v73.val[4] = v6;
  *&v73.val[6] = v7;
  *&v73.val[2] = v8;
  v74 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v9);
  sub_10018ECCC();
  v71 = v10;
  sub_10018ED10();
  __chkstk_darwin(v11);
  sub_1001B5378();
  v68 = v12;
  v13 = sub_100080FB4(&unk_1003D0540);
  v14 = sub_1000B01B0(v13);
  __chkstk_darwin(v14);
  sub_1001460C4();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v67 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v67 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v67 - v26;
  __chkstk_darwin(v25);
  sub_1001B558C();
  v28 = type metadata accessor for URL();
  sub_1000B0690();
  sub_100081DFC(v29, v30, v31, v28);
  sub_1001B4D7C(v1, v27, &unk_1003D0540);
  sub_1001B53F4();
  v35 = sub_100081D0C(v32, v33, v34);
  sub_10013B1E8(v27, &unk_1003D0540);
  if (v35 == 1)
  {
    v36 = swift_slowAlloc();
    v77 = v73;
    if (proc_pidpath_audittoken(&v77, v36, 0x1000u) < 1)
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      sub_10007EDA4(v74, qword_1003F26C8);
      sub_1001B5094();
      v57 = v68;
      sub_1001B339C(v58, v68);
      v59 = v75;

      v60 = Logger.logObject.getter();
      type metadata accessor for Logger();
      sub_10013B618();
      (*(v61 + 8))(v57);
      v62 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v60, v62))
      {
        v63 = sub_1001B5688();
        sub_1001B53B0();
        v64 = swift_slowAlloc();
        v76 = v64;
        *v63 = 136446210;
        *(v63 + 4) = sub_100080210(v69, v59, &v76);
        _os_log_impl(&_mh_execute_header, v60, v62, "%{public}s Cannot find process path", v63, 0xCu);
        sub_100080F0C(v64);
        sub_1000B7D68();

        sub_1000B7D68();
      }

      sub_1001B497C();
      sub_1000ED9E4();
      v65 = swift_allocError();
      sub_1001B54D0(v65, v66);
      sub_1000B7D68();

      goto LABEL_16;
    }

    String.init(cString:)();
    sub_1000B0690();
    sub_100081DFC(v37, v38, v39, v28);
    sub_1001073F0();
    String.utf8CString.getter();

    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_10013B1E8(v21, &unk_1003D0540);
    sub_10013B1E8(v1, &unk_1003D0540);

    sub_1001B53E8();
    sub_100081DFC(v40, v41, v42, v43);
    sub_1001B4DC8(v24, v1, &unk_1003D0540);
    sub_1000B7D68();
  }

  sub_1001B4D7C(v1, v17, &unk_1003D0540);
  sub_1001B53F4();
  if (sub_100081D0C(v44, v45, v46) == 1)
  {
    sub_10013B1E8(v17, &unk_1003D0540);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    sub_10007EDA4(v74, qword_1003F26C8);
    sub_1001B5094();
    v47 = v71;
    sub_1001B339C(v48, v71);
    v49 = v75;

    v50 = v47;
    Logger.logObject.getter();
    sub_1001B52B0();
    type metadata accessor for Logger();
    sub_10013B618();
    (*(v51 + 8))(v47);
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v52))
    {
      v53 = sub_1001B5688();
      sub_1001B53B0();
      v54 = swift_slowAlloc();
      *v77.val = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_100080210(v69, v49, &v77);
      _os_log_impl(&_mh_execute_header, v50, v52, "%{public}s Cannot find bundle URL", v53, 0xCu);
      sub_100080F0C(v54);
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_1001B497C();
    sub_1000ED9E4();
    v55 = swift_allocError();
    sub_1001B54D0(v55, v56);
LABEL_16:
    sub_10013B1E8(v1, &unk_1003D0540);
    goto LABEL_17;
  }

  sub_10013B1E8(v1, &unk_1003D0540);
  (*(*(v28 - 8) + 32))(v70, v17, v28);
LABEL_17:
  sub_1000892C4();
}

NSObject *sub_1001AEC40(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v5 = v4;
  v133 = a4;
  v137 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SKLogger();
  __chkstk_darwin(v7);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ClientOverride.Server(0);
  v11 = __chkstk_darwin(v10 - 8);
  v127 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v126 = &v122 - v14;
  __chkstk_darwin(v13);
  v125 = &v122 - v15;
  v143 = type metadata accessor for URL();
  v135 = *(v143 - 8);
  __chkstk_darwin(v143);
  v132 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100080FB4(&unk_1003CE610);
  __chkstk_darwin(v17 - 8);
  v129 = &v122 - v18;
  v19 = sub_100080FB4(&unk_1003D20F0);
  v20 = __chkstk_darwin(v19 - 8);
  v128 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v124 = &v122 - v23;
  v24 = __chkstk_darwin(v22);
  v130 = &v122 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v122 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v122 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v122 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v122 - v36;
  __chkstk_darwin(v35);
  v136 = &v122 - v38;
  if (!kCFBundleIdentifierKey)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v39, v40, a3, &v141);

  if (v142)
  {
    if (swift_dynamicCast())
    {
      v41 = v140;
      v42 = &v5[OBJC_IVAR____TtC9storekitd6Client_callerBundleID];
      *v42 = v139;
      v42[1] = v41;

      v122 = v41;
      sub_1001A9D84();
      v43 = type metadata accessor for ClientOverride(0);
      if (sub_100081D0C(v37, 1, v43) == 1)
      {
        v44 = v136;
        sub_1001B4D7C(v133, v136, &unk_1003D20F0);
        if (sub_100081D0C(v37, 1, v43) != 1)
        {
          sub_10013B1E8(v37, &unk_1003D20F0);
        }
      }

      else
      {
        v44 = v136;
        sub_1001B4A94(v37, v136);
        sub_100081DFC(v44, 0, 1, v43);
      }

      sub_1001B4D7C(v44, v34, &unk_1003D20F0);
      if (sub_100081D0C(v34, 1, v43) == 1)
      {
        sub_10013B1E8(v34, &unk_1003D20F0);
      }

      else
      {
        v53 = *(v34 + 2);
        v52 = *(v34 + 3);

        sub_1001B3348(v34, type metadata accessor for ClientOverride);
        if (v52)
        {
          goto LABEL_19;
        }
      }

      v53 = *v42;
      v52 = v42[1];

LABEL_19:
      v54 = &v5[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
      *v54 = v53;
      v54[1] = v52;
      v55 = &v5[OBJC_IVAR____TtC9storekitd6Client_auditToken];
      v56 = v131;
      v57 = v131[1];
      *v55 = *v131;
      *(v55 + 1) = v57;
      v55[32] = *(v56 + 32);
      v58 = *(v135 + 16);
      v123 = OBJC_IVAR____TtC9storekitd6Client_callerBundleURL;
      v131 = v58;
      (v58)(&v5[OBJC_IVAR____TtC9storekitd6Client_callerBundleURL], v137, v143);
      v5[OBJC_IVAR____TtC9storekitd6Client_isClip] = 0;
      v59 = &v5[OBJC_IVAR____TtC9storekitd6Client_signerOrganization];
      *v59 = 0;
      v59[1] = 0;
      v5[OBJC_IVAR____TtC9storekitd6Client_isAlmond] = 0;
      v5[OBJC_IVAR____TtC9storekitd6Client_iOSTargetPlatform] = [objc_opt_self() deviceIsiPad];
      sub_1001B4D7C(v136, v31, &unk_1003D20F0);
      if (sub_100081D0C(v31, 1, v43) == 1)
      {
        sub_10013B1E8(v31, &unk_1003D20F0);
      }

      else
      {
        v61 = *(v31 + 4);
        v60 = *(v31 + 5);

        sub_1001B3348(v31, type metadata accessor for ClientOverride);
        if (v60)
        {
          goto LABEL_28;
        }
      }

      if (!kCFBundleVersionKey)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1001DA990(v62, v63, a3, &v141);

      if (v142)
      {
        if (swift_dynamicCast())
        {
          v61 = v139;
          v60 = v140;
          goto LABEL_28;
        }
      }

      else
      {
        sub_10013B1E8(&v141, &unk_1003CCB70);
      }

      v60 = 0xE300000000000000;
      v61 = 3157553;
LABEL_28:
      v64 = &v5[OBJC_IVAR____TtC9storekitd6Client_requestBundleVersion];
      *v64 = v61;
      v64[1] = v60;
      if (_kCFBundleDisplayNameKey)
      {
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1001DA990(v65, v66, a3, &v141);

        if (v142)
        {
          if (swift_dynamicCast())
          {

LABEL_36:
            v69 = v139;
            v70 = v140;
            goto LABEL_39;
          }
        }

        else
        {
          sub_10013B1E8(&v141, &unk_1003CCB70);
        }

        if (kCFBundleNameKey)
        {

          v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_1001DA990(v67, v68, a3, &v141);

          if (v142)
          {
            if (swift_dynamicCast())
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_10013B1E8(&v141, &unk_1003CCB70);
          }

          v69 = URL.lastPathComponent.getter();
LABEL_39:
          v71 = &v5[OBJC_IVAR____TtC9storekitd6Client_localizedName];
          *v71 = v69;
          v71[1] = v70;
          sub_1001B4D7C(v136, v28, &unk_1003D20F0);
          v72 = v43;
          if (sub_100081D0C(v28, 1, v43) == 1)
          {
            sub_10013B1E8(v28, &unk_1003D20F0);
            v73 = type metadata accessor for UUID();
            v74 = v129;
            sub_100081DFC(v129, 1, 1, v73);
          }

          else
          {
            v74 = v129;
            sub_1001B4D7C(&v28[*(v43 + 40)], v129, &unk_1003CE610);
            sub_1001B3348(v28, type metadata accessor for ClientOverride);
          }

          v75 = v123;
          sub_1001B4DC8(v74, &v5[OBJC_IVAR____TtC9storekitd6Client_deviceVendorID], &unk_1003CE610);
          v5[OBJC_IVAR____TtC9storekitd6Client_hasEverHadIAPs] = 1;
          v76 = [objc_opt_self() defaultManager];
          v77 = v132;
          v78 = v143;
          (v131)(v132, &v5[v75], v143);
          v79 = sub_10014E1BC(v77, 1);

          v80 = v78;
          v81 = *(v135 + 8);
          v81(v77, v80);
          v5[OBJC_IVAR____TtC9storekitd6Client_isAppStoreSigned] = v79 & 1;
          v5[OBJC_IVAR____TtC9storekitd6Client_isBeta] = 0;
          v5[OBJC_IVAR____TtC9storekitd6Client_isThirdPartyDistributed] = 1;
          v82 = &v5[OBJC_IVAR____TtC9storekitd6Client_vendorName];
          *v82 = 0;
          v82[1] = 0;
          v5[OBJC_IVAR____TtC9storekitd6Client_hasMIDBasedSINF] = 0;
          v83 = v130;
          sub_1001B4D7C(v136, v130, &unk_1003D20F0);
          v84 = v72;
          if (sub_100081D0C(v83, 1, v72) == 1)
          {
            goto LABEL_43;
          }

          v85 = v83 + *(v72 + 36);
          v86 = *v85;
          v87 = *(v85 + 8);
          sub_1001B3348(v83, type metadata accessor for ClientOverride);
          if ((v87 & 1) == 0)
          {
            v115 = v124;
            sub_1001B4D7C(v136, v124, &unk_1003D20F0);
            if (sub_100081D0C(v115, 1, v84) == 1)
            {
              v83 = v115;
LABEL_43:
              sub_10013B1E8(v83, &unk_1003D20F0);
              goto LABEL_45;
            }

            v117 = v115 + *(v84 + 32);
            v100 = *v117;
            v118 = *(v117 + 8);
            sub_1001B3348(v115, type metadata accessor for ClientOverride);
            if ((v118 & 1) == 0)
            {
              *&v5[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = v86;
LABEL_50:
              v101 = v128;
              *&v5[OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID] = v100;
              sub_1001B4DC8(v136, v101, &unk_1003D20F0);
              if (sub_100081D0C(v101, 1, v84) == 1)
              {
                sub_10013B1E8(v101, &unk_1003D20F0);
                v102 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
                v103 = type metadata accessor for Client.Server(0);
                v104 = &v5[v102];
                v105 = 1;
              }

              else
              {
                v106 = v126;
                sub_1001B339C(v101 + *(v84 + 28), v126);
                sub_1001B3348(v101, type metadata accessor for ClientOverride);
                v107 = v106;
                v108 = v125;
                sub_1001B4A94(v107, v125);
                v109 = v108;
                v110 = v127;
                sub_1001B4A94(v109, v127);
                v111 = sub_100080FB4(&qword_1003CCB50);
                switch(sub_100081D0C(v110, 3, v111))
                {
                  case 1u:
                    if (*&v5[OBJC_IVAR____TtC9storekitd6Client_storeItemID] && *&v5[OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID])
                    {
                      v119 = 1;
                    }

                    else
                    {
                      v119 = 2;
                    }

                    v120 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
                    sub_100081DFC(&v5[OBJC_IVAR____TtC9storekitd6Client_serverOverride], v119, 2, v111);
                    v121 = type metadata accessor for Client.Server(0);
                    sub_100081DFC(&v5[v120], 0, 1, v121);
                    sub_1001B3348(v127, type metadata accessor for ClientOverride.Server);
                    goto LABEL_60;
                  case 2u:
                    v112 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
                    v113 = &v5[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
                    v114 = 1;
                    goto LABEL_58;
                  case 3u:
                    v112 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
                    v113 = &v5[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
                    v114 = 2;
                    goto LABEL_58;
                  default:
                    v112 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
                    (*(v135 + 32))(&v5[OBJC_IVAR____TtC9storekitd6Client_serverOverride], v127, v143);
                    v113 = &v5[v112];
                    v114 = 0;
LABEL_58:
                    sub_100081DFC(v113, v114, 2, v111);
                    v103 = type metadata accessor for Client.Server(0);
                    v104 = &v5[v112];
                    v105 = 0;
                    break;
                }
              }

              sub_100081DFC(v104, v105, 1, v103);
LABEL_60:
              v138.receiver = v5;
              v138.super_class = ObjectType;
              v46 = objc_msgSendSuper2(&v138, "init");
              sub_10013B1E8(v133, &unk_1003D20F0);
              v81(v137, v143);
              return v46;
            }
          }

LABEL_45:
          sub_10008E5A4(0, &qword_1003D1058);
          v88 = v132;
          (v131)(v132, v137, v143);
          v90 = sub_1001AFCD4(v88, v89);
          if (v90)
          {
            v91 = v90;
            v92 = [v90 itemID];
            v93 = [v92 unsignedLongLongValue];

            *&v5[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = v93;
            v94 = [v91 installerVersionID];
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v97 = v96;

            v98 = sub_1001A95FC(v95, v97);
            LOBYTE(v95) = v99;

            if (v95)
            {
              v100 = 0;
            }

            else
            {
              v100 = v98;
            }
          }

          else
          {
            v100 = 0;
            *&v5[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = 0;
          }

          goto LABEL_50;
        }

LABEL_72:
        __break(1u);
        JUMPOUT(0x1001AFCC4);
      }

      goto LABEL_70;
    }
  }

  else
  {

    sub_10013B1E8(&v141, &unk_1003CCB70);
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v45 = sub_10007EDA4(v7, qword_1003F26C8);
  sub_1001B339C(v45, v9);
  v46 = Logger.logObject.getter();
  v47 = type metadata accessor for Logger();
  (*(*(v47 - 8) + 8))(v9, v47);
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v141 = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_100080210(0x746E65696C43, 0xE600000000000000, &v141);
    _os_log_impl(&_mh_execute_header, v46, v48, "[%{public}s] Cannot find bundle ID", v49, 0xCu);
    sub_100080F0C(v50);
  }

  sub_1001B497C();
  swift_allocError();
  *v51 = 0;
  swift_willThrow();
  sub_10013B1E8(v133, &unk_1003D20F0);
  (*(v135 + 8))(v137, v143);
  swift_deallocPartialClassInstance();
  return v46;
}

id sub_1001AFCD4@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = [swift_getObjCClassFromMetadata() receiptFromBundleAtURL:v3];

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

char *sub_1001AFD6C(uint64_t a1, void *a2, uint64_t a3)
{
  v192 = a3;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v7 - 8);
  v176 = &v174 - v8;
  v9 = type metadata accessor for ClientOverride.Server(0);
  v10 = __chkstk_darwin(v9 - 8);
  v184 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v182 = &v174 - v13;
  __chkstk_darwin(v12);
  v191 = &v174 - v14;
  v15 = sub_100080FB4(&unk_1003CE610);
  v16 = __chkstk_darwin(v15 - 8);
  v185 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v186 = &v174 - v19;
  __chkstk_darwin(v18);
  v194 = &v174 - v20;
  v21 = sub_100080FB4(&unk_1003D20F0);
  v22 = __chkstk_darwin(v21 - 8);
  v190 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v189 = &v174 - v25;
  v26 = __chkstk_darwin(v24);
  v188 = &v174 - v27;
  v28 = __chkstk_darwin(v26);
  v179 = &v174 - v29;
  v30 = __chkstk_darwin(v28);
  v187 = &v174 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v174 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v174 - v36;
  __chkstk_darwin(v35);
  v195 = &v174 - v38;
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v175 = &v174 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v174 - v43;
  v45 = &v4[OBJC_IVAR____TtC9storekitd6Client_auditToken];
  v46 = *(a1 + 16);
  *v45 = *a1;
  *(v45 + 1) = v46;
  v45[32] = *(a1 + 32);
  v47 = a2;
  v48 = [v47 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = OBJC_IVAR____TtC9storekitd6Client_callerBundleURL;
  v50 = *(v40 + 32);
  v183 = v44;
  v178 = v40 + 32;
  v177 = v50;
  v50(&v4[OBJC_IVAR____TtC9storekitd6Client_callerBundleURL], v44, v39);
  v51 = v47;
  v52 = sub_1001B49D0(v51, &selRef_bundleIdentifier);
  if (!v53)
  {

    sub_1001B497C();
    swift_allocError();
    *v62 = 0;
    swift_willThrow();

    sub_10013B1E8(v192, &unk_1003D20F0);
    (*(v40 + 8))(&v4[v49], v39);
    swift_deallocPartialClassInstance();
    return v44;
  }

  v54 = v53;
  v174 = v39;
  v55 = &v4[OBJC_IVAR____TtC9storekitd6Client_callerBundleID];
  *v55 = v52;
  v55[1] = v53;
  v56 = v52;

  v180 = v56;
  v181 = v54;
  sub_1001A9D84();
  v57 = type metadata accessor for ClientOverride(0);
  if (sub_100081D0C(v37, 1, v57) == 1)
  {
    v58 = v195;
    sub_1001B4D7C(v192, v195, &unk_1003D20F0);
    v59 = sub_100081D0C(v37, 1, v57);
    v60 = v194;
    v61 = v185;
    if (v59 != 1)
    {
      sub_10013B1E8(v37, &unk_1003D20F0);
    }
  }

  else
  {
    v58 = v195;
    sub_1001B4A94(v37, v195);
    sub_100081DFC(v58, 0, 1, v57);
    v60 = v194;
    v61 = v185;
  }

  sub_1001B4D7C(v58, v34, &unk_1003D20F0);
  v63 = sub_100081D0C(v34, 1, v57);
  v194 = v57;
  if (v63 == 1)
  {
    sub_10013B1E8(v34, &unk_1003D20F0);
    v64 = type metadata accessor for UUID();
    v65 = v186;
    sub_100081DFC(v186, 1, 1, v64);
    goto LABEL_10;
  }

  v66 = &v34[*(v57 + 40)];
  v65 = v186;
  sub_1001B4D7C(v66, v186, &unk_1003CE610);
  sub_1001B3348(v34, type metadata accessor for ClientOverride);
  v67 = type metadata accessor for UUID();
  if (sub_100081D0C(v65, 1, v67) == 1)
  {
LABEL_10:
    v68 = [v51 deviceIdentifierForVendor];
    if (v68)
    {
      v69 = v68;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = 0;
    }

    else
    {
      v70 = 1;
    }

    v71 = type metadata accessor for UUID();
    sub_100081DFC(v61, v70, 1, v71);
    sub_1001B4DC8(v61, v60, &unk_1003CE610);
    v72 = sub_100081D0C(v65, 1, v71);
    v73 = v189;
    if (v72 != 1)
    {
      sub_10013B1E8(v65, &unk_1003CE610);
    }

    goto LABEL_16;
  }

  (*(*(v67 - 8) + 32))(v60, v65, v67);
  sub_100081DFC(v60, 0, 1, v67);
  v73 = v189;
LABEL_16:
  sub_1001B4DC8(v60, &v4[OBJC_IVAR____TtC9storekitd6Client_deviceVendorID], &unk_1003CE610);
  v74 = [v51 sk_isAlmond];
  v4[OBJC_IVAR____TtC9storekitd6Client_isAlmond] = v74;
  v75 = sub_100178710();
  v76 = OBJC_IVAR____TtC9storekitd6Client_isAppStoreSigned;
  v4[OBJC_IVAR____TtC9storekitd6Client_isAppStoreSigned] = v75;
  v77 = [v51 isBeta];
  v4[OBJC_IVAR____TtC9storekitd6Client_isBeta] = v77;
  v78 = [v51 iTunesMetadata];
  v79 = [v78 distributorInfo];

  LOBYTE(v78) = [v79 distributorIsThirdParty];
  v4[OBJC_IVAR____TtC9storekitd6Client_isThirdPartyDistributed] = v78;
  v80 = [v51 localizedName];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  v84 = &v4[OBJC_IVAR____TtC9storekitd6Client_localizedName];
  *v84 = v81;
  v84[1] = v83;
  v85 = [v51 applicationHasMIDBasedSINF];
  v4[OBJC_IVAR____TtC9storekitd6Client_hasMIDBasedSINF] = v85;
  v4[OBJC_IVAR____TtC9storekitd6Client_iOSTargetPlatform] = sub_10017C0C0();
  v86 = v51;
  v87 = sub_1001B49D0(v86, &selRef_signerOrganization);
  v88 = &v4[OBJC_IVAR____TtC9storekitd6Client_signerOrganization];
  *v88 = v87;
  v88[1] = v89;
  v90 = sub_1001B49D0([v86 iTunesMetadata], &selRef_artistName);
  v91 = &v4[OBJC_IVAR____TtC9storekitd6Client_vendorName];
  *v91 = v90;
  v91[1] = v92;
  v93 = v187;
  sub_1001B4D7C(v195, v187, &unk_1003D20F0);
  v94 = v194;
  if (sub_100081D0C(v93, 1, v194) == 1)
  {
    goto LABEL_17;
  }

  v95 = v93 + *(v94 + 36);
  v96 = *v95;
  v97 = *(v95 + 8);
  sub_1001B3348(v93, type metadata accessor for ClientOverride);
  if (v97)
  {
    goto LABEL_19;
  }

  v93 = v179;
  sub_1001B4D7C(v195, v179, &unk_1003D20F0);
  if (sub_100081D0C(v93, 1, v94) == 1)
  {
LABEL_17:
    sub_10013B1E8(v93, &unk_1003D20F0);
  }

  else
  {
    v118 = v93 + *(v94 + 32);
    v105 = *v118;
    v119 = *(v118 + 8);
    sub_1001B3348(v93, type metadata accessor for ClientOverride);
    if ((v119 & 1) == 0)
    {
      *&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = v96;
      goto LABEL_30;
    }
  }

LABEL_19:
  v98 = [v86 iTunesMetadata];
  v99 = [v98 storeItemIdentifier];

  if (v99 && (v100 = [v86 iTunesMetadata], v101 = objc_msgSend(v100, "versionIdentifier"), v100, v101))
  {
    v102 = [v86 iTunesMetadata];
    v103 = [v102 storeItemIdentifier];

    *&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = v103;
    v104 = [v86 iTunesMetadata];
    v105 = [v104 versionIdentifier];
  }

  else
  {
    sub_10008E5A4(0, &qword_1003D1058);
    v106 = [v86 URL];
    v107 = v183;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = sub_1001AFCD4(v107, v108);
    v105 = v109;
    if (v109)
    {
      v110 = [v109 itemID];
      v111 = [v110 unsignedLongLongValue];

      *&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = v111;
      v112 = [v105 installerVersionID];
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = sub_1001A95FC(v113, v115);
      LOBYTE(v113) = v117;

      if (v113)
      {
        v105 = 0;
      }

      else
      {
        v105 = v116;
      }
    }

    else
    {
      *&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = 0;
    }
  }

LABEL_30:
  *&v4[OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID] = v105;
  if (v4[v76] == 1)
  {
    v120 = objc_opt_self();
    *&v200[0] = 0;
    v121 = [v120 loadMetadataFromApplicationRecord:v86 withError:v200];
    if (v121)
    {
      v122 = v121;
      v123 = *&v200[0];
      v124 = [v122 hasOrEverHasHadIAP];
      if (v124)
      {
        v125 = v124;
        v126 = [v124 BOOLValue];

        v4[OBJC_IVAR____TtC9storekitd6Client_hasEverHadIAPs] = v126;
        goto LABEL_37;
      }
    }

    else
    {
      v127 = *&v200[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v4[OBJC_IVAR____TtC9storekitd6Client_hasEverHadIAPs] = 1;
LABEL_37:
  v128 = v188;
  v129 = [v86 appClipMetadata];
  v130 = v195;
  if (v129)
  {

    v4[OBJC_IVAR____TtC9storekitd6Client_isClip] = 1;
    v131 = [v86 entitlements];

    v132 = String._bridgeToObjectiveC()();
    sub_10008E5A4(0, &qword_1003CE638);
    v133 = [v131 objectForKey:v132 ofClass:swift_getObjCClassFromMetadata()];

    if (v133)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v198 = 0u;
      v199 = 0u;
    }

    v200[0] = v198;
    v200[1] = v199;
    if (*(&v199 + 1))
    {
      sub_100080FB4(&unk_1003D0530);
      if (swift_dynamicCast())
      {
        if (*(v196 + 16))
        {

          v136 = String._bridgeToObjectiveC()();

          CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
        }

        else
        {
        }
      }

      goto LABEL_49;
    }

    v134 = &unk_1003CCB70;
    v135 = v200;
    goto LABEL_48;
  }

  v4[OBJC_IVAR____TtC9storekitd6Client_isClip] = 0;
  sub_1001B4D7C(v130, v128, &unk_1003D20F0);
  if (sub_100081D0C(v128, 1, v194) == 1)
  {
    v134 = &unk_1003D20F0;
    v135 = v128;
LABEL_48:
    sub_10013B1E8(v135, v134);
LABEL_49:
    v137 = v181;
    v138 = v180;
    goto LABEL_50;
  }

  v160 = v128;
  v138 = *(v128 + 16);
  v137 = *(v128 + 24);

  sub_1001B3348(v160, type metadata accessor for ClientOverride);
  if (!v137)
  {
    goto LABEL_49;
  }

LABEL_50:
  v139 = &v4[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
  *v139 = v138;
  v139[1] = v137;
  sub_1001B4D7C(v130, v73, &unk_1003D20F0);
  if (sub_100081D0C(v73, 1, v194) == 1)
  {
    sub_10013B1E8(v73, &unk_1003D20F0);
    goto LABEL_53;
  }

  v141 = *(v73 + 32);
  v140 = *(v73 + 40);

  sub_1001B3348(v73, type metadata accessor for ClientOverride);
  if (!v140)
  {
LABEL_53:
    v142 = sub_1001B4A38(v86, &selRef_exactBundleVersion);
    if (v143)
    {
      v141 = v142;
      v140 = v143;
    }

    else
    {
      v140 = 0xE300000000000000;
      v141 = 3157553;
    }
  }

  v144 = &v4[OBJC_IVAR____TtC9storekitd6Client_requestBundleVersion];
  *v144 = v141;
  v144[1] = v140;
  v145 = v190;
  sub_1001B4D7C(v130, v190, &unk_1003D20F0);
  v146 = v194;
  if (sub_100081D0C(v145, 1, v194) == 1)
  {
    sub_10013B1E8(v130, &unk_1003D20F0);
    sub_10013B1E8(v145, &unk_1003D20F0);
    v147 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
    v148 = type metadata accessor for Client.Server(0);
    v149 = &v4[v147];
    v150 = 1;
  }

  else
  {
    v151 = v182;
    sub_1001B339C(v145 + *(v146 + 28), v182);
    sub_1001B3348(v145, type metadata accessor for ClientOverride);
    v152 = v151;
    v153 = v191;
    sub_1001B4A94(v152, v191);
    v154 = v153;
    v155 = v184;
    sub_1001B339C(v154, v184);
    v156 = sub_100080FB4(&qword_1003CCB50);
    switch(sub_100081D0C(v155, 3, v156))
    {
      case 1u:
        if (*&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] && *&v4[OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID])
        {
          sub_1001B3348(v191, type metadata accessor for ClientOverride.Server);
          sub_10013B1E8(v130, &unk_1003D20F0);
          v164 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
          v165 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
          v166 = 1;
        }

        else
        {
          sub_10008E5A4(0, &unk_1003CED80);
          v167 = *&v4[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
          v168 = *&v4[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];

          v169 = v176;
          sub_10018C168(v167, v168, 1, v176);

          sub_1001B3348(v191, type metadata accessor for ClientOverride.Server);
          sub_10013B1E8(v130, &unk_1003D20F0);
          v170 = v174;
          if (sub_100081D0C(v169, 1, v174) == 1)
          {
            sub_10013B1E8(v169, &unk_1003D0540);
            v164 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
            v165 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
            v166 = 2;
          }

          else
          {
            v171 = v175;
            v172 = v177;
            v177(v175, v169, v170);
            v164 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
            v172(&v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride], v171, v170);
            v165 = v164;
            v166 = 0;
          }
        }

        sub_100081DFC(v165, v166, 2, v156);
        v162 = v192;
        v173 = type metadata accessor for Client.Server(0);
        sub_100081DFC(v164, 0, 1, v173);
        sub_1001B3348(v184, type metadata accessor for ClientOverride.Server);
        v161 = ObjectType;
        goto LABEL_66;
      case 2u:
        sub_1001B3348(v191, type metadata accessor for ClientOverride.Server);
        sub_10013B1E8(v130, &unk_1003D20F0);
        v157 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
        v158 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
        v159 = 1;
        goto LABEL_64;
      case 3u:
        sub_1001B3348(v191, type metadata accessor for ClientOverride.Server);
        sub_10013B1E8(v130, &unk_1003D20F0);
        v157 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
        v158 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
        v159 = 2;
        goto LABEL_64;
      default:
        sub_1001B3348(v191, type metadata accessor for ClientOverride.Server);
        sub_10013B1E8(v130, &unk_1003D20F0);
        v157 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
        v177(&v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride], v184, v174);
        v158 = &v4[v157];
        v159 = 0;
LABEL_64:
        sub_100081DFC(v158, v159, 2, v156);
        v148 = type metadata accessor for Client.Server(0);
        v149 = &v4[v157];
        v150 = 0;
        break;
    }
  }

  sub_100081DFC(v149, v150, 1, v148);
  v162 = v192;
  v161 = ObjectType;
LABEL_66:
  v197.receiver = v4;
  v197.super_class = v161;
  v44 = objc_msgSendSuper2(&v197, "init");

  sub_10013B1E8(v162, &unk_1003D20F0);
  return v44;
}