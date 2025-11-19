uint64_t sub_100002128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return _swift_task_switch(sub_10000214C, 0, 0);
}

uint64_t sub_10000214C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1000D98D0();
  v4 = sub_1000DA100();
  v0[9] = sub_1000DA160();

  v5 = async function pointer to Promise.resolveAsync()[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_10000222C;
  v7 = v0[5];

  return Promise.resolveAsync()(v7);
}

uint64_t sub_10000222C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100002368, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100002368()
{
  v1 = v0;
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v13 = v0[7];
  v6 = v0[5];

  sub_10000299C();
  v7 = sub_1000DBE60();
  sub_1000DBDB0();
  sub_1000029E8();
  v8 = swift_allocObject();
  v0[2] = 0;
  *(v8 + 16) = xmmword_1000DDD30;
  v0[3] = 0xE000000000000000;
  v0[4] = v2;
  sub_100002A50(0, &qword_1001145F0);
  sub_1000DC0C0();
  v9 = v0[2];
  v10 = v1[3];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100002AAC();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_1000DA320();

  sub_1000D98B0();

  v11 = v1[1];

  return v11();
}

uint64_t variable initialization expression of BilingualFeedManager._isBilingualFeedEnabled()
{
  sub_1000D9CE0();
  sub_100002540();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1000D9DD0();
}

void sub_100002540()
{
  if (!qword_1001141F8)
  {
    v0 = sub_1000D9DC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001141F8);
    }
  }
}

uint64_t sub_1000025A4(uint64_t a1, id *a2)
{
  result = sub_1000DB930();
  *a2 = 0;
  return result;
}

uint64_t sub_100002620(uint64_t a1, id *a2)
{
  v3 = sub_1000DB940();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000026A4@<X0>(void *a1@<X8>)
{
  sub_1000DB950();
  v2 = sub_1000DB910();

  *a1 = v2;
  return result;
}

uint64_t sub_1000026F0(uint64_t a1, uint64_t a2)
{
  result = sub_1000D9E60();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002744(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000D9E70();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_10000279C@<X0>(void *a1@<X8>)
{
  result = sub_1000D9E80();
  *a1 = v3;
  return result;
}

uint64_t sub_1000027D0()
{
  v1 = *v0;
  sub_1000DB950();
  v2 = sub_1000DBA20();

  return v2;
}

uint64_t sub_10000280C()
{
  v1 = *v0;
  sub_1000DB950();
  sub_1000DB9F0();
}

Swift::Int sub_100002860()
{
  v1 = *v0;
  sub_1000DB950();
  sub_1000DC420();
  sub_1000DB9F0();
  v2 = sub_1000DC460();

  return v2;
}

uint64_t sub_1000028D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000DB950();
  v6 = v5;
  if (v4 == sub_1000DB950() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000DC360();
  }

  return v9 & 1;
}

unint64_t sub_10000299C()
{
  result = qword_1001145D8;
  if (!qword_1001145D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001145D8);
  }

  return result;
}

void sub_1000029E8()
{
  if (!qword_1001145E0)
  {
    sub_100002A50(255, &qword_1001145E8);
    v0 = sub_1000DC330();
    if (!v1)
    {
      atomic_store(v0, &qword_1001145E0);
    }
  }
}

uint64_t sub_100002A50(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100002AAC()
{
  result = qword_1001145F8;
  if (!qword_1001145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001145F8);
  }

  return result;
}

uint64_t sub_100002B00()
{
  sub_100002D4C(&qword_100114688, type metadata accessor for AttributeName);
  sub_100002D4C(&unk_100114690, type metadata accessor for AttributeName);

  return sub_1000DC160();
}

uint64_t sub_100002BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000DB910();

  *a2 = v5;
  return result;
}

uint64_t sub_100002C08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000DB950();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_100002C70(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002D94()
{
  sub_100002D4C(&unk_100115DF0, type metadata accessor for TraitKey);
  sub_100002D4C(&qword_100114680, type metadata accessor for TraitKey);

  return sub_1000DC160();
}

void *sub_100002EE0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_100002EF0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100002EFC()
{
  v2 = *v0;
  sub_100002D4C(&qword_100114660, type metadata accessor for Weight);
  sub_100002D4C(&qword_100114668, type metadata accessor for Weight);
  sub_10000319C();
  return sub_1000DC160();
}

void sub_10000305C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000DC450(*&v1);
}

uint64_t sub_100003098(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

unint64_t sub_10000319C()
{
  result = qword_100114670;
  if (!qword_100114670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114670);
  }

  return result;
}

uint64_t sub_100003218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_1000D96F0();
  v5[28] = v6;
  v7 = *(v6 - 8);
  v5[29] = v7;
  v8 = *(v7 + 64) + 15;
  v5[30] = swift_task_alloc();
  v9 = sub_1000D9B40();
  v5[31] = v9;
  v10 = *(v9 - 8);
  v5[32] = v10;
  v11 = *(v10 + 64) + 15;
  v5[33] = swift_task_alloc();
  v12 = sub_1000D9EB0();
  v5[34] = v12;
  v13 = *(v12 - 8);
  v5[35] = v13;
  v14 = *(v13 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v15 = sub_1000D94D0();
  v5[38] = v15;
  v16 = *(v15 - 8);
  v5[39] = v16;
  v17 = *(v16 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v18 = sub_1000D95E0();
  v5[43] = v18;
  v19 = *(v18 - 8);
  v5[44] = v19;
  v20 = *(v19 + 64) + 15;
  v5[45] = swift_task_alloc();
  v21 = sub_1000D9CC0();
  v5[46] = v21;
  v22 = *(v21 - 8);
  v5[47] = v22;
  v23 = *(v22 + 64) + 15;
  v5[48] = swift_task_alloc();
  sub_1000071E0(0, &qword_100114B40, &type metadata accessor for Watchlist, &type metadata accessor for Optional);
  v25 = *(*(v24 - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return _swift_task_switch(sub_100003538, 0, 0);
}

uint64_t sub_100003538()
{
  v14 = v0;
  v1 = v0[27];
  v0[51] = OBJC_IVAR____TtC12StocksWidget25WatchlistViewModelService_logger;
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[26];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 134349314;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(v0[19], v0[20], &v13);

    *(v5 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "will fetch watchlist with max count: %{public}ld, id=%{public}s", v5, 0x16u);
    sub_100006D0C(v6);
  }

  v8 = v0[27];
  v9 = v8[6];
  sub_100006C7C(v8 + 2, v8[5]);
  v0[52] = sub_1000D9750();
  v10 = async function pointer to Promise.resolveAsync()[1];
  v11 = swift_task_alloc();
  v0[53] = v11;
  *v11 = v0;
  v11[1] = sub_10000373C;

  return Promise.resolveAsync()(v0 + 21);
}

uint64_t sub_10000373C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v8 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = sub_100004FB0;
  }

  else
  {
    v5 = *(v2 + 416);
    v6 = *(v2 + 168);

    v4 = sub_100003864;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100003864()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v1[6];
  sub_100006C7C(v1 + 2, v1[5]);
  v0[55] = sub_1000D9740();
  v5 = async function pointer to Promise.resolveAsync()[1];
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_100003940;
  v7 = v0[50];

  return Promise.resolveAsync()(v7);
}

uint64_t sub_100003940()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v7 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = sub_10000524C;
  }

  else
  {
    v5 = *(v2 + 440);

    v4 = sub_100003A5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100003A5C()
{
  v37 = v0;
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[47];
  sub_100006EA4(v0[50], v1, &qword_100114B40, &type metadata accessor for Watchlist);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[51];
    v5 = v0[27];
    v6 = v0[25];
    sub_100006D58(v0[49], &qword_100114B40, &type metadata accessor for Watchlist);

    v7 = sub_1000DA350();
    v8 = sub_1000DBDD0();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[24];
      v9 = v0[25];
      v11 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_1000848C8(v10, v9, &v36);
      *(v11 + 12) = 2082;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      v12 = v0[50];
      sub_1000DC4C0();
      v13 = sub_1000848C8(v0[9], v0[10], &v36);

      *(v11 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "failed fetch watchlist with not found identifier: %{public}s, id=%{public}s", v11, 0x16u);
      swift_arrayDestroy();

      v14 = v12;
    }

    else
    {
      v20 = v0[50];

      v14 = v20;
    }

    sub_100006D58(v14, &qword_100114B40, &type metadata accessor for Watchlist);
    v21 = v0[23];
    v22 = type metadata accessor for WidgetWatchlist(0);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v24 = v0[49];
    v23 = v0[50];
    v25 = v0[48];
    v26 = v0[45];
    v28 = v0[41];
    v27 = v0[42];
    v29 = v0[40];
    v31 = v0[36];
    v30 = v0[37];
    v32 = v0[33];
    v35 = v0[30];

    v33 = v0[1];

    return v33();
  }

  else
  {
    v15 = v0[27];
    (*(v0[47] + 32))(v0[48], v0[49], v0[46]);
    v16 = v15[10];
    v17 = v15[11];
    sub_100006C7C(v15 + 7, v16);
    v18 = async function pointer to dispatch thunk of WatchlistDeprecationServiceType.deprecateStocksIfNeeded()[1];
    v19 = swift_task_alloc();
    v0[58] = v19;
    *v19 = v0;
    v19[1] = sub_100003E5C;

    return dispatch thunk of WatchlistDeprecationServiceType.deprecateStocksIfNeeded()(v16, v17);
  }
}

uint64_t sub_100003E5C()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_1000054E8;
  }

  else
  {
    v3 = sub_100003F70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003F70()
{
  v1 = v0[27];
  v3 = v1[20];
  v2 = v1[21];
  sub_100006C7C(v1 + 17, v3);
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_100004030;
  v5 = v0[45];

  return sub_100002128(v5, v3, v2);
}

uint64_t sub_100004030()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 352);
  v5 = *(*v0 + 344);
  v8 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 488) = v6;
  *(v1 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  return _swift_task_switch(sub_100004194, 0, 0);
}

uint64_t sub_100004194()
{
  v1 = v0[48];
  v2 = v0[27];
  v3 = v2[6];
  sub_100006C7C(v2 + 2, v2[5]);
  v0[63] = sub_1000D9730();
  v4 = async function pointer to Promise.resolveAsync()[1];
  v5 = swift_task_alloc();
  v0[64] = v5;
  *v5 = v0;
  v5[1] = sub_10000426C;

  return Promise.resolveAsync()(v0 + 22);
}

uint64_t sub_10000426C()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 504);

  if (v0)
  {
    v6 = sub_1000057BC;
  }

  else
  {
    v6 = sub_1000043A0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000043A0()
{
  v54 = v0;
  v1 = v0;
  v2 = v0[51];
  v3 = v0[27];
  v4 = v1[22];
  v1[66] = v4;

  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[31];
    v8 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_1000DBB40();
    v11 = sub_1000848C8(v9, v10, &v53);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v12 = sub_1000848C8(v1[17], v1[18], &v53);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "did fetch stocks: %{public}s, id=%{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_100006E20(v1[27] + 96, (v1 + 2));
  v48 = v1[6];
  sub_100006C7C(v1 + 2, v1[5]);
  v13 = *(v4 + 16);
  if (v13)
  {
    v14 = v1[32];
    v53 = _swiftEmptyArrayStorage;
    sub_10007BC5C(0, v13, 0);
    v15 = v53;
    v16 = *(v14 + 16);
    v14 += 16;
    v17 = v4 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v49 = *(v14 + 56);
    v50 = v16;
    v18 = (v14 - 8);
    do
    {
      v19 = v1[33];
      v20 = v1;
      v21 = v1[31];
      v50(v19, v17, v21);
      v22 = sub_1000D9B20();
      v24 = v23;
      (*v18)(v19, v21);
      v53 = v15;
      v26 = v15[2];
      v25 = v15[3];
      if (v26 >= v25 >> 1)
      {
        sub_10007BC5C((v25 > 1), v26 + 1, 1);
        v15 = v53;
      }

      v15[2] = v26 + 1;
      v27 = &v15[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v17 += v49;
      --v13;
      v1 = v20;
    }

    while (v13);
  }

  v28 = v1[61];
  v47 = v1;
  v29 = v1[45];
  v30 = v1[43];
  v52 = v1[37];
  v51 = v1[36];
  v44 = v1[35];
  v46 = v1[34];
  v31 = v1[27];
  v32 = v31[21];
  sub_100006C7C(v31 + 17, v31[20]);
  sub_1000D98B0();
  sub_1000D95D0();
  v34 = v33;
  v28(v29, v30);
  *v52 = v34;
  v45 = enum case for CachePolicy.maxAge(_:);
  v35 = *(v44 + 104);
  v35();
  v36 = v31[21];
  sub_100006C7C(v31 + 17, v31[20]);
  sub_1000D98B0();
  sub_1000D95B0();
  v38 = v37;
  v28(v29, v30);
  *v51 = v38;
  (v35)(v51, v45, v46);
  v47[67] = sub_1000D9890();

  v39 = *(v44 + 8);
  v39(v51, v46);
  v39(v52, v46);
  v40 = async function pointer to Promise.resolveAsync()[1];
  v41 = swift_task_alloc();
  v47[68] = v41;
  *v41 = v47;
  v41[1] = sub_100004848;
  v42 = v47[41];

  return Promise.resolveAsync()(v42);
}

uint64_t sub_100004848()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = sub_100005A90;
  }

  else
  {
    v5 = *(v2 + 536);

    sub_100006D0C((v2 + 16));
    v4 = sub_10000496C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000496C()
{
  v77 = v0;
  v1 = v0[51];
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v6 = v0[27];
  (*(v4 + 32))(v2, v0[41], v5);
  (*(v4 + 16))(v3, v2, v5);
  v7 = sub_1000DA350();
  v8 = sub_1000DBDD0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[39];
  v10 = v0[40];
  v12 = v0[38];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v13 = 136446466;
    sub_1000D94C0();
    sub_1000D9AA0();
    v14 = sub_1000DB850();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000848C8(v14, v16, v76);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v18 = sub_1000848C8(v0[15], v0[16], v76);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "did fetch quotes: %{public}s, id=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[66];
  v71 = v0[51];
  v73 = v0[69];
  v20 = v0[48];
  v21 = v0[42];
  v22 = v0[29];
  v23 = v0[30];
  v24 = v0[27];
  v68 = v0[28];
  v69 = v0[26];
  v25 = v24[26];
  sub_100006C7C(v24 + 22, v24[25]);
  sub_1000D9CB0();
  v26 = sub_1000D9910();

  (*(v22 + 8))(v23, v68);
  sub_10001808C(v69, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = swift_task_alloc();
  *(v33 + 16) = v21;
  *(v33 + 24) = v24;
  v34 = sub_100024678(sub_100006E84, v33, v28, v30, v32);
  swift_unknownObjectRelease();

  v35 = sub_1000DA350();
  v36 = sub_1000DBDD0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v37 = 136446466;
    type metadata accessor for WidgetStock();
    v38 = sub_1000DBB40();
    v40 = sub_1000848C8(v38, v39, v76);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v41 = sub_1000848C8(v0[11], v0[12], v76);

    *(v37 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "did fetch watchlist models: %{public}s, id=%{public}s", v37, 0x16u);
    swift_arrayDestroy();
  }

  v42 = v0[48];
  v74 = v34;
  if (sub_1000D9C80())
  {
    v43 = sub_1000D9C60();
  }

  else
  {
    v45 = v0[48];
    v43 = sub_1000D9CA0();
  }

  v46 = v44;
  v47 = v0[50];
  v49 = v0[47];
  v48 = v0[48];
  v50 = v0[46];
  v70 = v43;
  v72 = v0[42];
  v52 = v0[38];
  v51 = v0[39];
  v53 = v0[23];
  v54 = type metadata accessor for WidgetWatchlist(0);
  v55 = v53 + *(v54 + 24);
  sub_1000D9C90();
  (*(v49 + 8))(v48, v50);
  sub_100006D58(v47, &qword_100114B40, &type metadata accessor for Watchlist);
  *v53 = v70;
  v53[1] = v46;
  v53[2] = v74;
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  (*(v51 + 8))(v72, v52);
  v57 = v0[49];
  v56 = v0[50];
  v58 = v0[48];
  v59 = v0[45];
  v61 = v0[41];
  v60 = v0[42];
  v62 = v0[40];
  v64 = v0[36];
  v63 = v0[37];
  v65 = v0[33];
  v75 = v0[30];

  v66 = v0[1];

  return v66();
}

uint64_t sub_100004FB0()
{
  v26 = v0;
  v1 = v0[52];

  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[27];
  swift_errorRetain();
  v5 = sub_1000DA350();
  v6 = sub_1000DBDB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 138543618;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v11 = sub_1000848C8(v0[7], v0[8], &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "failed to fetch watchlist with error: %{public}@, id=%{public}s", v7, 0x16u);
    sub_100006D58(v8, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v9);
  }

  v13 = v0[49];
  v12 = v0[50];
  v14 = v0[48];
  v15 = v0[45];
  v17 = v0[41];
  v16 = v0[42];
  v18 = v0[40];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[33];
  v24 = v0[30];
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_10000524C()
{
  v26 = v0;
  v1 = v0[55];

  v2 = v0[57];
  v3 = v0[51];
  v4 = v0[27];
  swift_errorRetain();
  v5 = sub_1000DA350();
  v6 = sub_1000DBDB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 138543618;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v11 = sub_1000848C8(v0[7], v0[8], &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "failed to fetch watchlist with error: %{public}@, id=%{public}s", v7, 0x16u);
    sub_100006D58(v8, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v9);
  }

  v13 = v0[49];
  v12 = v0[50];
  v14 = v0[48];
  v15 = v0[45];
  v17 = v0[41];
  v16 = v0[42];
  v18 = v0[40];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[33];
  v24 = v0[30];
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000054E8()
{
  v26 = v0;
  v1 = v0[50];
  (*(v0[47] + 8))(v0[48], v0[46]);
  sub_100006D58(v1, &qword_100114B40, &type metadata accessor for Watchlist);
  v2 = v0[59];
  v3 = v0[51];
  v4 = v0[27];
  swift_errorRetain();
  v5 = sub_1000DA350();
  v6 = sub_1000DBDB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 138543618;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v11 = sub_1000848C8(v0[7], v0[8], &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "failed to fetch watchlist with error: %{public}@, id=%{public}s", v7, 0x16u);
    sub_100006D58(v8, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v9);
  }

  v13 = v0[49];
  v12 = v0[50];
  v14 = v0[48];
  v15 = v0[45];
  v17 = v0[41];
  v16 = v0[42];
  v18 = v0[40];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[33];
  v24 = v0[30];
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000057BC()
{
  v26 = v0;
  v1 = v0[50];
  (*(v0[47] + 8))(v0[48], v0[46]);
  sub_100006D58(v1, &qword_100114B40, &type metadata accessor for Watchlist);
  v2 = v0[65];
  v3 = v0[51];
  v4 = v0[27];
  swift_errorRetain();
  v5 = sub_1000DA350();
  v6 = sub_1000DBDB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 138543618;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v11 = sub_1000848C8(v0[7], v0[8], &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "failed to fetch watchlist with error: %{public}@, id=%{public}s", v7, 0x16u);
    sub_100006D58(v8, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v9);
  }

  v13 = v0[49];
  v12 = v0[50];
  v14 = v0[48];
  v15 = v0[45];
  v17 = v0[41];
  v16 = v0[42];
  v18 = v0[40];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[33];
  v24 = v0[30];
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100005A90()
{
  v73 = v0;
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[51];
  v4 = v0[42];
  v5 = v0[27];

  sub_100006D0C(v0 + 2);
  sub_1000D94B0();
  swift_errorRetain();
  v6 = sub_1000DA350();
  v7 = sub_1000DBDB0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[69];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v72[0] = v12;
    *v10 = 138543618;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    v14 = v0[69];
    sub_1000DC4C0();
    v15 = sub_1000848C8(v0[13], v0[14], v72);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "failed to fetch quotes with error: %{public}@, id=%{public}s", v10, 0x16u);
    sub_100006D58(v11, &qword_100114B48, sub_100006CC0);

    sub_100006D0C(v12);
  }

  else
  {
  }

  v16 = v0[66];
  v17 = v0[48];
  v18 = v0[42];
  v20 = v0[29];
  v19 = v0[30];
  v21 = v0[27];
  v65 = v0[28];
  v67 = v0[51];
  v69 = v0[26];
  v22 = v21[26];
  sub_100006C7C(v21 + 22, v21[25]);
  sub_1000D9CB0();
  v23 = sub_1000D9910();

  (*(v20 + 8))(v19, v65);
  sub_10001808C(v69, v23);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = swift_task_alloc();
  *(v30 + 16) = v18;
  *(v30 + 24) = v21;
  v31 = sub_100024678(sub_100006E84, v30, v25, v27, v29);
  swift_unknownObjectRelease();

  v32 = sub_1000DA350();
  v33 = sub_1000DBDD0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v34 = 136446466;
    type metadata accessor for WidgetStock();
    v35 = sub_1000DBB40();
    v37 = sub_1000848C8(v35, v36, v72);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v38 = sub_1000848C8(v0[11], v0[12], v72);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "did fetch watchlist models: %{public}s, id=%{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  v39 = v0[48];
  v70 = v31;
  if (sub_1000D9C80())
  {
    v40 = sub_1000D9C60();
  }

  else
  {
    v42 = v0[48];
    v40 = sub_1000D9CA0();
  }

  v43 = v41;
  v44 = v0[50];
  v46 = v0[47];
  v45 = v0[48];
  v47 = v0[46];
  v66 = v40;
  v68 = v0[42];
  v49 = v0[38];
  v48 = v0[39];
  v50 = v0[23];
  v51 = type metadata accessor for WidgetWatchlist(0);
  v52 = v50 + *(v51 + 24);
  sub_1000D9C90();
  (*(v46 + 8))(v45, v47);
  sub_100006D58(v44, &qword_100114B40, &type metadata accessor for Watchlist);
  *v50 = v66;
  v50[1] = v43;
  v50[2] = v70;
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  (*(v48 + 8))(v68, v49);
  v54 = v0[49];
  v53 = v0[50];
  v55 = v0[48];
  v56 = v0[45];
  v58 = v0[41];
  v57 = v0[42];
  v59 = v0[40];
  v61 = v0[36];
  v60 = v0[37];
  v62 = v0[33];
  v71 = v0[30];

  v63 = v0[1];

  return v63();
}

uint64_t sub_100006084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v95 = a3;
  v88 = a2;
  v4 = sub_1000D9AA0();
  v100 = *(v4 - 8);
  v5 = *(v100 + 64);
  __chkstk_darwin(v4);
  v90 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v81 - v8;
  sub_1000071E0(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v94 = &v81 - v11;
  v12 = sub_1000DA370();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  __chkstk_darwin(v12);
  v85 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000D9B40();
  v96 = *(v93 - 8);
  v15 = *(v96 + 64);
  __chkstk_darwin(v93);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000D9A50();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v82 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v83 = &v81 - v22;
  sub_1000071E0(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v98 = &v81 - v25;
  sub_1000071E0(0, &qword_100114B68, &type metadata accessor for Chart, &type metadata accessor for Optional);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v91 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v99 = &v81 - v30;
  sub_1000071E0(0, &qword_100114B70, &type metadata accessor for Quote, &type metadata accessor for Optional);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v92 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v81 = &v81 - v35;
  __chkstk_darwin(v36);
  v38 = &v81 - v37;
  v39 = sub_1000D94C0();
  v101 = a1;
  v40 = sub_1000D9B20();
  v42 = *(v39 + 16);
  v97 = v38;
  if (v42)
  {
    v43 = v18;
    v44 = v17;
    v45 = v100;
    v46 = sub_100033210(v40, v41);
    v48 = v47;

    if (v48)
    {
      v49 = *(v39 + 56) + *(v45 + 72) * v46;
      v50 = v97;
      v51 = v4;
      (*(v45 + 16))(v97, v49, v4);

      (*(v45 + 56))(v50, 0, 1, v4);
    }

    else
    {

      v50 = v97;
      v51 = v4;
      (*(v45 + 56))(v97, 1, 1, v4);
    }

    v17 = v44;
    v18 = v43;
    v38 = v50;
  }

  else
  {

    (*(v100 + 56))(v38, 1, 1, v4);
    v51 = v4;
  }

  v52 = sub_1000D94A0();
  v53 = sub_1000D9B20();
  if (*(v52 + 16))
  {
    v55 = v51;
    v56 = sub_100033210(v53, v54);
    v58 = v57;

    if (v58)
    {
      (*(v18 + 16))(v99, *(v52 + 56) + *(v18 + 72) * v56, v17);

      v59 = 0;
    }

    else
    {

      v59 = 1;
    }

    v51 = v55;
    v38 = v97;
  }

  else
  {

    v59 = 1;
  }

  v60 = v99;
  (*(v18 + 56))(v99, v59, 1, v17);
  v61 = v60;
  v62 = v91;
  sub_100006EA4(v61, v91, &qword_100114B68, &type metadata accessor for Chart);
  v63 = (*(v18 + 48))(v62, 1, v17);
  v64 = v93;
  if (v63 == 1)
  {
    v65 = type metadata accessor for PreparedSparkline(0);
    (*(*(v65 - 8) + 56))(v98, 1, 1, v65);
  }

  else
  {
    v66 = v83;
    (*(v18 + 32))(v83, v62, v17);
    v67 = v82;
    (*(v18 + 16))(v82, v66, v17);
    v68 = v81;
    sub_100006EA4(v38, v81, &qword_100114B70, &type metadata accessor for Quote);
    v69 = v18;
    v70 = v84;
    (*(v96 + 16))(v84, v101, v64);
    v71 = v85;
    (*(v86 + 16))(v85, v88 + OBJC_IVAR____TtC12StocksWidget25WatchlistViewModelService_logger, v87);
    sub_10006DA88(v67, v68, v70, v71, v98, 0.02);
    (*(v69 + 8))(v66, v17);
    v38 = v97;
  }

  v72 = v94;
  v73 = v92;
  sub_100006EA4(v38, v92, &qword_100114B70, &type metadata accessor for Quote);
  if ((*(v100 + 48))(v73, 1, v51) == 1)
  {
    sub_100006D58(v99, &qword_100114B68, &type metadata accessor for Chart);
    sub_100006D58(v38, &qword_100114B70, &type metadata accessor for Quote);
    v74 = 1;
  }

  else
  {
    v75 = v100;
    v76 = v89;
    (*(v100 + 32))(v89, v73, v51);
    (*(v75 + 16))(v90, v76, v51);
    sub_1000D9420();
    (*(v75 + 8))(v76, v51);
    sub_100006D58(v99, &qword_100114B68, &type metadata accessor for Chart);
    v74 = 0;
    v73 = v38;
  }

  sub_100006D58(v73, &qword_100114B70, &type metadata accessor for Quote);
  v77 = sub_1000D9450();
  (*(*(v77 - 8) + 56))(v72, v74, 1, v77);
  v78 = v95;
  (*(v96 + 16))(v95, v101, v64);
  v79 = type metadata accessor for WidgetStock();
  sub_100006F24(v72, v78 + *(v79 + 20), &qword_100114B58, &type metadata accessor for WidgetQuote);
  return sub_100006F24(v98, v78 + *(v79 + 24), &qword_100114B60, type metadata accessor for PreparedSparkline);
}

uint64_t sub_100006AEC()
{
  sub_100006D0C(v0 + 2);
  sub_100006D0C(v0 + 7);
  sub_100006D0C(v0 + 12);
  sub_100006D0C(v0 + 17);
  sub_100006D0C(v0 + 22);
  v1 = OBJC_IVAR____TtC12StocksWidget25WatchlistViewModelService_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100006BD8()
{
  result = sub_1000DA370();
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

void *sub_100006C7C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006CC0()
{
  result = qword_100114B50;
  if (!qword_100114B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100114B50);
  }

  return result;
}

uint64_t sub_100006D0C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006D58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000071E0(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006DE8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006E20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006EA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000071E0(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006F24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000071E0(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006FB8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_1000D9690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007078(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000D9690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000711C()
{
  sub_1000071E0(319, &unk_100114BE0, type metadata accessor for WidgetStock, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000D9690();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000071E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

Swift::Int StockChartHighlightStyle.hashValue.getter(char a1)
{
  sub_1000DC420();
  sub_1000DC430(a1 & 1);
  return sub_1000DC460();
}

Swift::Int sub_1000072DC()
{
  v1 = *v0;
  sub_1000DC420();
  sub_1000DC430(v1);
  return sub_1000DC460();
}

Swift::Int sub_100007350()
{
  v1 = *v0;
  sub_1000DC420();
  sub_1000DC430(v1);
  return sub_1000DC460();
}

unint64_t sub_100007398()
{
  result = qword_100114C18;
  if (!qword_100114C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValueChangeTrend(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ValueChangeTrend(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100007564()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 40))(v2, v3);
}

uint64_t sub_1000075D8(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v3[40] = *v2;
  v4 = sub_1000D9B40();
  v3[41] = v4;
  v5 = *(v4 - 8);
  v3[42] = v5;
  v6 = *(v5 + 64) + 15;
  v3[43] = swift_task_alloc();
  v7 = sub_1000DA370();
  v3[44] = v7;
  v8 = *(v7 - 8);
  v3[45] = v8;
  v3[46] = *(v8 + 64);
  v3[47] = swift_task_alloc();
  v9 = sub_1000D97A0();
  v3[48] = v9;
  v10 = *(v9 - 8);
  v3[49] = v10;
  v11 = *(v10 + 64) + 15;
  v3[50] = swift_task_alloc();
  v12 = sub_1000D9780();
  v3[51] = v12;
  v13 = *(v12 - 8);
  v3[52] = v13;
  v14 = *(v13 + 64) + 15;
  v3[53] = swift_task_alloc();
  v15 = sub_1000D95E0();
  v3[54] = v15;
  v16 = *(v15 - 8);
  v3[55] = v16;
  v17 = *(v16 + 64) + 15;
  v3[56] = swift_task_alloc();
  v18 = sub_1000D9510();
  v3[57] = v18;
  v19 = *(v18 - 8);
  v3[58] = v19;
  v20 = *(v19 + 64) + 15;
  v3[59] = swift_task_alloc();
  v21 = sub_1000D9EC0();
  v3[60] = v21;
  v22 = *(v21 - 8);
  v3[61] = v22;
  v23 = *(v22 + 64) + 15;
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_1000078F4, 0, 0);
}

uint64_t sub_1000078F4()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v1[13];
  sub_100006C7C(v1 + 9, v1[12]);
  if ((sub_1000D9810() & 1) != 0 || v2 < 1)
  {
    v17 = v0[62];
    v18 = v0[59];
    v19 = v0[56];
    v20 = v0[53];
    v21 = v0[50];
    v22 = v0[47];
    v23 = v0[43];

    v24 = v0[1];

    return v24(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = v0[39];
    v5 = v0[37];
    v6 = [objc_opt_self() sharedPreferences];
    [v6 resetLocale];

    v7 = *(v4 + 120);
    v8 = *(v4 + 128);
    ObjectType = swift_getObjectType();
    v10 = sub_1000D9B20();
    v12 = v11;
    v0[63] = v11;
    v13 = *(v8 + 16);
    v25 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[64] = v15;
    *v15 = v0;
    v15[1] = sub_100007B44;

    return v25(v10, v12, ObjectType, v8);
  }
}

uint64_t sub_100007B44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v6 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v7 = sub_100008B48;
  }

  else
  {
    v8 = *(v4 + 504);

    *(v4 + 528) = a1;
    v7 = sub_100007C74;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100007C74()
{
  v1 = *(v0 + 528);
  *(v0 + 536) = v1;
  v2 = *(v0 + 304);
  v3 = *(*(v0 + 312) + 112);

  v4 = sub_1000DA190();
  v5 = *(v0 + 272) * v2;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = *(v1 + 16);

  if (__OFSUB__(v6, v7))
  {
LABEL_11:
    __break(1u);
    return Promise.resolveAsync()(v4);
  }

  v9 = *(v0 + 488);
  v8 = *(v0 + 496);
  v10 = *(v0 + 480);
  v11 = *(v0 + 312);
  v12 = *(v0 + 296);
  v13 = v11[6];
  sub_100006C7C(v11 + 2, v11[5]);
  (*(v9 + 104))(v8, enum case for NetworkProxy.none(_:), v10);
  *(v0 + 544) = sub_1000D9710();
  (*(v9 + 8))(v8, v10);
  v14 = async function pointer to Promise.resolveAsync()[1];
  v15 = swift_task_alloc();
  *(v0 + 552) = v15;
  *v15 = v0;
  v15[1] = sub_100007E48;
  v4 = v0 + 256;

  return Promise.resolveAsync()(v4);
}

uint64_t sub_100007E48()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  v2[70] = v0;

  v5 = v2[68];
  if (v0)
  {
    v6 = v2[67];

    v7 = sub_100008EE8;
  }

  else
  {

    v7 = sub_100007F8C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100007F8C()
{
  v1 = v0[39];
  v0[71] = v0[32];
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v5 = async function pointer to NewsUserProfileProviderType.newsUserProfile.getter[1];
  v6 = swift_task_alloc();
  v0[72] = v6;
  *v6 = v0;
  v6[1] = sub_100008050;
  v7 = v0[59];

  return NewsUserProfileProviderType.newsUserProfile.getter(v7, ObjectType, v2);
}

uint64_t sub_100008050()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v8 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = *(v2 + 568);
    v5 = *(v2 + 536);

    v6 = sub_100008FAC;
  }

  else
  {
    v6 = sub_100008178;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100008178()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 536);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v78 = *(v0 + 448);
  v82 = *(v0 + 440);
  v84 = *(v0 + 432);
  v6 = *(v0 + 408);
  v7 = *(v0 + 416);
  v77 = *(v0 + 312);
  v86 = sub_1000D9500();
  *(v0 + 592) = v86;
  (*(v4 + 8))(v3, v5);
  sub_100009070(v1);
  sub_10001072C(0, &qword_100114D10, &type metadata accessor for NewsFeedFilterOptions.Option, &type metadata accessor for _ContiguousArrayStorage);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = 2 * v8;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000DE440;
  v75 = v9;
  v80 = v11;
  v12 = (v11 + v9);
  *v12 = _swiftEmptyArrayStorage;
  v13 = *(v7 + 104);
  v68 = enum case for NewsFeedFilterOptions.Option.duplicateArticles(_:);
  v13(v12);
  *&v12[v8] = _swiftEmptyArrayStorage;
  v76 = v8;
  v67 = enum case for NewsFeedFilterOptions.Option.duplicateClusters(_:);
  v13(&v12[v8]);
  v14 = enum case for HeadlineCondition.pressRelease(_:);
  v15 = sub_1000D9630();
  v74 = *(v15 - 8);
  v71 = v14;
  v16 = v14;
  v17 = *(v74 + 104);
  v17(&v12[v10], v16, v15);
  v73 = v10;
  v69 = enum case for NewsFeedFilterOptions.Option.condition(_:);
  v13(&v12[v10]);
  v18 = *(v77 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 32);
  sub_100006C7C((v77 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager), *(v77 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 24));
  sub_1000D98B0();
  v19 = sub_1000D9560();
  LOBYTE(v6) = v20;
  (*(v82 + 8))(v78, v84);
  v72 = v15;
  v70 = v17;
  if (v6)
  {
    v21 = v13;
  }

  else
  {
    v22 = *(v0 + 424);
    v23 = *(v0 + 408);
    sub_10000F8D4();
    v24 = v17;
    v26 = *(v25 + 48);
    *v22 = v19;
    v24(v22 + v26, enum case for HeadlineCondition.isAIGenerated(_:), v15);
    (*(v74 + 56))(v22 + v26, 0, 1, v15);
    (v13)(v22, enum case for NewsFeedFilterOptions.Option.maxCount(_:), v23);
    v27 = v80;
    v29 = v80[2];
    v28 = v80[3];
    v21 = v13;
    if (v29 >= v28 >> 1)
    {
      v27 = sub_10007B578(v28 > 1, v29 + 1, 1, v80);
    }

    v31 = *(v0 + 416);
    v30 = *(v0 + 424);
    v32 = *(v0 + 408);
    *(v27 + 16) = v29 + 1;
    (*(v31 + 32))(v27 + v75 + v29 * v76, v30, v32);
  }

  v34 = *(v0 + 392);
  v33 = *(v0 + 400);
  v35 = *(v0 + 384);
  sub_1000D9790();
  v36 = sub_1000DBB30();
  v37 = *(v34 + 8);
  v37(v33, v35);
  *(v0 + 280) = v36;
  v38 = *(v36 + 16);
  if (v38 && v38 < *(v0 + 304))
  {
    v39 = *(v0 + 408);
    v79 = v39;
    v83 = *(v0 + 400);
    v85 = *(v0 + 384);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1000DE440;
    v40 = (v81 + v75);
    *v40 = _swiftEmptyArrayStorage;
    v66 = v21;
    (v21)(v81 + v75, v68, v39);
    *(v40 + v76) = _swiftEmptyArrayStorage;
    (v21)(v81 + v75 + v76, v67, v39);
    sub_10001072C(0, &qword_100114D68, &type metadata accessor for HeadlineCondition, &type metadata accessor for _ContiguousArrayStorage);
    v41 = *(v74 + 72);
    v42 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1000DDD30;
    v70((v43 + v42), v71, v72);
    *(v40 + v73) = v43;
    v70((v81 + v75 + v73), enum case for HeadlineCondition.none(_:), v72);
    (v66)(v81 + v75 + v73, v69, v79);
    sub_1000D9770();
    v44 = sub_1000DBB30();

    sub_100009070(v44);
    v37(v83, v85);
    v36 = *(v0 + 280);
  }

  else
  {
  }

  *(v0 + 600) = v36;
  v46 = *(v0 + 368);
  v45 = *(v0 + 376);
  v47 = *(v0 + 352);
  v48 = *(v0 + 360);
  v49 = *(v0 + 312);
  v87 = *(v0 + 320);
  v50 = *(v0 + 304);
  (*(v48 + 16))(v45, v49 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger, v47);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = swift_allocObject();
  (*(v48 + 32))(v52 + v51, v45, v47);
  *(v0 + 176) = v36;
  *(v0 + 184) = sub_10000EFCC;
  *(v0 + 192) = v52;
  *(v0 + 200) = sub_10000F11C;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_10000F1D4;
  *(v0 + 224) = 0;

  sub_100018120(v50, v0 + 16);
  v53 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v53;
  *(v0 + 160) = *(v0 + 80);
  v54 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v54;
  v55 = v49[13];
  sub_100006C7C(v49 + 9, v49[12]);
  LOBYTE(v46) = sub_1000D9840();
  v56 = swift_allocObject();
  *(v56 + 16) = v86;
  *(v56 + 24) = v46 & 1;
  *(v56 + 32) = v87;
  v57 = swift_allocObject();
  *(v0 + 608) = v57;
  *(v57 + 16) = &unk_1000DE550;
  *(v57 + 24) = v56;
  v58 = async function pointer to Sequence<>.concurrentMap<A>(_:)[1];
  v59 = v86;
  v60 = swift_task_alloc();
  *(v0 + 616) = v60;
  sub_10000F51C();
  v62 = v61;
  v63 = type metadata accessor for HeadlineViewModel(0);
  v64 = sub_10000F830(&qword_100114D60, sub_10000F51C);
  *v60 = v0;
  v60[1] = sub_100008940;

  return Sequence<>.concurrentMap<A>(_:)(&unk_1000DE560, v57, v62, v63, v64);
}

uint64_t sub_100008940(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *(*v1 + 608);
  v6 = *v1;
  *(v2 + 624) = a1;

  sub_10000F878(v2 + 16);

  return _swift_task_switch(sub_100008A68, 0, 0);
}

uint64_t sub_100008A68()
{
  v1 = *(v0 + 600);

  v2 = *(v0 + 624);
  v3 = *(v0 + 496);
  v4 = *(v0 + 472);
  v5 = *(v0 + 448);
  v6 = *(v0 + 424);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 344);

  v10 = *(v0 + 8);

  return v10(v2);
}

uint64_t sub_100008B48()
{
  v45 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = *(v0 + 296);

  (*(v4 + 16))(v3, v7, v5);
  swift_errorRetain();
  v8 = sub_1000DA350();
  v9 = sub_1000DBDB0();

  if (os_log_type_enabled(v8, v9))
  {
    v43 = *(v0 + 520);
    v11 = *(v0 + 336);
    v10 = *(v0 + 344);
    v12 = *(v0 + 328);
    v13 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_1000D9B20();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000848C8(v14, v16, &v44);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = sub_1000DC3B0();
    v23 = sub_1000848C8(v21, v22, &v44);

    *(v13 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch top stories for symbol=%s, error=%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = *(v0 + 336);
    v24 = *(v0 + 344);
    v26 = *(v0 + 328);

    (*(v25 + 8))(v24, v26);
  }

  v27 = *(v0 + 520);

  *(v0 + 536) = _swiftEmptyArrayStorage;
  v28 = *(v0 + 304);
  v29 = *(*(v0 + 312) + 112);
  v30 = sub_1000DA190();
  v31 = *(v0 + 272) * v28;
  if (COERCE__INT64(fabs(v31)) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v32 = v31;
  v33 = _swiftEmptyArrayStorage[2];

  if (__OFSUB__(v32, v33))
  {
LABEL_14:
    __break(1u);
    return Promise.resolveAsync()(v30);
  }

  v35 = *(v0 + 488);
  v34 = *(v0 + 496);
  v36 = *(v0 + 480);
  v37 = *(v0 + 312);
  v38 = *(v0 + 296);
  v39 = v37[6];
  sub_100006C7C(v37 + 2, v37[5]);
  (*(v35 + 104))(v34, enum case for NetworkProxy.none(_:), v36);
  *(v0 + 544) = sub_1000D9710();
  (*(v35 + 8))(v34, v36);
  v40 = async function pointer to Promise.resolveAsync()[1];
  v41 = swift_task_alloc();
  *(v0 + 552) = v41;
  *v41 = v0;
  v41[1] = sub_100007E48;
  v30 = v0 + 256;

  return Promise.resolveAsync()(v30);
}

uint64_t sub_100008EE8()
{
  v1 = v0[70];
  v2 = v0[62];
  v3 = v0[59];
  v4 = v0[56];
  v5 = v0[53];
  v6 = v0[50];
  v7 = v0[47];
  v8 = v0[43];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100008FAC()
{
  v1 = v0[73];
  v2 = v0[62];
  v3 = v0[59];
  v4 = v0[56];
  v5 = v0[53];
  v6 = v0[50];
  v7 = v0[47];
  v8 = v0[43];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100009070(uint64_t result)
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

  v3 = sub_10007B420(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = sub_1000D9C30();
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

uint64_t sub_10000919C(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v68 = a2;
  v9 = sub_1000D9C30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001072C(0, &qword_100114E38, &type metadata accessor for Headline, &type metadata accessor for Optional);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v53 - v18;
  v20 = __chkstk_darwin(v19);
  v21 = &v53;
  v23 = &v53 - v22;
  v24 = (a4 >> 1);
  v25 = __OFSUB__(a4 >> 1, a3);
  v26 = (a4 >> 1) - a3;
  if (v25)
  {
    __break(1u);
    goto LABEL_21;
  }

  v69 = v10;
  v70 = a1;
  v5 = *v4;
  v27 = *(*v4 + 16);
  v28 = v27 + v26;
  if (__OFADD__(v27, v26))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v21 = (v5[3] >> 1), v21 < v28))
  {
    if (v27 <= v28)
    {
      v31 = v27 + v26;
    }

    else
    {
      v31 = v27;
    }

    v5 = sub_10007B420(isUniquelyReferenced_nonNull_native, v31, 1, v5);
    v21 = (v5[3] >> 1);
  }

  v32 = v5[2];
  v33 = v21 - v32;
  if (v24 == a3)
  {
    if (v26 <= 0)
    {
      v26 = 0;
      v21 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v33 < v26)
  {
    __break(1u);
    goto LABEL_26;
  }

  v34 = v5 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v32;
  result = swift_arrayInitWithCopy();
  if (v26 <= 0)
  {
LABEL_16:
    v21 = v24;
LABEL_17:
    if (v26 != v33)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v65 = v21;
    v26 = v5[2];
    v28 = v69;
    v55 = *(v69 + 56);
    v56 = v69 + 56;
    v55(v23, 1, 1, v9, v20);
    v38 = v66;
    sub_100010454(v23, v66, &qword_100114E38, &type metadata accessor for Headline);
    v62 = *(v28 + 48);
    v63 = v28 + 48;
    if (v62(v38, 1, v9) == 1)
    {
LABEL_24:
      sub_10000F970(v23, &qword_100114E38, &type metadata accessor for Headline);
      swift_unknownObjectRelease();
      result = sub_10000F970(v66, &qword_100114E38, &type metadata accessor for Headline);
      goto LABEL_19;
    }

LABEL_26:
    v60 = (v28 + 32);
    v53 = (v28 + 8);
    v54 = (v28 + 16);
    v39 = v67;
    v57 = v16;
    do
    {
      sub_10000F970(v66, &qword_100114E38, &type metadata accessor for Headline);
      v42 = v5[3];
      v43 = v42 >> 1;
      if ((v42 >> 1) < v26 + 1)
      {
        v5 = sub_10007B420(v42 > 1, v26 + 1, 1, v5);
        v43 = v5[3] >> 1;
      }

      v64 = *(v69 + 80);
      sub_100010454(v23, v16, &qword_100114E38, &type metadata accessor for Headline);
      if (v62(v16, 1, v9) == 1)
      {
LABEL_27:
        sub_10000F970(v16, &qword_100114E38, &type metadata accessor for Headline);
        v40 = v26;
      }

      else
      {
        v59 = v5 + ((v64 + 32) & ~v64);
        v44 = *v60;
        if (v26 <= v43)
        {
          v45 = v43;
        }

        else
        {
          v45 = v26;
        }

        v61 = v45;
        v58 = v44;
        while (1)
        {
          v49 = v44;
          v44(v39, v16, v9);
          if (v61 == v26)
          {
            break;
          }

          sub_10000F970(v23, &qword_100114E38, &type metadata accessor for Headline);
          v50 = *(v69 + 72);
          v64 = v26;
          result = v49(&v59[v50 * v26], v39, v9);
          v51 = v65;
          if (v65 == v24)
          {
            v46 = 1;
            v65 = v24;
            v47 = v64;
            v16 = v57;
          }

          else
          {
            v52 = v50;
            v16 = v57;
            if (v65 < a3 || v65 >= v24)
            {
              goto LABEL_45;
            }

            (*v54)(v23, v68 + v52 * v65, v9);
            v46 = 0;
            v65 = v51 + 1;
            v47 = v64;
          }

          (v55)(v23, v46, 1, v9);
          sub_100010454(v23, v16, &qword_100114E38, &type metadata accessor for Headline);
          v48 = v62(v16, 1, v9);
          v26 = v47 + 1;
          v39 = v67;
          v44 = v58;
          if (v48 == 1)
          {
            goto LABEL_27;
          }
        }

        (*v53)(v39, v9);
        v40 = v61;
        v26 = v61;
        v16 = v57;
      }

      v5[2] = v40;
      v41 = v66;
      sub_100010454(v23, v66, &qword_100114E38, &type metadata accessor for Headline);
    }

    while (v62(v41, 1, v9) != 1);
    goto LABEL_24;
  }

  v36 = v5[2];
  v25 = __OFADD__(v36, v26);
  v37 = v36 + v26;
  if (!v25)
  {
    v5[2] = v37;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100009810(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  v3[42] = *v2;
  v4 = sub_1000DA370();
  v3[43] = v4;
  v5 = *(v4 - 8);
  v3[44] = v5;
  v3[45] = *(v5 + 64);
  v3[46] = swift_task_alloc();
  v6 = sub_1000D97A0();
  v3[47] = v6;
  v7 = *(v6 - 8);
  v3[48] = v7;
  v8 = *(v7 + 64) + 15;
  v3[49] = swift_task_alloc();
  v9 = sub_1000D9780();
  v3[50] = v9;
  v10 = *(v9 - 8);
  v3[51] = v10;
  v11 = *(v10 + 64) + 15;
  v3[52] = swift_task_alloc();
  v12 = sub_1000D95E0();
  v3[53] = v12;
  v13 = *(v12 - 8);
  v3[54] = v13;
  v14 = *(v13 + 64) + 15;
  v3[55] = swift_task_alloc();
  v15 = sub_1000D9670();
  v3[56] = v15;
  v16 = *(v15 - 8);
  v3[57] = v16;
  v17 = *(v16 + 64) + 15;
  v3[58] = swift_task_alloc();
  v18 = sub_1000D9B40();
  v3[59] = v18;
  v19 = *(v18 - 8);
  v3[60] = v19;
  v20 = *(v19 + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v21 = sub_1000D9510();
  v3[63] = v21;
  v22 = *(v21 - 8);
  v3[64] = v22;
  v23 = *(v22 + 64) + 15;
  v3[65] = swift_task_alloc();
  v24 = sub_1000D9EC0();
  v3[66] = v24;
  v25 = *(v24 - 8);
  v3[67] = v25;
  v26 = *(v25 + 64) + 15;
  v3[68] = swift_task_alloc();

  return _swift_task_switch(sub_100009B94, 0, 0);
}

uint64_t sub_100009B94()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = v1[13];
  sub_100006C7C(v1 + 9, v1[12]);
  if ((sub_1000D9810() & 1) == 0 && v2 >= 1)
  {
    v4 = *(*(v0 + 312) + 16);
    *(v0 + 552) = v4;
    if (v4)
    {
      v5 = *(v0 + 320);
      v6 = [objc_opt_self() sharedPreferences];
      [v6 resetLocale];

      if (v4 <= v5)
      {
        v20 = *(v0 + 320);
        v8 = v20 / v4;
        if (v20 % v4)
        {
          if (__OFADD__(v8++, 1))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v8 = 1;
      }

      *(v0 + 560) = v8;
      v22 = v8;
      v23 = *(*(v0 + 328) + 112);
      v7 = sub_1000DA190();
      v24 = *(v0 + 256) * v22;
      if (COERCE__INT64(fabs(v24)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v24 > -9.22337204e18)
      {
        if (v24 < 9.22337204e18)
        {
          v25 = *(v0 + 544);
          v26 = *(v0 + 536);
          v27 = *(v0 + 528);
          v28 = *(v0 + 328);
          v29 = *(v0 + 312);
          v30 = v28[6];
          sub_100006C7C(v28 + 2, v28[5]);
          (*(v26 + 104))(v25, enum case for NetworkProxy.none(_:), v27);
          *(v0 + 568) = sub_1000D9700();
          (*(v26 + 8))(v25, v27);
          v31 = async function pointer to Promise.resolveAsync()[1];
          v32 = swift_task_alloc();
          *(v0 + 576) = v32;
          *v32 = v0;
          v32[1] = sub_100009E98;
          v7 = v0 + 264;

          return Promise.resolveAsync()(v7);
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return Promise.resolveAsync()(v7);
    }
  }

  v9 = *(v0 + 544);
  v10 = *(v0 + 520);
  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v13 = *(v0 + 464);
  v14 = *(v0 + 440);
  v15 = *(v0 + 416);
  v16 = *(v0 + 392);
  v17 = *(v0 + 368);

  v18 = *(v0 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_100009E98()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v7 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = sub_10000B1AC;
  }

  else
  {
    v5 = *(v2 + 568);

    v4 = sub_100009FB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100009FB4()
{
  v1 = v0[41];
  v0[74] = v0[33];
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v5 = async function pointer to NewsUserProfileProviderType.newsUserProfile.getter[1];
  v6 = swift_task_alloc();
  v0[75] = v6;
  *v6 = v0;
  v6[1] = sub_10000A078;
  v7 = v0[65];

  return NewsUserProfileProviderType.newsUserProfile.getter(v7, ObjectType, v2);
}

uint64_t sub_10000A078()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v7 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v4 = *(v2 + 592);

    v5 = sub_10000B294;
  }

  else
  {
    v5 = sub_10000A194;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000A194()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 480);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  *(v0 + 616) = sub_1000D9500();
  (*(v4 + 8))(v2, v3);
  v28 = *(v6 + 128);
  v29 = *(v6 + 120);
  sub_10007BC5C(0, v1, 0);
  v8 = 0;
  v9 = *(v5 + 16);
  v5 += 16;
  v10 = *(v5 + 64);
  *(v0 + 744) = v10;
  v11 = v7 + ((v10 + 32) & ~v10);
  v32 = *(v5 + 56);
  v33 = v9;
  *(v0 + 624) = v32;
  *(v0 + 632) = v9;
  v12 = (v5 - 8);
  v30 = (v5 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31 = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  do
  {
    v13 = *(v0 + 496);
    v14 = *(v0 + 472);
    *(v0 + 640) = v31;
    v33(v13, v11, v14);
    v15 = sub_1000D9B20();
    v17 = v16;
    v18 = *v12;
    *(v0 + 648) = *v12;
    *(v0 + 656) = v30;
    v18(v13, v14);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_10007BC5C((v19 > 1), v20 + 1, 1);
    }

    *(v0 + 664) = _swiftEmptyArrayStorage;
    v21 = *(v0 + 552);
    ++v8;
    _swiftEmptyArrayStorage[2] = v20 + 1;
    v22 = &_swiftEmptyArrayStorage[2 * v20];
    v22[4] = v15;
    v22[5] = v17;
    v11 += v32;
  }

  while (v8 != v21);
  ObjectType = swift_getObjectType();
  v24 = *(v28 + 24);
  v34 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 672) = v26;
  *v26 = v0;
  v26[1] = sub_10000A43C;

  return (v34)(_swiftEmptyArrayStorage, ObjectType, v28);
}

uint64_t sub_10000A43C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 672);
  v6 = *v2;
  *(*v2 + 680) = v1;

  if (v1)
  {
    v7 = sub_10000B374;
  }

  else
  {
    v8 = *(v4 + 664);

    *(v4 + 688) = a1;
    v7 = sub_10000A56C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000A56C()
{
  v1 = 0;
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 592);
  v5 = *(v0 + 560);
  v6 = *(v0 + 456);
  *(v0 + 272) = _swiftEmptyArrayStorage;
  *(v0 + 280) = _swiftEmptyArrayStorage;
  LODWORD(v114) = enum case for NewsFeedSortMethod.publishDate(_:);
  v112 = v6 + 8;
  v113 = (v6 + 104);
  v116 = v2;
  do
  {
    v9 = *(v0 + 640);
    (*(v0 + 632))(*(v0 + 488), *(v0 + 312) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 624) * v1, *(v0 + 472));
    if (*(v4 + 16))
    {
      v10 = *(v0 + 592);
      v11 = sub_100033288(*(v0 + 488));
      if (v12)
      {
        v13 = *(v0 + 488);
        v14 = *(*(v4 + 56) + 8 * v11);

        v15 = sub_1000D9B20();
        if (*(v2 + 16))
        {
          v17 = sub_100033210(v15, v16);
          v19 = v18;

          if (v19)
          {
            v20 = *(*(v116 + 56) + 8 * v17);
          }
        }

        else
        {
        }

        v21 = *(v0 + 464);
        v22 = *(v0 + 448);
        (*v113)(v21, v114, v22);
        v23 = sub_1000DBB20();

        (*v112)(v21, v22);
        sub_100009070(v14);
        v24 = v23;
        v25 = sub_10000FC00(v23, v0 + 272);

        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_33;
        }

        v28 = *(v0 + 560);
        v29 = v25[2];
        if (v29 >= v28)
        {
          v29 = *(v0 + 560);
        }

        v30 = 2 * v29;
        v31 = *(sub_1000D9C30() - 8);
        v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        if (v5)
        {
          v33 = v30 + 1;
        }

        else
        {
          v33 = 1;
        }

        sub_10000919C(v34, v25 + v32, 0, v33);
        v35 = v25[2];
        if (v35 >= v28)
        {
          v36 = v28;
        }

        else
        {
          v36 = v25[2];
        }

        if (v5)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        sub_10000919C(v25, v25 + v32, v37, (2 * v35) | 1);
        v2 = v116;
      }
    }

    ++v1;
    v7 = *(v0 + 656);
    v8 = *(v0 + 552);
    (*(v0 + 648))(*(v0 + 488), *(v0 + 472));
  }

  while (v1 != v8);
  v38 = *(v0 + 592);
  v39 = *(v0 + 440);
  v109 = *(v0 + 432);
  v110 = *(v0 + 424);
  v40 = *(v0 + 400);
  v41 = *(v0 + 408);
  v105 = *(v0 + 328);

  sub_100009070(*(v0 + 280));
  sub_10001072C(0, &qword_100114D10, &type metadata accessor for NewsFeedFilterOptions.Option, &type metadata accessor for _ContiguousArrayStorage);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = 2 * v42;
  v45 = swift_allocObject();
  v100 = xmmword_1000DE440;
  *(v45 + 16) = xmmword_1000DE440;
  v113 = v43;
  v107 = v45;
  v46 = (v45 + v43);
  *v46 = _swiftEmptyArrayStorage;
  v5 = *(v41 + 104);
  v99 = enum case for NewsFeedFilterOptions.Option.duplicateArticles(_:);
  (v5)(v46);
  *&v46[v42] = _swiftEmptyArrayStorage;
  v116 = v42;
  v98 = enum case for NewsFeedFilterOptions.Option.duplicateClusters(_:);
  (v5)(&v46[v42]);
  v47 = enum case for HeadlineCondition.pressRelease(_:);
  v48 = sub_1000D9630();
  v112 = *(v48 - 8);
  v114 = *(v112 + 104);
  v114(&v46[v44], v47, v48);
  v104 = v44;
  v101 = enum case for NewsFeedFilterOptions.Option.condition(_:);
  (v5)(&v46[v44]);
  v49 = *(v105 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 32);
  sub_100006C7C((v105 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager), *(v105 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 24));
  sub_1000D98B0();
  v50 = sub_1000D9560();
  LOBYTE(v40) = v51;
  (*(v109 + 8))(v39, v110);
  v103 = v48;
  v102 = v47;
  if (v40)
  {
    goto LABEL_26;
  }

  v52 = *(v0 + 416);
  v53 = *(v0 + 400);
  sub_10000F8D4();
  v55 = *(v54 + 48);
  *v52 = v50;
  v114(v52 + v55, enum case for HeadlineCondition.isAIGenerated(_:), v48);
  (*(v112 + 56))(v52 + v55, 0, 1, v48);
  (v5)(v52, enum case for NewsFeedFilterOptions.Option.maxCount(_:), v53);
  v26 = v107;
  v3 = v107[2];
  v27 = v107[3];
  v24 = v3 + 1;
  if (v3 < v27 >> 1)
  {
    v56 = v107;
    goto LABEL_25;
  }

LABEL_33:
  v56 = sub_10007B578(v27 > 1, v24, 1, v26);
LABEL_25:
  v58 = *(v0 + 408);
  v57 = *(v0 + 416);
  v59 = *(v0 + 400);
  *(v56 + 16) = v24;
  (*(v58 + 32))(&v113[v56 + v3 * v116], v57, v59, v26);
LABEL_26:
  v61 = *(v0 + 384);
  v60 = *(v0 + 392);
  v62 = *(v0 + 376);
  v63 = *(v0 + 320);
  *(v0 + 696) = *(v0 + 272);
  sub_1000D9790();
  v64 = sub_1000DBB30();
  v65 = *(v61 + 8);
  v65(v60, v62);
  *(v0 + 288) = v64;
  v66 = *(v64 + 16);
  if (v66 && v66 < v63)
  {
    v67 = *(v0 + 400);
    v108 = *(v0 + 392);
    v111 = *(v0 + 376);
    v106 = swift_allocObject();
    *(v106 + 16) = v100;
    v68 = &v113[v106];
    *v68 = _swiftEmptyArrayStorage;
    v69 = v67;
    v97 = v67;
    v70 = v67;
    v71 = v5;
    (v5)(&v113[v106], v99, v70);
    *&v68[v116] = _swiftEmptyArrayStorage;
    (v5)(&v113[v106 + v116], v98, v69);
    sub_10001072C(0, &qword_100114D68, &type metadata accessor for HeadlineCondition, &type metadata accessor for _ContiguousArrayStorage);
    v72 = *(v112 + 72);
    v73 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1000DDD30;
    v114((v74 + v73), v102, v103);
    *&v68[v104] = v74;
    v114(&v113[v106 + v104], enum case for HeadlineCondition.none(_:), v103);
    v71(&v113[v106 + v104], v101, v97);
    sub_1000D9770();
    v75 = sub_1000DBB30();
    sub_100009070(v75);
    v65(v108, v111);
    v64 = *(v0 + 288);
  }

  *(v0 + 704) = v64;
  v76 = *(v0 + 368);
  v77 = *(v0 + 344);
  v78 = *(v0 + 352);
  v79 = *(v0 + 328);
  v115 = *(v0 + 336);
  v117 = *(v0 + 616);
  v80 = *(v0 + 320);
  (*(v78 + 16))(v76, v79 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger, v77);
  v81 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v82 = swift_allocObject();
  *(v0 + 712) = v82;
  (*(v78 + 32))(v82 + v81, v76, v77);
  *(v0 + 176) = v64;
  *(v0 + 184) = sub_1000107A4;
  *(v0 + 192) = v82;
  *(v0 + 200) = sub_10000F11C;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_10000F1D4;
  *(v0 + 224) = 0;
  swift_bridgeObjectRetain_n();

  sub_100018120(v80, v0 + 16);
  v83 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v83;
  *(v0 + 160) = *(v0 + 80);
  v84 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v84;
  v85 = v79[13];
  sub_100006C7C(v79 + 9, v79[12]);
  v86 = sub_1000D9840();
  v87 = swift_allocObject();
  *(v87 + 16) = v117;
  *(v87 + 24) = v86 & 1;
  *(v87 + 32) = v115;
  v88 = swift_allocObject();
  *(v0 + 720) = v88;
  *(v88 + 16) = &unk_1000DE590;
  *(v88 + 24) = v87;
  v89 = async function pointer to Sequence<>.concurrentMap<A>(_:)[1];
  v90 = v117;
  v91 = swift_task_alloc();
  *(v0 + 728) = v91;
  sub_10000F51C();
  v93 = v92;
  v94 = type metadata accessor for HeadlineViewModel(0);
  v95 = sub_10000F830(&qword_100114D60, sub_10000F51C);
  *v91 = v0;
  v91[1] = sub_10000AF6C;

  return Sequence<>.concurrentMap<A>(_:)(&unk_1000DE598, v88, v93, v94, v95);
}

uint64_t sub_10000AF6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v4 = *(*v1 + 720);
  v6 = *v1;
  *(v2 + 736) = a1;

  sub_10000F878(v2 + 16);

  return _swift_task_switch(sub_10000B094, 0, 0);
}

uint64_t sub_10000B094()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);

  swift_bridgeObjectRelease_n();

  v4 = *(v0 + 736);
  v5 = *(v0 + 544);
  v6 = *(v0 + 520);
  v8 = *(v0 + 488);
  v7 = *(v0 + 496);
  v9 = *(v0 + 464);
  v10 = *(v0 + 440);
  v11 = *(v0 + 416);
  v12 = *(v0 + 392);
  v13 = *(v0 + 368);

  v14 = *(v0 + 8);

  return v14(v4);
}

uint64_t sub_10000B1AC()
{
  v1 = v0[71];

  v2 = v0[73];
  v3 = v0[68];
  v4 = v0[65];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[58];
  v8 = v0[55];
  v9 = v0[52];
  v10 = v0[49];
  v11 = v0[46];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000B294()
{
  v1 = v0[76];
  v2 = v0[68];
  v3 = v0[65];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[58];
  v7 = v0[55];
  v8 = v0[52];
  v9 = v0[49];
  v10 = v0[46];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000B374()
{
  v154 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);

  swift_errorRetain();
  v5 = sub_1000DA350();
  v6 = sub_1000DBDB0();

  if (os_log_type_enabled(v5, v6))
  {
    v147 = v6;
    v149 = v5;
    v7 = *(v0 + 552);
    v8 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v153 = _swiftEmptyArrayStorage;
    *v8 = 136315394;
    sub_10007BC5C(0, v7, 0);
    v9 = 0;
    v10 = v153;
    do
    {
      v11 = *(v0 + 656);
      v12 = *(v0 + 648);
      v13 = *(v0 + 640);
      v14 = *(v0 + 496);
      v15 = *(v0 + 472);
      (*(v0 + 632))(v14, *(v0 + 312) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 624) * v9, v15);
      v16 = sub_1000D9B20();
      v18 = v17;
      v12(v14, v15);
      v153 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_10007BC5C((v19 > 1), v20 + 1, 1);
        v10 = v153;
      }

      v21 = *(v0 + 552);
      ++v9;
      v10[2] = v20 + 1;
      v22 = &v10[2 * v20];
      v22[4] = v16;
      v22[5] = v18;
    }

    while (v9 != v21);
    v23 = *(v0 + 680);
    *(v0 + 296) = v10;
    sub_1000106DC();
    sub_10000F830(&qword_100114E30, sub_1000106DC);
    v24 = sub_1000DB890();
    v26 = v25;

    v27 = sub_1000848C8(v24, v26, &v152);

    *(v8 + 4) = v27;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v29 = *(v0 + 232);
    v28 = *(v0 + 240);
    v30 = *(v0 + 248);
    v31 = sub_1000DC3B0();
    v33 = sub_1000848C8(v31, v32, &v152);

    *(v8 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v149, v147, "Failed to fetch top stories for symbols=[%s], error=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v34 = *(v0 + 680);
  v35 = sub_100033A30(_swiftEmptyArrayStorage);

  v36 = 0;
  v37 = 0;
  v38 = *(v0 + 592);
  v39 = *(v0 + 560);
  v40 = *(v0 + 456);
  *(v0 + 272) = _swiftEmptyArrayStorage;
  *(v0 + 280) = _swiftEmptyArrayStorage;
  LODWORD(v146) = enum case for NewsFeedSortMethod.publishDate(_:);
  v145 = (v40 + 104);
  v144 = v40 + 8;
  v150 = v35;
  do
  {
    v43 = *(v0 + 640);
    (*(v0 + 632))(*(v0 + 488), *(v0 + 312) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 624) * v37, *(v0 + 472));
    if (*(v38 + 16))
    {
      v44 = *(v0 + 592);
      v45 = sub_100033288(*(v0 + 488));
      if (v46)
      {
        v47 = *(v0 + 488);
        v48 = *(*(v38 + 56) + 8 * v45);

        v49 = sub_1000D9B20();
        if (*(v35 + 16))
        {
          v51 = sub_100033210(v49, v50);
          v53 = v52;

          if (v53)
          {
            v54 = *(*(v150 + 56) + 8 * v51);
          }
        }

        else
        {
        }

        v55 = *(v0 + 464);
        v56 = *(v0 + 448);
        (*v145)(v55, v146, v56);
        v57 = sub_1000DBB20();

        (*v144)(v55, v56);
        v153 = v57;
        sub_100009070(v48);
        v58 = v153;
        v59 = sub_10000FC00(v153, v0 + 272);

        if (v39 < 0)
        {
          __break(1u);
          goto LABEL_40;
        }

        v62 = *(v0 + 560);
        v63 = v59[2];
        if (v63 >= v62)
        {
          v63 = *(v0 + 560);
        }

        v64 = 2 * v63;
        v65 = *(sub_1000D9C30() - 8);
        v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        if (v39)
        {
          v67 = v64 + 1;
        }

        else
        {
          v67 = 1;
        }

        sub_10000919C(v68, v59 + v66, 0, v67);
        v69 = v59[2];
        if (v69 >= v62)
        {
          v70 = v62;
        }

        else
        {
          v70 = v59[2];
        }

        if (v39)
        {
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        sub_10000919C(v59, v59 + v66, v71, (2 * v69) | 1);
        v35 = v150;
      }
    }

    v37 = (v37 + 1);
    v41 = *(v0 + 656);
    v42 = *(v0 + 552);
    (*(v0 + 648))(*(v0 + 488), *(v0 + 472));
  }

  while (v37 != v42);
  v72 = *(v0 + 592);
  v73 = *(v0 + 440);
  v141 = *(v0 + 432);
  v142 = *(v0 + 424);
  v75 = *(v0 + 400);
  v74 = *(v0 + 408);
  v137 = *(v0 + 328);

  sub_100009070(*(v0 + 280));
  sub_10001072C(0, &qword_100114D10, &type metadata accessor for NewsFeedFilterOptions.Option, &type metadata accessor for _ContiguousArrayStorage);
  v76 = *(v74 + 72);
  v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v78 = 2 * v76;
  v79 = swift_allocObject();
  v133 = xmmword_1000DE440;
  *(v79 + 16) = xmmword_1000DE440;
  v145 = v77;
  v139 = v79;
  v80 = (v79 + v77);
  *v80 = _swiftEmptyArrayStorage;
  v37 = *(v74 + 104);
  v132 = enum case for NewsFeedFilterOptions.Option.duplicateArticles(_:);
  v37(v80);
  *&v80[v76] = _swiftEmptyArrayStorage;
  v150 = v76;
  v131 = enum case for NewsFeedFilterOptions.Option.duplicateClusters(_:);
  v37(&v80[v76]);
  v81 = enum case for HeadlineCondition.pressRelease(_:);
  v36 = sub_1000D9630();
  v144 = *(v36 - 8);
  v146 = *(v144 + 104);
  v146(&v80[v78], v81, v36);
  v136 = v78;
  v134 = enum case for NewsFeedFilterOptions.Option.condition(_:);
  v37(&v80[v78]);
  v82 = *(v137 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 32);
  sub_100006C7C((v137 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager), *(v137 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager + 24));
  sub_1000D98B0();
  v83 = sub_1000D9560();
  LOBYTE(v75) = v84;
  (*(v141 + 8))(v73, v142);
  v135 = v81;
  if (v75)
  {
    goto LABEL_33;
  }

  v85 = *(v0 + 416);
  v86 = *(v0 + 400);
  sub_10000F8D4();
  v88 = *(v87 + 48);
  *v85 = v83;
  v146(v85 + v88, enum case for HeadlineCondition.isAIGenerated(_:), v36);
  (*(v144 + 56))(v85 + v88, 0, 1, v36);
  (v37)(v85, enum case for NewsFeedFilterOptions.Option.maxCount(_:), v86);
  v60 = v139;
  v38 = v139[2];
  v61 = v139[3];
  v58 = v38 + 1;
  if (v38 < v61 >> 1)
  {
    v89 = v139;
    goto LABEL_32;
  }

LABEL_40:
  v89 = sub_10007B578(v61 > 1, v58, 1, v60);
LABEL_32:
  v91 = *(v0 + 408);
  v90 = *(v0 + 416);
  v92 = *(v0 + 400);
  *(v89 + 16) = v58;
  (*(v91 + 32))(&v145[v89 + v38 * v150], v90, v92, v60);
LABEL_33:
  v94 = *(v0 + 384);
  v93 = *(v0 + 392);
  v95 = *(v0 + 376);
  v96 = *(v0 + 320);
  *(v0 + 696) = *(v0 + 272);
  sub_1000D9790();
  v97 = sub_1000DBB30();
  v98 = *(v94 + 8);
  v98(v93, v95);
  *(v0 + 288) = v97;
  v99 = *(v97 + 16);
  if (v99 && v99 < v96)
  {
    v100 = *(v0 + 400);
    v140 = *(v0 + 392);
    v143 = *(v0 + 376);
    v138 = swift_allocObject();
    *(v138 + 16) = v133;
    v101 = &v145[v138];
    *v101 = _swiftEmptyArrayStorage;
    v102 = v100;
    v130 = v100;
    v103 = v100;
    v104 = v37;
    (v37)(&v145[v138], v132, v103);
    *&v101[v150] = _swiftEmptyArrayStorage;
    (v37)(&v145[v138 + v150], v131, v102);
    sub_10001072C(0, &qword_100114D68, &type metadata accessor for HeadlineCondition, &type metadata accessor for _ContiguousArrayStorage);
    v105 = *(v144 + 72);
    v106 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1000DDD30;
    v146((v107 + v106), v135, v36);
    *&v101[v136] = v107;
    v146(&v145[v138 + v136], enum case for HeadlineCondition.none(_:), v36);
    v104(&v145[v138 + v136], v134, v130);
    sub_1000D9770();
    v108 = sub_1000DBB30();
    sub_100009070(v108);
    v98(v140, v143);
    v97 = *(v0 + 288);
  }

  *(v0 + 704) = v97;
  v109 = *(v0 + 368);
  v110 = *(v0 + 344);
  v111 = *(v0 + 352);
  v112 = *(v0 + 328);
  v148 = *(v0 + 336);
  v151 = *(v0 + 616);
  v113 = *(v0 + 320);
  (*(v111 + 16))(v109, v112 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger, v110);
  v114 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v115 = swift_allocObject();
  *(v0 + 712) = v115;
  (*(v111 + 32))(v115 + v114, v109, v110);
  *(v0 + 176) = v97;
  *(v0 + 184) = sub_1000107A4;
  *(v0 + 192) = v115;
  *(v0 + 200) = sub_10000F11C;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_10000F1D4;
  *(v0 + 224) = 0;
  swift_bridgeObjectRetain_n();

  sub_100018120(v113, v0 + 16);
  v116 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v116;
  *(v0 + 160) = *(v0 + 80);
  v117 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v117;
  v118 = v112[13];
  sub_100006C7C(v112 + 9, v112[12]);
  v119 = sub_1000D9840();
  v120 = swift_allocObject();
  *(v120 + 16) = v151;
  *(v120 + 24) = v119 & 1;
  *(v120 + 32) = v148;
  v121 = swift_allocObject();
  *(v0 + 720) = v121;
  *(v121 + 16) = &unk_1000DE590;
  *(v121 + 24) = v120;
  v122 = async function pointer to Sequence<>.concurrentMap<A>(_:)[1];
  v123 = v151;
  v124 = swift_task_alloc();
  *(v0 + 728) = v124;
  sub_10000F51C();
  v126 = v125;
  v127 = type metadata accessor for HeadlineViewModel(0);
  v128 = sub_10000F830(&qword_100114D60, sub_10000F51C);
  *v124 = v0;
  v124[1] = sub_10000AF6C;

  return Sequence<>.concurrentMap<A>(_:)(&unk_1000DE598, v121, v126, v127, v128);
}

uint64_t sub_10000C038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D9C30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = sub_1000D9C00();
  if (!v13)
  {
    (*(v5 + 16))(v9, a1, v4);
    v27 = sub_1000DA350();
    v28 = sub_1000DBDD0();
    if (!os_log_type_enabled(v27, v28))
    {

      (*(v5 + 8))(v9, v4);
      goto LABEL_17;
    }

    v29 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = sub_1000D9C20();
    v32 = v31;
    (*(v5 + 8))(v9, v4);
    v33 = sub_1000848C8(v30, v32, &v46);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v34 = sub_1000848C8(v44, v45, &v46);

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Dropping headline without title: %s. id=%s", v29, 0x16u);
    swift_arrayDestroy();
LABEL_14:

LABEL_17:
    sub_10001037C();
    return (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
  }

  v14 = v12;
  v15 = v13;
  v16 = [sub_1000D9BD0() sourceName];
  swift_unknownObjectRelease();
  if (!v16)
  {

    (*(v5 + 16))(v11, a1, v4);
    v27 = sub_1000DA350();
    v35 = sub_1000DBDD0();
    if (!os_log_type_enabled(v27, v35))
    {

      (*(v5 + 8))(v11, v4);
      goto LABEL_17;
    }

    v36 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = sub_1000D9C20();
    v39 = v38;
    (*(v5 + 8))(v11, v4);
    v40 = sub_1000848C8(v37, v39, &v46);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v41 = sub_1000848C8(v44, v45, &v46);

    *(v36 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v27, v35, "Dropping headline without source: %s. id=%s", v36, 0x16u);
    swift_arrayDestroy();
    goto LABEL_14;
  }

  v17 = sub_1000DB950();
  v19 = v18;

  sub_10001037C();
  v21 = v20;
  v22 = (a2 + *(v20 + 48));
  v23 = v4;
  v24 = (a2 + *(v20 + 64));
  (*(v5 + 16))(a2, a1, v23);
  *v22 = v14;
  v22[1] = v15;
  *v24 = v17;
  v24[1] = v19;
  v25 = *(*(v21 - 8) + 56);

  return v25(a2, 0, 1, v21);
}

uint64_t sub_10000C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 1692) = a8;
  *(v8 + 1536) = a7;
  *(v8 + 1528) = a6;
  *(v8 + 1520) = a5;
  *(v8 + 1512) = a4;
  *(v8 + 1504) = a3;
  *(v8 + 1496) = a2;
  *(v8 + 1448) = a1;
  sub_10001072C(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 1544) = swift_task_alloc();
  *(v8 + 1552) = swift_task_alloc();
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  v11 = sub_1000D9C30();
  *(v8 + 1576) = v11;
  v12 = *(v11 - 8);
  *(v8 + 1584) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 1592) = swift_task_alloc();

  return _swift_task_switch(sub_10000C6D8, 0, 0);
}

uint64_t sub_10000C6D8()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1576);
  (*(v2 + 16))(v1, *(v0 + 1496), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Headline.headline(_:))
  {
    v5 = *(v0 + 1592);
    (*(*(v0 + 1584) + 96))(v5, *(v0 + 1576));
    v6 = *v5;
    *(v0 + 1600) = *v5;
    v7 = swift_task_alloc();
    *(v0 + 1608) = v7;
    *(v7 + 16) = v6;
    sub_10001072C(0, &qword_100114D90, sub_10000FB14, &type metadata accessor for Optional);
    swift_asyncLet_begin();
    v8 = swift_task_alloc();
    *(v0 + 1616) = v8;
    *(v8 + 16) = v6;
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16, v0 + 1352, sub_10000CCD8, v0 + 1296);
  }

  else if (v4 == enum case for Headline.yahooHeadline(_:))
  {
    v9 = *(v0 + 1592);
    v10 = *(v0 + 1544);
    v11 = *(v0 + 1692);
    v12 = *(v0 + 1528);
    (*(*(v0 + 1584) + 96))(v9, *(v0 + 1576));
    v13 = *v9;
    swift_getObjectType();
    v14 = [v13 identifier];
    v15 = sub_1000DB950();
    v44 = v16;
    v45 = v15;

    v46 = v12;

    sub_1000DBE20();
    v17 = sub_1000D8F30();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) == 1)
    {
      v19 = *(v0 + 1544);
      swift_unknownObjectRelease();
      sub_10000F970(v19, &qword_100114D80, &type metadata accessor for URL);
      v20 = 1;
    }

    else
    {
      v25 = *(v0 + 1552);
      v26 = *(v0 + 1544);
      sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
      v27 = *(sub_1000D8E20() - 8);
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      *(swift_allocObject() + 16) = xmmword_1000DDD30;
      sub_1000D8E10();
      sub_1000D8F20();
      swift_unknownObjectRelease();

      (*(v18 + 8))(v26, v17);
      v20 = 0;
    }

    if (v11)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    v31 = *(v0 + 1552);
    v32 = *(v0 + 1520);
    v33 = *(v0 + 1512);
    v34 = *(v0 + 1504);
    v35 = *(v0 + 1448);
    (*(v18 + 56))(v31, v20, 1, v17);
    *v35 = v45;
    *(v35 + 8) = v44;
    *(v35 + 16) = v30;
    *(v35 + 24) = v32;
    *(v35 + 32) = v46;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 1;
    *(v35 + 64) = v34;
    *(v35 + 72) = v33;
    *(v35 + 80) = xmmword_1000DE450;
    *(v35 + 96) = xmmword_1000DE460;
    *(v35 + 112) = 0;
    v36 = type metadata accessor for HeadlineViewModel(0);
    sub_10000F9E0(v31, v35 + *(v36 + 36));
    v37 = *(v0 + 1592);
    v38 = *(v0 + 1568);
    v39 = *(v0 + 1560);
    v40 = *(v0 + 1552);
    v41 = *(v0 + 1544);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v21 = *(v0 + 1576);
    v22 = *(v0 + 1496);
    sub_1000DBF50(61);
    *(v0 + 1336) = 0;
    *(v0 + 1344) = 0xE000000000000000;
    v48._countAndFlagsBits = 0xD000000000000014;
    v48._object = 0x80000001000E7E40;
    sub_1000DBA00(v48);
    sub_1000DC0C0();
    v49._countAndFlagsBits = 0xD000000000000027;
    v49._object = 0x80000001000E7E60;
    sub_1000DBA00(v49);
    v23 = *(v0 + 1336);
    v24 = *(v0 + 1344);
    return sub_1000DC0D0();
  }
}

uint64_t sub_10000CCD8()
{
  v1 = *(v0 + 1352);
  *(v0 + 1624) = v1;
  v2 = v1;

  return _swift_asyncLet_get(v0 + 656, v0 + 1400, sub_10000CD48, v0 + 1360);
}

uint64_t sub_10000CD64()
{
  v1 = *(v0 + 1400);
  *(v0 + 1632) = v1;
  if (v1)
  {
    v2 = *(v0 + 1600);
    v3 = v1;
    v4 = [v2 sourceChannel];
    v5 = 1.0;
    if (v4)
    {
      v6 = [v4 theme];
      swift_unknownObjectRelease();
      if (v6)
      {
        [v6 bannerImageScale];
        v5 = v7;
        swift_unknownObjectRelease();
      }
    }

    v8 = *(v0 + 1528);
    if (v5 > 0.1)
    {
      v9 = v5;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = v9;
    v11 = *(v0 + 1520);
    v12 = v1;
    v13 = *(v0 + 1528);
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = *(v0 + 1520);
    v10 = *(v0 + 1528);
  }

  *(v0 + 1664) = v13;
  *(v0 + 1656) = v11;
  *(v0 + 1648) = v10;
  *(v0 + 1640) = v12;
  v14 = *(v0 + 1624);
  if (v14)
  {
    sub_1000DBC20();
    v15 = v1;
    swift_bridgeObjectRetain_n();
    v16 = v14;
    *(v0 + 1672) = sub_1000DBC10();
    v17 = sub_1000DBBE0();
    v19 = v18;
    v20 = sub_10000D324;
LABEL_14:

    return _swift_task_switch(v20, v17, v19);
  }

  v21 = *(v0 + 1496);
  v22 = v1;
  swift_bridgeObjectRetain_n();
  if (sub_1000D9C10())
  {
    sub_1000DBC20();
    *(v0 + 1680) = sub_1000DBC10();
    v17 = sub_1000DBBE0();
    v19 = v23;
    v20 = sub_10000DC54;
    goto LABEL_14;
  }

  v24 = *(v0 + 1624);
  v25 = *(v0 + 1600);
  v26 = *(v0 + 1560);
  v27 = *(v0 + 1536);
  swift_getObjectType();
  v28 = v24;
  v29 = [v25 identifier];
  v30 = sub_1000DB950();
  v64 = v31;
  v65 = v30;

  swift_unknownObjectRetain();
  v32 = sub_10000FEE0(v25, v27);
  v62 = v33;
  v63 = v32;
  v61 = v34;
  sub_1000DBE20();
  v35 = sub_1000D8F30();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v26, 1, v35);
  v38 = *(v0 + 1656);
  v58 = v38;
  v59 = *(v0 + 1664);
  v39 = *(v0 + 1648);
  v40 = *(v0 + 1640);
  v41 = *(v0 + 1632);
  v42 = *(v0 + 1624);
  if (v37 == 1)
  {
    v43 = *(v0 + 1560);
    v44 = 1;
    sub_100010190(1);
    sub_1000101A0(v40, v39, v58, v59, v41 == 0);

    sub_10000F970(v43, &qword_100114D80, &type metadata accessor for URL);
  }

  else
  {
    v45 = *(v0 + 1568);
    v46 = *(v0 + 1560);
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    v47 = *(sub_1000D8E20() - 8);
    v48 = *(v47 + 72);
    v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v40, v39, v58, v59, v41 == 0);
    sub_100010190(1);

    (*(v36 + 8))(v46, v35);
    v44 = 0;
  }

  v50 = *(v0 + 1568);
  v51 = *(v0 + 1512);
  v52 = *(v0 + 1504);
  v53 = *(v0 + 1448);
  v54 = *(v0 + 1632) == 0;
  v60 = *(v0 + 1640);
  v66 = *(v0 + 1656);
  (*(v36 + 56))(v50, v44, 1, v35);
  sub_1000101E0();
  *(v0 + 1688) = *(v55 + 48);
  *v53 = v65;
  *(v53 + 8) = v64;
  *(v53 + 16) = 0;
  *(v53 + 40) = v66;
  *(v53 + 24) = v60;
  *(v53 + 56) = v54;
  *(v53 + 64) = v52;
  *(v53 + 72) = v51;
  *(v53 + 80) = v63;
  *(v53 + 88) = v62;
  *(v53 + 96) = v61;
  *(v53 + 104) = 1;
  *(v53 + 112) = 0;
  v56 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v50, v53 + *(v56 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000D324()
{
  v1 = *(v0 + 1672);

  v2 = sub_1000D9B70();
  v4 = v3;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {

LABEL_3:
    v7 = sub_10000D858;
    goto LABEL_9;
  }

  if (sub_1000D9B60() == v2 && v8 == v4)
  {
  }

  else
  {
    v9 = sub_1000DC360();

    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v7 = sub_10000D448;
LABEL_9:

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000D448()
{
  v1 = *(v0 + 1496);
  v2 = sub_1000D9C10() & 1;
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1600);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1536);
  swift_getObjectType();
  v44 = v3;
  v7 = v3;
  v8 = [v4 identifier];
  v43 = sub_1000DB950();
  v42 = v9;

  swift_unknownObjectRetain();
  v10 = sub_10000FEE0(v4, v6);
  v40 = v11;
  v41 = v10;
  v39 = v12;
  sub_1000DBE20();
  v13 = sub_1000D8F30();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v5, 1, v13);
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1648);
  v18 = *(v0 + 1640);
  v19 = *(v0 + 1632);
  v35 = *(v0 + 1664);
  v36 = *(v0 + 1624);
  if (v15 == 1)
  {
    v20 = *(v0 + 1560);
    sub_100010190(v44);
    sub_1000101A0(v18, v17, v16, v35, v19 == 0);

    sub_10000F970(v20, &qword_100114D80, &type metadata accessor for URL);
    v21 = 1;
  }

  else
  {
    v34 = *(v0 + 1568);
    v22 = *(v0 + 1560);
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    v23 = *(sub_1000D8E20() - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v18, v17, v16, v35, v19 == 0);
    sub_100010190(v44);

    (*(v14 + 8))(v22, v13);
    v21 = 0;
  }

  v26 = *(v0 + 1568);
  v27 = *(v0 + 1512);
  v28 = *(v0 + 1504);
  v29 = *(v0 + 1448);
  v30 = *(v0 + 1632) == 0;
  v37 = *(v0 + 1640);
  v38 = *(v0 + 1656);
  (*(v14 + 56))(v26, v21, 1, v13);
  sub_1000101E0();
  *(v0 + 1688) = *(v31 + 48);
  *v29 = v43;
  *(v29 + 8) = v42;
  *(v29 + 16) = 0;
  *(v29 + 40) = v38;
  *(v29 + 24) = v37;
  *(v29 + 56) = v30;
  *(v29 + 64) = v28;
  *(v29 + 72) = v27;
  *(v29 + 80) = v41;
  *(v29 + 88) = v40;
  *(v29 + 96) = v39;
  *(v29 + 104) = v44;
  *(v29 + 112) = v2;
  v32 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v26, v29 + *(v32 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000D858()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1536);
  swift_getObjectType();
  v42 = v1;
  v5 = v1;
  v6 = [v2 identifier];
  v41 = sub_1000DB950();
  v40 = v7;

  swift_unknownObjectRetain();
  v8 = sub_10000FEE0(v2, v4);
  v38 = v9;
  v39 = v8;
  v37 = v10;
  sub_1000DBE20();
  v11 = sub_1000D8F30();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v3, 1, v11);
  v14 = *(v0 + 1664);
  v15 = *(v0 + 1656);
  v16 = *(v0 + 1648);
  v17 = *(v0 + 1640);
  v18 = *(v0 + 1632);
  v34 = *(v0 + 1624);
  if (v13 == 1)
  {
    v19 = *(v0 + 1560);
    sub_100010190(v42);
    sub_1000101A0(v17, v16, v15, v14, v18 == 0);

    sub_10000F970(v19, &qword_100114D80, &type metadata accessor for URL);
    v20 = 1;
  }

  else
  {
    v21 = *(v0 + 1568);
    v33 = *(v0 + 1560);
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    v22 = *(sub_1000D8E20() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v17, v16, v15, v14, v18 == 0);
    sub_100010190(v42);

    (*(v12 + 8))(v33, v11);
    v20 = 0;
  }

  v25 = *(v0 + 1568);
  v26 = *(v0 + 1512);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1448);
  v29 = *(v0 + 1632) == 0;
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1656);
  (*(v12 + 56))(v25, v20, 1, v11);
  sub_1000101E0();
  *(v0 + 1688) = *(v30 + 48);
  *v28 = v41;
  *(v28 + 8) = v40;
  *(v28 + 16) = 0;
  *(v28 + 40) = v36;
  *(v28 + 24) = v35;
  *(v28 + 56) = v29;
  *(v28 + 64) = v27;
  *(v28 + 72) = v26;
  *(v28 + 80) = v39;
  *(v28 + 88) = v38;
  *(v28 + 96) = v37;
  *(v28 + 104) = v42;
  *(v28 + 112) = 0;
  v31 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v25, v28 + *(v31 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000DC54()
{
  v1 = *(v0 + 1680);

  v2 = sub_1000D9B70();
  v4 = v3;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {

LABEL_3:
    v7 = sub_10000DD78;
    goto LABEL_9;
  }

  if (sub_1000D9B60() == v2 && v8 == v4)
  {
  }

  else
  {
    v9 = sub_1000DC360();

    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v7 = sub_10000E168;
LABEL_9:

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000DD78()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1536);
  swift_getObjectType();
  v5 = v1;
  v6 = [v2 identifier];
  v41 = sub_1000DB950();
  v40 = v7;

  swift_unknownObjectRetain();
  v8 = sub_10000FEE0(v2, v4);
  v38 = v9;
  v39 = v8;
  v37 = v10;
  sub_1000DBE20();
  v11 = sub_1000D8F30();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v3, 1, v11);
  v33 = *(v0 + 1656);
  v34 = *(v0 + 1664);
  v14 = *(v0 + 1648);
  v15 = *(v0 + 1640);
  v16 = *(v0 + 1632);
  v17 = *(v0 + 1624);
  if (v13 == 1)
  {
    v18 = *(v0 + 1560);
    v19 = 1;
    sub_100010190(1);
    sub_1000101A0(v15, v14, v33, v34, v16 == 0);

    sub_10000F970(v18, &qword_100114D80, &type metadata accessor for URL);
  }

  else
  {
    v20 = *(v0 + 1568);
    v21 = *(v0 + 1560);
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    v22 = *(sub_1000D8E20() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v15, v14, v33, v34, v16 == 0);
    sub_100010190(1);

    (*(v12 + 8))(v21, v11);
    v19 = 0;
  }

  v25 = *(v0 + 1568);
  v26 = *(v0 + 1512);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1448);
  v29 = *(v0 + 1632) == 0;
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1656);
  (*(v12 + 56))(v25, v19, 1, v11);
  sub_1000101E0();
  *(v0 + 1688) = *(v30 + 48);
  *v28 = v41;
  *(v28 + 8) = v40;
  *(v28 + 16) = 0;
  *(v28 + 40) = v36;
  *(v28 + 24) = v35;
  *(v28 + 56) = v29;
  *(v28 + 64) = v27;
  *(v28 + 72) = v26;
  *(v28 + 80) = v39;
  *(v28 + 88) = v38;
  *(v28 + 96) = v37;
  *(v28 + 104) = 1;
  *(v28 + 112) = 0;
  v31 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v25, v28 + *(v31 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000E168()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1536);
  swift_getObjectType();
  v5 = v1;
  v6 = [v2 identifier];
  v41 = sub_1000DB950();
  v40 = v7;

  swift_unknownObjectRetain();
  v8 = sub_10000FEE0(v2, v4);
  v38 = v9;
  v39 = v8;
  v37 = v10;
  sub_1000DBE20();
  v11 = sub_1000D8F30();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v3, 1, v11);
  v34 = *(v0 + 1664);
  v14 = *(v0 + 1656);
  v15 = *(v0 + 1648);
  v16 = *(v0 + 1640);
  v17 = *(v0 + 1632);
  v18 = *(v0 + 1624);
  if (v13 == 1)
  {
    v19 = *(v0 + 1560);
    sub_100010190(0);
    sub_1000101A0(v16, v15, v14, v34, v17 == 0);

    sub_10000F970(v19, &qword_100114D80, &type metadata accessor for URL);
    v20 = 1;
  }

  else
  {
    v33 = *(v0 + 1568);
    v21 = *(v0 + 1560);
    sub_10001072C(0, &qword_100114D88, &type metadata accessor for URLQueryItem, &type metadata accessor for _ContiguousArrayStorage);
    v22 = *(sub_1000D8E20() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1000DDD30;
    sub_1000D8E10();
    sub_1000D8F20();
    sub_1000101A0(v16, v15, v14, v34, v17 == 0);
    sub_100010190(0);

    (*(v12 + 8))(v21, v11);
    v20 = 0;
  }

  v25 = *(v0 + 1568);
  v26 = *(v0 + 1512);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1448);
  v29 = *(v0 + 1632) == 0;
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1656);
  (*(v12 + 56))(v25, v20, 1, v11);
  sub_1000101E0();
  *(v0 + 1688) = *(v30 + 48);
  *v28 = v41;
  *(v28 + 8) = v40;
  *(v28 + 16) = 0;
  *(v28 + 40) = v36;
  *(v28 + 24) = v35;
  *(v28 + 56) = v29;
  *(v28 + 64) = v27;
  *(v28 + 72) = v26;
  *(v28 + 80) = v39;
  *(v28 + 88) = v38;
  *(v28 + 96) = v37;
  *(v28 + 104) = 0;
  *(v28 + 112) = 0;
  v31 = type metadata accessor for HeadlineViewModel(0);
  sub_10000F9E0(v25, v28 + *(v31 + 36));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1400, sub_10000E55C, v0 + 1408);
}

uint64_t sub_10000E578()
{
  v1 = *(v0 + 1616);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1352, sub_10000E5E4, v0 + 1456);
}

uint64_t sub_10000E600()
{
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1600);
  v4 = *(v0 + 1592);
  swift_unknownObjectRelease();

  v5 = sub_1000D9640();
  (*(*(v5 - 8) + 8))(v4 + v1, v5);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1568);
  v8 = *(v0 + 1560);
  v9 = *(v0 + 1552);
  v10 = *(v0 + 1544);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000E6EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000E70C, 0, 0);
}

void sub_10000E70C()
{
  v1 = [*(v0 + 24) thumbnailWidget];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 thumbnailAssetHandle];
    *(v0 + 32) = v3;

    if (v3)
    {
      v4 = swift_task_alloc();
      *(v0 + 40) = v4;
      *v4 = v0;
      v4[1] = sub_10000E81C;

      sub_1000D67C0();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    **(v0 + 16) = 0;
    v5 = *(v0 + 8);

    v5();
  }
}

uint64_t sub_10000E81C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000107A0, 0, 0);
}

uint64_t sub_10000E938(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000E958, 0, 0);
}

uint64_t sub_10000E958()
{
  v1 = [*(v0 + 24) sourceChannel];
  if (v1 && (v2 = [v1 nameImageMaskWidgetHQAssetHandle], *(v0 + 32) = v2, swift_unknownObjectRelease(), v2))
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_10000EA68;

    return sub_1000D67C0();
  }

  else
  {
    **(v0 + 16) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10000EA68(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10000EB84, 0, 0);
}

uint64_t sub_10000EBA8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10000F738();
  v8 = (a2 + *(v7 + 48));
  v9 = *v8;
  v10 = v8[1];
  v11 = (a2 + *(v7 + 64));
  v12 = *v11;
  v13 = v11[1];
  v17 = (a3 + *a3);
  v14 = a3[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000ECF4;

  return v17(a1, a2, v9, v10, v12, v13);
}

uint64_t sub_10000ECF4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000EDE8()
{
  sub_100006D0C(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  sub_100006D0C(v0 + 9);
  v2 = v0[14];

  v3 = v0[15];
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger;
  v5 = sub_1000DA370();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_100006D0C((v0 + OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadlineViewModelService()
{
  result = qword_100114C58;
  if (!qword_100114C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000EF10()
{
  result = sub_1000DA370();
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

id sub_10000EFD0(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    a3 = a2;
  }

  [a3 red];
  v6 = v5;
  [a3 green];
  v8 = v7;
  [a3 blue];
  v10 = v9;
  [a3 alpha];
  v12 = v11;
  v13 = objc_allocWithZone(UIColor);

  return [v13 initWithRed:v6 green:v8 blue:v10 alpha:v12];
}

id sub_10000F09C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_10000F20C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  sub_10001072C(0, a2, a3, &type metadata accessor for Optional);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - v14;
  sub_100010454(a1, &v18 - v14, a2, a3);
  v16 = a4(0);
  result = (*(*(v16 - 8) + 48))(v15, 1, v16);
  if (result != 1)
  {
    return sub_100010314(v15, a6, a5);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = *(v6 + 32);
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_10001079C;

  return sub_10000C578(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_10000F41C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000F454(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001079C;

  return sub_10000EBA8(a1, a2, v7);
}

void sub_10000F51C()
{
  if (!qword_100114D18)
  {
    sub_10000F5C8();
    sub_10000F738();
    sub_10000F830(&qword_100114D58, sub_10000F5C8);
    v0 = sub_1000DC0B0();
    if (!v1)
    {
      atomic_store(v0, &qword_100114D18);
    }
  }
}

void sub_10000F5C8()
{
  if (!qword_100114D20)
  {
    sub_10000F65C();
    sub_10000F830(&qword_100114D50, sub_10000F65C);
    v0 = sub_1000DC100();
    if (!v1)
    {
      atomic_store(v0, &qword_100114D20);
    }
  }
}

void sub_10000F65C()
{
  if (!qword_100114D28)
  {
    sub_10001072C(255, &qword_100114D30, &type metadata accessor for Headline, &type metadata accessor for ArraySlice);
    sub_10001072C(255, &qword_100114D38, sub_10000F738, &type metadata accessor for Optional);
    sub_10000F7A8();
    v0 = sub_1000DC0B0();
    if (!v1)
    {
      atomic_store(v0, &qword_100114D28);
    }
  }
}

void sub_10000F738()
{
  if (!qword_100114D40)
  {
    sub_1000D9C30();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100114D40);
    }
  }
}

unint64_t sub_10000F7A8()
{
  result = qword_100114D48;
  if (!qword_100114D48)
  {
    sub_10001072C(255, &qword_100114D30, &type metadata accessor for Headline, &type metadata accessor for ArraySlice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114D48);
  }

  return result;
}

uint64_t sub_10000F830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F878(uint64_t a1)
{
  sub_10000F51C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000F8D4()
{
  if (!qword_100114D70)
  {
    sub_10001072C(255, &qword_100114D78, &type metadata accessor for HeadlineCondition, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100114D70);
    }
  }
}

uint64_t sub_10000F970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_10001072C(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000F9E0(uint64_t a1, uint64_t a2)
{
  sub_10001072C(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FA74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001079C;

  return sub_10000E6EC(a1, v4);
}

unint64_t sub_10000FB14()
{
  result = qword_100114D98;
  if (!qword_100114D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100114D98);
  }

  return result;
}

uint64_t sub_10000FB60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ECF4;

  return sub_10000E938(a1, v4);
}

void *sub_10000FC00(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_1000D9C30();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v32 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v30 = *(a1 + 16);
  if (!v30)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = 0;
  v13 = *(v7 + 16);
  v12 = v7 + 16;
  v14 = *(v12 + 56);
  v33 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v26 = a1 + v33;
  v27 = v13;
  v25 = (v12 - 8);
  v29 = (v12 + 16);
  v15 = _swiftEmptyArrayStorage;
  v28 = v12;
  do
  {
    v34 = v11 + 1;
    v27(v10, v26 + v14 * v11, v3, v8);
    v18 = *(*v31 + 16);
    v19 = *v31 + v33;

    v20 = v18 + 1;
    while (--v20)
    {
      sub_10000F830(&unk_100114E40, &type metadata accessor for Headline);
      v19 += v14;
      if (sub_1000DB8D0())
      {

        (*v25)(v10, v3);
        goto LABEL_6;
      }
    }

    v21 = *v29;
    (*v29)(v32, v10, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10007BC9C(0, v15[2] + 1, 1);
      v15 = v35;
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      sub_10007BC9C(v16 > 1, v17 + 1, 1);
      v15 = v35;
    }

    v15[2] = v17 + 1;
    v21(v15 + v33 + v17 * v14, v32, v3);
LABEL_6:
    v11 = v34;
  }

  while (v34 != v30);
  return v15;
}

id sub_10000FEE0(void *a1, id a2)
{
  if ([a2 containsHeadline:a1] || objc_msgSend(a1, "isPressRelease"))
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v5 = [a1 storyStyle];
  if (!v5)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v6 = v5;
  if ([a1 storyType] == 1 || objc_msgSend(a1, "storyType") == 5 || objc_msgSend(a1, "storyType"))
  {
    swift_unknownObjectRelease();

    return 0;
  }

  result = [v6 label];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = sub_1000DB950();

  result = [v6 foreground_color];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  result = [v6 dark_style_foreground_color];
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = objc_allocWithZone(UIColor);
    v16[4] = sub_1000102F4;
    v16[5] = v11;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10000F09C;
    v16[3] = &unk_100109140;
    v13 = _Block_copy(v16);
    v14 = v10;
    v15 = v9;
    [v12 initWithDynamicProvider:v13];
    _Block_release(v13);

    sub_1000DB300();

    swift_unknownObjectRelease();
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100010190(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000101A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

void sub_1000101E0()
{
  if (!qword_100114DA0)
  {
    sub_100010250();
    sub_1000D9640();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100114DA0);
    }
  }
}

unint64_t sub_100010250()
{
  result = qword_100114DA8;
  if (!qword_100114DA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100114DA8);
  }

  return result;
}

uint64_t sub_1000102B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000102FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10001037C()
{
  if (!qword_100114E10)
  {
    sub_1000D9C30();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100114E10);
    }
  }
}

void sub_1000103E8()
{
  if (!qword_100114E20)
  {
    sub_1000D9090();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100114E20);
    }
  }
}

uint64_t sub_100010454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_10001072C(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000104D4()
{
  v1 = sub_1000DA370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10001055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_1000DA370() - 8) + 80);

  return sub_10000C038(a1, a2);
}

uint64_t sub_1000105DC()
{

  return swift_deallocObject();
}

uint64_t sub_100010614(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000ECF4;

  return sub_10000EBA8(a1, a2, v7);
}

void sub_1000106DC()
{
  if (!qword_100114E28)
  {
    v0 = sub_1000DBBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100114E28);
    }
  }
}

void sub_10001072C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1000107AC()
{
  result = qword_100114E78;
  if (!qword_100114E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E78);
  }

  return result;
}

unint64_t sub_100010804()
{
  result = qword_100114E80;
  if (!qword_100114E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E80);
  }

  return result;
}

uint64_t sub_100010858()
{
  type metadata accessor for PrivacyIdentifierManager();
  v0 = swift_allocObject();
  sub_1000D9CD0();
  sub_100002540();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_1000D9DD0();
  *(v0 + 16) = result;
  off_100114E50 = v0;
  return result;
}

uint64_t BilingualFeedManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100010948(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000109EC;

  return sub_100014640();
}

uint64_t sub_1000109EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

unint64_t sub_100010B14()
{
  result = qword_100114E88;
  if (!qword_100114E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E88);
  }

  return result;
}

uint64_t sub_100010B68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000154F4();
  *v5 = v2;
  v5[1] = sub_100010C18;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100010C18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100010D30()
{
  result = qword_100114E90;
  if (!qword_100114E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E90);
  }

  return result;
}

unint64_t sub_100010D88()
{
  result = qword_100114E98;
  if (!qword_100114E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E98);
  }

  return result;
}

unint64_t sub_100010DDC()
{
  result = qword_100114EA0;
  if (!qword_100114EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EA0);
  }

  return result;
}

uint64_t sub_100010E30(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000154F4();
  *v6 = v2;
  v6[1] = sub_10001557C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100010EE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000154F4();
  *v5 = v2;
  v5[1] = sub_100015558;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100010F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100011054;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100011054(uint64_t a1)
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

unint64_t sub_100011158()
{
  result = qword_100114EA8;
  if (!qword_100114EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EA8);
  }

  return result;
}

unint64_t sub_1000111AC()
{
  result = qword_100114EB0;
  if (!qword_100114EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EB0);
  }

  return result;
}

unint64_t sub_100011204()
{
  result = qword_100114EB8;
  if (!qword_100114EB8)
  {
    sub_10001127C();
    sub_1000111AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EB8);
  }

  return result;
}

void sub_10001127C()
{
  if (!qword_100114EC0)
  {
    v0 = sub_1000DBBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100114EC0);
    }
  }
}

uint64_t sub_1000112CC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100010B14();
  *v6 = v2;
  v6[1] = sub_10001079C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100011380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001079C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10001143C()
{
  result = qword_100114EC8;
  if (!qword_100114EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EC8);
  }

  return result;
}

void sub_1000114D8()
{
  if (!qword_100114ED8)
  {
    sub_1000115A4();
    sub_100010DDC();
    sub_100011674(&qword_100114EF0, sub_1000115A4);
    sub_1000116BC();
    v0 = sub_1000D8D20();
    if (!v1)
    {
      atomic_store(v0, &qword_100114ED8);
    }
  }
}

void sub_1000115A4()
{
  if (!qword_100114EE0)
  {
    sub_100010DDC();
    sub_100011620();
    v0 = sub_1000D8D00();
    if (!v1)
    {
      atomic_store(v0, &qword_100114EE0);
    }
  }
}

unint64_t sub_100011620()
{
  result = qword_100114EE8;
  if (!qword_100114EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EE8);
  }

  return result;
}

uint64_t sub_100011674(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000116BC()
{
  result = qword_100114EF8;
  if (!qword_100114EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114EF8);
  }

  return result;
}

uint64_t sub_100011710()
{
  sub_1000153AC(0, &qword_100114F30, sub_100010804, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for _UniqueEntityProvider);
  v1 = v0;
  sub_1000152CC(v0, qword_100128D20);
  sub_100015294(v1, qword_100128D20);
  sub_100010804();
  return sub_1000D8BD0();
}

uint64_t sub_1000117C8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000D8E80();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_1000D91C0() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(sub_1000DB900() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(sub_1000D8E90() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001190C, 0, 0);
}

uint64_t sub_10001190C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  sub_1000114D8();
  sub_1000DB8F0();
  sub_1000D9170();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000D8EA0();
  sub_100011674(&qword_1001150C0, sub_1000115A4);
  v8 = sub_1000D8D10();
  *v7 = 0xD000000000000023;
  v7[1] = 0x80000001000DEE20;
  v7[2] = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100011AD8()
{
  v0 = sub_1000D8CC0();
  sub_1000152CC(v0, qword_100128D38);
  sub_100015294(v0, qword_100128D38);
  return sub_1000D8CA0();
}

uint64_t sub_100011B3C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  sub_100015420(0, &qword_1001150B8, &type metadata accessor for DisplayRepresentation.Image);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v23 = &v22 - v3;
  v22 = sub_1000D8E80();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D91C0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000DB900();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_100015420(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_1000D8E90();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  __chkstk_darwin(v19);
  sub_1000D8E70();
  sub_1000DB8F0();
  sub_1000D9170();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v22);
  sub_1000D8EA0();
  (*(v17 + 56))(v15, 0, 1, v16);
  v20 = sub_1000D8B40();
  (*(*(v20 - 8) + 56))(v23, 1, 1, v20);
  sub_1000D8E70();
  return sub_1000D8B50();
}

uint64_t sub_100011F10()
{
  v0 = sub_1000D8E90();
  sub_1000152CC(v0, qword_100128D50);
  sub_100015294(v0, qword_100128D50);
  return sub_1000D8E70();
}

uint64_t sub_100011F74()
{
  sub_100015420(0, &qword_100115108, &type metadata accessor for IntentDescription);
  v1 = v0;
  sub_1000152CC(v0, qword_100128D68);
  v2 = sub_100015294(v1, qword_100128D68);
  sub_1000D8A90();
  v3 = sub_1000D8AA0();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 0, 1, v3);
}

uint64_t sub_100012044()
{
  result = swift_getKeyPath();
  qword_100128D80 = result;
  return result;
}

uint64_t sub_100012074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  sub_100015420(0, &qword_1001150D8, &type metadata accessor for _GeneratedContentFallback);
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  sub_100015420(0, &qword_1001150E0, &type metadata accessor for _GeneratedContentOptions);
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  sub_100015330();
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_1000D8A10();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  sub_1000153AC(0, &qword_1001150F0, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for IntentDialog._CapturedContent);
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100012294, 0, 0);
}

uint64_t sub_100012294()
{
  v1 = *(v0 + 168);
  sub_1000D8A40();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100010DDC();
  *v4 = v0;
  v4[1] = sub_100012378;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_100015554, 0, &type metadata for ResetPrivacyIdentifierSettingEntity, v5);
}

uint64_t sub_100012378()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100012474, 0, 0);
}

uint64_t sub_100012474()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1000D8A40();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1000D8A40();
  *(v0 + 313) = *(v0 + 312);
  if (qword_100114048 != -1)
  {
    swift_once();
  }

  v5 = qword_100128D80;
  *(v0 + 288) = qword_100128D80;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_100011674(&qword_1001150C0, sub_1000115A4);
  *v7 = v0;
  v7[1] = sub_1000125DC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000125DC()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1000129C4;
  }

  else
  {
    v6 = sub_10001274C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001274C()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1000D8A40();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1000D8C90();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000D8CD0();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10001143C();
  sub_1000111AC();
  sub_1000D89D0();
  (*(v3 + 16))(v1, v12, v2);
  sub_1000D8A00();
  sub_1000D8A20();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000129C4()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  (*(v0[30] + 8))(v0[32], v0[29]);

  v6 = v0[1];
  v7 = v0[38];

  return v6();
}

uint64_t sub_100012A8C()
{
  sub_1000153AC(0, &qword_1001150F8, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for _NLGRepresentationEntity);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  v5 = &v7 - v4;
  if (qword_100114048 != -1)
  {
    swift_once();
  }

  sub_1000D8B20();

  sub_1000111AC();
  sub_1000138F8(&qword_100115100, &qword_1001150F8, &type metadata accessor for _NLGRepresentationEntity);
  sub_1000D8B10();
  return (*(v2 + 8))(v5, v1);
}

__n128 sub_100012C38@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1000D8A40();
  result = v6;
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_100012C7C(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  sub_1000D8A50();
}

uint64_t (*sub_100012CE4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000D8A30();
  return sub_100012D58;
}

uint64_t sub_100012D5C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_1000D8A40();
  *a1 = v5;
  return result;
}

uint64_t sub_100012D98(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_1000D8A50();
}

uint64_t (*sub_100012DD0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1000D8A30();
  return sub_10001555C;
}

uint64_t sub_100012E44()
{
  if (qword_100114048 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100012EA4()
{
  result = qword_100114F00;
  if (!qword_100114F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F00);
  }

  return result;
}

unint64_t sub_100012EFC()
{
  result = qword_100114F08;
  if (!qword_100114F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F08);
  }

  return result;
}

uint64_t sub_100012FE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100114040 != -1)
  {
    swift_once();
  }

  sub_100015420(0, &qword_100115108, &type metadata accessor for IntentDescription);
  v3 = sub_100015294(v2, qword_100128D68);

  return sub_100015474(v3, a1);
}

uint64_t sub_10001307C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000ECF4;

  return sub_100012074(a1, v5, v4);
}

uint64_t sub_100013128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014948();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100013170()
{
  result = qword_100114F10;
  if (!qword_100114F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F10);
  }

  return result;
}

unint64_t sub_1000131C8()
{
  result = qword_100114F18;
  if (!qword_100114F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F18);
  }

  return result;
}

unint64_t sub_100013220()
{
  result = qword_100114F20;
  if (!qword_100114F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F20);
  }

  return result;
}

uint64_t sub_1000132D4()
{
  if (qword_100114020 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(off_100114E50 + 2);

  sub_1000D9DA0();

  *v1 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000133CC()
{
  if (qword_100114020 != -1)
  {
    swift_once();
  }

  v1 = *(off_100114E50 + 2);
  *(v0 + 16) = *(v0 + 17);

  sub_1000D9DB0();

  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_1000DB910();
  [v2 postNotificationName:v3 object:0 userInfo:0 options:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001350C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100114028 != -1)
  {
    swift_once();
  }

  sub_1000153AC(0, &qword_100114F30, sub_100010804, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for _UniqueEntityProvider);
  v3 = v2;
  v4 = sub_100015294(v2, qword_100128D20);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_100013624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000153AC(255, &qword_100114F30, sub_100010804, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for _UniqueEntityProvider);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000136A4()
{
  result = qword_100114F40;
  if (!qword_100114F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F40);
  }

  return result;
}

unint64_t sub_1000136FC()
{
  result = qword_100114F48;
  if (!qword_100114F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F48);
  }

  return result;
}

unint64_t sub_100013758()
{
  result = qword_100114F50;
  if (!qword_100114F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F50);
  }

  return result;
}

uint64_t sub_1000137B8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100013800@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100015294(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000138F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1000153AC(255, a2, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001395C(uint64_t a1)
{
  v2 = sub_100010DDC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000139AC()
{
  result = qword_100114F68;
  if (!qword_100114F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F68);
  }

  return result;
}

uint64_t sub_100013A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000ECF4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100013AC8(uint64_t a1)
{
  v2 = sub_100013758();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100013B14()
{
  v0 = qword_100114E58;

  return v0;
}

unint64_t sub_100013B50()
{
  result = qword_100114F70;
  if (!qword_100114F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F70);
  }

  return result;
}

uint64_t sub_100013BA4(uint64_t a1)
{
  v2 = sub_100010DDC();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004CLL, 0x80000001000E8020, a1, v2);
}

uint64_t sub_100013C08()
{
  sub_100015240();
  v1 = sub_1000D8C30();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100013C78()
{
  result = qword_100114F78;
  if (!qword_100114F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F78);
  }

  return result;
}

uint64_t sub_100013CCC()
{
  v0 = sub_1000D8E90();
  sub_1000152CC(v0, qword_100128D88);
  sub_100015294(v0, qword_100128D88);
  return sub_1000D8E70();
}

uint64_t (*sub_100013D30(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000D8A30();
  return sub_10001555C;
}

void sub_100013DA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100013DF4()
{
  result = qword_100114F80;
  if (!qword_100114F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F80);
  }

  return result;
}

unint64_t sub_100013E4C()
{
  result = qword_100114F88;
  if (!qword_100114F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F88);
  }

  return result;
}

uint64_t sub_100013EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015198();
  v5 = sub_100015240();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100013F0C()
{
  v0 = qword_100114E68;

  return v0;
}

unint64_t sub_100013F4C()
{
  result = qword_100114F90;
  if (!qword_100114F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F90);
  }

  return result;
}

unint64_t sub_100013FA4()
{
  result = qword_100114F98;
  if (!qword_100114F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114F98);
  }

  return result;
}

uint64_t sub_1000140B0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100015198();
  v8 = sub_1000151EC();
  v9 = sub_100015240();
  *v6 = v2;
  v6[1] = sub_100014184;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100014184()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_10001428C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014E2C();
  *a1 = result;
  return result;
}

uint64_t sub_1000142B4(uint64_t a1)
{
  v2 = sub_100013DF4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100014324(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100014330(uint64_t *a1, int a2)
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

uint64_t sub_100014378(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for TextOverflowModifier.Layout(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000143D8(uint64_t a1, int a2)
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

uint64_t sub_100014420(uint64_t result, int a2, int a3)
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

void sub_1000144C8()
{
  if (!qword_100115068)
  {
    sub_1000D8A10();
    sub_1000111AC();
    sub_10001455C();
    v0 = sub_1000D8BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115068);
    }
  }
}

unint64_t sub_10001455C()
{
  result = qword_100115070;
  if (!qword_100115070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115070);
  }

  return result;
}

uint64_t sub_100014640()
{
  v1 = sub_1000D8E80();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000D91C0() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_1000DB900() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_1000D8E90() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100014780, 0, 0);
}

uint64_t sub_100014780()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000114D8();
  sub_1000DB8F0();
  sub_1000D9170();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000D8EA0();
  sub_100011674(&qword_1001150C0, sub_1000115A4);
  v7 = sub_1000D8D10();

  v8 = v0[1];

  return v8(0xD000000000000023, 0x80000001000DEE20, v7);
}

uint64_t sub_100014948()
{
  sub_100015420(0, &qword_1001150C8, &type metadata accessor for Bool.IntentDisplayName);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v37 = &v28 - v2;
  v38 = sub_1000D8C20();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v38);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015420(0, &qword_100115088, &type metadata accessor for IntentDialog);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  sub_100015420(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28 - v16;
  v18 = sub_1000D8E90();
  v35 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v36 = &type metadata accessor for IntentParameter;
  sub_1000153AC(0, &qword_100115098, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for IntentParameter);
  v29 = v21;
  sub_1000D8E70();
  v22 = *(v19 + 56);
  v33 = v19 + 56;
  v34 = v22;
  v22(v17, 1, 1, v18);
  v23 = sub_1000D8A10();
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  v24(v11, 1, 1, v23);
  v32 = enum case for InputConnectionBehavior.default(_:);
  v25 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v25;
  v25(v6);
  sub_100010DDC();
  v29 = sub_1000D8A70();
  sub_1000153AC(0, &qword_1001150D0, sub_100011620, &type metadata for Bool, v36);
  sub_1000D8E70();
  v34(v17, 1, 1, v35);
  LOBYTE(v39) = 2;
  v26 = sub_1000DBBD0();
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  v24(v13, 1, 1, v23);
  v31(v6, v32, v38);
  sub_1000D8A80();
  return v29;
}

uint64_t sub_100014E2C()
{
  v21[0] = sub_1000D8C20();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015420(0, &qword_100115088, &type metadata accessor for IntentDialog);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  sub_100015420(0, &qword_100115090, &type metadata accessor for LocalizedStringResource);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_1000D8E90();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000153AC(0, &qword_100115098, sub_1000111AC, &type metadata for ResetPrivacyIdentifierSettingEntity, &type metadata accessor for IntentParameter);
  sub_1000D8E70();
  sub_1000D8E70();
  (*(v16 + 56))(v14, 0, 1, v15);
  v18 = sub_1000D8A10();
  memset(&v21[1], 0, 24);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100010DDC();
  return sub_1000D8A70();
}

unint64_t sub_100015198()
{
  result = qword_1001150A0;
  if (!qword_1001150A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001150A0);
  }

  return result;
}

unint64_t sub_1000151EC()
{
  result = qword_1001150A8;
  if (!qword_1001150A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001150A8);
  }

  return result;
}

unint64_t sub_100015240()
{
  result = qword_1001150B0;
  if (!qword_1001150B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001150B0);
  }

  return result;
}

uint64_t sub_100015294(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000152CC(uint64_t a1, uint64_t *a2)
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

void sub_100015330()
{
  if (!qword_1001150E8)
  {
    sub_10001143C();
    sub_1000111AC();
    v0 = sub_1000D89E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001150E8);
    }
  }
}

void sub_1000153AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_100015420(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100015474(uint64_t a1, uint64_t a2)
{
  sub_100015420(0, &qword_100115108, &type metadata accessor for IntentDescription);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000154F4()
{
  result = qword_100115110;
  if (!qword_100115110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115110);
  }

  return result;
}

__n128 sub_100015580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000155C0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100015604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100016838(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100015644(uint64_t a1)
{
  v2 = sub_100016BA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100015680(uint64_t a1)
{
  v2 = sub_100016BA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000156BC(void *a1)
{
  v3 = v1;
  sub_100016BF8(0, &qword_100115130, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v19[-v9];
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100016BA4();
  sub_1000DC480();
  v12 = *v3;
  v13 = v3[1];
  v19[15] = 0;
  sub_1000DC2B0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v19[14] = 1;
    sub_1000DC2B0();
    v16 = v3[4];
    v17 = v3[5];
    v19[13] = 2;
    sub_1000DC270();
  }

  return (*(v7 + 8))(v10, v6);
}

Swift::Int sub_100015848()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1000DC420();
  sub_1000DB9F0();
  sub_1000DB9F0();
  if (v6)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  return sub_1000DC460();
}

void sub_1000158F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1000DB9F0();
  sub_1000DB9F0();
  if (v6)
  {
    sub_1000DC440(1u);

    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }
}

Swift::Int sub_10001598C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1000DC420();
  sub_1000DB9F0();
  sub_1000DB9F0();
  if (v6)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  return sub_1000DC460();
}

uint64_t sub_100015A30(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1000DC360()) && (v2 == v6 && v4 == v7 || (sub_1000DC360()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_1000DC360() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

double sub_100015B14@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100016944(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_100015B74()
{
  result = qword_100115118;
  if (!qword_100115118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115118);
  }

  return result;
}

uint64_t sub_100015BC8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_1000DAE60();
  v25 = *(v27 - 8);
  v2 = *(v25 + 64);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DA890();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000172E0();
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000175D8();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_1000DAC80();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1000176D4(0, &qword_1001151E8, sub_100017374);
  sub_100015F48(v1, &v13[*(v20 + 44)]);
  (*(v5 + 104))(v8, enum case for DynamicTypeSize.large(_:), v4);
  v21 = sub_10001768C(&qword_1001151E0, sub_1000172E0);
  sub_1000DB260();
  (*(v5 + 8))(v8, v4);
  sub_1000178D0(v13, sub_1000172E0);
  v22 = v24;
  sub_1000DAE40();
  v28 = v10;
  v29 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1000DB2A0();
  (*(v25 + 8))(v22, v27);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_100015F48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v3 = sub_1000D91C0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DB900();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017570();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v65 - v13;
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[5];
  v66 = v16;
  v81 = v14;
  v82 = v15;
  v78 = sub_100017740();

  v18 = sub_1000DB170();
  v20 = v19;
  v22 = v21;
  sub_1000DB070();
  sub_1000DAFD0();
  sub_1000DB010();

  v23 = sub_1000DB100();
  v25 = v24;
  v27 = v26;

  sub_100017794(v18, v20, v22 & 1);

  LODWORD(v81) = sub_1000DADE0();
  v70 = sub_1000DB0E0();
  v69 = v28;
  v71 = v29;
  v72 = v30;
  sub_100017794(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v67 = v17 == 0;
  v31 = 9666786;
  if (v17)
  {
    v31 = v66;
  }

  v32 = 0xA300000000000000;
  if (v17)
  {
    v32 = v17;
  }

  v81 = v31;
  v82 = v32;

  v33 = sub_1000DB170();
  v35 = v34;
  v37 = v36;
  sub_1000DB070();
  sub_1000DAFD0();
  sub_1000DB010();

  v38 = sub_1000DB100();
  v40 = v39;
  v42 = v41;

  sub_100017794(v33, v35, v37 & 1);

  LODWORD(v81) = sub_1000DADE0();
  v43 = sub_1000DB0E0();
  v45 = v44;
  v65 = v44;
  LOBYTE(v33) = v46;
  v48 = v47;
  v66 = v47;
  sub_100017794(v38, v40, v42 & 1);

  v49 = swift_getKeyPath();
  v81 = v43;
  v82 = v45;
  LOBYTE(v38) = v33 & 1;
  v83 = v33 & 1;
  v84 = v48;
  v85 = v49;
  v86 = 1;
  v87 = 0;
  sub_1000DB8F0();
  sub_1000D9170();
  v79 = sub_1000DB9B0();
  v80 = v50;
  v51 = sub_1000DB170();
  v53 = v52;
  v55 = v54;
  sub_100017444();
  sub_1000177AC();
  v56 = v75;
  sub_1000DB270();
  sub_100017794(v51, v53, v55 & 1);

  sub_100017794(v43, v65, v38);

  v57 = v76;
  sub_10001785C(v56, v76);
  v58 = v77;
  v59 = v70;
  v60 = v69;
  *v77 = v70;
  v58[1] = v60;
  LOBYTE(v51) = v71 & 1;
  *(v58 + 16) = v71 & 1;
  v61 = KeyPath;
  v58[3] = v72;
  v58[4] = v61;
  v58[5] = 1;
  *(v58 + 48) = 0;
  v58[7] = 0x4014000000000000;
  *(v58 + 64) = 0;
  v62 = v58;
  sub_1000173CC();
  sub_10001785C(v57, v62 + *(v63 + 64));
  sub_1000178C0(v59, v60, v51);

  sub_1000178D0(v56, sub_100017570);
  sub_1000178D0(v57, sub_100017570);
  sub_100017794(v59, v60, v51);
}

uint64_t sub_100016508@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_100015BC8(a1);
}

uint64_t sub_100016544@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v6;
}

uint64_t sub_1000165BC@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v15 = sub_1000DAE60();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016EE8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  *v9 = sub_1000DAD00();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  sub_1000176D4(0, &qword_100115180, sub_100016F4C);
  v12 = *(v11 + 44);
  v16 = v10;
  sub_100017520(0, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
  sub_100016FFC();
  sub_1000170F0();
  sub_100017144();

  sub_1000DB590();
  sub_1000DAE50();
  sub_10001768C(&qword_100115190, sub_100016EE8);
  sub_1000DB2A0();
  (*(v2 + 8))(v5, v15);
  return sub_1000178D0(v9, sub_100016EE8);
}

uint64_t sub_100016838(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100016944@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100016BF8(0, &qword_100115120, &type metadata accessor for KeyedDecodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v24 - v9;
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100016BA4();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v30 = 0;
  v12 = sub_1000DC1E0();
  v14 = v13;
  v26 = a2;
  v27 = v12;
  v29 = 1;
  v15 = sub_1000DC1E0();
  v25 = v16;
  v28 = 2;
  v17 = sub_1000DC1A0();
  v18 = v10;
  v20 = v19;
  (*(v7 + 8))(v18, v6);
  result = sub_100006D0C(a1);
  v22 = v26;
  *v26 = v27;
  v22[1] = v14;
  v23 = v25;
  v22[2] = v15;
  v22[3] = v23;
  v22[4] = v17;
  v22[5] = v20;
  return result;
}

unint64_t sub_100016BA4()
{
  result = qword_100115128;
  if (!qword_100115128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115128);
  }

  return result;
}

void sub_100016BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100016BA4();
    v7 = a3(a1, &type metadata for QuoteDetailItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for QuoteDetailItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QuoteDetailItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100016DB8()
{
  result = qword_100115138;
  if (!qword_100115138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115138);
  }

  return result;
}

unint64_t sub_100016E10()
{
  result = qword_100115140;
  if (!qword_100115140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115140);
  }

  return result;
}

unint64_t sub_100016E68()
{
  result = qword_100115148;
  if (!qword_100115148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115148);
  }

  return result;
}

void sub_100016EE8()
{
  if (!qword_100115150)
  {
    sub_100016F4C();
    sub_100017078();
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_100115150);
    }
  }
}

void sub_100016F4C()
{
  if (!qword_100115158)
  {
    sub_100017520(255, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    sub_100016FFC();
    v0 = sub_1000DB5A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115158);
    }
  }
}

unint64_t sub_100016FFC()
{
  result = qword_100115168;
  if (!qword_100115168)
  {
    sub_100017520(255, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115168);
  }

  return result;
}

unint64_t sub_100017078()
{
  result = qword_100115170;
  if (!qword_100115170)
  {
    sub_100016F4C();
    sub_1000170F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115170);
  }

  return result;
}

unint64_t sub_1000170F0()
{
  result = qword_100115178;
  if (!qword_100115178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115178);
  }

  return result;
}

unint64_t sub_100017144()
{
  result = qword_100115188;
  if (!qword_100115188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115188);
  }

  return result;
}

uint64_t sub_100017198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000171E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001723C()
{
  sub_100016EE8();
  sub_10001768C(&qword_100115190, sub_100016EE8);
  return swift_getOpaqueTypeConformance2();
}

void sub_1000172E0()
{
  if (!qword_100115198)
  {
    sub_100017374();
    sub_10001768C(&qword_1001151D0, sub_100017374);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115198);
    }
  }
}

void sub_100017374()
{
  if (!qword_1001151A0)
  {
    sub_1000173CC();
    v0 = sub_1000DB650();
    if (!v1)
    {
      atomic_store(v0, &qword_1001151A0);
    }
  }
}

void sub_1000173CC()
{
  if (!qword_1001151A8)
  {
    sub_100017444();
    sub_100017570();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1001151A8);
    }
  }
}

void sub_100017444()
{
  if (!qword_1001151B0)
  {
    sub_1000174A4();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_1001151B0);
    }
  }
}

void sub_1000174A4()
{
  if (!qword_1001151B8)
  {
    sub_100017520(255, &qword_1001151C0, &type metadata for Int, &type metadata accessor for Optional);
    v0 = sub_1000DAEA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001151B8);
    }
  }
}

void sub_100017520(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100017570()
{
  if (!qword_1001151C8)
  {
    sub_100017444();
    sub_1000DAEB0();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_1001151C8);
    }
  }
}

void sub_1000175D8()
{
  if (!qword_1001151D8)
  {
    sub_1000172E0();
    sub_10001768C(&qword_1001151E0, sub_1000172E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001151D8);
    }
  }
}

uint64_t sub_10001768C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000176D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DA800();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100017740()
{
  result = qword_1001151F0;
  if (!qword_1001151F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001151F0);
  }

  return result;
}

uint64_t sub_100017794(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000177AC()
{
  result = qword_1001151F8;
  if (!qword_1001151F8)
  {
    sub_100017444();
    sub_10001768C(&qword_100115200, sub_1000174A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001151F8);
  }

  return result;
}

uint64_t sub_10001785C(uint64_t a1, uint64_t a2)
{
  sub_100017570();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000178C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000178D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100017930()
{
  sub_1000175D8();
  sub_1000172E0();
  sub_10001768C(&qword_1001151E0, sub_1000172E0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100017A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100017B20()
{
  result = sub_1000DA370();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100017C1C(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v26 = _swiftEmptyArrayStorage;
  sub_10007BCEC(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v21 = v8;
    a1(v22, &v21);
    if (v3)
    {
      break;
    }

    v10 = v22[0];
    v9 = v22[1];
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v26 = v5;
    v15 = v5[2];
    v14 = v5[3];
    if (v15 >= v14 >> 1)
    {
      v19 = v25;
      v18 = v23;
      sub_10007BCEC((v14 > 1), v15 + 1, 1);
      v11 = v18;
      v13 = v19;
      v5 = v26;
    }

    v5[2] = v15 + 1;
    v16 = &v5[6 * v15];
    v16[4] = v10;
    v16[5] = v9;
    v16[6] = v11;
    v16[7] = v12;
    *(v16 + 4) = v13;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017D4C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for WidgetStock();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_10007BC0C(0, v11, 0);
  v12 = v22;
  v13 = *(sub_1000D9B40() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_10007BC0C(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_100024B14(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for WidgetStock);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_100017F48(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_1000DC050();
    v9 = *(type metadata accessor for PreparedSparkline.Entry(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1000DC020();
      v12 = v14[2];
      sub_1000DC060();
      sub_1000DC070();
      sub_1000DC030();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001808C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_1000D9B40() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_100018120@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = result;
  *v17 = *v2;
  *&v17[16] = *(v2 + 16);
  *&v17[32] = *(v2 + 32);
  v6 = sub_100024310();
  sub_100024468(v6, v4, *(*v17 + 16));
  if (v8)
  {
    v9 = *(*v17 + 16);
  }

  else
  {
    v9 = v7;
  }

  result = sub_100024310();
  if (v9 < result)
  {
    goto LABEL_13;
  }

  v10 = result;
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(*v17 + 16);
  if (v11 >= result && v11 >= v9)
  {
    v16 = *(v3 + 40);
    v13 = sub_1000D9C30();
    v14 = *(v13 - 8);
    result = v13 - 8;
    v15 = *v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    *a2 = *v17;
    *(a2 + 8) = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = (2 * v9) | 1;
    *(a2 + 32) = *&v17[8];
    *(a2 + 48) = *&v17[24];
    *(a2 + 64) = v16;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100018248(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1000DA830();
    sub_100025364(qword_100115428, &type metadata accessor for LayoutSubviews);
    sub_1000DBCC0();
    sub_1000DBD10();
    sub_1000DBCF0();
    if (v4)
    {
      sub_1000DBD10();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1000DBCC0();
    if (v6 >= v5)
    {
      sub_1000DBD60();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018400(uint64_t result, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a2(0);
    sub_100025364(a3, a4);
    sub_1000DBCC0();
    sub_1000DBD10();
    sub_1000DBCF0();
    if (v10)
    {
      sub_1000DBD10();
    }

    else
    {
      v8 = v9;
    }

    result = sub_1000DBCC0();
    if (v8 >= v9)
    {
      sub_1000DBD60();
      (*(*(v7 - 8) + 8))(v4, v7);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001854C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000DB720();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000DA350();
  v8 = sub_1000DBDD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DetailTimelineProvider::placeholder(in:)", v9, 2u);
  }

  sub_1000DB7B0();
  sub_100058718(v6, 0, a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000186A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100023750(0);
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = sub_1000D8AF0();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = sub_1000D9090();
  v4[10] = v10;
  v11 = *(v10 - 8);
  v4[11] = v11;
  v12 = *(v11 + 64) + 15;
  v4[12] = swift_task_alloc();
  v13 = sub_1000D96D0();
  v4[13] = v13;
  v14 = *(v13 - 8);
  v4[14] = v14;
  v15 = *(v14 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_100023784(0);
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100018878, 0, 0);
}

uint64_t sub_100018878()
{
  v49 = v0;
  v1 = v0[2].i64[1];
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DetailTimelineProvider::snapshot(for:in:)", v4, 2u);
  }

  v5 = v0[8].i64[0];
  v6 = v0[6].i64[1];
  v7 = v0[7].i64[0];
  v8 = v0[1].i64[1];

  v47 = 0x2D6C6F626D7973;
  v48 = 0xE700000000000000;
  sub_1000D9960();
  v9 = (*(v7 + 48))(v5, 1, v6);
  v10 = v0[8].i64[0];
  if (v9)
  {
    sub_100024BE4(v0[8].i64[0], sub_100023784);
    v11 = 0xE300000000000000;
    v12._countAndFlagsBits = 7104878;
  }

  else
  {
    v14 = v0[7].i64[0];
    v13 = v0[7].i64[1];
    v15 = v0[6].i64[1];
    (*(v14 + 16))(v13, v0[8].i64[0], v15);
    sub_100024BE4(v10, sub_100023784);
    v16 = sub_1000D96C0();
    v11 = v17;
    (*(v14 + 8))(v13, v15);
    v12._countAndFlagsBits = v16;
  }

  v18 = v0[5].i64[0];
  v19 = v0[5].i64[1];
  v21 = v0[4].i64[0];
  v20 = v0[4].i64[1];
  v22 = v0[3].i64[0];
  v23 = v0[3].i64[1];
  v24 = v0[1].i64[1];
  v12._object = v11;
  sub_1000DBA00(v12);

  v51._countAndFlagsBits = 45;
  v51._object = 0xE100000000000000;
  sub_1000DBA00(v51);
  sub_1000D9970();
  sub_100025364(&qword_100115300, &type metadata accessor for SymbolWidgetConfigurationIntent);
  sub_1000D8950();
  sub_1000D8AE0();
  (*(v21 + 8))(v20, v23);
  v25 = *(v19 + 48);
  if (v25(v22, 1, v18) == 1)
  {
    v26 = v0[5].i64[0];
    v27 = v0[3].i64[0];
    v28 = v0[6].i64[0];
    sub_1000D9050();
    if (v25(v27, 1, v26) != 1)
    {
      sub_100024BE4(v0[3].i64[0], sub_100023750);
    }
  }

  else
  {
    (*(v0[5].i64[1] + 32))(v0[6].i64[0], v0[3].i64[0], v0[5].i64[0]);
  }

  v30 = v0[5].i64[1];
  v29 = v0[6].i64[0];
  v31 = v0[5].i64[0];
  v32 = v0[2].i64[1];
  sub_100025364(&qword_100115308, &type metadata accessor for Date);
  v52._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v52);

  (*(v30 + 8))(v29, v31);
  v33 = v47;
  v34 = v48;
  v0[8].i64[1] = v47;
  v0[9].i64[0] = v34;

  v35 = sub_1000DA350();
  v36 = sub_1000DBDD0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_1000848C8(v33, v34, &v47);
    _os_log_impl(&_mh_execute_header, v35, v36, "Will fetch widget snapshot, id=%{public}s", v37, 0xCu);
    sub_100006D0C(v38);
  }

  v39 = v0[1].i64[1];
  v40 = swift_task_alloc();
  v0[9].i64[1] = v40;
  v41 = v0[2];
  v40[1].i64[0] = v33;
  v40[1].i64[1] = v34;
  v40[2] = vextq_s8(v41, v41, 8uLL);
  v40[3].i64[0] = v39;
  v42 = async function pointer to withOSActivity<A>(_:operation:)[1];
  v43 = swift_task_alloc();
  v0[10].i64[0] = v43;
  v44 = type metadata accessor for DetailTimelineEntry();
  *v43 = v0;
  v43[1] = sub_100018D74;
  v45 = v0[1].i64[0];

  return withOSActivity<A>(_:operation:)(v45, "Symbol Widget Snapshot", 22, 2, &unk_1000DF448, v40, v44);
}

uint64_t sub_100018D74()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 152);

    return _swift_task_switch(sub_100018EB0, 0, 0);
  }
}

uint64_t sub_100018EB0()
{
  v18 = v0;
  v1 = v0[18];
  v2 = v0[5];

  v3 = sub_1000DA350();
  v4 = sub_1000DBDD0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1000848C8(v7, v6, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "Did fetch widget snapshot, id=%{public}s", v8, 0xCu);
    sub_100006D0C(v9);
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100019030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return _swift_task_switch(sub_100019058, 0, 0);
}

uint64_t sub_100019058()
{
  if (qword_1001140B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v1;
  v4 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  type metadata accessor for DetailTimelineEntry();
  *v5 = v0;
  v5[1] = sub_1000191C8;
  v6 = *(v0 + 32);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v6, v0 + 16, &unk_1000DF458, v3, 0, 0, 0xD000000000000029, 0x80000001000E82E0);
}

uint64_t sub_1000191C8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 48);

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_10001930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for DetailTimelineProvider.Configuration(0);
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v7 = sub_1000DB720();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  v10 = sub_1000DB7D0();
  v4[14] = v10;
  v11 = *(v10 - 8);
  v4[15] = v11;
  v12 = *(v11 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100019474, 0, 0);
}

uint64_t sub_100019474()
{
  v38 = v0;
  v1 = v0[5];
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v37 = v5;
    *v4 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v6 = sub_1000848C8(v0[2], v0[3], &v37);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting snapshot fetch, id=%s", v4, 0xCu);
    sub_100006D0C(v5);
  }

  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[6];
  v10 = *(v0[15] + 16);
  v10(v0[17], v9, v8);
  v10(v7, v9, v8);
  v11 = sub_1000DA350();
  v12 = sub_1000DBDD0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  if (v13)
  {
    v18 = v0[12];
    v19 = v0[13];
    v20 = v0[11];
    v34 = v0[16];
    v21 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v21 = 136315394;
    v35 = v12;
    sub_1000DB7B0();
    sub_100025364(&qword_100115310, &type metadata accessor for WidgetFamily);
    v22 = sub_1000DC320();
    log = v11;
    v24 = v23;
    (*(v18 + 8))(v19, v20);
    v25 = *(v16 + 8);
    v25(v15, v17);
    v26 = sub_1000848C8(v22, v24, &v37);

    *(v21 + 4) = v26;
    *(v21 + 12) = 1024;
    LODWORD(v26) = sub_1000DB7C0() & 1;
    v25(v34, v17);
    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, log, v35, "Snapshot context. family: %s, isPreview: %{BOOL}d", v21, 0x12u);
    sub_100006D0C(v36);
  }

  else
  {
    v27 = *(v16 + 8);
    v27(v0[16], v0[14]);

    v27(v15, v17);
  }

  v28 = swift_task_alloc();
  v0[18] = v28;
  *v28 = v0;
  v28[1] = sub_100019840;
  v29 = v0[10];
  v30 = v0[7];
  v31 = v0[5];

  return sub_100019CE4(v29, v30);
}

uint64_t sub_100019840()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10001993C, 0, 0);
}

uint64_t sub_10001993C()
{
  v21 = v0;
  v1 = v0[5];
  sub_10002337C(v0[10], v0[9], type metadata accessor for DetailTimelineProvider.Configuration);
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    v9 = v5 + *(v6 + 20);
    v10 = sub_1000D9860();
    v12 = v11;
    sub_100024BE4(v5, type metadata accessor for DetailTimelineProvider.Configuration);
    v13 = sub_1000848C8(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Resolved configuration. newsDisplayConfiguration: %{public}s", v7, 0xCu);
    sub_100006D0C(v8);
  }

  else
  {

    sub_100024BE4(v5, type metadata accessor for DetailTimelineProvider.Configuration);
  }

  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_100019B2C;
  v15 = v0[10];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];

  return sub_10001A934(v18, v15, v16);
}

uint64_t sub_100019B2C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_100019C28, 0, 0);
}

uint64_t sub_100019C28()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[9];
  sub_100024BE4(v0[10], type metadata accessor for DetailTimelineProvider.Configuration);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100019CE4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100023784(0);
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = sub_1000D96D0();
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v9 = sub_1000D9660();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_100019E3C, 0, 0);
}

uint64_t sub_100019E3C()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[7];
  sub_1000D96B0();
  sub_1000D9960();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100024BE4(v0[9], sub_100023784);
    v6 = v0[8];
    v7 = sub_1000DA350();
    v8 = sub_1000DBDB0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v11 = sub_1000848C8(v0[2], v0[3], &v28);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Malformed widget configuration, id=%s", v9, 0xCu);
      sub_100006D0C(v10);
    }

    v12 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v13 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) + 20);
    v14 = enum case for NewsDisplayConfiguration.afterHours(_:);
    v15 = sub_1000D9870();
    (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
    v16 = v0[16];
    v17 = v0[12];
    v18 = v0[13];
    v19 = v0[9];
    v20 = v0[6];
    *v20 = 1280328001;
    v20[1] = 0xE400000000000000;

    v21 = v0[1];

    return v21();
  }

  else
  {
    (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
    sub_100024A74(0, &qword_100115350);
    v23 = swift_allocObject();
    v0[17] = v23;
    *(v23 + 16) = xmmword_1000DDD30;
    *(v23 + 32) = sub_1000D96A0();
    *(v23 + 40) = v24;
    v25 = async function pointer to SymbolWidgetQuery.entities(for:)[1];
    v26 = swift_task_alloc();
    v0[18] = v26;
    *v26 = v0;
    v26[1] = sub_10001A194;
    v27 = v0[16];

    return SymbolWidgetQuery.entities(for:)(v23);
  }
}

uint64_t sub_10001A194(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *v2;
  *(*v2 + 152) = a1;

  v6 = *(v3 + 136);
  if (v1)
  {

    v7 = sub_10001A6FC;
  }

  else
  {

    v7 = sub_10001A2E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001A2E4()
{
  v42 = v0;
  v1 = v0[19];
  v2 = v0[11];
  if (*(v1 + 16))
  {
    v3 = v0[8];
    (*(v2 + 16))(v0[12], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[10]);

    v4 = sub_1000DA350();
    v5 = sub_1000DBDD0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v41 = v7;
      *v6 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v8 = sub_1000848C8(v0[4], v0[5], &v41);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully loaded widget entity, id=%s", v6, 0xCu);
      sub_100006D0C(v7);
    }

    v9 = v0[15];
    v39 = v0[14];
    v40 = v0[16];
    v38 = v0[13];
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    v16 = sub_1000D96C0();
    v18 = v17;
    v19 = type metadata accessor for DetailTimelineProvider.Configuration(0);
    sub_1000228C0(v15 + *(v19 + 20));
    v20 = *(v10 + 8);
    v20(v11, v12);
    v20(v38, v12);
    (*(v9 + 8))(v40, v39);
  }

  else
  {
    (*(v2 + 8))(v0[13], v0[10]);

    v21 = v0[8];
    v22 = sub_1000DA350();
    v23 = sub_1000DBDB0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v26 = sub_1000848C8(v0[2], v0[3], &v41);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Malformed widget configuration, id=%s", v24, 0xCu);
      sub_100006D0C(v25);
    }

    v27 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v28 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) + 20);
    v29 = enum case for NewsDisplayConfiguration.afterHours(_:);
    v30 = sub_1000D9870();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    v18 = 0xE400000000000000;
    v16 = 1280328001;
  }

  v31 = v0[16];
  v33 = v0[12];
  v32 = v0[13];
  v34 = v0[9];
  v35 = v0[6];
  *v35 = v16;
  v35[1] = v18;

  v36 = v0[1];

  return v36();
}

uint64_t sub_10001A6FC()
{
  v19 = v0;
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = v0[8];
  v2 = sub_1000DA350();
  v3 = sub_1000DBDB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v6 = sub_1000848C8(v0[2], v0[3], &v18);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Malformed widget configuration, id=%s", v4, 0xCu);
    sub_100006D0C(v5);
  }

  v7 = v0[6];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v8 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) + 20);
  v9 = enum case for NewsDisplayConfiguration.afterHours(_:);
  v10 = sub_1000D9870();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  v11 = v0[16];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[9];
  v15 = v0[6];
  *v15 = 1280328001;
  v15[1] = 0xE400000000000000;

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001A934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[447] = v3;
  v4[446] = a3;
  v4[445] = a2;
  v4[444] = a1;
  sub_100023704(0);
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[448] = swift_task_alloc();
  v7 = sub_1000DB720();
  v4[449] = v7;
  v8 = *(v7 - 8);
  v4[450] = v8;
  v9 = *(v8 + 64) + 15;
  v4[451] = swift_task_alloc();
  v4[452] = swift_task_alloc();
  v4[453] = swift_task_alloc();
  v10 = type metadata accessor for DetailContentViewModel(0);
  v4[454] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[455] = swift_task_alloc();
  v12 = *(*(type metadata accessor for HeadlineViewModel(0) - 8) + 64) + 15;
  v4[456] = swift_task_alloc();
  sub_100023694(0);
  v4[457] = v13;
  v14 = *(v13 - 8);
  v4[458] = v14;
  v15 = *(v14 + 64) + 15;
  v4[459] = swift_task_alloc();
  v4[460] = swift_task_alloc();
  sub_100023660(0);
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[461] = swift_task_alloc();
  v4[462] = swift_task_alloc();
  v4[463] = swift_task_alloc();
  v18 = sub_1000D9090();
  v4[464] = v18;
  v19 = *(v18 - 8);
  v4[465] = v19;
  v20 = *(v19 + 64) + 15;
  v4[466] = swift_task_alloc();
  v21 = type metadata accessor for WidgetStock();
  v4[467] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v4[468] = swift_task_alloc();
  v4[469] = swift_task_alloc();
  v4[470] = swift_task_alloc();
  v4[471] = swift_task_alloc();
  v4[472] = swift_task_alloc();
  v23 = sub_1000DB7D0();
  v4[473] = v23;
  v24 = *(v23 - 8);
  v4[474] = v24;
  v4[475] = *(v24 + 64);
  v4[476] = swift_task_alloc();
  v25 = *(type metadata accessor for DetailTimelineProvider(0) - 8);
  v4[477] = v25;
  v4[478] = *(v25 + 64);
  v4[479] = swift_task_alloc();
  sub_100023954();
  v4[480] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v4[481] = swift_task_alloc();
  v28 = *(type metadata accessor for DetailTimelineProvider.Configuration(0) - 8);
  v4[482] = v28;
  v4[483] = *(v28 + 64);
  v4[484] = swift_task_alloc();
  v4[485] = swift_task_alloc();
  v29 = sub_1000D93C0();
  v4[486] = v29;
  v30 = *(v29 - 8);
  v4[487] = v30;
  v31 = *(v30 + 64) + 15;
  v4[488] = swift_task_alloc();
  v4[489] = swift_task_alloc();
  v4[490] = swift_task_alloc();
  v32 = sub_1000D9690();
  v4[491] = v32;
  v33 = *(v32 - 8);
  v4[492] = v33;
  v34 = *(v33 + 64) + 15;
  v4[493] = swift_task_alloc();
  v4[494] = swift_task_alloc();
  v4[495] = swift_task_alloc();
  sub_1000DBC20();
  v4[496] = sub_1000DBC10();
  v36 = sub_1000DBBE0();
  v4[497] = v36;
  v4[498] = v35;

  return _swift_task_switch(sub_10001AE88, v36, v35);
}

uint64_t sub_10001AE88()
{
  v44 = v0;
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(&unk_100128FD8, v0 + 3160);
  v1 = *(v0 + 3192);
  sub_100006C7C((v0 + 3160), *(v0 + 3184));
  sub_100002A50(0, &unk_1001168D0);
  v2 = sub_1000D9F00();
  if (!*(v0 + 3104))
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_100023738((v0 + 3080), v0 + 3200);
  sub_100006D0C((v0 + 3160));
  sub_100006E20(&unk_100128FD8, v0 + 3240);
  v6 = *(v0 + 3272);
  sub_100006C7C((v0 + 3240), *(v0 + 3264));
  sub_100002A50(0, &qword_100116990);
  v2 = sub_1000D9F00();
  if (!*(v0 + 2064))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_100023738((v0 + 2040), v0 + 2920);
  sub_100006D0C((v0 + 3240));
  sub_100006E20(&unk_100128FD8, v0 + 2200);
  v7 = *(v0 + 2232);
  sub_100006C7C((v0 + 2200), *(v0 + 2224));
  sub_100002A50(0, &qword_100115320);
  v2 = sub_1000D9F00();
  if (!*(v0 + 2304))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_100023738((v0 + 2280), v0 + 2120);
  sub_100006D0C((v0 + 2200));
  sub_100006E20(&unk_100128FD8, v0 + 2440);
  v8 = *(v0 + 2472);
  sub_100006C7C((v0 + 2440), *(v0 + 2464));
  sub_100002A50(0, &qword_100115328);
  v2 = sub_1000D9F00();
  if (!*(v0 + 2544))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_100023738((v0 + 2520), v0 + 2360);
  sub_100006D0C((v0 + 2440));
  sub_100006E20(&unk_100128FD8, v0 + 2680);
  v9 = *(v0 + 2712);
  sub_100006C7C((v0 + 2680), *(v0 + 2704));
  sub_100002A50(0, &qword_100115330);
  v2 = sub_1000D9F00();
  if (!*(v0 + 2784))
  {
LABEL_21:
    __break(1u);
    return _swift_asyncLet_get_throwing(v2, v3, v4, v5);
  }

  sub_100023738((v0 + 2760), v0 + 2600);
  sub_100006D0C((v0 + 2680));
  sub_1000D9D90();
  sub_1000D9D80();
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 3960);
  v11 = *(v0 + 3928);
  v29 = *(v0 + 3888);
  v30 = *(v0 + 3920);
  v12 = *(v0 + 3880);
  v31 = *(v0 + 3872);
  v28 = *(v0 + 3864);
  v13 = *(v0 + 3856);
  v41 = *(v0 + 3848);
  v37 = *(v0 + 3816);
  v38 = *(v0 + 3824);
  v39 = *(v0 + 3800);
  v40 = *(v0 + 3840);
  v32 = *(v0 + 3792);
  v33 = *(v0 + 3832);
  v35 = *(v0 + 3784);
  v36 = *(v0 + 3808);
  v42 = *(v0 + 3576);
  v34 = *(v0 + 3568);
  v14 = *(v0 + 3560);
  sub_1000D9D70();

  sub_100006E20(v0 + 2920, v0 + 2840);
  v15 = swift_allocObject();
  *(v0 + 3992) = v15;
  sub_100023738((v0 + 2840), v15 + 16);
  swift_asyncLet_begin();
  sub_100006E20(v0 + 2600, v0 + 3000);
  sub_100006E20(v0 + 2120, v0 + 3040);
  sub_10002337C(v14, v12, type metadata accessor for DetailTimelineProvider.Configuration);
  v16 = *(v13 + 80);
  v17 = swift_allocObject();
  *(v0 + 4000) = v17;
  sub_100023738((v0 + 3000), v17 + 16);
  sub_100023738((v0 + 3040), v17 + 56);
  sub_100024B14(v12, v17 + ((v16 + 96) & ~v16), type metadata accessor for DetailTimelineProvider.Configuration);
  swift_asyncLet_begin();
  sub_100006E20(v0 + 2360, v0 + 3120);
  sub_10002337C(v14, v31, type metadata accessor for DetailTimelineProvider.Configuration);
  sub_10002337C(v42, v33, type metadata accessor for DetailTimelineProvider);
  (*(v32 + 16))(v36, v34, v35);
  v18 = (v16 + 56) & ~v16;
  v19 = (v18 + v28 + *(v37 + 80)) & ~*(v37 + 80);
  v20 = (v38 + *(v32 + 80) + v19) & ~*(v32 + 80);
  v21 = swift_allocObject();
  *(v0 + 4008) = v21;
  sub_100023738((v0 + 3120), v21 + 16);
  sub_100024B14(v31, v21 + v18, type metadata accessor for DetailTimelineProvider.Configuration);
  sub_100024B14(v33, v21 + v19, type metadata accessor for DetailTimelineProvider);
  (*(v32 + 32))(v21 + v20, v36, v35);
  swift_asyncLet_begin();
  v22 = sub_1000DA350();
  v23 = sub_1000DBDD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v26 = sub_1000848C8(*(v0 + 3504), *(v0 + 3512), &v43);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Will fetch stockViewModel, id=%s", v24, 0xCu);
    sub_100006D0C(v25);
  }

  v4 = sub_10001B5D4;
  v3 = *(v0 + 3848);
  v2 = v0 + 656;
  v5 = v0 + 2240;

  return _swift_asyncLet_get_throwing(v2, v3, v4, v5);
}

uint64_t sub_10001B5D4()
{
  v1[502] = v0;
  if (v0)
  {
    v2 = sub_10001D0F4;
  }

  else
  {
    v2 = sub_10001B60C;
  }

  return _swift_task_switch(v2, v1[497], v1[498]);
}

uint64_t sub_10001B60C()
{
  v28 = v0;
  v1 = v0[472];
  v2 = v0[471];
  v3 = v0[470];
  v4 = v0[447];
  sub_10002337C(v0[481], v1, type metadata accessor for WidgetStock);
  sub_10002337C(v1, v2, type metadata accessor for WidgetStock);
  sub_10002337C(v1, v3, type metadata accessor for WidgetStock);
  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[471];
  v9 = v0[470];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136315650;
    v11 = sub_1000D9B20();
    v13 = v12;
    sub_100024BE4(v8, type metadata accessor for WidgetStock);
    v14 = sub_1000848C8(v11, v13, &v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    v15 = sub_1000BA50C();
    LOBYTE(v11) = v16;
    sub_100024BE4(v9, type metadata accessor for WidgetStock);

    v17 = *&v15;
    if (v11)
    {
      v17 = 0.0;
    }

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v18 = sub_1000848C8(v0[436], v0[437], &v27);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetched stockViewModel=%s, price=%f id=%s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100024BE4(v9, type metadata accessor for WidgetStock);
    sub_100024BE4(v8, type metadata accessor for WidgetStock);
  }

  v19 = v0[447];
  v20 = sub_1000DA350();
  v21 = sub_1000DBDD0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v24 = sub_1000848C8(v0[434], v0[435], &v27);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Will fetch quoteDetail, id=%s", v22, 0xCu);
    sub_100006D0C(v23);
  }

  v25 = v0[490];

  return _swift_asyncLet_get(v0 + 162, v25, sub_10001B9D4, v0 + 330);
}

uint64_t sub_10001B9F0()
{
  v32 = v0;
  v1 = v0[489];
  v2 = v0[488];
  v3 = v0[486];
  v4 = v0[447];
  v5 = *(v0[487] + 16);
  v5(v1, v0[490], v3);
  v5(v2, v1, v3);
  v6 = sub_1000DA350();
  v7 = sub_1000DBDD0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[488];
  v10 = v0[487];
  v11 = v0[486];
  if (v8)
  {
    v30 = v7;
    v12 = v0[466];
    v13 = v0[465];
    v29 = v0[464];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136315394;
    sub_1000D9380();
    v15 = sub_1000D9070();
    v17 = v16;
    (*(v13 + 8))(v12, v29);
    v18 = *(v10 + 8);
    v18(v9, v11);
    v19 = sub_1000848C8(v15, v17, &v31);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v20 = sub_1000848C8(v0[432], v0[433], &v31);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v30, "Fetched quoteDetail, dateLastRefreshed=%s, id=%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v10 + 8);
    v18(v9, v11);
  }

  v0[503] = v18;
  v21 = v0[447];
  v22 = sub_1000DA350();
  v23 = sub_1000DBDD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v26 = sub_1000848C8(v0[430], v0[431], &v31);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Will fetch headlines, id=%s", v24, 0xCu);
    sub_100006D0C(v25);
  }

  v27 = v0[481];

  return _swift_asyncLet_get_throwing(v0 + 82, v27, sub_10001BD9C, v0 + 340);
}

uint64_t sub_10001BD9C()
{
  v1[504] = v0;
  if (v0)
  {
    v2 = sub_10001D5BC;
  }

  else
  {
    v2 = sub_10001BDD4;
  }

  return _swift_task_switch(v2, v1[497], v1[498]);
}

uint64_t sub_10001BDD4()
{
  v129 = v0;
  v1 = *(v0 + 3704);
  v2 = *(v0 + 3696);
  v3 = *(v0 + 3664);
  v4 = *(v0 + 3656);
  sub_10002337C(*(v0 + 3848) + *(*(v0 + 3840) + 48), v1, sub_100023660);
  sub_10002337C(v1, v2, sub_100023660);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 3576);
    sub_100024BE4(*(v0 + 3696), sub_100023660);
    v6 = sub_1000DA350();
    v7 = sub_1000DBDD0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v128 = v9;
      *v8 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v10 = sub_1000848C8(*(v0 + 3408), *(v0 + 3416), &v128);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Fetched no headlines, id=%s", v8, 0xCu);
      sub_100006D0C(v9);
    }

    goto LABEL_19;
  }

  v11 = *(v0 + 3680);
  v12 = *(v0 + 3672);
  v13 = *(v0 + 3664);
  v14 = *(v0 + 3656);
  v15 = *(v0 + 3576);
  (*(v13 + 32))(v11, *(v0 + 3696), v14);
  (*(v13 + 16))(v12, v11, v14);
  v16 = sub_1000DA350();
  v17 = sub_1000DBDD0();
  if (!os_log_type_enabled(v16, v17))
  {
    v44 = *(v0 + 3680);
    v45 = *(v0 + 3672);
    v46 = *(v0 + 3664);
    v47 = *(v0 + 3656);

    v48 = *(v46 + 8);
    v48(v45, v47);
    v48(v44, v47);
    goto LABEL_19;
  }

  log = v16;
  v18 = *(v0 + 3672);
  v19 = *(v0 + 3656);
  v20 = swift_slowAlloc();
  v127 = swift_slowAlloc();
  *v20 = 136315394;
  v21 = sub_100025364(&qword_100115338, sub_100023694);
  v22 = sub_1000DBCE0();
  if (!v22)
  {
LABEL_16:
    v49 = *(v0 + 3672);
    v50 = *(v0 + 3664);
    v51 = *(v0 + 3656);
    v52 = sub_1000DBB40();
    v54 = v53;

    v55 = *(v50 + 8);
    v55(v49, v51);
    v56 = sub_1000848C8(v52, v54, &v127);

    *(v20 + 4) = v56;
    *(v20 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 3680);
    v58 = *(v0 + 3656);
    sub_1000DC4C0();
    v59 = sub_1000848C8(*(v0 + 3424), *(v0 + 3432), &v127);

    *(v20 + 14) = v59;
    _os_log_impl(&_mh_execute_header, log, v17, "Fetched headlines=%s, id=%s", v20, 0x16u);
    swift_arrayDestroy();

    v55(v57, v58);
LABEL_19:
    v60 = *(v0 + 3624);
    v61 = *(v0 + 3616);
    v62 = *(v0 + 3600);
    v63 = *(v0 + 3592);
    v64 = *(v0 + 3568);
    sub_10002337C(*(v0 + 3776), *(v0 + 3752), type metadata accessor for WidgetStock);
    v65 = sub_100006C7C((v0 + 3200), *(v0 + 3224));
    sub_1000DB7B0();
    (*(v62 + 16))(v61, v60, v63);
    v66 = (*(v62 + 88))(v61, v63);
    if (v66 == enum case for WidgetFamily.systemSmall(_:))
    {
      v67 = 0;
      v68 = 1;
    }

    else if (v66 == enum case for WidgetFamily.systemMedium(_:))
    {
      v68 = 0;
      v67 = 3;
    }

    else if (v66 == enum case for WidgetFamily.systemLarge(_:))
    {
      v68 = 0;
      v67 = 6;
    }

    else
    {
      v67 = 0;
      v68 = 1;
      if (v66 != enum case for WidgetFamily.accessoryCircular(_:) && v66 != enum case for WidgetFamily.accessoryRectangular(_:) && v66 != enum case for WidgetFamily.accessoryInline(_:))
      {
        return sub_1000DC0D0();
      }
    }

    v69 = *(v0 + 4032);
    v70 = *(v0 + 3912);
    v71 = *(v0 + 3776);
    v72 = *(v0 + 3624);
    v73 = *(v0 + 3600);
    v74 = *(v0 + 3592);
    v126 = *(v0 + 3736);
    v75 = *(v126 + 20);
    *(v0 + 2036) = v75;
    v76 = v71 + v75;
    (*(v73 + 8))(v72, v74);
    v77 = *v65;
    v78 = swift_task_alloc();
    v78[2] = v77;
    v78[3] = v76;
    v78[4] = v70;
    v79 = sub_100017C1C(sub_100024028, v78, &off_100108B28);

    sub_100096420(v79, v67, (v0 + 3520));

    v80 = *(v0 + 3520);
    v81 = *(v80 + 16);
    if (v81 >= v67)
    {
      v81 = v67;
    }

    v82 = 2 * v81;
    if (v68)
    {
      v83 = 1;
    }

    else
    {
      v83 = v82 + 1;
    }

    sub_1000DC380();
    swift_unknownObjectRetain_n();
    v84 = swift_dynamicCastClass();
    if (!v84)
    {
      swift_unknownObjectRelease();
      v84 = _swiftEmptyArrayStorage;
    }

    v85 = v84[2];

    if (v85 == v83 >> 1)
    {
      v86 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v86)
      {
LABEL_36:
        v87 = *(v0 + 3752);
        v88 = *(v0 + 3744);
        v89 = *(v0 + 3640);
        v122 = *(v0 + 3584);
        loga = v86;
        sub_10002337C(*(v0 + 3704), *(v0 + 3688), sub_100023660);
        sub_10002337C(v87, v88, type metadata accessor for WidgetStock);
        v90 = sub_1000D9AC0();
        v92 = v91;
        v93 = sub_1000D9B30();
        v95 = v94;
        sub_100024BE4(v88, type metadata accessor for WidgetStock);
        *v89 = v90;
        *(v89 + 8) = v92;
        *(v89 + 16) = v93;
        *(v89 + 24) = v95;
        *(v89 + 32) = sub_1000D9AF0();
        *(v89 + 40) = v96;
        *(v89 + 48) = sub_1000BA50C();
        *(v89 + 56) = v97 & 1;
        *(v89 + 64) = v98;
        *(v89 + 72) = v99;
        sub_10002337C(v87, v88, type metadata accessor for WidgetStock);
        sub_10009FCB4(v88, v0 + 1976);
        v100 = *(v0 + 1976);
        v101 = *(v0 + 1992);
        v102 = *(v0 + 2008);
        *(v89 + 121) = *(v0 + 2017);
        *(v89 + 96) = v101;
        *(v89 + 112) = v102;
        *(v89 + 80) = v100;
        sub_10002337C(v87 + *(v126 + 20), v122, sub_100023704);
        v103 = sub_1000D9450();
        v104 = *(v103 - 8);
        v105 = (*(v104 + 48))(v122, 1, v103);
        v106 = *(v0 + 3584);
        if (v105 == 1)
        {
          sub_100024BE4(*(v0 + 3584), sub_100023704);
          v107 = 2;
        }

        else
        {
          v108 = COERCE_DOUBLE(sub_1000D93D0());
          v110 = v109;
          (*(v104 + 8))(v106, v103);
          if (v110)
          {
            v107 = 2;
          }

          else
          {
            v107 = v108 < 0.0;
          }
        }

        v112 = *(v0 + 3752);
        v113 = *(v0 + 3736);
        v114 = *(v0 + 3688);
        v115 = *(v0 + 3640);
        v116 = *(v0 + 3632);
        *(v115 + 137) = v107;
        *(v115 + v116[10]) = loga;
        sub_10002337C(v114, v115 + v116[11], sub_100023660);
        sub_100024964(v112 + *(v113 + 24), v115 + v116[9]);
        v117 = v116[12];
        sub_1000D9AD0();
        sub_100024BE4(v114, sub_100023660);
        sub_100024BE4(v112, type metadata accessor for WidgetStock);
        v118 = sub_1000D8F30();
        (*(*(v118 - 8) + 56))(v115 + v117, 0, 1, v118);
        v29 = sub_10001C96C;
        v28 = *(v0 + 3960);
        v27 = v0 + 16;
        v30 = v0 + 2960;

        return _swift_asyncLet_get_throwing(v27, v28, v29, v30);
      }

      v86 = _swiftEmptyArrayStorage;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_10002404C(v80, v80 + 32, 0, v83);
      v86 = v119;
    }

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v23 = v22;
  v120 = v17;
  v121 = v20;
  v24 = *(v0 + 3672);
  v25 = *(v0 + 3656);
  v128 = _swiftEmptyArrayStorage;
  sub_10007BC5C(0, v22 & ~(v22 >> 63), 0);
  v26 = _swiftEmptyArrayStorage;
  v27 = sub_1000DBCC0();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v125 = *(v0 + 3648);
    do
    {
      v31 = *(v0 + 3672);
      v32 = *(v0 + 3656);
      v33 = *(v0 + 3648);
      v34 = sub_1000DBD70();
      sub_10002337C(v35, v33, type metadata accessor for HeadlineViewModel);
      v34(v0 + 3280, 0);
      v36 = *(v125 + 64);
      v37 = *(v125 + 72);

      sub_100024BE4(v33, type metadata accessor for HeadlineViewModel);
      v128 = v26;
      v38 = v21;
      v40 = v26[2];
      v39 = v26[3];
      if (v40 >= v39 >> 1)
      {
        sub_10007BC5C((v39 > 1), v40 + 1, 1);
        v26 = v128;
      }

      v41 = *(v0 + 3672);
      v42 = *(v0 + 3656);
      v26[2] = v40 + 1;
      v43 = &v26[2 * v40];
      v43[4] = v36;
      v43[5] = v37;
      sub_1000DBD20();
      --v23;
      v21 = v38;
    }

    while (v23);
    v20 = v121;
    v17 = v120;
    goto LABEL_16;
  }

  __break(1u);
  return _swift_asyncLet_get_throwing(v27, v28, v29, v30);
}