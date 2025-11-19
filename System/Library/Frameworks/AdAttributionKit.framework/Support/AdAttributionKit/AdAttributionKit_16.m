uint64_t sub_100174884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_1001749F8, 0, 0);
}

uint64_t sub_1001749F8()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3F78;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100174E68;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100174E68()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v15 = *v1;

  if (v0)
  {
    v5 = v2[37];
    v4 = v2[38];
    v8 = v2 + 35;
    v6 = v2[35];
    v7 = v8[1];

    v9 = sub_100175278;
  }

  else
  {
    v11 = v2[37];
    v10 = v2[38];
    v12 = v2[35];
    v13 = v2[36];

    v9 = sub_100175008;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100175008()
{
  v34 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = v0[31];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];

  sub_10000DAF8(v6, &qword_10023A2B8, &qword_1001BC460);
  v10 = Logger.xpc.unsafeMutableAddressor();
  (*(v8 + 16))(v7, v10, v9);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[33];
  v15 = v0[25];
  v16 = v0[26];
  v17 = v0[24];
  if (v13)
  {
    v32 = v0[26];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315138;
    v20 = *(v14 + 24);
    v21 = *(v14 + 32);

    v22 = sub_10017AD04(v20, v21, &v33);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Transaction %s out of scope", v18, 0xCu);
    sub_10000DB58(v19);

    (*(v15 + 8))(v32, v17);
  }

  else
  {
    v23 = v0[33];

    (*(v15 + 8))(v16, v17);
  }

  v25 = v0[30];
  v24 = v0[31];
  v27 = v0[28];
  v26 = v0[29];
  v29 = v0[26];
  v28 = v0[27];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100175278()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
}

uint64_t sub_10017530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100175480, 0, 0);
}

uint64_t sub_100175480()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3F28;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1001758F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100175A64, 0, 0);
}

uint64_t sub_100175A64()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3F00;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100175ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100176048, 0, 0);
}

uint64_t sub_100176048()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3ED0;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1001764B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10017662C, 0, 0);
}

uint64_t sub_10017662C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3E00;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100176A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 320) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for Logger();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100176C10, 0, 0);
}

uint64_t sub_100176C10()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 320);
  type metadata accessor for Transaction();
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 168);
  *(v0 + 256) = swift_initStackObject();
  *(v0 + 264) = sub_100179C34(v6, v7, v8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *(v9 + 16) = v35;
  *(v9 + 32) = v33;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v37;
  *(v9 + 88) = v5;
  sub_100014B50(v1, v2, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  *(v0 + 280) = v10;
  v11 = sub_100155D6C(v6, v8, &_mh_execute_header);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v11, (v0 + 104));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = *(v0 + 64);
  if (v12)
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
  }

  *(v0 + 288) = v12;
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  sub_100014B50(*(v0 + 240), v15, &qword_10023A2B8, &qword_1001BC460);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 240);
  if (v18 == 1)
  {
    sub_10000DAF8(*(v0 + 240), &qword_10023A2B8, &qword_1001BC460);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v36 = *(v0 + 128);
    v34 = *(v0 + 120);
    v25 = *(v0 + 320);
    (*(v23 + 32))(v21, *(v0 + 232), v24);
    (*(v23 + 16))(v22, v21, v24);
    v26 = type metadata accessor for SignpostInterval();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v20 = sub_1000F61B0(v34, v36, v25, v22);
    (*(v23 + 8))(v21, v24);
    sub_10000DAF8(v19, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 296) = v20;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 96) = v20;
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = -1;
  *(v29 + 40) = v10;
  *(v29 + 48) = v12;
  *(v29 + 56) = v20;
  *(v29 + 64) = &unk_1001C3E88;
  *(v29 + 72) = v9;
  v30 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v31 = swift_task_alloc();
  *(v0 + 312) = v31;
  *v31 = v0;
  v31[1] = sub_100172F54;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100177080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v14;
  *(v8 + 72) = v15;
  *(v8 + 162) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100177164, 0, 0);
}

uint64_t sub_100177164()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[14] = v4;
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Is anything happening?", v8, 2u);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[17] = v13;
  v13(v9, v10);
  v20 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_100177334;
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[3];

  return (v20)(v0 + 20, v16, v17);
}

uint64_t sub_100177334()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10017E174;
  }

  else
  {
    v3 = sub_10017E058;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100177448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v16;
  *(v8 + 72) = v17;
  *(v8 + 184) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v12 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  *(v8 + 112) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100177574, 0, 0);
}

uint64_t sub_100177574()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[17] = v4;
  v5 = *(v3 + 16);
  v0[18] = v5;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Is anything happening?", v8, 2u);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[20] = v13;
  v13(v9, v10);
  v21 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_100177744;
  v16 = v0[15];
  v17 = v0[4];
  v18 = v0[5];
  v19 = v0[3];

  return v21(v16, v17, v18);
}

uint64_t sub_100177744()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_10017E170;
  }

  else
  {
    v3 = sub_10017E180;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100177858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = v14;
  *(v8 + 96) = v15;
  *(v8 + 33) = a8;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 104) = v9;
  v10 = *(v9 - 8);
  *(v8 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10017793C, 0, 0);
}

uint64_t sub_10017793C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[17] = v4;
  v5 = *(v3 + 16);
  v0[18] = v5;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Is anything happening?", v8, 2u);
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[5];

  v13 = *(v11 + 8);
  v0[20] = v13;
  v13(v9, v10);
  v20 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_100177B0C;
  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[6];

  return (v20)(v0 + 2, v16, v17);
}

uint64_t sub_100177B0C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100177D00;
  }

  else
  {
    v3 = sub_100177C20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100177C20()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[22] != 0;
  v8 = sub_10017B8D8();
  v10 = v9;
  v6();
  sub_10001BABC(v8, v10);
  sub_10017DBBC(v1, v2, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100177D00()
{
  v37 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 120), *(v0 + 136), *(v0 + 104));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v34 = *(v0 + 120);
    v35 = *(v0 + 160);
    v32 = *(v0 + 112);
    v33 = *(v0 + 104);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 33);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v9 = 136315394;
    v12 = StaticString.description.getter();
    v14 = sub_10017AD04(v12, v13, &v36);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v11);

    v35(v34, v33);
  }

  else
  {
    v16 = *(v0 + 160);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 104);

    v16(v17, v19);
  }

  v20 = *(v0 + 176);
  v21 = sub_1000F2D3C();

  v23 = *(v0 + 120);
  v22 = *(v0 + 128);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v26 = *(v0 + 176) != 0;
  v27 = sub_10017B8D8();
  v29 = v28;
  v25();
  sub_10001BABC(v27, v29);
  sub_10017DBBC(v21, 0, v26);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100177FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v14;
  *(v8 + 72) = v15;
  *(v8 + 162) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10017808C, 0, 0);
}

uint64_t sub_10017808C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[14] = v4;
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Is anything happening?", v8, 2u);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[17] = v13;
  v13(v9, v10);
  v20 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_10017825C;
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[3];

  return (v20)(v0 + 20, v16, v17);
}

uint64_t sub_10017825C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100178448;
  }

  else
  {
    v3 = sub_100178370;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100178370()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = sub_10017BB68(*(v0 + 160) | ((*(v0 + 152) != 0) << 8), &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v7 = v6;
  v4();
  sub_10001BABC(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100178448()
{
  v36 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  (*(v0 + 120))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v33 = *(v0 + 96);
    v34 = *(v0 + 136);
    v31 = *(v0 + 88);
    v32 = *(v0 + 80);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = *(v0 + 162);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v9 = 136315394;
    v12 = StaticString.description.getter();
    v14 = sub_10017AD04(v12, v13, &v35);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v11);

    v34(v33, v32);
  }

  else
  {
    v16 = *(v0 + 136);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);

    v16(v17, v19);
  }

  v20 = *(v0 + 152);
  v21 = sub_1000F2D3C();

  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = sub_10017BB68(v21 | ((*(v0 + 152) != 0) << 8), &qword_10023E488, &qword_1001C3E28, &qword_10023E490);
  v28 = v27;
  v25();
  sub_10001BABC(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1001786F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v14;
  *(v8 + 72) = v15;
  *(v8 + 162) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1001787D8, 0, 0);
}

uint64_t sub_1001787D8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[14] = v4;
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Is anything happening?", v8, 2u);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[17] = v13;
  v13(v9, v10);
  v20 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_1001789A8;
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[3];

  return (v20)(v0 + 20, v16, v17);
}

uint64_t sub_1001789A8()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100178B94;
  }

  else
  {
    v3 = sub_100178ABC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100178ABC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = sub_10017BB68(*(v0 + 160) | ((*(v0 + 152) != 0) << 8), &qword_10023E4A0, &qword_1001C3EE0, &qword_10023E4A8);
  v7 = v6;
  v4();
  sub_10001BABC(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100178B94()
{
  v36 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  (*(v0 + 120))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v33 = *(v0 + 96);
    v34 = *(v0 + 136);
    v31 = *(v0 + 88);
    v32 = *(v0 + 80);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = *(v0 + 162);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v9 = 136315394;
    v12 = StaticString.description.getter();
    v14 = sub_10017AD04(v12, v13, &v35);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v11);

    v34(v33, v32);
  }

  else
  {
    v16 = *(v0 + 136);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);

    v16(v17, v19);
  }

  v20 = *(v0 + 152);
  v21 = sub_1000F2D3C();

  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = sub_10017BB68(v21 | ((*(v0 + 152) != 0) << 8), &qword_10023E4A0, &qword_1001C3EE0, &qword_10023E4A8);
  v28 = v27;
  v25();
  sub_10001BABC(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100178E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v14;
  *(v8 + 72) = v15;
  *(v8 + 162) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100178F24, 0, 0);
}

uint64_t sub_100178F24()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[14] = v4;
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Is anything happening?", v8, 2u);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[17] = v13;
  v13(v9, v10);
  v20 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_1001790F4;
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[3];

  return (v20)(v0 + 20, v16, v17);
}

uint64_t sub_1001790F4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10017E178;
  }

  else
  {
    v3 = sub_10017E05C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100179208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v16;
  *(v8 + 72) = v17;
  *(v8 + 184) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = type metadata accessor for Logger();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v12 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  *(v8 + 112) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100179334, 0, 0);
}

uint64_t sub_100179334()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[17] = v4;
  v5 = *(v3 + 16);
  v0[18] = v5;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Is anything happening?", v8, 2u);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[20] = v13;
  v13(v9, v10);
  v21 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_100179504;
  v16 = v0[15];
  v17 = v0[4];
  v18 = v0[5];
  v19 = v0[3];

  return v21(v16, v17, v18);
}

uint64_t sub_100179504()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100179714;
  }

  else
  {
    v3 = sub_100179618;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100179618()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  swift_storeEnumTagMultiPayload();
  sub_10017C43C(v1, v2);
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[8];
  v8 = v0[9];
  v10 = sub_10017B65C();
  v12 = v11;
  v9();
  sub_10001BABC(v10, v12);
  sub_10000DAF8(v4, &qword_10023CF90, &unk_1001BF9B8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100179714()
{
  v40 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 96), *(v0 + 136), *(v0 + 80));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v37 = *(v0 + 96);
    v38 = *(v0 + 160);
    v35 = *(v0 + 88);
    v36 = *(v0 + 80);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v9 = 136315394;
    v12 = StaticString.description.getter();
    v14 = sub_10017AD04(v12, v13, &v39);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v11);

    v38(v37, v36);
  }

  else
  {
    v16 = *(v0 + 160);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);

    v16(v17, v19);
  }

  v20 = *(v0 + 176);
  v21 = *(v0 + 128);
  v22 = *(v0 + 112);
  v23 = sub_1000F2D3C();

  *v21 = v23;
  swift_storeEnumTagMultiPayload();
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);
  v30 = sub_10017B65C();
  v32 = v31;
  v29();
  sub_10001BABC(v30, v32);
  sub_10000DAF8(v24, &qword_10023CF90, &unk_1001BF9B8);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1001799E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.utf8CString.getter();
  v11 = os_transaction_create();

  if (v11)
  {
    v3[2] = v11;
    v3[3] = a1;
    v3[4] = a2;

    timestamp = os_transaction_get_timestamp();
    v14 = Logger.general.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v14, v6);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22 = v6;
      v18 = timestamp;
      v19 = v17;
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 33554946;
      *(v19 + 4) = v18;
      *(v19 + 6) = 2080;

      v21 = sub_10017AD04(a1, a2, &v23);

      *(v19 + 8) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "[TXN%hx] 🐏 Beginning transaction (%s)", v19, 0x10u);
      sub_10000DB58(v20);

      (*(v7 + 8))(v10, v22);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v7 + 8))(v10, v6);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100179C34(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  StaticString.description.getter();
  String.utf8CString.getter();
  v11 = os_transaction_create();

  if (v11)
  {

    v4[2] = v11;
    v4[3] = StaticString.description.getter();
    v4[4] = v13;
    v14 = v4[2];
    timestamp = os_transaction_get_timestamp();
    v16 = Logger.general.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v16, v6);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27[3] = a3;
      v20 = timestamp;
      v21 = v19;
      v22 = swift_slowAlloc();
      v28 = v6;
      v29 = v22;
      v23 = v22;
      *v21 = 33554946;
      *(v21 + 4) = v20;
      *(v21 + 6) = 2080;
      v24 = StaticString.description.getter();
      v26 = sub_10017AD04(v24, v25, &v29);

      *(v21 + 8) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "[TXN%hx] 🐏 Beginning transaction (%s)", v21, 0x10u);
      sub_10000DB58(v23);

      (*(v7 + 8))(v10, v28);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100179E98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100179EB8, 0, 0);
}

uint64_t sub_100179EB8()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_100026C34() & 1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10017A0A0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a3;
  *(v3 + 16) = a1;
  return _swift_task_switch(sub_10017A0C4, 0, 0);
}

uint64_t sub_10017A0C4()
{
  v1 = *(v0 + 16);
  sub_100026D9C(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10017A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  return _swift_task_switch(sub_10017A338, 0, 0);
}

uint64_t sub_10017A338()
{
  v1 = v0[3];
  sub_100026F18(v0[4], v0[5], v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10017A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10000BD30;

  return sub_1000270C8(a3, a4);
}

uint64_t sub_10017ABA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017ABE0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10017AC40@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_BYTE **sub_10017AC70(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10017ACA8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10017AD04(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10017AD04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10017ADD0(v11, 0, 0, 1, a1, a2);
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
    sub_10002036C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000DB58(v11);
  return v7;
}

unint64_t sub_10017ADD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10017AEDC(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10017AEDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_10017AF28(a1, a2);
  sub_10017B058(&off_1002130B0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10017AF28(uint64_t a1, unint64_t a2)
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

  v6 = sub_10017B144(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10017B144(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10017B058(uint64_t result)
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

  result = sub_10017B1B8(result, v12, 1, v3);
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

void *sub_10017B144(uint64_t a1, uint64_t a2)
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

  sub_10000CDE0(&qword_10023E480, &qword_1001C3E20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10017B1B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023E480, &qword_1001C3E20);
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

void sub_10017B2AC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10017B320(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10009D480;

  return sub_1000279B4();
}

uint64_t sub_10017B3B4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100084838;

  return sub_100027D10();
}

uint64_t sub_10017B448(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 800);
  v8 = *(v1 + 816);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_1001764B8(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017B55C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017B65C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  sub_10017DBC8(&qword_10023E498, &qword_10023CF90, &unk_1001BF9B8);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v5;
}

uint64_t sub_10017B8D8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10000CDE0(&qword_10023E4B0, &qword_1001C3FD8);
  sub_10017DBC8(&qword_10023E4B8, &qword_10023E4B0, &qword_1001C3FD8);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v5;
}

uint64_t sub_10017BB68(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for PropertyListEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10000CDE0(a2, a3);
  sub_10017DBC8(a4, a2, a3);
  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v12;
}

uint64_t sub_10017BDE8()
{
  sub_10001BABC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017BE20(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10017A574(a1, a2, v7, v6);
}

uint64_t sub_10017BED0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017BF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000152E0;

  return sub_10009D5B0(a1, a2, a3, v9);
}

uint64_t sub_10017BFD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017C010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000152E0;

  return sub_10017A314(a1, a2, a3, v9, v8);
}

uint64_t sub_10017C0D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  sub_10000DB58((v0 + 72));
  sub_10000DB58((v0 + 112));
  v3 = *(v0 + 152);

  v4 = *(v0 + 168);

  v5 = *(v0 + 192);

  v6 = *(v0 + 216);

  v7 = *(v0 + 240);

  v8 = *(v0 + 264);

  v9 = *(v0 + 288);

  v10 = *(v0 + 312);

  sub_10000DB58((v0 + 328));
  v11 = *(v0 + 376);

  sub_10000DB58((v0 + 392));
  sub_10000DB58((v0 + 432));
  sub_10000DB58((v0 + 472));
  sub_10000DB58((v0 + 512));
  sub_10000DB58((v0 + 552));
  sub_10000DB58((v0 + 592));
  v12 = *(v0 + 632);

  sub_10000DB58((v0 + 640));
  sub_10000DB58((v0 + 680));
  sub_10000DB58((v0 + 720));
  if (*(v0 + 784))
  {
    sub_10000DB58((v0 + 760));
  }

  v13 = *(v0 + 816);

  return _swift_deallocObject(v0, 824, 7);
}

uint64_t sub_10017C228(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 800);
  v8 = *(v1 + 816);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_100176A9C(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017C33C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100179208(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017C43C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017C4BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000152E0;

  return sub_10017A0A0(a1, a2, v6);
}

void sub_10017C568()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_10017C5C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 800);
  v8 = *(v1 + 816);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_100175ED4(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017C6D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100178E40(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017C7D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  sub_10000DB58((v0 + 96));
  sub_10000DB58((v0 + 136));
  sub_10000DB58((v0 + 176));
  sub_10000DB58((v0 + 216));
  sub_10000DB58((v0 + 256));
  v4 = *(v0 + 296);

  v5 = *(v0 + 312);

  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));
  v6 = *(v0 + 416);

  v7 = *(v0 + 440);

  v8 = *(v0 + 464);

  v9 = *(v0 + 488);

  v10 = *(v0 + 512);

  v11 = *(v0 + 536);

  v12 = *(v0 + 560);

  sub_10000DB58((v0 + 576));
  v13 = *(v0 + 624);

  sub_10000DB58((v0 + 640));
  sub_10000DB58((v0 + 680));
  sub_10000DB58((v0 + 720));
  sub_10000DB58((v0 + 760));
  sub_10000DB58((v0 + 800));
  sub_10000DB58((v0 + 840));
  v14 = *(v0 + 880);

  sub_10000DB58((v0 + 888));
  sub_10000DB58((v0 + 928));
  sub_10000DB58((v0 + 968));
  v15 = *(v0 + 1016);

  v16 = *(v0 + 1040);

  v17 = *(v0 + 1064);

  v18 = *(v0 + 1088);

  v19 = *(v0 + 1112);

  v20 = *(v0 + 1136);

  sub_10000DB58((v0 + 1152));
  sub_10000DB58((v0 + 1192));
  sub_10000DB58((v0 + 1232));
  sub_10000DB58((v0 + 1272));
  sub_10000DB58((v0 + 1312));
  sub_10000DB58((v0 + 1352));
  sub_10000DB58((v0 + 1392));
  sub_10000DB58((v0 + 1432));
  sub_10000DB58((v0 + 1472));
  sub_10000DB58((v0 + 1512));
  if (*(v0 + 1576))
  {
    sub_10000DB58((v0 + 1552));
  }

  v21 = *(v0 + 1608);

  return _swift_deallocObject(v0, 1616, 7);
}

uint64_t sub_10017CA1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 1592);
  v8 = *(v1 + 1608);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_1001758F0(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017CB34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017CC34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 128);

  v6 = *(v0 + 152);

  v7 = *(v0 + 176);

  v8 = *(v0 + 200);

  v9 = *(v0 + 224);

  sub_10000DB58((v0 + 240));
  v10 = *(v0 + 288);

  sub_10000DB58((v0 + 304));
  sub_10000DB58((v0 + 344));
  sub_10000DB58((v0 + 384));
  sub_10000DB58((v0 + 424));
  sub_10000DB58((v0 + 464));
  sub_10000DB58((v0 + 504));
  v11 = *(v0 + 544);

  sub_10000DB58((v0 + 552));
  sub_10000DB58((v0 + 592));
  sub_10000DB58((v0 + 632));
  if (*(v0 + 696))
  {
    sub_10000DB58((v0 + 672));
  }

  v12 = *(v0 + 728);

  return _swift_deallocObject(v0, 736, 7);
}

uint64_t sub_10017CD6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 712);
  v8 = *(v1 + 728);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_10017530C(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017CE84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017CF88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 616);
  v8 = *(v1 + 632);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_1001742A0(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017D0A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100177FA8(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017D1A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000BD30;

  return sub_10016FB7C(a1, v4, v5, v11, v6, v7, v8, v9);
}

uint64_t sub_10017D290()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 128);

  v6 = *(v0 + 152);

  v7 = *(v0 + 176);

  v8 = *(v0 + 200);

  sub_10000DB58((v0 + 216));
  sub_10000DB58((v0 + 256));
  sub_10000DB58((v0 + 296));
  sub_10000DB58((v0 + 336));
  sub_10000DB58((v0 + 376));
  sub_10000DB58((v0 + 416));
  sub_10000DB58((v0 + 456));
  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  if (*(v0 + 600))
  {
    sub_10000DB58((v0 + 576));
  }

  v9 = *(v0 + 632);

  return _swift_deallocObject(v0, 640, 7);
}

uint64_t sub_10017D398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 616);
  v8 = *(v1 + 632);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BD30;

  return sub_100174884(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017D4B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_1001786F4(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017D5B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 1144);
  v8 = *(v1 + 1160);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_1001736D8(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017D6CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017D7CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 128);

  v6 = *(v0 + 152);

  v7 = *(v0 + 176);

  v8 = *(v0 + 200);

  v9 = *(v0 + 224);

  sub_10000DB58((v0 + 240));
  v10 = *(v0 + 288);

  sub_10000DB58((v0 + 304));
  sub_10000DB58((v0 + 344));
  sub_10000DB58((v0 + 384));
  sub_10000DB58((v0 + 424));
  sub_10000DB58((v0 + 464));
  sub_10000DB58((v0 + 504));
  v11 = *(v0 + 544);

  sub_10000DB58((v0 + 552));
  sub_10000DB58((v0 + 592));
  sub_10000DB58((v0 + 632));
  v12 = *(v0 + 680);

  v13 = *(v0 + 704);

  v14 = *(v0 + 728);

  v15 = *(v0 + 752);

  v16 = *(v0 + 776);

  v17 = *(v0 + 800);

  sub_10000DB58((v0 + 816));
  sub_10000DB58((v0 + 856));
  sub_10000DB58((v0 + 896));
  sub_10000DB58((v0 + 936));
  sub_10000DB58((v0 + 976));
  sub_10000DB58((v0 + 1016));
  sub_10000DB58((v0 + 1056));
  v18 = *(v0 + 1096);

  if (*(v0 + 1128))
  {
    sub_10000DB58((v0 + 1104));
  }

  v19 = *(v0 + 1160);

  return _swift_deallocObject(v0, 1168, 7);
}

uint64_t sub_10017D9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 1144);
  v8 = *(v1 + 1160);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_100173CBC(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017DABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100177858(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017DBBC(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_10005CB30(a1, a2);
  }

  return a1;
}

uint64_t sub_10017DBC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017DC1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100177448(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017DD1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  sub_10000DB58((v0 + 96));
  sub_10000DB58((v0 + 136));
  v4 = *(v0 + 184);

  v5 = *(v0 + 208);

  v6 = *(v0 + 232);

  v7 = *(v0 + 256);

  v8 = *(v0 + 280);

  v9 = *(v0 + 304);

  sub_10000DB58((v0 + 320));
  sub_10000DB58((v0 + 360));
  sub_10000DB58((v0 + 400));
  sub_10000DB58((v0 + 440));
  sub_10000DB58((v0 + 480));
  sub_10000DB58((v0 + 520));
  sub_10000DB58((v0 + 560));
  sub_10000DB58((v0 + 600));
  sub_10000DB58((v0 + 640));
  if (*(v0 + 704))
  {
    sub_10000DB58((v0 + 680));
  }

  v10 = *(v0 + 736);

  return _swift_deallocObject(v0, 744, 7);
}

uint64_t sub_10017DE44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 720);
  v8 = *(v1 + 736);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000152E0;

  return sub_100172970(a1, v4, v5, v6, v7, v9, v15, v13);
}

uint64_t sub_10017DF58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_100177080(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10017E060()
{

  return sub_100175008();
}

uint64_t sub_10017E0EC()
{

  return sub_100175278();
}

void sub_10017E184()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = [objc_opt_self() predicateWithProperty:v1 equalToValue:v2];
  swift_unknownObjectRelease();

  v4 = [v0 connection];
  v5 = v3;
  v6 = sub_100085D4C(v4, v3, _swiftEmptyArrayStorage, 0, 0);
  if (([v6 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_10017E46C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10017E4B8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009E494();
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v11];

    v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon28PostbackProxyServiceProtocol_];
    [a1 setExportedInterface:v12];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon36PostbackProxyServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v13 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v14, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing entitlement for PostbackProxyService", v17, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v9 & 1;
}

uint64_t sub_10017E770()
{
  v0 = objc_allocWithZone(NSXPCConnection);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_;
  v5 = [v3 interfaceWithProtocol:v4];

  [v2 setExportedInterface:v5];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v2 setExportedObject:v6];

  v7 = &OBJC_PROTOCOL____TtP20AttributionKitCommon28DeveloperModeServiceProtocol_;
  v8 = [v3 interfaceWithProtocol:v7];

  [v2 setRemoteObjectInterface:v8];
  v16 = sub_10017E9F0;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_100224380;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10017E9FC;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_1002243A8;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler:v10];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for DeveloperModeServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_10023FD98 = result;
  return result;
}

void sub_10017EA08(const char *a1)
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, static Logger.xpc);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10017EAF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10017EB58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017EB78()
{
  result = sub_10017EBBC();
  qword_10023FDA0 = result;
  return result;
}

uint64_t sub_10017EBBC()
{
  v18 = &type metadata for FeatureFlag;
  v19 = sub_10017EEFC();
  v0 = isFeatureEnabled(_:)();
  sub_10000DB58(&v15);
  if (v0)
  {
    v1 = objc_allocWithZone(NSXPCConnection);
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 initWithMachServiceName:v2 options:0];

    v4 = objc_opt_self();
    v5 = [v4 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [v3 setExportedInterface:v5];

    v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
    [v3 setExportedObject:v6];

    v7 = [v4 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon36PostbackUpdateTestingServiceProtocol_];
    [v3 setRemoteObjectInterface:v7];

    v19 = sub_10017E9F0;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_10001F3F8;
    v18 = &unk_1002243D0;
    v8 = _Block_copy(&v15);
    [v3 setInterruptionHandler:v8];
    _Block_release(v8);
    v19 = sub_10017E9FC;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_10001F3F8;
    v18 = &unk_1002243F8;
    v9 = _Block_copy(&v15);
    [v3 setInvalidationHandler:v9];
    _Block_release(v9);
    [v3 resume];
    type metadata accessor for PostbackUpdateTestingServiceConnection();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    if (qword_10023E548 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000DAC0(v11, static Logger.xpc);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Testing feature flag is not enabled", v14, 2u);
    }

    return 0;
  }

  return result;
}

unint64_t sub_10017EEFC()
{
  result = qword_10023E740;
  if (!qword_10023E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E740);
  }

  return result;
}

uint64_t sub_10017EF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017EF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_10017EFBC, 0, 0);
}

uint64_t sub_10017EFBC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for DeveloperBillingEvent();
  sub_100185234(&qword_10023E7F0, type metadata accessor for DeveloperBillingEvent);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v17 = *(v0 + 24);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v14 = v0;
  v14[1] = sub_10017F1C8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 96, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_10018527C, v12, v15);
}

uint64_t sub_10017F1C8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10017F34C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10017F2E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017F2E4()
{
  sub_10001BABC(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10017F34C()
{
  v1 = v0[9];
  sub_10001BABC(v0[7], v0[8]);

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10017F3BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_10017F408, 0, 0);
}

uint64_t sub_10017F408()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001851C8();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v13 = v0;
  v13[1] = sub_10017F5D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_10018521C, v11, v14);
}

uint64_t sub_10017F5D4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100185460;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10018546C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017F6F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_10017F73C, 0, 0);
}

uint64_t sub_10017F73C()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001850B4();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v15 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v15;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_10017F8FC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_10018514C, v11, &type metadata for Bool);
}

uint64_t sub_10017F8FC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10017FA80;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10017FA18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017FA18()
{
  sub_10001BABC(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10017FA80()
{
  v1 = v0[8];
  sub_10001BABC(v0[6], v0[7]);

  v2 = v0[10];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10017FAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_10017FB40, 0, 0);
}

uint64_t sub_10017FB40()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for InAppPurchaseDetails();
  sub_100185234(&qword_10023E7E0, type metadata accessor for InAppPurchaseDetails);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v17 = *(v0 + 24);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v14 = v0;
  v14[1] = sub_10017FD4C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 96, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100185120, v12, v15);
}

uint64_t sub_10017FD4C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10018545C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100185504;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017FE68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_10017FEB4, 0, 0);
}

uint64_t sub_10017FEB4()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001850B4();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v13 = v0;
  v13[1] = sub_10017F5D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100185108, v11, v14);
}

uint64_t sub_100180080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  return _swift_task_switch(sub_1001800CC, 0, 0);
}

uint64_t sub_1001800CC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100185048();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 96) = v7;
  *(v0 + 104) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v19 = *(v0 + 64);

  v13 = *(v12 + 16);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v16 = v0;
  v16[1] = sub_1001802B0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 136, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_10018509C, v14, v17);
}

uint64_t sub_1001802B0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100185464;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100185508;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001803CC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 90) = a1;
  *(v4 + 40) = *v3;
  return _swift_task_switch(sub_10018041C, 0, 0);
}

uint64_t sub_10018041C()
{
  *(v0 + 89) = *(v0 + 90);
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184FDC();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v9;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v13 = v0;
  v13[1] = sub_10017F5D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100185030, v11, v14);
}

uint64_t sub_100180604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  return _swift_task_switch(sub_100180650, 0, 0);
}

uint64_t sub_100180650()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184F70();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 96) = v7;
  *(v0 + 104) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v19 = *(v0 + 64);

  v13 = *(v12 + 16);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v16 = v0;
  v16[1] = sub_100180834;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 136, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184FC4, v14, v17);
}

uint64_t sub_100180834()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1001809B8;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100180950;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100180950()
{
  sub_10001BABC(*(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001809B8()
{
  v1 = v0[14];
  sub_10001BABC(v0[12], v0[13]);

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100180A28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_100180A74, 0, 0);
}

uint64_t sub_100180A74()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184EC8();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v13 = v0;
  v13[1] = sub_100180C40;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184F1C, v11, v14);
}

uint64_t sub_100180C40()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100180D5C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10017FA18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100180D5C()
{
  v1 = v0[8];
  sub_10001BABC(v0[6], v0[7]);

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100180DCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_100180E18, 0, 0);
}

uint64_t sub_100180E18()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184C04();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v15 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v15;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_100180FD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184EB0, v11, &type metadata for Bool);
}

uint64_t sub_100180FD8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100185468;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10018546C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001810F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_100181140, 0, 0);
}

uint64_t sub_100181140()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184C04();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v13 = v0;
  v13[1] = sub_10017F5D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 88, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184DEC, v11, v14);
}

uint64_t sub_10018130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_100181358, 0, 0);
}

uint64_t sub_100181358()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100184C04();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v6 = v5;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;

  v7 = *(v0 + 48);
  v8 = *(*(v0 + 40) + 16);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = *(v0 + 24);
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 40) = v4;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  v13 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  *v12 = v0;
  v12[1] = sub_100181518;
  v14 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v14, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184C58, v9, v13);
}

uint64_t sub_100181518()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10017F34C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100181634;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100181634()
{
  sub_10001BABC(v0[7], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100181698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_1001816E4, 0, 0);
}

uint64_t sub_1001816E4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for DevelopmentPostbackConfiguration();
  sub_100185234(&qword_10023E768, type metadata accessor for DevelopmentPostbackConfiguration);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v17 = *(v0 + 24);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = sub_10000CDE0(&qword_10023E770, &qword_1001C4340);
  *v14 = v0;
  v14[1] = sub_10017FD4C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 96, 0, 0, 0xD000000000000023, 0x80000001001CE700, sub_100184BC0, v12, v15);
}

uint64_t sub_100181910()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100181A08;
  v2 = *(v0 + 16);

  return sub_10017EF70(v2, sub_1001849C0, 0);
}

uint64_t sub_100181A08()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100181B08@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100181B38(uint64_t a1)
{
  v2 = sub_100184A9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100181B74(uint64_t a1)
{
  v2 = sub_100184A9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AggregatedReportingRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023E748, &qword_1001C41F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100184A9C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100181CEC(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v26 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224A28;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v34);
  sub_10000CDE0(&qword_10023E7A8, &qword_1001C43B0);
  if (swift_dynamicCast() && v33)
  {
    v35 = v33;
    v26(v13, v32, v9);
    v21 = swift_allocObject();
    v18(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(&v35, v22, v29, sub_1001854FC, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v23 = swift_allocError();
    *v24 = 3;
    v34[0] = v23;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182008(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v26 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002249B0;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v34);
  sub_10000CDE0(&qword_10023E7A8, &qword_1001C43B0);
  if (swift_dynamicCast() && v33)
  {
    v35 = v33;
    v26(v13, v32, v9);
    v21 = swift_allocObject();
    v18(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(&v35, v22, v29, sub_1001854FC, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v23 = swift_allocError();
    *v24 = 3;
    v34[0] = v23;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182324(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_100185178;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224938;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001851A0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182638(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002248C0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_10018294C(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224848;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182C60(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002247D0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7D0, &qword_1001C43E8);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100182F74(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224758;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100183288(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002246E0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7A8, &qword_1001C43B0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_10018359C(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_100184F34;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224668;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E7A8, &qword_1001C43B0);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_100184F48, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_1001838B0(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002245F0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E780, &unk_1001C4358);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_100185500, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100183BC4(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224578;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E780, &unk_1001C4358);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100183ED8(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E790, &qword_1001C4378);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_100184C9C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224500;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E780, &unk_1001C4358);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_100184CC4, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_1001841EC(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_1001854F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100224488;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(aBlock, v33);
  sub_10000CDE0(&qword_10023E780, &unk_1001C4358);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_1001854FC, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100080044();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_10000DB58(aBlock);
}

uint64_t sub_100184500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, static Logger.xpc);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching remote object proxy: %{public}@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  sub_100080044();
  swift_allocError();
  *v12 = 3;
  sub_10000CDE0(a3, a4);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1001846AC()
{
  v0 = sub_10018C6C0();
  v1 = v0;
  if ((v0 & 0x100) != 0)
  {
    sub_100080044();
    swift_allocError();
    *v3 = v1;
    sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100184750()
{
  v0 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v15 - v2;
  v4 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  sub_10018C2F0(v15 - v9);
  sub_100184D7C(v10, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v8;
    sub_100080044();
    v12 = swift_allocError();
    *v13 = v11;
    v15[1] = v12;
    sub_10000CDE0(&qword_10023E790, &qword_1001C4378);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100054734(v8, v3);
    sub_10000CDE0(&qword_10023E790, &qword_1001C4378);
    CheckedContinuation.resume(returning:)();
  }

  return sub_10000DAF8(v10, &qword_10023E798, &qword_1001C4380);
}

uint64_t sub_10018491C()
{
  v0 = sub_10018C078();
  v1 = v0;
  if ((v0 & 0x100) != 0)
  {
    sub_100080044();
    swift_allocError();
    *v3 = v1;
    sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000CDE0(&qword_10023E778, &unk_1001C4348);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001849C0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100224A78;
  v9 = _Block_copy(v10);

  [v7 reportDeveloperBillingEvent:isa reply:v9];
  _Block_release(v9);
}

unint64_t sub_100184A9C()
{
  result = qword_10023E750;
  if (!qword_10023E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E750);
  }

  return result;
}

unint64_t sub_100184B14()
{
  result = qword_10023E758;
  if (!qword_10023E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E758);
  }

  return result;
}

unint64_t sub_100184B6C()
{
  result = qword_10023E760;
  if (!qword_10023E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E760);
  }

  return result;
}

uint64_t sub_100184BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100184C04()
{
  result = qword_10023E788;
  if (!qword_10023E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E788);
  }

  return result;
}

uint64_t sub_100184CC4()
{
  v1 = *(sub_10000CDE0(&qword_10023E790, &qword_1001C4378) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100184750();
}

uint64_t sub_100184D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100184E04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  v9 = *(sub_10000CDE0(a3, a4) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return a5(a1, a2, v5 + v10, *(v5 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100184EC8()
{
  result = qword_10023E7A0;
  if (!qword_10023E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7A0);
  }

  return result;
}

unint64_t sub_100184F70()
{
  result = qword_10023E7B0;
  if (!qword_10023E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7B0);
  }

  return result;
}

unint64_t sub_100184FDC()
{
  result = qword_10023E7B8;
  if (!qword_10023E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7B8);
  }

  return result;
}

unint64_t sub_100185048()
{
  result = qword_10023E7C8;
  if (!qword_10023E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7C8);
  }

  return result;
}

unint64_t sub_1001850B4()
{
  result = qword_10023E7D8;
  if (!qword_10023E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7D8);
  }

  return result;
}

unint64_t sub_1001851C8()
{
  result = qword_10023E7E8;
  if (!qword_10023E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E7E8);
  }

  return result;
}

uint64_t sub_100185234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100185294(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000CDE0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100185398(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000CDE0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_100185544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E6967676F6CLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001855CC(uint64_t a1)
{
  v2 = sub_100185894();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185608(uint64_t a1)
{
  v2 = sub_100185894();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100185644(uint64_t a1)
{
  v2 = sub_1001858E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185680(uint64_t a1)
{
  v2 = sub_1001858E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageRegistration.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023E7F8, &qword_1001C4420);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = sub_10000CDE0(&qword_10023E800, &qword_1001C4428);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100185894();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001858E8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_100185894()
{
  result = qword_10023E808;
  if (!qword_10023E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E808);
  }

  return result;
}

unint64_t sub_1001858E8()
{
  result = qword_10023E810;
  if (!qword_10023E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E810);
  }

  return result;
}

unint64_t sub_100185954()
{
  if (*v0)
  {
    result = 6778732;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_10018598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001001CE730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100185A74(uint64_t a1)
{
  v2 = sub_1001868F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185AB0(uint64_t a1)
{
  v2 = sub_1001868F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100185AEC(uint64_t a1)
{
  v2 = sub_1001869A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185B28(uint64_t a1)
{
  v2 = sub_1001869A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100185B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100185BFC(uint64_t a1)
{
  v2 = sub_10018694C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100185C38(uint64_t a1)
{
  v2 = sub_10018694C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t XPCClientMessage.MessageType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = sub_10000CDE0(&qword_10023E818, &qword_1001C4430);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_10000CDE0(&qword_10023E820, &qword_1001C4438);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_10000CDE0(&qword_10023E828, &qword_1001C4440);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001868F8();
  v18 = v24;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    v26 = 1;
    sub_10018694C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v25 = 0;
    sub_1001869A0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_100185F80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001869F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100185FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100186060(uint64_t a1)
{
  v2 = sub_100186F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018609C(uint64_t a1)
{
  v2 = sub_100186F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t XPCClientMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CDE0(&qword_10023E848, &qword_1001C4448);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100186F00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[0] = a2;
  v13[1] = a3;
  sub_100186F54();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

void *sub_100186244@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100186FA8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t XPCClientProtocol.handleMessage(_:)(uint64_t a1, uint64_t a2)
{
  sub_10000CDE0(&qword_10023E860, &qword_1001C4450);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B93B0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  XPCClientProtocol.handleMessages(_:)(v4);
}

Swift::Void __swiftcall XPCClientProtocol.handleMessages(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  rawValue = a1._rawValue;
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10000CDE0(&qword_10023E868, &unk_1001C8330);
  sub_10018711C();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v7;

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v2 handleMessages:isa];

  sub_10001BABC(v6, v8);
}

uint64_t sub_1001865AC(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023E938, &qword_1001C4C68);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_10000CDE0(&qword_10023E940, &unk_1001C4C70);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100185894();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = KeyedDecodingContainer.allKeys.getter();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_1001A53FC() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    v20 = *(sub_10000CDE0(&qword_10023E930, &qword_1001C4C60) + 48);
    *v19 = &type metadata for MessageRegistration;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return sub_10000DB58(v22);
  }

  sub_1001858E8();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return sub_10000DB58(v22);
}

unint64_t sub_1001868F8()
{
  result = qword_10023E830;
  if (!qword_10023E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E830);
  }

  return result;
}

unint64_t sub_10018694C()
{
  result = qword_10023E838;
  if (!qword_10023E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E838);
  }

  return result;
}

unint64_t sub_1001869A0()
{
  result = qword_10023E840;
  if (!qword_10023E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E840);
  }

  return result;
}

uint64_t sub_1001869F4(uint64_t *a1)
{
  v2 = sub_10000CDE0(&qword_10023E918, &qword_1001C4C48);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - v4;
  v6 = sub_10000CDE0(&qword_10023E920, &qword_1001C4C50);
  v33 = *(v6 - 8);
  v7 = *(v33 + 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = sub_10000CDE0(&qword_10023E928, &qword_1001C4C58);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v37 = a1;
  v17 = sub_10000DA7C(a1, v16);
  sub_1001868F8();
  v18 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v32 = v6;
    v19 = v35;
    v36 = v11;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_1001A9350();
    v23 = v10;
    v17 = v14;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v10;
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      v29 = *(sub_10000CDE0(&qword_10023E930, &qword_1001C4C60) + 48);
      *v28 = &type metadata for XPCClientMessage.MessageType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
      swift_willThrow();
      (*(v36 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      sub_10018694C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v36;
      v33 = v14;
      v17 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v34 + 8))(v5, v19);
      (*(v24 + 8))(v33, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      sub_1001869A0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v36;
      (*(v33 + 1))(v9, v32);
      (*(v31 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  sub_10000DB58(v37);
  return v17;
}

unint64_t sub_100186F00()
{
  result = qword_10023E850;
  if (!qword_10023E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E850);
  }

  return result;
}

unint64_t sub_100186F54()
{
  result = qword_10023E858;
  if (!qword_10023E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E858);
  }

  return result;
}

void *sub_100186FA8(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023E908, &qword_1001C4C40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_10000DA7C(a1, a1[3]);
  sub_100186F00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10018785C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_10000DB58(a1);
  }

  return v9;
}

unint64_t sub_10018711C()
{
  result = qword_10023E870;
  if (!qword_10023E870)
  {
    sub_10000CCC0(&qword_10023E868, &unk_1001C8330);
    sub_1001871A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E870);
  }

  return result;
}

unint64_t sub_1001871A0()
{
  result = qword_10023E878;
  if (!qword_10023E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E878);
  }

  return result;
}

unint64_t sub_1001871F8()
{
  result = qword_10023E880;
  if (!qword_10023E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E880);
  }

  return result;
}

unint64_t sub_1001872E0()
{
  result = qword_10023E888;
  if (!qword_10023E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E888);
  }

  return result;
}

unint64_t sub_100187338()
{
  result = qword_10023E890;
  if (!qword_10023E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E890);
  }

  return result;
}

unint64_t sub_100187390()
{
  result = qword_10023E898;
  if (!qword_10023E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E898);
  }

  return result;
}

unint64_t sub_1001873E8()
{
  result = qword_10023E8A0;
  if (!qword_10023E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8A0);
  }

  return result;
}

unint64_t sub_100187440()
{
  result = qword_10023E8A8;
  if (!qword_10023E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8A8);
  }

  return result;
}

unint64_t sub_100187498()
{
  result = qword_10023E8B0;
  if (!qword_10023E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8B0);
  }

  return result;
}

unint64_t sub_1001874F0()
{
  result = qword_10023E8B8;
  if (!qword_10023E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8B8);
  }

  return result;
}

unint64_t sub_100187548()
{
  result = qword_10023E8C0;
  if (!qword_10023E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8C0);
  }

  return result;
}

unint64_t sub_1001875A0()
{
  result = qword_10023E8C8;
  if (!qword_10023E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8C8);
  }

  return result;
}

unint64_t sub_1001875F8()
{
  result = qword_10023E8D0;
  if (!qword_10023E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8D0);
  }

  return result;
}

unint64_t sub_100187650()
{
  result = qword_10023E8D8;
  if (!qword_10023E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8D8);
  }

  return result;
}

unint64_t sub_1001876A8()
{
  result = qword_10023E8E0;
  if (!qword_10023E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8E0);
  }

  return result;
}

unint64_t sub_100187700()
{
  result = qword_10023E8E8;
  if (!qword_10023E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8E8);
  }

  return result;
}

unint64_t sub_100187758()
{
  result = qword_10023E8F0;
  if (!qword_10023E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8F0);
  }

  return result;
}

unint64_t sub_1001877B0()
{
  result = qword_10023E8F8;
  if (!qword_10023E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E8F8);
  }

  return result;
}

unint64_t sub_100187808()
{
  result = qword_10023E900;
  if (!qword_10023E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E900);
  }

  return result;
}

unint64_t sub_10018785C()
{
  result = qword_10023E910;
  if (!qword_10023E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E910);
  }

  return result;
}

uint64_t ImpressionRequest.preflight(advertisedItemID:compactJWS:adNetworkID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001878F4, 0, 0);
}

uint64_t sub_1001878F4()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v7;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = sub_100188970;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_100187A38;

  return sub_10017F3BC(sub_1001889A0, v3);
}

uint64_t sub_100187A38()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100188BD8;
  }

  else
  {
    v3 = sub_100188BC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100187B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001A9410;
  v13[3] = &unk_100224F88;
  v12 = _Block_copy(v13);

  [a1 preflightImpressionWithAdvertisedItemID:a6 compactJWS:v10 adNetworkID:v11 reply:v12];
  _Block_release(v12);
}

uint64_t ImpressionRequest.startView(advertisedItemID:compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100187C78, 0, 0);
}

uint64_t sub_100187C78()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_1001889CC;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100187DBC;

  return sub_10017F3BC(sub_100188BBC, v3);
}

uint64_t sub_100187DBC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100188BD4;
  }

  else
  {
    v3 = sub_100188BC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t ImpressionRequest.endView(advertisedItemID:compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100187EF4, 0, 0);
}

uint64_t sub_100187EF4()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = sub_100188A08;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100188038;

  return sub_10017F3BC(sub_100188BBC, v3);
}

uint64_t sub_100188038()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10018814C;
  }

  else
  {
    v3 = sub_10008A18C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10018814C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

void sub_1001881B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v14 = String._bridgeToObjectiveC()();
  v16[4] = a4;
  v16[5] = a5;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1001A9410;
  v16[3] = a9;
  v15 = _Block_copy(v16);

  [a1 *a10];
  _Block_release(v15);
}

uint64_t ImpressionRequest.processTap(advertisedItemID:compactJWS:eventMessage:reengagementURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001882C4, 0, 0);
}

uint64_t sub_1001882C4()
{
  if (qword_10023E5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *(v6 + 16) = sub_100188A44;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_100188410;

  return sub_10017F3BC(sub_100188BBC, v6);
}

uint64_t sub_100188410()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100188590;
  }

  else
  {
    v3 = sub_100188524;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100188524()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100188590()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

void sub_1001885FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = aBlock - v16;
  v18 = String._bridgeToObjectiveC()();
  sub_10001B8EC(a10, v17);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v22 = 0;
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    URL._bridgeToObjectiveC()(v21);
    v22 = v23;
    (*(v20 + 8))(v17, v19);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A9410;
  aBlock[3] = &unk_100224F10;
  v24 = _Block_copy(aBlock);

  [a1 processTapWithAdvertisedItemID:a6 compactJWS:v18 eventMessage:a9 reengagementURL:v22 reply:v24];
  _Block_release(v24);
}

uint64_t sub_1001887E4(uint64_t a1)
{
  v2 = sub_100188A74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100188820(uint64_t a1)
{
  v2 = sub_100188A74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ImpressionRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023E948, &qword_1001C4CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100188A74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

void sub_100188970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[3];
  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  sub_100187B4C(a1, a2, a3, a4, a5, v5[2]);
}

uint64_t sub_1001889A0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_100188A74()
{
  result = qword_10023E950;
  if (!qword_10023E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E950);
  }

  return result;
}

unint64_t sub_100188AEC()
{
  result = qword_10023E958;
  if (!qword_10023E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E958);
  }

  return result;
}

unint64_t sub_100188B44()
{
  result = qword_10023E960;
  if (!qword_10023E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E960);
  }

  return result;
}

uint64_t sub_100188B98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL ImpressionType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100223F00, v2);

  return v3 != 0;
}

unint64_t sub_100188C4C()
{
  result = qword_10023E968;
  if (!qword_10023E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E968);
  }

  return result;
}

Swift::Int sub_100188CA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100188D24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100188D80@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100223F38, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_100188EBC()
{
  result = qword_10023E970;
  if (!qword_10023E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E970);
  }

  return result;
}

uint64_t ConversionValueTier.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x657372616F63;
  }

  return 1701734758;
}

unint64_t sub_100188F64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20AttributionKitCommon19ConversionValueTierO03rawE0ACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s20AttributionKitCommon19ConversionValueTierO03rawE0ACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100223F70, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100189094()
{
  result = qword_10023E978;
  if (!qword_10023E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E978);
  }

  return result;
}

unint64_t sub_1001890F8()
{
  result = qword_10023E980;
  if (!qword_10023E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E980);
  }

  return result;
}

uint64_t sub_10018914C(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  v31 = sub_10018DF84;
  v32 = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_10018C010;
  *(&v30 + 1) = &unk_1002254F0;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v33, &aBlock);
  sub_10000CDE0(&qword_10023EA40, &unk_1001C52A0);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v34 = v28;
    v13 = a1[1];
    aBlock = *a1;
    v30 = v13;
    v31 = *(a1 + 4);
    v14 = type metadata accessor for PropertyListEncoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DE38();
    v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v17;
      v21 = v18;

      v22 = a2;
      v23 = swift_allocObject();
      *(v23 + 16) = v8;
      *(v23 + 24) = v12;

      v22(&v34, v20, v21, sub_10018DF30, v23);

      swift_beginAccess();
      v24 = *(v8 + 16);
      if (v24 >> 8 <= 0xFE)
      {
        if ((v24 & 0x100) == 0)
        {
          sub_10001BABC(v20, v21);
          swift_unknownObjectRelease();

          sub_10000DB58(v33);
          return v24 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v27 = v24;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v25 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v20, v21);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v33);
  return 0;
}

uint64_t sub_100189508@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v48 = a3;
  v49 = a2;
  v45 = a4;
  v47 = *v6;
  v8 = sub_10000CDE0(&qword_10023EA30, &qword_1001C5288);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v46 = &v43 - v15;
  v16 = sub_10000CDE0(&qword_10023EA38, &unk_1001C5290);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = *(*v19 + 104);
  (*(v13 + 56))(v19 + v20, 1, 1, v12);
  v21 = v6[2];
  v53 = sub_10018DE30;
  v54 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_10018C010;
  *(&v52 + 1) = &unk_100225478;
  v22 = _Block_copy(&aBlock);

  v23 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v22];
  _Block_release(v22);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v55, &aBlock);
  sub_10000CDE0(&qword_10023EA40, &unk_1001C52A0);
  if (!swift_dynamicCast())
  {
    sub_100080044();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  v24 = v50;
  v56 = v50;
  v25 = a1[1];
  aBlock = *a1;
  v52 = v25;
  v53 = *(a1 + 4);
  v26 = type metadata accessor for PropertyListEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10018DE38();
  v29 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v5)
  {
    swift_unknownObjectRelease();

LABEL_10:

    return sub_10000DB58(v55);
  }

  v43 = v24;
  v32 = v29;
  v33 = v30;

  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 16) = v19;
  *(v34 + 24) = v35;

  v44 = v32;
  v47 = v33;
  v49(&v56, v32, v33, sub_10018DE8C, v34);

  swift_beginAccess();
  sub_100014B50(v19 + v20, v11, &qword_10023EA30, &qword_1001C5288);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000DAF8(v11, &qword_10023EA30, &qword_1001C5288);
    sub_100080044();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    sub_10001BABC(v44, v47);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v37 = v44;
  v38 = v46;
  v39 = v47;
  sub_10014AFF8(v11, v46, &qword_10023E798, &qword_1001C4380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LOBYTE(v50) = *v38;
    v40 = v50;
    sub_100080044();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v41 = v40;
    sub_10001BABC(v37, v39);
    goto LABEL_9;
  }

  sub_10001BABC(v37, v39);
  swift_unknownObjectRelease();

  sub_10000DB58(v55);
  return sub_10014AFF8(v38, v45, &qword_10023C230, &qword_1001B4FB0);
}

uint64_t sub_100189A6C(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v32 = sub_10018DF84;
  *(&v32 + 1) = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_10018C010;
  *(&v31 + 1) = &unk_100225428;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v41, &aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v42 = v40;
    v12 = a1[7];
    v36 = a1[6];
    v37 = v12;
    v38 = a1[8];
    v39 = *(a1 + 144);
    v13 = a1[3];
    v32 = a1[2];
    v33 = v13;
    v14 = a1[5];
    v34 = a1[4];
    v35 = v14;
    v15 = a1[1];
    aBlock = *a1;
    v31 = v15;
    v16 = type metadata accessor for PropertyListEncoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DD88();
    v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v19;
      v23 = v20;

      v24 = a2;
      v25 = swift_allocObject();
      *(v25 + 16) = v8;
      *(v25 + 24) = v7;

      v24(&v42, v22, v23, sub_10018DF30, v25);

      swift_beginAccess();
      v26 = *(v8 + 16);
      if (v26 >> 8 <= 0xFE)
      {
        if ((v26 & 0x100) == 0)
        {
          sub_10001BABC(v22, v23);
          swift_unknownObjectRelease();

          sub_10000DB58(v41);
          return v26 & 1;
        }

        LOBYTE(v40) = *(v8 + 16);
        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v29 = v26;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v27 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v22, v23);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v41);
  return 0;
}

uint64_t sub_100189E44(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v31 = sub_10018DF84;
  *(&v31 + 1) = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_10018C010;
  *(&v30 + 1) = &unk_1002253D8;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v36, &aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v37 = v35;
    v12 = a1[5];
    v33 = a1[4];
    v34[0] = v12;
    *(v34 + 9) = *(a1 + 89);
    v13 = a1[1];
    aBlock = *a1;
    v30 = v13;
    v14 = a1[3];
    v31 = a1[2];
    v32 = v14;
    v15 = type metadata accessor for PropertyListEncoder();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DD34();
    v18 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = v18;
      v22 = v19;

      v23 = a2;
      v24 = swift_allocObject();
      *(v24 + 16) = v8;
      *(v24 + 24) = v7;

      v23(&v37, v21, v22, sub_10018DF30, v24);

      swift_beginAccess();
      v25 = *(v8 + 16);
      if (v25 >> 8 <= 0xFE)
      {
        if ((v25 & 0x100) == 0)
        {
          sub_10001BABC(v21, v22);
          swift_unknownObjectRelease();

          sub_10000DB58(v36);
          return v25 & 1;
        }

        LOBYTE(v35) = *(v8 + 16);
        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v28 = v25;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v26 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v21, v22);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v36);
  return 0;
}

uint64_t sub_10018A20C(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *v1;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_10018DF84;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100225388;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v7];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v26, aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v27 = v24;
    v10 = type metadata accessor for PropertyListEncoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DCE0();
    v13 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;

      v18 = a1;
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v9;

      v18(&v27, v16, v17, sub_10018DF30, v19);

      swift_beginAccess();
      v20 = *(v5 + 16);
      if (v20 >> 8 <= 0xFE)
      {
        if ((v20 & 0x100) == 0)
        {
          sub_10001BABC(v16, v17);
          swift_unknownObjectRelease();

          sub_10000DB58(v26);
          return v20 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v23 = v20;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v16, v17);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v26);
  return 0;
}

uint64_t sub_10018A5AC(__int128 *a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  *&v31 = sub_10018DF84;
  *(&v31 + 1) = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_10018C010;
  *(&v30 + 1) = &unk_100225338;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v32, &aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v33 = v28;
    v13 = a1[1];
    aBlock = *a1;
    v30 = v13;
    v31 = a1[2];
    v14 = type metadata accessor for PropertyListEncoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DC8C();
    v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v17;
      v21 = v18;

      v22 = a2;
      v23 = swift_allocObject();
      *(v23 + 16) = v8;
      *(v23 + 24) = v12;

      v22(&v33, v20, v21, sub_10018DF30, v23);

      swift_beginAccess();
      v24 = *(v8 + 16);
      if (v24 >> 8 <= 0xFE)
      {
        if ((v24 & 0x100) == 0)
        {
          sub_10001BABC(v20, v21);
          swift_unknownObjectRelease();

          sub_10000DB58(v32);
          return v24 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v27 = v24;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v25 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v20, v21);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v32);
  return 0;
}

uint64_t sub_10018A968(char a1, void (*a2)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t))
{
  v4 = v2;
  v7 = *v4;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v8 = swift_allocObject();
  *(v8 + 16) = -256;
  v9 = v4[2];
  aBlock[4] = sub_10018DC54;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002252E8;
  v10 = _Block_copy(aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v29, aBlock);
  sub_10000CDE0(&qword_10023E7C0, &qword_1001C43D0);
  if (swift_dynamicCast())
  {
    v12 = v7;
    v30 = v27;
    LOBYTE(aBlock[0]) = a1;
    v13 = type metadata accessor for PropertyListEncoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100184FDC();
    v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = v16;
      v20 = v17;

      v21 = a2;
      v22 = swift_allocObject();
      *(v22 + 16) = v8;
      *(v22 + 24) = v12;

      v21(&v30, v19, v20, sub_10018DC70, v22);

      swift_beginAccess();
      v23 = *(v8 + 16);
      if (v23 >> 8 <= 0xFE)
      {
        if ((v23 & 0x100) == 0)
        {
          sub_10001BABC(v19, v20);
          swift_unknownObjectRelease();

          sub_10000DB58(v29);
          return v23 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v26 = v23;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v24 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v19, v20);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v29);
  return 0;
}

uint64_t sub_10018AD18@<X0>(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t)@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  sub_10000CDE0(&qword_10023E9E8, qword_1001C5260);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = -1;
  v8 = v2[2];
  aBlock[4] = sub_10018DB78;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100225298;
  v9 = _Block_copy(aBlock);

  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v9];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v30, aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (!swift_dynamicCast())
  {
    sub_100080044();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  v27 = a1;
  v31 = v28;
  v11 = type metadata accessor for PropertyListEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10018DB80();
  v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v3)
  {
    swift_unknownObjectRelease();

LABEL_10:

    return sub_10000DB58(v30);
  }

  v17 = v14;
  v18 = v15;
  v26 = a2;

  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v6;

  v27(&v31, v17, v18, sub_10018DBD4, v19);

  swift_beginAccess();
  v20 = *(v7 + 32);
  if (v20 == 255)
  {
    sub_100080044();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v21 = *(v7 + 16);
  if (v20)
  {
    sub_100080044();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v22 = v21;
LABEL_9:
    sub_10001BABC(v17, v18);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v25 = *(v7 + 24);
  sub_10014C744(*(v7 + 16), v25);
  sub_10001BABC(v17, v18);
  swift_unknownObjectRelease();

  result = sub_10000DB58(v30);
  *v26 = v21;
  v26[1] = v25;
  return result;
}

uint64_t sub_10018B0D0(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *v1;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_10018DF84;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_100225248;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v7];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v26, aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v27 = v24;
    v10 = type metadata accessor for PropertyListEncoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100184EC8();
    v13 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;

      v18 = a1;
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v9;

      v18(&v27, v16, v17, sub_10018DF30, v19);

      swift_beginAccess();
      v20 = *(v5 + 16);
      if (v20 >> 8 <= 0xFE)
      {
        if ((v20 & 0x100) == 0)
        {
          sub_10001BABC(v16, v17);
          swift_unknownObjectRelease();

          sub_10000DB58(v26);
          return v20 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v23 = v20;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v16, v17);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v26);
  return 0;
}

uint64_t sub_10018B470(void (*a1)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *v1;
  sub_10000CDE0(&qword_10023E9B8, &unk_1001C5240);
  v5 = swift_allocObject();
  *(v5 + 16) = -256;
  v6 = v1[2];
  aBlock[4] = sub_10018DF84;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C010;
  aBlock[3] = &unk_1002251F8;
  v7 = _Block_copy(aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v7];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002036C(v26, aBlock);
  sub_10000CDE0(&qword_10023E9C0, &unk_1001C5250);
  if (swift_dynamicCast())
  {
    v9 = v4;
    v27 = v24;
    v10 = type metadata accessor for PropertyListEncoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10018DAEC();
    v13 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v13;
      v17 = v14;

      v18 = a1;
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v9;

      v18(&v27, v16, v17, sub_10018DF30, v19);

      swift_beginAccess();
      v20 = *(v5 + 16);
      if (v20 >> 8 <= 0xFE)
      {
        if ((v20 & 0x100) == 0)
        {
          sub_10001BABC(v16, v17);
          swift_unknownObjectRelease();

          sub_10000DB58(v26);
          return v20 & 1;
        }

        sub_100080044();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v23 = v20;
      }

      else
      {
        sub_100080044();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
      }

      sub_10001BABC(v16, v17);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100080044();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
  }

  sub_10000DB58(v26);
  return 0;
}

void __swiftcall ImpressionIntakeRequest.init(compactJWS:interactionType:clientBundleID:)(AttributionKitCommon::ImpressionIntakeRequest *__return_ptr retstr, Swift::String compactJWS, AttributionKitCommon::InteractionType interactionType, Swift::String clientBundleID)
{
  retstr->compactJWS = compactJWS;
  retstr->interactionType = interactionType & 1;
  retstr->clientBundleID = clientBundleID;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImpressionIntakeRequest.recordImpression(advertisedItemID:)(Swift::UInt64 advertisedItemID)
{
  v2 = v1;
  if (qword_10023E5B0 != -1)
  {
    v3 = advertisedItemID;
    swift_once();
    advertisedItemID = v3;
  }

  v4 = __chkstk_darwin(advertisedItemID);
  __chkstk_darwin(v4);
  sub_10018914C(v2, sub_1001889A0);
}

void sub_10018B918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001A9410;
  v12[3] = &unk_100225540;
  v11 = _Block_copy(v12);

  [a1 recordImpressionWithAdvertisedItemID:a6 intakeRequestData:isa reply:v11];
  _Block_release(v11);
}

uint64_t ImpressionIntakeRequest.processReengagement(advertisedItemID:reengagementURL:)(uint64_t a1)
{
  v2 = v1;
  if (qword_10023E5B0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v9 = __chkstk_darwin(a1);
  v10 = v3;
  __chkstk_darwin(v9);
  v8[2] = sub_10018D5A0;
  v8[3] = v4;
  return sub_100189508(v2, sub_100188BBC, v8, v5);
}

void sub_10018BB00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = aBlock - v14;
  v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014B50(a7, v15, &qword_10023C230, &qword_1001B4FB0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v20 = 0;
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    URL._bridgeToObjectiveC()(v19);
    v20 = v21;
    (*(v18 + 8))(v15, v17);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A9410;
  aBlock[3] = &unk_1002254C8;
  v22 = _Block_copy(aBlock);

  [a1 processReengagementWithAdvertisedItemID:a6 intakeRequestData:v16.super.isa reengagementURL:v20 reply:v22];
  _Block_release(v22);
}

uint64_t sub_10018BCF4()
{
  v1 = 0x7463617265746E69;
  if (*v0 != 1)
  {
    v1 = 0x7542746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4A746361706D6F63;
  }
}

uint64_t sub_10018BD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018D650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018BD94(uint64_t a1)
{
  v2 = sub_10018D5A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018BDD0(uint64_t a1)
{
  v2 = sub_10018D5A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ImpressionIntakeRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023E988, &qword_1001C5060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10018D5A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16[14] = *(v3 + 16);
    v16[13] = 1;
    sub_10018D5FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    v16[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double ImpressionIntakeRequest.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018D780(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_10018C010(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10018C078()
{
  v0 = type metadata accessor for PropertyListDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000CDE0(&qword_10023E488, &qword_1001C3E28);
  sub_10018DC00(&qword_10023E9D0, &qword_10023E488, &qword_1001C3E28);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (v6)
  {
    v3 = v5;
  }

  else
  {
    v3 = v5 & 1;
  }

  return v3 | (v6 << 8);
}

uint64_t sub_10018C2F0@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PropertyListDecoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10018DC00(&qword_10023E9D8, &qword_10023CF90, &unk_1001BF9B8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_10014AFF8(v11, v9, &qword_10023CF90, &unk_1001BF9B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v4 = *v9;
  }

  else
  {
    sub_10014AFF8(v9, v4, &qword_10023C230, &qword_1001B4FB0);
  }

  swift_storeEnumTagMultiPayload();
  return sub_10014AFF8(v4, v16, &qword_10023E798, &qword_1001C4380);
}

uint64_t sub_10018C6C0()
{
  v0 = type metadata accessor for PropertyListDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000CDE0(&qword_10023E4A0, &qword_1001C3EE0);
  sub_10018DC00(&qword_10023E9E0, &qword_10023E4A0, &qword_1001C3EE0);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (v6)
  {
    v3 = v5;
  }

  else
  {
    v3 = v5 & 1;
  }

  return v3 | (v6 << 8);
}

uint64_t sub_10018C938@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PropertyListDecoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000CDE0(&qword_10023E4B0, &qword_1001C3FD8);
  sub_10018DC00(&qword_10023E9F8, &qword_10023E4B0, &qword_1001C3FD8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v6 = v8;
  v7 = v9;
  if (v10)
  {
    v6 = v8;
    v7 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_10018CBD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000CDE0(&qword_10023EA30, &qword_1001C5288);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000DAC0(v15, static Logger.xpc);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v7;
    v20 = v19;
    *v18 = 138543362;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "Error fetching synchronous remote object proxy: %{public}@", v18, 0xCu);
    sub_10000DAF8(v20, &qword_100239F10, &qword_1001B4FD0);
    v7 = v26;
  }

  *v14 = 3;
  swift_storeEnumTagMultiPayload();
  v22 = *(*a2 + 104);
  swift_beginAccess();
  sub_100014B50(a2 + v22, v9, &qword_10023EA30, &qword_1001C5288);
  v23 = (*(v11 + 48))(v9, 1, v10);
  result = sub_10000DAF8(v9, &qword_10023EA30, &qword_1001C5288);
  if (v23 == 1)
  {
    sub_10014AFF8(v14, v7, &qword_10023E798, &qword_1001C4380);
    (*(v11 + 56))(v7, 0, 1, v10);
    swift_beginAccess();
    sub_10018DE94(v7, a2 + v22);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018CF3C(uint64_t a1, uint64_t a2)
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, static Logger.xpc);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching synchronous remote object proxy: %{public}@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  result = swift_beginAccess();
  if (*(a2 + 17) == 255)
  {
    *(a2 + 16) = 259;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018D0C0(uint64_t a1, uint64_t a2)
{
  if (qword_10023E548 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, static Logger.xpc);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching synchronous remote object proxy: %{public}@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  result = swift_beginAccess();
  if (*(a2 + 32) == 255)
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    *(a2 + 16) = xmmword_1001C5050;
    *(a2 + 32) = 1;
    return sub_10018DBE8(v10, v11, 255);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000CDE0(&qword_10023EA30, &qword_1001C5288);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v11 = sub_10000CDE0(&qword_10023E798, &qword_1001C4380);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19[-v14];
  sub_10018C2F0(&v19[-v14]);
  v16 = *(*a3 + 104);
  swift_beginAccess();
  sub_100014B50(a3 + v16, v10, &qword_10023EA30, &qword_1001C5288);
  v17 = (*(v12 + 48))(v10, 1, v11);
  result = sub_10000DAF8(v10, &qword_10023EA30, &qword_1001C5288);
  if (v17 == 1)
  {
    sub_10014AFF8(v15, v8, &qword_10023E798, &qword_1001C4380);
    (*(v12 + 56))(v8, 0, 1, v11);
    swift_beginAccess();
    sub_10018DE94(v8, a3 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018D494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10018C938(v10);
  v4 = v10[0];
  v5 = v10[1];
  v6 = v11;
  result = swift_beginAccess();
  if (*(a3 + 32) == 255)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    *(a3 + 16) = v4;
    *(a3 + 24) = v5;
    *(a3 + 32) = v6;
    sub_10018DBDC(v4, v5, v6);
    sub_10018DBE8(v8, v9, 255);
    return sub_10017DBBC(v4, v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018D53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10018C078();
  result = swift_beginAccess();
  if (*(a3 + 17) == 255)
  {
    *(a3 + 16) = v4 & 0x1FF;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10018D5A8()
{
  result = qword_10023E990;
  if (!qword_10023E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E990);
  }

  return result;
}

unint64_t sub_10018D5FC()
{
  result = qword_10023E998;
  if (!qword_10023E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E998);
  }

  return result;
}

uint64_t sub_10018D650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4A746361706D6F63 && a2 == 0xEA00000000005357;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7542746E65696C63 && a2 == 0xEE004449656C646ELL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10018D780@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023EA20, &qword_1001C5280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10018D5A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v25 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_10018DDDC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v24;
  v22 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000DB58(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

unint64_t sub_10018D9D0()
{
  result = qword_10023E9A0;
  if (!qword_10023E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9A0);
  }

  return result;
}

unint64_t sub_10018DA28()
{
  result = qword_10023E9A8;
  if (!qword_10023E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9A8);
  }

  return result;
}

unint64_t sub_10018DA80()
{
  result = qword_10023E9B0;
  if (!qword_10023E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9B0);
  }

  return result;
}

uint64_t sub_10018DAD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10018DAEC()
{
  result = qword_10023E9C8;
  if (!qword_10023E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9C8);
  }

  return result;
}

uint64_t sub_10018DB40()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10018DB80()
{
  result = qword_10023E9F0;
  if (!qword_10023E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023E9F0);
  }

  return result;
}

uint64_t sub_10018DBDC(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_10014C744(a1, a2);
  }

  return a1;
}

uint64_t sub_10018DBE8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10017DBBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10018DC00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018DC8C()
{
  result = qword_10023EA00;
  if (!qword_10023EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA00);
  }

  return result;
}

unint64_t sub_10018DCE0()
{
  result = qword_10023EA08;
  if (!qword_10023EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA08);
  }

  return result;
}

unint64_t sub_10018DD34()
{
  result = qword_10023EA10;
  if (!qword_10023EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA10);
  }

  return result;
}

unint64_t sub_10018DD88()
{
  result = qword_10023EA18;
  if (!qword_10023EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA18);
  }

  return result;
}

unint64_t sub_10018DDDC()
{
  result = qword_10023EA28;
  if (!qword_10023EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA28);
  }

  return result;
}

unint64_t sub_10018DE38()
{
  result = qword_10023EA48;
  if (!qword_10023EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA48);
  }

  return result;
}

uint64_t sub_10018DE94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023EA30, &qword_1001C5288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10018DFB0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1001A9410;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [v11 *a7];
  _Block_release(v13);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventRequest.submitConversionEvent(conversionEvent:)(AttributionKitCommon::BiomeEventRequest::ConversionEvent *conversionEvent)
{
  if (qword_10023E528 != -1)
  {
    v1 = conversionEvent;
    swift_once();
    conversionEvent = v1;
  }

  if (qword_10023FDA0)
  {
    sub_100189A6C(&conversionEvent->conversionID.value._countAndFlagsBits, sub_10018DF88);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventRequest.submitPurchaseEvent(purchaseEvent:)(AttributionKitCommon::BiomeEventRequest::PurchaseEvent *purchaseEvent)
{
  if (qword_10023E528 != -1)
  {
    v1 = purchaseEvent;
    swift_once();
    purchaseEvent = v1;
  }

  if (qword_10023FDA0)
  {
    sub_100189E44(purchaseEvent, sub_10018DF9C);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeEventRequest.clearBiome(clearEvent:)(Swift::String clearEvent)
{
  if (qword_10023E528 != -1)
  {
    countAndFlagsBits = clearEvent._countAndFlagsBits;
    swift_once();
    clearEvent._countAndFlagsBits = countAndFlagsBits;
  }

  if (qword_10023FDA0)
  {
    v2 = __chkstk_darwin(clearEvent._countAndFlagsBits);
    __chkstk_darwin(v2);
    sub_10018A20C(sub_1001889A0);
  }
}

void sub_10018E290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100225800;
  v9 = _Block_copy(v10);

  [a1 clearBiomeWithClearEvent:v8 reply:v9];
  _Block_release(v9);
}

void sub_10018E36C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_10018E290(a1, a2, a3, a4, a5);
}

uint64_t BiomeEventRequest.ConversionEvent.advertisedItemID.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t BiomeEventRequest.ConversionEvent.conversionType.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t BiomeEventRequest.ConversionEvent.publisherItemID.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t BiomeEventRequest.ConversionEvent.impressionDate.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t BiomeEventRequest.ConversionEvent.conversionDate.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

unint64_t sub_10018E470(unsigned __int8 a1)
{
  v1 = 0x69737265766E6F63;
  if (a1 > 4u)
  {
    if (a1 == 8)
    {
      v1 = 0x6973736572706D69;
    }

    if (a1 == 7)
    {
      v1 = 0x6F726665726F7473;
    }

    v4 = 0x656873696C627570;
    if (a1 != 5)
    {
      v4 = 0x6C7074656B72616DLL;
    }

    if (a1 <= 6u)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0x726F7774654E6461;
    if (a1 != 3)
    {
      v2 = 0x4449656372756F73;
    }

    if (a1 == 2)
    {
      v2 = 0x69737265766E6F63;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
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
}

uint64_t sub_10018E5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018F084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018E60C(uint64_t a1)
{
  v2 = sub_10018E928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018E648(uint64_t a1)
{
  v2 = sub_10018E928();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BiomeEventRequest.ConversionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EA50, &qword_1001C52B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10018E928();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v32[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v32[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v32[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v32[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = *(v3 + 16);
  v20 = *(v3 + 68);
  v32[11] = 4;
  v32[8] = v20;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = v3[9];
  v22 = *(v3 + 80);
  v32[7] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v23 = v3[11];
  v24 = v3[12];
  v32[6] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v25 = v3[13];
  v26 = v3[14];
  v32[5] = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v27 = v3[15];
  v28 = *(v3 + 128);
  v32[4] = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v30 = v3[17];
  v31 = *(v3 + 144);
  v32[3] = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10018E928()
{
  result = qword_10023EA58;
  if (!qword_10023EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA58);
  }

  return result;
}

double BiomeEventRequest.ConversionEvent.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018F3D4(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t BiomeEventRequest.PurchaseEvent.advertisedItemID.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t BiomeEventRequest.PurchaseEvent.inAppPurchaseType.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t BiomeEventRequest.PurchaseEvent.inAppPurchaseSubscriptionDuration.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t BiomeEventRequest.PurchaseEvent.purchaseDate.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

void __swiftcall BiomeEventRequest.PurchaseEvent.init(advertisedItemID:conversionID:storefrontID:amountCharged:inAppPurchaseType:inAppPurchaseSubscriptionDuration:purchaseDate:)(AttributionKitCommon::BiomeEventRequest::PurchaseEvent *__return_ptr retstr, Swift::UInt64_optional advertisedItemID, Swift::String_optional conversionID, Swift::String_optional storefrontID, Swift::Int64_optional amountCharged, Swift::Int_optional inAppPurchaseType, Swift::Int_optional inAppPurchaseSubscriptionDuration, Swift::Double_optional purchaseDate)
{
  retstr->advertisedItemID.value = advertisedItemID.value;
  retstr->advertisedItemID.is_nil = advertisedItemID.is_nil;
  retstr->conversionID = conversionID;
  retstr->storefrontID = storefrontID;
  retstr->amountCharged.value = amountCharged.value;
  retstr->amountCharged.is_nil = amountCharged.is_nil;
  *(&retstr->inAppPurchaseType.value + 7) = inAppPurchaseType.value;
  BYTE6(retstr->inAppPurchaseSubscriptionDuration.value) = inAppPurchaseType.is_nil;
  *(&retstr->purchaseDate.value + 5) = inAppPurchaseSubscriptionDuration.value;
  LOBYTE(retstr[1].advertisedItemID.value) = inAppPurchaseSubscriptionDuration.is_nil;
  *&retstr[1].advertisedItemID.is_nil = v8;
  LOBYTE(retstr[1].conversionID.value._countAndFlagsBits) = v9 & 1;
}

unint64_t sub_10018EAB4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x69737265766E6F63;
    if (v1 != 1)
    {
      v5 = 0x6F726665726F7473;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    if (v1 != 5)
    {
      v2 = 0x6573616863727570;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0x6843746E756F6D61;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10018EBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018F9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018EBE0(uint64_t a1)
{
  v2 = sub_10018F97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018EC1C(uint64_t a1)
{
  v2 = sub_10018F97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BiomeEventRequest.PurchaseEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023EA60, &qword_1001C52B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10018F97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v26[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v26[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v26[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[6];
  v18 = *(v3 + 56);
  v26[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = v3[8];
  v20 = *(v3 + 72);
  v26[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = v3[10];
  v22 = *(v3 + 88);
  v26[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v24 = v3[12];
  v25 = *(v3 + 104);
  v26[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

__n128 BiomeEventRequest.PurchaseEvent.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018FC34(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10018EEF8(uint64_t a1)
{
  v2 = sub_100190058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018EF34(uint64_t a1)
{
  v2 = sub_100190058();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BiomeEventRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023EA70, &qword_1001C52C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100190058();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10018F084(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x69737265766E6F63 && a2 == 0xEC00000044496E6FLL;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001001CE7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F7774654E6461 && a2 == 0xEB0000000044496BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xEF44496D65744972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xED00004449656361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEC0000004449746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEE00657461446E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657461446E6FLL)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_10018F3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_10000CDE0(&qword_10023EAC8, qword_1001C5740);
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v53);
  v8 = &v36 - v7;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10018E928();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v10 = v5;
  LOBYTE(v64[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v14 = v11;
  LOBYTE(v64[0]) = 1;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v86 = v15 & 1;
  LOBYTE(v64[0]) = 2;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v85 = v16 & 1;
  LOBYTE(v64[0]) = 3;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = v17;
  LOBYTE(v64[0]) = 4;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v87 = BYTE4(v18) & 1;
  LOBYTE(v64[0]) = 5;
  v48 = v18;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v84 = v19 & 1;
  LOBYTE(v64[0]) = 6;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v21;
  v42 = v20;
  LOBYTE(v64[0]) = 7;
  v44 = 0;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = v22;
  LOBYTE(v64[0]) = 8;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = 0;
  v83 = v23 & 1;
  v88 = 9;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = 0;
  v25 = v24;
  v27 = v26;
  (*(v10 + 8))(v8, v53);
  v82 = v27 & 1;
  v39 = v14;
  *&v54 = v14;
  *(&v54 + 1) = v13;
  *&v55 = v51;
  LODWORD(v53) = v86;
  BYTE8(v55) = v86;
  *&v56 = v50;
  LODWORD(v44) = v85;
  BYTE8(v56) = v85;
  *&v57 = v49;
  *(&v57 + 1) = v52;
  LODWORD(v58) = v48;
  v38 = v87;
  BYTE4(v58) = v87;
  v28 = v46;
  *(&v58 + 1) = v45;
  v37 = v84;
  LOBYTE(v59) = v84;
  v29 = v42;
  *(&v59 + 1) = v42;
  *&v60 = v46;
  v30 = v43;
  *(&v60 + 1) = v41;
  *&v61 = v43;
  *(&v61 + 1) = v40;
  HIDWORD(v36) = v83;
  LOBYTE(v62) = v83;
  *(&v62 + 1) = v25;
  v27 &= 1u;
  v63 = v27;
  sub_1000FECE8(&v54, v64);
  sub_10000DB58(a1);
  v64[0] = v39;
  v64[1] = v13;
  v64[2] = v51;
  v65 = v53;
  v66 = v50;
  v67 = v44;
  v68 = v49;
  v69 = v52;
  v70 = v48;
  v71 = v38;
  v72 = v45;
  v73 = v37;
  v74 = v29;
  v75 = v28;
  v76 = v41;
  v77 = v30;
  v78 = v40;
  v79 = BYTE4(v36);
  v80 = v25;
  v81 = v27;
  result = sub_1000FED44(v64);
  v32 = v61;
  *(a2 + 96) = v60;
  *(a2 + 112) = v32;
  *(a2 + 128) = v62;
  *(a2 + 144) = v63;
  v33 = v57;
  *(a2 + 32) = v56;
  *(a2 + 48) = v33;
  v34 = v59;
  *(a2 + 64) = v58;
  *(a2 + 80) = v34;
  v35 = v55;
  *a2 = v54;
  *(a2 + 16) = v35;
  return result;
}

unint64_t sub_10018F97C()
{
  result = qword_10023EA68;
  if (!qword_10023EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA68);
  }

  return result;
}

uint64_t sub_10018F9D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001001CE7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEC00000044496E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEC0000004449746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6843746E756F6D61 && a2 == 0xED00006465677261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001001CE7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001001CE7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10018FC34@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023EAC0, &qword_1001C5738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v46 = a1;
  sub_10000DA7C(a1, v10);
  sub_10018F97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v46);
  }

  v12 = v6;
  LOBYTE(v53) = 0;
  v13 = v5;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = v15 & 1;
  LOBYTE(v53) = 1;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  v44 = v16;
  LOBYTE(v53) = 2;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v20;
  v43 = v19;
  LOBYTE(v53) = 3;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v21 & 1;
  LOBYTE(v53) = 4;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v69 = v22 & 1;
  LOBYTE(v53) = 5;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v23 & 1;
  v72 = 6;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v25;
  v27 = *(v12 + 8);
  v39 = v24;
  v27(v9, v13);
  v28 = v26 & 1;
  v67 = v26 & 1;
  v38 = v14;
  *&v47 = v14;
  v37 = v71;
  BYTE8(v47) = v71;
  *&v48 = v44;
  *(&v48 + 1) = v18;
  *&v49 = v43;
  *(&v49 + 1) = v45;
  v29 = v41;
  *&v50 = v42;
  v36 = v70;
  BYTE8(v50) = v70;
  *&v51 = v41;
  LOBYTE(v13) = v69;
  BYTE8(v51) = v69;
  v30 = v40;
  *&v52[0] = v40;
  LOBYTE(v14) = v68;
  BYTE8(v52[0]) = v68;
  *&v52[1] = v39;
  BYTE8(v52[1]) = v28;
  sub_1000FEBE4(&v47, &v53);
  sub_10000DB58(v46);
  v53 = v38;
  v54 = v37;
  v55 = v44;
  v56 = v18;
  v57 = v43;
  v58 = v45;
  v59 = v42;
  v60 = v36;
  v61 = v29;
  v62 = v13;
  v63 = v30;
  v64 = v14;
  v65 = v39;
  v66 = v28;
  result = sub_1000FEC40(&v53);
  v32 = v52[0];
  a2[4] = v51;
  a2[5] = v32;
  *(a2 + 89) = *(v52 + 9);
  v33 = v48;
  *a2 = v47;
  a2[1] = v33;
  v34 = v50;
  a2[2] = v49;
  a2[3] = v34;
  return result;
}

unint64_t sub_100190058()
{
  result = qword_10023EA78;
  if (!qword_10023EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA78);
  }

  return result;
}

__n128 sub_1001900BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1001900F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10019014C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1001901D8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100190204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100190260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_100190314()
{
  result = qword_10023EA80;
  if (!qword_10023EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023EA80);
  }

  return result;
}