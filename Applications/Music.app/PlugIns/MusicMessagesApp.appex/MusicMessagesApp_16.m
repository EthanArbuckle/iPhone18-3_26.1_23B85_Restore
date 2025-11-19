uint64_t sub_100193038()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A28);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A28);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A28);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100193324(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100193454, 0, 0);
}

uint64_t sub_100193454()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A20);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A20);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A20);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A20);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10019397C;

  return v37(v0 + 128);
}

uint64_t sub_10019397C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100193CEC;
  }

  else
  {
    v2 = sub_100193A90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100193A90()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A20);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A20);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A20);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100193CEC()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A20);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A20);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A20);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100193FD8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100194108, 0, 0);
}

uint64_t sub_100194108()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A18);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A18);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A18);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A18);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100194630;

  return v37(v0 + 128);
}

uint64_t sub_100194630()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1001949A0;
  }

  else
  {
    v2 = sub_100194744;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100194744()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A18);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A18);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A18);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001949A0()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A18);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A18);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A18);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100194C8C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110);
  *(v4 + 904) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 912) = v6;
  *(v4 + 920) = *(v6 - 8);
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  *(v4 + 944) = swift_task_alloc();
  v7 = a4[3];
  *(v4 + 144) = a4[2];
  *(v4 + 160) = v7;
  v8 = a4[5];
  *(v4 + 176) = a4[4];
  *(v4 + 192) = v8;
  v9 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v9;

  return _swift_task_switch(sub_100194DB4, 0, 0);
}

uint64_t sub_100194DB4()
{
  v38 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 952) = v4;
  v5 = *(v2 + 16);
  *(v0 + 960) = v5;
  *(v0 + 968) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v6;
  v7 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v7;
  v8 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v8;
  sub_1000108DC(v0 + 16, v0 + 208, &qword_100635A70);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 48));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A70);
    v20 = sub_1000343A8(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A70);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  sub_100006F10(0, &qword_100635118);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110);
  *(v0 + 880) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 888) = v25;
  v26 = *(v0 + 160);
  *(v0 + 336) = *(v0 + 144);
  *(v0 + 352) = v26;
  v27 = *(v0 + 192);
  *(v0 + 368) = *(v0 + 176);
  *(v0 + 384) = v27;
  v28 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v28;
  v29 = *(v0 + 384);
  v30 = swift_allocObject();
  v31 = *(v0 + 160);
  v30[3] = *(v0 + 144);
  v30[4] = v31;
  v32 = *(v0 + 192);
  v30[5] = *(v0 + 176);
  v30[6] = v32;
  v33 = *(v0 + 128);
  v30[1] = *(v0 + 112);
  v30[2] = v33;
  sub_1000108DC(v0 + 304, v0 + 400, &qword_100635A70);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 976) = sub_1004D9C0C();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = sub_1001952C4;

  return v36(v0 + 112);
}

uint64_t sub_1001952C4()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_10019562C;
  }

  else
  {
    v2 = sub_1001953D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001953D8()
{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 720) = *(v0 + 144);
  *(v0 + 736) = v5;
  v6 = *(v0 + 192);
  *(v0 + 752) = *(v0 + 176);
  *(v0 + 768) = v6;
  v7 = *(v0 + 128);
  *(v0 + 688) = *(v0 + 112);
  *(v0 + 704) = v7;
  sub_1000108DC(v0 + 688, v0 + 784, &qword_100635A70);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 936);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  if (v10)
  {
    v22 = *(v0 + 936);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 720));
    v18 = v17;
    sub_10001074C(v0 + 688, &qword_100635A70);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 688, &qword_100635A70);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10019562C()
{
  v28 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 912);

  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 528) = *(v0 + 144);
  *(v0 + 544) = v5;
  v6 = *(v0 + 192);
  *(v0 + 560) = *(v0 + 176);
  *(v0 + 576) = v6;
  v7 = *(v0 + 128);
  *(v0 + 496) = *(v0 + 112);
  *(v0 + 512) = v7;
  sub_1000108DC(v0 + 496, v0 + 592, &qword_100635A70);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 992);
    v26 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    sub_10001074C(v0 + 496, &qword_100635A70);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 928);
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);

    sub_10001074C(v0 + 496, &qword_100635A70);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100195910(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100195A40, 0, 0);
}

uint64_t sub_100195A40()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A50);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A50);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A50);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A50);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100195F68;

  return v37(v0 + 128);
}

uint64_t sub_100195F68()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1001962D8;
  }

  else
  {
    v2 = sub_10019607C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019607C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A50);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A50);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A50);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001962D8()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A50);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A50);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A50);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001965C4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_1001966F4, 0, 0);
}

uint64_t sub_1001966F4()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A48);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A48);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A48);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A48);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100196C1C;

  return v37(v0 + 128);
}

uint64_t sub_100196C1C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100196F8C;
  }

  else
  {
    v2 = sub_100196D30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100196D30()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A48);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A48);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A48);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100196F8C()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A48);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A48);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A48);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100197278(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_1001973A8, 0, 0);
}

uint64_t sub_1001973A8()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A40);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A40);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A40);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A40);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1001978D0;

  return v37(v0 + 128);
}

uint64_t sub_1001978D0()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100197C40;
  }

  else
  {
    v2 = sub_1001979E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001979E4()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A40);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A40);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A40);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100197C40()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A40);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A40);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A40);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100197F2C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100004CB8(&qword_100635110);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10019805C, 0, 0);
}

uint64_t sub_10019805C()
{
  v39 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000108DC(v0 + 16, v0 + 240, &qword_100635A38);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_10001074C(v0 + 16, &qword_100635A38);
    v20 = sub_1000343A8(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100008D24(v16);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635A38);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100006F10(0, &qword_100635118);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v21, &qword_100635110);
  *(v0 + 1024) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_1000108DC(v0 + 352, v0 + 464, &qword_100635A38);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 1120) = sub_1004D9C0C();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100198584;

  return v37(v0 + 128);
}

uint64_t sub_100198584()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1001988F4;
  }

  else
  {
    v2 = sub_100198698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100198698()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_1000108DC(v0 + 800, v0 + 912, &qword_100635A38);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_10001074C(v0 + 800, &qword_100635A38);
    v19 = sub_1000343A8(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100008D24(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001074C(v0 + 800, &qword_100635A38);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001988F4()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_1000108DC(v0 + 576, v0 + 688, &qword_100635A38);
  swift_errorRetain();
  v8 = sub_1004D964C();
  v9 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_10001074C(v0 + 576, &qword_100635A38);
    v17 = sub_1000343A8(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_10001074C(v0 + 576, &qword_100635A38);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100198BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  sub_100004CB8(&qword_100635110);
  *(v5 + 1072) = swift_task_alloc();
  v7 = sub_1004D966C();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(sub_100198CF8, 0, 0);
}

uint64_t sub_100198CF8()
{
  v32 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = sub_100035430(v3, qword_1006350F8);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_1000108DC(v4, v0 + 16, &qword_100635DA8);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1080);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    v15 = *(v0 + 208);
    sub_10001074C(v0 + 16, &qword_100635DA8);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_1000343A8(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    sub_100008D24(v14);
  }

  else
  {
    sub_10001074C(v0 + 16, &qword_100635DA8);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  sub_100006F10(0, &qword_100635118);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004DE74C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = sub_1004DE59C();

  sub_10001074C(v20, &qword_100635110);
  *(v0 + 1040) = v24;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = sub_1004D9B0C();

  *(v0 + 1048) = v25;
  sub_1000108DC(v21, v0 + 272, &qword_100635DA8);
  v26 = swift_allocObject();
  sub_100047F38(v0 + 272, v26 + 16, &qword_100635DA8);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  *(v0 + 1152) = sub_1004D9C0C();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = sub_1001991E0;
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

uint64_t sub_1001991E0()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_100199544;
  }

  else
  {
    v2 = sub_1001992F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001992F4()
{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  sub_1000108DC(v5, v0 + 784, &qword_100635DA8);
  v6 = sub_1004D964C();
  v7 = sub_1004DDF9C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1080);
  if (v8)
  {
    v21 = *(v0 + 1144);
    v12 = swift_slowAlloc();
    v20 = v10;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = *(v0 + 976);
    sub_10001074C(v0 + 784, &qword_100635DA8);
    v15 = ActionType.rawValue.getter(v14);
    v17 = sub_1000343A8(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish success", v12, 0xCu);
    sub_100008D24(v13);

    v21(v20, v11);
  }

  else
  {
    sub_10001074C(v0 + 784, &qword_100635DA8);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100199544()
{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  sub_1000108DC(v5, v0 + 528, &qword_100635DA8);
  swift_errorRetain();
  v6 = sub_1004D964C();
  v7 = sub_1004DDF7C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1168);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1144);
    v9 = *(v0 + 1080);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    sub_10001074C(v0 + 528, &qword_100635DA8);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_1000343A8(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v15 = sub_1004DD4DC();
    v17 = sub_1000343A8(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1144);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1080);
    sub_10001074C(v0 + 528, &qword_100635DA8);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100199818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100004CB8(&qword_100635110);
  v4[6] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100635B30);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_1004D966C();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001999BC, 0, 0);
}

uint64_t sub_1001999BC()
{
  v37 = v0;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_100035430(v2, qword_1006350F8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_1000108DC(v5, v4, &qword_100635B30);
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_10001074C(v14, &qword_100635B30);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_1000343A8(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_100008D24(v17);
  }

  else
  {
    sub_10001074C(v0[13], &qword_100635B30);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_100006F10(0, &qword_100635118);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_1004DE74C();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_1004DE59C();

  sub_10001074C(v23, &qword_100635110);
  v0[2] = v28;
  sub_1004DE58C();
  sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
  v29 = sub_1004D9B0C();

  v0[3] = v29;
  sub_1000108DC(v25, v21, &qword_100635B30);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_100047F38(v21, v31 + v30, &qword_100635B30);
  sub_100004CB8(&qword_100635128);
  sub_100042B08(&qword_100635130, &qword_100635128);
  v0[22] = sub_1004D9C0C();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_100199EC0;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_100199EC0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10019A234;
  }

  else
  {
    v2 = sub_100199FD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100199FD4()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_1004D9AAC();
  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_100635B30);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_10001074C(v13, &qword_100635B30);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_1000343A8(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_100008D24(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_10001074C(v0[11], &qword_100635B30);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10019A234()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_100635B30);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_10001074C(v12, &qword_100635B30);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000343A8(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_10001074C(v0[10], &qword_100635B30);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10019A528(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004D966C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v9 = sub_100035430(v5, qword_1006350F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000108DC(a2, v21, &qword_1006359A8);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 72));
    v17 = v16;
    sub_10001074C(a2, &qword_1006359A8);
    v18 = sub_1000343A8(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v20, v13, 0xCu);
    sub_100008D24(v14);
  }

  else
  {
    sub_10001074C(a2, &qword_1006359A8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019A784(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004D966C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v9 = sub_100035430(v5, qword_1006350F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000108DC(a2, v22, &qword_100635A70);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 32));
    v17 = v16;
    sub_10001074C(a2, &qword_100635A70);
    v18 = sub_1000343A8(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_100008D24(v14);
  }

  else
  {
    sub_10001074C(a2, &qword_100635A70);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019A9E0(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004D966C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v9 = sub_100035430(v5, qword_1006350F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1000108DC(a2, v23, &qword_100635DA8);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    sub_10001074C(v23, &qword_100635DA8);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_1000343A8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_100008D24(v14);
  }

  else
  {
    sub_10001074C(v23, &qword_100635DA8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019AC38(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Notice(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1001AC0DC(v6, type metadata accessor for Notice);
  }

  v8 = Strong;
  sub_10025A524(v13);

  v9 = v14;
  if (v14)
  {
    v10 = v15;
    sub_100008C70(v13, v14);
    (*(v10 + 8))(v6, a2 & 1, v9, v10);
    sub_1001AC0DC(v6, type metadata accessor for Notice);
    return sub_100008D24(v13);
  }

  else
  {
    sub_1001AC0DC(v6, type metadata accessor for Notice);
    return sub_10001074C(v13, &qword_100635A30);
  }
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  sub_1004DF26C();
  sub_1004DF27C(0);
  return sub_1004DF2BC();
}

Swift::Int sub_10019AE08()
{
  sub_1004DF26C();
  sub_1004DF27C(0);
  return sub_1004DF2BC();
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  v4 = sub_1004D83FC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100004CB8(&qword_1006389A0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v20 - v8;
  if (!(a2 >> 14))
  {
    v11 = a1;
    v12 = 0xE000000000000000;
    if (v11 == 5)
    {
      v13._countAndFlagsBits = 0;
LABEL_31:
      v22 = 0x6164644120959EE2;
      v23 = 0xAB00000000656C62;
      v13._object = v12;
      sub_1004DD5FC(v13);

      return v22;
    }

    v16 = 0xD000000000000016;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1004DEAAC(29);

    v22 = 0xD00000000000001BLL;
    v23 = 0x80000001004EFFC0;
    if (v11 <= 1)
    {
      if (v11)
      {
        v17 = "Cloud Library Initial Import";
        v16 = 0xD00000000000001FLL;
        goto LABEL_30;
      }

      v19 = "Cloud Library Required";
    }

    else
    {
      if (v11 == 2)
      {
        v17 = "Unadded Tracks Present";
        v16 = 0xD00000000000001CLL;
        goto LABEL_30;
      }

      if (v11 == 3)
      {
        v17 = "hat requires an iCloud account.";
        v16 = 0xD000000000000015;
LABEL_30:
        v21._countAndFlagsBits = v16;
        v21._object = (v17 | 0x8000000000000000);
        sub_100004CB8(&unk_100639EB0);
        v25._countAndFlagsBits = sub_1004DD4DC();
        sub_1004DD5FC(v25);

        v13._countAndFlagsBits = v22;
        v12 = v23;
        goto LABEL_31;
      }

      v19 = "Unadded Tracks Present";
    }

    v17 = (v19 - 32);
    goto LABEL_30;
  }

  if (a2 >> 14 == 1)
  {
    if ((a2 & 0x100) != 0)
    {
      v10 = 9;
      return v10 | 0x1000000000000014;
    }

    if (a2)
    {
      v10 = 10;
      return v10 | 0x1000000000000014;
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    v18 = v7;
    sub_1004DEAAC(24);

    v22 = 0x1000000000000014;
    v23 = 0x80000001004EFF40;
    v20[1] = a1;
    sub_1004D832C();
    sub_10019B2C4();
    sub_1004D7F6C();
    sub_100042B08(&qword_1006389B0, &qword_1006389A0);
    sub_1004DD1EC();
    (*(v6 + 8))(v9, v18);
    sub_1004DD5FC(v21);

    v24._countAndFlagsBits = 8233;
    v24._object = 0xE200000000000000;
    sub_1004DD5FC(v24);
    return v22;
  }

  if (!(a1 | a2 ^ 0x8000))
  {
    return 1701736270;
  }

  if (a2 == 0x8000 && a1 == 1)
  {
    return 0x1000000000000013;
  }

  else
  {
    return 0x1000000000000014;
  }
}

unint64_t MusicLibrary.ActionableState.AddOverride.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001CLL;
  v3 = 0xD000000000000015;
  if (a1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10019B2C4()
{
  result = qword_1006389A8;
  if (!qword_1006389A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006389A8);
  }

  return result;
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1496) = v8;
  *(v9 + 1488) = v24;
  *(v9 + 1480) = a8;
  *(v9 + 1472) = a7;
  *(v9 + 1464) = a6;
  *(v9 + 1456) = a5;
  *(v9 + 1448) = a4;
  *(v9 + 1440) = a3;
  *(v9 + 1402) = a2;
  *(v9 + 1432) = a1;
  v10 = *a4;
  *(v9 + 1504) = *a4;
  v11 = sub_1004DCEEC();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = sub_100004CB8(&qword_100636188);
  *(v9 + 1544) = swift_task_alloc();
  sub_100004CB8(&qword_100636058);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  sub_100004CB8(&qword_100637A00);
  *(v9 + 1576) = swift_task_alloc();
  v12 = sub_1004DD05C();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = sub_1004DC4DC();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0);
  *(v9 + 1648) = swift_task_alloc();
  sub_100004CB8(&qword_100635248);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  *(v9 + 1720) = type metadata accessor for MetricsEvent.Click(0);
  *(v9 + 1728) = swift_task_alloc();
  *(v9 + 1736) = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = sub_1004D82AC();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  sub_1004D83FC();
  *(v9 + 1808) = swift_task_alloc();
  v15 = sub_1004DD3EC();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = sub_1004DC6CC();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = sub_1004DC4EC();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = sub_1004DC6DC();
  *(v9 + 1920) = v18;
  *(v9 + 1928) = *(v18 - 8);
  *(v9 + 1936) = swift_task_alloc();
  *(v9 + 1944) = swift_task_alloc();
  v19 = *(v10 + class metadata base offset for MusicLibrary.ItemState);
  *(v9 + 1952) = v19;
  *(v9 + 1960) = *(v19 - 8);
  *(v9 + 1968) = swift_task_alloc();
  *(v9 + 1976) = swift_task_alloc();
  *(v9 + 1984) = swift_task_alloc();
  *(v9 + 1992) = swift_task_alloc();
  *(v9 + 2000) = swift_task_alloc();
  *(v9 + 2008) = sub_1004DDA4C();
  *(v9 + 2016) = sub_1004DDA3C();
  v21 = sub_1004DD9BC();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(sub_10019BA78, v21, v20);
}

uint64_t sub_10019BA78()
{
  v551 = v0;
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1440);
  v516 = sub_1004D966C();
  *(v0 + 2040) = sub_100035430(v516, static Logger.libraryActionableState);
  v5 = *(v2 + 16);
  *(v0 + 2048) = v5;
  *(v0 + 2056) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v5)(v1, v4, v3);
  v6 = sub_1004D964C();
  v7 = sub_1004DDF9C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2000);
  v522 = v5;
  if (v8)
  {
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = swift_slowAlloc();
    v512 = v0;
    v14 = swift_slowAlloc();
    v550[0] = v14;
    *v13 = 136446210;
    (v5)(v10, v9, v12);
    v15 = sub_1004DD4DC();
    v17 = v16;
    (*(v11 + 8))(v9, v12);
    v18 = sub_1000343A8(v15, v17, v550);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "╭ Performing action for item: %{public}s", v13, 0xCu);
    sub_100008D24(v14);
    v0 = v512;
  }

  else
  {
    v19 = *(v0 + 1960);
    v20 = *(v0 + 1952);

    (*(v19 + 8))(v9, v20);
  }

  v21 = sub_1004D964C();
  v22 = sub_1004DDF9C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1402);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v550[0] = v26;
    *v25 = 136446210;
    v27 = MusicLibrary.ActionableState.description.getter(v23, v24);
    v29 = sub_1000343A8(v27, v28, v550);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "| Actionable state: %{public}s", v25, 0xCu);
    sub_100008D24(v26);
  }

  v30 = sub_1004D964C();
  v31 = sub_1004DDF9C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v550[0] = v36;
    *v35 = 136446210;
    sub_1004DC74C();
    sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
    v37 = sub_1004DEFFC();
    v39 = v38;
    (*(v33 + 8))(v32, v34);
    v40 = sub_1000343A8(v37, v39, v550);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "| Add status: %{public}s", v35, 0xCu);
    sub_100008D24(v36);
  }

  v41 = sub_1004D964C();
  v42 = sub_1004DDF9C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1896);
    v45 = *(v0 + 1888);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v550[0] = v47;
    *v46 = 136446210;
    sub_1004DC6FC();
    sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
    v48 = sub_1004DEFFC();
    v50 = v49;
    (*(v44 + 8))(v43, v45);
    v51 = sub_1000343A8(v48, v50, v550);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "| Download status: %{public}s", v46, 0xCu);
    sub_100008D24(v47);
  }

  v52 = sub_1004D964C();
  v53 = sub_1004DDF9C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v550[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = sub_1004DC62C();
    v57 = sub_1000343A8(v55, v56, v550);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = sub_1004DC5FC();
    v60 = sub_1000343A8(v58, v59, v550);

    *(v54 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "| Library: %{public}s (%{public}s)", v54, 0x16u);
    swift_arrayDestroy();
  }

  v61 = *(v0 + 1402);
  if (v61 >> 14)
  {
    if (v61 >> 14 == 1)
    {
      if ((v61 & 0x100) == 0)
      {
        v62 = sub_1004D964C();
        v63 = sub_1004DDF9C();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "|—● Cancelling download", v64, 2u);
        }

        v65 = swift_task_alloc();
        *(v0 + 2184) = v65;
        *v65 = v0;
        v65[1] = sub_1001A075C;
        v66 = *(v0 + 1952);
        v67 = *(v0 + 1488);
        v68 = *(v0 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v68, v66, v67);
      }

      v113 = sub_1004D964C();
      v114 = sub_1004DDF9C();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "|—● Download is paused: Checking for reasons…", v115, 2u);
      }

      v116 = *(v0 + 1904);
      v117 = *(v0 + 1896);
      v118 = *(v0 + 1888);

      sub_1004DC6FC();
      v119 = (*(v117 + 88))(v116, v118);
      v120 = *(v0 + 1904);
      v121 = *(v0 + 1896);
      v122 = *(v0 + 1888);
      if (v119 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        v123 = *(v0 + 1640);
        v124 = *(v0 + 1616);
        v125 = *(v0 + 1608);
        (*(v121 + 96))(*(v0 + 1904), v122);
        (*(v124 + 32))(v123, v120, v125);
        MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter((v0 + 1120));
        v126 = *(v0 + 1176);
        v127 = *(v0 + 1640);
        v128 = *(v0 + 1616);
        v129 = *(v0 + 1608);
        if (v126)
        {
          v130 = *(v0 + 1632);
          v131 = *(v0 + 1184);
          v132 = *(v0 + 1136);
          *(v0 + 1048) = *(v0 + 1120);
          *(v0 + 1064) = v132;
          *(v0 + 1080) = *(v0 + 1152);
          *(v0 + 1096) = *(v0 + 1168);
          *(v0 + 1104) = v126;
          *(v0 + 1112) = v131;
          (*(v128 + 16))(v130, v127, v129);
          v133 = sub_1004D964C();
          v134 = sub_1004DDF9C();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 1632);
          v137 = *(v0 + 1616);
          v138 = *(v0 + 1608);
          if (v135)
          {
            v529 = swift_slowAlloc();
            v536 = swift_slowAlloc();
            v550[0] = v536;
            *v529 = 136446210;
            sub_1001ABC10(&qword_1006389D0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v524 = v134;
            v139 = sub_1004DEFFC();
            v141 = v140;
            v517 = v133;
            v142 = *(v137 + 8);
            v142(v136, v138);
            v143 = v142;
            v144 = sub_1000343A8(v139, v141, v550);

            *(v529 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v517, v524, "|—| Showing alert for reason: %{public}s", v529, 0xCu);
            sub_100008D24(v536);
          }

          else
          {

            v446 = *(v137 + 8);
            v446(v136, v138);
            v143 = v446;
          }

          v447 = *(v0 + 1640);
          v448 = *(v0 + 1608);
          v449 = sub_1000EA900(v0 + 1048, 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v449, *(v0 + 1080), 1, 0, 0);

          sub_10001074C(v0 + 1120, &qword_1006368B0);
          v143(v447, v448);
        }

        else
        {
          (*(v128 + 16))(*(v0 + 1624), v127, v129);
          v399 = sub_1004D964C();
          v400 = sub_1004DDF7C();
          v401 = os_log_type_enabled(v399, v400);
          v402 = *(v0 + 1640);
          v403 = *(v0 + 1624);
          v404 = *(v0 + 1616);
          v405 = *(v0 + 1608);
          if (v401)
          {
            v545 = *(v0 + 1640);
            v406 = swift_slowAlloc();
            v533 = swift_slowAlloc();
            v550[0] = v533;
            *v406 = 136446210;
            sub_1001ABC10(&qword_1006389D0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v407 = sub_1004DEFFC();
            v409 = v408;
            v410 = *(v404 + 8);
            v410(v403, v405);
            v411 = sub_1000343A8(v407, v409, v550);

            *(v406 + 4) = v411;
            _os_log_impl(&_mh_execute_header, v399, v400, "|—| Unhandled alert for reason: %{public}s", v406, 0xCu);
            sub_100008D24(v533);

            v410(v545, v405);
          }

          else
          {

            v458 = *(v404 + 8);
            v458(v403, v405);
            v458(v402, v405);
          }
        }
      }

      else
      {
        v239 = *(v121 + 8);
        v239(*(v0 + 1904), v122);

        v240 = sub_1004D964C();
        v241 = sub_1004DDF9C();

        if (os_log_type_enabled(v240, v241))
        {
          v242 = *(v0 + 1912);
          v243 = *(v0 + 1888);
          v244 = swift_slowAlloc();
          v540 = swift_slowAlloc();
          v550[0] = v540;
          *v244 = 136446210;
          sub_1004DC6FC();
          sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
          v245 = sub_1004DEFFC();
          v247 = v246;
          v239(v242, v243);
          v248 = sub_1000343A8(v245, v247, v550);

          *(v244 + 4) = v248;
          _os_log_impl(&_mh_execute_header, v240, v241, "|—| No reasons found, download status does not match UI state %{public}s", v244, 0xCu);
          sub_100008D24(v540);
        }
      }

      goto LABEL_145;
    }

    v96 = *(v0 + 1432);
    if (v96 | v61 ^ 0x8000)
    {
      if (*(v0 + 1402) == 0x8000 && v96 == 1)
      {
        v98 = sub_1004D964C();
        v99 = sub_1004DDF9C();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "|—● Triggering download", v100, 2u);
        }

        v101 = *(v0 + 1992);
        v102 = *(v0 + 1952);
        v103 = *(v0 + 1648);
        v104 = *(v0 + 1504);
        v105 = *(v0 + 1496);
        v534 = *(v0 + 1488);
        v106 = *(v0 + 1480);
        v107 = *(v0 + 1456);
        v108 = *(v0 + 1440);

        (v522)(v101, v108, v102);
        sub_1000699E8(v107, v0 + 688);
        sub_1001AAFCC(v106, v103);
        v109 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v109 - 8) + 56))(v103, 0, 1, v109);
        v110 = *(v104 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v101, v105, v0 + 688, v103, v102, v534, v110, &v547);
        *(v0 + 2144) = *(&v547 + 1);
        *(v0 + 2152) = *(&v548 + 1);
        *(v0 + 2160) = *(&v549 + 1);
        v111 = v548;
        *(v0 + 384) = v547;
        *(v0 + 400) = v111;
        *(v0 + 416) = v549;
        *(v0 + 432) = 1;
        *(v0 + 440) = sub_10006D3E4;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0x4014000000000000;
        *(v0 + 464) = &unk_100517A98;
        v535 = sub_100178A70;
        *(v0 + 472) = 0;
        *(v0 + 480) = &unk_100517AA0;
        *(v0 + 488) = 0;

        v112 = swift_task_alloc();
        *(v0 + 2168) = v112;
        *v112 = v0;
        v112[1] = sub_1001A02C0;
        goto LABEL_36;
      }

      v215 = sub_1004D964C();
      v216 = sub_1004DDF9C();
      if (os_log_type_enabled(v215, v216))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&_mh_execute_header, v215, v216, "|—● Is Downloaded: Prompting for delete/remove alert", v218, 2u);
      }

      v219 = *(v0 + 1984);
      v220 = *(v0 + 1952);
      v221 = *(v0 + 1592);
      v222 = *(v0 + 1440);

      (v522)(v219, v222, v220);
      v223 = swift_dynamicCast();
      v224 = *(v221 + 56);
      if ((v223 & 1) == 0)
      {
        v358 = *(v0 + 1576);
        v224(v358, 1, 1, *(v0 + 1584));
        sub_10001074C(v358, &qword_100637A00);
        v238 = v522;
LABEL_134:
        v435 = *(v0 + 1992);
        v436 = *(v0 + 1952);
        v437 = *(v0 + 1648);
        v438 = *(v0 + 1504);
        v439 = *(v0 + 1488);
        v440 = *(v0 + 1480);
        v441 = *(v0 + 1456);
        (v238)(v435, *(v0 + 1440), v436);
        sub_1000699E8(v441, v0 + 496);
        sub_1001AAFCC(v440, v437);
        v442 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v442 - 8) + 56))(v437, 0, 1, v442);
        sub_1004DC7AC();
        v443 = sub_1004DC79C();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v435, v443, v0 + 496, v437, v436, v439, *(v438 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 16));
        v444 = swift_allocObject();
        *(v444 + 16) = &unk_100517740;
        *(v444 + 24) = 0;
        *(v0 + 208) = 51;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0x403E000000000000;
        *(v0 + 216) = sub_100083718;
        *(v0 + 240) = &unk_100517758;
        *(v0 + 248) = v444;
        *(v0 + 256) = &unk_100517748;
        *(v0 + 264) = 0;
        v445 = swift_task_alloc();
        *(v0 + 2216) = v445;
        *v445 = v0;
        v445[1] = sub_1001A1058;

        return sub_10018848C(0);
      }

      v225 = *(v0 + 1600);
      v226 = *(v0 + 1592);
      v227 = *(v0 + 1584);
      v228 = *(v0 + 1576);
      v520 = *(v0 + 1568);
      v229 = *(v0 + 1560);
      v230 = *(v0 + 1544);
      v539 = *(v0 + 1536);
      v231 = *(v0 + 1520);
      v232 = *(v0 + 1512);
      v224(v228, 0, 1, v227);
      (*(v226 + 32))(v225, v228, v227);
      v233 = v230;
      sub_1004DCF0C();
      (*(v231 + 104))(v229, enum case for Playlist.Variant.favoriteSongs(_:), v232);
      (*(v231 + 56))(v229, 0, 1, v232);
      v234 = *(v539 + 12);
      sub_1000108DC(v520, v230, &qword_100636058);
      sub_1000108DC(v229, v230 + v234, &qword_100636058);
      v235 = *(v231 + 48);
      if (v235(v233, 1, v232) == 1)
      {
        v236 = *(v0 + 1568);
        v237 = *(v0 + 1512);
        sub_10001074C(*(v0 + 1560), &qword_100636058);
        sub_10001074C(v236, &qword_100636058);
        if (v235(v233 + v234, 1, v237) == 1)
        {
          sub_10001074C(*(v0 + 1544), &qword_100636058);
          v238 = v522;
LABEL_152:
          v464 = *(v0 + 1992);
          v465 = *(v0 + 1952);
          v466 = *(v0 + 1648);
          v467 = *(v0 + 1504);
          v468 = *(v0 + 1488);
          v469 = *(v0 + 1480);
          v470 = *(v0 + 1456);
          (v238)(v464, *(v0 + 1440), v465);
          sub_1000699E8(v470, v0 + 592);
          sub_1001AAFCC(v469, v466);
          v471 = type metadata accessor for Actions.MetricsReportingContext();
          (*(*(v471 - 8) + 56))(v466, 0, 1, v471);
          sub_1004DC7AC();
          v472 = sub_1004DC79C();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v464, v472, 1, v0 + 592, v466, v465, v468, *(v467 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 272));
          *(v0 + 320) = 48;
          *(v0 + 328) = sub_10006D3E4;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0x4014000000000000;
          *(v0 + 352) = &unk_100517E00;
          v535 = sub_100179F50;
          *(v0 + 360) = 0;
          *(v0 + 368) = &unk_100517E08;
          *(v0 + 376) = 0;
          v473 = swift_task_alloc();
          *(v0 + 2200) = v473;
          *v473 = v0;
          v473[1] = sub_1001A0BBC;
LABEL_36:

          return v535();
        }
      }

      else
      {
        v428 = *(v0 + 1512);
        sub_1000108DC(*(v0 + 1544), *(v0 + 1552), &qword_100636058);
        v429 = v235(v233 + v234, 1, v428);
        v430 = *(v0 + 1568);
        v431 = *(v0 + 1560);
        v432 = *(v0 + 1552);
        if (v429 != 1)
        {
          v546 = *(v0 + 1544);
          v459 = *(v0 + 1528);
          v460 = *(v0 + 1520);
          v461 = *(v0 + 1512);
          (*(v460 + 32))(v459, v233 + v234, v461);
          sub_1001ABC10(&qword_1006372A0, &type metadata accessor for Playlist.Variant);
          v462 = sub_1004DD35C();
          v463 = *(v460 + 8);
          v463(v459, v461);
          sub_10001074C(v431, &qword_100636058);
          sub_10001074C(v430, &qword_100636058);
          v463(v432, v461);
          sub_10001074C(v546, &qword_100636058);
          v238 = v522;
          if (v462)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v433 = *(v0 + 1520);
        v434 = *(v0 + 1512);
        sub_10001074C(*(v0 + 1560), &qword_100636058);
        sub_10001074C(v430, &qword_100636058);
        (*(v433 + 8))(v432, v434);
      }

      sub_10001074C(*(v0 + 1544), &qword_100636188);
      v238 = v522;
LABEL_133:
      (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
      goto LABEL_134;
    }

    v178 = sub_1004D964C();
    v179 = sub_1004DDF9C();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&_mh_execute_header, v178, v179, "|—● Nothing to Perform: Actionable State is unknown", v180, 2u);
    }

    sub_1001AAF78();
    v181 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v69 = *(v0 + 1936);
  v70 = *(v0 + 1928);
  v71 = *(v0 + 1920);
  sub_1004DC74C();
  if ((*(v70 + 88))(v69, v71) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1856);
    v75 = *(v0 + 1848);
    (*(*(v0 + 1928) + 96))(v72, *(v0 + 1920));
    (*(v74 + 32))(v73, v72, v75);
    v76 = sub_1004D964C();
    v77 = sub_1004DDF9C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "|—● Unaddable", v78, 2u);
    }

    v79 = *(v0 + 1880);
    v80 = *(v0 + 1872);
    v81 = *(v0 + 1856);
    v82 = *(v0 + 1848);

    v83 = *(v81 + 16);
    v83(v80, v79, v82);
    v84 = sub_1004D964C();
    v85 = sub_1004DDF9C();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1872);
    v88 = *(v0 + 1856);
    v89 = *(v0 + 1848);
    if (v86)
    {
      v528 = v83;
      v90 = swift_slowAlloc();
      v523 = swift_slowAlloc();
      v550[0] = v523;
      *v90 = 136446210;
      sub_1001ABC10(&qword_100635B88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
      v513 = v85;
      v91 = sub_1004DEFFC();
      v93 = v92;
      v94 = *(v88 + 8);
      (v94)(v87, v89);
      v95 = sub_1000343A8(v91, v93, v550);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v84, v513, "|—| Reason: %{public}s", v90, 0xCu);
      sub_100008D24(v523);

      v83 = v528;
    }

    else
    {

      v94 = *(v88 + 8);
      (v94)(v87, v89);
    }

    v541 = v94;
    *(v0 + 2064) = v94;
    v249 = *(v0 + 1864);
    v250 = *(v0 + 1856);
    v251 = *(v0 + 1848);
    v83(v249, *(v0 + 1880), v251);
    v252 = (*(v250 + 88))(v249, v251);
    if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v253 = sub_1004D964C();
      v254 = sub_1004DDF9C();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&_mh_execute_header, v253, v254, "|—| Presenting Explicit Restriction alert", v255, 2u);
      }

      v256 = *(v0 + 1456);

      sub_1001362BC(0, v0 + 1192);
      v257 = sub_1000EA900(v0 + 1192, 0, 1);
      v258 = v257;
      v259 = *(v0 + 1224);
      v260 = *(v256 + 80);
      if (v260)
      {
        v261 = qword_100633E08;

        if (v261 != -1)
        {
          swift_once();
        }

        sub_100035430(v516, qword_10063B820);
        v262 = sub_1004D964C();
        v263 = sub_1004DDF9C();
        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          *v264 = 0;
          _os_log_impl(&_mh_execute_header, v262, v263, "Deferring presentation…", v264, 2u);
        }

        v530 = *(v0 + 1880);
        v265 = *(v0 + 1848);
        v266 = *(v0 + 1456);

        v267 = objc_allocWithZone(MSVBlockGuard);
        *(v0 + 1344) = sub_100257E18;
        *(v0 + 1352) = 0;
        *(v0 + 1312) = _NSConcreteStackBlock;
        *(v0 + 1320) = 1107296256;
        *(v0 + 1328) = sub_100258DB8;
        *(v0 + 1336) = &unk_1005E0C68;
        v268 = _Block_copy((v0 + 1312));
        v269 = [v267 initWithTimeout:v268 interruptionHandler:10.0];
        _Block_release(v268);

        sub_1000699E8(v266, v0 + 880);
        v270 = swift_allocObject();
        *(v270 + 16) = v269;
        sub_10006A8BC(v0 + 880, v270 + 24);
        *(v270 + 120) = v258;
        *(v270 + 128) = v259;
        *(v270 + 129) = 1;
        *(v270 + 136) = 0;
        *(v270 + 144) = 0;
        v271 = v269;
        v272 = v258;
        v260(v266, v272, sub_10007DCE4, v270);
        sub_10000DE74(v260);

        sub_100074384(v0 + 1192);
        v273 = v530;
        v274 = v265;
        goto LABEL_144;
      }

      v412 = *(v0 + 1880);
      v413 = *(v0 + 1848);
      sub_1002562F8(v257, *(v0 + 1224), 1, 0, 0);

      sub_100074384(v0 + 1192);
      v273 = v412;
LABEL_143:
      v274 = v413;
LABEL_144:
      (v541)(v273, v274);
LABEL_145:
      v454 = sub_1004D964C();
      v455 = sub_1004DDF9C();
      if (os_log_type_enabled(v454, v455))
      {
        v456 = swift_slowAlloc();
        *v456 = 0;
        _os_log_impl(&_mh_execute_header, v454, v455, "╰ ✅ Succeeded", v456, 2u);
      }

      v457 = *(v0 + 8);

      return v457();
    }

    if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v359 = sub_1004D964C();
        v360 = sub_1004DDF9C();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&_mh_execute_header, v359, v360, "|—| Presenting library import in progress alert", v361, 2u);
        }

        v362 = *(v0 + 1840);
        v363 = *(v0 + 1832);
        v364 = *(v0 + 1824);
        v365 = *(v0 + 1816);

        sub_1004DD37C();
        v507 = *(v364 + 16);
        v507(v363, v362, v365);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v366 = *(v0 + 1840);
        v367 = *(v0 + 1832);
        v368 = *(v0 + 1824);
        v369 = *(v0 + 1816);
        v503 = *(v0 + 1800);
        v511 = *(v0 + 1792);
        v515 = *(v0 + 1784);
        v543 = *(v0 + 1456);
        v370 = qword_100671958;
        sub_1004D838C();
        v371 = v370;
        v372 = sub_1004DD4AC();
        v527 = v373;
        v531 = v372;
        v374 = *(v368 + 8);
        v374(v366, v369);
        sub_1004DD37C();
        v507(v367, v366, v369);
        sub_1004D838C();
        v375 = sub_1004DD4AC();
        v494 = v376;
        v499 = v375;
        v374(v366, v369);
        sub_1004DD37C();
        v507(v367, v366, v369);
        sub_1004D838C();
        v377 = sub_1004DD4AC();
        v379 = v378;
        v374(v366, v369);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v380 = sub_1004D827C();
        v382 = v381;
        (*(v511 + 8))(v503, v515);
        sub_100004CB8(&qword_100634F40);
        v383 = swift_allocObject();
        *(v383 + 16) = xmmword_100511DA0;
        *(v383 + 32) = v380;
        *(v383 + 40) = v382;
        *(v383 + 48) = v377;
        *(v383 + 56) = v379;
        *(v383 + 64) = 2;
        *(v383 + 72) = 0;
        *(v383 + 80) = 0;
        LOBYTE(v550[0]) = 1;
        *(v0 + 976) = v531;
        *(v0 + 984) = v527;
        *(v0 + 992) = v499;
        *(v0 + 1000) = v494;
        *(v0 + 1008) = 0;
        *(v0 + 1016) = 0;
        *(v0 + 1024) = 1;
        *(v0 + 1032) = v383;
        *(v0 + 1040) = 0;

        v384 = sub_1000EA900(v0 + 976, 0, 1);
        v385 = v384;
        v386 = *(v543 + 10);
        if (v386)
        {
          v387 = qword_100633E08;

          if (v387 != -1)
          {
            swift_once();
          }

          sub_100035430(v516, qword_10063B820);
          v388 = sub_1004D964C();
          v389 = sub_1004DDF9C();
          if (os_log_type_enabled(v388, v389))
          {
            v390 = swift_slowAlloc();
            *v390 = 0;
            _os_log_impl(&_mh_execute_header, v388, v389, "Deferring presentation…", v390, 2u);
          }

          v391 = *(v0 + 1856);
          v532 = *(v0 + 1848);
          v544 = *(v0 + 1880);
          v392 = *(v0 + 1456);

          v393 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 1296) = sub_100257E18;
          *(v0 + 1304) = 0;
          *(v0 + 1264) = _NSConcreteStackBlock;
          *(v0 + 1272) = 1107296256;
          *(v0 + 1280) = sub_100258DB8;
          *(v0 + 1288) = &unk_1005E0C18;
          v394 = _Block_copy((v0 + 1264));
          v395 = [v393 initWithTimeout:v394 interruptionHandler:10.0];
          _Block_release(v394);

          sub_1000699E8(v392, v0 + 784);
          v396 = swift_allocObject();
          *(v396 + 16) = v395;
          sub_10006A8BC(v0 + 784, v396 + 24);
          *(v396 + 120) = v385;
          *(v396 + 128) = 257;
          *(v396 + 136) = 0;
          *(v396 + 144) = 0;
          v397 = v395;
          v398 = v385;
          v386(v392, v398, sub_10007DB94, v396);
          sub_10000DE74(v386);

          sub_100074384(v0 + 976);

          (*(v391 + 8))(v544, v532);
        }

        else
        {
          v480 = *(v0 + 1880);
          v481 = *(v0 + 1856);
          v482 = *(v0 + 1848);
          sub_1002562F8(v384, 1, 1, 0, 0);

          sub_100074384(v0 + 976);

          (*(v481 + 8))(v480, v482);
        }

        goto LABEL_145;
      }

      if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v474 = sub_1004D964C();
        v475 = sub_1004DDF5C();
        if (os_log_type_enabled(v474, v475))
        {
          v476 = swift_slowAlloc();
          *v476 = 0;
          _os_log_impl(&_mh_execute_header, v474, v475, "|—| Unaddable reason is not supported by the UI", v476, 2u);
        }

        v477 = *(v0 + 1880);
        v478 = *(v0 + 1864);
        v479 = *(v0 + 1848);

        sub_1001AAF78();
        v181 = swift_allocError();
        swift_willThrow();
        (v541)(v477, v479);
        (v541)(v478, v479);
LABEL_54:
        *(v0 + 2232) = v181;
        *(v0 + 1408) = v181;
        swift_errorRetain();
        sub_100004CB8(&qword_100638980);
        v182 = swift_dynamicCast();
        v183 = *(v0 + 2048);
        v184 = *(v0 + 1952);
        v185 = *(v0 + 1440);
        if (v182)
        {
          v186 = *(v0 + 1976);

          v183(v186, v185, v184);

          v187 = sub_1004D964C();
          v188 = sub_1004DDF7C();

          if (os_log_type_enabled(v187, v188))
          {
            v509 = *(v0 + 2048);
            v501 = *(v0 + 1992);
            v505 = *(v0 + 1976);
            v519 = *(v0 + 1960);
            v189 = *(v0 + 1944);
            v190 = *(v0 + 1928);
            v191 = *(v0 + 1920);
            v192 = *(v0 + 1912);
            v193 = *(v0 + 1896);
            v492 = *(v0 + 1888);
            v497 = *(v0 + 1952);
            v538 = v188;
            v194 = *(v0 + 1432);
            v195 = *(v0 + 1402);
            v525 = v187;
            v196 = swift_slowAlloc();
            v550[0] = swift_slowAlloc();
            *v196 = 136447234;
            v197 = MusicLibrary.ActionableState.description.getter(v194, v195);
            v199 = sub_1000343A8(v197, v198, v550);

            *(v196 + 4) = v199;
            *(v196 + 12) = 2082;
            sub_1004DC74C();
            sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
            v200 = sub_1004DEFFC();
            v202 = v201;
            (*(v190 + 8))(v189, v191);
            v203 = sub_1000343A8(v200, v202, v550);

            *(v196 + 14) = v203;
            *(v196 + 22) = 2082;
            sub_1004DC6FC();
            sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
            v204 = sub_1004DEFFC();
            v206 = v205;
            (*(v193 + 8))(v192, v492);
            v207 = sub_1000343A8(v204, v206, v550);

            *(v196 + 24) = v207;
            *(v196 + 32) = 2082;
            v509(v501, v505, v497);
            v208 = sub_1004DD4DC();
            v210 = v209;
            (*(v519 + 8))(v505, v497);
            v211 = sub_1000343A8(v208, v210, v550);

            *(v196 + 34) = v211;
            *(v196 + 42) = 2082;
            v212 = sub_1004DD4DC();
            v214 = sub_1000343A8(v212, v213, v550);

            *(v196 + 44) = v214;
            _os_log_impl(&_mh_execute_header, v525, v538, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v196, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v414 = *(v0 + 1976);
            v415 = *(v0 + 1960);
            v416 = *(v0 + 1952);

            (*(v415 + 8))(v414, v416);
          }

          *(v0 + 2240) = sub_1001AAF78();
          v417 = swift_allocError();
          *(v0 + 2248) = v417;
          v418 = swift_task_alloc();
          *(v0 + 2256) = v418;
          *v418 = v0;
          v418[1] = sub_1001A118C;
          v419 = *(v0 + 1456);
          v420 = *(v0 + 1448);
          v421 = *(v0 + 1432);
          v422 = *(v0 + 1402);
          v423 = v417;
        }

        else
        {
          v331 = *(v0 + 1968);

          v183(v331, v185, v184);

          swift_errorRetain();
          v332 = sub_1004D964C();
          v333 = sub_1004DDF7C();

          if (os_log_type_enabled(v332, v333))
          {
            v510 = *(v0 + 2048);
            v502 = *(v0 + 1992);
            v506 = *(v0 + 1968);
            v521 = *(v0 + 1960);
            v334 = *(v0 + 1944);
            v335 = *(v0 + 1928);
            v336 = *(v0 + 1920);
            v493 = *(v0 + 1896);
            v498 = *(v0 + 1952);
            v488 = *(v0 + 1912);
            v490 = *(v0 + 1888);
            v542 = v333;
            v337 = *(v0 + 1432);
            v338 = *(v0 + 1402);
            v526 = v332;
            v339 = swift_slowAlloc();
            v550[0] = swift_slowAlloc();
            *v339 = 136447234;
            v340 = MusicLibrary.ActionableState.description.getter(v337, v338);
            v342 = sub_1000343A8(v340, v341, v550);

            *(v339 + 4) = v342;
            *(v339 + 12) = 2082;
            sub_1004DC74C();
            sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
            v343 = sub_1004DEFFC();
            v345 = v344;
            (*(v335 + 8))(v334, v336);
            v346 = sub_1000343A8(v343, v345, v550);

            *(v339 + 14) = v346;
            *(v339 + 22) = 2082;
            sub_1004DC6FC();
            sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
            v347 = sub_1004DEFFC();
            v349 = v348;
            (*(v493 + 8))(v488, v490);
            v350 = sub_1000343A8(v347, v349, v550);

            *(v339 + 24) = v350;
            *(v339 + 32) = 2082;
            v510(v502, v506, v498);
            v351 = sub_1004DD4DC();
            v353 = v352;
            (*(v521 + 8))(v506, v498);
            v354 = sub_1000343A8(v351, v353, v550);

            *(v339 + 34) = v354;
            *(v339 + 42) = 2082;
            *(v0 + 1416) = v181;
            swift_errorRetain();
            v355 = sub_1004DD4DC();
            v357 = sub_1000343A8(v355, v356, v550);

            *(v339 + 44) = v357;
            _os_log_impl(&_mh_execute_header, v526, v542, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v339, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v424 = *(v0 + 1968);
            v425 = *(v0 + 1960);
            v426 = *(v0 + 1952);

            (*(v425 + 8))(v424, v426);
          }

          v427 = swift_task_alloc();
          *(v0 + 2264) = v427;
          *v427 = v0;
          v427[1] = sub_1001A161C;
          v419 = *(v0 + 1456);
          v420 = *(v0 + 1448);
          v421 = *(v0 + 1432);
          v422 = *(v0 + 1402);
          v423 = v181;
        }

        return sub_1001A4644(v423, v421, v422, v420, v419);
      }

      v450 = sub_1004D964C();
      v451 = sub_1004DDF9C();
      if (os_log_type_enabled(v450, v451))
      {
        v452 = swift_slowAlloc();
        *v452 = 0;
        _os_log_impl(&_mh_execute_header, v450, v451, "|—| Presenting upsell", v452, 2u);
      }

      v453 = *(v0 + 1880);
      v413 = *(v0 + 1848);

      *(v0 + 1392) = 0;
      *(v0 + 1360) = 0u;
      *(v0 + 1376) = 0u;
      *(v0 + 1400) = -1;
      _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 1360);
      sub_1000741FC(v0 + 1360);
      v273 = v453;
      goto LABEL_143;
    }

    v282 = sub_1004D964C();
    v283 = sub_1004DDF9C();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      *v284 = 0;
      _os_log_impl(&_mh_execute_header, v282, v283, "|—| Presenting Cloud Library Requirement alert", v284, 2u);
    }

    *(v0 + 2072) = sub_1004DDA3C();
    v286 = sub_1004DD9BC();
    *(v0 + 2080) = v286;
    *(v0 + 2088) = v285;

    return _swift_task_switch(sub_10019F7DC, v286, v285);
  }

  else
  {
    v145 = sub_1004D964C();
    v146 = sub_1004DDF9C();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v145, v146, "|—● Adding to library", v147, 2u);
    }

    v148 = *(v0 + 1464);

    if (v148)
    {
      v149 = *(v0 + 1472);
      ObjectType = swift_getObjectType();
      (*(v149 + 8))(0, ObjectType, v149);
    }

    v151 = *(v0 + 1952);
    v152 = *(v0 + 1776);
    v153 = *(v0 + 1760);
    v154 = *(v0 + 1728);
    v155 = *(v0 + 1720);
    v491 = *(v0 + 1752);
    v495 = *(v0 + 1712);
    v500 = *(v0 + 1704);
    v156 = *(v0 + 1480);
    swift_storeEnumTagMultiPayload();
    sub_10019AC38(v152, 0);
    sub_1001AC0DC(v152, type metadata accessor for Notice.Variant);
    v157 = MusicItem.metricsTargetIdentifier.getter(v151);
    v486 = v158;
    v487 = v157;
    v159 = sub_1004D809C();
    v484 = *(*(v159 - 8) + 56);
    v485 = v159;
    v484(v153, 1, 1);
    sub_100004CB8(&qword_100635BA8);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_1005126C0;
    *(v160 + 32) = MusicItem.metricsContentType.getter(v151);
    *(v160 + 40) = v161;
    *(v160 + 48) = 0;
    *(v160 + 56) = 0;
    *(v160 + 64) = 0;
    *(v160 + 72) = 1;
    v508 = sub_10004B4B4(v160);
    v518 = v162;
    v537 = v163;
    v514 = v164;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000108DC(v153, v491, &qword_100634B30);
    v165 = type metadata accessor for Actions.MetricsReportingContext();
    v166 = *(v156 + v165[7]);
    v168 = *v156;
    v167 = v156[1];
    sub_1000108DC(v156 + v165[5], v495, &qword_100635248);
    v504 = v165;
    v489 = *(v156 + v165[8]);
    *(v154 + v155[19]) = 0;
    v169 = (v154 + v155[20]);
    *v169 = 0;
    v169[1] = 0;
    *v154 = v487;
    *(v154 + 8) = v486;
    *(v154 + 16) = 773;
    sub_100047F38(v491, v154 + v155[7], &qword_100634B30);
    *(v154 + v155[8]) = v166;
    v170 = (v154 + v155[9]);
    *v170 = v168;
    v170[1] = v167;
    v171 = v154 + v155[10];
    *v171 = v508;
    *(v171 + 8) = v518;
    *(v171 + 16) = v537;
    *(v171 + 24) = v514;
    sub_1000108DC(v495, v500, &qword_100635248);
    v172 = type metadata accessor for MetricsEvent.Page(0);
    v496 = *(*(v172 - 1) + 48);
    v173 = v496(v500, 1, v172);
    v174 = *(v0 + 1704);
    if (v173 == 1)
    {

      sub_100046F14(v168, v167);

      v175 = v508;
      sub_100047EC8(v508, v518, v537, v514, SBYTE1(v514));
      sub_10001074C(v174, &qword_100635248);
      v176 = 0;
      v177 = 0;
    }

    else
    {
      v176 = *v174;
      v177 = v174[1];

      sub_100046F14(v168, v167);

      v175 = v508;
      sub_100047EC8(v508, v518, v537, v514, SBYTE1(v514));

      sub_1001AC0DC(v174, type metadata accessor for MetricsEvent.Page);
    }

    v275 = *(v0 + 1712);
    v276 = *(v0 + 1696);
    v277 = (*(v0 + 1728) + *(*(v0 + 1720) + 48));
    *v277 = v176;
    v277[1] = v177;
    sub_1000108DC(v275, v276, &qword_100635248);
    v278 = v496(v276, 1, v172);
    v279 = *(v0 + 1696);
    if (v278 == 1)
    {
      sub_10001074C(*(v0 + 1696), &qword_100635248);
      v280 = 0;
      v281 = 0;
    }

    else
    {
      v280 = *(v279 + 16);
      v281 = *(v279 + 24);

      sub_1001AC0DC(v279, type metadata accessor for MetricsEvent.Page);
    }

    v287 = *(v0 + 1712);
    v288 = *(v0 + 1688);
    v289 = (*(v0 + 1728) + *(*(v0 + 1720) + 52));
    *v289 = v280;
    v289[1] = v281;
    sub_1000108DC(v287, v288, &qword_100635248);
    v290 = v496(v288, 1, v172);
    v291 = *(v0 + 1744);
    v292 = *(v0 + 1688);
    if (v290 == 1)
    {
      sub_10001074C(*(v0 + 1688), &qword_100635248);
      (v484)(v291, 1, 1, v485);
    }

    else
    {
      sub_1000108DC(v292 + v172[6], *(v0 + 1744), &qword_100634B30);
      sub_1001AC0DC(v292, type metadata accessor for MetricsEvent.Page);
    }

    v293 = *(v0 + 1712);
    v294 = *(v0 + 1680);
    sub_100047F38(*(v0 + 1744), *(v0 + 1728) + *(*(v0 + 1720) + 56), &qword_100634B30);
    sub_1000108DC(v293, v294, &qword_100635248);
    v295 = v496(v294, 1, v172);
    v296 = *(v0 + 1680);
    if (v295 == 1)
    {
      sub_10001074C(*(v0 + 1680), &qword_100635248);
      v297 = 0;
    }

    else
    {
      v297 = *(v296 + v172[7]);

      sub_1001AC0DC(v296, type metadata accessor for MetricsEvent.Page);
    }

    v298 = *(v0 + 1712);
    v299 = *(v0 + 1672);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 60)) = v297;
    sub_1000108DC(v298, v299, &qword_100635248);
    v300 = v496(v299, 1, v172);
    v301 = *(v0 + 1672);
    if (v300 == 1)
    {
      sub_10001074C(v301, &qword_100635248);
      v302 = 1;
    }

    else
    {
      v302 = *(v301 + v172[9]);
      sub_1001AC0DC(v301, type metadata accessor for MetricsEvent.Page);
    }

    v303 = *(v0 + 1712);
    v304 = *(v0 + 1664);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 64)) = v302;
    sub_1000108DC(v303, v304, &qword_100635248);
    v305 = v496(v304, 1, v172);
    v306 = *(v0 + 1664);
    if (v305 == 1)
    {
      sub_10001074C(*(v0 + 1664), &qword_100635248);
      v307 = 0;
      v308 = 0;
    }

    else
    {
      v309 = (v306 + v172[8]);
      v307 = *v309;
      v308 = v309[1];

      sub_1001AC0DC(v306, type metadata accessor for MetricsEvent.Page);
    }

    v310 = *(v0 + 1712);
    v311 = *(v0 + 1656);
    v312 = (*(v0 + 1728) + *(*(v0 + 1720) + 72));
    *v312 = v307;
    v312[1] = v308;
    sub_100047F38(v310, v311, &qword_100635248);
    v313 = v496(v311, 1, v172);
    v314 = *(v0 + 1656);
    if (v313 == 1)
    {
      sub_10001074C(v314, &qword_100635248);
      v315 = 2;
    }

    else
    {
      v315 = *(v314 + v172[11]);
      sub_1001AC0DC(v314, type metadata accessor for MetricsEvent.Page);
    }

    v316 = *(v0 + 1736);
    v317 = *(v0 + 1728);
    v318 = *(v0 + 1720);
    *(v317 + *(v318 + 68)) = v315;
    *(v317 + *(v318 + 44)) = v489;
    sub_100047FA0(v317, v316);
    if (qword_100633B50 != -1)
    {
      swift_once();
    }

    v319 = *(v0 + 1952);
    v320 = *(v0 + 1760);
    v321 = *(v0 + 1736);
    v322 = *(v0 + 1480);
    v323 = *(v0 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v321, *(v322 + v504[6]), *(v322 + v504[6] + 8), *(v322 + v504[9]), *(v322 + v504[9] + 8), *(v322 + v504[9] + 16));
    sub_1000742B8(v175, v518, v537, v514, SBYTE1(v514));
    sub_1001AC0DC(v321, type metadata accessor for MetricsEvent.Click);
    sub_10001074C(v320, &qword_100634B30);
    sub_1001A9E7C(v319, v319);
    swift_allocObject();
    v324 = sub_1004DD89C();
    *(v0 + 2120) = v324;
    (v522)(v325, v323, v319);
    v326 = sub_1004DD98C();
    *(v0 + 1424) = v324;
    v327 = swift_task_alloc();
    *(v0 + 2128) = v327;
    WitnessTable = swift_getWitnessTable();
    *v327 = v0;
    v327[1] = sub_10019FE04;
    v329 = *(v0 + 1952);
    v330 = *(v0 + 1488);

    return MusicLibrary.add<A, B>(_:)(v0 + 1424, v326, v329, WitnessTable, v330);
  }
}

uint64_t sub_10019F7DC()
{
  v1 = v0[182];
  v2 = sub_1004DDA3C();
  v0[262] = v2;
  v3 = swift_task_alloc();
  v0[263] = v3;
  *(v3 + 16) = 1;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[264] = v4;
  *v4 = v0;
  v4[1] = sub_10019F8F0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1401, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000744E4, v3, &type metadata for Bool);
}

uint64_t sub_10019F8F0()
{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(sub_10019FA50, v3, v2);
}

uint64_t sub_10019FA50()
{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(sub_10019FAB8, v2, v1);
}

uint64_t sub_10019FAB8()
{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019FE04()
{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = sub_1001A1A68;
  }

  else
  {

    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = sub_10019FF48;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10019FF48()
{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001A02C0()
{
  v2 = *v1;
  v2[272] = v0;

  sub_10001074C((v2 + 48), &qword_100635A08);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1001A2324;
  }

  else
  {
    v5 = sub_1001A0414;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A0414()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A075C()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = sub_1001A2BE4;
  }

  else
  {
    v5 = sub_1001A0898;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A0898()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A0BBC()
{
  v2 = *v1;
  v2[276] = v0;

  sub_10001074C((v2 + 34), &qword_100635A00);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1001A3484;
  }

  else
  {
    v5 = sub_1001A0D10;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A0D10()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001A1058()
{
  v2 = *v1;
  v2[278] = v0;

  sub_10001074C((v2 + 2), &qword_100635DA8);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_1001A3D40;
  }

  else
  {
    v5 = sub_1001AE17C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A118C()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_1001A12D0, v3, v2);
}

uint64_t sub_1001A12D0()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_allocError();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A161C()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_1001A173C, v3, v2);
}

uint64_t sub_1001A173C()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A1A68()
{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t sub_1001A2324()
{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t sub_1001A2BE4()
{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t sub_1001A3484()
{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t sub_1001A3D40()
{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004D964C();
    v8 = sub_1004DDF7C();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_1000343A8(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = sub_1004DEFFC();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000343A8(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = sub_1004DEFFC();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000343A8(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004DD4DC();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000343A8(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004DD4DC();
      v34 = sub_1000343A8(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_1001AAF78();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1001A118C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004D964C();
    v37 = sub_1004DDF7C();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_1000343A8(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004DC74C();
      sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = sub_1004DEFFC();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000343A8(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004DC6FC();
      sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = sub_1004DEFFC();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000343A8(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004DD4DC();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000343A8(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004DD4DC();
      v61 = sub_1000343A8(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_1001A161C;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_1001A4644(v71, v69, v70, v68, v67);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor()
{
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.libraryActionableState);
}

uint64_t sub_1001A4644(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = sub_1004D82AC();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = sub_1004D809C();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  sub_100004CB8(&qword_100634B30);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  sub_1004DDA4C();
  *(v5 + 376) = sub_1004DDA3C();
  v10 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001A481C, v10, v9);
}

uint64_t sub_1001A481C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  sub_1004DEAAC(91);
  v69._countAndFlagsBits = 0xD000000000000032;
  v69._object = 0x80000001004F0190;
  sub_1004DD5FC(v69);
  *(v0 + 232) = v3;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  v70._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v70);

  v71._object = 0x80000001004F01D0;
  v71._countAndFlagsBits = 0xD000000000000014;
  sub_1004DD5FC(v71);
  v72._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  sub_1004DD5FC(v72);

  v73._countAndFlagsBits = 0x53206D6574490A0ALL;
  v73._object = 0xEE00203A65746174;
  sub_1004DD5FC(v73);
  *(v0 + 240) = v1;
  sub_1004DC75C();

  v74._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v74);

  v75._countAndFlagsBits = 10;
  v75._object = 0xE100000000000000;
  sub_1004DD5FC(v75);
  v5 = sub_10005F25C(_swiftEmptyArrayStorage);
  if (qword_100634428 != -1)
  {
    v55 = v5;
    swift_once();
    v5 = v55;
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    sub_100165FA8(0xD00000000000001DLL, 0x80000001004F0170, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v5, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v6, 1u);

    sub_1000108DC(v6, v7, &qword_100634B30);
    if ((*(v8 + 48))(v7, 1, v9) == 1)
    {
      v10 = *(v0 + 360);
      sub_10001074C(*(v0 + 368), &qword_100634B30);
      sub_10001074C(v10, &qword_100634B30);
    }

    else
    {
      v13 = *(*(v0 + 328) + 32);
      v13(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v14 = [objc_opt_self() sharedApplication];
      sub_1004D7FDC(v15);
      v17 = v16;
      v18 = [v14 canOpenURL:v16];

      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      if (v18)
      {
        v63 = *(v0 + 368);
        v21 = *(v0 + 344);
        v66 = v0 + 112;
        v23 = *(v0 + 320);
        v22 = *(v0 + 328);
        v24 = *(v0 + 304);
        v25 = *(v0 + 312);
        v62 = *(v0 + 296);
        (*(v22 + 16))(v21, v20, v23);
        v60 = v13;
        v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
        v65 = swift_allocObject();
        v60(v65 + v26, v21, v23);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v59 = sub_1004D827C();
        v28 = v27;
        v61 = *(v24 + 8);
        v61(v25, v62);
        (*(v22 + 8))(v20, v23);
        sub_10001074C(v63, &qword_100634B30);
        if (qword_100633D10 != -1)
        {
          swift_once();
        }

        v64 = v28;
        v56 = sub_1004D966C();
        sub_100035430(v56, static Logger.libraryActionableState);
        v29 = sub_1004D964C();
        v30 = sub_1004DDF9C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "|—● Presenting Tap-To-Radar alert", v31, 2u);
        }

        v32 = *(v0 + 312);
        v33 = *(v0 + 296);
        v58 = *(v0 + 280);
        v34 = *(v0 + 256);

        *(v0 + 248) = v34;
        swift_errorRetain();
        v67 = sub_1004DD4DC();
        v57 = v35;
        sub_100004CB8(&qword_100634F40);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1005126C0;
        *(v36 + 32) = v59;
        *(v36 + 40) = v64;
        strcpy((v36 + 48), "File a Radar");
        *(v36 + 61) = 0;
        *(v36 + 62) = -5120;
        *(v36 + 64) = 2;
        *(v36 + 72) = &unk_10051DF20;
        *(v36 + 80) = v65;

        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v37 = sub_1004D827C();
        v39 = v38;
        v61(v32, v33);
        *(v36 + 88) = v37;
        *(v36 + 96) = v39;
        *(v36 + 104) = 19279;
        *(v36 + 112) = 0xE200000000000000;
        *(v36 + 120) = 2;
        *(v36 + 128) = 0;
        *(v36 + 136) = 0;
        *(v0 + 112) = xmmword_100512850;
        *(v0 + 128) = v67;
        *(v0 + 136) = v57;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v36;
        *(v0 + 176) = 0;
        v40 = sub_1000EA900(v66, 0, 1);
        v41 = v40;
        v42 = *(v58 + 80);
        if (v42)
        {
          v43 = *(v0 + 144);
          v44 = qword_100633E08;

          if (v44 != -1)
          {
            swift_once();
          }

          sub_100035430(v56, qword_10063B820);
          v45 = sub_1004D964C();
          v46 = sub_1004DDF9C();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v45, v46, "Deferring presentation…", v47, 2u);
          }

          v48 = *(v0 + 280);

          v49 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = sub_100257E18;
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = sub_100258DB8;
          *(v0 + 208) = &unk_1005E1210;
          v50 = _Block_copy((v0 + 184));
          v51 = [v49 initWithTimeout:v50 interruptionHandler:10.0];
          _Block_release(v50);

          sub_1000699E8(v48, v0 + 16);
          v52 = swift_allocObject();
          *(v52 + 16) = v51;
          sub_10006A8BC(v0 + 16, v52 + 24);
          *(v52 + 120) = v41;
          *(v52 + 128) = v43;
          *(v52 + 129) = 1;
          *(v52 + 136) = 0;
          *(v52 + 144) = 0;
          v53 = v51;
          v54 = v41;
          v42(v48, v54, sub_10007DCE4, v52);
          sub_10000DE74(v42);

          sub_100074384(v66);
        }

        else
        {
          sub_1002562F8(v40, *(v0 + 144), 1, 0, 0);

          sub_100074384(v66);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        sub_10001074C(v19, &qword_100634B30);
      }
    }
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

char *MusicLibrary.ActionableStateController.__allocating_init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_1001AB084(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = sub_1001AB084(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t sub_1001A52A0()
{
  v0 = sub_100004CB8(&qword_100638A88);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_100004CB8(&qword_100638A90);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_1004DC6DC();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_1004DC4EC();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    sub_1001A703C(v5, v2);

    sub_10001074C(v2, &qword_100638A88);
    return sub_10001074C(v5, &qword_100638A90);
  }

  return result;
}

uint64_t sub_1001A5458(uint64_t a1)
{
  v85 = a1;
  v2 = *v1;
  v96 = sub_1004DCA0C();
  v87 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_100638A88);
  __chkstk_darwin(v4 - 8);
  v91 = &v77 - v5;
  v6 = sub_100004CB8(&qword_100638A90);
  __chkstk_darwin(v6 - 8);
  v90 = &v77 - v7;
  v8 = sub_100004CB8(&qword_100635DF8);
  v9 = __chkstk_darwin(v8 - 8);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = &v77 - v11;
  v99 = sub_100004CB8(&qword_1006379F0);
  v88 = *(v99 - 8);
  v12 = __chkstk_darwin(v99);
  v80 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v77 - v14;
  v15 = sub_100004CB8(&qword_100637A00);
  v16 = __chkstk_darwin(v15 - 8);
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = &v77 - v18;
  v19 = sub_1004DD05C();
  v20 = __chkstk_darwin(v19);
  v82 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v92 = &v77 - v23;
  v24 = *(v2 + 80);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v22);
  v94 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v83 = &v77 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v77 - v31;
  __chkstk_darwin(v30);
  v34 = &v77 - v33;
  v35 = v2;
  v37 = v36;
  v38 = *(v35 + 128);
  swift_beginAccess();
  v39 = *(v25 + 16);
  v39(v34, &v1[v38], v24);
  sub_1004DC72C();
  v98 = v1;
  v93 = v38;
  v40 = &v1[v38];
  v41 = v97;
  v101 = v39;
  v102 = v25 + 16;
  v39(v32, v40, v24);
  v100 = v24;
  v42 = swift_dynamicCast();
  v43 = *(v37 + 56);
  if ((v42 & 1) == 0)
  {
    v43(v41, 1, 1, v19);
    v47 = &qword_100637A00;
    goto LABEL_5;
  }

  v43(v41, 0, 1, v19);
  v44 = *(v37 + 32);
  v45 = v92;
  v44(v92, v41, v19);
  v41 = v89;
  sub_1004DD04C();
  v46 = v88;
  v97 = *(v88 + 48);
  if ((v97)(v41, 1, v99) == 1)
  {
    (*(v37 + 8))(v45, v19);
    v47 = &qword_100635DF8;
LABEL_5:
    v48 = v41;
LABEL_6:
    sub_10001074C(v48, v47);
    v49 = v96;
    v50 = v98;
    goto LABEL_7;
  }

  v78 = v44;
  v79 = v37;
  v57 = *(v46 + 32);
  v58 = v86;
  v89 = (v46 + 32);
  v77 = v57;
  v57(v86, v41, v99);
  v101(v83, v85, v100);
  v59 = v84;
  v60 = v19;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v46 + 8))(v58, v99);
    (*(v79 + 8))(v92, v19);
    v43(v59, 1, 1, v19);
    v47 = &qword_100637A00;
    v48 = v59;
    goto LABEL_6;
  }

  v61 = v46;
  v43(v59, 0, 1, v19);
  v62 = v82;
  v78(v82, v59, v19);
  v63 = v81;
  sub_1004DD04C();
  v64 = v99;
  if ((v97)(v63, 1, v99) == 1)
  {
    v65 = *(v79 + 8);
    v65(v62, v60);
    (*(v61 + 8))(v86, v64);
    v65(v92, v60);
    v47 = &qword_100635DF8;
    v48 = v63;
    goto LABEL_6;
  }

  v66 = v60;
  v67 = v80;
  v77(v80, v63, v64);
  sub_100042B08(&qword_100637A20, &qword_1006379F0);
  sub_1004DDCFC();
  sub_1004DDD3C();
  v68 = sub_1004DDD2C();
  v50 = v98;
  if (!v68 && (sub_1004DDCFC(), sub_1004DDD3C(), sub_1004DDD2C() > 0) || (sub_1004DDCFC(), sub_1004DDD3C(), sub_1004DDD2C() >= 1) && (sub_1004DDCFC(), sub_1004DDD3C(), !sub_1004DDD2C()))
  {
    v71 = sub_1004DC6DC();
    v72 = v90;
    (*(*(v71 - 8) + 56))(v90, 1, 1, v71);
    v73 = sub_1004DC4EC();
    v74 = v91;
    (*(*(v73 - 8) + 56))(v91, 1, 1, v73);
    sub_1001A703C(v72, v74);
    sub_10001074C(v74, &qword_100638A88);
    sub_10001074C(v72, &qword_100638A90);
    v75 = *(v46 + 8);
    v75(v67, v64);
    v76 = *(v79 + 8);
    v76(v62, v66);
    v75(v86, v64);
    return (v76)(v92, v66);
  }

  v69 = *(v46 + 8);
  v69(v67, v64);
  v70 = *(v79 + 8);
  v70(v62, v66);
  v69(v86, v64);
  v70(v92, v66);
  v49 = v96;
LABEL_7:
  v101(v94, &v50[v93], v100);
  v51 = v95;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v87 + 8))(v51, v49);
    v53 = sub_1004DC6DC();
    v54 = v90;
    (*(*(v53 - 8) + 56))(v90, 1, 1, v53);
    v55 = sub_1004DC4EC();
    v56 = v91;
    (*(*(v55 - 8) + 56))(v91, 1, 1, v55);
    sub_1001A703C(v54, v56);
    sub_10001074C(v56, &qword_100638A88);
    return sub_10001074C(v54, &qword_100638A90);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicLibrary.ActionableStateController.item.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1001AB650(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*MusicLibrary.ActionableStateController.item.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 128);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1001A6348;
}

void sub_1001A6348(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_1001AB650(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_1001AB650(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1001A6560(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v42 - v8;
  v11 = v2 + *(v10 + 152);
  result = swift_beginAccess();
  v13 = *v11;
  v14 = *(v11 + 8);
  if (!(v14 >> 14))
  {
    if (a2 < 0x4000u)
    {
      if (*v11 == 5)
      {
        if (a1 == 5)
        {
          return result;
        }
      }

      else if (a1 != 5 && v13 == a1)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (v14 >> 14 != 1)
  {
    if (v13 | v14 ^ 0x8000)
    {
      if (*(v11 + 8) == 0x8000 && v13 == 1)
      {
        if ((a2 & 0xC000) != 0x8000 || a1 != 1)
        {
          goto LABEL_37;
        }
      }

      else if ((a2 & 0xC000) != 0x8000 || a1 != 2)
      {
        goto LABEL_37;
      }
    }

    else if ((a2 & 0xC000) != 0x8000 || *&a1 != 0.0)
    {
      goto LABEL_37;
    }

    if (a2 == 0x8000)
    {
      return result;
    }

    goto LABEL_37;
  }

  if ((a2 & 0xC000) == 0x4000)
  {
    if (v14)
    {
      if ((a2 & 1) != 0 && (((a2 ^ v14) >> 8) & 1) == 0)
      {
        return result;
      }
    }

    else if ((a2 & 1) == 0 && *v11 == *&a1 && (((a2 ^ v14) >> 8) & 1) == 0)
    {
      return result;
    }
  }

LABEL_37:
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v17 = sub_1004D966C();
  sub_100035430(v17, static Logger.libraryActionableState);

  v18 = sub_1004D964C();
  v19 = sub_1004DDF9C();

  v20 = os_log_type_enabled(v18, v19);
  v44 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = v7;
    v46[0] = v23;
    *v22 = 136446722;
    v24 = MusicLibrary.ActionableState.description.getter(a1, a2);
    v26 = sub_1000343A8(v24, v25, v46);
    v42 = a1;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v30 = sub_1000343A8(v28, v29, v46);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2082;
    v31 = *(*v3 + 128);
    swift_beginAccess();
    (*(v43 + 16))(v9, v3 + v31, v45);
    v32 = sub_1004DD4DC();
    v34 = sub_1000343A8(v32, v33, v46);

    *(v22 + 24) = v34;
    v35 = v19;
    v36 = v42;
    _os_log_impl(&_mh_execute_header, v18, v35, "State updated from: %{public}s to: %{public}s for item: %{public}s)", v22, 0x20u);
    swift_arrayDestroy();
    v7 = v43;

    v6 = v45;
  }

  else
  {

    v36 = a1;
  }

  v37 = (v3 + *(*v3 + 144));
  swift_beginAccess();
  v38 = *v37;
  v39 = *(*v3 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v39, v6);
  v40 = *v11;
  v41 = *(v11 + 8);

  v38(v9, v36, v44, v40, v41);

  return (*(v7 + 8))(v9, v6);
}

uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1001A6A7C(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  return sub_1001A6560(v6, v7);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v5 = *(v4 + 80);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_1004DDA4C();
  v3[15] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_1001A6C20, v7, v6);
}

uint64_t sub_1001A6C20()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = &v4[*(*v4 + 152)];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(*v4 + 128);
  v8 = *(v5 + 4);
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v7], v3);
  v9 = *&v4[*(*v4 + 136)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1001A6DA8;
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

uint64_t sub_1001A6DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1001A6FD0;
  }

  else
  {
    v8 = sub_1001A6F64;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001A6F64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A6FD0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001A703C(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v243 = a2;
  v238 = a1;
  v4 = *v2;
  v5 = sub_1004DC6CC();
  v229 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v224 = &v208[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v228 = &v208[-v9];
  v10 = __chkstk_darwin(v8);
  v227 = &v208[-v11];
  v12 = __chkstk_darwin(v10);
  v226 = &v208[-v13];
  __chkstk_darwin(v12);
  v232 = &v208[-v14];
  v15 = sub_100004CB8(&qword_100635DF8);
  __chkstk_darwin(v15 - 8);
  v220 = &v208[-v16];
  v225 = sub_1004DD05C();
  v216 = *(v225 - 8);
  v17 = __chkstk_darwin(v225);
  v215 = &v208[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v217 = &v208[-v19];
  v222 = sub_1004DCA0C();
  v219 = *(v222 - 8);
  v20 = __chkstk_darwin(v222);
  v218 = &v208[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v221 = &v208[-v22];
  v23 = *(v4 + 80);
  v24 = sub_1004DC6DC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v223 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v237 = &v208[-v25];
  v26 = sub_100004CB8(&qword_100638A88);
  __chkstk_darwin(v26 - 8);
  v28 = &v208[-v27];
  v29 = sub_1004DC4EC();
  v242 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v213 = &v208[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v30);
  v234 = &v208[-v33];
  __chkstk_darwin(v32);
  v244 = &v208[-v34];
  v35 = sub_100004CB8(&qword_100638A90);
  v36 = __chkstk_darwin(v35 - 8);
  v38 = &v208[-v37];
  v245 = *(v24 - 8);
  v39 = __chkstk_darwin(v36);
  v214 = &v208[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v43 = &v208[-v42];
  v44 = __chkstk_darwin(v41);
  v247 = &v208[-v45];
  v239 = *(v23 - 8);
  __chkstk_darwin(v44);
  v230 = &v208[-v46];
  v47 = v3 + *(v4 + 152);
  swift_beginAccess();
  v210 = *v47;
  v209 = *(v47 + 8);
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v48 = sub_1004D966C();
  v49 = sub_100035430(v48, static Logger.libraryActionableState);

  v246 = v49;
  v50 = sub_1004D964C();
  v51 = sub_1004DDF9C();

  v52 = os_log_type_enabled(v50, v51);
  v240 = v29;
  v241 = v24;
  v231 = v5;
  v236 = v23;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v250 = v54;
    *v53 = 136446210;
    v55 = *(*v3 + 128);
    swift_beginAccess();
    (*(v239 + 16))(v230, v3 + v55, v23);
    v56 = sub_1004DD4DC();
    v58 = sub_1000343A8(v56, v57, &v250);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "╭ Updating state for item: %{public}s", v53, 0xCu);
    sub_100008D24(v54);
    v24 = v241;

    v29 = v240;
  }

  sub_1000108DC(v238, v38, &qword_100638A90);
  v59 = v245;
  v60 = *(v245 + 48);
  v61 = v60(v38, 1, v24);
  v62 = v242;
  if (v61 == 1)
  {
    sub_1004DC74C();
    if (v60(v38, 1, v24) != 1)
    {
      sub_10001074C(v38, &qword_100638A90);
    }
  }

  else
  {
    (*(v59 + 32))(v247, v38, v24);
  }

  sub_1000108DC(v243, v28, &qword_100638A88);
  v63 = *(v62 + 48);
  v64 = v63(v28, 1, v29);
  v243 = v3;
  if (v64 == 1)
  {
    sub_1004DC6FC();
    if (v63(v28, 1, v29) != 1)
    {
      sub_10001074C(v28, &qword_100638A88);
    }
  }

  else
  {
    (*(v62 + 32))(v244, v28, v29);
  }

  v65 = v245;
  v233 = *(v245 + 16);
  v233(v43, v247, v24);
  v66 = sub_1004D964C();
  v67 = v24;
  v68 = sub_1004DDF9C();
  if (os_log_type_enabled(v66, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v250 = v70;
    *v69 = 136446210;
    sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
    v71 = sub_1004DEFFC();
    v73 = v72;
    v238 = *(v65 + 8);
    v238(v43, v67);
    v74 = sub_1000343A8(v71, v73, &v250);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v66, v68, "| Add Status: %{public}s", v69, 0xCu);
    sub_100008D24(v70);
    v29 = v240;

    v62 = v242;
  }

  else
  {

    v238 = *(v65 + 8);
    v238(v43, v67);
  }

  v75 = *(v62 + 16);
  v76 = v234;
  v212 = v62 + 16;
  v211 = v75;
  v75(v234, v244, v29);
  v77 = sub_1004D964C();
  v78 = sub_1004DDF9C();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = v62;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v250 = v81;
    *v80 = 136446210;
    sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
    v82 = sub_1004DEFFC();
    v84 = v83;
    v234 = *(v79 + 8);
    (v234)(v76, v29);
    v85 = sub_1000343A8(v82, v84, &v250);

    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v77, v78, "| Download Status: %{public}s", v80, 0xCu);
    sub_100008D24(v81);
  }

  else
  {

    v234 = *(v62 + 8);
    (v234)(v76, v29);
  }

  v86 = v236;
  v87 = v239;
  v88 = v243;
  v89 = *(*v243 + 128);
  swift_beginAccess();
  v90 = *(TupleTypeMetadata2 + 48);
  v91 = *(v87 + 16);
  v92 = v237;
  v91(v237, v88 + v89, v86);
  v93 = v241;
  v233(&v92[v90], v247, v241);
  v94 = v245;
  v95 = (*(v245 + 88))(&v92[v90], v93);
  if (v95 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v238(&v92[v90], v93);
    v96 = 0;
    v97 = 5;
    goto LABEL_73;
  }

  if (v95 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v95 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v145 = sub_1004D964C();
      v146 = sub_1004DDF7C();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v249 = v239;
        *v147 = 136446466;
        v148 = v214;
        sub_1004DC74C();
        sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
        v149 = v241;
        v150 = sub_1004DEFFC();
        v152 = v151;
        v238(v148, v149);
        v153 = sub_1000343A8(v150, v152, &v249);

        *(v147 + 4) = v153;
        *(v147 + 12) = 2082;
        v91(v230, v243 + v89, v236);
        v154 = sub_1004DD4DC();
        v156 = sub_1000343A8(v154, v155, &v249);

        *(v147 + 14) = v156;
        _os_log_impl(&_mh_execute_header, v145, v146, "| Unhandled add status (%{public}s) for item: %{public}s", v147, 0x16u);
        swift_arrayDestroy();

        v92 = v237;
      }

      v97 = 0;
      v96 = 0x8000;
      v87 = v223;
      v86 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v116 = v221;
    v117 = v222;
    v118 = swift_dynamicCast();
    v119 = v242;
    v120 = v243;
    v121 = v225;
    if (v118)
    {
      v122 = v219;
      v123 = v116;
      v124 = v218;
      (*(v219 + 32))(v218, v123, v117);
      if (Album.childrenAddStatus(_:)(*(v120 + 16)) == 1)
      {
        v125 = sub_1004D964C();
        v126 = sub_1004DDF9C();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&_mh_execute_header, v125, v126, "| Album is already added but has at least 1 addable track", v127, 2u);
        }

        (*(v219 + 8))(v218, v117);
        v96 = 0;
        v97 = 4;
        goto LABEL_73;
      }

      (*(v122 + 8))(v124, v117);
    }

    v160 = v217;
    if (swift_dynamicCast())
    {
      v161 = v216;
      v162 = v215;
      (*(v216 + 32))(v215, v160, v121);
      v163 = v220;
      sub_1004DD04C();
      v164 = sub_100004CB8(&qword_1006379F0);
      v165 = v163;
      v166 = v164;
      v167 = *(v164 - 8);
      if ((*(v167 + 48))(v165, 1, v164) == 1)
      {
        (*(v161 + 8))(v162, v121);
        sub_10001074C(v220, &qword_100635DF8);
      }

      else
      {
        sub_100042B08(&qword_100637A20, &qword_1006379F0);
        v168 = v220;
        sub_1004DDCFC();
        sub_1004DDD3C();
        v170 = v248;
        v169 = v249;
        (*(v167 + 8))(v168, v166);
        if (v169 == v170)
        {
          v171 = sub_1004D964C();
          v172 = sub_1004DDF9C();
          v173 = os_log_type_enabled(v171, v172);
          v174 = v216;
          v175 = v215;
          if (v173)
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&_mh_execute_header, v171, v172, "| Playlist is already added but does not have any tracks", v176, 2u);
          }

          (*(v174 + 8))(v175, v225);
          goto LABEL_72;
        }

        (*(v216 + 8))(v215, v225);
      }

      v119 = v242;
    }

    v177 = sub_1004D964C();
    v178 = sub_1004DDF9C();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      _os_log_impl(&_mh_execute_header, v177, v178, "|—● Item is added", v179, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v181 = result;
    v182 = [result canShowCloudDownloadButtons];

    if (v182)
    {
      v183 = v213;
      v184 = v240;
      v211(v213, v244, v240);
      v185 = (*(v119 + 88))(v183, v184);
      if (v185 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v119 + 96))(v183, v184);
        v97 = *v183;
        v96 = 0x4000;
        goto LABEL_73;
      }

      if (v185 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v119 + 96))(v183, v184);
        if (((v209 & 0xC000) != 0x4000) | v209 & 1)
        {
          v97 = 0;
        }

        else
        {
          v97 = v210;
        }

        v96 = ((v209 & 0xC000) != 0x4000) | v209 & 1 | 0x4100;
        v196 = sub_1004DC4DC();
        (*(*(v196 - 8) + 8))(v183, v196);
        goto LABEL_73;
      }

      if (v185 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v185 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v96 = 0x8000;
          v97 = 1;
        }

        else if (v185 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v97 = 0;
          v96 = 16385;
        }

        else if (v185 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v96 = 0x8000;
          v97 = 2;
        }

        else
        {
          v197 = v86;
          v198 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v199 = v185;
          v200 = sub_1004D964C();
          v201 = sub_1004DDF9C();
          v202 = os_log_type_enabled(v200, v201);
          if (v199 == v198)
          {
            if (v202)
            {
              v203 = swift_slowAlloc();
              *v203 = 0;
            }

            v204 = sub_1004D964C();
            v205 = sub_1004DDF9C();
            v86 = v197;
            if (os_log_type_enabled(v204, v205))
            {
              v206 = swift_slowAlloc();
              *v206 = 0;
              _os_log_impl(&_mh_execute_header, v204, v205, "|—| 🌚 though we're not sure this is the right thing to do", v206, 2u);
            }

            v96 = 0x8000;
            v97 = 1;
            v87 = v239;
          }

          else
          {
            v86 = v197;
            if (v202)
            {
              v207 = swift_slowAlloc();
              *v207 = 0;
              _os_log_impl(&_mh_execute_header, v200, v201, "|—| Unhandled case", v207, 2u);
            }

            (v234)(v213, v240);
            v97 = 0;
            v96 = 0x8000;
            v87 = v239;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v186 = sub_1004D964C();
      v187 = sub_1004DDF9C();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&_mh_execute_header, v186, v187, "|—| MPCloudController -canShowCloudDownloadButton: NO", v188, 2u);
      }
    }

LABEL_72:
    v97 = 0;
    v96 = 0x8000;
    goto LABEL_73;
  }

  v98 = v229;
  (*(v94 + 96))(&v92[v90], v93);
  v99 = v98[4];
  v100 = &v92[v90];
  v101 = v232;
  v102 = v231;
  TupleTypeMetadata2 = (v98 + 4);
  v233 = v99;
  v99(v232, v100, v231);
  v103 = v98[2];
  v104 = v226;
  v103(v226, v101, v102);
  v105 = sub_1004D964C();
  v106 = sub_1004DDF9C();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = v104;
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v249 = v109;
    *v108 = 136446210;
    sub_1001ABC10(&qword_100635B88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
    v110 = sub_1004DEFFC();
    v112 = v111;
    v113 = v107;
    v114 = v98[1];
    v114(v113, v231);
    v115 = sub_1000343A8(v110, v112, &v249);

    *(v108 + 4) = v115;
    v102 = v231;
    _os_log_impl(&_mh_execute_header, v105, v106, "|—● Item is unaddable: %{public}s", v108, 0xCu);
    sub_100008D24(v109);
  }

  else
  {

    v114 = v98[1];
    v114(v104, v102);
  }

  v128 = v227;
  v103(v227, v232, v102);
  v129 = v98[11];
  v130 = v129(v128, v102);
  v131 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v132 = v228;
  if (v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v133 = sub_1004D964C();
    v134 = sub_1004DDF9C();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "|—| Reason is not actionable by the user", v135, 2u);
    }

    v136 = v231;
    v114(v232, v231);
    v114(v128, v136);
    v97 = 0;
    v96 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v230) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v227) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v226) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v103(v228, v232, v102);
  v137 = v132;
  v138 = sub_1004D964C();
  v139 = sub_1004DDF9C();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v249 = v225;
    *v140 = 136315138;
    sub_1001ABC10(&qword_100635B88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
    v141 = sub_1004DEFFC();
    v143 = v142;
    v114(v137, v231);
    v144 = sub_1000343A8(v141, v143, &v249);

    *(v140 + 4) = v144;
    v102 = v231;
    sub_100008D24(v225);
  }

  else
  {

    v114(v137, v102);
  }

  v157 = v224;
  v233(v224, v232, v102);
  v158 = v129(v157, v102);
  if (v158 == v131)
  {
    v96 = 0;
    v97 = 1;
LABEL_46:
    v92 = v237;
    v86 = v236;
    v87 = v239;
    goto LABEL_73;
  }

  v159 = v114;
  v92 = v237;
  v86 = v236;
  v87 = v239;
  if (v158 == v230)
  {
    v97 = 0;
    v96 = 0;
  }

  else if (v158 == v227)
  {
    v96 = 0;
    v97 = 2;
  }

  else if (v158 == v226)
  {
    v96 = 0;
    v97 = 3;
  }

  else
  {
    v159(v157, v102);
    v96 = 0;
    v97 = 5;
  }

LABEL_73:
  (*(v87 + 8))(v92, v86);
  v189 = sub_1004D964C();
  v190 = sub_1004DDF9C();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v249 = v192;
    *v191 = 136446210;
    v193 = MusicLibrary.ActionableState.description.getter(v97, v96);
    v195 = sub_1000343A8(v193, v194, &v249);

    *(v191 + 4) = v195;
    _os_log_impl(&_mh_execute_header, v189, v190, "╰ Item state resolved to %{public}s", v191, 0xCu);
    sub_100008D24(v192);
  }

  sub_1001A6A7C(v97, v96);
  (v234)(v244, v240);
  return (v238)(v247, v241);
}

uint64_t sub_1001A8F70()
{
  v1 = *v0;
  v2 = sub_100004CB8(&qword_100638A68);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin(v2);
  v27 = &v23 - v4;
  v5 = sub_100004CB8(&qword_100638A70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = v1[21];
  swift_beginAccess();
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v26 = *(v0 + *(*v0 + 136));
  sub_1004DC6EC();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v25 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100042B08(&qword_100638A78, &qword_100638A70);
  v24 = v1[10];
  v11[2] = v24;
  v23 = v1[11];
  v11[3] = v23;
  v12 = v1[12];
  v11[4] = v12;
  v13 = v1[13];
  v11[5] = v13;
  v11[6] = v10;
  v14 = sub_1004D9C0C();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_1001BBD00(&v30, v14);
  swift_endAccess();

  v15 = v27;
  sub_1004DC70C();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *&v18 = v24;
  *(&v18 + 1) = v23;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  sub_100042B08(&qword_100638A80, &qword_100638A68);
  v20 = v28;
  v21 = sub_1004D9C0C();

  (*(v29 + 8))(v15, v20);
  swift_beginAccess();
  sub_1001BBD00(&v30, v21);
  swift_endAccess();
}

uint64_t sub_1001A9380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100638A88);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_100004CB8(&qword_100638A90);
  __chkstk_darwin(v7 - 8);
  v9 = (&v30 - v8);
  v10 = sub_1004DC6DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v14 = sub_1004D966C();
  sub_100035430(v14, static Logger.libraryActionableState);
  v36 = *(v11 + 16);
  v36(v13, a1, v10);
  v15 = v11;
  v16 = sub_1004D964C();
  v17 = sub_1004DDF9C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v6;
    v33 = v20;
    v37[0] = v20;
    *v19 = 136446210;
    sub_1001ABC10(&qword_1006389C0, &type metadata accessor for MusicLibrary.AddStatus);
    v21 = v15;
    v31 = v15;
    v22 = sub_1004DEFFC();
    v32 = a1;
    v23 = v9;
    v25 = v24;
    (*(v21 + 8))(v13, v10);
    v26 = sub_1000343A8(v22, v25, v37);
    v9 = v23;
    a1 = v32;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Add status has updated to %{public}s", v19, 0xCu);
    sub_100008D24(v33);
    v6 = v35;

    v27 = v31;
  }

  else
  {

    (*(v15 + 8))(v13, v10);
    v27 = v15;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36(v9, a1, v10);
    (*(v27 + 56))(v9, 0, 1, v10);
    v29 = sub_1004DC4EC();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    sub_1001A703C(v9, v6);

    sub_10001074C(v6, &qword_100638A88);
    return sub_10001074C(v9, &qword_100638A90);
  }

  return result;
}

uint64_t sub_1001A97AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100638A88);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_100004CB8(&qword_100638A90);
  __chkstk_darwin(v7 - 8);
  v9 = (&v30 - v8);
  v10 = sub_1004DC4EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v14 = sub_1004D966C();
  sub_100035430(v14, static Logger.libraryActionableState);
  v35 = *(v11 + 16);
  v35(v13, a1, v10);
  v15 = v11;
  v16 = sub_1004D964C();
  v17 = sub_1004DDF9C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v10;
    v19 = v18;
    v33 = swift_slowAlloc();
    v34 = v6;
    v37[0] = v33;
    *v19 = 136446210;
    sub_1001ABC10(&qword_1006389C8, &type metadata accessor for MusicLibrary.DownloadStatus);
    v20 = v15;
    v31 = v15;
    v21 = sub_1004DEFFC();
    v32 = a2;
    v22 = v9;
    v23 = a1;
    v25 = v24;
    (*(v20 + 8))(v13, v36);
    v26 = sub_1000343A8(v21, v25, v37);
    a1 = v23;
    v9 = v22;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Download status has updated to %{public}s", v19, 0xCu);
    sub_100008D24(v33);
    v6 = v34;

    v10 = v36;

    v27 = v31;
  }

  else
  {

    (*(v15 + 8))(v13, v10);
    v27 = v15;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = sub_1004DC6DC();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    v35(v6, a1, v10);
    (*(v27 + 56))(v6, 0, 1, v10);
    sub_1001A703C(v9, v6);

    sub_10001074C(v6, &qword_100638A88);
    return sub_10001074C(v9, &qword_100638A90);
  }

  return result;
}

uint64_t *MusicLibrary.ActionableStateController.deinit()
{
  v1 = *v0;

  sub_100010A38((v0 + 3));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t MusicLibrary.ActionableStateController.__deallocating_deinit()
{
  MusicLibrary.ActionableStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A9D30()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.libraryActionableState);
  sub_100035430(v0, static Logger.libraryActionableState);
  sub_100006F10(0, &qword_10063CE40);
  sub_1004DE7BC();
  return sub_1004D967C();
}

uint64_t static Logger.libraryActionableState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633D10 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.libraryActionableState);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001A9E7C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100004CB8(&qword_1006379A0);
  }

  else
  {

    return sub_1004DF00C();
  }
}

uint64_t sub_1001A9EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v8;
  *(v4 + 144) = *(a4 + 128);
  v9 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v9;
  v10 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v10;
  v11 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v11;
  v12 = swift_task_alloc();
  *(v4 + 152) = v12;
  *v12 = v4;
  v12[1] = sub_100066F80;

  return sub_10018B2D0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001A9FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100035C88;

  return sub_10018C018(a1, a2, a3, a4);
}

uint64_t sub_1001AA084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100035C88;

  return sub_10018CD28(a1, a2, a3, a4);
}

uint64_t sub_1001AA13C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_10018DA38(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA210(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_10018E6EC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA2E4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_10018F3A0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA3B8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100190054(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA48C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100190D08(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA560(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_1001919BC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA634(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100192670(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA708(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100193324(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA7DC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100193FD8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA8B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v9;
  v10 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = sub_100068C68;

  return sub_100194C8C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AA97C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100195910(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AAA50(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_1000692DC;

  return sub_1001965C4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AAB24(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100197278(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AABF8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10006CEC0;

  return sub_100197F2C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001AACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100035C88;

  return sub_100198BE0(a1, a2, a3, a4, v10);
}

uint64_t sub_1001AAD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100035B28;

  return sub_100199818(a1, a2, a3, a4);
}

uint64_t _s8MusicKit0A7LibraryC0A4CoreE15ActionableStateO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 >> 14)
  {
    if (a2 >> 14 != 1)
    {
      if (a1 | a2 ^ 0x8000)
      {
        v5 = a4 & 0xC000;
        if (a2 == 0x8000 && a1 == 1)
        {
          if (v5 == 0x8000 && a3 == 1 && a4 == 0x8000)
          {
            return 1;
          }
        }

        else if (v5 == 0x8000 && a3 == 2 && a4 == 0x8000)
        {
          return 1;
        }
      }

      else if ((a4 & 0xC000) == 0x8000 && *&a3 == 0.0 && a4 == 0x8000)
      {
        return 1;
      }

      return 0;
    }

    if ((a4 & 0xC000) == 0x4000)
    {
      if (a2)
      {
        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a4 & 1) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else if (a4 < 0x4000u)
  {
    if (a1 == 5)
    {
      if (a3 == 5)
      {
        return 1;
      }
    }

    else if (a3 != 5 && a3 == a1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1001AAF78()
{
  result = qword_1006389B8;
  if (!qword_1006389B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006389B8);
  }

  return result;
}

uint64_t sub_1001AAFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB030()
{

  return swift_deallocObject();
}

uint64_t sub_1001AB068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1001AB084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a4;
  v55 = a5;
  v11 = *v7;
  v12 = sub_100004CB8(&qword_100638A88);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_100004CB8(&qword_100638A90);
  __chkstk_darwin(v15 - 8);
  v17 = (&v48 - v16);
  *(v7 + 4) = 0;
  swift_unknownObjectWeakInit();
  v18 = &v7[*(*v7 + 152)];
  *v18 = 0;
  *(v18 + 4) = 0x8000;
  *&v7[*(*v7 + 160)] = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_1004DED5C())
  {
    v19 = sub_10003C290(_swiftEmptyArrayStorage);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v7[*(*v7 + 168)] = v19;
  v20 = v11[10];
  v21 = v11[12];
  v53 = a1;
  v56 = v20;
  v57 = v21;
  v22 = sub_1004DC63C();
  *&v7[*(*v7 + 136)] = v22;
  v23 = qword_100633D10;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1004D966C();
  sub_100035430(v24, static Logger.libraryActionableState);

  v25 = sub_1004D964C();
  v26 = sub_1004DDF9C();

  v27 = os_log_type_enabled(v25, v26);
  v52 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v50 = v14;
    v29 = v28;
    v30 = swift_slowAlloc();
    v49 = v17;
    v31 = v30;
    v58 = v22;
    v59 = v30;
    *v29 = 136446210;
    v32 = sub_1004DD4DC();
    v51 = v11;
    v34 = a6;
    v35 = sub_1000343A8(v32, v33, &v59);
    v11 = v51;

    *(v29 + 4) = v35;
    a6 = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Initializing item state: %{public}s", v29, 0xCu);
    sub_100008D24(v31);
    v17 = v49;

    v14 = v50;
  }

  v36 = v56;
  (*(*(v56 - 8) + 16))(&v7[*(*v7 + 128)], v53, v56);
  *(v7 + 2) = a2;
  *(v7 + 4) = v54;
  swift_unknownObjectWeakAssign();
  v37 = &v7[*(*v7 + 144)];
  *v37 = v55;
  *(v37 + 1) = a6;
  v38 = sub_1004DC6DC();
  (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
  v39 = sub_1004DC4EC();
  (*(*(v39 - 8) + 56))(v14, 1, 1, v39);

  sub_1001A703C(v17, v14);
  sub_10001074C(v14, &qword_100638A88);
  sub_10001074C(v17, &qword_100638A90);
  v40 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 sharedCloudController];
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  v45[2] = v36;
  v46 = v57;
  v45[3] = v11[11];
  v45[4] = v46;
  v45[5] = v11[13];
  v45[6] = v44;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v7[*(*v7 + 160)] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v42, v43, 1, 1, sub_1001AC0AC, v45);

  sub_1001A8F70();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1001AB650(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_1001A5458(v6);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1001AB7B0()
{
  result = qword_1006389D8[0];
  if (!qword_1006389D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006389D8);
  }

  return result;
}

uint64_t sub_1001AB804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 152);
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_1001AB8A8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t _s15ActionableStateOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s15ActionableStateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s15ActionableStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1001AB998(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1001AB9C8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

uint64_t sub_1001ABA14()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001ABB1C()
{
  result = qword_100638A60;
  if (!qword_100638A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638A60);
  }

  return result;
}

uint64_t sub_1001ABB70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001ABBA8()
{

  return swift_deallocObject();
}

uint64_t sub_1001ABC10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001ABC78()
{
  v1 = *(sub_100004CB8(&qword_100635B30) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1001ABE04(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_100635B30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_1001AAD94(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001ABF0C()
{
  v1 = *(sub_100004CB8(&qword_100635B30) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1001AC0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001AC13C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A08, &unk_10051DC30, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AC198(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA2E4(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AC25C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A08, &unk_10051DC30, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AC2B8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A00, &unk_100517000, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AC314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA3B8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AC3D8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A00, &unk_100517000, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AC458()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001AC51C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AACCC(a1, v4, v5, v1 + 32, (v1 + 288));
}

uint64_t sub_1001AC5E8()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v1);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001AC6C8()
{
  v1 = sub_1004D809C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001AC750(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1004D809C() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035B28;

  return sub_10012F098(a1, a2, v2 + v7);
}

uint64_t sub_1001AC834(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_10019A784(a1, v6, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AC878()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001AC8D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA8B0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AC99C(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_10019A784(a1, v6, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AC9E4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A50, &unk_1005170F0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ACA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA97C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001ACB08(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A50, &unk_1005170F0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ACB64(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A48, &unk_10051DF80, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ACBC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AAA50(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001ACC84(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A48, &unk_10051DF80, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ACCE0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A40, &unk_1005170D0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ACD3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AAB24(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001ACE00(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A40, &unk_1005170D0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ACE5C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A38, &unk_10051DFD0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ACEB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AABF8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001ACF7C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A38, &unk_10051DFD0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ACFD8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A28, &unk_100517088, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD034(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA634(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD0F8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A28, &unk_100517088, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD154(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A20, &unk_100517080, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD1B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA708(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD274(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A20, &unk_100517080, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD2D0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A18, &unk_100517040, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD32C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA7DC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD3F0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_100635A18, &unk_100517040, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD44C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359F8, &unk_10051E070, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD4A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA48C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD56C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359F8, &unk_10051E070, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD5C8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359F0, &unk_100516FD0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA210(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD6E8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359F0, &unk_100516FD0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD744(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359E8, &unk_10051E0C0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD7A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA13C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD864(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359E8, &unk_10051E0C0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001AD8C0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359C8, &unk_100516F88, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001AD91C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001AA560(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001AD9E0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10018B080(a1, v6, &qword_1006359C8, &unk_100516F88, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1001ADAA8(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_1006359B0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_1001A9FCC(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001ADC38(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_1006359B8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_1001AA084(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001ADD40(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(sub_100004CB8(a1) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_1004D8F4C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_1001ADF88(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_10019A528(a1, v7, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1001ADFDC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001AE05C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035C88;

  return sub_1001A9EF0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1001AE120(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_10019A528(a1, v7, "%{public}s: waiting for finish to return…");
}

uint64_t Library.ContentFilterOption.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64616F6C6E776F64;
}

uint64_t sub_1001AE2A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  if (v2 != 1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1004DF08C();
  }

  return v9 & 1;
}

uint64_t sub_1001AE38C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001AE3BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x657469726F766166;
  if (v2 != 1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_1001AE41C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001AE4C0()
{
  sub_1004DD55C();
}

Swift::Int sub_1001AE550()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

void *Optional<A>.convertToSet.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }
  }

  else if (!a1)
  {

    return &_swiftEmptySetSingleton;
  }

  v2 = sub_1004DF08C();

  if (v2)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100004CB8(&qword_100638AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = a1;
  v5 = sub_10003C4FC(inited);
  swift_setDeallocating();
  return v5;
}

uint64_t Library.Context.musicLibrary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Context.useDownloadedContentOnly.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Library.Context.sortOption.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.filterOption.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for Library.Context() + 60));

  return v1;
}

uint64_t Library.Context.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Library.Context() + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Library.Context.playlistVariants.getter()
{
  type metadata accessor for Library.Context();
}

uint64_t Library.Context.playlistVariants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Library.Context() + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Library.Context.isCompilation.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Library.Context.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1004DC7AC();
  *a1 = sub_1004DC79C();
  v2 = type metadata accessor for Library.Context();
  v3 = v2[5];
  v4 = sub_1004DCA0C();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = sub_1004DCB3C();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = sub_1004D91FC();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = sub_1004DCA3C();
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[9];
  v12 = sub_1004DD05C();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v2[10];
  v14 = sub_1004D91EC();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v2[11];
  v16 = sub_1004D924C();
  result = (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 2;
  *(a1 + v2[14]) = 3;
  v18 = (a1 + v2[15]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v2[16]) = _swiftEmptyArrayStorage;
  *(a1 + v2[17]) = 2;
  return result;
}

uint64_t Library.Context.with<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v37 = sub_1004D924C();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1004D91EC();
  v35 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1004DD05C();
  v38 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1004DCA3C();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1004D91FC();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1004DCB3C();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DCA0C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DE7CC();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  v51 = a3;
  sub_1001B2FF8(v53, a3);
  v53 = v17;
  v23 = *(v17 + 16);
  v23(v22, v52, v16);
  v52 = *(a2 - 8);
  if ((*(v52 + 48))(v22, 1, a2) != 1)
  {
    v33 = v16;
    v23(v20, v22, v16);
    v24 = a2;
    v25 = v20;
    if (swift_dynamicCast())
    {
      v26 = *(type metadata accessor for Library.Context() + 20);
      v27 = v51;
      sub_10001074C(v51 + v26, &qword_100635B98);
      (*(v13 + 32))(v27 + v26, v15, v12);
      (*(v13 + 56))(v27 + v26, 0, 1, v12);
LABEL_17:
      (*(v52 + 8))(v25, v24);
      v16 = v33;
      return (*(v53 + 8))(v22, v16);
    }

    v28 = v50;
    if (swift_dynamicCast())
    {
      v29 = *(type metadata accessor for Library.Context() + 24);
      v30 = v51;
      sub_10001074C(v51 + v29, &qword_100636470);
      v31 = v47;
    }

    else
    {
      v11 = v48;
      v28 = v49;
      if (swift_dynamicCast())
      {
        v29 = *(type metadata accessor for Library.Context() + 28);
        v30 = v51;
        sub_10001074C(v51 + v29, &qword_100638AB8);
        v31 = v44;
      }

      else
      {
        v11 = v45;
        v28 = v46;
        if (swift_dynamicCast())
        {
          v29 = *(type metadata accessor for Library.Context() + 32);
          v30 = v51;
          sub_10001074C(v51 + v29, &qword_100638AC0);
          v31 = v41;
        }

        else
        {
          v11 = v42;
          v28 = v43;
          if (swift_dynamicCast())
          {
            v29 = *(type metadata accessor for Library.Context() + 36);
            v30 = v51;
            sub_10001074C(v51 + v29, &qword_100637A00);
            v31 = v38;
          }

          else
          {
            v11 = v39;
            v28 = v40;
            if (swift_dynamicCast())
            {
              v29 = *(type metadata accessor for Library.Context() + 40);
              v30 = v51;
              sub_10001074C(v51 + v29, &qword_1006365C8);
              v31 = v35;
            }

            else
            {
              v11 = v36;
              v28 = v37;
              if (!swift_dynamicCast())
              {
                goto LABEL_17;
              }

              v29 = *(type metadata accessor for Library.Context() + 44);
              v30 = v51;
              sub_10001074C(v51 + v29, &qword_100636598);
              v31 = v34;
            }
          }
        }
      }
    }

    (*(v31 + 32))(v30 + v29, v11, v28);
    (*(v31 + 56))(v30 + v29, 0, 1, v28);
    goto LABEL_17;
  }

  return (*(v53 + 8))(v22, v16);
}

uint64_t Library.Context.with(compilation:)@<X0>(uint64_t a1@<X8>)
{
  sub_1001B2FF8(v1, a1);
  result = type metadata accessor for Library.Context();
  *(a1 + *(result + 68)) = 1;
  return result;
}

uint64_t Library.Context.with(sortOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1001B2FF8(v2, a2);
  result = type metadata accessor for Library.Context();
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.with(filterOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1001B2FF8(v2, a2);
  result = type metadata accessor for Library.Context();
  *(a2 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.with(filterText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1001B2FF8(v3, a3);
  v7 = (a3 + *(type metadata accessor for Library.Context() + 60));

  *v7 = a1;
  v7[1] = a2;
  return result;
}

Swift::Int Library.Context.SortOption.hashValue.getter(char a1)
{
  sub_1004DF26C();
  sub_1004DF27C(0);
  sub_1004DF28C(a1 & 1);
  return sub_1004DF2BC();
}

Swift::Int sub_1001AFDB4()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(0);
  sub_1004DF28C(v1);
  return sub_1004DF2BC();
}

void sub_1001AFE08()
{
  v1 = *v0;
  sub_1004DF27C(0);
  sub_1004DF28C(v1);
}

Swift::Int sub_1001AFE48()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(0);
  sub_1004DF28C(v1);
  return sub_1004DF2BC();
}

void Library.Context.hash(into:)()
{
  v1 = v0;
  v2 = sub_1004DCEEC();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v82 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1004D924C();
  v97 = *(v102 - 8);
  __chkstk_darwin(v102);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100636598);
  __chkstk_darwin(v6 - 8);
  v98 = &v75 - v7;
  v95 = sub_1004D91EC();
  v101 = *(v95 - 8);
  __chkstk_darwin(v95);
  v80 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_1006365C8);
  __chkstk_darwin(v9 - 8);
  v96 = &v75 - v10;
  v91 = sub_1004DD05C();
  v94 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100637A00);
  __chkstk_darwin(v12 - 8);
  v93 = &v75 - v13;
  v88 = sub_1004DCA3C();
  v92 = *(v88 - 8);
  __chkstk_darwin(v88);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004CB8(&qword_100638AC0);
  __chkstk_darwin(v15 - 8);
  v87 = &v75 - v16;
  v17 = sub_1004D91FC();
  v89 = *(v17 - 8);
  v90 = v17;
  __chkstk_darwin(v17);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&qword_100638AB8);
  __chkstk_darwin(v19 - 8);
  v86 = &v75 - v20;
  v21 = sub_1004DCB3C();
  v84 = *(v21 - 8);
  v85 = v21;
  __chkstk_darwin(v21);
  v76 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004CB8(&qword_100636470);
  __chkstk_darwin(v23 - 8);
  v83 = &v75 - v24;
  v25 = sub_1004DCA0C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100004CB8(&qword_100635B98);
  __chkstk_darwin(v29 - 8);
  v31 = &v75 - v30;
  v103 = *v0;
  sub_1004DC7AC();
  sub_1001B3D58(&qword_100638AC8, &type metadata accessor for MusicLibrary);
  sub_1004DD2BC();
  v32 = type metadata accessor for Library.Context();
  sub_1000108DC(v0 + v32[5], v31, &qword_100635B98);
  if ((*(v26 + 48))(v31, 1, v25) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    (*(v26 + 32))(v28, v31, v25);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AD0, &type metadata accessor for Album);
    sub_1004DD2BC();
    (*(v26 + 8))(v28, v25);
  }

  v33 = v83;
  sub_1000108DC(v0 + v32[6], v83, &qword_100636470);
  v35 = v84;
  v34 = v85;
  v36 = (*(v84 + 48))(v33, 1, v85);
  v38 = v86;
  v37 = v87;
  if (v36 == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v39 = v33;
    v40 = v76;
    (*(v35 + 32))(v76, v39, v34);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AD8, &type metadata accessor for Artist);
    sub_1004DD2BC();
    (*(v35 + 8))(v40, v34);
  }

  v41 = v93;
  v42 = v90;
  sub_1000108DC(v0 + v32[7], v38, &qword_100638AB8);
  v43 = v89;
  if ((*(v89 + 48))(v38, 1, v42) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v44 = v77;
    (*(v43 + 32))(v77, v38, v42);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AE0, &type metadata accessor for Composer);
    sub_1004DD2BC();
    (*(v43 + 8))(v44, v42);
  }

  v45 = v88;
  sub_1000108DC(v1 + v32[8], v37, &qword_100638AC0);
  v46 = v92;
  if ((*(v92 + 48))(v37, 1, v45) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v47 = v78;
    (*(v46 + 32))(v78, v37, v45);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AE8, &type metadata accessor for Genre);
    sub_1004DD2BC();
    (*(v46 + 8))(v47, v45);
  }

  v48 = v95;
  v49 = v97;
  sub_1000108DC(v1 + v32[9], v41, &qword_100637A00);
  v50 = v94;
  v51 = v91;
  if ((*(v94 + 48))(v41, 1, v91) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v52 = v79;
    (*(v50 + 32))(v79, v41, v51);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AF0, &type metadata accessor for Playlist);
    sub_1004DD2BC();
    (*(v50 + 8))(v52, v51);
  }

  v53 = v96;
  sub_1000108DC(v1 + v32[10], v96, &qword_1006365C8);
  if ((*(v101 + 6))(v53, 1, v48) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v54 = v101;
    v55 = v80;
    (*(v101 + 4))(v80, v53, v48);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638AF8, &type metadata accessor for TVShow);
    sub_1004DD2BC();
    (*(v54 + 1))(v55, v48);
  }

  v56 = v98;
  sub_1000108DC(v1 + v32[11], v98, &qword_100636598);
  if ((*(v49 + 48))(v56, 1, v102) == 1)
  {
    sub_1004DF28C(0);
  }

  else
  {
    v57 = v81;
    v58 = v102;
    (*(v49 + 32))(v81, v56, v102);
    sub_1004DF28C(1u);
    sub_1001B3D58(&qword_100638B00, &type metadata accessor for TVSeason);
    sub_1004DD2BC();
    (*(v49 + 8))(v57, v58);
  }

  v59 = v99;
  sub_1004DF28C(*(v1 + v32[12]));
  v60 = *(v1 + v32[13]);
  if (v60 == 2)
  {
    v61 = 0;
  }

  else
  {
    sub_1004DF28C(1u);
    sub_1004DF27C(0);
    v61 = v60 & 1;
  }

  sub_1004DF28C(v61);
  v62 = *(v1 + v32[14]);
  if (v62 == 3)
  {
    sub_1004DF28C(0);
    v63 = v82;
  }

  else
  {
    sub_1004DF28C(1u);
    v63 = v82;
    sub_1004DD55C();
  }

  if (*(v1 + v32[15] + 8))
  {
    sub_1004DF28C(1u);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF28C(0);
  }

  v101 = v32;
  v102 = v1;
  v64 = *(v1 + v32[16]);
  sub_1004DF27C(*(v64 + 16));
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v63;
    v67 = v100 + 16;
    v68 = *(v100 + 16);
    v69 = v64 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v70 = *(v100 + 72);
    v71 = (v100 + 8);
    do
    {
      v72 = v67;
      v68(v66, v69, v59);
      sub_1001B3D58(&qword_100638B08, &type metadata accessor for Playlist.Variant);
      sub_1004DD2BC();
      (*v71)(v66, v59);
      v67 = v72;
      v69 += v70;
      --v65;
    }

    while (v65);
  }

  v73 = *(v102 + v101[17]);
  if (v73 == 2)
  {
    v74 = 0;
  }

  else
  {
    sub_1004DF28C(1u);
    v74 = v73 & 1;
  }

  sub_1004DF28C(v74);
}

Swift::Int Library.Context.hashValue.getter()
{
  sub_1004DF26C();
  Library.Context.hash(into:)();
  return sub_1004DF2BC();
}

Swift::Int sub_1001B0E90()
{
  sub_1004DF26C();
  Library.Context.hash(into:)();
  return sub_1004DF2BC();
}

uint64_t sub_1001B0ECC()
{
  v0 = type metadata accessor for Library.Context();
  sub_100035718(v0, qword_100638A98);
  v1 = sub_100035430(v0, qword_100638A98);
  sub_1004DC7AC();
  *v1 = sub_1004DC79C();
  v2 = v0[5];
  v3 = sub_1004DCA0C();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = sub_1004DCB3C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = sub_1004D91FC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = sub_1004DCA3C();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = sub_1004DD05C();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = sub_1004D91EC();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = sub_1004D924C();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

uint64_t sub_1001B1150@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633D18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context();
  v3 = sub_100035430(v2, qword_100638A98);

  return sub_1001B2FF8(v3, a1);
}

uint64_t sub_1001B11C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001B3D58(&qword_100638B28, type metadata accessor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.libraryContext.getter()
{
  sub_1001B305C();

  return sub_1004DA75C();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  __chkstk_darwin(v2 - 8);
  sub_1001B2FF8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001B305C();
  sub_1004DA76C();
  return sub_1001B30B0(a1);
}

void (*EnvironmentValues.libraryContext.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Library.Context() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1001B305C();
  sub_1004DA75C();
  return sub_1001B1450;
}

void sub_1001B1450(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1001B2FF8((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1001B2FF8(v3[2], v3[1]);
    sub_1004DA76C();
    sub_1001B30B0(v6);
  }

  else
  {
    sub_1004DA76C();
  }

  sub_1001B30B0(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}