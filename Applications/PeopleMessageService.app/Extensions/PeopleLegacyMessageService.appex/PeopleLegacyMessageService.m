uint64_t sub_100001C28()
{
  sub_100009DB0(&qword_100014460, &qword_10000D090);
  v0 = sub_100009DB0(&qword_100014468, &qword_10000D098);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10000CF70;
  v4 = v3 + v2;
  v5 = (v4 + *(v0 + 48));
  v6 = enum case for MessageDetails.EventSource.screenTime(_:);
  v7 = sub_10000C0EC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v4, v6, v7);
  *v5 = 0xD000000000000029;
  v5[1] = 0x800000010000CB10;
  v5[2] = 0xD000000000000011;
  v5[3] = 0x800000010000CB40;
  v5[4] = 0xD000000000000022;
  v5[5] = 0x800000010000CB60;
  v5[6] = sub_10000C30C();
  v5[7] = v9;
  v10 = (v4 + v1 + *(v0 + 48));
  v8();
  *v10 = 0xD000000000000027;
  v10[1] = 0x800000010000CB90;
  v10[2] = 0x7975426F546B7341;
  v10[3] = 0xE800000000000000;
  v10[4] = 0xD000000000000022;
  v10[5] = 0x800000010000CBC0;
  v10[6] = sub_10000C30C();
  v10[7] = v11;
  v12 = sub_100004108(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100014498 = v12;
  return result;
}

uint64_t sub_100001E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10000BF6C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_10000BFDC();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100001F98, 0, 0);
}

uint64_t sub_100001F98()
{
  v33 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  sub_10000C05C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_10000BFCC();
  v7 = sub_10000C40C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  if (v8)
  {
    v31 = v0[7];
    v15 = swift_slowAlloc();
    v29 = v7;
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315138;
    v17 = sub_10000BF2C();
    v30 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_10000A9C8(v17, v19, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v29, "Fetching %s", v15, 0xCu);
    sub_10000A520(v16);

    (*(v10 + 8))(v30, v31);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v0[3];
  v22 = sub_10000BF7C();
  v23 = v0[9];
  v24 = v0[6];
  v25 = v0[2];
  *v25 = v22;
  v25[1] = v26;

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000021C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100009DB0(&qword_100014438, &qword_10000D050) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000A474(a3, v26 - v10, &qword_100014438, &qword_10000D050);
  v12 = sub_10000C3EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A220(v11, &qword_100014438, &qword_10000D050);
  }

  else
  {
    sub_10000C3DC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10000C3BC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10000C33C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100009DB0(&qword_100014440, &qword_10000D068);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_10000A220(a3, &qword_100014438, &qword_10000D050);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A220(a3, &qword_100014438, &qword_10000D050);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100009DB0(&qword_100014440, &qword_10000D068);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000024D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_10000BFDC();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_100009DB0(&qword_100014478, &unk_10000D0A8);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = sub_10000C0EC();
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100002670, 0, 0);
}

uint64_t sub_100002670()
{
  v1 = v0[9];
  (*(v0[18] + 104))(v0[20], enum case for MessageDetails.EventSource.unknown(_:), v0[17]);
  sub_10000A42C(&qword_1000143F0, &type metadata accessor for MessageDetails.EventSource);
  sub_10000C38C();
  sub_10000C38C();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v2 = 1;
  }

  else
  {
    v3 = v0[3];
    v4 = v0[5];
    v2 = sub_10000C47C();
  }

  v5 = *(v0[18] + 8);
  v5(v0[20], v0[17]);

  if (v2)
  {
    sub_10000C03C();
    swift_willThrow();
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[16];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    sub_10000C05C();
    swift_errorRetain();
    sub_10000BFBC();

    (*(v10 + 8))(v9, v11);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    (*(v15 + 16))(v14, v0[9], v16);
    if ((*(v15 + 88))(v14, v16) == enum case for MessageDetails.EventSource.screenTime(_:))
    {
      v17 = v0[16];
      sub_10000C07C();
    }

    else
    {
      v18 = v0[19];
      v19 = v0[16];
      v20 = v0[17];
      sub_10000C06C();
      v5(v18, v20);
    }

    v21 = v0[10];
    v22 = v21[6];
    sub_10000A4DC(v21 + 2, v21[5]);
    v23 = async function pointer to dispatch thunk of RequestMessageDetailsBuilderProtocol.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)[1];
    v24 = swift_task_alloc();
    v0[21] = v24;
    *v24 = v0;
    v24[1] = sub_1000029C8;
    v25 = v0[16];
    v27 = v0[8];
    v26 = v0[9];
    v28 = v0[6];
    v29 = v0[7];

    return dispatch thunk of RequestMessageDetailsBuilderProtocol.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)(v28, v26, v29, v27, 0, 1, v25, v21 + 7);
  }
}

uint64_t sub_1000029C8()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100002B80;
  }

  else
  {
    v3 = sub_100002ADC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002ADC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002B80()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  sub_10000C05C();
  swift_errorRetain();
  sub_10000BFBC();

  (*(v6 + 8))(v5, v7);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100002CA0(uint64_t result)
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

  v3 = sub_100003BAC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = sub_10000BEBC();
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

uint64_t sub_100002DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 232) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_10000BFDC();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  v10 = sub_10000C10C();
  *(v6 + 80) = v10;
  v11 = *(v10 - 8);
  *(v6 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v13 = sub_10000C1CC();
  *(v6 + 112) = v13;
  v14 = *(v13 - 8);
  *(v6 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100002F68, 0, 0);
}

uint64_t sub_100002F68()
{
  if (qword_100014300 != -1)
  {
    swift_once();
  }

  v1 = qword_100014498;
  if (*(qword_100014498 + 16) && (v2 = sub_100003D84(v0[5]), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + (v2 << 6));
    v0[18] = *v4;
    v0[19] = v4[1];
    v0[20] = v4[3];
    v0[21] = v4[5];
    v0[22] = v4[7];

    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_100003144;
    v6 = v0[17];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[2];
    v10 = v0[3];

    return sub_1000024D8(v6, v9, v10, v7);
  }

  else
  {
    sub_10000C03C();
    swift_willThrow();
    v13 = v0[16];
    v12 = v0[17];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100003144()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = v2[21];
    v4 = v2[22];
    v6 = v2[19];
    v7 = v2[20];

    v8 = sub_1000038BC;
  }

  else
  {
    v8 = sub_100003284;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100003284()
{
  v40 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  sub_10000C19C();
  (*(v5 + 104))(v3, enum case for MessageDetails.EventStatus.pending(_:), v4);
  sub_10000A42C(&qword_1000143D0, &type metadata accessor for MessageDetails.EventStatus);
  LOBYTE(v1) = sub_10000C2EC();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);
  if ((v1 & 1) == 0)
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 72);
    sub_10000C05C();
    (*(v10 + 16))(v7, v8, v9);
    v12 = sub_10000BFCC();
    v13 = sub_10000C41C();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    if (v14)
    {
      v18 = *(v0 + 104);
      v33 = *(v0 + 80);
      v36 = *(v0 + 64);
      v37 = *(v0 + 56);
      v38 = *(v0 + 72);
      v32 = *(v0 + 112);
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v19 = 136315138;
      v34 = v13;
      sub_10000C19C();
      v20 = sub_10000C0FC();
      v22 = v21;
      v6(v18, v33);
      (*(v16 + 8))(v15, v32);
      v23 = sub_10000A9C8(v20, v22, &v39);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v34, "Event status != pending (%s)", v19, 0xCu);
      sub_10000A520(v35);

      (*(v36 + 8))(v38, v37);
    }

    else
    {
      v25 = *(v0 + 64);
      v24 = *(v0 + 72);
      v26 = *(v0 + 56);

      (*(v16 + 8))(v15, v17);
      (*(v25 + 8))(v24, v26);
    }
  }

  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = sub_1000035D4;
  v28 = *(v0 + 136);
  v29 = *(v0 + 232);
  v30 = *(v0 + 32);

  return sub_100004A48(v28, v29, v30);
}

uint64_t sub_1000035D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v14 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v8 = v6[21];
    v9 = v6[22];
    v10 = v6[19];
    v11 = v6[20];

    v12 = sub_100003808;
  }

  else
  {
    v6[27] = a2;
    v6[28] = a1;
    v12 = sub_100003720;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100003720()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];
  (*(v0[15] + 8))(v0[17], v0[14]);

  v8 = v0[1];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[18];
  v12 = v0[19];

  return v8(v11, v12, v9, v10);
}

uint64_t sub_100003808()
{
  (*(v0[15] + 8))(v0[17], v0[14]);
  v1 = v0[26];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000038BC()
{
  v1 = v0[24];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100003958()
{
  sub_10000A520((v0 + 16));
  sub_10000A520((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1000039BC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003AB4;

  return v7(a1);
}

uint64_t sub_100003AB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_100003BAC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DB0(&qword_100014448, &qword_10000D088);
  v10 = *(sub_10000BEBC() - 8);
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
  v15 = *(sub_10000BEBC() - 8);
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

unint64_t sub_100003D84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10000C0EC();
  sub_10000A42C(&qword_100014450, &type metadata accessor for MessageDetails.EventSource);
  v5 = sub_10000C2DC();

  return sub_100003E1C(a1, v5);
}

unint64_t sub_100003E1C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10000C0EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10000A42C(&qword_100014458, &type metadata accessor for MessageDetails.EventSource);
      v16 = sub_10000C2EC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_100003FDC(char *a1, int64_t a2, char a3)
{
  result = sub_100003FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100003FFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DB0(&qword_1000143F8, &qword_10000D030);
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

void *sub_100004108(uint64_t a1)
{
  v2 = sub_100009DB0(&qword_100014468, &qword_10000D098);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v29 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100009DB0(&qword_100014470, &qword_10000D0A0);
  v8 = sub_10000C45C();
  v9 = *(v2 + 48);
  v10 = *(v3 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v32 = v10;

  sub_10000A474(a1 + v11, v6, &qword_100014468, &qword_10000D098);
  v12 = sub_100003D84(v6);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v14 = v12;
  v15 = &v6[v9];
  v31 = sub_10000C0EC();
  v16 = *(v31 - 8);
  v30 = *(v16 + 32);
  v17 = *(v16 + 72);
  v18 = a1 + v32 + v11;
  while (1)
  {
    *(v8 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    result = v30(v8[6] + v17 * v14, v6, v31);
    v20 = (v8[7] + (v14 << 6));
    v22 = *(v15 + 2);
    v21 = *(v15 + 3);
    v23 = *(v15 + 1);
    *v20 = *v15;
    v20[1] = v23;
    v20[2] = v22;
    v20[3] = v21;
    v24 = v8[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      break;
    }

    v8[2] = v26;
    if (!--v7)
    {
      goto LABEL_8;
    }

    v27 = v18 + v32;
    sub_10000A474(v18, v6, &qword_100014468, &qword_10000D098);
    v14 = sub_100003D84(v6);
    v18 = v27;
    if (v28)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000434C(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_10000BFDC();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_10000BF6C();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v1[10] = *(v6 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = *(*(sub_100009DB0(&qword_100014438, &qword_10000D050) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000044B4, 0, 0);
}

uint64_t sub_1000044B4()
{
  v45 = v0;
  v1 = v0[4];
  if (sub_10000C08C())
  {
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[4];
    sub_10000C3CC();
    v8 = sub_10000C3EC();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    (*(v4 + 16))(v2, v7, v6);
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    (*(v4 + 32))(v10 + v9, v2, v6);
    v11 = sub_1000021C4(0, 0, v3, &unk_10000D060, v10);
    v0[14] = v11;
    v12 = async function pointer to Task<>.value.getter[1];
    v13 = swift_task_alloc();
    v0[15] = v13;
    v14 = sub_100009DB0(&qword_100014440, &qword_10000D068);
    *v13 = v0;
    v13[1] = sub_1000048A8;

    return Task<>.value.getter(v0 + 2, v11, v14);
  }

  else
  {
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[9];
    v18 = v0[7];
    v19 = v0[4];
    sub_10000C05C();
    (*(v17 + 16))(v15, v19, v16);
    v20 = sub_10000BFCC();
    v21 = sub_10000C41C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[11];
    v25 = v0[8];
    v24 = v0[9];
    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[5];
    if (v22)
    {
      v43 = v0[5];
      v29 = swift_slowAlloc();
      v41 = v21;
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136315138;
      sub_10000A42C(&qword_100014430, &type metadata accessor for URL);
      v31 = sub_10000C46C();
      v42 = v26;
      v33 = v32;
      (*(v24 + 8))(v23, v25);
      v34 = sub_10000A9C8(v31, v33, &v44);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v20, v41, "%s not in trusted list", v29, 0xCu);
      sub_10000A520(v30);

      (*(v27 + 8))(v42, v43);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      (*(v27 + 8))(v26, v28);
    }

    v36 = v0[12];
    v35 = v0[13];
    v37 = v0[11];
    v38 = v0[7];

    v39 = v0[1];

    return v39(0, 0xF000000000000000);
  }
}

uint64_t sub_1000048A8()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1000049A4, 0, 0);
}

uint64_t sub_1000049A4()
{
  v1 = v0[14];

  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8(v3, v2);
}

uint64_t sub_100004A48(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 784) = a2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a3;
  v4 = sub_10000BFDC();
  *(v3 + 232) = v4;
  v5 = *(v4 - 8);
  *(v3 + 240) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v7 = sub_10000BEBC();
  *(v3 + 312) = v7;
  v8 = *(v7 - 8);
  *(v3 + 320) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v10 = sub_10000C2AC();
  *(v3 + 344) = v10;
  v11 = *(v10 - 8);
  *(v3 + 352) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 360) = swift_task_alloc();
  v13 = *(*(sub_100009DB0(&qword_1000143D8, &qword_10000D018) - 8) + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v14 = sub_10000BF1C();
  *(v3 + 376) = v14;
  v15 = *(v14 - 8);
  *(v3 + 384) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  v17 = sub_10000C0BC();
  *(v3 + 408) = v17;
  v18 = *(v17 - 8);
  *(v3 + 416) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  v20 = sub_100009DB0(&qword_1000143E0, &qword_10000D020);
  *(v3 + 432) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  v22 = sub_10000BF6C();
  *(v3 + 504) = v22;
  v23 = *(v22 - 8);
  *(v3 + 512) = v23;
  v24 = *(v23 + 64) + 15;
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  v25 = *(*(sub_100009DB0(&qword_1000143E8, &qword_10000D028) - 8) + 64) + 15;
  *(v3 + 560) = swift_task_alloc();
  v26 = sub_10000C0EC();
  *(v3 + 568) = v26;
  v27 = *(v26 - 8);
  *(v3 + 576) = v27;
  v28 = *(v27 + 64) + 15;
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  v29 = sub_10000C1CC();
  *(v3 + 624) = v29;
  v30 = *(v29 - 8);
  *(v3 + 632) = v30;
  v31 = *(v30 + 64) + 15;
  *(v3 + 640) = swift_task_alloc();

  return _swift_task_switch(sub_100004F5C, 0, 0);
}

uint64_t sub_100004F5C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  (*(v0[79] + 16))(v0[80], v0[27], v0[78]);
  sub_10000C11C();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = v0[77];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  if (v5 == 1)
  {
    v10 = enum case for MessageDetails.EventSource.unknown(_:);
    v11 = *(v7 + 104);
    v12 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v11(v6, enum case for MessageDetails.EventSource.unknown(_:), v0[71]);
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A220(v0[70], &qword_1000143E8, &qword_10000D028);
    }
  }

  else
  {
    (*(v7 + 32))(v6, v0[70], v0[71]);
    v10 = enum case for MessageDetails.EventSource.unknown(_:);
    v11 = *(v7 + 104);
    v12 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  }

  v0[81] = v11;
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[71];
  v0[82] = v12;
  v11(v14, v10, v15);
  v0[83] = sub_10000A42C(&qword_1000143F0, &type metadata accessor for MessageDetails.EventSource);
  sub_10000C38C();
  sub_10000C38C();
  if (v0[14] == v0[16] && v0[15] == v0[17])
  {
    v16 = 1;
  }

  else
  {
    v17 = v0[15];
    v18 = v0[17];
    v16 = sub_10000C47C();
  }

  v19 = v0[76];
  v20 = v0[72];
  v21 = v0[71];
  v22 = *(v20 + 8);
  v0[84] = v22;
  v0[85] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v19, v21);

  if (v16)
  {
    v23 = v0[80];
    v24 = v0[79];
    v25 = v0[78];
    v26 = v0[77];
    v27 = v0[71];
LABEL_24:
    sub_10000C03C();
    swift_willThrow();
    v22(v26, v27);
    (*(v24 + 8))(v23, v25);
    v47 = v0[80];
    v48 = v0[77];
    v49 = v0[76];
    v50 = v0[75];
    v51 = v0[74];
    v52 = v0[73];
    v53 = v0[70];
    v54 = v0[69];
    v55 = v0[68];
    v56 = v0[67];
    v61 = v0[66];
    v62 = v0[65];
    v63 = v0[62];
    v64 = v0[61];
    v65 = v0[60];
    v66 = v0[59];
    v67 = v0[58];
    v68 = v0[57];
    v69 = v0[56];
    v70 = v0[55];
    v71 = v0[53];
    v72 = v0[50];
    v73 = v0[49];
    v74 = v0[46];
    v75 = v0[45];
    v76 = v0[42];
    v77 = v0[41];
    v78 = v0[38];
    v79 = v0[37];
    v80 = v0[36];
    v81 = v0[35];
    v82 = v0[34];
    v83 = v0[33];
    v84 = v0[32];
    v85 = v0[31];

    v57 = v0[1];

    return v57();
  }

  if (qword_100014300 != -1)
  {
    swift_once();
  }

  v28 = qword_100014498;
  if (!*(qword_100014498 + 16) || (v29 = sub_100003D84(v0[77]), (v30 & 1) == 0))
  {
    v23 = v0[80];
    v24 = v0[79];
    v25 = v0[78];
    v26 = v0[77];
    v27 = v0[71];
    goto LABEL_24;
  }

  v31 = v0[80];
  v32 = (*(v28 + 56) + (v29 << 6));
  v0[86] = v32[1];
  v0[87] = v32[2];
  v0[88] = v32[3];
  v0[89] = v32[4];
  v0[90] = v32[5];
  v0[91] = v32[6];
  v0[92] = v32[7];

  sub_10000C14C();
  if (!v33)
  {
    goto LABEL_18;
  }

  v34 = v0[63];
  v35 = v0[64];
  v36 = v0[62];
  sub_10000BF5C();

  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {
    sub_10000A220(v0[62], &qword_1000143E0, &qword_10000D020);
LABEL_18:
    v37 = v0[80];
    v39 = v0[52];
    v38 = v0[53];
    v40 = v0[51];
    v41 = sub_10000C1AC();
    v43 = v42;
    v0[95] = v42;
    sub_10000C1EC();
    if (!v43)
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    (*(v39 + 104))(v38, enum case for FirstPartyApps.none(_:), v40);
    v44 = async function pointer to static AppBundleResolver.resolveThumbnail(_:_:)[1];
    v45 = swift_task_alloc();
    v0[96] = v45;
    *v45 = v0;
    v45[1] = sub_100007A60;
    v46 = v0[53];

    return static AppBundleResolver.resolveThumbnail(_:_:)(v41, v43, v46);
  }

  (*(v0[64] + 32))(v0[69], v0[62], v0[63]);
  v58 = swift_task_alloc();
  v0[93] = v58;
  *v58 = v0;
  v58[1] = sub_1000056C4;
  v59 = v0[69];

  return sub_10000434C(v59);
}

uint64_t sub_1000056C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = a2;
  v5 = v3[93];
  v7 = *v2;
  v4[94] = a2;

  return _swift_task_switch(sub_1000057CC, 0, 0);
}

uint64_t sub_1000057CC()
{
  v430 = v0;
  v1 = v0;
  v2 = v0[94];
  if (v2 >> 60 == 15)
  {
    (*(v0[64] + 8))(v0[69], v0[63]);
    goto LABEL_6;
  }

  v3 = v0[9];
  v4 = v0[69];
  v6 = v0[63];
  v5 = v0[64];
  v7 = objc_allocWithZone(UIImage);
  isa = sub_10000BF8C().super.isa;
  v9 = [v7 initWithData:isa];

  sub_100009DF8(v3, v2);
  (*(v5 + 8))(v4, v6);
  if (v9)
  {
    v10 = v1[63];
    v11 = v1[64];
    v12 = v1[61];
    v13 = v1[50];
    v14 = v1[28];
    sub_10000BF0C();
    sub_10000A474(v14, v12, &qword_1000143E0, &qword_10000D020);
    v15 = *(v11 + 48);
    v426 = v1;
    v413 = v9;
    if (v15(v12, 1, v10) == 1)
    {
      sub_10000A220(v1[61], &qword_1000143E0, &qword_10000D020);
    }

    else
    {
      v28 = v1[47];
      v29 = v1[48];
      v30 = v1[46];
      (*(v1[64] + 32))(v1[68], v1[61], v1[63]);
      sub_10000BEEC();
      if ((*(v29 + 48))(v30, 1, v28) == 1)
      {
        v31 = v1[46];
        (*(v1[64] + 8))(v1[68], v1[63]);
        sub_10000A220(v31, &qword_1000143D8, &qword_10000D018);
      }

      else
      {
        (*(v1[48] + 32))(v1[49], v1[46], v1[47]);
        v32 = sub_10000BECC();
        if (v32)
        {
          v407 = v15;
          v33 = v1[68];
          v421 = *(v32 + 16);
          if (v421)
          {
            v401 = v32;
            v34 = v1[45];
            sub_10000C29C();
            sub_10000C2CC();
            sub_10000A42C(&qword_100014420, &type metadata accessor for ATPayload);
            sub_10000A42C(&qword_100014428, &type metadata accessor for ATPayload);
            sub_10000C28C();
            v146 = v1[26];
            v147 = sub_10000C2BC();
            sub_10000BFEC();
            v149 = v148;

            if (!v149)
            {
              v150 = sub_10000C2BC();
              sub_10000BFFC();
            }

            v151 = v1[80];
            v152 = v1[40];
            sub_10000C17C();

            v153 = 0;
            v154 = (v152 + 8);
            do
            {
              v155 = v153;
              if (v421 == v153)
              {
                break;
              }

              if (v153 >= v401[2])
              {
                __break(1u);
                return static AppBundleResolver.resolveThumbnail(_:_:)(v26, v27, v25);
              }

              (*(v152 + 16))(v426[42], v401 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v153, v426[39]);
              v156 = sub_10000BEAC();
              v158 = v426[42];
              v159 = v426[39];
              v160 = v156 == 0x69616E626D756874 && v157 == 0xED0000617461446CLL;
              if (v160)
              {

                (*v154)(v158, v159);
                break;
              }

              ++v153;
              v161 = sub_10000C47C();

              v26 = (*v154)(v158, v159);
            }

            while ((v161 & 1) == 0);
            v1 = v426;
            v313 = v426[68];
            v314 = v426[63];
            v315 = v426[64];
            v317 = v426[48];
            v316 = v426[49];
            v318 = v426[47];
            (*(v426[44] + 8))(v426[45], v426[43]);
            (*(v317 + 8))(v316, v318);
            (*(v315 + 8))(v313, v314);
            v160 = v421 == v155;
            v15 = v407;
            v9 = v413;
            v38 = v401;
            if (v160)
            {
              goto LABEL_18;
            }

            v319 = v426[38];
            sub_10000C05C();
            v320 = sub_10000BFCC();
            v321 = sub_10000C42C();
            if (os_log_type_enabled(v320, v321))
            {
              v322 = swift_slowAlloc();
              *v322 = 0;
              _os_log_impl(&_mh_execute_header, v320, v321, "AskTo supplied the thumbnail data. Removing the existing thumbnailData.", v322, 2u);
            }

            v323 = v426[80];
            v324 = v426[38];
            v325 = v426[29];
            v326 = v426[30];

            (*(v326 + 8))(v324, v325);
            goto LABEL_23;
          }

          v141 = v1[63];
          v142 = v1[64];
          v144 = v1[48];
          v143 = v1[49];
          v145 = v1[47];

          (*(v144 + 8))(v143, v145);
          (*(v142 + 8))(v33, v141);
          v38 = &_swiftEmptyArrayStorage;
          v15 = v407;
LABEL_18:
          v39 = v1[80];
          v40 = sub_10000C12C();
          if (v41 >> 60 != 15)
          {
            sub_100009DF8(v40, v41);
            goto LABEL_24;
          }

          v42 = UIImagePNGRepresentation(v9);
          if (v42)
          {
            v43 = v42;
            sub_10000BF9C();
          }

          v44 = v1[80];
LABEL_23:
          sub_10000C13C();
LABEL_24:
          v45 = v1[80];
          v46 = v1[37];
          sub_10000C0CC();
          sub_10000C05C();

          v47 = sub_10000BFCC();
          v48 = sub_10000C42C();
          if (os_log_type_enabled(v47, v48))
          {
            v385 = v48;
            v49 = swift_slowAlloc();
            v381 = swift_slowAlloc();
            v428 = v381;
            *v49 = 134218242;
            *(v49 + 4) = v38[2];

            v389 = v49;
            *(v49 + 12) = 2080;
            v50 = v38[2];
            v402 = v38;
            if (v50)
            {
              v408 = v15;
              v51 = v426[40];
              v429[0] = &_swiftEmptyArrayStorage;
              sub_100003FDC(0, v50, 0);
              v52 = &_swiftEmptyArrayStorage;
              v53 = *(v51 + 16);
              v51 += 16;
              v54 = v38 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
              v416 = *(v51 + 56);
              v422 = v53;
              v55 = (v51 - 8);
              do
              {
                v56 = v426[41];
                v57 = v426[39];
                v422(v56, v54, v57);
                v58 = sub_10000BEAC();
                v60 = v59;
                (*v55)(v56, v57);
                v429[0] = v52;
                v62 = v52[2];
                v61 = v52[3];
                if (v62 >= v61 >> 1)
                {
                  sub_100003FDC((v61 > 1), v62 + 1, 1);
                  v52 = v429[0];
                }

                v52[2] = v62 + 1;
                v63 = &v52[2 * v62];
                *(v63 + 4) = v58;
                *(v63 + 5) = v60;
                v54 += v416;
                --v50;
              }

              while (v50);
              v15 = v408;
            }

            v67 = v426[37];
            v68 = v426[29];
            v69 = v426[30];
            v70 = sub_10000C3AC();
            v72 = v71;
            v1 = v426;

            v73 = sub_10000A9C8(v70, v72, &v428);

            *(v389 + 14) = v73;
            _os_log_impl(&_mh_execute_header, v47, v385, "Appending %ld additional components to conversation url: %s", v389, 0x16u);
            sub_10000A520(v381);

            v423 = *(v69 + 8);
            v423(v67, v68);
            v9 = v413;
            v38 = v402;
          }

          else
          {
            v64 = v1[37];
            v65 = v1[29];
            v66 = v1[30];

            v423 = *(v66 + 8);
            v423(v64, v65);
          }

          v74 = v1[63];
          v75 = v1[60];
          v76 = v1[50];
          sub_100002CA0(v38);
          sub_10000BEDC();
          sub_10000BEFC();
          if (v15(v75, 1, v74) == 1)
          {
            v77 = v1[92];
            v78 = v1[90];
            v79 = v1[88];
            v80 = v1[86];
            v403 = v1[84];
            v409 = v1[85];
            v81 = v1[79];
            v417 = v1[78];
            v424 = v1[80];
            v393 = v1[71];
            v398 = v1[77];
            v82 = v9;
            v83 = v1[60];
            v84 = v1;
            v85 = v1[50];
            v87 = v84[47];
            v86 = v84[48];

            sub_10000A220(v83, &qword_1000143E0, &qword_10000D020);
            sub_10000C03C();
            swift_willThrow();

            (*(v86 + 8))(v85, v87);
            v403(v398, v393);
            (*(v81 + 8))(v424, v417);
            goto LABEL_101;
          }

          v88 = *(v1 + 784);
          (*(v1[64] + 32))(v1[67], v1[60], v1[63]);
          if (v88 != 1)
          {
            v112 = v1[80];
            v113 = [objc_allocWithZone(MSMessageTemplateLayout) init];
            [v113 setImage:v9];
            sub_10000C16C();
            v114 = sub_10000C2FC();

            [v113 setCaption:v114];

            v115 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v113];
            v116 = v115;
LABEL_83:
            v411 = v116;
            v230 = v1[80];
            v231 = v1[67];
            v232 = v1[34];
            v233 = [objc_allocWithZone(MSSession) init];
            v234 = [objc_allocWithZone(MSMessage) initWithSession:v233];

            sub_10000BF3C(v235);
            v237 = v236;
            [v234 setURL:v236];

            [v234 setLayout:v116];
            sub_10000C16C();
            v238 = sub_10000C2FC();

            [v234 setSummaryText:v238];

            sub_10000C05C();
            v239 = v234;
            v240 = sub_10000BFCC();
            v241 = sub_10000C40C();

            v419 = v239;
            if (os_log_type_enabled(v240, v241))
            {
              v242 = swift_slowAlloc();
              v243 = swift_slowAlloc();
              v429[0] = v243;
              *v242 = 136315138;
              v244 = [v239 URL];
              if (v244)
              {
                v245 = v1[55];
                v246 = v244;
                sub_10000BF4C();

                v247 = 0;
              }

              else
              {
                v247 = 1;
              }

              v251 = v1[54];
              v252 = v1[34];
              v254 = v1[29];
              v253 = v1[30];
              (*(v1[64] + 56))(v1[55], v247, 1, v1[63]);
              v255 = sub_10000C32C();
              v257 = sub_10000A9C8(v255, v256, v429);

              *(v242 + 4) = v257;
              _os_log_impl(&_mh_execute_header, v240, v241, "message url %s", v242, 0xCu);
              sub_10000A520(v243);

              v423(v252, v254);
              v9 = v413;
              v239 = v419;
            }

            else
            {
              v248 = v1[34];
              v249 = v1[29];
              v250 = v1[30];

              v423(v248, v249);
            }

            v258 = v9;
            v259 = UIImageJPEGRepresentation(v258, 0.4);
            if (v259)
            {
              v260 = v259;
              v261 = sub_10000BF9C();
              v263 = v262;

              v399 = v263;
              v405 = v261;
              v264.super.isa = sub_10000BF8C().super.isa;
            }

            else
            {

              v264.super.isa = 0;
              v399 = 0xF000000000000000;
              v405 = 0;
            }

            v265 = v1[92];
            v266 = v1[90];
            v267 = v1[88];
            v268 = v1[87];
            v269 = v1[86];

            sub_10000C35C();

            v270 = sub_10000C2FC();

            v271 = [v239 ppl_pluginPayloadWithAppIconData:v264.super.isa appName:v270 allowDataPayloads:0];

            v272 = [v271 data];
            v414 = v258;
            if (v272)
            {
              v273 = v1[33];
              v427 = sub_10000BF9C();
              v395 = v274;

              sub_10000C05C();
              v275 = sub_10000BFCC();
              v276 = sub_10000C40C();
              if (os_log_type_enabled(v275, v276))
              {
                v277 = swift_slowAlloc();
                *v277 = 0;
                _os_log_impl(&_mh_execute_header, v275, v276, "SPI Payload successful!", v277, 2u);
              }

              v331 = v1[84];
              v332 = v1[85];
              v278 = v1[79];
              v333 = v1[78];
              v334 = v1[80];
              v279 = v1;
              v335 = v1[76];
              v336 = v1[75];
              v337 = v1[74];
              v338 = v1[73];
              v329 = v1[71];
              v330 = v1[77];
              v339 = v1[70];
              v340 = v1[69];
              v341 = v1[68];
              v342 = v1[66];
              v280 = v1[64];
              v327 = v1[63];
              v328 = v1[67];
              v343 = v1[65];
              v344 = v1[62];
              v345 = v1[61];
              v346 = v1[60];
              v347 = v1[59];
              v349 = v1[58];
              v351 = v1[57];
              v353 = v1[56];
              v355 = v1[55];
              v357 = v1[53];
              v281 = v1[50];
              v283 = v1[47];
              v282 = v1[48];
              v359 = v1[49];
              v361 = v1[46];
              v363 = v1[45];
              v365 = v1[42];
              v367 = v1[41];
              v369 = v1[38];
              v372 = v1[37];
              v375 = v1[36];
              v378 = v1[35];
              v284 = v1[33];
              v382 = v1[34];
              v386 = v1[32];
              v390 = v1[31];
              v285 = v1[30];
              v286 = v279[29];

              sub_100009DF8(v405, v399);
              v423(v284, v286);
              (*(v280 + 8))(v328, v327);
              (*(v282 + 8))(v281, v283);
              v331(v330, v329);
              (*(v278 + 8))(v334, v333);

              v287 = v279[1];

              return v287(v427, v395);
            }

            v289 = v1[32];
            sub_10000C05C();
            v290 = sub_10000BFCC();
            v291 = sub_10000C41C();
            if (os_log_type_enabled(v290, v291))
            {
              v292 = swift_slowAlloc();
              *v292 = 0;
              _os_log_impl(&_mh_execute_header, v290, v291, "Message _pluginPayload create failed", v292, 2u);
            }

            v383 = v1[84];
            v387 = v1[85];
            v293 = v1[79];
            v391 = v1[78];
            v396 = v1[80];
            v376 = v1[71];
            v379 = v1[77];
            v294 = v1[67];
            v84 = v1;
            v297 = v1 + 63;
            v296 = v1[63];
            v295 = v297[1];
            v298 = v84[48];
            v370 = v84[47];
            v373 = v84[50];
            v299 = v84[32];
            v300 = v84[29];
            v301 = v84[30];

            v423(v299, v300);
            sub_10000C03C();
            swift_willThrow();

            sub_100009DF8(v405, v399);
            (*(v295 + 8))(v294, v296);
            (*(v298 + 8))(v373, v370);
            v383(v379, v376);
            (*(v293 + 8))(v396, v391);
LABEL_101:
            v302 = v84[80];
            v303 = v84[77];
            v304 = v84[76];
            v305 = v84[75];
            v306 = v84[74];
            v307 = v84[73];
            v308 = v84[70];
            v309 = v84[69];
            v310 = v84[68];
            v311 = v84[67];
            v348 = v84[66];
            v350 = v84[65];
            v352 = v84[62];
            v354 = v84[61];
            v356 = v84[60];
            v358 = v84[59];
            v360 = v84[58];
            v362 = v84[57];
            v364 = v84[56];
            v366 = v84[55];
            v368 = v84[53];
            v371 = v84[50];
            v374 = v84[49];
            v377 = v84[46];
            v380 = v84[45];
            v384 = v84[42];
            v388 = v84[41];
            v392 = v84[38];
            v397 = v84[37];
            v400 = v84[36];
            v406 = v84[35];
            v412 = v84[34];
            v415 = v84[33];
            v420 = v84[32];
            v425 = v84[31];

            v312 = v84[1];

            return v312();
          }

          v410 = v15;
          v89 = v1[77];
          v90 = v1[75];
          v91 = v1[72];
          v92 = v1[71];
          v93 = v1[36];
          sub_10000C05C();
          (*(v91 + 16))(v90, v89, v92);
          v94 = sub_10000BFCC();
          v95 = sub_10000C40C();
          v96 = os_log_type_enabled(v94, v95);
          v97 = v1[85];
          v98 = v1[84];
          v99 = v1[75];
          v100 = v1[71];
          v101 = v1[36];
          v102 = v1[29];
          v418 = v1[30];
          if (v96)
          {
            v404 = v1[29];
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v429[0] = v104;
            *v103 = 136315138;
            v105 = sub_10000C0DC();
            v394 = v101;
            v107 = v106;
            v98(v99, v100);
            v108 = v105;
            v1 = v426;
            v109 = sub_10000A9C8(v108, v107, v429);

            *(v103 + 4) = v109;
            _os_log_impl(&_mh_execute_header, v94, v95, "Using LP fallback for %s", v103, 0xCu);
            sub_10000A520(v104);

            v110 = v394;
            v111 = v404;
          }

          else
          {

            v98(v99, v100);
            v110 = v101;
            v111 = v102;
          }

          v423(v110, v111);
          v117 = v1[83];
          v118 = v1[82];
          v119 = v1[77];
          v120 = enum case for MessageDetails.EventSource.screenTime(_:);
          (v1[81])(v1[74], enum case for MessageDetails.EventSource.screenTime(_:), v1[71]);
          sub_10000C38C();
          sub_10000C38C();
          v121 = v1[85];
          v122 = v1[84];
          v123 = v1[74];
          v124 = v1[71];
          if (v1[18] == v1[20] && v1[19] == v1[21])
          {
            v122(v1[74], v1[71]);
          }

          else
          {
            v125 = v1[19];
            v126 = v1[21];
            v127 = sub_10000C47C();
            v122(v123, v124);

            if ((v127 & 1) == 0)
            {
              v136 = v1[80];
              sub_10000C18C();
              v137 = sub_10000C34C();
              v139 = v138;

              if (v137 == sub_10000C15C() && v139 == v140)
              {
              }

              else
              {
                v162 = sub_10000C47C();

                if ((v162 & 1) == 0)
                {
                  v164 = v1[80];
                  sub_10000C18C();
                  goto LABEL_63;
                }
              }

              v163 = v1[80];
              sub_10000C16C();
LABEL_63:
              v165 = v1[83];
              v166 = v1[82];
              v167 = v1[81];
              v168 = v1[77];
              v169 = v1[73];
              v170 = v1[71];
              (*(v1[64] + 56))(v1[59], 1, 1, v1[63]);
              v167(v169, v120, v170);
              sub_10000C38C();
              sub_10000C38C();
              v171 = v1[85];
              v172 = v1[84];
              v173 = v1[73];
              v174 = v1[71];
              if (v1[22] == v1[24] && v1[23] == v1[25])
              {
                v172(v1[73], v1[71]);
              }

              else
              {
                v175 = v1[23];
                v176 = v1[25];
                v177 = sub_10000C47C();
                v172(v173, v174);

                if ((v177 & 1) == 0)
                {
                  sub_10000C24C();
                  sub_10000C23C();
                  sub_10000C1FC();
                  goto LABEL_69;
                }
              }

              sub_10000C24C();
              sub_10000C23C();
              sub_10000C20C();
LABEL_69:

              sub_10000C36C();
              v179 = v178;

              if (v179)
              {
                v181 = v1[58];
                v180 = v1[59];
                sub_10000BF5C();

                sub_100009E60(v181, v180);
              }

              v182 = v1[63];
              v183 = v1[57];
              sub_10000A474(v1[59], v183, &qword_1000143E0, &qword_10000D020);
              LODWORD(v182) = v410(v183, 1, v182);
              sub_10000A220(v183, &qword_1000143E0, &qword_10000D020);
              if (v182 == 1)
              {
                v184 = v1[90];
                v185 = v1[89];
                v186 = v1[58];
                v187 = v1[59];
                sub_10000BF5C();
                sub_100009E60(v186, v187);
              }

              v188 = v1[35];
              sub_10000C05C();
              v189 = sub_10000BFCC();
              v190 = sub_10000C40C();
              if (os_log_type_enabled(v189, v190))
              {
                v191 = v1[63];
                v192 = v1[59];
                v193 = swift_slowAlloc();
                v194 = swift_slowAlloc();
                *v193 = 138412290;
                swift_beginAccess();
                v195 = v410(v192, 1, v191);
                v196 = 0;
                if (!v195)
                {
                  v197 = v1[66];
                  v198 = v1[63];
                  v199 = v1[64];
                  (*(v199 + 16))(v197, v1[59], v198);
                  v200 = sub_10000BF2C();
                  v202 = v201;
                  (*(v199 + 8))(v197, v198);
                  sub_100009ED0();
                  swift_allocError();
                  *v203 = v200;
                  v203[1] = v202;
                  v1 = v426;
                  v196 = _swift_stdlib_bridgeErrorToNSError();
                }

                *(v193 + 4) = v196;
                *v194 = v196;
                _os_log_impl(&_mh_execute_header, v189, v190, "alternate url %@", v193, 0xCu);
                sub_10000A220(v194, &qword_100014400, &qword_10000D038);
              }

              v204 = v1[63];
              v205 = v1[59];
              v206 = v1[56];
              v207 = v1[35];
              v209 = v1[29];
              v208 = v1[30];

              v423(v207, v209);
              swift_beginAccess();
              sub_10000A474(v205, v206, &qword_1000143E0, &qword_10000D020);
              v211 = 0;
              v9 = v413;
              if (v410(v206, 1, v204) != 1)
              {
                v212 = v1[63];
                v213 = v1[64];
                v214 = v1[56];
                sub_10000BF3C(v210);
                v211 = v215;
                (*(v213 + 8))(v214, v212);
              }

              v216 = sub_10000C2FC();

              v217 = UIImagePNGRepresentation(v413);
              if (v217)
              {
                v218 = v217;
                v219 = sub_10000BF9C();
                v221 = v220;

                v222.super.isa = sub_10000BF8C().super.isa;
                sub_100009E0C(v219, v221);
              }

              else
              {
                v222.super.isa = 0;
              }

              v223 = v1[92];
              v224 = v1[91];
              v225 = v1[59];
              v226 = [objc_opt_self() createRichLinkLayoutWithURL:v211 title:v216 imageData:v222.super.isa];

              v227 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v226];
              sub_100009DB0(&qword_1000143F8, &qword_10000D030);
              v228 = swift_allocObject();
              *(v228 + 16) = xmmword_10000CF80;
              *(v228 + 32) = v224;
              *(v228 + 40) = v223;

              v116 = v227;
              v229 = sub_10000C39C().super.isa;

              [v116 setPpl_requiredCapabilities:v229];

              sub_10000A220(v225, &qword_1000143E0, &qword_10000D020);
              goto LABEL_83;
            }
          }

          v128 = v1[80];
          sub_10000C35C();
          sub_100009DB0(&qword_100014410, &qword_10000D040);
          v129 = swift_allocObject();
          *(v129 + 16) = xmmword_10000CF70;
          v130 = sub_10000C1BC();
          v132 = v131;
          *(v129 + 56) = &type metadata for String;
          v133 = sub_100009F24();
          *(v129 + 64) = v133;
          *(v129 + 32) = v130;
          *(v129 + 40) = v132;
          v134 = sub_10000C18C();
          *(v129 + 96) = &type metadata for String;
          *(v129 + 104) = v133;
          *(v129 + 72) = v134;
          *(v129 + 80) = v135;
          sub_10000C31C();

          goto LABEL_63;
        }

        v35 = v1[68];
        v36 = v1[63];
        v37 = v1[64];
        (*(v1[48] + 8))(v1[49], v1[47]);
        (*(v37 + 8))(v35, v36);
      }
    }

    v38 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

LABEL_6:
  v16 = v1[80];
  v18 = v1[52];
  v17 = v1[53];
  v19 = v1[51];
  v20 = sub_10000C1AC();
  v22 = v21;
  v1[95] = v21;
  sub_10000C1EC();
  if (!v22)
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  (*(v18 + 104))(v17, enum case for FirstPartyApps.none(_:), v19);
  v23 = async function pointer to static AppBundleResolver.resolveThumbnail(_:_:)[1];
  v24 = swift_task_alloc();
  v1[96] = v24;
  *v24 = v1;
  v24[1] = sub_100007A60;
  v25 = v1[53];
  v26 = v20;
  v27 = v22;

  return static AppBundleResolver.resolveThumbnail(_:_:)(v26, v27, v25);
}

uint64_t sub_100007A60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = v3[96];
  v6 = v3[53];
  v7 = v3[52];
  v8 = v3[51];
  v3[95];
  v10 = *v2;
  v4[97] = a2;

  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_100007BEC, 0, 0);
}

void sub_100007BEC()
{
  v416 = v0;
  v1 = v0;
  v2 = v0[97];
  if (v2 >> 60 == 15 || (v3 = v0[12], v4 = objc_allocWithZone(UIImage), isa = sub_10000BF8C().super.isa, v6 = [v4 initWithData:isa], isa, sub_100009DF8(v3, v2), !v6))
  {
    v7 = sub_10000C2FC();
    v6 = [objc_opt_self() imageNamed:v7];
  }

  v8 = v0[63];
  v9 = v0[64];
  v10 = v0[61];
  v11 = v0[50];
  v12 = v0[28];
  sub_10000BF0C();
  sub_10000A474(v12, v10, &qword_1000143E0, &qword_10000D020);
  v13 = *(v9 + 48);
  v413 = v0;
  v402 = v6;
  if (v13(v10, 1, v8) == 1)
  {
    sub_10000A220(v0[61], &qword_1000143E0, &qword_10000D020);
LABEL_12:
    v24 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v14 = v0[47];
  v15 = v0[48];
  v16 = v1[46];
  (*(v1[64] + 32))(v1[68], v1[61], v1[63]);
  sub_10000BEEC();
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = v1[46];
    (*(v1[64] + 8))(v1[68], v1[63]);
    sub_10000A220(v17, &qword_1000143D8, &qword_10000D018);
    goto LABEL_12;
  }

  (*(v1[48] + 32))(v1[49], v1[46], v1[47]);
  v18 = sub_10000BECC();
  if (!v18)
  {
    v21 = v1[68];
    v22 = v1[63];
    v23 = v1[64];
    (*(v1[48] + 8))(v1[49], v1[47]);
    (*(v23 + 8))(v21, v22);
    goto LABEL_12;
  }

  v19 = v1[68];
  v410 = *(v18 + 16);
  if (!v410)
  {
    v128 = v1[63];
    v129 = v1[64];
    v131 = v1[48];
    v130 = v1[49];
    v132 = v1[47];

    (*(v131 + 8))(v130, v132);
    (*(v129 + 8))(v19, v128);
    v24 = &_swiftEmptyArrayStorage;
LABEL_13:
    v25 = v1[80];
    v26 = sub_10000C12C();
    if (v27 >> 60 == 15)
    {
      if (v6)
      {
        v28 = UIImagePNGRepresentation(v6);
        if (v28)
        {
          v29 = v28;
          sub_10000BF9C();
        }
      }

      v30 = v1[80];
      sub_10000C13C();
    }

    else
    {
      sub_100009DF8(v26, v27);
    }

    goto LABEL_19;
  }

  v387 = v18;
  v20 = v1[45];
  sub_10000C29C();
  sub_10000C2CC();
  sub_10000A42C(&qword_100014420, &type metadata accessor for ATPayload);
  sub_10000A42C(&qword_100014428, &type metadata accessor for ATPayload);
  sub_10000C28C();
  v133 = v1[26];
  v134 = sub_10000C2BC();
  sub_10000BFEC();
  v136 = v135;

  v399 = v13;
  if (!v136)
  {
    v137 = sub_10000C2BC();
    sub_10000BFFC();
  }

  v138 = v1[80];
  v139 = v1[40];
  sub_10000C17C();

  v140 = 0;
  v141 = (v139 + 8);
  do
  {
    v142 = v140;
    if (v410 == v140)
    {
      break;
    }

    if (v140 >= v387[2])
    {
      __break(1u);
      return;
    }

    (*(v139 + 16))(v413[42], v387 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v140, v413[39]);
    v143 = sub_10000BEAC();
    v145 = v413[42];
    v146 = v413[39];
    if (v143 == 0x69616E626D756874 && v144 == 0xED0000617461446CLL)
    {

      (*v141)(v145, v146);
      break;
    }

    ++v140;
    v148 = sub_10000C47C();

    (*v141)(v145, v146);
  }

  while ((v148 & 1) == 0);
  v1 = v413;
  v301 = v413[68];
  v302 = v413[63];
  v303 = v413[64];
  v305 = v413[48];
  v304 = v413[49];
  v306 = v413[47];
  (*(v413[44] + 8))(v413[45], v413[43]);
  (*(v305 + 8))(v304, v306);
  (*(v303 + 8))(v301, v302);
  v13 = v399;
  v6 = v402;
  v24 = v387;
  if (v410 == v142)
  {
    goto LABEL_13;
  }

  v307 = v413[38];
  sub_10000C05C();
  v308 = sub_10000BFCC();
  v309 = sub_10000C42C();
  if (os_log_type_enabled(v308, v309))
  {
    v310 = swift_slowAlloc();
    *v310 = 0;
    _os_log_impl(&_mh_execute_header, v308, v309, "AskTo supplied the thumbnail data. Removing the existing thumbnailData.", v310, 2u);
  }

  v311 = v413[80];
  v312 = v413[38];
  v313 = v413[29];
  v314 = v413[30];

  (*(v314 + 8))(v312, v313);
  sub_10000C13C();
  v24 = v387;
LABEL_19:
  v31 = v1[80];
  v32 = v1[37];
  sub_10000C0CC();
  sub_10000C05C();

  v33 = sub_10000BFCC();
  v34 = sub_10000C42C();
  if (os_log_type_enabled(v33, v34))
  {
    v377 = v34;
    v396 = v13;
    v35 = swift_slowAlloc();
    v373 = swift_slowAlloc();
    v414 = v373;
    *v35 = 134218242;
    *(v35 + 4) = v24[2];

    v381 = v35;
    *(v35 + 12) = 2080;
    v36 = v24[2];
    v388 = v24;
    if (v36)
    {
      v37 = v1[40];
      v415[0] = &_swiftEmptyArrayStorage;
      sub_100003FDC(0, v36, 0);
      v38 = &_swiftEmptyArrayStorage;
      v39 = *(v37 + 16);
      v37 += 16;
      v40 = v24 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v405 = *(v37 + 56);
      v411 = v39;
      v41 = (v37 - 8);
      do
      {
        v42 = v413[41];
        v43 = v413[39];
        v411(v42, v40, v43);
        v44 = sub_10000BEAC();
        v46 = v45;
        (*v41)(v42, v43);
        v415[0] = v38;
        v48 = v38[2];
        v47 = v38[3];
        if (v48 >= v47 >> 1)
        {
          sub_100003FDC((v47 > 1), v48 + 1, 1);
          v38 = v415[0];
        }

        v38[2] = v48 + 1;
        v49 = &v38[2 * v48];
        *(v49 + 4) = v44;
        *(v49 + 5) = v46;
        v40 += v405;
        --v36;
      }

      while (v36);
      v1 = v413;
      v6 = v402;
    }

    v55 = v1[37];
    v57 = v1[29];
    v56 = v1[30];
    v58 = sub_10000C3AC();
    v60 = v59;

    v61 = sub_10000A9C8(v58, v60, &v414);

    *(v381 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v33, v377, "Appending %ld additional components to conversation url: %s", v381, 0x16u);
    sub_10000A520(v373);

    v53 = *(v56 + 8);
    v53(v55, v57);
    v13 = v396;
    v54 = v388;
  }

  else
  {
    v50 = v1[37];
    v51 = v1[29];
    v52 = v1[30];

    v53 = *(v52 + 8);
    v53(v50, v51);
    v54 = v24;
  }

  v62 = v1[63];
  v63 = v1[60];
  v64 = v1[50];
  sub_100002CA0(v54);
  sub_10000BEDC();
  sub_10000BEFC();
  if (v13(v63, 1, v62) == 1)
  {
    v65 = v1[92];
    v66 = v6;
    v67 = v1[90];
    v68 = v1[88];
    v69 = v1[86];
    v393 = v1[84];
    v397 = v1[85];
    v70 = v1[79];
    v403 = v1[78];
    v406 = v1[80];
    v382 = v1[71];
    v389 = v1[77];
    v71 = v1[60];
    v72 = v1;
    v73 = v1[50];
    v75 = v72[47];
    v74 = v72[48];

    sub_10000A220(v71, &qword_1000143E0, &qword_10000D020);
    sub_10000C03C();
    swift_willThrow();

    (*(v74 + 8))(v73, v75);
    v393(v389, v382);
    (*(v70 + 8))(v406, v403);
LABEL_100:
    v290 = v72[80];
    v291 = v72[77];
    v292 = v72[76];
    v293 = v72[75];
    v294 = v72[74];
    v295 = v72[73];
    v296 = v72[70];
    v297 = v72[69];
    v298 = v72[68];
    v299 = v72[67];
    v335 = v72[66];
    v337 = v72[65];
    v339 = v72[62];
    v341 = v72[61];
    v343 = v72[60];
    v345 = v72[59];
    v347 = v72[58];
    v349 = v72[57];
    v351 = v72[56];
    v353 = v72[55];
    v355 = v72[53];
    v357 = v72[50];
    v360 = v72[49];
    v363 = v72[46];
    v366 = v72[45];
    v369 = v72[42];
    v372 = v72[41];
    v376 = v72[38];
    v380 = v72[37];
    v386 = v72[36];
    v392 = v72[35];
    v395 = v72[34];
    v401 = v72[33];
    v404 = v72[32];
    v409 = v72[31];

    v300 = v72[1];

    v300();
    return;
  }

  v76 = *(v1 + 784);
  (*(v1[64] + 32))(v1[67], v1[60], v1[63]);
  v77 = &PPLMessageRichLinkLayout__metaData;
  v412 = v53;
  if (v76 != 1)
  {
    v99 = v1[80];
    v100 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    [v100 setImage:v6];
    sub_10000C16C();
    v101 = sub_10000C2FC();

    [v100 setCaption:v101];

    v102 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v100];
    v103 = v102;
    goto LABEL_80;
  }

  v398 = v13;
  v78 = v1[77];
  v79 = v1[75];
  v80 = v1[72];
  v81 = v1[71];
  v82 = v1[36];
  sub_10000C05C();
  (*(v80 + 16))(v79, v78, v81);
  v83 = sub_10000BFCC();
  v84 = sub_10000C40C();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v1[85];
  v87 = v1[84];
  v88 = v1[75];
  v89 = v1[71];
  v90 = v1[36];
  v91 = v1[29];
  v407 = v1[30];
  if (v85)
  {
    v390 = v1[29];
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v415[0] = v93;
    *v92 = 136315138;
    v94 = sub_10000C0DC();
    v383 = v90;
    v96 = v95;
    v87(v88, v89);
    v97 = v94;
    v1 = v413;
    v98 = sub_10000A9C8(v97, v96, v415);

    *(v92 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v83, v84, "Using LP fallback for %s", v92, 0xCu);
    sub_10000A520(v93);

    v412(v383, v390);
  }

  else
  {

    v87(v88, v89);
    v53(v90, v91);
  }

  v104 = v1[83];
  v105 = v1[82];
  v106 = v1[77];
  v107 = enum case for MessageDetails.EventSource.screenTime(_:);
  (v1[81])(v1[74], enum case for MessageDetails.EventSource.screenTime(_:), v1[71]);
  sub_10000C38C();
  sub_10000C38C();
  v108 = v1[85];
  v109 = v1[84];
  v110 = v1[74];
  v111 = v1[71];
  if (v1[18] == v1[20] && v1[19] == v1[21])
  {
    v109(v1[74], v1[71]);

LABEL_39:
    v115 = v1[80];
    sub_10000C35C();
    sub_100009DB0(&qword_100014410, &qword_10000D040);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_10000CF70;
    v117 = sub_10000C1BC();
    v119 = v118;
    *(v116 + 56) = &type metadata for String;
    v120 = sub_100009F24();
    *(v116 + 64) = v120;
    *(v116 + 32) = v117;
    *(v116 + 40) = v119;
    v121 = sub_10000C18C();
    *(v116 + 96) = &type metadata for String;
    *(v116 + 104) = v120;
    *(v116 + 72) = v121;
    *(v116 + 80) = v122;
    sub_10000C31C();

    goto LABEL_58;
  }

  v112 = v1[19];
  v113 = v1[21];
  v114 = sub_10000C47C();
  v109(v110, v111);

  if (v114)
  {
    goto LABEL_39;
  }

  v123 = v1[80];
  sub_10000C18C();
  v124 = sub_10000C34C();
  v126 = v125;

  if (v124 == sub_10000C15C() && v126 == v127)
  {
  }

  else
  {
    v149 = sub_10000C47C();

    if ((v149 & 1) == 0)
    {
      v151 = v1[80];
      sub_10000C18C();
      goto LABEL_58;
    }
  }

  v150 = v1[80];
  sub_10000C16C();
LABEL_58:
  v152 = v1[83];
  v153 = v1[82];
  v154 = v1[81];
  v155 = v1[77];
  v156 = v1[73];
  v157 = v1[71];
  (*(v1[64] + 56))(v1[59], 1, 1, v1[63]);
  v154(v156, v107, v157);
  sub_10000C38C();
  sub_10000C38C();
  v158 = v1[85];
  v159 = v1[84];
  v160 = v1[73];
  v161 = v1[71];
  if (v1[22] == v1[24] && v1[23] == v1[25])
  {
    v159(v1[73], v1[71]);

    v53 = v412;
  }

  else
  {
    v162 = v1[23];
    v163 = v1[25];
    v164 = sub_10000C47C();
    v159(v160, v161);

    v53 = v412;
    if ((v164 & 1) == 0)
    {
      sub_10000C24C();
      sub_10000C23C();
      sub_10000C1FC();
      goto LABEL_64;
    }
  }

  sub_10000C24C();
  sub_10000C23C();
  sub_10000C20C();
LABEL_64:

  sub_10000C36C();
  v166 = v165;

  if (v166)
  {
    v168 = v1[58];
    v167 = v1[59];
    sub_10000BF5C();

    sub_100009E60(v168, v167);
  }

  v169 = v1[63];
  v170 = v1[57];
  sub_10000A474(v1[59], v170, &qword_1000143E0, &qword_10000D020);
  LODWORD(v169) = v398(v170, 1, v169);
  sub_10000A220(v170, &qword_1000143E0, &qword_10000D020);
  if (v169 == 1)
  {
    v171 = v1[90];
    v172 = v1[89];
    v173 = v1[58];
    v174 = v1[59];
    sub_10000BF5C();
    sub_100009E60(v173, v174);
  }

  v175 = v1[35];
  sub_10000C05C();
  v176 = sub_10000BFCC();
  v177 = sub_10000C40C();
  if (os_log_type_enabled(v176, v177))
  {
    v178 = v1[63];
    v179 = v1[59];
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    *v180 = 138412290;
    swift_beginAccess();
    v182 = v398(v179, 1, v178);
    v183 = 0;
    if (!v182)
    {
      v184 = v1[66];
      v186 = v1[63];
      v185 = v1[64];
      (*(v185 + 16))(v184, v1[59], v186);
      v187 = sub_10000BF2C();
      v189 = v188;
      (*(v185 + 8))(v184, v186);
      sub_100009ED0();
      swift_allocError();
      *v190 = v187;
      v190[1] = v189;
      v1 = v413;
      v183 = _swift_stdlib_bridgeErrorToNSError();
    }

    *(v180 + 4) = v183;
    *v181 = v183;
    _os_log_impl(&_mh_execute_header, v176, v177, "alternate url %@", v180, 0xCu);
    sub_10000A220(v181, &qword_100014400, &qword_10000D038);

    v53 = v412;
  }

  v191 = v1[63];
  v192 = v1[59];
  v193 = v1[56];
  v194 = v1[35];
  v196 = v1[29];
  v195 = v1[30];

  v53(v194, v196);
  swift_beginAccess();
  sub_10000A474(v192, v193, &qword_1000143E0, &qword_10000D020);
  v198 = 0;
  if (v398(v193, 1, v191) != 1)
  {
    v200 = v1[63];
    v199 = v1[64];
    v201 = v1[56];
    sub_10000BF3C(v197);
    v198 = v202;
    (*(v199 + 8))(v201, v200);
  }

  v203 = sub_10000C2FC();

  if (v402)
  {
    v204 = UIImagePNGRepresentation(v402);
    v77 = &PPLMessageRichLinkLayout__metaData;
    if (v204)
    {
      v205 = v204;
      v206 = sub_10000BF9C();
      v208 = v207;

      v209.super.isa = sub_10000BF8C().super.isa;
      sub_100009E0C(v206, v208);
    }

    else
    {
      v209.super.isa = 0;
    }
  }

  else
  {
    v209.super.isa = 0;
    v77 = &PPLMessageRichLinkLayout__metaData;
  }

  v210 = v1[92];
  v211 = v1[91];
  v212 = v1[59];
  v213 = [objc_opt_self() createRichLinkLayoutWithURL:v198 title:v203 imageData:v209.super.isa];

  v214 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v213];
  sub_100009DB0(&qword_1000143F8, &qword_10000D030);
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_10000CF80;
  *(v215 + 32) = v211;
  *(v215 + 40) = v210;

  v103 = v214;
  v216 = sub_10000C39C().super.isa;

  [v103 setPpl_requiredCapabilities:v216];

  sub_10000A220(v212, &qword_1000143E0, &qword_10000D020);
  v6 = v402;
LABEL_80:
  v400 = v103;
  v217 = v1[80];
  v218 = v1[67];
  v219 = v1[34];
  v220 = [objc_allocWithZone(MSSession) v77[7].ivar_lyt];
  v221 = [objc_allocWithZone(MSMessage) initWithSession:v220];

  sub_10000BF3C(v222);
  v224 = v223;
  [v221 setURL:v223];

  [v221 setLayout:v103];
  sub_10000C16C();
  v225 = sub_10000C2FC();

  [v221 setSummaryText:v225];

  sub_10000C05C();
  v226 = v221;
  v227 = sub_10000BFCC();
  v228 = sub_10000C40C();

  v408 = v226;
  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v415[0] = v230;
    *v229 = 136315138;
    v231 = [v226 URL];
    if (v231)
    {
      v232 = v1[55];
      v233 = v231;
      sub_10000BF4C();

      v234 = 0;
    }

    else
    {
      v234 = 1;
    }

    v238 = v1[54];
    v239 = v1[34];
    v241 = v1[29];
    v240 = v1[30];
    (*(v1[64] + 56))(v1[55], v234, 1, v1[63]);
    v242 = sub_10000C32C();
    v244 = sub_10000A9C8(v242, v243, v415);

    *(v229 + 4) = v244;
    _os_log_impl(&_mh_execute_header, v227, v228, "message url %s", v229, 0xCu);
    sub_10000A520(v230);

    v412(v239, v241);
    v6 = v402;
    if (!v402)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v235 = v1[34];
    v236 = v1[29];
    v237 = v1[30];

    v53(v235, v236);
    if (!v6)
    {
      goto LABEL_90;
    }
  }

  v245 = v6;
  v246 = UIImageJPEGRepresentation(v245, 0.4);
  if (v246)
  {
    v247 = v246;
    v248 = sub_10000BF9C();
    v250 = v249;

    v391 = v250;
    v394 = v248;
    v251.super.isa = sub_10000BF8C().super.isa;
    goto LABEL_91;
  }

LABEL_90:
  v251.super.isa = 0;
  v391 = 0xF000000000000000;
  v394 = 0;
LABEL_91:
  v252 = v1[92];
  v253 = v1[90];
  v254 = v1[88];
  v255 = v1[87];
  v256 = v1[86];

  sub_10000C35C();

  v257 = sub_10000C2FC();

  v258 = [v226 ppl_pluginPayloadWithAppIconData:v251.super.isa appName:v257 allowDataPayloads:0];

  v259 = [v258 data];
  if (!v259)
  {
    v277 = v1[32];
    sub_10000C05C();
    v278 = sub_10000BFCC();
    v279 = sub_10000C41C();
    if (os_log_type_enabled(v278, v279))
    {
      v280 = swift_slowAlloc();
      *v280 = 0;
      _os_log_impl(&_mh_execute_header, v278, v279, "Message _pluginPayload create failed", v280, 2u);
    }

    v371 = v1[84];
    v375 = v1[85];
    v281 = v1[79];
    v379 = v1[78];
    v385 = v1[80];
    v365 = v1[71];
    v368 = v1[77];
    v282 = v1[67];
    v72 = v1;
    v285 = v1 + 63;
    v284 = v1[63];
    v283 = v285[1];
    v286 = v72[48];
    v359 = v72[47];
    v362 = v72[50];
    v287 = v72[32];
    v288 = v72[29];
    v289 = v72[30];

    v412(v287, v288);
    sub_10000C03C();
    swift_willThrow();

    sub_100009DF8(v394, v391);
    (*(v283 + 8))(v282, v284);
    (*(v286 + 8))(v362, v359);
    v371(v368, v365);
    (*(v281 + 8))(v385, v379);
    goto LABEL_100;
  }

  v260 = v1[33];
  v261 = sub_10000BF9C();
  v378 = v262;
  v384 = v261;

  sub_10000C05C();
  v263 = sub_10000BFCC();
  v264 = sub_10000C40C();
  if (os_log_type_enabled(v263, v264))
  {
    v265 = swift_slowAlloc();
    *v265 = 0;
    _os_log_impl(&_mh_execute_header, v263, v264, "SPI Payload successful!", v265, 2u);
  }

  v319 = v1[84];
  v320 = v1[85];
  v266 = v1[80];
  v267 = v1[79];
  v321 = v1[78];
  v322 = v1[76];
  v323 = v1[75];
  v324 = v1[74];
  v317 = v1[71];
  v318 = v1[77];
  v325 = v1[73];
  v326 = v1[70];
  v327 = v1[69];
  v328 = v1[68];
  v329 = v1[66];
  v330 = v1[65];
  v268 = v1[64];
  v315 = v1[63];
  v316 = v1[67];
  v331 = v1[62];
  v332 = v1[61];
  v333 = v1[60];
  v334 = v1[59];
  v336 = v1[58];
  v338 = v1[57];
  v340 = v1[56];
  v342 = v1[55];
  v269 = v1[50];
  v344 = v1[53];
  v346 = v1[49];
  v271 = v1[47];
  v270 = v1[48];
  v348 = v1[46];
  v350 = v1[45];
  v352 = v1[42];
  v354 = v1[41];
  v356 = v1[38];
  v358 = v1[37];
  v361 = v1[36];
  v272 = v1[33];
  v364 = v1[35];
  v367 = v1[34];
  v370 = v1[32];
  v374 = v1[31];
  v273 = v1;
  v274 = v1[30];
  v275 = v273[29];

  sub_100009DF8(v394, v391);
  v412(v272, v275);
  (*(v268 + 8))(v316, v315);
  (*(v270 + 8))(v269, v271);
  v319(v318, v317);
  (*(v267 + 8))(v266, v321);

  v276 = v413[1];

  v276(v384, v378);
}

uint64_t sub_100009DB0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100009DF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009E0C(a1, a2);
  }

  return a1;
}

uint64_t sub_100009E0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DB0(&qword_1000143E0, &qword_10000D020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009ED0()
{
  result = qword_100014408;
  if (!qword_100014408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014408);
  }

  return result;
}

unint64_t sub_100009F24()
{
  result = qword_100014418;
  if (!qword_100014418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014418);
  }

  return result;
}

uint64_t sub_100009F78()
{
  v1 = sub_10000BF6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A03C(uint64_t a1)
{
  v4 = *(sub_10000BF6C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A12C;

  return sub_100001E7C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10000A12C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A220(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009DB0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A280()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A2B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A570;

  return sub_1000039BC(a1, v5);
}

uint64_t sub_10000A370(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A12C;

  return sub_1000039BC(a1, v5);
}

uint64_t sub_10000A42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009DB0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_10000A4DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000A520(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000BEA8;

  return (sub_10000AF70)(a1, a2, a3, a4);
}

uint64_t sub_10000A640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000A70C;

  return (sub_10000B600)(a1, a2, a3, a4);
}

uint64_t sub_10000A70C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10000A80C(uint64_t a1)
{
  v2 = sub_10000A974();

  return PeopleLegacyExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000A8B8();
  sub_10000BFAC();
  return 0;
}

unint64_t sub_10000A8B8()
{
  result = qword_100014480;
  if (!qword_100014480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014480);
  }

  return result;
}

unint64_t sub_10000A974()
{
  result = qword_100014488;
  if (!qword_100014488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014488);
  }

  return result;
}

uint64_t sub_10000A9C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000AA94(v11, 0, 0, 1, a1, a2);
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
    sub_10000BE48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A520(v11);
  return v7;
}

unint64_t sub_10000AA94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000ABA0(a5, a6);
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
    result = sub_10000C44C();
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

char *sub_10000ABA0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000ABEC(a1, a2);
  sub_10000AD1C(&off_1000107D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000ABEC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000AE08(v5, 0);
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

  result = sub_10000C44C();
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
        v10 = sub_10000C37C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000AE08(v10, 0);
        result = sub_10000C43C();
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

uint64_t sub_10000AD1C(uint64_t result)
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

  result = sub_10000AE7C(result, v12, 1, v3);
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

void *sub_10000AE08(uint64_t a1, uint64_t a2)
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

  sub_100009DB0(&qword_100014490, &qword_10000D158);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000AE7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DB0(&qword_100014490, &qword_10000D158);
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

uint64_t sub_10000AF70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 336) = a4;
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 192) = a1;
  v5 = sub_10000C0EC();
  *(v4 + 216) = v5;
  v6 = *(v5 - 8);
  *(v4 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v8 = sub_10000BFDC();
  *(v4 + 240) = v8;
  v9 = *(v8 - 8);
  *(v4 + 248) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_10000B0A0, 0, 0);
}

uint64_t sub_10000B0A0()
{
  v29 = v0;
  v1 = *(v0 + 336);
  if (v1 == 2)
  {
    sub_10000C24C();
    sub_10000C23C();
    LOBYTE(v1) = sub_10000C22C();
  }

  v2 = *(v0 + 264);
  sub_10000C04C();
  v3 = sub_10000BFCC();
  v4 = sub_10000C40C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10000A9C8(0xD000000000000036, 0x800000010000CCE0, &v28);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s fallbackToLp %{BOOL}d ", v9, 0x12u);
    sub_10000A520(v10);
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  *(v0 + 272) = v11;
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = sub_10000C26C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_10000C25C();
  *(v0 + 136) = v15;
  *(v0 + 144) = &protocol witness table for RequestMessageDetailsBuilder;
  *(v0 + 112) = v18;
  v19 = sub_10000C0AC();
  v20 = sub_10000C09C();
  *(v0 + 176) = v19;
  *(v0 + 184) = &protocol witness table for ContactFetcher;
  *(v0 + 152) = v20;
  type metadata accessor for MessagePackage();
  inited = swift_initStackObject();
  *(v0 + 280) = inited;
  sub_10000BDC8((v0 + 112), inited + 16);
  sub_10000BDC8((v0 + 152), inited + 56);
  (*(v13 + 104))(v12, enum case for MessageDetails.EventSource.screenTime(_:), v14);
  v22 = swift_task_alloc();
  *(v0 + 288) = v22;
  *v22 = v0;
  v22[1] = sub_10000B348;
  v23 = *(v0 + 232);
  v24 = *(v0 + 200);
  v25 = *(v0 + 208);
  v26 = *(v0 + 192);

  return sub_100002DCC(v26, v24, v25, v23, v1 & 1);
}

uint64_t sub_10000B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 288);
  v12 = *v5;
  v10[37] = v4;

  v13 = v10[29];
  v14 = v10[28];
  v15 = v10[27];
  if (v4)
  {
    (*(v14 + 8))(v13, v15);
    v16 = sub_10000B4E8;
  }

  else
  {
    v10[38] = a4;
    v10[39] = a3;
    v10[40] = a2;
    v10[41] = a1;
    (*(v14 + 8))(v13, v15);
    v16 = sub_10000BEA4;
  }

  return _swift_task_switch(v16, 0, 0);
}

uint64_t sub_10000B4E8()
{
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[29];
  swift_setDeallocating();
  sub_10000A520((v2 + 16));
  sub_10000A520((v2 + 56));
  sub_10000C04C();
  swift_errorRetain();
  sub_10000BFBC();

  v3(v5, v6);
  swift_willThrow();

  v9 = v0[1];
  v10 = v0[37];

  return v9();
}

uint64_t sub_10000B600(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 336) = a4;
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 192) = a1;
  v5 = sub_10000C0EC();
  *(v4 + 216) = v5;
  v6 = *(v5 - 8);
  *(v4 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v8 = sub_10000BFDC();
  *(v4 + 240) = v8;
  v9 = *(v8 - 8);
  *(v4 + 248) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_10000B730, 0, 0);
}

uint64_t sub_10000B730()
{
  v29 = v0;
  v1 = *(v0 + 336);
  if (v1 == 2)
  {
    sub_10000C24C();
    sub_10000C23C();
    LOBYTE(v1) = sub_10000C21C();
  }

  v2 = *(v0 + 264);
  sub_10000C04C();
  v3 = sub_10000BFCC();
  v4 = sub_10000C40C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10000A9C8(0xD000000000000034, 0x800000010000CC60, &v28);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s fallbackToLp %{BOOL}d ", v9, 0x12u);
    sub_10000A520(v10);
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  *(v0 + 272) = v11;
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 216);
  v15 = sub_10000C26C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_10000C25C();
  *(v0 + 136) = v15;
  *(v0 + 144) = &protocol witness table for RequestMessageDetailsBuilder;
  *(v0 + 112) = v18;
  v19 = sub_10000C0AC();
  v20 = sub_10000C09C();
  *(v0 + 176) = v19;
  *(v0 + 184) = &protocol witness table for ContactFetcher;
  *(v0 + 152) = v20;
  type metadata accessor for MessagePackage();
  inited = swift_initStackObject();
  *(v0 + 280) = inited;
  sub_10000BDC8((v0 + 112), inited + 16);
  sub_10000BDC8((v0 + 152), inited + 56);
  (*(v13 + 104))(v12, enum case for MessageDetails.EventSource.askToBuy(_:), v14);
  v22 = swift_task_alloc();
  *(v0 + 288) = v22;
  *v22 = v0;
  v22[1] = sub_10000B9D8;
  v23 = *(v0 + 232);
  v24 = *(v0 + 200);
  v25 = *(v0 + 208);
  v26 = *(v0 + 192);

  return sub_100002DCC(v26, v24, v25, v23, v1 & 1);
}

uint64_t sub_10000B9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 288);
  v12 = *v5;
  v10[37] = v4;

  v13 = v10[29];
  v14 = v10[28];
  v15 = v10[27];
  if (v4)
  {
    (*(v14 + 8))(v13, v15);
    v16 = sub_10000BCB0;
  }

  else
  {
    v10[38] = a4;
    v10[39] = a3;
    v10[40] = a2;
    v10[41] = a1;
    (*(v14 + 8))(v13, v15);
    v16 = sub_10000BB78;
  }

  return _swift_task_switch(v16, 0, 0);
}

uint64_t sub_10000BB78()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[29];

  sub_10000BDE0(v3, v4);
  sub_100009DF8(v3, v4);

  sub_10000BDE0(v3, v4);

  v9 = objc_allocWithZone(sub_10000C01C());
  v10 = sub_10000C00C();

  sub_100009DF8(v3, v4);
  swift_setDeallocating();
  sub_10000A520((v5 + 16));
  sub_10000A520((v5 + 56));

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10000BCB0()
{
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[29];
  swift_setDeallocating();
  sub_10000A520((v2 + 16));
  sub_10000A520((v2 + 56));
  sub_10000C04C();
  swift_errorRetain();
  sub_10000BFBC();

  v3(v5, v6);
  swift_willThrow();

  v9 = v0[1];
  v10 = v0[37];

  return v9();
}

uint64_t sub_10000BDC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000BDE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000BDF4(a1, a2);
  }

  return a1;
}

uint64_t sub_10000BDF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000BE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}