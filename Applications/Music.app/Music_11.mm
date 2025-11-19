uint64_t sub_100151B88()
{
  *(*v1 + 4056) = v0;

  if (v0)
  {
    v2 = sub_100163A38;
  }

  else
  {
    v2 = sub_100151C9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100151C9C()
{
  v63 = v0;
  v1 = v0[398];
  v2 = v0[395];
  v3 = v0[394];
  v4 = v0[391];
  v58 = v0[181];
  v60 = v0[397];
  v5 = v0[180];
  v54 = v0[393];
  v56 = v0[179];
  v6 = v0[178];
  v7 = v0[177];
  v8 = v0[176];
  MusicLibraryResponse.items.getter();
  sub_10034DC4C(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[391], &qword_10118DE80);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[399];
    v32 = v0[398];
    v33 = v0[397];
    v34 = v0[391];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.genre(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_1001529D4()
{
  *(*v1 + 4072) = v0;

  if (v0)
  {
    v2 = sub_100164368;
  }

  else
  {
    v2 = sub_100152AE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100152AE8()
{
  v63 = v0;
  v1 = v0[366];
  v2 = v0[363];
  v3 = v0[362];
  v4 = v0[359];
  v58 = v0[175];
  v60 = v0[365];
  v5 = v0[174];
  v54 = v0[361];
  v56 = v0[173];
  v6 = v0[172];
  v7 = v0[171];
  v8 = v0[170];
  MusicLibraryResponse.items.getter();
  sub_10034DCAC(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[359], &unk_1011803F0);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[367];
    v32 = v0[366];
    v33 = v0[365];
    v34 = v0[359];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.musicMovie(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_100153820()
{
  *(*v1 + 4088) = v0;

  if (v0)
  {
    v2 = sub_100164C98;
  }

  else
  {
    v2 = sub_100153934;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100153934()
{
  v63 = v0;
  v1 = v0[382];
  v2 = v0[379];
  v3 = v0[378];
  v4 = v0[375];
  v58 = v0[169];
  v60 = v0[381];
  v5 = v0[168];
  v54 = v0[377];
  v56 = v0[167];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[164];
  MusicLibraryResponse.items.getter();
  sub_10034DC7C(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[375], &unk_1011846B0);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[383];
    v32 = v0[382];
    v33 = v0[381];
    v34 = v0[375];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.musicVideo(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_10015466C()
{
  *(*v1 + 4104) = v0;

  if (v0)
  {
    v2 = sub_1001655C8;
  }

  else
  {
    v2 = sub_100154780;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100154780()
{
  v63 = v0;
  v1 = v0[350];
  v2 = v0[347];
  v3 = v0[346];
  v4 = v0[343];
  v58 = v0[163];
  v60 = v0[349];
  v5 = v0[162];
  v54 = v0[345];
  v56 = v0[161];
  v6 = v0[160];
  v7 = v0[159];
  v8 = v0[158];
  MusicLibraryResponse.items.getter();
  sub_10034DCDC(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[343], &unk_1011814D0);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[351];
    v32 = v0[350];
    v33 = v0[349];
    v34 = v0[343];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.playlist(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_1001554B8()
{
  *(*v1 + 4120) = v0;

  if (v0)
  {
    v2 = sub_100165EF8;
  }

  else
  {
    v2 = sub_1001555CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001555CC()
{
  v63 = v0;
  v1 = v0[308];
  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v58 = v0[157];
  v60 = v0[307];
  v5 = v0[156];
  v54 = v0[303];
  v56 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  MusicLibraryResponse.items.getter();
  sub_10034DD6C(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[301], &unk_101183960);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[309];
    v32 = v0[308];
    v33 = v0[307];
    v34 = v0[301];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.song(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_100156304()
{
  *(*v1 + 4136) = v0;

  if (v0)
  {
    v2 = sub_100166828;
  }

  else
  {
    v2 = sub_100156418;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100156418()
{
  v63 = v0;
  v1 = v0[279];
  v2 = v0[276];
  v3 = v0[275];
  v4 = v0[272];
  v58 = v0[151];
  v60 = v0[278];
  v5 = v0[150];
  v54 = v0[274];
  v56 = v0[149];
  v6 = v0[148];
  v7 = v0[147];
  v8 = v0[146];
  MusicLibraryResponse.items.getter();
  sub_10034DDCC(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[272], &unk_1011996D0);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[280];
    v32 = v0[279];
    v33 = v0[278];
    v34 = v0[272];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.tvEpisode(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_100157150()
{
  *(*v1 + 4152) = v0;

  if (v0)
  {
    v2 = sub_100167158;
  }

  else
  {
    v2 = sub_100157264;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100157264()
{
  v63 = v0;
  v1 = v0[263];
  v2 = v0[260];
  v3 = v0[259];
  v4 = v0[256];
  v58 = v0[145];
  v60 = v0[262];
  v5 = v0[144];
  v54 = v0[258];
  v56 = v0[143];
  v6 = v0[142];
  v7 = v0[141];
  v8 = v0[140];
  MusicLibraryResponse.items.getter();
  sub_10034DDFC(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[256], &qword_101181B78);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[264];
    v32 = v0[263];
    v33 = v0[262];
    v34 = v0[256];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.tvSeason(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_100157F9C()
{
  *(*v1 + 4168) = v0;

  if (v0)
  {
    v2 = sub_100167A88;
  }

  else
  {
    v2 = sub_1001580B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001580B0()
{
  v63 = v0;
  v1 = v0[247];
  v2 = v0[244];
  v3 = v0[243];
  v4 = v0[240];
  v58 = v0[139];
  v60 = v0[246];
  v5 = v0[138];
  v54 = v0[242];
  v56 = v0[137];
  v6 = v0[136];
  v7 = v0[135];
  v8 = v0[134];
  MusicLibraryResponse.items.getter();
  sub_10034DE2C(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[240], &unk_1011A38A0);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[248];
    v32 = v0[247];
    v33 = v0[246];
    v34 = v0[240];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.tvShow(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_100158DE8()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[453] + 8))(v0[454], v0[452]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001596F4()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[434] + 8))(v0[435], v0[433]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015A000()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[418] + 8))(v0[419], v0[417]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015A90C()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[405] + 8))(v0[406], v0[404]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015B218()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[389] + 8))(v0[390], v0[388]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015BB24()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[373] + 8))(v0[374], v0[372]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015C430()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[357] + 8))(v0[358], v0[356]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015CD3C()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[341] + 8))(v0[342], v0[340]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015D648()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[328] + 8))(v0[329], v0[327]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015DF54()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[315] + 8))(v0[316], v0[314]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015E860()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[299] + 8))(v0[300], v0[298]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015F16C()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[286] + 8))(v0[287], v0[285]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015FA78()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[270] + 8))(v0[271], v0[269]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100160384()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[254] + 8))(v0[255], v0[253]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100160C90()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[238] + 8))(v0[239], v0[237]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10016159C()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  (*(v0[225] + 8))(v0[226], v0[224]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100161EA8()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[205] + 8))(v0[206], v0[204]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001627D8()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[199] + 8))(v0[200], v0[198]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100163108()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[193] + 8))(v0[194], v0[192]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100163A38()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[180] + 8))(v0[181], v0[179]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100164368()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[174] + 8))(v0[175], v0[173]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100164C98()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[168] + 8))(v0[169], v0[167]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001655C8()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[162] + 8))(v0[163], v0[161]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100165EF8()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[156] + 8))(v0[157], v0[155]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100166828()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[150] + 8))(v0[151], v0[149]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100167158()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[144] + 8))(v0[145], v0[143]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100167A88()
{
  v1 = v0[460];
  v2 = v0[456];
  v3 = v0[455];
  v4 = v0[213];
  v5 = v0[208];
  v6 = v0[207];
  (*(v0[138] + 8))(v0[139], v0[137]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001683B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100168400@<X0>(uint64_t *a1@<X8>)
{
  v138 = a1;
  v83 = type metadata accessor for UploadedVideo();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UploadedAudio();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TVShow();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TVSeason();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TVEpisode();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Station();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Song();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for SocialProfile();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for RecordLabel();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for RadioShow();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Playlist.Folder();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Playlist();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicVideo();
  v118 = *(v13 - 8);
  v119 = v13;
  __chkstk_darwin(v13);
  v117 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicMovie();
  v121 = *(v15 - 8);
  v122 = v15;
  __chkstk_darwin(v15);
  v120 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Genre();
  v124 = *(v17 - 8);
  v125 = v17;
  __chkstk_darwin(v17);
  v123 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EditorialItem();
  v127 = *(v19 - 8);
  v128 = v19;
  __chkstk_darwin(v19);
  v126 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Curator();
  v130 = *(v21 - 8);
  v131 = v21;
  __chkstk_darwin(v21);
  v129 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CreditArtist();
  v133 = *(v23 - 8);
  v134 = v23;
  __chkstk_darwin(v23);
  v132 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Composer();
  v135 = *(v25 - 8);
  v136 = v25;
  __chkstk_darwin(v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Artist();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Album();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for GenericMusicItem();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v40 = &v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v40, v137, v36, v38);
  v41 = (*(v37 + 88))(v40, v36);
  if (v41 == enum case for GenericMusicItem.album(_:))
  {
    (*(v37 + 96))(v40, v36);
    v42 = *(v33 + 32);
    v42(v35, v40, v32);
    v43 = v138;
    v138[3] = v32;
    v43[4] = &protocol witness table for Album;
    v44 = sub_10001C8B8(v43);
    return (v42)(v44, v35, v32);
  }

  v46 = v138;
  if (v41 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v37 + 96))(v40, v36);
    v47 = *(v29 + 32);
    v47(v31, v40, v28);
    v46[3] = v28;
    v46[4] = &protocol witness table for Artist;
    v48 = sub_10001C8B8(v46);
    return (v47)(v48, v31, v28);
  }

  if (v41 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v37 + 96))(v40, v36);
    v49 = *(v135 + 32);
    v50 = v40;
    v51 = v136;
    v49(v27, v50, v136);
    v46[3] = v51;
    v46[4] = sub_10016A478(&unk_10118F220, &type metadata accessor for Composer);
    v52 = sub_10001C8B8(v46);
    return (v49)(v52, v27, v51);
  }

  v53 = v40;
  if (v41 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v37 + 96))(v40, v36);
    v54 = v132;
    v55 = *(v133 + 32);
    v56 = v134;
    v55(v132, v40, v134);
    v46[3] = v56;
    v46[4] = sub_10016A478(&qword_101181A80, &type metadata accessor for CreditArtist);
    v57 = sub_10001C8B8(v46);
    v58 = v54;
    return (v55)(v57, v58, v56);
  }

  v59 = v138;
  if (v41 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v37 + 96))(v40, v36);
    v60 = v129;
    v61 = *(v130 + 32);
    v62 = v131;
    v61(v129, v53, v131);
    v63 = &protocol witness table for Curator;
LABEL_12:
    v59[3] = v62;
    v59[4] = v63;
LABEL_16:
    v66 = sub_10001C8B8(v59);
    return (v61)(v66, v60, v62);
  }

  if (v41 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v37 + 96))(v40, v36);
    v60 = v126;
    v61 = *(v127 + 32);
    v62 = v128;
    v61(v126, v53, v128);
    v59[3] = v62;
    v64 = &unk_101181A78;
    v65 = &type metadata accessor for EditorialItem;
LABEL_15:
    v59[4] = sub_10016A478(v64, v65);
    goto LABEL_16;
  }

  if (v41 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v37 + 96))(v40, v36);
    v60 = v123;
    v61 = *(v124 + 32);
    v62 = v125;
    v61(v123, v53, v125);
    v63 = &protocol witness table for Genre;
    goto LABEL_12;
  }

  if (v41 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v37 + 96))(v40, v36);
    v60 = v120;
    v61 = *(v121 + 32);
    v62 = v122;
    v61(v120, v53, v122);
    v59[3] = v62;
    v64 = &unk_10118AB60;
    v65 = &type metadata accessor for MusicMovie;
    goto LABEL_15;
  }

  if (v41 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v37 + 96))(v40, v36);
    v62 = v119;
    v61 = *(v118 + 32);
    v60 = v117;
    v61(v117, v53, v119);
    v63 = &protocol witness table for MusicVideo;
    goto LABEL_12;
  }

  if (v41 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v37 + 96))(v40, v36);
    v61 = *(v115 + 32);
    v60 = v114;
    v62 = v116;
    v61(v114, v53, v116);
    v63 = &protocol witness table for Playlist;
    goto LABEL_12;
  }

  if (v41 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v37 + 96))(v40, v36);
    v61 = *(v112 + 32);
    v60 = v111;
    v62 = v113;
    v61(v111, v53, v113);
    v59[3] = v62;
    v64 = &qword_10118C1A0;
    v65 = &type metadata accessor for Playlist.Folder;
    goto LABEL_15;
  }

  if (v41 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v37 + 96))(v40, v36);
    v61 = *(v109 + 32);
    v60 = v108;
    v62 = v110;
    v61(v108, v53, v110);
    v63 = &protocol witness table for RadioShow;
    goto LABEL_12;
  }

  if (v41 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v37 + 96))(v40, v36);
    v61 = *(v106 + 32);
    v60 = v105;
    v62 = v107;
    v61(v105, v53, v107);
    v63 = &protocol witness table for RecordLabel;
    goto LABEL_12;
  }

  if (v41 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v37 + 96))(v40, v36);
    v61 = *(v103 + 32);
    v60 = v102;
    v62 = v104;
    v61(v102, v53, v104);
    v59[3] = v62;
    v64 = &unk_101181A70;
    v65 = &type metadata accessor for SocialProfile;
    goto LABEL_15;
  }

  if (v41 == enum case for GenericMusicItem.song(_:))
  {
    v67 = v40;
    (*(v37 + 96))(v40, v36);
    v68 = *(v100 + 32);
    v69 = v99;
    v70 = v67;
    v71 = v101;
    v68(v99, v70, v101);
    v72 = &protocol witness table for Song;
LABEL_38:
    v46[3] = v71;
    v46[4] = v72;
    v75 = sub_10001C8B8(v46);
    return (v68)(v75, v69, v71);
  }

  if (v41 == enum case for GenericMusicItem.station(_:))
  {
    v73 = v40;
    (*(v37 + 96))(v40, v36);
    v68 = *(v97 + 32);
    v69 = v96;
    v74 = v73;
    v71 = v98;
    v68(v96, v74, v98);
    v72 = &protocol witness table for Station;
    goto LABEL_38;
  }

  if (v41 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v37 + 96))(v40, v36);
    v55 = *(v94 + 32);
    v76 = v93;
    v56 = v95;
    v55(v93, v40, v95);
    v46[3] = v56;
    v77 = &unk_1011996E0;
    v78 = &type metadata accessor for TVEpisode;
LABEL_49:
    v46[4] = sub_10016A478(v77, v78);
    v57 = sub_10001C8B8(v46);
    v58 = v76;
    return (v55)(v57, v58, v56);
  }

  if (v41 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v37 + 96))(v40, v36);
    v55 = *(v91 + 32);
    v76 = v90;
    v56 = v92;
    v55(v90, v40, v92);
    v46[3] = v56;
    v77 = &unk_101181A68;
    v78 = &type metadata accessor for TVSeason;
    goto LABEL_49;
  }

  if (v41 == enum case for GenericMusicItem.tvShow(_:))
  {
    (*(v37 + 96))(v40, v36);
    v55 = *(v88 + 32);
    v76 = v87;
    v56 = v89;
    v55(v87, v40, v89);
    v46[3] = v56;
    v77 = &unk_101181A60;
    v78 = &type metadata accessor for TVShow;
    goto LABEL_49;
  }

  if (v41 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v37 + 96))(v40, v36);
    v55 = *(v85 + 32);
    v76 = v84;
    v56 = v86;
    v55(v84, v40, v86);
    v46[3] = v56;
    v77 = &unk_101181A58;
    v78 = &type metadata accessor for UploadedAudio;
    goto LABEL_49;
  }

  if (v41 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v37 + 96))(v40, v36);
    v55 = *(v82 + 32);
    v76 = v81;
    v56 = v83;
    v55(v81, v40, v83);
    v46[3] = v56;
    v77 = &unk_10118AB40;
    v78 = &type metadata accessor for UploadedVideo;
    goto LABEL_49;
  }

  v79 = (v37 + 8);
  if (v41 == enum case for GenericMusicItem.other(_:))
  {
    result = (*v79)(v40, v36);
    v46[4] = 0;
    *v46 = 0u;
    *(v46 + 1) = 0u;
  }

  else
  {
    v138[4] = 0;
    *v46 = 0u;
    *(v46 + 1) = 0u;
    return (*v79)(v40, v36);
  }

  return result;
}

uint64_t sub_100169B0C@<X0>(uint64_t *a1@<X8>)
{
  v52 = a1;
  v1 = type metadata accessor for UploadedVideo();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1);
  v40 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TVSeason();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicVideo();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicMovie();
  v50 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Album();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RecentlyAddedMusicItem();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v51, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v18 + 96))(v21, v17);
    v23 = *(v14 + 32);
    v23(v16, v21, v13);
    v24 = v52;
    v52[3] = v13;
    v24[4] = &protocol witness table for Album;
    v25 = sub_10001C8B8(v24);
    return (v23)(v25, v16, v13);
  }

  v27 = v52;
  if (v22 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v18 + 96))(v21, v17);
    v28 = *(v50 + 32);
    v28(v12, v21, v10);
    v27[3] = v10;
    v27[4] = sub_10016A478(&unk_10118AB60, &type metadata accessor for MusicMovie);
    v29 = v27;
LABEL_5:
    v30 = sub_10001C8B8(v29);
    return (v28)(v30, v12, v10);
  }

  if (v22 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v18 + 96))(v21, v17);
    v31 = *(v49 + 32);
    v31(v9, v21, v7);
    v27[3] = v7;
    v27[4] = &protocol witness table for MusicVideo;
    v32 = sub_10001C8B8(v27);
    return (v31)(v32, v9, v7);
  }

  if (v22 != enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    if (v22 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v18 + 96))(v21, v17);
      v12 = v43;
      v28 = *(v44 + 32);
      v10 = v45;
      v28(v43, v21, v45);
      v27[3] = v10;
      v37 = &unk_101181A68;
      v38 = &type metadata accessor for TVSeason;
    }

    else
    {
      if (v22 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
      {
        v52[4] = 0;
        *v27 = 0u;
        *(v27 + 1) = 0u;
        return (*(v18 + 8))(v21, v17);
      }

      (*(v18 + 96))(v21, v17);
      v12 = v40;
      v28 = *(v41 + 32);
      v10 = v42;
      v28(v40, v21, v42);
      v27[3] = v10;
      v37 = &unk_10118AB40;
      v38 = &type metadata accessor for UploadedVideo;
    }

    v27[4] = sub_10016A478(v37, v38);
    v29 = v27;
    goto LABEL_5;
  }

  (*(v18 + 96))(v21, v17);
  v33 = v46;
  v34 = *(v47 + 32);
  v35 = v48;
  v34(v46, v21, v48);
  v27[3] = v35;
  v27[4] = &protocol witness table for Playlist;
  v36 = sub_10001C8B8(v27);
  return (v34)(v36, v33, v35);
}

uint64_t Artist.mappingContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Artist();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = sub_10010FC20(&qword_101181A50);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_10016A2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10016A478(&qword_101181D18, &type metadata accessor for Artist);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_10016A36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = sub_10010FC20(&qword_101181A50);
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_10016A420@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10016A478(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10016A4C0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist;
  *&v1[OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist] = 0;
  *&v1[OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___autoPlayButton] = 0;
  *&v1[OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___transitionsButton] = 0;
  *&v1[v4] = a1;
  v35 = a1;
  v5 = String._bridgeToObjectiveC()();
  v36.receiver = v1;
  v36.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v36, "initWithReuseIdentifier:", v5);

  v7 = qword_10117F218;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 frame];
  [v8 setFrame:?];
  sub_10010FC20(&qword_101183990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6D0;
  *(v9 + 32) = sub_10016A9D8(&OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___autoPlayButton, 0);
  *(v9 + 40) = sub_10016A9D8(&OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___transitionsButton, 1);
  v10 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithArrangedSubviews:isa];

  [v12 setAxis:0];
  [v12 setDistribution:1];
  if (qword_10117F220 != -1)
  {
    swift_once();
  }

  [v12 setSpacing:*&qword_101181D30];
  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v8 contentView];
  [v14 addSubview:v13];

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBDC10;
  v17 = [v13 topAnchor];
  v18 = [v8 contentView];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v16 + 32) = v20;
  v21 = [v13 bottomAnchor];
  v22 = [v8 contentView];
  v23 = [v22 bottomAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v16 + 40) = v24;
  v25 = [v13 leadingAnchor];
  v26 = [v8 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27];
  *(v16 + 48) = v28;
  v29 = [v13 trailingAnchor];

  v30 = [v8 contentView];
  v31 = [v30 trailingAnchor];

  v32 = [v29 constraintEqualToAnchor:v31];
  *(v16 + 56) = v32;
  sub_100009F78(0, &qword_1011838A0);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:v33];

  sub_10016AA74();
  return v8;
}

id sub_10016A9D8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    v13[3] = swift_getObjectType();
    v13[0] = v2;
    objc_allocWithZone(type metadata accessor for CarPlayUpNextControlsView.UpNextControlButton());
    v7 = v2;
    LOBYTE(v7) = a2;
    v8 = v2;
    v9 = sub_10016B8BC(v7, v13);
    v10 = *&v2[v3];
    *&v8[v3] = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void sub_10016AA74()
{
  v1 = [objc_allocWithZone(NSNumber) initWithInteger:3];
  v2 = sub_10016A9D8(&OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___autoPlayButton, 0);
  v3 = OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist;
  v4 = *(v0 + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist);
  if (v4 && (v5 = [v4 actionAtQueueEndCommand]) != 0)
  {
    v6 = [v5 supportedActions];
    swift_unknownObjectRelease();
    sub_100009F78(0, &qword_101189A20);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v1;
    __chkstk_darwin(v8);
    v28[2] = &v29;
    v9 = sub_10044AC40(sub_10016D108, v28, v7);
  }

  else
  {
    v9 = 0;
  }

  [v2 setEnabled:v9 & 1];

  v10 = *(v0 + v3);
  v11 = *(v0 + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___autoPlayButton);
  if (v10)
  {
    v12 = [v10 actionAtQueueEnd] == 3;
  }

  else
  {
    v12 = 0;
  }

  [v11 setSelected:v12];

  v13 = *(v0 + v3);
  if (v13 && [v13 toggleTransitionsCommand])
  {
    swift_unknownObjectRelease();
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_10016A9D8(&OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___transitionsButton, 1);
  [v15 setEnabled:v14];

  v16 = OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___transitionsButton;
  v17 = *(v0 + OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___transitionsButton);
  if (v14 && (v18 = *(v0 + v3)) != 0)
  {
    v19 = v17;
    v20 = [v18 transitionsActive];
  }

  else
  {
    v19 = v17;
    v20 = 0;
  }

  [v19 setSelected:v20];

  v21 = *(v0 + v3);
  if (v21)
  {
    v22 = [v21 transitionStyle];
    if (v22 == 1)
    {
      v23 = *(v0 + v16);
      v27 = v23[OBJC_IVAR____TtCC5Music25CarPlayUpNextControlsViewP33_D691CD1F9D08BFA84EA38F56C46BA66719UpNextControlButton_variant];
      v25 = 1;
      v23[OBJC_IVAR____TtCC5Music25CarPlayUpNextControlsViewP33_D691CD1F9D08BFA84EA38F56C46BA66719UpNextControlButton_variant] = 1;
      if (v27 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (!v22)
    {
      v23 = *(v0 + v16);
      v24 = v23[OBJC_IVAR____TtCC5Music25CarPlayUpNextControlsViewP33_D691CD1F9D08BFA84EA38F56C46BA66719UpNextControlButton_variant];
      v25 = 2;
      v23[OBJC_IVAR____TtCC5Music25CarPlayUpNextControlsViewP33_D691CD1F9D08BFA84EA38F56C46BA66719UpNextControlButton_variant] = 2;
      if (v24 != 2)
      {
LABEL_20:
        v26 = v23;
        sub_10016BF74(v25);
      }
    }
  }

LABEL_21:
}

void sub_10016AE94()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  sub_100009F78(0, &qword_101197A30);
  v5 = sub_10016A9D8(&OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___autoPlayButton, 0);
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *&v1[OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView_tracklist];
    if (v7 && [v7 actionAtQueueEnd] == 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v1;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    sub_1001F524C(0, 0, v4, &unk_100EBDCF8, v12);
  }

  v13 = sub_10016A9D8(&OBJC_IVAR____TtC5Music25CarPlayUpNextControlsView____lazy_storage___transitionsButton, 1);
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    type metadata accessor for MainActor();
    v16 = v1;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    sub_1001F524C(0, 0, v4, &unk_100EBDCE8, v18);
  }
}

uint64_t sub_10016B124(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 160) = a4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a5;
  type metadata accessor for MainActor();
  *(v5 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 128) = v7;
  *(v5 + 136) = v6;

  return _swift_task_switch(sub_10016B1C0, v7, v6);
}

uint64_t sub_10016B1C0()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 160);
  *(v0 + 40) = &type metadata for Player.QueueEndCommand;
  *(v0 + 48) = &protocol witness table for Player.QueueEndCommand;
  *(v0 + 16) = v2;
  *(v0 + 96) = v1;
  v3 = v1;
  v4 = String.init<A>(reflecting:)();
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_10016B304;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_10016B304(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10016D1FC;
  }

  else
  {
    v4[19] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910);
    sub_10000959C((v4 + 2));
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10016D204;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10016B44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_10016B4E4, v6, v5);
}

uint64_t sub_10016B4E4()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v0[5] = &type metadata for Player.ToggleTransitionsCommand;
  v0[6] = &protocol witness table for Player.ToggleTransitionsCommand;
  v0[12] = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  v0[10] = &type metadata for Player.CommandIssuerIdentity;
  v0[11] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[7] = v3;
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10016B618;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

uint64_t sub_10016B618(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10016B7CC;
  }

  else
  {
    v4[19] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910);
    sub_10000959C((v4 + 2));
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10016B760;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10016B760()
{

  **(v0 + 104) = *(v0 + 152);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016B7CC()
{

  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  **(v0 + 104) = 0;
  v1 = *(v0 + 8);

  return v1();
}

id sub_10016B8BC(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_10010FC20(&qword_101181DB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v43 = *(v13 - 8);
  v44 = v13;
  __chkstk_darwin(v13);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UIButton.Configuration();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtCC5Music25CarPlayUpNextControlsViewP33_D691CD1F9D08BFA84EA38F56C46BA66719UpNextControlButton_variant] = a1;
  v49.receiver = v3;
  v49.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10016BF74(a1);
  v20 = [v19 imageView];
  if (v20)
  {
    v21 = v20;
    [v20 setContentMode:1];
  }

  v22 = v19;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000089F8(a2, aBlock, &unk_101183F30);
  v23 = v46;
  if (v46)
  {
    v24 = sub_10000954C(aBlock, v46);
    v40 = a2;
    v41 = v15;
    v39 = &v39;
    v25 = *(v23 - 1);
    v26 = __chkstk_darwin(v24);
    v28 = v9;
    v29 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v26);
    v30 = _bridgeAnythingToObjectiveC<A>(_:)();
    v31 = v29;
    v9 = v28;
    (*(v25 + 8))(v31, v23);
    a2 = v40;
    v15 = v41;
    sub_10000959C(aBlock);
  }

  else
  {
    v30 = 0;
  }

  [v22 addTarget:v30 action:"controlsButtonTapped:" forControlEvents:{64, v39}];
  swift_unknownObjectRelease();
  static UIButton.Configuration.plain()();
  (*(v43 + 104))(v42, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v44);
  UIButton.Configuration.cornerStyle.setter();
  if (qword_10117F210 != -1)
  {
    swift_once();
  }

  UIButton.Configuration.imagePadding.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v32 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v16 + 16))(v9, v18, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  UIButton.configuration.setter();
  v33 = swift_allocObject();
  *(v33 + 16) = v22;
  v47 = sub_10016D070;
  v48 = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  v46 = &unk_10109DD60;
  v34 = _Block_copy(aBlock);
  v35 = v22;

  [v35 setConfigurationUpdateHandler:v34];
  _Block_release(v34);

  v36 = [v35 layer];
  [v36 setAllowsGroupBlending:0];

  [v35 setNeedsUpdateConfiguration];
  sub_10010FC20(&unk_101182D80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100EBC6B0;
  *(v37 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v37 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  sub_1000095E8(a2, &unk_101183F30);
  (*(v16 + 8))(v18, v15);
  return v35;
}

void sub_10016BF74(char a1)
{
  sub_10016C810();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v1 setTitle:v4 forState:0];

  v5 = sub_10016C960(a1);
  [v1 setImage:v5 forState:0];

  sub_10016CABC();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setAccessibilityUserInputLabels:isa];
}

uint64_t sub_10016C058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100009F78(0, &qword_101183A00);
  static UIFont.preferredFont(forTextStyle:weight:)();
  sub_10016D0B4();
  return AttributeContainer.subscript.setter();
}

uint64_t sub_10016C124(void *a1, void *a2)
{
  v4 = sub_10010FC20(&unk_101183AB0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v47 = &v46 - v9;
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = [a1 imageView];
  v13 = &selRef__replacePlaceholderViewWithView_;
  if (v12)
  {
    v14 = v12;
    v15 = [v12 superview];

    if (v15)
    {
      v16 = [v15 layer];

      [v16 setAllowsGroupBlending:0];
    }
  }

  v17 = [a2 traitCollection];
  v18 = [v17 userInterfaceStyle];

  v19 = [a1 isSelected];
  v20 = [a1 isFocused];
  v21 = objc_opt_self();
  v22 = v21;
  if (v18 == 2)
  {
    if (v19)
    {
      v23 = [v21 blackColor];
      v50 = v23;
      v24 = [v22 whiteColor];
      v25 = [v24 colorWithAlphaComponent:0.4];
    }

    else
    {
      v23 = [v21 whiteColor];
      v50 = v23;
      v25 = [v22 secondarySystemFillColor];
    }

    v51 = v25;
LABEL_13:
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v53 + 1) = &type metadata for String;
    *&v52 = v28;
    *(&v52 + 1) = v29;
    if (v20)
    {
      goto LABEL_14;
    }

LABEL_9:
    v26 = Int.seconds.getter(0);
    v27 = 0;
    v54 = v26;
    goto LABEL_15;
  }

  v23 = [v21 blackColor];
  v50 = v23;
  if ((v19 & 1) == 0)
  {
    v25 = [v22 secondarySystemFillColor];
    v51 = v25;
    goto LABEL_13;
  }

  v25 = [v22 whiteColor];
  v51 = v25;
  v52 = 0u;
  v53 = 0u;
  if (!v20)
  {
    goto LABEL_9;
  }

LABEL_14:
  v26 = Int.seconds.getter(3);
  v54 = v26;
  v30 = [objc_opt_self() _carSystemFocusColor];
  v27 = [v30 CGColor];

LABEL_15:
  v46 = v27;
  v55 = v27;
  UIButton.configuration.getter();
  v31 = type metadata accessor for UIButton.Configuration();
  v32 = *(*(v31 - 8) + 48);
  if (v32(v11, 1, v31))
  {
    sub_1000089F8(v11, v47, &unk_101183AB0);
    UIButton.configuration.setter();
    v13 = &selRef__replacePlaceholderViewWithView_;
    sub_1000095E8(v11, &unk_101183AB0);
  }

  else
  {
    v33 = v23;
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v32(v7, 1, v31))
  {
    sub_1000089F8(v7, v47, &unk_101183AB0);
    UIButton.configuration.setter();
    sub_1000095E8(v7, &unk_101183AB0);
  }

  else
  {
    v34 = v25;
    v35 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v35(v48, 0);
    UIButton.configuration.setter();
  }

  v36 = [a1 v13[444]];
  sub_1000089F8(&v52, v48, &unk_101183F30);
  v37 = v49;
  if (v49)
  {
    v38 = sub_10000954C(v48, v49);
    v39 = *(v37 - 8);
    __chkstk_darwin(v38);
    v41 = &v46 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v41);
    v42 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v39 + 8))(v41, v37);
    sub_10000959C(v48);
  }

  else
  {
    v42 = 0;
  }

  [v36 setCompositingFilter:v42];

  swift_unknownObjectRelease();
  v43 = [a1 v13[444]];
  [v43 setBorderWidth:v26];

  v44 = [a1 v13[444]];
  [v44 setBorderColor:v46];

  return sub_10016D084(&v50);
}

uint64_t sub_10016C810()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

id sub_10016C960(char a1)
{
  if (a1)
  {
    v1 = String._bridgeToObjectiveC()();
    v2 = &selRef_imageNamed_;
  }

  else
  {
    v1 = String._bridgeToObjectiveC()();
    v2 = &selRef_systemImageNamed_;
  }

  v3 = [objc_opt_self() *v2];

  sub_100009F78(0, &qword_101183A00);
  v4 = static UIFont.preferredFont(forTextStyle:weight:)();
  v5 = [objc_opt_self() configurationWithFont:v4 scale:2];

  v6 = [v3 imageByApplyingSymbolConfiguration:v5];
  return v6;
}

uint64_t sub_10016CABC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_10010FC20(&unk_101181640);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBDC20;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v2 + 32) = String.init(localized:table:bundle:locale:comment:)();
  *(v2 + 40) = v3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v2 + 48) = String.init(localized:table:bundle:locale:comment:)();
  *(v2 + 56) = v4;
  return v2;
}

id GroupActivitiesManager.SuggestionProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10016CEA4()
{
  result = qword_101181DA8;
  if (!qword_101181DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181DA8);
  }

  return result;
}

uint64_t sub_10016CEF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10016B44C(a1, v4, v5, v6);
}

uint64_t sub_10016CFAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10016B124(a1, v4, v5, v7, v6);
}

unint64_t sub_10016D0B4()
{
  result = qword_101183AF0;
  if (!qword_101183AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183AF0);
  }

  return result;
}

uint64_t sub_10016D128(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10016D140(uint64_t a1, uint64_t a2)
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

uint64_t sub_10016D154(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10016D19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10016D208(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
    swift_beginAccess();
    (*(v5 + 16))(v7, v1 + v9, v4);

    v8(a1, v7);
    sub_100020438(v8);
    (*(v5 + 8))(v7, v4);
  }

  v10 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v10, v4);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v5 + 8))(v7, v4);
  v11 = v14 == v13;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (((v11 ^ (v14 != v13)) & 1) == 0)
  {
    v12 = [objc_opt_self() defaultCenter];
    [v12 postNotificationName:*MusicLibrary.downloadingStateDidChange.unsafeMutableAddressor() object:0];
  }
}

uint64_t sub_10016D498()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011841D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v6);
  v8 = v14 - v7 + 16;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.cancelAllDownloads()();

  *(v0 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel) = 0;

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
  swift_beginAccess();
  sub_10016E1E0(v14, v1 + v9);
  swift_endAccess();
  type metadata accessor for Track();
  MusicItemCollection.init(arrayLiteral:)();
  v10 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v10, v2);
  swift_beginAccess();
  (*(v3 + 24))(v1 + v10, v8, v2);
  swift_endAccess();
  sub_10016D208(v5);
  v11 = *(v3 + 8);
  v11(v5, v2);
  return (v11)(v8, v2);
}

void sub_10016D6B8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10010FC20(&qword_101181EA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_10010FC20(&qword_101181EB0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = sub_10010FC20(&qword_101181EB8);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  if (*(v1 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) == 1)
  {
    v18 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel;
    if (!*(v1 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel))
    {
      v27 = v10;
      v28 = v15;
      v29 = v14;
      type metadata accessor for MusicLibraryDownloadQueueViewModel();
      swift_allocObject();
      *(v1 + v18) = MusicLibraryDownloadQueueViewModel.init()();

      if (*(v1 + v18))
      {

        dispatch thunk of MusicLibraryDownloadQueueViewModel.$downloadQueue.getter();

        sub_100020674(&qword_101181EC0, &qword_101181EA8);
        Publisher.dropFirst(_:)();
        (*(v6 + 8))(v8, v5);
        sub_100027010();
        v19 = static OS_dispatch_queue.main.getter();
        v30[0] = v19;
        v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
        sub_100020674(&qword_101181EC8, &qword_101181EB0);
        sub_1000206BC();
        Publisher.receive<A>(on:options:)();
        sub_1000095E8(v4, &qword_101182140);

        (*(v27 + 8))(v12, v9);
        swift_allocObject();
        swift_weakInit();
        sub_100020674(&unk_101181ED0, &qword_101181EB8);
        v21 = v29;
        v22 = Publisher<>.sink(receiveValue:)();

        (*(v28 + 8))(v17, v21);
        v23 = type metadata accessor for AnyCancellable();
        v30[0] = v22;
        v24 = &protocol witness table for AnyCancellable;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        memset(v30, 0, 24);
      }

      v30[3] = v23;
      v30[4] = v24;
      v25 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
      swift_beginAccess();
      sub_10016E1E0(v30, v1 + v25);
      swift_endAccess();
    }
  }
}

void sub_10016DB90(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
  *(v1 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = a1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {

      sub_10016D6B8();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel) = 0;

      v3 = v1 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
      swift_beginAccess();
      if (*(v3 + 24))
      {
        sub_100008FE4(v3, v4);
        sub_10000954C(v4, v4[3]);
        dispatch thunk of Cancellable.cancel()();
        sub_10000959C(v4);
      }
    }
  }
}

uint64_t sub_10016DC70()
{
  v1 = v0;
  v2 = Track.id.getter();
  v4 = v3;
  v5 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_itemStateCache;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!*(v6 + 16))
  {

    goto LABEL_5;
  }

  v7 = sub_100019C10(v2, v4);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_5:
    swift_endAccess();
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    type metadata accessor for Track();
    v10 = MusicLibrary.state<A>(for:)();

    v11 = Track.id.getter();
    v13 = v12;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + v5);
    *(v1 + v5) = 0x8000000000000000;
    sub_1006C5504(v10, v11, v13, isUniquelyReferenced_nonNull_native);

    *(v1 + v5) = v16;
    swift_endAccess();
    return v10;
  }

  v10 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();

  return v10;
}

uint64_t sub_10016DDEC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011841D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(v3 + 16);
    v11(v8, a1, v2);
    v12 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
    swift_beginAccess();
    v11(v5, v10 + v12, v2);
    swift_beginAccess();
    (*(v3 + 24))(v10 + v12, v8, v2);
    swift_endAccess();
    sub_10016D208(v5);

    v13 = *(v3 + 8);
    v13(v5, v2);
    return (v13)(v8, v2);
  }

  return result;
}

uint64_t sub_10016DFC4()
{
  v1 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
  v2 = sub_10010FC20(&unk_1011841D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100020438(*(v0 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue));

  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription, &qword_10118D380);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryDownloadsController()
{
  result = qword_101181DF8;
  if (!qword_101181DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016E114()
{
  sub_10005BC8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10016E1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118D380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_10016E250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result tabs];

    sub_100035A7C();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_1007E914C(j, v6);
        }

        else
        {
          if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v9 = *(v6 + 8 * j + 32);
        }

        v10 = v9;
        v11 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v12 = swift_dynamicCastObjCProtocolConditional();
        if (v12)
        {
          v13 = v12;
          if ([v12 respondsToSelector:"tabBarController:sidebarVisibilityWillChange:animator:"])
          {
            [v13 tabBarController:a1 sidebarVisibilityWillChange:a2 animator:a3];
          }
        }

        if (v11 == i)
        {
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }
  }

  return result;
}

void sub_10016E488(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, SEL *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 managingTabGroup];
  if (!v12)
  {
    v12 = v11;
  }

  v13 = swift_dynamicCastObjCProtocolConditional();
  if (v13)
  {
    v14 = v13;
    if ([v13 respondsToSelector:*a6])
    {
      [v14 *a6];
    }

    v15 = v12;
  }

  else
  {
    v15 = v9;
    v9 = v10;
    v10 = v11;
    v11 = v12;
  }
}

id sub_10016E77C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, SEL *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 managingTabGroup];
  if (!v12)
  {
    v12 = v11;
  }

  v13 = swift_dynamicCastObjCProtocolConditional();
  if (v13)
  {
    v14 = v13;
    if ([v13 respondsToSelector:*a6])
    {
      v15 = [v14 *a6];
    }

    else
    {
      v15 = 0;
    }

    v16 = v12;
    v12 = v11;
  }

  else
  {
    v15 = 0;
    v16 = v9;
    v9 = v10;
    v10 = v11;
  }

  return v15;
}

id sub_10016E8CC()
{
  v2.receiver = v0;
  v2.super_class = _s15SidebarDelegateCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10016E910(uint64_t a1)
{
  v2 = type metadata accessor for UITabSidebarItem.Content();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = (&v32 - v11);
  v13 = *(v3 + 16);
  v13(&v32 - v11, a1, v2, v10);
  v14 = (*(v3 + 88))(v12, v2);
  if (v14 == enum case for UITabSidebarItem.Content.tab(_:))
  {
    (*(v3 + 96))(v12, v2);
    v15 = *v12;
    v16 = [*v12 managingTabGroup];
    if (!v16)
    {
      v16 = v15;
    }

    v35 = &OBJC_PROTOCOL___UITabBarControllerSidebarDelegate;
    v17 = swift_dynamicCastObjCProtocolConditional();

    if (v17)
    {
      return v17;
    }

LABEL_13:

    return 0;
  }

  if (v14 != enum case for UITabSidebarItem.Content.action(_:))
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_101218E00);
    (v13)(v8, a1, v2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v27 = 136446210;
      (v13)(v5, v8, v2);
      v33 = String.init<A>(describing:)();
      v29 = v28;
      v30 = *(v3 + 8);
      v30(v8, v2);
      v31 = sub_1000105AC(v33, v29, &v37);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unhandled case for UITabSidebarItem.Request's content: %{public}s", v27, 0xCu);
      sub_10000959C(v34);
    }

    else
    {

      v30 = *(v3 + 8);
      v30(v8, v2);
    }

    v30(v12, v2);
    return 0;
  }

  (*(v3 + 96))(v12, v2);
  v16 = *v12;
  type metadata accessor for MusicTab.Action();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v20 = Strong;
  v21 = v16;
  v22 = [v20 managingTabGroup];
  if (!v22)
  {
    v22 = v20;
  }

  v36 = &OBJC_PROTOCOL___UITabBarControllerSidebarDelegate;
  v23 = swift_dynamicCastObjCProtocolConditional();

  if (v23)
  {
    return v23;
  }

  return 0;
}

id sub_10016ED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UITabSidebarItem.Content();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UITabSidebarItemRequest.content.getter();
  v10 = sub_10016E910(v9);
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if ([v10 respondsToSelector:"tabBarController:sidebar:itemForRequest:"])
    {
      v11 = [v10 tabBarController:a1 sidebar:a2 itemForRequest:a3];
      swift_unknownObjectRelease();
      if (v11)
      {
        return v11;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v13 = [objc_opt_self() itemFromRequest:a3];

  return v13;
}

uint64_t sub_10016EEEC(uint64_t a1, void *a2, char a3, void *a4)
{
  v20 = a4;
  sub_10016F3C8();
  v8 = a4;
  sub_10010FC20(&qword_101181F80);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v18, v21);
    v9 = v22;
    v10 = v23;
    sub_10000954C(v21, v22);
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v8;
    }

    v12 = (*(v10 + 16))(a1, v11, a3 & 1, v9, v10);
    sub_10000959C(v21);
    if (v12)
    {
      v13 = 1;
      return v13 & 1;
    }
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_10016F414(v18);
  }

  v14 = [v8 parentViewController];
  if (v14)
  {
    v15 = v14;
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = v8;
    }

    v13 = sub_10016EEEC(a1, v16, a3 & 1, v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

id sub_10016F044(uint64_t a1, char a2, void *a3)
{
  v15 = a3;
  sub_10016F3C8();
  v6 = a3;
  sub_10010FC20(&qword_101181F80);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v13, v16);
    v7 = v17;
    v8 = v18;
    sub_10000954C(v16, v17);
    v9 = (*(v8 + 24))(a1, a2 & 1, v7, v8);
    sub_10000959C(v16);
    if (v9)
    {
      return v9;
    }
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_10016F414(v13);
  }

  result = [v6 parentViewController];
  if (result)
  {
    v11 = result;
    v12 = sub_10016F044(a1, a2 & 1, v11);

    return v12;
  }

  return result;
}

uint64_t sub_10016F180(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 viewControllers];
  sub_10016F3C8();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = a1;
  v10[2] = &v11;
  LOBYTE(v7) = sub_10044AC70(sub_10016F598, v10, v8);

  if (v7)
  {
  }

  else
  {
    [v3 showViewController:a1 sender:a2];
  }

  return 1;
}

id sub_10016F384(uint64_t a1, char a2)
{
  v3 = [*v2 drop:a1 animated:a2 & 1];

  return v3;
}

unint64_t sub_10016F3C8()
{
  result = qword_101183D40;
  if (!qword_101183D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101183D40);
  }

  return result;
}

uint64_t sub_10016F414(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101181F88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10016F47C(void *a1)
{
  v2 = v1;
  v4 = [v1 viewControllers];
  sub_10016F3C8();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_1003FC8BC(a1, v5);
  LOBYTE(v4) = v7;

  result = 0;
  if ((v4 & 1) == 0)
  {
    v9 = [v2 viewControllers];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setViewControllers:isa];

    v11 = a1;
    return a1;
  }

  return result;
}

uint64_t sub_10016F5B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10016F610();
  }

  return result;
}

void sub_10016F610()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 32);
    v5 = *(v2 + 16);
    v3 = v2 + 16;
    v4 = v5;
    if (v5)
    {
      v21 = *(v3 + 16 * v4);
      v6 = qword_10117F230;

      swift_unknownObjectRetain();
      if (v6 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000060E4(v7, qword_101181F90);

      swift_unknownObjectRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v10 = 136446466;
        v11 = *(*v1 + 240);

        v13 = v11(v12);
        v15 = v14;

        v16 = sub_1000105AC(v13, v15, &v22);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2082;
        swift_unknownObjectRetain();
        sub_10010FC20(&qword_101182128);
        v17 = String.init<A>(describing:)();
        v19 = sub_1000105AC(v17, v18, &v22);

        *(v10 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v8, v9, "Update videoContext=%{public}s on container=%{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      ObjectType = swift_getObjectType();
      (*(*(&v21 + 1) + 24))(v1, ObjectType);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10016F894()
{

  return swift_deallocClassInstance();
}

void sub_10016F8DC(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = *(*a1 + 216);
  v7 = v6();
  v17 = [v7 playerViewController];

  v8 = [v17 parentViewController];
  if (v8)
  {
    v9 = v8;

    if (v9 == a2)
    {
      goto LABEL_11;
    }
  }

  else if (!a2)
  {
LABEL_11:

    return;
  }

  v10 = [v17 view];
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  if (!a2)
  {
    [v17 willMoveToParentViewController:0];
    [v17 removeFromParentViewController];
    goto LABEL_11;
  }

  v12 = a2;
  [v12 addChildViewController:v17];
  v13 = [v3 artworkView];
  if (v13)
  {
    v14 = v13;
    v15 = *&v13[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext];
    *&v13[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext] = a1;

    sub_10065E3FC(v15);
  }

  v16 = (v6)([v17 didMoveToParentViewController:v12]);
  [v16 setVideoOutputDelegate:swift_dynamicCastObjCProtocolConditional()];
}

void sub_10016FAFC(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 216);
  v9 = v8();
  v19 = [v9 playerViewController];

  v10 = [v19 parentViewController];
  if (v10)
  {
    v11 = v10;

    if (v11 == a2)
    {
      goto LABEL_11;
    }
  }

  else if (!a2)
  {
LABEL_11:

    return;
  }

  v12 = [v19 view];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 removeFromSuperview];

  if (!a2)
  {
    [v19 willMoveToParentViewController:0];
    [v19 removeFromParentViewController];
    goto LABEL_11;
  }

  v14 = a2;
  [v14 addChildViewController:v19];
  v15 = (*(a4 + 16))(a3, a4);
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext);
    *(v15 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext) = a1;

    sub_10065E3FC(v17);
  }

  v18 = (v8)([v19 didMoveToParentViewController:v14]);
  [v18 setVideoOutputDelegate:swift_dynamicCastObjCProtocolConditional()];
}

void sub_10016FD2C(uint64_t a1, id a2)
{
  v3 = v2;
  v18 = (*(*a1 + 216))();
  v5 = [v18 playerViewController];
  v6 = [v5 parentViewController];

  if (v6)
  {

    if (a2 && v6 == a2)
    {
      goto LABEL_4;
    }
  }

  else if (!a2)
  {
LABEL_4:
    v7 = [v18 videoOutputDelegate];
    if (v7)
    {
      v8 = v7;
      swift_unknownObjectRelease();
      if (v8 == v3)
      {
        [v18 setVideoOutputDelegate:0];
      }
    }

    v9 = [v18 playerViewController];
    [v9 willMoveToParentViewController:0];

    v10 = [v3 artworkView];
    if (v10)
    {
      v11 = v10;
      v12 = *&v10[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext];
      *&v10[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext] = 0;
      sub_10065E3FC(v12);
    }

    v17 = [v18 playerViewController];
    [v17 removeFromParentViewController];

    v13 = v17;
    goto LABEL_16;
  }

  v14 = [v3 artworkView];
  if (!v14)
  {
    v13 = v18;
LABEL_16:

    return;
  }

  v15 = v14;
  v16 = *&v14[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext];
  *&v14[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext] = 0;
  sub_10065E3FC(v16);
}

void sub_10016FF50(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = (*(*a1 + 216))();
  v9 = [v22 playerViewController];
  v10 = [v9 parentViewController];

  if (v10)
  {

    if (a2 && v10 == a2)
    {
      goto LABEL_4;
    }
  }

  else if (!a2)
  {
LABEL_4:
    v11 = [v22 videoOutputDelegate];
    if (v11)
    {
      v12 = v11;
      swift_unknownObjectRelease();
      if (v12 == v5)
      {
        [v22 setVideoOutputDelegate:0];
      }
    }

    v13 = [v22 playerViewController];
    [v13 willMoveToParentViewController:0];

    v14 = (*(a4 + 16))(a3, a4);
    if (v14)
    {
      v15 = v14;
      v16 = *(v14 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext);
      *(v14 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext) = 0;
      sub_10065E3FC(v16);
    }

    v21 = [v22 playerViewController];
    [v21 removeFromParentViewController];

    v17 = v21;
    goto LABEL_16;
  }

  v18 = (*(a4 + 16))(a3, a4);
  if (!v18)
  {
    v17 = v22;
LABEL_16:

    return;
  }

  v19 = v18;
  v20 = *(v18 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext);
  *(v18 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext) = 0;
  sub_10065E3FC(v20);
}

uint64_t sub_100170198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();

  return a4(a1, v7, a2, a3);
}

uint64_t sub_100170214(void *a1, BOOL *a2, void *a3)
{
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *a3 = v7;
    a3[1] = v6;
    v8 = a1;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  result = swift_unknownObjectRelease();
  *a2 = v7 != 0;
  return result;
}

uint64_t sub_1001702A0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101181F90);
  sub_1000060E4(v0, qword_101181F90);
  return static Logger.NowPlaying.category(_:)(0x6E6F436F65646956, 0xEC00000074786574);
}

void sub_100170394()
{
  v1 = [v0 artworkView];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }
}

uint64_t sub_100170440(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(v3 + 16);
  v5 = (v3 + 16 + 16 * v4);
  while (v4)
  {
    --v4;
    v6 = *v5;
    v5 -= 2;
    if (v6 == result)
    {
      if (qword_10117F230 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000060E4(v7, qword_101181F90);
      swift_unknownObjectRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v17 = v11;
        *v10 = 136446210;
        swift_unknownObjectRetain();
        sub_10010FC20(&qword_101182128);
        v12 = String.init<A>(describing:)();
        v14 = sub_1000105AC(v12, v13, &v17);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Resign active container=%{public}s", v10, 0xCu);
        sub_10000959C(v11);
      }

      v16 = *(a2 + 32);

      sub_1004F3F58(v4);
      swift_unknownObjectRelease();
      v15 = *(a2 + 32);
      *(a2 + 32) = v16;
      sub_100059F0C(v15);
    }
  }

  return result;
}

void sub_100170624(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];
  }
}

uint64_t type metadata accessor for ArtworkMotionView()
{
  result = qword_1011821F0;
  if (!qword_1011821F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100170704()
{
  sub_100170884(319, &qword_101182200, &type metadata accessor for VideoArtwork);
  if (v0 <= 0x3F)
  {
    sub_100170884(319, &qword_1011A4570, &type metadata accessor for Artwork);
    if (v1 <= 0x3F)
    {
      sub_100170884(319, &qword_101182208, &type metadata accessor for Artwork.CropStyle);
      if (v2 <= 0x3F)
      {
        sub_100170884(319, &qword_101182210, type metadata accessor for ArtworkImage.Placeholder);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ArtworkImage.ReusePolicy();
          if (v4 <= 0x3F)
          {
            sub_100170884(319, &unk_101182218, &type metadata accessor for MotionViewStateObserver);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100170884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001708F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v81 = type metadata accessor for ArtworkMotionView();
  v75 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = v3;
  v77 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v4 - 8);
  v64 = &v63 - v5;
  v67 = type metadata accessor for Artwork.CropStyle();
  v63 = *(v67 - 8);
  __chkstk_darwin(v67);
  v74 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = type metadata accessor for Artwork();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - v15;
  v80 = type metadata accessor for ArtworkImage();
  v17 = *(v80 - 8);
  __chkstk_darwin(v80);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v79 = &v63 - v21;
  __chkstk_darwin(v22);
  v65 = &v63 - v23;
  __chkstk_darwin(v24);
  v66 = &v63 - v25;
  __chkstk_darwin(v26);
  v69 = &v63 - v27;
  v28 = sub_10010FC20(&qword_101182260);
  v71 = *(v28 - 8);
  v72 = v28;
  __chkstk_darwin(v28);
  v70 = &v63 - v29;
  v68 = sub_10010FC20(&qword_101182268);
  __chkstk_darwin(v68);
  v73 = &v63 - v30;
  sub_1000089F8(v2, v9, &unk_101192950);
  v31 = type metadata accessor for VideoArtwork();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v9, 1, v31) == 1)
  {
    sub_1000095E8(v9, &unk_101192950);
    v33 = v81;
    sub_1000089F8(v2 + *(v81 + 20), v16, &unk_101188920);
  }

  else
  {
    VideoArtwork.previewFrame.getter();
    (*(v32 + 8))(v9, v31);
    (*(v11 + 32))(v16, v13, v10);
    (*(v11 + 56))(v16, 0, 1, v10);
    v33 = v81;
  }

  ArtworkImage.init(artwork:width:height:)(v16, *(v2 + *(v33 + 28)), *(v2 + *(v33 + 28) + 8), *(v2 + *(v33 + 28) + 16), *(v2 + *(v33 + 28) + 24));
  ArtworkImage.artworkReusablePolicy(_:)();
  v34 = *(v17 + 8);
  v34(v19, v80);
  v35 = v64;
  sub_1000089F8(v2 + *(v33 + 24), v64, &unk_101184060);
  v36 = v63;
  v37 = *(v63 + 48);
  v38 = v67;
  v39 = v2;
  if (v37(v35, 1, v67) == 1)
  {
    v40 = Artwork.CropStyle.fallback.unsafeMutableAddressor();
    v41 = v74;
    (*(v36 + 16))(v74, v40, v38);
    if (v37(v35, 1, v38) != 1)
    {
      sub_1000095E8(v35, &unk_101184060);
    }
  }

  else
  {
    v41 = v74;
    (*(v36 + 32))(v74, v35, v38);
  }

  v42 = v65;
  v43 = v79;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v36 + 8))(v41, v38);
  v44 = v80;
  v34(v43, v80);
  v45 = v66;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v34(v42, v44);
  v46 = v69;
  ArtworkImage.overrideFrameSize(_:)();
  v34(v45, v44);
  v47 = v77;
  sub_1001720B4(v39, v77, type metadata accessor for ArtworkMotionView);
  v48 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v49 = swift_allocObject();
  sub_10017204C(v47, v49 + v48, type metadata accessor for ArtworkMotionView);
  sub_10010FC20(&qword_101182270);
  sub_100171E6C();
  v50 = v70;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v34(v46, v44);
  v51 = static Alignment.center.getter();
  v53 = v52;
  v54 = v73;
  v55 = &v73[*(v68 + 36)];
  sub_1001718E0(v39, v55);
  v56 = (v55 + *(sub_10010FC20(&qword_1011822B0) + 36));
  *v56 = v51;
  v56[1] = v53;
  (*(v71 + 32))(v54, v50, v72);
  v57 = static Animation.default.getter();
  v58 = sub_10010FC20(&qword_1011822B8);
  v59 = v78;
  v60 = (v78 + *(v58 + 36));
  v61 = sub_10010FC20(&qword_1011822C0);
  sub_1000089F8(v39, v60 + *(v61 + 36), &unk_101192950);
  *v60 = v57;
  return sub_10003D17C(v54, v59, &qword_101182268);
}

uint64_t sub_10017121C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for ArtworkMotionView();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = v4;
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10010FC20(&qword_1011822E8);
  __chkstk_darwin(v39);
  v42 = (&v34 - v5);
  v41 = sub_10010FC20(&qword_101182298);
  __chkstk_darwin(v41);
  v35 = &v34 - v6;
  v7 = sub_10010FC20(&qword_101182288);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v40 = &v34 - v8;
  v9 = sub_10010FC20(&qword_101182190);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for ArtworkImage.Placeholder(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  sub_1000089F8(a1 + *(v3 + 32), v11, &qword_101182190);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &qword_101182190);
    v19 = 1;
    v20 = v45;
  }

  else
  {
    sub_10017204C(v11, v18, type metadata accessor for ArtworkImage.Placeholder);
    v21 = a1 + *(v3 + 28);
    if (*(v21 + 8) & 1) != 0 || (*(v21 + 24))
    {
      sub_1001720B4(v18, v15, type metadata accessor for ArtworkImage.Placeholder);
      v22 = v38;
      sub_1001720B4(a1, v38, type metadata accessor for ArtworkMotionView);
      v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v24 = (v14 + *(v36 + 80) + v23) & ~*(v36 + 80);
      v25 = swift_allocObject();
      sub_10017204C(v15, v25 + v23, type metadata accessor for ArtworkImage.Placeholder);
      sub_10017204C(v22, v25 + v24, type metadata accessor for ArtworkMotionView);
      v26 = v42;
      *v42 = sub_10017211C;
      v26[1] = v25;
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_1011822A8);
      sub_100171FA8();
      sub_100020674(&qword_1011822A0, &qword_1011822A8);
      v27 = v40;
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v28 = v35;
      ArtworkImage.Placeholder.view(availableSize:)(v35, *v21, *(v21 + 16));
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v29 = v42;
      v30 = (v28 + *(v41 + 36));
      v31 = v47;
      *v30 = v46;
      v30[1] = v31;
      v30[2] = v48;
      sub_100070E34(v28, v29);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_1011822A8);
      sub_100171FA8();
      sub_100020674(&qword_1011822A0, &qword_1011822A8);
      v27 = v40;
      _ConditionalContent<>.init(storage:)();
      sub_100070EA4(v28);
    }

    sub_100172200(v18);
    v32 = v27;
    v20 = v45;
    sub_10003D17C(v32, v45, &qword_101182288);
    v19 = 0;
  }

  return (*(v43 + 56))(v20, v19, 1, v44);
}

double sub_10017181C@<D0>(uint64_t a1@<X8>)
{
  GeometryProxy.size.getter();
  ArtworkImage.Placeholder.view(availableSize:)(a1, v2, v3);
  type metadata accessor for ArtworkMotionView();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a1 + *(sub_10010FC20(&qword_101182298) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_1001718E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_10010FC20(&qword_1011822C8);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v33 = v29 - v4;
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v29[1] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011822D0);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v36 = sub_10010FC20(&qword_1011822D8);
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v30 = v29 - v11;
  v12 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v12 - 8);
  v14 = v29 - v13;
  v15 = type metadata accessor for VideoArtwork();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v14, &unk_101192950);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1000095E8(v14, &unk_101192950);
    v19 = 1;
    v21 = v36;
    v20 = v37;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    VideoArtwork.url.getter();
    type metadata accessor for ArtworkMotionView();

    MotionView.init(url:previewFrame:fallback:stateObserver:)();
    sub_100020674(&qword_1011822E0, &qword_1011822D0);
    v22 = v32;
    v23 = v33;
    View.mcui.getter();
    (*(v31 + 8))(v9, v22);
    v24 = v30;
    v25 = v35;
    MCUINamespace<A>.motionShouldResetOnSizeChange(_:)();
    (*(v34 + 8))(v23, v25);
    (*(v16 + 8))(v18, v15);
    v27 = v36;
    v26 = v37;
    (*(v10 + 32))(v37, v24, v36);
    v19 = 0;
    v20 = v26;
    v21 = v27;
  }

  return (*(v10 + 56))(v20, v19, 1, v21);
}

uint64_t sub_100171DCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArtworkMotionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10017121C(v4, a1);
}

unint64_t sub_100171E6C()
{
  result = qword_101182278;
  if (!qword_101182278)
  {
    sub_1001109D0(&qword_101182270);
    sub_100171EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101182278);
  }

  return result;
}

unint64_t sub_100171EF0()
{
  result = qword_101182280;
  if (!qword_101182280)
  {
    sub_1001109D0(&qword_101182288);
    sub_100171FA8();
    sub_100020674(&qword_1011822A0, &qword_1011822A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101182280);
  }

  return result;
}

unint64_t sub_100171FA8()
{
  result = qword_101182290;
  if (!qword_101182290)
  {
    sub_1001109D0(&qword_101182298);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101182290);
  }

  return result;
}

uint64_t sub_10017204C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001720B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_10017211C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);
  type metadata accessor for ArtworkMotionView();

  return sub_10017181C(a1);
}

uint64_t sub_100172200(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10017225C()
{
  result = qword_1011822F0;
  if (!qword_1011822F0)
  {
    sub_1001109D0(&qword_1011822B8);
    sub_100172314();
    sub_100020674(&qword_101182308, &qword_1011822C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011822F0);
  }

  return result;
}

unint64_t sub_100172314()
{
  result = qword_1011822F8;
  if (!qword_1011822F8)
  {
    sub_1001109D0(&qword_101182268);
    sub_1001109D0(&qword_101182270);
    sub_100171E6C();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101182300, &qword_1011822B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011822F8);
  }

  return result;
}

void sub_10017240C(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_completionHandler];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_transitionSharpness] = 1058642330;
  v8 = &v2[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_uniforms];
  v9 = objc_opt_self();
  v10 = [v9 mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v83.origin.x = v12;
  v83.origin.y = v14;
  v83.size.width = v16;
  v83.size.height = v18;
  Width = CGRectGetWidth(v83);
  v19 = [v9 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v84.origin.x = v21;
  v84.origin.y = v23;
  v84.size.width = v25;
  v84.size.height = v27;
  Height = CGRectGetHeight(v84);
  v29.f64[0] = Width;
  v29.f64[1] = Height;
  *v8 = vcvt_f32_f64(v29);
  *(v8 + 8) = xmmword_100EBE060;
  v30 = [objc_allocWithZone(MTKMeshBufferAllocator) initWithDevice:a1];
  sub_100173B04(&off_101099140);
  v79 = v31;
  sub_100173B50(&off_101099170);
  v33 = [objc_allocWithZone(MDLMesh) initPlaneWithExtent:2 segments:v30 geometryType:v79 allocator:v32];
  v34 = objc_allocWithZone(MTKMesh);
  v82 = 0;
  swift_unknownObjectRetain();
  v35 = [v34 initWithMesh:v33 device:a1 error:&v82];
  if (!v35)
  {
    v57 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000060E4(v58, qword_101218A98);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "| ❌ [Renderer] Unable to make a mesh", v61, 2u);
    }

    swift_unknownObjectRelease();
    sub_100020438(*v7);
    goto LABEL_30;
  }

  v36 = v35;
  v37 = v82;
  swift_unknownObjectRelease();
  *&v3[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_mesh] = v36;
  v38 = v36;
  v39 = [a1 newCommandQueue];
  if (!v39)
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000060E4(v62, qword_101218A98);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "| ❌ [Renderer] Could not create a command queue", v65, 2u);
    }

    swift_unknownObjectRelease();

    sub_100020438(*v7);
    goto LABEL_30;
  }

  v76 = v30;
  *&v3[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_commandQueue] = v39;
  swift_unknownObjectRetain();
  v40 = [a1 newDefaultLibrary];
  v77 = ObjectType;
  v80 = v38;
  if (!v40)
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_1000060E4(v66, qword_101218A98);
    v46 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    v68 = v30;
    if (os_log_type_enabled(v46, v67))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v46, v67, "| ❌ [Renderer] Unable to make default library", v69, 2u);
    }

    goto LABEL_29;
  }

  v41 = v40;
  v75 = v33;
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 newFunctionWithName:v42];

  v44 = String._bridgeToObjectiveC()();
  v45 = [v41 newFunctionWithName:v44];

  v46 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v47 = [v46 colorAttachments];
  v48 = [v47 objectAtIndexedSubscript:0];

  if (!v48)
  {
    __break(1u);
    return;
  }

  [v48 setPixelFormat:80];

  [v46 setVertexFunction:v43];
  [v46 setFragmentFunction:v45];
  v49 = [v80 vertexDescriptor];
  v50 = MTKMetalVertexDescriptorFromModelIO(v49);

  [v46 setVertexDescriptor:v50];
  v82 = 0;
  v51 = [a1 newRenderPipelineStateWithDescriptor:v46 error:&v82];
  v52 = v82;
  if (!v51)
  {
    v70 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000060E4(v71, qword_101218A98);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "| ❌ [Renderer] Unable to make a pipelineState", v74, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v68 = v76;
    v33 = v75;
LABEL_29:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_100020438(*v7);

    swift_unknownObjectRelease();
LABEL_30:
    swift_deallocPartialClassInstance();
    return;
  }

  *&v3[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_pipelineState] = v51;
  v53 = v52;
  swift_unknownObjectRetain();
  v54 = sub_1001739EC(16777217);
  v55 = (vcvts_n_f32_u32(v54, 0x18uLL) * 100.0) + 0.0;
  if (v54 == 0x1000000)
  {
    v55 = 100.0;
  }

  *&v3[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_randomSeed] = v55;
  v56 = CACurrentMediaTime();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *&v3[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_startTime] = v56;
  v3[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_style] = a2 & 1;
  v81.receiver = v3;
  v81.super_class = v77;
  objc_msgSendSuper2(&v81, "init");
  swift_unknownObjectRelease();
}

void sub_100172F48(void *a1)
{
  v4 = [*(v1 + OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_commandQueue) commandBuffer];
  if (!v4)
  {
    sub_100173B88();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    return;
  }

  v5 = v4;
  v6 = [a1 currentRenderPassDescriptor];
  if (!v6)
  {
    sub_100173B88();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
LABEL_37:
    swift_unknownObjectRelease();
    return;
  }

  v7 = v6;
  v8 = [v5 renderCommandEncoderWithDescriptor:v6];
  if (!v8)
  {
    sub_100173B88();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v9 = v8;
  [v8 setRenderPipelineState:*(v1 + OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_pipelineState)];
  v10 = OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_mesh;
  v11 = [*(v1 + OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_mesh) vertexBuffers];
  sub_100009F78(0, &qword_1011824B0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_1007E91AC(0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 buffer];

  [v9 setVertexBuffer:v15 offset:0 atIndex:0];
  swift_unknownObjectRelease();
  v16 = (CACurrentMediaTime() - *(v1 + OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_startTime)) / 3.0;
  v17 = 0.0;
  if (v16 >= 0.0)
  {
    v17 = v16;
  }

  if (v16 >= 1.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = v17;
  }

  if (qword_10117FD60 != -1)
  {
    swift_once();
  }

  *&v16 = v18;
  [qword_1012195D0 _solveForInput:v16];
  v2 = v19;
  if (*(v1 + OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_style) == 1)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v2;
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v24 = 1.0 - v2;
LABEL_21:
  v25 = (1.0 - v24) * 4.8;
  if (v25 >= (v24 * 4.8))
  {
    v25 = v24 * 4.8;
  }

  v26 = fminf(v25, 0.6);
  v27 = (v1 + OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_uniforms);
  swift_beginAccess();
  v27[4] = v26;
  v27[2] = v24 + *(v1 + OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_randomSeed);
  v27[5] = v24 * 1.3;
  swift_beginAccess();
  [v9 setFragmentBytes:v27 length:24 atIndex:0];
  swift_endAccess();
  v28 = [*(v1 + v10) submeshes];
  sub_100009F78(0, &qword_1011824B8);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_36:

    sub_100173B88();
    swift_allocError();
    *v39 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_37;
  }

LABEL_25:
  v41 = v7;
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v29 = sub_1007E9198(0, v11);
    goto LABEL_28;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v29 = *(v11 + 32);
LABEL_28:
  v30 = v29;

  v31 = [v30 indexCount];
  v32 = [v30 indexType];
  v40 = v30;
  v33 = [v30 indexBuffer];
  v34 = [v33 buffer];

  [v9 drawIndexedPrimitives:3 indexCount:v31 indexType:v32 indexBuffer:v34 indexBufferOffset:0];
  swift_unknownObjectRelease();
  [v9 endEncoding];
  v35 = objc_autoreleasePoolPush();
  v36 = [a1 currentDrawable];
  if (v36)
  {
    [v5 presentDrawable:v36];
    swift_unknownObjectRelease();
  }

  [v5 commit];
  objc_autoreleasePoolPop(v35);
  if (v2 >= 1.0)
  {
    v37 = *(v1 + OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_completionHandler);
    if (v37)
    {

      v37(v38);
      sub_100020438(v37);
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

Swift::Int sub_1001736D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001737A8()
{
  String.hash(into:)();
}

Swift::Int sub_100173864()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100173930@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100173E6C(*a1);
  *a2 = result;
  return result;
}

void sub_100173960(unint64_t *a1@<X8>)
{
  v2 = 0xEE006873656D6275;
  v3 = 0x53676E697373696DLL;
  v4 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000100E3BE50;
  }

  v5 = 0x8000000100E3BE10;
  if (*v1)
  {
    v4 = 0xD00000000000001BLL;
    v5 = 0x8000000100E3BE30;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1001739EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100173A78(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100173B04(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_100173B50(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_100173B88()
{
  result = qword_1011824A8;
  if (!qword_1011824A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011824A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Player.EngineState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Player.EngineState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100173E18()
{
  result = qword_1011824C0;
  if (!qword_1011824C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011824C0);
  }

  return result;
}

unint64_t sub_100173E6C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099518, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100173EB8()
{
  v1 = OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folder;
  v2 = type metadata accessor for Playlist.Folder();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s7FoldersO11PreviewDataCMa()
{
  result = qword_1011824F8;
  if (!qword_1011824F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100173FB8()
{
  result = type metadata accessor for Playlist.Folder();
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

uint64_t sub_10017406C()
{
  _s7FoldersO14PreviewManagerCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  type metadata accessor for MusicLibrary();
  result = static MusicLibrary.shared.getter();
  *(v0 + 32) = result;
  qword_101218670 = v0;
  return result;
}

uint64_t sub_1001740C0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    _s7FoldersO14PreviewManagerC5CacheCMa();
    v1 = swift_allocObject();
    v2 = [objc_allocWithZone(_s7FoldersO14PreviewManagerC5CacheC10KeyManagerCMa()) init];
    *(v1 + 24) = v2;
    *(v1 + 32) = 0;
    v3 = [objc_allocWithZone(NSCache) init];
    [v3 setCountLimit:50];
    [v3 setDelegate:v2];
    *(v1 + 16) = v3;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_100174190()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(sub_1001740C0() + 32);

  if ((v10 & 1) == 0)
  {
    *(*(v1 + 16) + 32) = 1;
    sub_100009F78(0, &qword_101182960);
    v12 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100178FDC;
    aBlock[5] = v1;
    v17 = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_10109DF88;
    v13 = _Block_copy(aBlock);
    v16 = v6;
    v14 = v13;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100029638(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v17;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v16);
  }

  return result;
}

uint64_t sub_100174488(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  sub_1001740C0();
  sub_100177D14(a1);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_playlistCount);
  if (*(v6 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folderCount))
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8 = 0;
    v9 = 0xE000000000000000;
    if (v7)
    {
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v8);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v9 = 0x8000000100E3DF70;
      v8 = 0x1000000000000010;
    }

    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v8);
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v10._countAndFlagsBits = 0x287265646C6F4620;
    v10._object = 0xEA00000000002973;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v13._countAndFlagsBits = 0x73696C79616C5020;
    v13._object = 0xEC00000029732874;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
  }

  v11 = String.init(localized:table:bundle:locale:comment:)();

  return v11;
}

uint64_t sub_1001747E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  if (!a2)
  {
    goto LABEL_8;
  }

  type metadata accessor for MusicLibrary();
  sub_100029638(&qword_10118CE20, &type metadata accessor for MusicLibrary);

  v7 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = 0;
  if (a3 != 2 && ((*(v4 + 24) ^ a3) & 1) == 0)
  {
    v9 = *(sub_1001740C0() + 32);

    if ((v9 & 1) == 0)
    {

      sub_100177D14(a1);
      v11 = v10;

      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_needsRecompute);

        v8 = v12 ^ 1;
        return v8 & 1;
      }
    }

LABEL_8:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100174920(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 660) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for Playlist.Folder();
  *(v4 + 96) = v5;
  *(v4 + 104) = *(v5 - 8);
  *(v4 + 112) = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  *(v4 + 120) = swift_task_alloc();
  sub_10010FC20(&unk_10118A5E0);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
  *(v4 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 - 8);
  *(v4 + 168) = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Folder.Item();
  *(v4 + 176) = v7;
  *(v4 + 184) = *(v7 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = sub_10010FC20(&unk_1011828E0);
  *(v4 + 224) = swift_task_alloc();
  v8 = sub_10010FC20(&unk_10118CEC0);
  *(v4 + 232) = v8;
  *(v4 + 240) = *(v8 - 8);
  *(v4 + 248) = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011828F0);
  *(v4 + 256) = v9;
  *(v4 + 264) = *(v9 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v10 = sub_10010FC20(&qword_1011828F8);
  *(v4 + 288) = v10;
  *(v4 + 296) = *(v10 - 8);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  sub_10010FC20(&unk_101182900);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = _s9PlaylistsV5ScopeVMa(0);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = _s9PlaylistsVMa(0);
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_100174E10, 0, 0);
}

uint64_t sub_100174E10()
{
  v1 = *(v0 + 660);
  if (sub_1001747E4(*(v0 + 72), *(v0 + 80), v1))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 88);
    *(v4 + 32) = *(v0 + 80);

    *(v4 + 24) = v1;
    if (qword_10117F5D0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 424);
    v6 = *(v0 + 392);
    v7 = *(v0 + 400);
    v8 = *(v0 + 376);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);
    v12 = qword_101218AB0;
    v13 = *(v8 + 20);
    v14 = *(v10 + 16);
    *(v0 + 440) = v14;
    *(v0 + 448) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v6 + v13, v11, v9);
    v15 = *(v10 + 56);
    *(v0 + 456) = v15;
    *(v0 + 464) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v16 = v6 + v13;
    v17 = v5;
    v15(v16, 0, 1, v9);
    *v6 = v12;
    *(v6 + *(v8 + 24)) = 0;
    v55 = v4;
    LOBYTE(v8) = *(v4 + 24);
    *(v0 + 472) = type metadata accessor for MusicLibrary();

    *v5 = static MusicLibrary.shared.getter();
    *(v5 + 16) = 0;
    *(v5 + 24) = 1;
    v18 = (v5 + v7[9]);
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    v53 = v7[10];
    *(v5 + v53) = &_swiftEmptySetSingleton;
    v19 = v5 + v7[11];
    *v19 = 263;
    v56 = v7;
    v20 = v7[8];
    sub_100178D20(v6, v5 + v20);
    *(v5 + 8) = v8;
    *(v5 + 9) = 0;
    v21 = objc_opt_self();
    *(v0 + 480) = v21;
    v22 = [v21 standardUserDefaults];
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v23 = sub_1000060E4(*(v0 + 376), qword_101218730);
    *(v0 + 488) = v23;
    sub_1001982EC((v5 + v20), v23);

    v24._countAndFlagsBits = 0x53746E65746E6F43;
    v24._object = 0xEB0000000074726FLL;
    String.append(_:)(v24);

    *(v0 + 496) = sub_100110448();
    *(v0 + 504) = sub_10011049C();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, v0 + 656);

    v25 = sub_100375B90(*(v0 + 656));
    if ((v25 & 0xFF00) == 0x200 && (v26 = sub_1001982EC(*(v0 + 392), v23), v25 = sub_10045FDA0(v26 & 1 | 0x80u), (v25 & 0xFF00) == 0x200))
    {
      LOBYTE(v27) = 1;
      LOBYTE(v25) = 7;
    }

    else
    {
      v27 = (v25 >> 8) & 1;
    }

    *v19 = v25;
    *(v19 + 1) = v27;
    v28 = [v21 standardUserDefaults];
    sub_1001982EC((v5 + v20), v23);
    v29 = sub_10010FC20(&unk_10118CD70);
    *(v0 + 512) = v29;

    v30._countAndFlagsBits = 0x704F7265746C6946;
    v30._object = 0xEC0000006E6F6974;
    String.append(_:)(v30);

    *(v0 + 520) = sub_100178DD8(&unk_101182910, sub_100178D84);
    *(v0 + 528) = sub_100178DD8(&unk_101182920, sub_100178E50);
    NSUserDefaults.decodeValue<A>(_:forKey:)(v29, v0 + 48);

    v31 = *(v0 + 48);
    if (!v31)
    {
      v32 = sub_10018F3F4();
      v33 = Optional<A>.convertToSet.getter(v32);
      if (v33)
      {
        v31 = v33;
      }

      else
      {
        v31 = &_swiftEmptySetSingleton;
      }
    }

    v34 = *(v0 + 424);
    v35 = *(v0 + 432);
    v36 = *(v0 + 392);
    v37 = *(v0 + 320);
    v54 = *(v0 + 328);
    v38 = *(v0 + 288);
    v52 = *(v0 + 296);
    v39 = sub_10018F5B8();
    v40 = sub_1003AE5C4(v39, v31);

    sub_100178F14(v36, _s9PlaylistsV5ScopeVMa);
    *(v17 + v53) = v40;
    sub_100178F74(v34, v35, _s9PlaylistsVMa);
    v41 = *(v55 + 32);
    swift_retain_n();

    *v35 = v41;
    v42 = v35 + v7[11];
    v43 = *v42;
    if (v42[1])
    {
      v44 = 256;
    }

    else
    {
      v44 = 0;
    }

    v45 = sub_100375B90(v44 | v43);
    v46 = (v45 >> 8) & 1;
    if ((v45 & 0xFF00) == 0x200)
    {
      v47 = 7;
    }

    else
    {
      v47 = v45;
    }

    if ((v45 & 0xFF00) == 0x200)
    {
      LOBYTE(v46) = 1;
    }

    *v42 = v47;
    v42[1] = v46;
    sub_10018F8E4(v44 | v43);
    *(v0 + 536) = type metadata accessor for TitledSection();
    *(v0 + 544) = sub_100029638(&unk_101182930, &type metadata accessor for Playlist.Folder.Item);
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest.deferIdentifierResolution.setter();
    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    sub_10018E714(v37);
    sub_10018ECCC();
    sub_10018EFFC();
    MusicLibrarySectionedRequest.filterItems(text:)(*(v35 + v56[9]));
    MusicLibrarySectionedRequest.limit.setter();
    v48 = *(v52 + 32);
    *(v0 + 552) = v48;
    *(v0 + 560) = (v52 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v48(v54, v37, v38);
    v49 = swift_task_alloc();
    *(v0 + 568) = v49;
    *v49 = v0;
    v49[1] = sub_1001756BC;
    v50 = *(v0 + 368);
    v51 = *(v0 + 288);

    return MusicLibrarySectionedRequest.response()(v50, v51);
  }
}

uint64_t sub_1001756BC()
{
  v2 = *v1;

  v3 = v2[41];
  v4 = v2[37];
  v5 = v2[36];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100176B80;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100175854;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100175854()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = sub_10010FC20(&qword_101193C80);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_100178EA4(v1, v2);
  v4 = sub_10010FC20(&qword_101193C80);
  *(v0 + 576) = v4;
  v5 = *(v4 - 8);
  *(v0 + 584) = v5;
  v6 = *(v5 + 48);
  *(v0 + 592) = v6;
  *(v0 + 600) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v2, 1, v4);
  v8 = *(v0 + 360);
  if (v7 == 1)
  {
    sub_1000095E8(*(v0 + 360), &unk_101182900);
    v9 = 0;
  }

  else
  {
    v9 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v5 + 8))(v8, v4);
  }

  *(v0 + 608) = v9;
  v10 = *(v0 + 352);
  sub_100178EA4(*(v0 + 368), v10);
  v11 = v6(v10, 1, v4);
  v12 = *(v0 + 352);
  if (v11 == 1)
  {
    sub_1000095E8(*(v0 + 352), &unk_101182900);
LABEL_11:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v13 = MusicLibrarySectionedResponse.sections.getter();
  (*(v5 + 8))(v12, v4);
  if (!*(v13 + 16))
  {

    goto LABEL_11;
  }

  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);
  v132 = *(v0 + 216);
  (*(v19 + 16))(v18, v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v21);

  MusicLibrarySection.items.getter();
  (*(v19 + 8))(v18, v21);
  (*(v16 + 32))(v15, v14, v17);
  (*(v16 + 16))(v20, v15, v17);
  v22 = *(v132 + 36);
  sub_100020674(&qword_10118C1D0, &qword_1011828F0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v20 + v22) == *(v0 + 64))
  {
    v23 = _swiftEmptyArrayStorage;
  }

  else
  {
    v78 = *(v0 + 184);
    v79 = *(v0 + 160);
    v112 = *(v0 + 136);
    v120 = (v78 + 32);
    v122 = (v78 + 16);
    v116 = (v78 + 88);
    v114 = enum case for Playlist.Folder.Item.playlist(_:);
    v123 = (v78 + 8);
    v110 = (v79 + 32);
    v111 = (v78 + 96);
    v109 = (v79 + 8);
    v23 = _swiftEmptyArrayStorage;
    v118 = v20;
    v134 = v22;
    do
    {
      v126 = v23;
      while (1)
      {
        v80 = *(v0 + 208);
        v131 = *(v0 + 200);
        v129 = *(v0 + 176);
        v81 = dispatch thunk of Collection.subscript.read();
        v82 = *v122;
        (*v122)(v80);
        v81(v0 + 16, 0);
        v23 = v126;
        dispatch thunk of Collection.formIndex(after:)();
        (*v120)(v131, v80, v129);
        if (v126[2] > 3uLL)
        {
          v104 = *(v0 + 280);
          v106 = *(v0 + 256);
          v105 = *(v0 + 264);
          v107 = *(v0 + 224);
          (*v123)(*(v0 + 200), *(v0 + 176));
          sub_1000095E8(v107, &unk_1011828E0);
          (*(v105 + 8))(v104, v106);
          goto LABEL_12;
        }

        v83 = *(v0 + 192);
        v84 = *(v0 + 176);
        (v82)(v83, *(v0 + 200), v84);
        if ((*v116)(v83, v84) == v114)
        {
          break;
        }

        v85 = *(v0 + 192);
        v86 = *(v0 + 176);
        v87 = *v123;
        (*v123)(*(v0 + 200), v86);
        v87(v85, v86);
        dispatch thunk of Collection.endIndex.getter();
        if (*(v118 + v134) == *(v0 + 64))
        {
          goto LABEL_9;
        }
      }

      v88 = *(v0 + 192);
      v89 = *(v0 + 168);
      v91 = *(v0 + 144);
      v90 = *(v0 + 152);
      v93 = *(v0 + 120);
      v92 = *(v0 + 128);
      (*v111)(v88, *(v0 + 176));
      (*v110)(v89, v88, v90);
      v94 = Playlist.id.getter();
      v96 = v95;
      Playlist.artworkViewModel.getter(v92);
      Playlist.variant.getter();
      v97 = sub_10010FC20(&unk_101182950);
      (*(*(v97 - 8) + 56))(v93, 0, 11, v97);
      v98 = v126;
      ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)(v94, v96, v92, v93, v91);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_100498EC0(0, v126[2] + 1, 1, v126);
      }

      v100 = v98[2];
      v99 = v98[3];
      if (v100 >= v99 >> 1)
      {
        v98 = sub_100498EC0(v99 > 1, v100 + 1, 1, v98);
      }

      v101 = *(v0 + 200);
      v102 = *(v0 + 176);
      v103 = *(v0 + 144);
      (*v109)(*(v0 + 168), *(v0 + 152));
      (*v123)(v101, v102);
      v23 = v98;
      v98[2] = v100 + 1;
      sub_100178F74(v103, v98 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v100, type metadata accessor for ArtworkImage.GridPreview.Item);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v118 + v134) != *(v0 + 64));
  }

LABEL_9:
  v24 = *(v0 + 280);
  v25 = *(v0 + 256);
  v26 = *(v0 + 264);
  sub_1000095E8(*(v0 + 224), &unk_1011828E0);
  (*(v26 + 8))(v24, v25);
LABEL_12:
  *(v0 + 616) = v23;
  if (v23[2])
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v32 = 0;
  }

  *(v0 + 640) = v32;
  *(v0 + 632) = v30;
  *(v0 + 624) = v28;
  v127 = *(v0 + 488);
  v125 = *(v0 + 480);
  v121 = *(v0 + 456);
  v117 = *(v0 + 440);
  v34 = *(v0 + 400);
  v33 = *(v0 + 408);
  v35 = *(v0 + 384);
  v36 = *(v0 + 96);
  v119 = *(v0 + 88);
  v113 = *(v0 + 376);
  v115 = *(v0 + 72);
  sub_10010FC20(&unk_101182940);
  v37 = type metadata accessor for Playlist.Variant();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBC6B0;
  (*(v38 + 104))(v40 + v39, enum case for Playlist.Variant.folder(_:), v37);
  v41 = sub_10010DF7C(v40);
  swift_setDeallocating();
  (*(v38 + 8))(v40 + v39, v37);
  swift_deallocClassInstance();
  v42 = *(v113 + 20);
  v117(&v35[v42], v115, v36);
  v121(&v35[v42], 0, 1, v36);
  *v35 = v41;
  v35[*(v113 + 24)] = 0;
  LOBYTE(v37) = *(v119 + 24);
  *v33 = static MusicLibrary.shared.getter();
  *(v33 + 16) = 0;
  *(v33 + 24) = 1;
  v43 = (v33 + v34[9]);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v133 = v34[10];
  *(v33 + v133) = &_swiftEmptySetSingleton;
  v44 = v33 + v34[11];
  *v44 = 263;
  v45 = v34[8];
  sub_100178D20(v35, v33 + v45);
  *(v33 + 8) = v37;
  *(v33 + 9) = 0;
  v46 = [v125 standardUserDefaults];
  sub_1001982EC((v33 + v45), v127);

  v47._countAndFlagsBits = 0x53746E65746E6F43;
  v47._object = 0xEB0000000074726FLL;
  String.append(_:)(v47);

  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, v0 + 658);

  v48 = sub_100375B90(*(v0 + 658));
  if ((v48 & 0xFF00) == 0x200 && (v49 = sub_1001982EC(*(v0 + 384), *(v0 + 488)), v48 = sub_10045FDA0(v49 & 1 | 0x80u), (v48 & 0xFF00) == 0x200))
  {
    LOBYTE(v50) = 1;
    LOBYTE(v48) = 7;
  }

  else
  {
    v50 = (v48 >> 8) & 1;
  }

  v51 = *(v0 + 512);
  v52 = *(v0 + 480);
  v53 = *(v0 + 488);
  *v44 = v48;
  *(v44 + 1) = v50;
  v54 = [v52 standardUserDefaults];
  sub_1001982EC((v33 + v45), v53);

  v55._countAndFlagsBits = 0x704F7265746C6946;
  v55._object = 0xEC0000006E6F6974;
  String.append(_:)(v55);

  NSUserDefaults.decodeValue<A>(_:forKey:)(v51, v0 + 56);

  v56 = *(v0 + 56);
  v124 = v33;
  if (!v56)
  {
    v57 = sub_10018F3F4();
    v58 = Optional<A>.convertToSet.getter(v57);
    if (v58)
    {
      v56 = v58;
    }

    else
    {
      v56 = &_swiftEmptySetSingleton;
    }
  }

  v59 = *(v0 + 408);
  v60 = *(v0 + 416);
  v61 = *(v0 + 400);
  v62 = *(v0 + 384);
  v63 = *(v0 + 304);
  v128 = *(v0 + 312);
  v130 = *(v0 + 552);
  v64 = *(v0 + 288);
  v65 = *(v0 + 88);
  v66 = sub_10018F5B8();
  v67 = sub_1003AE5C4(v66, v56);

  sub_100178F14(v62, _s9PlaylistsV5ScopeVMa);
  *(v124 + v133) = v67;
  sub_100178F74(v59, v60, _s9PlaylistsVMa);
  v68 = *(v65 + 32);
  swift_retain_n();

  *v60 = v68;
  v69 = v60 + *(v61 + 44);
  v70 = *v69;
  if (v69[1])
  {
    v71 = 256;
  }

  else
  {
    v71 = 0;
  }

  v72 = sub_100375B90(v71 | v70);
  v73 = (v72 >> 8) & 1;
  if ((v72 & 0xFF00) == 0x200)
  {
    v74 = 7;
  }

  else
  {
    v74 = v72;
  }

  if ((v72 & 0xFF00) == 0x200)
  {
    LOBYTE(v73) = 1;
  }

  *v69 = v74;
  v69[1] = v73;
  sub_10018F8E4(v71 | v70);
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  sub_10018E714(v63);
  sub_10018ECCC();
  sub_10018EFFC();
  MusicLibrarySectionedRequest.filterItems(text:)(*(v60 + *(v61 + 36)));
  MusicLibrarySectionedRequest.limit.setter();
  v130(v128, v63, v64);
  v75 = swift_task_alloc();
  *(v0 + 648) = v75;
  *v75 = v0;
  v75[1] = sub_100176638;
  v76 = *(v0 + 344);
  v77 = *(v0 + 288);

  return MusicLibrarySectionedRequest.response()(v76, v77);
}

uint64_t sub_100176638()
{
  v2 = *v1;

  v3 = v2[39];
  v4 = v2[37];
  v5 = v2[36];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100177964;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1001767D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001767D0()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  (*(*(v0 + 584) + 56))(v3, 0, 1, v2);
  sub_100178EA4(v3, v4);
  if (v1(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 336), &unk_101182900);
    v20 = 0;
  }

  else
  {
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 336);
    v20 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v5 + 8))(v7, v6);
  }

  v8 = *(v0 + 640);
  v19 = *(v0 + 624);
  v9 = *(v0 + 608);
  v10 = *(v0 + 440);
  v23 = *(v0 + 416);
  v24 = *(v0 + 432);
  v21 = *(v0 + 344);
  v22 = *(v0 + 368);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);

  v10(v12, v14, v13);
  _s7FoldersO11PreviewDataCMa();
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_needsRecompute) = 0;
  (*(v11 + 32))(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folder, v12, v13);
  *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_playlistCount) = v9;
  *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folderCount) = v20;
  *v16 = v19;
  v16[2] = v8;
  sub_1001740C0();
  sub_1001780F4(v15, v14);

  sub_1000095E8(v21, &unk_101182900);
  sub_1000095E8(v22, &unk_101182900);
  sub_100178F14(v23, _s9PlaylistsVMa);
  sub_100178F14(v24, _s9PlaylistsVMa);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100176B80()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = sub_10010FC20(&qword_101193C80);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_100178EA4(v1, v2);
  v4 = sub_10010FC20(&qword_101193C80);
  *(v0 + 576) = v4;
  v5 = *(v4 - 8);
  *(v0 + 584) = v5;
  v6 = *(v5 + 48);
  *(v0 + 592) = v6;
  *(v0 + 600) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v2, 1, v4);
  v8 = *(v0 + 360);
  if (v7 == 1)
  {
    sub_1000095E8(*(v0 + 360), &unk_101182900);
    v9 = 0;
  }

  else
  {
    v9 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v5 + 8))(v8, v4);
  }

  *(v0 + 608) = v9;
  v10 = *(v0 + 352);
  sub_100178EA4(*(v0 + 368), v10);
  v11 = v6(v10, 1, v4);
  v12 = *(v0 + 352);
  if (v11 == 1)
  {
    sub_1000095E8(*(v0 + 352), &unk_101182900);
LABEL_11:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v13 = MusicLibrarySectionedResponse.sections.getter();
  (*(v5 + 8))(v12, v4);
  if (!*(v13 + 16))
  {

    goto LABEL_11;
  }

  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);
  v132 = *(v0 + 216);
  (*(v19 + 16))(v18, v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v21);

  MusicLibrarySection.items.getter();
  (*(v19 + 8))(v18, v21);
  (*(v16 + 32))(v15, v14, v17);
  (*(v16 + 16))(v20, v15, v17);
  v22 = *(v132 + 36);
  sub_100020674(&qword_10118C1D0, &qword_1011828F0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v20 + v22) == *(v0 + 64))
  {
    v23 = _swiftEmptyArrayStorage;
  }

  else
  {
    v78 = *(v0 + 184);
    v79 = *(v0 + 160);
    v112 = *(v0 + 136);
    v120 = (v78 + 32);
    v122 = (v78 + 16);
    v116 = (v78 + 88);
    v114 = enum case for Playlist.Folder.Item.playlist(_:);
    v123 = (v78 + 8);
    v110 = (v79 + 32);
    v111 = (v78 + 96);
    v109 = (v79 + 8);
    v23 = _swiftEmptyArrayStorage;
    v118 = v20;
    v134 = v22;
    do
    {
      v126 = v23;
      while (1)
      {
        v80 = *(v0 + 208);
        v131 = *(v0 + 200);
        v129 = *(v0 + 176);
        v81 = dispatch thunk of Collection.subscript.read();
        v82 = *v122;
        (*v122)(v80);
        v81(v0 + 16, 0);
        v23 = v126;
        dispatch thunk of Collection.formIndex(after:)();
        (*v120)(v131, v80, v129);
        if (v126[2] > 3uLL)
        {
          v104 = *(v0 + 280);
          v106 = *(v0 + 256);
          v105 = *(v0 + 264);
          v107 = *(v0 + 224);
          (*v123)(*(v0 + 200), *(v0 + 176));
          sub_1000095E8(v107, &unk_1011828E0);
          (*(v105 + 8))(v104, v106);
          goto LABEL_12;
        }

        v83 = *(v0 + 192);
        v84 = *(v0 + 176);
        (v82)(v83, *(v0 + 200), v84);
        if ((*v116)(v83, v84) == v114)
        {
          break;
        }

        v85 = *(v0 + 192);
        v86 = *(v0 + 176);
        v87 = *v123;
        (*v123)(*(v0 + 200), v86);
        v87(v85, v86);
        dispatch thunk of Collection.endIndex.getter();
        if (*(v118 + v134) == *(v0 + 64))
        {
          goto LABEL_9;
        }
      }

      v88 = *(v0 + 192);
      v89 = *(v0 + 168);
      v91 = *(v0 + 144);
      v90 = *(v0 + 152);
      v93 = *(v0 + 120);
      v92 = *(v0 + 128);
      (*v111)(v88, *(v0 + 176));
      (*v110)(v89, v88, v90);
      v94 = Playlist.id.getter();
      v96 = v95;
      Playlist.artworkViewModel.getter(v92);
      Playlist.variant.getter();
      v97 = sub_10010FC20(&unk_101182950);
      (*(*(v97 - 8) + 56))(v93, 0, 11, v97);
      v98 = v126;
      ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)(v94, v96, v92, v93, v91);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_100498EC0(0, v126[2] + 1, 1, v126);
      }

      v100 = v98[2];
      v99 = v98[3];
      if (v100 >= v99 >> 1)
      {
        v98 = sub_100498EC0(v99 > 1, v100 + 1, 1, v98);
      }

      v101 = *(v0 + 200);
      v102 = *(v0 + 176);
      v103 = *(v0 + 144);
      (*v109)(*(v0 + 168), *(v0 + 152));
      (*v123)(v101, v102);
      v23 = v98;
      v98[2] = v100 + 1;
      sub_100178F74(v103, v98 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v100, type metadata accessor for ArtworkImage.GridPreview.Item);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v118 + v134) != *(v0 + 64));
  }

LABEL_9:
  v24 = *(v0 + 280);
  v25 = *(v0 + 256);
  v26 = *(v0 + 264);
  sub_1000095E8(*(v0 + 224), &unk_1011828E0);
  (*(v26 + 8))(v24, v25);
LABEL_12:
  *(v0 + 616) = v23;
  if (v23[2])
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v32 = 0;
  }

  *(v0 + 640) = v32;
  *(v0 + 632) = v30;
  *(v0 + 624) = v28;
  v127 = *(v0 + 488);
  v125 = *(v0 + 480);
  v121 = *(v0 + 456);
  v117 = *(v0 + 440);
  v34 = *(v0 + 400);
  v33 = *(v0 + 408);
  v35 = *(v0 + 384);
  v36 = *(v0 + 96);
  v119 = *(v0 + 88);
  v113 = *(v0 + 376);
  v115 = *(v0 + 72);
  sub_10010FC20(&unk_101182940);
  v37 = type metadata accessor for Playlist.Variant();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBC6B0;
  (*(v38 + 104))(v40 + v39, enum case for Playlist.Variant.folder(_:), v37);
  v41 = sub_10010DF7C(v40);
  swift_setDeallocating();
  (*(v38 + 8))(v40 + v39, v37);
  swift_deallocClassInstance();
  v42 = *(v113 + 20);
  v117(&v35[v42], v115, v36);
  v121(&v35[v42], 0, 1, v36);
  *v35 = v41;
  v35[*(v113 + 24)] = 0;
  LOBYTE(v37) = *(v119 + 24);
  *v33 = static MusicLibrary.shared.getter();
  *(v33 + 16) = 0;
  *(v33 + 24) = 1;
  v43 = (v33 + v34[9]);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v133 = v34[10];
  *(v33 + v133) = &_swiftEmptySetSingleton;
  v44 = v33 + v34[11];
  *v44 = 263;
  v45 = v34[8];
  sub_100178D20(v35, v33 + v45);
  *(v33 + 8) = v37;
  *(v33 + 9) = 0;
  v46 = [v125 standardUserDefaults];
  sub_1001982EC((v33 + v45), v127);

  v47._countAndFlagsBits = 0x53746E65746E6F43;
  v47._object = 0xEB0000000074726FLL;
  String.append(_:)(v47);

  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, v0 + 658);

  v48 = sub_100375B90(*(v0 + 658));
  if ((v48 & 0xFF00) == 0x200 && (v49 = sub_1001982EC(*(v0 + 384), *(v0 + 488)), v48 = sub_10045FDA0(v49 & 1 | 0x80u), (v48 & 0xFF00) == 0x200))
  {
    LOBYTE(v50) = 1;
    LOBYTE(v48) = 7;
  }

  else
  {
    v50 = (v48 >> 8) & 1;
  }

  v51 = *(v0 + 512);
  v52 = *(v0 + 480);
  v53 = *(v0 + 488);
  *v44 = v48;
  *(v44 + 1) = v50;
  v54 = [v52 standardUserDefaults];
  sub_1001982EC((v33 + v45), v53);

  v55._countAndFlagsBits = 0x704F7265746C6946;
  v55._object = 0xEC0000006E6F6974;
  String.append(_:)(v55);

  NSUserDefaults.decodeValue<A>(_:forKey:)(v51, v0 + 56);

  v56 = *(v0 + 56);
  v124 = v33;
  if (!v56)
  {
    v57 = sub_10018F3F4();
    v58 = Optional<A>.convertToSet.getter(v57);
    if (v58)
    {
      v56 = v58;
    }

    else
    {
      v56 = &_swiftEmptySetSingleton;
    }
  }

  v59 = *(v0 + 408);
  v60 = *(v0 + 416);
  v61 = *(v0 + 400);
  v62 = *(v0 + 384);
  v63 = *(v0 + 304);
  v128 = *(v0 + 312);
  v130 = *(v0 + 552);
  v64 = *(v0 + 288);
  v65 = *(v0 + 88);
  v66 = sub_10018F5B8();
  v67 = sub_1003AE5C4(v66, v56);

  sub_100178F14(v62, _s9PlaylistsV5ScopeVMa);
  *(v124 + v133) = v67;
  sub_100178F74(v59, v60, _s9PlaylistsVMa);
  v68 = *(v65 + 32);
  swift_retain_n();

  *v60 = v68;
  v69 = v60 + *(v61 + 44);
  v70 = *v69;
  if (v69[1])
  {
    v71 = 256;
  }

  else
  {
    v71 = 0;
  }

  v72 = sub_100375B90(v71 | v70);
  v73 = (v72 >> 8) & 1;
  if ((v72 & 0xFF00) == 0x200)
  {
    v74 = 7;
  }

  else
  {
    v74 = v72;
  }

  if ((v72 & 0xFF00) == 0x200)
  {
    LOBYTE(v73) = 1;
  }

  *v69 = v74;
  v69[1] = v73;
  sub_10018F8E4(v71 | v70);
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  sub_10018E714(v63);
  sub_10018ECCC();
  sub_10018EFFC();
  MusicLibrarySectionedRequest.filterItems(text:)(*(v60 + *(v61 + 36)));
  MusicLibrarySectionedRequest.limit.setter();
  v130(v128, v63, v64);
  v75 = swift_task_alloc();
  *(v0 + 648) = v75;
  *v75 = v0;
  v75[1] = sub_100176638;
  v76 = *(v0 + 344);
  v77 = *(v0 + 288);

  return MusicLibrarySectionedRequest.response()(v76, v77);
}

uint64_t sub_100177964()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  (*(*(v0 + 584) + 56))(v3, 1, 1, v2);
  sub_100178EA4(v3, v4);
  if (v1(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 336), &unk_101182900);
    v20 = 0;
  }

  else
  {
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 336);
    v20 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v5 + 8))(v7, v6);
  }

  v8 = *(v0 + 640);
  v19 = *(v0 + 624);
  v9 = *(v0 + 608);
  v10 = *(v0 + 440);
  v23 = *(v0 + 416);
  v24 = *(v0 + 432);
  v21 = *(v0 + 344);
  v22 = *(v0 + 368);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);

  v10(v12, v14, v13);
  _s7FoldersO11PreviewDataCMa();
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_needsRecompute) = 0;
  (*(v11 + 32))(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folder, v12, v13);
  *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_playlistCount) = v9;
  *(v15 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folderCount) = v20;
  *v16 = v19;
  v16[2] = v8;
  sub_1001740C0();
  sub_1001780F4(v15, v14);

  sub_1000095E8(v21, &unk_101182900);
  sub_1000095E8(v22, &unk_101182900);
  sub_100178F14(v23, _s9PlaylistsVMa);
  sub_100178F14(v24, _s9PlaylistsVMa);

  v17 = *(v0 + 8);

  return v17();
}

void sub_100177D14(uint64_t a1)
{
  v28 = a1;
  v27 = type metadata accessor for Playlist.Folder();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v1;
  v31 = *(v1 + 24);
  sub_10010FC20(&unk_1011828B0);
  UnfairLock.locked<A>(_:)(sub_100179018);
  v4 = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100009F78(0, &qword_10118D430);
    sub_100178C54();
    Set.Iterator.init(_cocoa:)();
    v4 = v34;
    v5 = v35;
    v6 = v36;
    v30 = v37;
    v7 = v38;
  }

  else
  {
    v30 = 0;
    v8 = -1 << *(v34 + 32);
    v5 = v34 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v34 + 56);
  }

  v22[0] = v6;
  v11 = (v6 + 64) >> 6;
  v24 = (v2 + 8);
  v25 = (v2 + 16);
  v23 = v5;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v12 = __CocoaSet.Iterator.next()();
  if (v12 && (v32 = v12, sub_100009F78(0, &qword_10118D430), swift_dynamicCast(), v13 = v33, v14 = v30, v15 = v7, v33))
  {
    while (1)
    {
      v18 = [*(v29 + 16) objectForKey:{v13, v22[0]}];
      if (v18)
      {
        v22[1] = v7;
        v19 = v26;
        v20 = v27;
        (*v25)(v26, &v18[OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folder], v27);
        sub_100029638(&qword_10118C1A0, &type metadata accessor for Playlist.Folder);
        sub_100029638(&unk_1011828D0, &type metadata accessor for Playlist.Folder);
        v21 = static MusicItem<>.==~ infix(_:_:)();

        (*v24)(v19, v20);
        if (v21)
        {
          goto LABEL_22;
        }

        v30 = v14;
        v7 = v15;
        v5 = v23;
        if (v4 < 0)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v30 = v14;
        v7 = v15;
        if (v4 < 0)
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      v14 = v30;
      v16 = v30;
      v17 = v7;
      if (!v7)
      {
        break;
      }

LABEL_15:
      v15 = (v17 - 1) & v17;
      v13 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_22;
      }

      v17 = *(v5 + 8 * v14);
      ++v16;
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_10005C9F8();
  }
}

void sub_1001780F4(uint64_t a1, uint64_t a2)
{
  v15 = *(v2 + 24);
  sub_10010FC20(&unk_1011828B0);
  UnfairLock.locked<A>(_:)(sub_100179018);
  v13 = v2;
  v14 = a2;
  sub_1002D93F4(sub_100178CBC, v12, v17);
  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    Playlist.Folder.id.getter();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = *(v2 + 16);
  v9 = v6;
  __chkstk_darwin([v8 setObject:a1 forKey:v7]);
  v10 = v7;
  UnfairLock.locked<A>(_:)(sub_100179018);
  v16 = v17;
  sub_1003B2B50(&v17, v10);

  __chkstk_darwin(v11);
  UnfairLock.locked<A>(_:)(sub_100179030);
}

uint64_t sub_1001782FC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(a2 + 16) objectForKey:{*a1, v6}];
  if (v9)
  {
    (*(v5 + 16))(v8, v9 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folder, v4);
    sub_100029638(&qword_10118C1A0, &type metadata accessor for Playlist.Folder);
    sub_100029638(&unk_1011828D0, &type metadata accessor for Playlist.Folder);
    v10 = static MusicItem<>.==~ infix(_:_:)();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1001784B4(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return;
  }

  v2 = v1;
  __chkstk_darwin(a1);
  sub_10010FC20(&unk_1011828B0);
  UnfairLock.locked<A>(_:)(sub_100179018);
  v3 = v19;
  if ((v19 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F78(0, &qword_10118D430);
    sub_100178C54();
    Set.Iterator.init(_cocoa:)();
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v19 + 32);
    v4 = v19 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v19 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100009F78(0, &qword_10118D430), swift_dynamicCast(), v16 = v18, v14 = v6, v15 = v7, !v18))
    {
LABEL_20:
      sub_10005C9F8();

      *(v2 + 32) = 0;
      return;
    }

LABEL_18:
    v17 = [*(v2 + 16) objectForKey:v16];

    v6 = v14;
    v7 = v15;
    if (v17)
    {
      v17[OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_needsRecompute] = 1;

      v6 = v14;
      v7 = v15;
    }
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_20;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1001788B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001788F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001789B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DD18(a1, v15);
  _s7FoldersO11PreviewDataCMa();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v5 + 16))(v7, v14[1] + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_folder, v4);
    Playlist.Folder.id.getter();
    (*(v5 + 8))(v7, v4);
    v9 = String._bridgeToObjectiveC()();

    __chkstk_darwin(v10);
    v14[-2] = v2;
    sub_10010FC20(&unk_1011828B0);
    UnfairLock.locked<A>(_:)(sub_100178C10);
    v11 = sub_100195094(v9);

    v12 = v15[0];
    __chkstk_darwin(v13);
    v14[-2] = v2;
    v14[-1] = v12;
    UnfairLock.locked<A>(_:)(sub_100178C3C);
  }

  return result;
}

unint64_t sub_100178C54()
{
  result = qword_1011828C0;
  if (!qword_1011828C0)
  {
    sub_100009F78(255, &qword_10118D430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011828C0);
  }

  return result;
}

uint64_t sub_100178CDC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCCCOE5MusicO9MusicCore7Library7Folders14PreviewManagerP33_4E92466DD7805690A64C66280926D2CB5Cache10KeyManager__keys) = *(v0 + 24);
}

uint64_t sub_100178D20(uint64_t a1, uint64_t a2)
{
  v4 = _s9PlaylistsV5ScopeVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100178D84()
{
  result = qword_10118CD80;
  if (!qword_10118CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CD80);
  }

  return result;
}

uint64_t sub_100178DD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&unk_10118CD70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100178E50()
{
  result = qword_10118CD90;
  if (!qword_10118CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CD90);
  }

  return result;
}

uint64_t sub_100178EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101182900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100178F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100178F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100178FDC()
{
  v0 = sub_1001740C0();
  sub_1001784B4(v0);
}

uint64_t sub_1001790FC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 264) = a3;
  *(v4 + 272) = a4;
  *(v4 + 248) = a1;
  *(v4 + 256) = a2;
  sub_10010FC20(&unk_101195200);
  *(v4 + 280) = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  *(v4 + 288) = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  *(v4 + 296) = swift_task_alloc();
  v5 = type metadata accessor for Artwork();
  *(v4 + 304) = v5;
  *(v4 + 312) = *(v5 - 8);
  *(v4 + 320) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 328) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 336) = v7;
  *(v4 + 344) = v6;

  return _swift_task_switch(sub_10017929C, v7, v6);
}

uint64_t sub_10017929C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  sub_1000089F8(*(v0 + 248), v3, &unk_101188920);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 296);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);

    sub_1000095E8(v4, &unk_101188920);
    v8 = v7[3];
    sub_10000954C(v7, v8);
    MusicItem.artworkPlaceholder.getter(v8, (v0 + 64));
    sub_100009F78(0, &qword_1011951F0);
    v9 = [swift_getObjCClassFromMetadata() preferredFormat];
    v10 = Artwork.Placeholder.image(with:graphicsFormat:)(v9, v6, v5);

    *(v0 + 192) = *(v0 + 64);
    sub_1000095E8(v0 + 192, &unk_1011951E0);
    *(v0 + 200) = *(v0 + 72);
    sub_1000095E8(v0 + 200, &unk_1011951E0);
    *(v0 + 208) = *(v0 + 80);
    sub_1000095E8(v0 + 208, &qword_101184460);

    v11 = *(v0 + 8);

    return v11(v10);
  }

  else
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    (*(*(v0 + 312) + 32))(*(v0 + 320), *(v0 + 296), *(v0 + 304));
    v15 = [objc_opt_self() currentTraitCollection];
    [v15 displayScale];
    v17 = v16;

    v18 = type metadata accessor for Artwork.CropStyle();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v19 = type metadata accessor for Artwork.ImageFormat();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = swift_task_alloc();
    *(v0 + 352) = v20;
    *v20 = v0;
    v20[1] = sub_1001795E8;
    v22 = *(v0 + 280);
    v23 = *(v0 + 288);
    v24.n128_u64[0] = *(v0 + 264);
    v25.n128_u64[0] = *(v0 + 272);

    v21.n128_f64[0] = 1.0 / v17;
    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v23, v22, 0, 0, v24, v25, v21);
  }
}

uint64_t sub_1001795E8(uint64_t a1)
{
  v4 = *v2;
  v4[45] = v1;

  v5 = v4[36];
  v6 = v4[35];
  if (v1)
  {
    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v7 = v4[42];
    v8 = v4[43];
    v9 = sub_100179848;
  }

  else
  {
    v4[46] = a1;
    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v7 = v4[42];
    v8 = v4[43];
    v9 = sub_100179794;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100179794()
{
  v1 = v0[46];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[39];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_100179848()
{
  v26 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  (*(v3 + 8))(v1, v2);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 256);
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012186C8);
  sub_100008FE4(v4, v0 + 112);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 360);
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v9 = 136446466;
    sub_100008FE4(v0 + 112, v0 + 152);
    sub_10010FC20(&unk_10118AB50);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_10000959C(v0 + 112);
    v13 = sub_1000105AC(v10, v12, &v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v0 + 240) = v8;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000105AC(v14, v15, &v25);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve image for music item=%{public}s with error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v0 + 112);
  }

  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 256);
  v20 = v19[3];
  sub_10000954C(v19, v20);
  MusicItem.artworkPlaceholder.getter(v20, (v0 + 16));
  sub_100009F78(0, &qword_1011951F0);
  v21 = [swift_getObjCClassFromMetadata() preferredFormat];
  v22 = Artwork.Placeholder.image(with:graphicsFormat:)(v21, v18, v17);

  *(v0 + 216) = *(v0 + 16);
  sub_1000095E8(v0 + 216, &unk_1011951E0);
  *(v0 + 224) = *(v0 + 24);
  sub_1000095E8(v0 + 224, &unk_1011951E0);
  *(v0 + 232) = *(v0 + 32);
  sub_1000095E8(v0 + 232, &qword_101184460);

  v23 = *(v0 + 8);

  return v23(v22);
}

id sub_100179BDC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = v9;
  v91 = a3;
  v92 = a4;
  v83 = a1;
  ObjectType = swift_getObjectType();
  v18 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v18 - 8);
  v86 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v87 = &v82 - v21;
  v22 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v22 - 8);
  v24 = &v82 - v23;
  v93.receiver = v10;
  v93.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v93, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 setTintColor:*UIColor.MusicTint.normal.unsafeMutableAddressor()];
  v26 = [v25 layer];
  [v26 setCornerCurve:kCACornerCurveContinuous];

  v27 = [objc_allocWithZone(UIImageView) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 addSubview:v27];
  TaskPriority.init(rawValue:)();
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a5;
  v29[5] = a6;
  v29[6] = v27;
  v29[7] = a7;
  v29[8] = a8;
  v29[9] = v25;
  v30 = v27;
  v90 = a6;

  v88 = a7;
  v89 = a8;
  sub_100030444(a7);
  sub_10035EB10(0, 0, v24, &unk_100EBE358, v29);

  sub_1000095E8(v24, &unk_101181520);
  v85 = sub_10010FC20(&qword_101183990);
  v31 = swift_allocObject();
  v84 = xmmword_100EBC6C0;
  *(v31 + 16) = xmmword_100EBC6C0;
  *(v31 + 32) = v30;
  v32 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620);
  v33 = v30;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v32 initWithArrangedSubviews:isa];

  [v35 setAlignment:3];
  [v35 setDistribution:0];
  [v35 setAxis:0];
  v36 = v35;
  [v36 setInsetsLayoutMarginsFromSafeArea:0];
  v37 = [v36 layer];
  [v37 setCornerCurve:kCACornerCurveContinuous];

  [v25 addSubview:v36];
  if (a2)
  {
    v38 = [objc_allocWithZone(UILabel) init];
    v39 = String._bridgeToObjectiveC()();

    [v38 setText:v39];

    v40 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v38 setFont:v40];

    [v38 setLineBreakMode:2];
    v83 = v38;
    [v36 addArrangedSubview:v38];
    [v36 setLayoutMarginsRelativeArrangement:1];
    [v36 setLayoutMargins:{6.0, 6.0, 6.0, 10.0}];
    if (qword_10117F260 != -1)
    {
      swift_once();
    }

    [v36 setSpacing:*&qword_1012186C0];
    [v36 setFrame:{0.0, 0.0, 260.0, 56.0}];
    v41 = [v25 layer];
    if (qword_10117F248 != -1)
    {
      swift_once();
    }

    [v41 setCornerRadius:*&qword_1012186A8];

    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    [v33 bounds];
    [v33 setBounds:?];
    [v33 setBackgroundColor:v92];
    v42 = [v33 layer];
    if (qword_10117F258 != -1)
    {
      swift_once();
    }

    [v42 setCornerRadius:*&qword_1012186B8];

    v43 = [v33 layer];
    [v43 setMasksToBounds:1];

    v44 = [objc_allocWithZone(CAGradientLayer) init];
    [v36 frame];
    [v44 setFrame:?];
    [v44 setStartPoint:{0.0, 0.5}];
    [v44 setEndPoint:{1.0, 0.5}];
    sub_10010FC20(&qword_101181530);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100EBE260;
    v46 = objc_opt_self();
    v47 = [v46 whiteColor];
    v48 = v33;
    v49 = [v47 CGColor];

    type metadata accessor for CGColor(0);
    v51 = v50;
    *(v45 + 56) = v50;
    *(v45 + 32) = v49;
    v52 = [v46 whiteColor];
    v53 = [v52 CGColor];

    *(v45 + 88) = v51;
    *(v45 + 64) = v53;
    v54 = [v46 clearColor];
    v55 = [v54 CGColor];

    *(v45 + 120) = v51;
    *(v45 + 96) = v55;
    v56 = Array._bridgeToObjectiveC()().super.isa;

    [v44 setColors:v56];

    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100EBE270;
    sub_100009F78(0, &qword_101189A20);
    *(v57 + 32) = NSNumber.init(integerLiteral:)(0);
    *(v57 + 40) = NSNumber.init(floatLiteral:)(0.9);
    [v36 frame];
    CGRectGetWidth(v94);
    [v36 layoutMargins];
    [v36 frame];
    CGRectGetWidth(v95);
    *(v57 + 48) = CGFloat._bridgeToObjectiveC()();
    v58 = Array._bridgeToObjectiveC()().super.isa;

    [v44 setLocations:v58];

    v25 = v82;
    v59 = [v82 layer];
    [v59 setMask:v44];

    v60 = v86;
  }

  else
  {
    if (qword_10117F240 != -1)
    {
      swift_once();
    }

    [v36 setFrame:{0.0, 0.0, *&qword_1012186A0, 1.0 / a9 * *&qword_1012186A0}];
    [v36 frame];
    [v33 bounds];
    [v33 setBounds:?];
    v48 = v33;
    v60 = v86;
  }

  v61 = objc_opt_self();
  v62 = swift_allocObject();
  *(v62 + 16) = v84;
  v63 = [v48 widthAnchor];
  v64 = [v48 heightAnchor];
  v86 = v48;

  v65 = [v63 constraintEqualToAnchor:v64 multiplier:a9];
  *(v62 + 32) = v65;
  sub_100009F78(0, &qword_1011838A0);
  v66 = Array._bridgeToObjectiveC()().super.isa;

  [v61 activateConstraints:v66];

  [v36 frame];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;

  [v25 setFrame:{v68, v70, v72, v74}];
  v75 = v91;
  sub_1000089F8(v91, v60, &qword_101183A90);
  v76 = type metadata accessor for UIView.Corner();
  v77 = *(v76 - 8);
  v78 = *(v77 + 48);
  if (v78(v60, 1, v76) == 1)
  {
    v79 = UIView.Corner.medium.unsafeMutableAddressor();
    v80 = v87;
    (*(v77 + 16))(v87, v79, v76);
    if (v78(v60, 1, v76) != 1)
    {
      sub_1000095E8(v60, &qword_101183A90);
    }
  }

  else
  {
    v80 = v87;
    (*(v77 + 32))(v87, v60, v76);
  }

  (*(v77 + 56))(v80, 0, 1, v76);
  UIView.corner.setter();

  [v25 layoutIfNeeded];
  sub_100020438(v88);

  sub_1000095E8(v75, &qword_101183A90);
  return v25;
}

uint64_t sub_10017A8F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v14;
  v8[2] = a6;
  v8[3] = a7;
  sub_10010FC20(&unk_101181520);
  v8[6] = swift_task_alloc();
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v8[7] = v10;
  *v10 = v8;
  v10[1] = sub_10017AA2C;

  return v12();
}

uint64_t sub_10017AA2C(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10017AB2C, 0, 0);
}

uint64_t sub_10017AB2C()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;
  v9 = v6;
  sub_100030444(v5);
  v10 = v3;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  v12[5] = v1;
  v12[6] = v5;
  v12[7] = v4;
  v12[8] = v10;
  sub_1001F4CB8(0, 0, v2, &unk_100EBE368, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10017AC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017AD30, v10, v9);
}

uint64_t sub_10017AD30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  [v3 setImage:v1];
  if (v2)
  {
    (v0[4])(v0[6]);
  }

  v4 = v0[1];

  return v4();
}

void sub_10017AE78(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_10017C658;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100747E6C;
  v7[3] = &unk_10109E088;
  v5 = _Block_copy(v7);
  v6 = a1;

  [a2 setPreviewProvider:v5];
  _Block_release(v5);
}

BOOL sub_10017AF54(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibrary.ShareAction();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&qword_1011829A8);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  sub_100008FE4(a1, v33);
  sub_10010FC20(&unk_1011814E0);
  if (!swift_dynamicCast())
  {
    sub_100008FE4(a1, v29);
    sub_10010FC20(&qword_1011829B0);
    if (swift_dynamicCast())
    {
      v21 = *(&v31 + 1);
      v22 = v32;
      sub_10000954C(&v30, *(&v31 + 1));
      (*(v22 + 8))(v21, v22);
      v24 = v23;
      sub_10000959C(&v30);
      if (v24)
      {

        v20 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_1000095E8(&v30, &qword_1011829B8);
    }

    v20 = 0;
    goto LABEL_8;
  }

  (*(v12 + 32))(v14, v17, v11);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  static MusicLibraryAction<>.share.getter();
  v18 = v27;
  MusicLibrary.supportedStatus<A, B>(for:action:)();

  (*(v26 + 8))(v4, v18);
  (*(v12 + 8))(v14, v11);
  v19 = v28;
  (*(v5 + 32))(v7, v10, v28);
  v20 = (*(v5 + 88))(v7, v19) == enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v5 + 8))(v7, v19);
LABEL_8:
  sub_10000959C(v33);
  return v20;
}

uint64_t sub_10017B360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = type metadata accessor for UTType();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  v6[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[26] = v9;
  v6[27] = v8;

  return _swift_task_switch(sub_10017B490, v9, v8);
}

uint64_t sub_10017B490()
{
  v1 = v0[18];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000954C(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_10017B5BC;
  v5 = v0[24];

  return v7(v5, v2, v3);
}

uint64_t sub_10017B5BC()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_10017B6DC, v3, v2);
}

uint64_t sub_10017B6DC()
{
  v29 = v0;
  v1 = v0[24];

  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[24], &qword_101183A20);
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v5 = v0[20];
    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_1012186C8);
    sub_100008FE4(v5, (v0 + 8));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136446210;
      sub_100008FE4((v0 + 8), (v0 + 13));
      sub_10010FC20(&unk_10118AB50);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      sub_10000959C((v0 + 8));
      v14 = sub_1000105AC(v11, v13, &v28);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Could not retrieve share URL for item=%{public}s.", v9, 0xCu);
      sub_10000959C(v10);
    }

    else
    {

      sub_10000959C((v0 + 8));
    }
  }

  else
  {
    v16 = v0[23];
    v15 = v0[24];
    v17 = v0[21];
    v18 = v0[22];
    v19 = v0[19];
    URL._bridgeToObjectiveC()(v4);
    v21 = v20;
    (*(v3 + 8))(v15, v2);
    static UTType.url.getter();
    UTType.identifier.getter();
    (*(v18 + 8))(v16, v17);
    v22 = String._bridgeToObjectiveC()();

    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    v0[6] = sub_10017C450;
    v0[7] = v23;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10056401C;
    v0[5] = &unk_10109DFE8;
    v24 = _Block_copy(v0 + 2);
    v25 = v21;

    [v19 registerItemForTypeIdentifier:v22 loadHandler:v24];
    _Block_release(v24);
  }

  v26 = v0[1];

  return v26();
}

id sub_10017BA78(uint64_t a1)
{
  v2 = objc_allocWithZone(UIDragPreview);

  return [v2 initWithView:a1];
}

id sub_10017BAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_10118B960);
  swift_getAssociatedTypeWitness();
  sub_10017C3D0();
  v5 = Sequence.compactMap<A>(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    return [objc_allocWithZone(UIDropProposal) initWithDropOperation:0];
  }

  else
  {
    v7 = (*(a3 + 32))(v5, a2, a3);

    return v7;
  }
}

uint64_t sub_10017BC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_10118B960);
  swift_getAssociatedTypeWitness();
  sub_10017C3D0();
  v5 = Sequence.compactMap<A>(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(a3 + 40))(v5, a2, a3);
  }

  return v6 & 1;
}

uint64_t sub_10017BD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100008FE4(a1, v6);
  sub_10010FC20(&qword_10119E600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v4 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_10017BE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_10017BE5C, 0, 0);
}

uint64_t sub_10017BE5C()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v0[5];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_10010FC20(&unk_10118B960);
  swift_getAssociatedTypeWitness();
  sub_10017C3D0();
  v4 = Sequence.compactMap<A>(_:)();
  v0[9] = v4;

  v0[3] = v4;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v5 = v0[4];
    v6 = type metadata accessor for Notice(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v13 = (*(v0[7] + 48) + **(v0[7] + 48));
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_10017C0F4;
    v10 = v0[7];
    v11 = v0[6];
    v12 = v0[4];

    return v13(v12, v4, v11, v10);
  }
}

uint64_t sub_10017C0F4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10017C26C;
  }

  else
  {
    v2 = sub_10017C208;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017C208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017C26C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017C2D0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012186C8);
  sub_1000060E4(v0, qword_1012186C8);
  return static Logger.music(_:)();
}

uint64_t sub_10017C334()
{
  v1 = *v0;
  v2 = 0x7265646C6F46;
  v3 = 0x7473696C79616C50;
  v4 = 0x6575657551;
  if (v1 != 3)
  {
    v4 = 0x50726564726F6552;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7972617262694CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10017C3D0()
{
  result = qword_1011829A0;
  if (!qword_1011829A0)
  {
    sub_1001109D0(&unk_10118B960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011829A0);
  }

  return result;
}

uint64_t (*sub_10017C450(uint64_t (*result)(void, void)))(void, void)
{
  if (result)
  {
    return result(*(v1 + 16), 0);
  }

  return result;
}

uint64_t sub_10017C490(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_10017A8F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017C57C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_10017AC90(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_10017C658()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(UIDragPreview);

  return [v2 initWithView:v1];
}

uint64_t getEnumTagSinglePayload for DragDropIntentIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DragDropIntentIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10017C7F4()
{
  result = qword_1011829C0;
  if (!qword_1011829C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011829C0);
  }

  return result;
}

void sub_10017C868()
{
  v1 = *(v0 + 16);

  v3 = v1(v2);

  if (v3)
  {
    if (qword_10117F270 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_1012186E0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136446210;
      v10 = v5;
      v11 = [v10 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_1000105AC(v12, v14, &v20);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Performing pop onto navigation controller=%{public}s", v8, 0xCu);
      sub_10000959C(v9);
    }

    oslog = [v5 popViewControllerAnimated:1];
  }

  else
  {
    if (qword_10117F270 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_1012186E0);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Failed to pop navigation", v18, 2u);
    }
  }
}

void sub_10017CB00()
{
  v1 = *(v0 + 16);

  v3 = v1(v2);

  if (v3)
  {
    if (qword_10117F270 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_1012186E0);
    v18 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136446210;
      v9 = v18;
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_1000105AC(v11, v13, &v19);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Performing pop to root onto navigation controller=%{public}s", v7, 0xCu);
      sub_10000959C(v8);
    }
  }

  else
  {
    if (qword_10117F270 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_1012186E0);
    v18 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v18, v16, "Failed to pop to root", v17, 2u);
    }
  }
}

void sub_10017CD94(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicPlayActivityFields();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v73 - v10;
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  v14 = *(v2 + 16);

  v16 = v14(v15);

  if (v16)
  {
    if (qword_10117F270 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000060E4(v17, qword_1012186E0);
    v18 = *(v6 + 16);
    v18(v13, a2, v5);
    v19 = a1;
    v20 = v16;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v78 = a2;
      v24 = v23;
      v76 = swift_slowAlloc();
      v80 = v76;
      *v24 = 136446722;
      v25 = v19;
      v75 = v21;
      v26 = v5;
      v27 = v25;
      v28 = [v25 description];
      v73 = v20;
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v22;
      v31 = v30;
      v77 = v19;
      v33 = v32;

      v34 = sub_1000105AC(v31, v33, &v80);

      *(v24 + 4) = v34;
      *(v24 + 12) = 2082;
      v18(v79, v13, v26);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      (*(v6 + 8))(v13, v26);
      v38 = sub_1000105AC(v35, v37, &v80);

      *(v24 + 14) = v38;
      *(v24 + 22) = 2082;
      v39 = v73;
      v40 = v73;
      v41 = [v40 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_1000105AC(v42, v44, &v80);
      v19 = v77;

      *(v24 + 24) = v45;
      v46 = v75;
      _os_log_impl(&_mh_execute_header, v75, v74, "Pushing to viewController=%{public}s with playActivityFields=%{public}s onto navigation controller=%{public}s", v24, 0x20u);
      swift_arrayDestroy();

      v47 = v39;
    }

    else
    {

      (*(v6 + 8))(v13, v5);
      v47 = v20;
    }

    MusicPlayActivityFields.featureName.getter();
    v67 = String._bridgeToObjectiveC()();

    [v19 setPlayActivityFeatureName:v67];

    v68 = MusicPlayActivityFields.recommendationData.getter();
    isa = 0;
    if (v69 >> 60 != 15)
    {
      v71 = v68;
      v72 = v69;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100029CA4(v71, v72);
    }

    [v19 setPlayActivityForwardedRecommendationData:isa];

    [v47 pushViewController:v19 animated:1];
  }

  else
  {
    if (qword_10117F270 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000060E4(v48, qword_1012186E0);
    v49 = *(v6 + 16);
    v49(v8, a2, v5);
    v50 = a1;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v77 = v51;
      v54 = v53;
      v78 = swift_slowAlloc();
      v80 = v78;
      *v54 = 136446466;
      v55 = v50;
      v56 = [v55 description];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v76) = v52;
      v58 = v57;
      v60 = v59;

      v61 = sub_1000105AC(v58, v60, &v80);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2082;
      v49(v79, v8, v5);
      v62 = String.init<A>(describing:)();
      v64 = v63;
      (*(v6 + 8))(v8, v5);
      v65 = sub_1000105AC(v62, v64, &v80);

      *(v54 + 14) = v65;
      v66 = v77;
      _os_log_impl(&_mh_execute_header, v77, v76, "Failed to push to viewController=%{public}s with playActivityFields=%{public}s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }
}

void *sub_10017D434()
{
  v26 = type metadata accessor for MusicPlayActivityFields();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);

  v6 = v4(v5);

  if (v6)
  {
    v7 = [v6 viewControllers];

    sub_10016F3C8();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v8 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_4;
      }

LABEL_17:

      return _swiftEmptyArrayStorage;
    }
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_4:
  v27 = _swiftEmptyArrayStorage;
  result = sub_10066C8BC(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v27;
    v13 = v8;
    v22 = v1 + 32;
    v23 = v8 & 0xC000000000000001;
    v24 = v9;
    v25 = v8;
    do
    {
      if (v23)
      {
        v14 = sub_10004056C(v11, v13);
      }

      else
      {
        v14 = *(v13 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = [v14 playActivityFeatureName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = [v15 playActivityForwardedRecommendationData];
      if (v17)
      {
        v18 = v17;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v19 = v24;
      MusicPlayActivityFields.init(featureName:recommendationData:)();

      v27 = v12;
      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        sub_10066C8BC(v20 > 1, v21 + 1, 1);
        v12 = v27;
      }

      ++v11;
      v12[2] = v21 + 1;
      (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v21, v3, v26);
      v13 = v25;
    }

    while (v19 != v11);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t LyricsOptionsManager.Observer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10017D7A0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012186E0);
  sub_1000060E4(v0, qword_1012186E0);
  return static Logger.music(_:)();
}

uint64_t sub_10017D810()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10017D888(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a1 & 1) == 0)
    {
      v3 = result;
      if (qword_10117F6B0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000060E4(v4, qword_101218BD8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "GDPR has been accepted. Triggering profile fetch…", v7, 2u);
      }

      sub_100066FF4();
      *(v3 + OBJC_IVAR____TtC5Music19UserProfileObserver_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

uint64_t sub_10017D9C0()
{
  if (*(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_task))
  {

    Task.cancel()();
  }

  v1 = OBJC_IVAR____TtC5Music19UserProfileObserver__profile;
  v2 = sub_10010FC20(&qword_101184240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
  v8[3] = v6;
  sub_1000095E8(v8, &qword_101182BC0);
  return swift_deallocClassInstance();
}

uint64_t sub_10017DB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10010FC20(&unk_101181520);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for MusicUserProfileRequest();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = *(sub_10010FC20(&qword_101183AD0) - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_10017DCC8, v8, v7);
}

uint64_t sub_10017DCC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    MusicUserProfileRequest.init()();
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_10017DE00;
    v3 = v0[13];

    return sub_10017E134(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10017DE00()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 136);
  v6 = *(v1 + 128);

  return _swift_task_switch(sub_10017DF84, v6, v5);
}

uint64_t sub_10017DF84()
{
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[6];

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1000089F8(v2, v3, &qword_101183AD0);

  v7 = static MainActor.shared.getter();
  v8 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v1;
  sub_10017E9EC(v3, v9 + v8);
  sub_1001F4CB8(0, 0, v5, &unk_100EBE5C8, v9);

  sub_1000095E8(v2, &qword_101183AD0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10017E134(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for MusicUserProfileResponse();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[6] = v3;
  v1[7] = type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_10017E258;

  return MusicUserProfileRequest.response()(v3);
}

uint64_t sub_10017E258()
{
  *(*v1 + 80) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10017E48C;
  }

  else
  {
    v4 = sub_10017E3B4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10017E3B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  MusicUserProfileResponse.userProfile.getter();
  (*(v2 + 8))(v1, v3);
  v5 = type metadata accessor for UserProfile();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10017E48C()
{
  v16 = v0;

  if (qword_10117F6B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218BD8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Encountered error fetching user profile: %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[3];
  v12 = type metadata accessor for UserProfile();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10017E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10010FC20(&qword_101183AD0);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017E78C, v7, v6);
}

uint64_t sub_10017E78C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_1000089F8(v3, v1, &qword_101183AD0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v1, v2, &qword_101183AD0);

  static Published.subscript.setter();
  sub_1000095E8(v1, &qword_101183AD0);
  v5 = *(v4 + OBJC_IVAR____TtC5Music19UserProfileObserver_task);
  *(v4 + OBJC_IVAR____TtC5Music19UserProfileObserver_task) = 0;
  if (v5)
  {
    Task.cancel()();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10017E8E0@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017E938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10017DB20(a1, v4, v5, v6);
}

uint64_t sub_10017E9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017EA5C(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_101183AD0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10017E6B0(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_10017EB64()
{
  result = qword_101182BE0;
  if (!qword_101182BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101182BE0);
  }

  return result;
}

unint64_t sub_10017EBBC()
{
  result = qword_101182BE8;
  if (!qword_101182BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101182BE8);
  }

  return result;
}

unint64_t sub_10017EC14()
{
  result = qword_101182BF0;
  if (!qword_101182BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101182BF0);
  }

  return result;
}

unint64_t sub_10017EC6C()
{
  result = qword_101182BF8;
  if (!qword_101182BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101182BF8);
  }

  return result;
}

uint64_t sub_10017ED2C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100006080(v0, qword_101218700);
  sub_1000060E4(v0, qword_101218700);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10017ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[91] = a4;
  v4[90] = a3;
  v4[89] = a2;
  v4[88] = a1;
  v4[92] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[93] = swift_task_alloc();
  type metadata accessor for PlaybackIntentDescriptor(0);
  v4[94] = swift_task_alloc();
  sub_10010FC20(&unk_101188910);
  v4[95] = swift_task_alloc();

  return _swift_task_switch(sub_10017EE94, 0, 0);
}

uint64_t sub_10017EE94()
{
  IntentParameter.wrappedValue.getter();
  v2 = v0[62];
  v1 = v0[63];
  v0[96] = v1;
  v3 = swift_task_alloc();
  v0[97] = v3;
  *v3 = v0;
  v3[1] = sub_10017EF44;

  return sub_100180C38((v0 + 22), v2, v1);
}

uint64_t sub_10017EF44()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_100180858;
  }

  else
  {

    v2 = sub_10017F060;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017F060()
{
  v40 = v0;
  if (*(v0 + 200))
  {
    sub_10010FC20(&unk_10118AB50);
    sub_10010FC20(&qword_101182C50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 288) = 0;
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
    }
  }

  else
  {
    sub_1000095E8(v0 + 176, &qword_10118B990);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
  }

  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 512);
  v2 = *(v0 + 520);
  *(v0 + 792) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 800) = v3;
    *v3 = v0;
    v3[1] = sub_10017F8F4;

    return sub_100180C38(v0 + 96, v1, v2);
  }

  sub_1000089F8(v0 + 256, v0 + 16, &qword_101182C38);
  sub_1000089F8(v0 + 136, v0 + 56, &qword_101182C40);
  v5 = *(v0 + 80);
  if (*(v0 + 40))
  {
    if (v5)
    {
      v6 = *(v0 + 760);
      sub_100059A8C((v0 + 16), v0 + 336);
      sub_100059A8C((v0 + 56), v0 + 376);
      v7 = *(v0 + 400);
      sub_10000954C((v0 + 376), v7);
      sub_100188C90();
      v8 = *(v7 - 8);
      swift_task_alloc();
      (*(v8 + 16))();
      sub_100008FE4(v0 + 336, v0 + 416);
      v9 = type metadata accessor for MusicPlaybackSource();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
      v10 = MPCPlaybackIntent.init<A>(container:startingAt:playbackSource:)();
      sub_10000959C(v0 + 336);

      v11 = v10;
      v12 = v0 + 376;
    }

    else
    {
      sub_100059A8C((v0 + 16), v0 + 296);
      v18 = *(v0 + 320);
      sub_10000954C((v0 + 296), v18);
      sub_100188C90();
      v19 = *(v18 - 8);
      swift_task_alloc();
      (*(v19 + 16))();
      v20 = MPCPlaybackIntent.init<A>(_:)();

      v11 = v20;
      v12 = v0 + 296;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v13 = *(v0 + 760);
    sub_100059A8C((v0 + 56), v0 + 216);
    v14 = *(v0 + 240);
    sub_10000954C((v0 + 216), v14);
    sub_100188C90();
    v15 = *(v14 - 8);
    swift_task_alloc();
    (*(v15 + 16))();
    v16 = type metadata accessor for MusicPlaybackSource();
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = MPCPlaybackIntent.init<A>(container:startingAt:playbackSource:)();

    v11 = v17;
    v12 = v0 + 216;
LABEL_15:
    sub_10000959C(v12);
    *(v0 + 816) = v11;
    v21 = *(v0 + 752);
    v22 = *(v0 + 744);
    IntentParameter.wrappedValue.getter();
    v23 = String._bridgeToObjectiveC()();

    [v11 setPlayActivityFeatureName:v23];

    *v22 = v11;
    swift_storeEnumTagMultiPayload();
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    *(&v38 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v39 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v37 = 0xD000000000000013;
    *(&v37 + 1) = 0x8000000100E3E170;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v22, v35, 2, 1, 0, 1, 0, 1, v21, 0, &v37);
    *(v0 + 824) = type metadata accessor for MainActor();
    *(v0 + 832) = static MainActor.shared.getter();
    v25 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100180240, v25, v24);
  }

  if (qword_10117F288 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000060E4(v26, qword_101182BC8);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *&v37 = swift_slowAlloc();
    *v29 = 136446466;
    IntentParameter.wrappedValue.getter();
    v30 = sub_1000105AC(*(v0 + 528), *(v0 + 536), &v37);

    *(v29 + 4) = v30;
    *(v29 + 12) = 2082;
    IntentParameter.wrappedValue.getter();
    *(v0 + 560) = *(v0 + 544);
    sub_10010FC20(&qword_1011815E0);
    v31 = String.init<A>(describing:)();
    v33 = sub_1000105AC(v31, v32, &v37);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "No playable item found for item: %{public}s, container: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  static IntentResult.result<>()();
  sub_1000095E8(v0 + 136, &qword_101182C40);
  sub_1000095E8(v0 + 256, &qword_101182C38);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_10017F8F4()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_1001808E4;
  }

  else
  {
    v2 = sub_10017FA28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017FA28()
{
  v39 = v0;
  v1 = (v0 + 456);
  sub_1000095E8(v0 + 136, &qword_101182C40);
  if (*(v0 + 120))
  {
    sub_10010FC20(&unk_10118AB50);
    sub_10010FC20(&qword_101182C48);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 488) = 0;
      *v1 = 0u;
      *(v0 + 472) = 0u;
    }
  }

  else
  {
    sub_1000095E8(v0 + 96, &qword_10118B990);
    *v1 = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0;
  }

  v2 = *(v0 + 472);
  *(v0 + 136) = *v1;
  *(v0 + 152) = v2;
  *(v0 + 168) = *(v0 + 488);
  sub_1000089F8(v0 + 256, v0 + 16, &qword_101182C38);
  sub_1000089F8(v0 + 136, v0 + 56, &qword_101182C40);
  v3 = *(v0 + 80);
  if (*(v0 + 40))
  {
    if (v3)
    {
      v4 = *(v0 + 760);
      sub_100059A8C((v0 + 16), v0 + 336);
      sub_100059A8C((v0 + 56), v0 + 376);
      v5 = *(v0 + 400);
      sub_10000954C((v0 + 376), v5);
      sub_100188C90();
      v6 = *(v5 - 8);
      swift_task_alloc();
      (*(v6 + 16))();
      sub_100008FE4(v0 + 336, v0 + 416);
      v7 = type metadata accessor for MusicPlaybackSource();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = MPCPlaybackIntent.init<A>(container:startingAt:playbackSource:)();
      sub_10000959C(v0 + 336);

      v9 = v8;
      v10 = v0 + 376;
    }

    else
    {
      sub_100059A8C((v0 + 16), v0 + 296);
      v16 = *(v0 + 320);
      sub_10000954C((v0 + 296), v16);
      sub_100188C90();
      v17 = *(v16 - 8);
      swift_task_alloc();
      (*(v17 + 16))();
      v18 = MPCPlaybackIntent.init<A>(_:)();

      v9 = v18;
      v10 = v0 + 296;
    }

LABEL_11:
    sub_10000959C(v10);
    *(v0 + 816) = v9;
    v19 = *(v0 + 752);
    v20 = *(v0 + 744);
    IntentParameter.wrappedValue.getter();
    v21 = String._bridgeToObjectiveC()();

    [v9 setPlayActivityFeatureName:v21];

    *v20 = v9;
    swift_storeEnumTagMultiPayload();
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    *(&v37 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v38 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v36 = 0xD000000000000013;
    *(&v36 + 1) = 0x8000000100E3E170;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v20, v34, 2, 1, 0, 1, 0, 1, v19, 0, &v36);
    *(v0 + 824) = type metadata accessor for MainActor();
    *(v0 + 832) = static MainActor.shared.getter();
    v23 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100180240, v23, v22);
  }

  if (v3)
  {
    v11 = *(v0 + 760);
    sub_100059A8C((v0 + 56), v0 + 216);
    v12 = *(v0 + 240);
    sub_10000954C((v0 + 216), v12);
    sub_100188C90();
    v13 = *(v12 - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = type metadata accessor for MusicPlaybackSource();
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = MPCPlaybackIntent.init<A>(container:startingAt:playbackSource:)();

    v9 = v15;
    v10 = v0 + 216;
    goto LABEL_11;
  }

  if (qword_10117F288 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000060E4(v24, qword_101182BC8);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *&v36 = swift_slowAlloc();
    *v27 = 136446466;
    IntentParameter.wrappedValue.getter();
    v28 = sub_1000105AC(*(v0 + 528), *(v0 + 536), &v36);

    *(v27 + 4) = v28;
    *(v27 + 12) = 2082;
    IntentParameter.wrappedValue.getter();
    *(v0 + 560) = *(v0 + 544);
    sub_10010FC20(&qword_1011815E0);
    v29 = String.init<A>(describing:)();
    v31 = sub_1000105AC(v29, v30, &v36);

    *(v27 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "No playable item found for item: %{public}s, container: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
  }

  static IntentResult.result<>()();
  sub_1000095E8(v0 + 136, &qword_101182C40);
  sub_1000095E8(v0 + 256, &qword_101182C38);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100180240()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1001802D8, 0, 0);
}

uint64_t sub_1001802D8()
{
  *(v0 + 840) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100180364, v2, v1);
}

uint64_t sub_100180364()
{

  v1 = swift_task_alloc();
  *(v0 + 848) = v1;
  *v1 = v0;
  v1[1] = sub_100180410;
  v2 = *(v0 + 752);

  return PlaybackController.add(_:route:)(v2, 0);
}

uint64_t sub_100180410()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_100180998;
  }

  else
  {
    v2 = sub_100180524;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100180524()
{
  v25 = v0;
  if (qword_10117F288 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 816);
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101182BC8);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 816);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136446722;
    IntentParameter.wrappedValue.getter();
    v8 = sub_1000105AC(*(v0 + 624), *(v0 + 632), &v24);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2082;
    IntentParameter.wrappedValue.getter();
    *(v0 + 656) = *(v0 + 640);
    sub_10010FC20(&qword_1011815E0);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000105AC(v9, v10, &v24);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2082;
    v12 = [v6 playActivityFeatureName];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    *(v0 + 672) = v14;
    *(v0 + 680) = v16;
    v17 = String.init<A>(describing:)();
    v19 = sub_1000105AC(v17, v18, &v24);

    *(v7 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v4, v5, "Added new playback intent for item: %{public}s, container: %{public}s, playActivityFeatureName: %{public}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v20 = *(v0 + 816);
  v21 = *(v0 + 752);
  static IntentResult.result<>()();

  sub_100188CDC(v21);
  sub_1000095E8(v0 + 136, &qword_101182C40);
  sub_1000095E8(v0 + 256, &qword_101182C38);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100180858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001808E4()
{
  sub_1000095E8(v0 + 136, &qword_101182C40);
  sub_1000095E8(v0 + 256, &qword_101182C38);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100180998()
{
  v14 = v0;
  if (qword_10117F288 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101182BC8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v4 = 136446466;
    IntentParameter.wrappedValue.getter();
    v5 = sub_1000105AC(*(v0 + 592), *(v0 + 600), v13);

    *(v4 + 4) = v5;
    *(v4 + 12) = 2082;
    IntentParameter.wrappedValue.getter();
    *(v0 + 608) = *(v0 + 688);
    sub_10010FC20(&qword_1011815E0);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add new playback intent for item: %{public}s, container: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 816);
  v10 = *(v0 + 752);
  swift_willThrow();

  sub_100188CDC(v10);
  sub_1000095E8(v0 + 136, &qword_101182C40);
  sub_1000095E8(v0 + 256, &qword_101182C38);

  v11 = *(v0 + 8);

  return v11();
}