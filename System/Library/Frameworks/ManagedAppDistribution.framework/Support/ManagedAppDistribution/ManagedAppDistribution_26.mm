uint64_t sub_1003B3808()
{
  v1 = v0[12];
  v2 = sub_100542490(sub_1003BE4E8, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003AF0AC, 0, 0);
  }

  else
  {
    v4 = v2;
    v5 = v3;

    v6 = v0[1];

    return v6(v4, v5);
  }
}

uint64_t sub_1003B3900(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003B39C4, 0, 0);
}

uint64_t sub_1003B39C4()
{
  *(v0 + 64) = **(v0 + 32);
  *(v0 + 112) = *(sub_1001F0C48(&qword_1007812A0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return _swift_task_switch(sub_1003B3AA0, v2, v1);
}

uint64_t sub_1003B3AA0()
{
  sub_10053FA88(*(v0 + 32) + *(v0 + 112));
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B3B38, 0, 0);
}

uint64_t sub_1003B3B38()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_1003B3DD4, v3, v4);
}

uint64_t sub_1003B3BB8()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x5365736E6563694CLL, 0xEE00656761726F74, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *(v12 + 16) = *(v0 + 16);
  *(v12 + 32) = v11;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_1003B3DD4, v13, v14);
}

uint64_t sub_1003B3DD4()
{
  v1 = v0[12];
  v2 = sub_100544FAC(sub_1003BE4C8, v0[13]);
  if (v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v3;
    v7 = v2;

    v8 = v0[1];

    return v8(v7, v6 & 1);
  }
}

uint64_t sub_1003B3ECC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003B3F90, 0, 0);
}

uint64_t sub_1003B3F90()
{
  *(v0 + 64) = **(v0 + 32);
  *(v0 + 112) = *(sub_1001F0C48(&qword_1007812A0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return _swift_task_switch(sub_1003B406C, v2, v1);
}

uint64_t sub_1003B406C()
{
  sub_10053FA88(*(v0 + 32) + *(v0 + 112));
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B4104, 0, 0);
}

uint64_t sub_1003B4104()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_1003B43A0, v3, v4);
}

uint64_t sub_1003B4184()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x5365736E6563694CLL, 0xEE00656761726F74, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *(v12 + 16) = *(v0 + 16);
  *(v12 + 32) = v11;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_1003B43A0, v13, v14);
}

uint64_t sub_1003B43A0()
{
  v1 = v0[12];
  v2 = sub_100542490(sub_1003BE4A8, v0[13]);
  if (v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = v3;

    v8 = v0[1];

    return v8(v6, v7);
  }
}

uint64_t sub_1003B4498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B45B8, v8, v7);
}

uint64_t sub_1003B45B8()
{
  sub_10053E5C8();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B4644, 0, 0);
}

uint64_t sub_1003B4644()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B48D8, v2, v3);
}

uint64_t sub_1003B46C4()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000015, 0x80000001006CAB20, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B48D8, v12, v13);
}

uint64_t sub_1003B48D8()
{
  v1 = v0[13];
  sub_100545220(sub_1003BE490, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B49C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B4AE0, v8, v7);
}

uint64_t sub_1003B4AE0()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B4B6C, 0, 0);
}

uint64_t sub_1003B4B6C()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B4E00, v2, v3);
}

uint64_t sub_1003B4BEC()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B4E00, v12, v13);
}

uint64_t sub_1003B4E00()
{
  v1 = v0[13];
  sub_100545B20(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B4EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B5008, v8, v7);
}

uint64_t sub_1003B5008()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B5094, 0, 0);
}

uint64_t sub_1003B5094()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B5328, v2, v3);
}

uint64_t sub_1003B5114()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B5328, v12, v13);
}

uint64_t sub_1003B5328()
{
  v1 = v0[13];
  sub_100545E6C(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B5410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B5530, v8, v7);
}

uint64_t sub_1003B5530()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B55BC, 0, 0);
}

uint64_t sub_1003B55BC()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B5850, v2, v3);
}

uint64_t sub_1003B563C()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B5850, v12, v13);
}

uint64_t sub_1003B5850()
{
  v1 = v0[13];
  sub_1005461B8(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B5938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B5A58, v7, v6);
}

uint64_t sub_1003B5A58()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B5AE4, 0, 0);
}

uint64_t sub_1003B5AE4()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003B5D78, v2, v3);
}

uint64_t sub_1003B5B64()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003B5D78, v12, v13);
}

uint64_t sub_1003B5D78()
{
  v1 = v0[12];
  v2 = sub_100546504(sub_1003BE84C, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_1003B5E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B5F88, v7, v6);
}

uint64_t sub_1003B5F88()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B6014, 0, 0);
}

uint64_t sub_1003B6014()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003B62A8, v2, v3);
}

uint64_t sub_1003B6094()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003B62A8, v12, v13);
}

uint64_t sub_1003B62A8()
{
  v1 = v0[12];
  v2 = sub_100546C78(sub_1003BE864, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v4 = v2;
    v5 = v3;

    v6 = v0[1];

    return v6(v4, v5);
  }
}

uint64_t sub_1003B63A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B64C0, v7, v6);
}

uint64_t sub_1003B64C0()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B654C, 0, 0);
}

uint64_t sub_1003B654C()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003B67E0, v2, v3);
}

uint64_t sub_1003B65CC()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003B67E0, v12, v13);
}

uint64_t sub_1003B67E0()
{
  v1 = v0[12];
  v2 = sub_1005469FC(sub_1003BE84C, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_1003B68D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B69F0, v8, v7);
}

uint64_t sub_1003B69F0()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B6A7C, 0, 0);
}

uint64_t sub_1003B6A7C()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B6D10, v2, v3);
}

uint64_t sub_1003B6AFC()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B6D10, v12, v13);
}

uint64_t sub_1003B6D10()
{
  v1 = v0[13];
  sub_100546EE8(sub_1003BE324, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B6DF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003B6EBC, 0, 0);
}

uint64_t sub_1003B6EBC()
{
  *(v0 + 64) = **(v0 + 32);
  *(v0 + 112) = *(sub_1001F0C48(&qword_1007812A0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return _swift_task_switch(sub_1003B6F98, v2, v1);
}

uint64_t sub_1003B6F98()
{
  sub_10053FA88(*(v0 + 32) + *(v0 + 112));
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B7030, 0, 0);
}

uint64_t sub_1003B7030()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_1003B72CC, v3, v4);
}

uint64_t sub_1003B70B0()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x5365736E6563694CLL, 0xEE00656761726F74, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *(v12 + 16) = *(v0 + 16);
  *(v12 + 32) = v11;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_1003B72CC, v13, v14);
}

uint64_t sub_1003B72CC()
{
  v1 = v0[12];
  v2 = sub_100547178(sub_1003BE528, v0[13]);

  v4 = v0[1];
  if (!v1)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_1003B7380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B74A0, v7, v6);
}

uint64_t sub_1003B74A0()
{
  sub_100540550();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B752C, 0, 0);
}

uint64_t sub_1003B752C()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003B77C8, v2, v3);
}

uint64_t sub_1003B75AC()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x7453657275636553, 0xED0000656761726FLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003B77C8, v12, v13);
}

uint64_t sub_1003B77C8()
{
  v1 = v0[12];
  v2 = sub_1005473F4(sub_1003BE430, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003AF0AC, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_1003B78B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B79D8, v8, v7);
}

uint64_t sub_1003B79D8()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B7A64, 0, 0);
}

uint64_t sub_1003B7A64()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B7CF8, v2, v3);
}

uint64_t sub_1003B7AE4()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B7CF8, v12, v13);
}

uint64_t sub_1003B7CF8()
{
  v1 = v0[13];
  sub_1005478D8(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B7DE0(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LicenseStorageDatabaseTransaction(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_1001F0C48(&qword_1007812A0) + 36);
  v12 = *(v8 + 28);
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 16))(&v10[v12], a4 + v11, v13);
  *v10 = a1;
  v14 = a1;
  a2(v10);
  return sub_1003BDBD4(v10, type metadata accessor for LicenseStorageDatabaseTransaction);
}

uint64_t sub_1003B7F18(char a1)
{
  *(v2 + 288) = v1;
  *(v2 + 57) = a1;
  *(v2 + 296) = type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
  *(v2 + 304) = swift_task_alloc();
  v3 = type metadata accessor for URL();
  *(v2 + 312) = v3;
  *(v2 + 320) = *(v3 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = type metadata accessor for ConfigurationBag(0);
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = type metadata accessor for ADPNewLicenseTask(0);
  *(v2 + 392) = swift_task_alloc();
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  *(v2 + 432) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v2 + 440) = v4;
  *(v2 + 448) = *(v4 - 8);
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = swift_task_alloc();
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();

  return _swift_task_switch(sub_1003B8194, 0, 0);
}

uint64_t sub_1003B8194()
{
  v72 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 288);
  static Logger.ald.getter();
  sub_1003BDB6C(v3, v1, type metadata accessor for ADPNewLicenseTask);
  sub_1003BDB6C(v3, v2, type metadata accessor for ADPNewLicenseTask);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 520);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);
  v10 = *(v0 + 424);
  v11 = *(v0 + 432);
  if (v6)
  {
    v12 = *(v0 + 384);
    v69 = *(v0 + 440);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v71 = v66;
    *v13 = 138412546;
    v15 = *(v11 + *(v12 + 24));
    sub_1003BDBD4(v11, type metadata accessor for ADPNewLicenseTask);
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2080;
    v16 = *(v10 + 56);
    v17 = *(v10 + 64);

    sub_1003BDBD4(v10, type metadata accessor for ADPNewLicenseTask);
    v18 = sub_1002346CC(v16, v17, &v71);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Fetching license for %s", v13, 0x16u);
    sub_1000032A8(v14, &qword_10077F920);

    sub_10000710C(v66);

    v19 = *(v9 + 8);
    v19(v7, v69);
  }

  else
  {

    sub_1003BDBD4(v10, type metadata accessor for ADPNewLicenseTask);
    sub_1003BDBD4(v11, type metadata accessor for ADPNewLicenseTask);
    v19 = *(v9 + 8);
    v19(v7, v8);
  }

  sub_10020A980(*(v0 + 288), v0 + 112);
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 240);
    v70 = *(v0 + 232);
LABEL_8:
    v68 = v20;
    *(v0 + 528) = v20;
    v22 = *(v0 + 416);
    v23 = *(v0 + 288);
    static Logger.ald.getter();
    sub_1003BDB6C(v23, v22, type metadata accessor for ADPNewLicenseTask);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 416);
    if (v26)
    {
      v28 = *(v0 + 384);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = *(v27 + *(v28 + 24));
      sub_1003BDBD4(v27, type metadata accessor for ADPNewLicenseTask);
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] Fetching configuration bag", v29, 0xCu);
      sub_1000032A8(v30, &qword_10077F920);
    }

    else
    {

      sub_1003BDBD4(v27, type metadata accessor for ADPNewLicenseTask);
    }

    v32 = *(v0 + 384);
    v33 = *(v0 + 288);
    v19(*(v0 + 512), *(v0 + 440));
    v34 = type metadata accessor for DecoratedHTTP();
    sub_10020A980(v33, v0 + 152);
    v35 = *(v33 + 48);
    v67 = *(v33 + 40);
    v65 = *(v33 + v32[5]);
    v36 = *(v33 + v32[6]);
    *(v0 + 536) = v36;
    v37 = v32[7];
    *(v0 + 60) = v37;
    v38 = *(v33 + v37 + 24);
    v39 = *(v33 + v37 + 40);
    v40 = sub_100006D8C((v33 + v37), v38);
    v41 = objc_opt_self();

    v42 = v36;
    v43 = [v41 ephemeralSessionConfiguration];
    [v43 setHTTPShouldSetCookies:0];
    [v43 setHTTPCookieAcceptPolicy:1];
    [v43 setRequestCachePolicy:1];
    sub_10043D15C(1);
    v44 = [objc_opt_self() sessionWithConfiguration:v43];

    type metadata accessor for PlainHTTP();
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    *(v45 + 16) = v44;
    v46 = *(v38 - 8);
    v47 = swift_task_alloc();
    (*(v46 + 16))(v47, v40, v38);
    v48 = sub_10038E7B4(v45, v0 + 152, v67, v35, v65, v42, v47, v34, v38, v39);
    *(v0 + 544) = v48;

    *(v0 + 216) = v34;
    *(v0 + 224) = &off_100762548;
    *(v0 + 192) = v48;

    v49 = swift_task_alloc();
    *(v0 + 552) = v49;
    *v49 = v0;
    v49[1] = sub_1003B8B44;
    v50 = *(v0 + 376);

    return sub_1003936EC(v50, v70, v68, v0 + 192, v42);
  }

  type metadata accessor for NewLicenseBatch(0);
  v21 = sub_1005D6710();
  if (v20)
  {
    v70 = v21;
    goto LABEL_8;
  }

  v52 = *(v0 + 392);
  v53 = *(v0 + 288);
  static Logger.ald.getter();
  sub_1003BDB6C(v53, v52, type metadata accessor for ADPNewLicenseTask);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 392);
  if (v56)
  {
    v58 = *(v0 + 384);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    v61 = *(v57 + *(v58 + 24));
    sub_1003BDBD4(v57, type metadata accessor for ADPNewLicenseTask);
    *(v59 + 4) = v61;
    *v60 = v61;
    _os_log_impl(&_mh_execute_header, v54, v55, "[%@] Unable to fetch configuration bag", v59, 0xCu);
    sub_1000032A8(v60, &qword_10077F920);
  }

  else
  {

    sub_1003BDBD4(v57, type metadata accessor for ADPNewLicenseTask);
  }

  v19(*(v0 + 456), *(v0 + 440));
  v62 = type metadata accessor for MarketplaceKitError();
  sub_1003BE2DC(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v62 - 8) + 104))(v63, enum case for MarketplaceKitError.invalidURL(_:), v62);
  swift_willThrow();

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1003B8B44()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1003BC654;
  }

  else
  {
    sub_10000710C(v2 + 192);
    v3 = sub_1003B8C70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003B8C70()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 288);
  static Logger.ald.getter();
  sub_1003BDB6C(v2, v1, type metadata accessor for ADPNewLicenseTask);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 408);
  if (v5)
  {
    v7 = *(v0 + 384);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v6 + *(v7 + 24));
    sub_1003BDBD4(v6, type metadata accessor for ADPNewLicenseTask);
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Fetching certificates", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  else
  {

    sub_1003BDBD4(v6, type metadata accessor for ADPNewLicenseTask);
  }

  v11 = *(v0 + 504);
  v12 = *(v0 + 440);
  v13 = *(v0 + 368);
  v14 = *(v0 + 360);
  v15 = *(v0 + 320);
  v40 = *(v0 + 312);
  v41 = *(v0 + 352);
  v16 = *(v0 + 304);
  v39 = *(v0 + 296);
  v17 = *(v0 + 288);
  v42 = *(v0 + 57);
  v18 = (v17 + *(v0 + 60));
  v19 = *(*(v0 + 448) + 8);
  *(v0 + 568) = v19;
  v19(v11, v12);
  v20 = *(v17 + *(type metadata accessor for NewLicenseBatch(0) + 36));
  v21 = *(*sub_100006D8C(v18, v18[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_certificateStore);
  *(v0 + 576) = v21;

  *(v0 + 280) = v20;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v0 + 584) = v22;
  *(v0 + 592) = v23;
  sub_1003940B0(v22, v23, v13);
  sub_1003BDB6C(v13 + *(v14 + 20), v16, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  sub_1003BDBD4(v13, type metadata accessor for ConfigurationBag);
  v24 = *(v39 + 28);
  v25 = *(v15 + 16);
  *(v0 + 600) = v25;
  *(v0 + 608) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v41, v16 + v24, v40);
  sub_1003BDBD4(v16, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  v26 = v17[3];
  *(v0 + 616) = v26;
  v27 = v17[4];
  *(v0 + 624) = v27;
  *(v0 + 632) = sub_100006D8C(v17, v26);
  v28 = *(v27 + 40);
  *(v0 + 640) = v28;
  *(v0 + 648) = (v27 + 40) & 0xFFFFFFFFFFFFLL | 0x80A6000000000000;
  v29 = v28(v26, v27);
  *(v0 + 656) = v29;
  *(v0 + 664) = v30;
  if (v42 == 1)
  {
    v31 = v29;
    v32 = v30;
    v33 = *(v0 + 352);
    v34 = swift_task_alloc();
    *(v0 + 672) = v34;
    *(v34 + 16) = v31;
    *(v34 + 24) = v32;
    *(v34 + 32) = v33;
    *(v34 + 40) = 0;
    v35 = swift_task_alloc();
    *(v0 + 680) = v35;
    *v35 = v0;
    v35[1] = sub_1003B9120;

    return sub_1003ADB28(v0 + 264, sub_1003BE804, v34, v21);
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 56) = -1;
    v37 = swift_task_alloc();
    *(v0 + 728) = v37;
    *v37 = v0;
    v37[1] = sub_1003B992C;
    v38 = *(v0 + 352);

    return sub_10038FFA4(v38, 0, v0 + 16, 0, 1);
  }
}

uint64_t sub_1003B9120()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_1003B9750;
  }

  else
  {
    v2 = sub_1003B9254;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003B9254()
{
  v44 = v0;
  v1 = *(v0 + 272);
  if (v1 >> 60 == 15)
  {
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v2 = v0 + 16;
    *(v0 + 56) = -1;
    v3 = swift_task_alloc();
    *(v0 + 728) = v3;
    *v3 = v0;
    v3[1] = sub_1003B992C;
    v4 = *(v0 + 352);
LABEL_11:

    return sub_10038FFA4(v4, 0, v2, 0, 1);
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 536);
  static Logger.ald.getter();
  v7 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 568);
  if (v10)
  {
    v12 = *(v0 + 536);
    v40 = *(v0 + 440);
    v42 = *(v0 + 496);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v5;
    v16 = swift_slowAlloc();
    v43 = v16;
    *v13 = 138412546;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2082;
    v17 = v12;
    *(v13 + 14) = sub_1002346CC(0x6974707972636E65, 0xEA00000000006E6FLL, &v43);
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Returning cached data for %{public}s certificate", v13, 0x16u);
    sub_1000032A8(v14, &qword_10077F920);

    sub_10000710C(v16);
    v5 = v15;

    v11(v42, v40);
  }

  else
  {
    v18 = *(v0 + 496);
    v19 = *(v0 + 440);

    v11(v18, v19);
  }

  *(v0 + 704) = v1;
  *(v0 + 696) = v5;
  v41 = *(v0 + 640);
  v39 = *(v0 + 624);
  v38 = *(v0 + 616);
  v20 = *(v0 + 600);
  v21 = *(v0 + 368);
  v22 = *(v0 + 360);
  v23 = *(v0 + 344);
  v25 = *(v0 + 304);
  v24 = *(v0 + 312);
  v26 = *(v0 + 296);
  v37 = *(v0 + 57);
  sub_1003940B0(*(v0 + 584), *(v0 + 592), v21);

  sub_1003BDB6C(v21 + *(v22 + 20), v25, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  sub_1003BDBD4(v21, type metadata accessor for ConfigurationBag);
  v20(v23, v25 + *(v26 + 24), v24);
  sub_1003BDBD4(v25, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  v27 = v41(v38, v39);
  *(v0 + 712) = v27;
  *(v0 + 720) = v28;
  if ((v37 & 1) == 0)
  {
    *(v0 + 96) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 64) = 0u;
    v2 = v0 + 64;
    *(v0 + 104) = -1;
    v36 = swift_task_alloc();
    *(v0 + 832) = v36;
    *v36 = v0;
    v36[1] = sub_1003BB0D4;
    v4 = *(v0 + 344);
    goto LABEL_11;
  }

  v29 = v27;
  v30 = v28;
  v31 = *(v0 + 344);
  v32 = swift_task_alloc();
  *(v0 + 792) = v32;
  *(v32 + 16) = v29;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  *(v32 + 40) = 1;
  v33 = swift_task_alloc();
  *(v0 + 800) = v33;
  *v33 = v0;
  v33[1] = sub_1003BA8BC;
  v34 = *(v0 + 576);

  return sub_1003ADB28(v0 + 248, sub_1003BE2A0, v32, v34);
}

uint64_t sub_1003B9750()
{

  v1 = v0[40];

  v2 = v0[47];
  (*(v1 + 8))(v0[44], v0[39]);

  sub_1003BDBD4(v2, type metadata accessor for ConfigurationBag);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003B992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[92] = a1;
  v5[93] = a2;
  v5[94] = a3;
  v5[95] = v3;

  sub_1000032A8((v5 + 2), &qword_100780BA8);
  if (v3)
  {
    v6 = sub_1003BA0C4;
  }

  else
  {
    v6 = sub_1003B9A64;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003B9A64()
{
  v57 = v0;
  if ([*(v0 + 752) statusCode] == 200)
  {
    v1 = *(v0 + 744);
    v2 = *(v0 + 736);
    v53 = *(v0 + 656);
    v3 = *(v0 + 352);
    v4 = swift_task_alloc();
    *(v0 + 768) = v4;
    *(v4 + 16) = v53;
    *(v4 + 32) = v3;
    *(v4 + 40) = 0;
    *(v4 + 48) = v2;
    *(v4 + 56) = v1;
    v5 = swift_task_alloc();
    *(v0 + 776) = v5;
    *v5 = v0;
    v5[1] = sub_1003BA2A0;
    v6 = *(v0 + 576);

    return sub_10052BA68(sub_1003BE260, v4, v6);
  }

  else
  {
    v8 = *(v0 + 752);
    v9 = *(v0 + 600);
    v10 = *(v0 + 536);
    v11 = *(v0 + 352);
    v12 = *(v0 + 336);
    v13 = *(v0 + 312);
    static Logger.ald.getter();
    v9(v12, v11, v13);
    v14 = v8;
    v15 = v10;
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 752);
    v21 = *(v0 + 568);
    if (v19)
    {
      v22 = *(v0 + 536);
      v51 = *(v0 + 568);
      v52 = *(v0 + 440);
      v54 = *(v0 + 488);
      v23 = *(v0 + 336);
      v24 = *(v0 + 320);
      v50 = *(v0 + 312);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v25 = 138413058;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2082;
      v27 = v22;
      *(v25 + 14) = sub_1002346CC(0x6974707972636E65, 0xEA00000000006E6FLL, &v55);
      *(v25 + 22) = 2082;
      v28 = URL.absoluteString.getter();
      v30 = v29;
      (*(v24 + 8))(v23, v50);
      v31 = sub_1002346CC(v28, v30, &v55);

      *(v25 + 24) = v31;
      *(v25 + 32) = 2050;
      v32 = [v20 statusCode];

      *(v25 + 34) = v32;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Invalid status code fetching %{public}s certificate from %{public}s: %{public}ld", v25, 0x2Au);
      sub_1000032A8(v26, &qword_10077F920);

      swift_arrayDestroy();

      v51(v54, v52);
    }

    else
    {
      v33 = *(v0 + 488);
      v34 = *(v0 + 440);
      v35 = *(v0 + 336);
      v36 = *(v0 + 312);
      v37 = *(v0 + 320);

      (*(v37 + 8))(v35, v36);
      v21(v33, v34);
    }

    v38 = *(v0 + 752);
    v39 = *(v0 + 744);
    v40 = *(v0 + 736);
    type metadata accessor for InternalError();
    sub_1003BE2DC(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v42 = v41;
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v55 = 0xD000000000000014;
    v56 = 0x80000001006CAAC0;
    v43._countAndFlagsBits = 0x6974707972636E65;
    v43._object = 0xEA00000000006E6FLL;
    String.append(_:)(v43);
    v44._countAndFlagsBits = 0x6966697472656320;
    v44._object = 0xEC00000065746163;
    String.append(_:)(v44);
    v45 = v55;
    v46 = v56;
    *v42 = 0x6863746566;
    v42[1] = 0xE500000000000000;
    v42[2] = v45;
    v42[3] = v46;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v40, v39);

    v47 = *(v0 + 320);

    v48 = *(v0 + 376);
    (*(v47 + 8))(*(v0 + 352), *(v0 + 312));

    sub_1003BDBD4(v48, type metadata accessor for ConfigurationBag);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_1003BA0C4()
{

  v1 = v0[40];

  v2 = v0[47];
  (*(v1 + 8))(v0[44], v0[39]);

  sub_1003BDBD4(v2, type metadata accessor for ConfigurationBag);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003BA2A0()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_1003BA6C0;
  }

  else
  {
    v2 = sub_1003BA3D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003BA3D4()
{

  *(v0 + 696) = *(v0 + 736);
  v22 = *(v0 + 640);
  v21 = *(v0 + 624);
  v20 = *(v0 + 616);
  v1 = *(v0 + 600);
  v2 = *(v0 + 368);
  v3 = *(v0 + 360);
  v4 = *(v0 + 344);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 296);
  v19 = *(v0 + 57);
  sub_1003940B0(*(v0 + 584), *(v0 + 592), v2);

  sub_1003BDB6C(v2 + *(v3 + 20), v6, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  sub_1003BDBD4(v2, type metadata accessor for ConfigurationBag);
  v1(v4, v6 + *(v7 + 24), v5);
  sub_1003BDBD4(v6, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  v8 = v22(v20, v21);
  *(v0 + 712) = v8;
  *(v0 + 720) = v9;
  if (v19 == 1)
  {
    v10 = v8;
    v11 = v9;
    v12 = *(v0 + 344);
    v13 = swift_task_alloc();
    *(v0 + 792) = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = v11;
    *(v13 + 32) = v12;
    *(v13 + 40) = 1;
    v14 = swift_task_alloc();
    *(v0 + 800) = v14;
    *v14 = v0;
    v14[1] = sub_1003BA8BC;
    v15 = *(v0 + 576);

    return sub_1003ADB28(v0 + 248, sub_1003BE2A0, v13, v15);
  }

  else
  {
    *(v0 + 96) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 104) = -1;
    v17 = swift_task_alloc();
    *(v0 + 832) = v17;
    *v17 = v0;
    v17[1] = sub_1003BB0D4;
    v18 = *(v0 + 344);

    return sub_10038FFA4(v18, 0, v0 + 64, 0, 1);
  }
}

uint64_t sub_1003BA6C0()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  sub_100007158(v2, v1);

  v3 = *(v0 + 320);

  v4 = *(v0 + 376);
  (*(v3 + 8))(*(v0 + 352), *(v0 + 312));

  sub_1003BDBD4(v4, type metadata accessor for ConfigurationBag);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003BA8BC()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_1003BAEDC;
  }

  else
  {
    v2 = sub_1003BA9F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003BA9F0()
{
  v46 = v0;
  v1 = *(v0 + 256);
  if (v1 >> 60 == 15)
  {
    *(v0 + 96) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 104) = -1;
    v2 = swift_task_alloc();
    *(v0 + 832) = v2;
    *v2 = v0;
    v2[1] = sub_1003BB0D4;
    v3 = *(v0 + 344);

    return sub_10038FFA4(v3, 0, v0 + 64, 0, 1);
  }

  else
  {
    v44 = *(v0 + 248);
    v5 = *(v0 + 536);
    static Logger.ald.getter();
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 568);
    if (v9)
    {
      v11 = *(v0 + 536);
      v42 = *(v0 + 440);
      v43 = *(v0 + 480);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v45 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v11;
      *v13 = v11;
      *(v12 + 12) = 2082;
      v15 = v11;
      *(v12 + 14) = sub_1002346CC(0x676E696E676973, 0xE700000000000000, &v45);
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Returning cached data for %{public}s certificate", v12, 0x16u);
      sub_1000032A8(v13, &qword_10077F920);

      sub_10000710C(v14);

      v16 = v42;
      v17 = v43;
    }

    else
    {
      v18 = *(v0 + 480);
      v19 = *(v0 + 440);

      v17 = v18;
      v16 = v19;
    }

    v10(v17, v16);

    *(v0 + 824) = v1;
    *(v0 + 816) = v44;
    v20 = *(v0 + 400);
    v22 = *(v0 + 344);
    v21 = *(v0 + 352);
    v24 = *(v0 + 312);
    v23 = *(v0 + 320);
    v25 = *(v0 + 288);

    v26 = *(v23 + 8);
    v26(v22, v24);
    v26(v21, v24);
    static Logger.ald.getter();
    sub_1003BDB6C(v25, v20, type metadata accessor for ADPNewLicenseTask);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 400);
    if (v29)
    {
      v31 = *(v0 + 384);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v30 + *(v31 + 24));
      sub_1003BDBD4(v30, type metadata accessor for ADPNewLicenseTask);
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%@] Fetching license", v32, 0xCu);
      sub_1000032A8(v33, &qword_10077F920);
    }

    else
    {

      sub_1003BDBD4(v30, type metadata accessor for ADPNewLicenseTask);
    }

    v35 = *(v0 + 704);
    v36 = *(v0 + 696);
    (*(v0 + 568))(*(v0 + 472), *(v0 + 440));
    sub_10020ABFC(v36, v35);
    sub_10020ABFC(v44, v1);
    v37 = swift_task_alloc();
    *(v0 + 896) = v37;
    *v37 = v0;
    v37[1] = sub_1003BC090;
    v38 = *(v0 + 704);
    v39 = *(v0 + 696);
    v40 = *(v0 + 544);
    v41 = *(v0 + 376);

    return sub_1003BC9E0(v40, v41, v39, v38, v44, v1);
  }
}

uint64_t sub_1003BAEDC()
{

  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[40];
  sub_100007158(v0[87], v0[88]);

  v4 = *(v3 + 8);
  v4(v1, v2);
  v5 = v0[47];
  v4(v0[44], v0[39]);

  sub_1003BDBD4(v5, type metadata accessor for ConfigurationBag);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003BB0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[105] = a1;
  v5[106] = a2;
  v5[107] = a3;
  v5[108] = v3;

  sub_1000032A8((v5 + 8), &qword_100780BA8);
  if (v3)
  {
    v6 = sub_1003BB89C;
  }

  else
  {
    v6 = sub_1003BB20C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003BB20C()
{
  v61 = v0;
  if ([*(v0 + 856) statusCode] == 200)
  {
    v1 = *(v0 + 848);
    v2 = *(v0 + 840);
    v57 = *(v0 + 712);
    v3 = *(v0 + 344);
    v4 = swift_task_alloc();
    *(v0 + 872) = v4;
    *(v4 + 16) = v57;
    *(v4 + 32) = v3;
    *(v4 + 40) = 1;
    *(v4 + 48) = v2;
    *(v4 + 56) = v1;
    v5 = swift_task_alloc();
    *(v0 + 880) = v5;
    *v5 = v0;
    v5[1] = sub_1003BBA94;
    v6 = *(v0 + 576);

    return sub_10052BA68(sub_1003BE7EC, v4, v6);
  }

  else
  {
    v8 = *(v0 + 856);
    v9 = *(v0 + 600);
    v10 = *(v0 + 536);
    v11 = *(v0 + 344);
    v12 = *(v0 + 328);
    v13 = *(v0 + 312);
    static Logger.ald.getter();
    v9(v12, v11, v13);
    v14 = v8;
    v15 = v10;
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 856);
    v58 = *(v0 + 568);
    if (v19)
    {
      v21 = *(v0 + 536);
      v55 = *(v0 + 440);
      v56 = *(v0 + 464);
      v23 = *(v0 + 320);
      v22 = *(v0 + 328);
      v54 = *(v0 + 312);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v24 = 138413058;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2082;
      v26 = v21;
      *(v24 + 14) = sub_1002346CC(0x676E696E676973, 0xE700000000000000, &v59);
      *(v24 + 22) = 2082;
      v27 = URL.absoluteString.getter();
      v29 = v28;
      (*(v23 + 8))(v22, v54);
      v30 = sub_1002346CC(v27, v29, &v59);

      *(v24 + 24) = v30;
      *(v24 + 32) = 2050;
      v31 = [v20 statusCode];

      *(v24 + 34) = v31;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Invalid status code fetching %{public}s certificate from %{public}s: %{public}ld", v24, 0x2Au);
      sub_1000032A8(v25, &qword_10077F920);

      swift_arrayDestroy();

      v32 = v55;
      v33 = v56;
    }

    else
    {
      v34 = *(v0 + 464);
      v35 = *(v0 + 440);
      v37 = *(v0 + 320);
      v36 = *(v0 + 328);
      v38 = *(v0 + 312);

      (*(v37 + 8))(v36, v38);
      v33 = v34;
      v32 = v35;
    }

    v58(v33, v32);
    v39 = *(v0 + 856);
    v40 = *(v0 + 848);
    v41 = *(v0 + 840);
    type metadata accessor for InternalError();
    sub_1003BE2DC(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v43 = v42;
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v59 = 0xD000000000000014;
    v60 = 0x80000001006CAAC0;
    v44._countAndFlagsBits = 0x676E696E676973;
    v44._object = 0xE700000000000000;
    String.append(_:)(v44);
    v45._countAndFlagsBits = 0x6966697472656320;
    v45._object = 0xEC00000065746163;
    String.append(_:)(v45);
    v46 = v59;
    v47 = v60;
    *v43 = 0x6863746566;
    v43[1] = 0xE500000000000000;
    v43[2] = v46;
    v43[3] = v47;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v41, v40);

    v48 = *(v0 + 344);
    v49 = *(v0 + 312);
    v50 = *(v0 + 320);
    sub_100007158(*(v0 + 696), *(v0 + 704));

    v51 = *(v50 + 8);
    v51(v48, v49);
    v52 = *(v0 + 376);
    v51(*(v0 + 352), *(v0 + 312));

    sub_1003BDBD4(v52, type metadata accessor for ConfigurationBag);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_1003BB89C()
{

  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[40];
  sub_100007158(v0[87], v0[88]);

  v4 = *(v3 + 8);
  v4(v1, v2);
  v5 = v0[47];
  v4(v0[44], v0[39]);

  sub_1003BDBD4(v5, type metadata accessor for ConfigurationBag);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003BBA94()
{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = sub_1003BBE78;
  }

  else
  {
    v2 = sub_1003BBBC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003BBBC8()
{

  v1 = *(v0 + 840);
  v25 = *(v0 + 848);
  *(v0 + 824) = v25;
  *(v0 + 816) = v1;
  v2 = *(v0 + 400);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 288);

  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  static Logger.ald.getter();
  sub_1003BDB6C(v7, v2, type metadata accessor for ADPNewLicenseTask);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 400);
  if (v11)
  {
    v13 = *(v0 + 384);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = *(v12 + *(v13 + 24));
    sub_1003BDBD4(v12, type metadata accessor for ADPNewLicenseTask);
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Fetching license", v14, 0xCu);
    sub_1000032A8(v15, &qword_10077F920);
  }

  else
  {

    sub_1003BDBD4(v12, type metadata accessor for ADPNewLicenseTask);
  }

  v17 = *(v0 + 704);
  v18 = *(v0 + 696);
  (*(v0 + 568))(*(v0 + 472), *(v0 + 440));
  sub_10020ABFC(v18, v17);
  sub_10020ABFC(v1, v25);
  v19 = swift_task_alloc();
  *(v0 + 896) = v19;
  *v19 = v0;
  v19[1] = sub_1003BC090;
  v20 = *(v0 + 704);
  v21 = *(v0 + 696);
  v22 = *(v0 + 544);
  v23 = *(v0 + 376);

  return sub_1003BC9E0(v22, v23, v21, v20, v1, v25);
}

uint64_t sub_1003BBE78()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);

  sub_100007158(v2, v1);

  v3 = *(v0 + 344);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  sub_100007158(*(v0 + 696), *(v0 + 704));

  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = *(v0 + 376);
  v6(*(v0 + 352), *(v0 + 312));

  sub_1003BDBD4(v7, type metadata accessor for ConfigurationBag);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003BC090(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[113] = a1;
  v6[114] = a2;
  *(v6 + 27) = a3;
  v6[115] = v3;

  v7 = v5[88];
  v8 = v5[87];
  sub_100007158(v5[102], v5[103]);
  sub_100007158(v8, v7);
  if (v3)
  {
    v9 = sub_1003BC7DC;
  }

  else
  {
    v9 = sub_1003BC220;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1003BC220()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 288);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  sub_10020ABFC(*(v0 + 696), *(v0 + 704));
  sub_10020ABFC(v2, v1);
  if (qword_10077E580 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 920);
  v7 = sub_1005F43D0(*(v0 + 696), *(v0 + 704), *(v0 + 816), *(v0 + 824), *(v0 + 904), *(v0 + 912), *(v0 + 108), v4, v5, *(v0 + 536));
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);
  v10 = *(v0 + 824);
  v11 = *(v0 + 816);
  v12 = *(v0 + 704);
  v13 = *(v0 + 696);
  if (v6)
  {
    v14 = *(v0 + 376);

    sub_100007158(v13, v12);
    sub_100007158(v11, v10);
    sub_100007158(v9, v8);
    sub_100007158(v11, v10);
    sub_100007158(v13, v12);
    sub_1003BDBD4(v14, type metadata accessor for ConfigurationBag);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 376);
    v19 = v7;

    sub_100007158(v13, v12);
    sub_100007158(v11, v10);
    sub_100007158(v9, v8);
    sub_100007158(v11, v10);
    sub_100007158(v13, v12);
    sub_1003BDBD4(v17, type metadata accessor for ConfigurationBag);

    v18 = *(v0 + 8);

    return v18(v19);
  }
}

uint64_t sub_1003BC654()
{

  sub_10000710C(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BC7DC()
{
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[47];
  sub_100007158(v0[87], v0[88]);
  sub_100007158(v2, v1);

  sub_1003BDBD4(v3, type metadata accessor for ConfigurationBag);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003BC9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[50] = a6;
  v7[51] = v6;
  v7[48] = a4;
  v7[49] = a5;
  v7[46] = a2;
  v7[47] = a3;
  v7[45] = a1;
  type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
  v7[52] = swift_task_alloc();
  v7[53] = type metadata accessor for ConfigurationBag(0);
  v7[54] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[55] = v8;
  v7[56] = *(v8 - 8);
  v7[57] = swift_task_alloc();
  v7[58] = type metadata accessor for ADPNewLicenseTask(0);
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v7[61] = v9;
  v7[62] = *(v9 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();

  return _swift_task_switch(sub_1003BCBD8, 0, 0);
}

uint64_t sub_1003BCBD8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 408);
  static Logger.ald.getter();
  sub_1003BDB6C(v2, v1, type metadata accessor for ADPNewLicenseTask);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 480);
  if (v5)
  {
    v7 = *(v0 + 464);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v6 + *(v7 + 24));
    sub_1003BDBD4(v6, type metadata accessor for ADPNewLicenseTask);
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Fetching dynamic license", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  else
  {

    sub_1003BDBD4(v6, type metadata accessor for ADPNewLicenseTask);
  }

  v11 = *(v0 + 408);
  (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));
  sub_1001F0C48(&qword_100781460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  v13 = type metadata accessor for NewLicenseBatch(0);
  v14 = *(v11 + *(v13 + 36));
  *(inited + 32) = v14;
  if (qword_10077E580 != -1)
  {
    swift_once();
  }

  sub_1005F4004(inited, 0, *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400));
  *(v0 + 212) = v41;
  v36 = *(v0 + 456);
  v34 = *(v0 + 448);
  v35 = *(v0 + 440);
  v32 = *(v0 + 424);
  v15 = *(v0 + 408);
  v33 = *(v0 + 416);
  v31 = *(v0 + 432);
  swift_setDeallocating();
  v16 = *(v15 + 64);
  v29 = *(v15 + *(v13 + 40));
  v30 = *(v15 + 56);
  sub_1001F0C48(&qword_100783000);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_10069E680;
  *(v0 + 328) = v14;

  *(v17 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v17 + 40) = v18;
  sub_1001F0C48(&qword_10077E988);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10069F6E0;
  strcpy((v19 + 32), "appleVersionId");
  *(v19 + 47) = -18;
  *(v0 + 336) = v29;
  *(v19 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v19 + 56) = v20;
  strcpy((v19 + 64), "assetPublicId");
  *(v19 + 78) = -4864;
  *(v19 + 80) = v30;
  *(v19 + 88) = v16;
  v21 = sub_1005288C8(v19);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100784360);
  swift_arrayDestroy();
  *(v17 + 48) = v21;
  v22 = sub_100528BFC(v17);
  swift_setDeallocating();
  sub_1000032A8(v17 + 32, &qword_100783008);
  *(v0 + 344) = v14;
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1003940B0(v23, v24, v31);

  sub_1003BDB6C(v31 + *(v32 + 20), v33, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  sub_1003BDBD4(v31, type metadata accessor for ConfigurationBag);
  (*(v34 + 16))(v36, v33, v35);
  sub_1003BDBD4(v33, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  *(v0 + 192) = &type metadata for NewLicenseRequest;
  *(v0 + 200) = sub_1003BE388();
  v25 = swift_allocObject();
  *(v0 + 168) = v25;
  *(v25 + 16) = v37;
  *(v25 + 24) = v38;
  *(v25 + 32) = v39;
  *(v25 + 40) = v40;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 64) = v22;
  *(v0 + 208) = 0;
  sub_100391884(v0 + 168, v0 + 216);
  v26 = swift_task_alloc();
  *(v0 + 520) = v26;
  *v26 = v0;
  v26[1] = sub_1003BD240;
  v27 = *(v0 + 456);

  return sub_10038FFA4(v27, 1, v0 + 216, 0, 1);
}

uint64_t sub_1003BD240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[66] = a1;
  v5[67] = a2;
  v5[68] = a3;
  v5[69] = v3;

  sub_1000032A8((v5 + 27), &qword_100780BA8);
  if (v3)
  {
    v6 = sub_1003BDA64;
  }

  else
  {
    sub_1003918E0((v5 + 21));
    v6 = sub_1003BD3BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003BD3BC()
{
  v50 = v0;
  if ([*(v0 + 544) statusCode] != 200)
  {
    v5 = *(v0 + 544);
    v6 = *(v0 + 536);
    v7 = *(v0 + 528);
    v9 = *(v0 + 448);
    v8 = *(v0 + 456);
    v10 = *(v0 + 440);
    v11 = type metadata accessor for MarketplaceKitError();
    sub_1003BE2DC(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for MarketplaceKitError.invalidLicense(_:), v11);
    swift_willThrow();

    sub_100007158(v7, v6);
    (*(v9 + 8))(v8, v10);
    goto LABEL_5;
  }

  v1 = *(v0 + 552);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1003BE3DC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = *(v0 + 544);
    v3 = *(v0 + 536);
    v4 = *(v0 + 528);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));

    sub_100007158(v4, v3);
LABEL_5:

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 320);
  if (v15)
  {
    v16 = *(v0 + 472);
    v17 = *(v0 + 408);

    static Logger.ald.getter();
    sub_1003BDB6C(v17, v16, type metadata accessor for ADPNewLicenseTask);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 496);
    v22 = *(v0 + 504);
    v23 = *(v0 + 488);
    v24 = *(v0 + 472);
    if (v20)
    {
      v25 = *(v0 + 464);
      v48 = *(v0 + 488);
      v26 = swift_slowAlloc();
      v47 = v22;
      v27 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v26 = 138412546;
      v28 = *(v24 + *(v25 + 24));
      sub_1003BDBD4(v24, type metadata accessor for ADPNewLicenseTask);
      *(v26 + 4) = v28;
      *v27 = v28;
      *(v26 + 12) = 2082;
      *(v0 + 352) = v15;
      sub_1001F0C48(&unk_10077FB40);
      sub_1001F766C();
      v29 = BidirectionalCollection<>.joined(separator:)();
      v31 = v30;

      v32 = sub_1002346CC(v29, v31, &v49);

      *(v26 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] License unavailable for %{public}s", v26, 0x16u);
      sub_1000032A8(v27, &qword_10077F920);

      sub_10000710C(v46);

      (*(v21 + 8))(v47, v48);
    }

    else
    {

      sub_1003BDBD4(v24, type metadata accessor for ADPNewLicenseTask);
      (*(v21 + 8))(v22, v23);
    }
  }

  v33 = Data.init(base64Encoded:options:)();
  v35 = v34;

  v36 = *(v0 + 544);
  v37 = *(v0 + 536);
  v38 = *(v0 + 528);
  if (v35 >> 60 == 15)
  {
    v40 = *(v0 + 448);
    v39 = *(v0 + 456);
    v41 = *(v0 + 440);
    v42 = type metadata accessor for MarketplaceKitError();
    sub_1003BE2DC(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for MarketplaceKitError.invalidLicense(_:), v42);
    swift_willThrow();

    sub_100007158(v38, v37);
    (*(v40 + 8))(v39, v41);
    goto LABEL_5;
  }

  (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));

  sub_100007158(v38, v37);

  v44 = *(v0 + 8);
  v45 = *(v0 + 212);

  return v44(v33, v35, v45);
}

uint64_t sub_1003BDA64()
{
  (*(v0[56] + 8))(v0[57], v0[55]);
  sub_1003918E0((v0 + 21));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003BDB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003BDBD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003BDC34(void *a1, void (*a2)(void **))
{
  v4 = a1;
  v3 = a1;
  a2(&v4);
}

void sub_1003BDC9C(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void **)@<X1>, uint64_t a3@<X8>)
{
  v10 = a1;
  v6 = a1;
  a2(&v8, &v10);

  if (!v3)
  {
    v7 = v9;
    *a3 = v8;
    *(a3 + 8) = v7;
  }
}

void sub_1003BDD1C(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void **)@<X1>, void *a3@<X8>)
{
  v7 = a1;
  v6 = a1;
  a2(&v8, &v7);

  if (!v3)
  {
    *a3 = v8;
  }
}

void sub_1003BDD94(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void **)@<X1>, _BYTE *a3@<X8>)
{
  v7 = a1;
  v6 = a1;
  a2(&v8, &v7);

  if (!v3)
  {
    *a3 = v8;
  }
}

double sub_1003BDE0C@<D0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr, char *)@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v9 = type metadata accessor for LicenseStorageDatabaseTransaction(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(sub_1001F0C48(&qword_1007812A0) + 36);
  v14 = *(v10 + 28);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(&v12[v14], a3 + v13, v15);
  *v12 = a1;
  v16 = a1;
  a2(&v18, v12);
  sub_1003BDBD4(v12, type metadata accessor for LicenseStorageDatabaseTransaction);
  if (!v4)
  {
    result = *&v18;
    *a4 = v18;
  }

  return result;
}

uint64_t sub_1003BDF54@<X0>(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for LicenseStorageDatabaseTransaction(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(sub_1001F0C48(&qword_1007812A0) + 36);
  v14 = *(v10 + 28);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(&v12[v14], a3 + v13, v15);
  *v12 = a1;
  v16 = a1;
  a2(&v19, v12);
  result = sub_1003BDBD4(v12, type metadata accessor for LicenseStorageDatabaseTransaction);
  if (!v4)
  {
    v18 = v20;
    *a4 = v19;
    *(a4 + 8) = v18;
  }

  return result;
}

double sub_1003BE0A4@<D0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr, void **)@<X1>, _OWORD *a3@<X8>)
{
  v9 = a1;
  v6 = a1;
  a2(&v8, &v9);

  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1003BE11C@<X0>(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v9 = type metadata accessor for LicenseStorageDatabaseTransaction(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(sub_1001F0C48(&qword_1007812A0) + 36);
  v14 = *(v10 + 28);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(&v12[v14], a3 + v13, v15);
  *v12 = a1;
  v16 = a1;
  a2(&v19, v12);
  result = sub_1003BDBD4(v12, type metadata accessor for LicenseStorageDatabaseTransaction);
  if (!v4)
  {
    *a4 = v19;
  }

  return result;
}

uint64_t sub_1003BE2DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003BE324(void *a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  v3 = a1;
  v2(&v4);
}

unint64_t sub_1003BE388()
{
  result = qword_100783010;
  if (!qword_100783010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783010);
  }

  return result;
}

unint64_t sub_1003BE3DC()
{
  result = qword_100783018;
  if (!qword_100783018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783018);
  }

  return result;
}

uint64_t sub_1003BE570()
{
  result = sub_1003BE64C(319, &qword_1007822B0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      result = sub_1003BE64C(319, &unk_100783088);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003BE64C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1003BE6D0()
{
  result = type metadata accessor for NewLicenseBatch(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LogKey();
    if (v2 <= 0x3F)
    {
      result = sub_1003BE774();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1003BE774()
{
  result = qword_100783138;
  if (!qword_100783138)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100783138);
  }

  return result;
}

void sub_1003BE894(void **a1, uint64_t a2)
{
  v5 = 0;
  v6 = *(a2 + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(type metadata accessor for IdentifiableAvailableUpdate(0) - 8);
    sub_100389464((a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++), *a1);
  }

  while (!v2);
}

uint64_t sub_1003BE954(uint64_t a1, void *a2)
{
  if (*(a1 + 16) == *a2 && *(a1 + 24) == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1003BE9AC(void *a1, uint64_t a2, uint64_t a3)
{
  v85 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v78 - v10;
  v12 = type metadata accessor for ApprovedDeveloper();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10061A948(v88);
  if (v89)
  {
    sub_1001F0C48(&qword_10077E970);
    if (swift_dynamicCast())
    {
      v83 = a3;
      v84 = v9;

      v16 = a1;
      v17 = [a1 iTunesMetadata];
      v18 = [v17 distributorInfo];

      v19 = [v18 developerID];
      if (v19)
      {
        v80 = v11;
        v81 = v16;
        v79 = v6;
        v82 = v5;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = 0;
        v24 = *(v85 + 16);
        v84 = (v13 + 16);
        v25 = (v13 + 8);
        while (v24 != v23)
        {
          (*(v13 + 16))(v15, v85 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v12);
          if (ApprovedDeveloper.identifier.getter() == v20 && v27 == v22)
          {

            (*v25)(v15, v12);
LABEL_10:

            sub_100005934(v83, &v86, &unk_10077FA50);
            if (!v87)
            {
              sub_1000032A8(&v86, &unk_10077FA50);
              v34 = 1;
              return v34 & 1;
            }

            sub_1001DFDBC(&v86, v88);
            sub_10061A948(&v86);
            v28 = v87;
            if (v87)
            {
              sub_100006D8C(&v86, v87);
              v29 = sub_10056D600(v28);
              v31 = v30;
              v33 = v32 & 1;
              sub_10000710C(&v86);
            }

            else
            {
              sub_1000032A8(&v86, &unk_10077FA50);
              v29 = 0;
              v31 = 0;
              v33 = 255;
            }

            v65 = v89;
            sub_100006D8C(v88, v89);
            v66 = sub_10056D600(v65);
            if (v33 == 255)
            {
              sub_1003C74F8();
            }

            else
            {
              if (v33)
              {
                if (v68)
                {
                  if (v29 == v66 && v31 == v67)
                  {
                    v34 = 1;
                  }

                  else
                  {
                    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  }

LABEL_50:
                  sub_1003C74F8();
                  sub_1003C7500(v29, v31, v33);
                  goto LABEL_51;
                }
              }

              else if ((v68 & 1) == 0)
              {
                if (v29 != v66 || v31 != v67)
                {
                  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  goto LABEL_50;
                }

                sub_1003C74F8();
                sub_1003C7500(v29, v31, v33);
                v34 = 1;
LABEL_51:
                sub_10000710C(v88);
                return v34 & 1;
              }

              sub_1003C74F8();
              sub_1003C7500(v29, v31, v33);
            }

            v34 = 0;
            goto LABEL_51;
          }

          ++v23;
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v25)(v15, v12);
          if (v26)
          {
            goto LABEL_10;
          }
        }

        v52 = v80;
        static Logger.updates.getter();
        v53 = v81;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = 0x6E776F6E6B6E55;
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v88[0] = swift_slowAlloc();
          *v57 = 138412802;
          v59 = sub_100625FA0();
          *(v57 + 4) = v59;
          *v58 = v59;
          *(v57 + 12) = 2082;
          v60 = [v53 bundleIdentifier];
          v61 = v82;
          if (v60)
          {
            v62 = v60;
            v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;
          }

          else
          {
            v64 = 0xE700000000000000;
          }

          v70 = sub_1002346CC(v56, v64, v88);

          *(v57 + 14) = v70;
          *(v57 + 22) = 2080;
          v71 = [v53 iTunesMetadata];
          v72 = [v71 distributorInfo];

          v73 = [v72 developerName];
          if (v73)
          {
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;
          }

          else
          {
            v76 = 0xE700000000000000;
            v74 = 0x6E776F6E6B6E55;
          }

          v77 = sub_1002346CC(v74, v76, v88);

          *(v57 + 24) = v77;
          sub_1000032A8(v58, &qword_10077F920);

          swift_arrayDestroy();

          (*(v79 + 8))(v80, v61);
        }

        else
        {

          (*(v79 + 8))(v52, v82);
        }
      }

      else
      {
        v36 = v84;
        static Logger.updates.getter();
        v37 = v16;
        v38 = v36;
        v39 = v37;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = v6;
          v82 = v5;
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v88[0] = v45;
          *v43 = 138412546;
          v46 = sub_100625FA0();
          *(v43 + 4) = v46;
          *v44 = v46;
          *(v43 + 12) = 2082;
          v47 = [v39 bundleIdentifier];
          if (v47)
          {
            v48 = v47;
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;
          }

          else
          {
            v49 = 0x6E776F6E6B6E55;
            v51 = 0xE700000000000000;
          }

          v69 = sub_1002346CC(v49, v51, v88);

          *(v43 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v40, v41, "[%@] Skipping update check for %{public}s because we don't have a developer for it", v43, 0x16u);
          sub_1000032A8(v44, &qword_10077F920);

          sub_10000710C(v45);

          (*(v42 + 8))(v38, v82);
        }

        else
        {

          (*(v6 + 8))(v38, v5);
        }
      }
    }
  }

  else
  {
    sub_1000032A8(v88, &unk_10077FA50);
  }

  v34 = 0;
  return v34 & 1;
}

Swift::Int sub_1003BF320()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003BF3A0()
{
  Hasher._combine(_:)(*(v0 + 16));
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1003BF410()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003BF48C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if ((a1[2] & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v8 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1003BF548(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 343) = a3;
  *(v6 + 648) = a2;
  *(v6 + 640) = a1;
  v10 = type metadata accessor for LogKey.Prefix();
  *(v6 + 656) = v10;
  *(v6 + 664) = *(v10 - 8);
  *(v6 + 672) = swift_task_alloc();
  v11 = type metadata accessor for IdentifiableAvailableUpdate(0);
  *(v6 + 680) = v11;
  *(v6 + 688) = *(v11 - 8);
  *(v6 + 696) = swift_task_alloc();
  v12 = type metadata accessor for AvailableUpdate(0);
  *(v6 + 704) = v12;
  *(v6 + 712) = *(v12 - 8);
  *(v6 + 720) = swift_task_alloc();
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v6 + 744) = v13;
  *(v6 + 752) = *(v13 - 8);
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  *(v6 + 800) = swift_task_alloc();
  *(v6 + 808) = swift_task_alloc();
  *(v6 + 480) = a5;
  *(v6 + 488) = a6;
  v14 = sub_10020A748((v6 + 456));
  (*(*(a5 - 8) + 16))(v14, a4, a5);

  return _swift_task_switch(sub_1003BF7D4, 0, 0);
}

uint64_t sub_1003BF7D4()
{
  v88 = v0;
  v1 = *(v0 + 640);
  v2 = *(v1 + 16);
  *(v0 + 816) = v2;
  if (v2)
  {
    *(v0 + 896) = enum case for LogKey.Prefix.undefined(_:);
    *(v0 + 840) = _swiftEmptyArrayStorage;
    *(v0 + 832) = _swiftEmptyArrayStorage;
    *(v0 + 824) = 0;
    sub_100231F70(v1 + 32, v0 + 344);
    static Logger.updates.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Sending installed versions:", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 792);
    v9 = *(v0 + 752);
    v10 = *(v0 + 744);

    v11 = *(v9 + 8);
    *(v0 + 848) = v11;
    *(v0 + 856) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81 = v11;
    result = v11(v8, v10);
    v13 = *(v0 + 400);
    *(v0 + 864) = v13;
    v80 = *(v13 + 16);
    if (v80)
    {
      v14 = 0;
      v78 = (v0 + 632);
      v15 = (v13 + 72);
      v70 = v0;
      v79 = v13;
      while (v14 < *(v13 + 16))
      {
        v18 = *(v15 - 4);
        v82 = *(v15 - 5);
        v19 = *(v15 - 3);
        v20 = *(v15 - 2);
        v21 = *(v15 - 1);
        v22 = *v15;

        static Logger.updates.getter();

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        v83 = v24;
        if (os_log_type_enabled(v23, v24))
        {
          v75 = v19;
          v76 = v21;
          log = v23;
          v25 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v78 = swift_slowAlloc();
          *v25 = 138413058;
          if (qword_10077E598 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          v26 = *(v0 + 504);
          v27 = v0;
          if (!v26 || (, , , os_unfair_lock_lock((v26 + 24)), v28 = *(v26 + 16), v29 = v28, os_unfair_lock_unlock((v26 + 24)), , !v28))
          {
            (*(*(v27 + 664) + 104))(*(v27 + 672), *(v27 + 896), *(v27 + 656));
            v30 = objc_allocWithZone(type metadata accessor for LogKey());
            v29 = LogKey.init(prefix:)();
          }

          v72 = *(v27 + 744);
          v73 = *(v27 + 760);
          *(v25 + 4) = v29;
          *v74 = v29;
          *(v25 + 12) = 2082;

          v31 = sub_1002346CC(v82, v18, v78);

          *(v25 + 14) = v31;
          *(v25 + 22) = 2082;

          v32 = sub_1002346CC(v75, v20, v78);

          *(v25 + 24) = v32;
          *(v25 + 32) = 2082;

          v33 = sub_1002346CC(v76, v22, v78);

          *(v25 + 34) = v33;
          _os_log_impl(&_mh_execute_header, log, v83, "[%@] %{public}s - %{public}s : %{public}s", v25, 0x2Au);
          sub_1000032A8(v74, &qword_10077F920);

          swift_arrayDestroy();

          result = v81(v73, v72);
          v0 = v70;
        }

        else
        {
          v16 = *(v0 + 760);
          v17 = *(v0 + 744);

          result = v81(v16, v17);
        }

        v13 = v79;
        ++v14;
        v15 += 6;
        if (v80 == v14)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      v34 = *(v0 + 343);
      v35 = *(v0 + 648);
      sub_100231F70(v0 + 344, v0 + 16);
      sub_10020A980(v0 + 456, v0 + 192);
      v36 = *v35;
      v37 = v35[2];
      *(v0 + 96) = v35[1];
      *(v0 + 112) = v37;
      *(v0 + 80) = v36;
      v38 = v35[3];
      v39 = v35[4];
      v40 = v35[5];
      *(v0 + 175) = *(v35 + 95);
      *(v0 + 144) = v39;
      *(v0 + 160) = v40;
      *(v0 + 128) = v38;
      *(v0 + 191) = v34;
      sub_10020A7AC(v35, v0 + 232);
      v41 = swift_task_alloc();
      *(v0 + 872) = v41;
      *v41 = v0;
      v41[1] = sub_1003C0170;

      return sub_1005D00A0();
    }
  }

  else
  {
    if (_swiftEmptyArrayStorage[2])
    {
      static Logger.updates.getter();

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 800);
      v46 = *(v0 + 752);
      v47 = *(v0 + 744);
      if (v44)
      {
        v84 = *(v0 + 800);
        v48 = (v0 + 616);
        v71 = v0;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v85 = v51;
        *v49 = 138412546;
        v52 = sub_100625FA0();
        *(v49 + 4) = v52;
        *v50 = v52;
        *(v49 + 12) = 2082;
        v53 = _swiftEmptyArrayStorage[2];
        *v48 = v53;
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v54;
        v55._countAndFlagsBits = 32;
        v55._object = 0xE100000000000000;
        String.append(_:)(v55);
        v56._countAndFlagsBits = 0x657461647075;
        v56._object = 0xE600000000000000;
        String.append(_:)(v56);
        if (v53 == 1)
        {
          v57 = 0;
        }

        else
        {
          v57 = 115;
        }

        if (v53 == 1)
        {
          v58 = 0xE000000000000000;
        }

        else
        {
          v58 = 0xE100000000000000;
        }

        v59 = v58;
        String.append(_:)(*&v57);

        v60 = sub_1002346CC(v86, v87, &v85);

        *(v49 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Discovered %{public}s", v49, 0x16u);
        sub_1000032A8(v50, &qword_10077F920);

        sub_10000710C(v51);

        v0 = v71;

        (*(v46 + 8))(v84, v47);
      }

      else
      {

        (*(v46 + 8))(v45, v47);
      }
    }

    else
    {
      static Logger.updates.getter();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        v65 = sub_100625FA0();
        *(v63 + 4) = v65;
        *v64 = v65;
        _os_log_impl(&_mh_execute_header, v61, v62, "[%@] No updates discovered", v63, 0xCu);
        sub_1000032A8(v64, &qword_10077F920);
      }

      v66 = *(v0 + 808);
      v67 = *(v0 + 752);
      v68 = *(v0 + 744);

      (*(v67 + 8))(v66, v68);
    }

    sub_10000710C(v0 + 456);

    v69 = *(v0 + 8);

    return v69(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1003C0170(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 880) = a1;
  *(v3 + 888) = v1;

  if (v1)
  {
    v4 = sub_1003C142C;
  }

  else
  {
    v4 = sub_1003C0288;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C0288()
{
  v175 = v0;
  v1 = *(v0 + 880);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 552);
    v140 = (v0 + 568);
    v4 = *(v0 + 712);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v163 = *(v4 + 72);
    v6 = *(v0 + 888);
    v141 = *(v0 + 840);
    v144 = *(v0 + 832);
    v149 = (v0 + 424);
    while (1)
    {
      v7 = *(v0 + 864);
      v8 = *(v0 + 736);
      sub_1003C7360(v5, v8, type metadata accessor for AvailableUpdate);
      *(swift_task_alloc() + 16) = v8;
      sub_100209AA0(sub_1003C73C8, v7, (v0 + 408));
      v170 = v6;

      v9 = *(v0 + 416);
      if (v9)
      {
        v160 = *(v0 + 408);
        v10 = *(v0 + 440);
        v11 = *(v0 + 448);

        v12 = sub_1005B6FBC(v10, v11);
        if ((v13 & 1) == 0)
        {
          v44 = v12;
          v45 = *(v0 + 736);
          v46 = *(v45 + 16);
          v47 = *(v45 + 24);

          v48 = sub_1005B6FBC(v46, v47);
          if ((v49 & 1) == 0 && v44 < v48)
          {
            v167 = v2;
            v50 = *(v0 + 728);
            v51 = *(v0 + 704);
            v52 = *(v0 + 696);
            v53 = *(v0 + 680);
            v55 = *(v0 + 384);
            v54 = *(v0 + 392);
            sub_1003C7360(*(v0 + 736), v50, type metadata accessor for AvailableUpdate);
            *v52 = v55;
            *(v52 + 1) = v54;
            *(v52 + 2) = v160;
            *(v52 + 3) = v9;
            *v140 = *v149;

            sub_10023215C(v140);

            v56 = *(v50 + 1);
            *(v52 + 4) = *v50;
            *(v52 + 5) = v56;
            v57 = *(v50 + 3);
            *(v52 + 6) = *(v50 + 2);
            *(v52 + 7) = v57;
            v58 = v51[8];
            v59 = v53[8];
            v60 = type metadata accessor for URL();
            (*(*(v60 - 8) + 32))(&v52[v59], &v50[v58], v60);
            v61 = *(v50 + 5);
            v62 = &v52[v53[9]];
            *v62 = *(v50 + 4);
            *(v62 + 1) = v61;
            v63 = *(v50 + 7);
            v64 = &v52[v53[10]];
            *v64 = *(v50 + 6);
            *(v64 + 1) = v63;
            v65 = &v50[v51[9]];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = &v52[v53[11]];
            *v68 = v67;
            *(v68 + 1) = v66;
            sub_1002321B0(&v50[v51[10]], &v52[v53[12]]);
            v69 = v144;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_100362C2C(0, v144[2] + 1, 1, v144);
            }

            v2 = v167;
            v6 = v170;
            v71 = v69[2];
            v70 = v69[3];
            v3 = (v0 + 552);
            if (v71 >= v70 >> 1)
            {
              v69 = sub_100362C2C(v70 > 1, v71 + 1, 1, v69);
            }

            v72 = *(v0 + 696);
            v73 = *(v0 + 688);
            v69[2] = v71 + 1;
            sub_1003C7480(v72, v69 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71);
            v144 = v69;
            v141 = v69;
            goto LABEL_5;
          }
        }

        v14 = *(v0 + 736);
        v15 = *(v0 + 720);
        static Logger.updates.getter();
        *v3 = *v149;
        sub_1003C7360(v14, v15, type metadata accessor for AvailableUpdate);

        sub_100222DF8(v3, v0 + 600);
        v16 = Logger.logObject.getter();
        LOBYTE(v14) = static os_log_type_t.error.getter();

        sub_10023215C(v3);

        v150 = v14;
        v17 = os_log_type_enabled(v16, v14);
        v154 = *(v0 + 768);
        v157 = *(v0 + 848);
        log = *(v0 + 744);
        v18 = v3;
        v19 = *(v0 + 720);
        if (v17)
        {
          v20 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          *v20 = 138413058;
          v21 = sub_100625FA0();
          *(v20 + 4) = v21;
          *v146 = v21;
          *(v20 + 12) = 2082;

          v165 = v2;
          v22 = sub_1002346CC(v160, v9, &v173);

          *(v20 + 14) = v22;
          *(v20 + 22) = 2082;

          sub_10023215C(v18);

          v23 = sub_1002346CC(v10, v11, &v173);

          *(v20 + 24) = v23;
          *(v20 + 32) = 2082;
          v24 = *(v19 + 16);
          v25 = *(v19 + 24);

          sub_1003C7420(v19, type metadata accessor for AvailableUpdate);
          v26 = sub_1002346CC(v24, v25, &v173);
          v2 = v165;

          *(v20 + 34) = v26;
          _os_log_impl(&_mh_execute_header, v16, v150, "[%@] Dropping update for %{public}s, have %{public}s and received %{public}s", v20, 0x2Au);
          sub_1000032A8(v146, &qword_10077F920);

          swift_arrayDestroy();
        }

        else
        {

          sub_10023215C(v18);

          sub_1003C7420(v19, type metadata accessor for AvailableUpdate);
        }

        v157(v154, log);
        v3 = v18;
      }

      else
      {
        v27 = *(v0 + 736);
        object = v27->_object;
        *(v0 + 584) = v27->_countAndFlagsBits;
        *(v0 + 592) = object;

        v29._countAndFlagsBits = 58;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        String.append(_:)(v27[1]);
        v30._countAndFlagsBits = 32;
        v30._object = 0xE100000000000000;
        String.append(_:)(v30);
        String.append(_:)(v27[3]);
        v31._countAndFlagsBits = 10272;
        v31._object = 0xE200000000000000;
        String.append(_:)(v31);
        String.append(_:)(v27[2]);
        v32._countAndFlagsBits = 41;
        v32._object = 0xE100000000000000;
        String.append(_:)(v32);
        v158 = *(v0 + 584);
        v33 = *(v0 + 592);
        static Logger.updates.getter();

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        v36 = os_log_type_enabled(v34, v35);
        v37 = *(v0 + 848);
        v161 = *(v0 + 776);
        v38 = *(v0 + 744);
        if (v36)
        {
          v166 = v2;
          v39 = swift_slowAlloc();
          v155 = v37;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v173 = v41;
          *v39 = 138412546;
          v42 = sub_100625FA0();
          *(v39 + 4) = v42;
          *v40 = v42;
          *(v39 + 12) = 2082;
          v43 = sub_1002346CC(v158, v33, &v173);

          *(v39 + 14) = v43;
          _os_log_impl(&_mh_execute_header, v34, v35, "[%@] Dropping update for unrequested app: %{public}s", v39, 0x16u);
          sub_1000032A8(v40, &qword_10077F920);

          sub_10000710C(v41);
          v3 = (v0 + 552);

          v2 = v166;

          v155(v161, v38);
        }

        else
        {

          v37(v161, v38);
        }
      }

      v6 = v170;
LABEL_5:
      sub_1003C7420(*(v0 + 736), type metadata accessor for AvailableUpdate);
      v5 += v163;
      if (!--v2)
      {

        v74 = v141;
        goto LABEL_23;
      }
    }
  }

  v74 = *(v0 + 840);
  v144 = *(v0 + 832);
LABEL_23:
  sub_100231FCC(v0 + 16);
  sub_100232020(v0 + 344);
  v75 = *(v0 + 824) + 1;
  if (v75 == *(v0 + 816))
  {
    if (v144[2])
    {
      static Logger.updates.getter();

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v0 + 800);
      v80 = *(v0 + 752);
      v81 = *(v0 + 744);
      if (v78)
      {
        v168 = *(v0 + 744);
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v172 = v84;
        *v82 = 138412546;
        v85 = sub_100625FA0();
        *(v82 + 4) = v85;
        *v83 = v85;
        *(v82 + 12) = 2082;
        v142 = v74;
        v86 = v74[2];
        *(v0 + 616) = v86;
        v173 = dispatch thunk of CustomStringConvertible.description.getter();
        v174 = v87;
        v88._countAndFlagsBits = 32;
        v88._object = 0xE100000000000000;
        String.append(_:)(v88);
        v89._countAndFlagsBits = 0x657461647075;
        v89._object = 0xE600000000000000;
        String.append(_:)(v89);
        if (v86 == 1)
        {
          v90 = 0;
        }

        else
        {
          v90 = 115;
        }

        if (v86 == 1)
        {
          v91 = 0xE000000000000000;
        }

        else
        {
          v91 = 0xE100000000000000;
        }

        v92 = v91;
        String.append(_:)(*&v90);

        v93 = sub_1002346CC(v173, v174, &v172);

        *(v82 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v76, v77, "[%@] Discovered %{public}s", v82, 0x16u);
        sub_1000032A8(v83, &qword_10077F920);

        sub_10000710C(v84);

        (*(v80 + 8))(v79, v168);
      }

      else
      {
        v142 = v74;

        (*(v80 + 8))(v79, v81);
      }
    }

    else
    {
      v142 = v74;
      static Logger.updates.getter();
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v133 = 138412290;
        v135 = sub_100625FA0();
        *(v133 + 4) = v135;
        *v134 = v135;
        _os_log_impl(&_mh_execute_header, v131, v132, "[%@] No updates discovered", v133, 0xCu);
        sub_1000032A8(v134, &qword_10077F920);
      }

      v136 = *(v0 + 808);
      v137 = *(v0 + 752);
      v138 = *(v0 + 744);

      (*(v137 + 8))(v136, v138);
    }

    sub_10000710C(v0 + 456);

    v139 = *(v0 + 8);

    return v139(v142);
  }

  else
  {
    *(v0 + 840) = v74;
    *(v0 + 832) = v144;
    *(v0 + 824) = v75;
    sub_100231F70(*(v0 + 640) + (v75 << 6) + 32, v0 + 344);
    static Logger.updates.getter();
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138412290;
      v98 = sub_100625FA0();
      *(v96 + 4) = v98;
      *v97 = v98;
      _os_log_impl(&_mh_execute_header, v94, v95, "[%@] Sending installed versions:", v96, 0xCu);
      sub_1000032A8(v97, &qword_10077F920);
    }

    v99 = *(v0 + 792);
    v100 = *(v0 + 752);
    v101 = *(v0 + 744);

    v102 = *(v100 + 8);
    *(v0 + 848) = v102;
    *(v0 + 856) = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v162 = v102;
    result = v102(v99, v101);
    v104 = *(v0 + 400);
    *(v0 + 864) = v104;
    v159 = *(v104 + 16);
    if (v159)
    {
      v105 = 0;
      v156 = (v0 + 632);
      v106 = (v104 + 72);
      v143 = v104;
      while (v105 < *(v104 + 16))
      {
        v109 = *(v106 - 4);
        v164 = *(v106 - 5);
        v110 = *(v106 - 2);
        v169 = *(v106 - 3);
        v171 = v105;
        v111 = *(v106 - 1);
        v112 = *v106;

        static Logger.updates.getter();

        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v113, v114))
        {
          v151 = v111;
          loga = v113;
          v115 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *v156 = swift_slowAlloc();
          *v115 = 138413058;
          if (qword_10077E598 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          v116 = *(v0 + 504);
          if (!v116 || (, , , os_unfair_lock_lock((v116 + 24)), v117 = *(v116 + 16), v118 = v117, os_unfair_lock_unlock((v116 + 24)), , !v117))
          {
            (*(*(v0 + 664) + 104))(*(v0 + 672), *(v0 + 896), *(v0 + 656));
            v119 = objc_allocWithZone(type metadata accessor for LogKey());
            v118 = LogKey.init(prefix:)();
          }

          v145 = *(v0 + 744);
          v147 = *(v0 + 760);
          *(v115 + 4) = v118;
          *v148 = v118;
          *(v115 + 12) = 2082;

          v120 = sub_1002346CC(v164, v109, v156);

          *(v115 + 14) = v120;
          *(v115 + 22) = 2082;

          v121 = sub_1002346CC(v169, v110, v156);

          *(v115 + 24) = v121;
          *(v115 + 32) = 2082;

          v122 = sub_1002346CC(v151, v112, v156);

          *(v115 + 34) = v122;
          _os_log_impl(&_mh_execute_header, loga, v114, "[%@] %{public}s - %{public}s : %{public}s", v115, 0x2Au);
          sub_1000032A8(v148, &qword_10077F920);

          swift_arrayDestroy();

          result = v162(v147, v145);
          v104 = v143;
        }

        else
        {
          v107 = *(v0 + 760);
          v108 = *(v0 + 744);

          result = v162(v107, v108);
        }

        v105 = v171 + 1;
        v106 += 6;
        if (v159 == v171 + 1)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_47:
      v123 = *(v0 + 343);
      v124 = *(v0 + 648);
      sub_100231F70(v0 + 344, v0 + 16);
      sub_10020A980(v0 + 456, v0 + 192);
      v125 = *v124;
      v126 = v124[2];
      *(v0 + 96) = v124[1];
      *(v0 + 112) = v126;
      *(v0 + 80) = v125;
      v127 = v124[3];
      v128 = v124[4];
      v129 = v124[5];
      *(v0 + 175) = *(v124 + 95);
      *(v0 + 144) = v128;
      *(v0 + 160) = v129;
      *(v0 + 128) = v127;
      *(v0 + 191) = v123;
      sub_10020A7AC(v124, v0 + 232);
      v130 = swift_task_alloc();
      *(v0 + 872) = v130;
      *v130 = v0;
      v130[1] = sub_1003C0170;

      return sub_1005D00A0();
    }
  }

  return result;
}

uint64_t sub_1003C142C()
{
  v110 = v0;
  v1 = v0;
  sub_100231FCC((v0 + 2));
  static Logger.updates.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v103 = v0[106];
    v99 = v0[93];
    v101 = v0[98];
    v4 = v0;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v108 = v7;
    *v5 = 138412546;
    v8 = sub_100625FA0();
    *(v5 + 4) = v8;
    *v6 = v8;
    *(v5 + 12) = 2082;
    swift_getErrorValue();
    v9 = *(v0[67] - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = String.init<A>(describing:)();
    v12 = v11;

    v13 = sub_1002346CC(v10, v12, &v108);

    *(v5 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Error fetching updates: %{public}s", v5, 0x16u);
    sub_1000032A8(v6, &qword_10077F920);

    sub_10000710C(v7);

    v1 = v4;

    v103(v101, v99);
    v14 = (v4 + 43);
  }

  else
  {
    v15 = v0[106];
    v16 = v0[98];
    v17 = v0[93];

    v15(v16, v17);
    v14 = (v0 + 43);
  }

  sub_100232020(v14);
  v18 = v1[105];
  v19 = v1[104];
  v20 = v1[103] + 1;
  if (v20 == v1[102])
  {
    if (*(v19 + 16))
    {
      static Logger.updates.getter();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v1[100];
      v25 = v1[94];
      v26 = v1;
      v27 = v1[93];
      if (v23)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v107 = v30;
        *v28 = 138412546;
        v31 = sub_100625FA0();
        *(v28 + 4) = v31;
        *v29 = v31;
        *(v28 + 12) = 2082;
        v105 = v18;
        v102 = v27;
        v32 = *(v18 + 16);
        v26[77] = v32;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v33;
        v34._countAndFlagsBits = 32;
        v34._object = 0xE100000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = 0x657461647075;
        v35._object = 0xE600000000000000;
        String.append(_:)(v35);
        if (v32 == 1)
        {
          v36 = 0;
        }

        else
        {
          v36 = 115;
        }

        if (v32 == 1)
        {
          v37 = 0xE000000000000000;
        }

        else
        {
          v37 = 0xE100000000000000;
        }

        v38 = v37;
        String.append(_:)(*&v36);

        v39 = sub_1002346CC(v108, v109, &v107);

        *(v28 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Discovered %{public}s", v28, 0x16u);
        sub_1000032A8(v29, &qword_10077F920);

        sub_10000710C(v30);

        (*(v25 + 8))(v24, v102);
      }

      else
      {
        v105 = v18;

        (*(v25 + 8))(v24, v27);
      }

      v1 = v26;
    }

    else
    {
      v105 = v1[105];
      static Logger.updates.getter();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        v84 = sub_100625FA0();
        *(v82 + 4) = v84;
        *v83 = v84;
        _os_log_impl(&_mh_execute_header, v80, v81, "[%@] No updates discovered", v82, 0xCu);
        sub_1000032A8(v83, &qword_10077F920);
      }

      v85 = v1[101];
      v86 = v1[94];
      v87 = v1[93];

      (*(v86 + 8))(v85, v87);
    }

    sub_10000710C((v1 + 57));

    v88 = v1[1];

    return v88(v105);
  }

  else
  {
    v1[105] = v18;
    v1[104] = v19;
    v1[103] = v20;
    sub_100231F70(v1[80] + (v20 << 6) + 32, (v1 + 43));
    static Logger.updates.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = sub_100625FA0();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%@] Sending installed versions:", v42, 0xCu);
      sub_1000032A8(v43, &qword_10077F920);
    }

    v45 = v1[99];
    v46 = v1[94];
    v47 = v1[93];

    v48 = *(v46 + 8);
    v1[106] = v48;
    v1[107] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v100 = v48;
    result = v48(v45, v47);
    v50 = v1[50];
    v1[108] = v50;
    v98 = *(v50 + 16);
    if (v98)
    {
      v51 = 0;
      v96 = v1 + 79;
      v52 = (v50 + 72);
      v97 = v50;
      v89 = v1;
      while (v51 < *(v50 + 16))
      {
        v55 = *(v52 - 4);
        v104 = *(v52 - 5);
        v56 = *(v52 - 3);
        v57 = *(v52 - 2);
        v58 = *(v52 - 1);
        v59 = *v52;

        static Logger.updates.getter();

        v60 = Logger.logObject.getter();
        v61 = v1;
        v62 = static os_log_type_t.default.getter();

        v106 = v62;
        if (os_log_type_enabled(v60, v62))
        {
          v93 = v56;
          v94 = v58;
          log = v60;
          v63 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *v96 = swift_slowAlloc();
          *v63 = 138413058;
          if (qword_10077E598 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          v64 = v61[63];
          v65 = v61;
          if (!v64 || (, , , os_unfair_lock_lock((v64 + 24)), v66 = *(v64 + 16), v67 = v66, os_unfair_lock_unlock((v64 + 24)), , !v66))
          {
            (*(v65[83] + 104))(v65[84], *(v65 + 224), v65[82]);
            v68 = objc_allocWithZone(type metadata accessor for LogKey());
            v67 = LogKey.init(prefix:)();
          }

          v90 = v65[93];
          v91 = v65[95];
          *(v63 + 4) = v67;
          *v92 = v67;
          *(v63 + 12) = 2082;

          v69 = sub_1002346CC(v104, v55, v96);

          *(v63 + 14) = v69;
          *(v63 + 22) = 2082;

          v70 = sub_1002346CC(v93, v57, v96);

          *(v63 + 24) = v70;
          *(v63 + 32) = 2082;

          v71 = sub_1002346CC(v94, v59, v96);

          *(v63 + 34) = v71;
          _os_log_impl(&_mh_execute_header, log, v106, "[%@] %{public}s - %{public}s : %{public}s", v63, 0x2Au);
          sub_1000032A8(v92, &qword_10077F920);

          swift_arrayDestroy();

          result = v100(v91, v90);
          v1 = v89;
        }

        else
        {
          v53 = v61[95];
          v54 = v61[93];

          result = v100(v53, v54);
          v1 = v61;
        }

        v50 = v97;
        ++v51;
        v52 += 6;
        if (v98 == v51)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_28:
      v72 = *(v1 + 343);
      v73 = v1[81];
      sub_100231F70((v1 + 43), (v1 + 2));
      sub_10020A980((v1 + 57), (v1 + 24));
      v74 = *v73;
      v75 = v73[2];
      *(v1 + 6) = v73[1];
      *(v1 + 7) = v75;
      *(v1 + 5) = v74;
      v76 = v73[3];
      v77 = v73[4];
      v78 = v73[5];
      *(v1 + 175) = *(v73 + 95);
      *(v1 + 9) = v77;
      *(v1 + 10) = v78;
      *(v1 + 8) = v76;
      *(v1 + 191) = v72;
      sub_10020A7AC(v73, (v1 + 29));
      v79 = swift_task_alloc();
      v1[109] = v79;
      *v79 = v1;
      v79[1] = sub_1003C0170;

      return sub_1005D00A0();
    }
  }

  return result;
}

uint64_t sub_1003C2028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 744) = v20;
  *(v8 + 736) = a8;
  *(v8 + 728) = a7;
  *(v8 + 720) = a6;
  *(v8 + 127) = a5;
  *(v8 + 712) = a4;
  *(v8 + 704) = a3;
  *(v8 + 696) = a2;
  sub_1001F0C48(&unk_1007809F0);
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v8 + 768) = v10;
  *(v8 + 776) = *(v10 - 8);
  *(v8 + 784) = swift_task_alloc();
  v11 = type metadata accessor for AppInstallRequestType();
  *(v8 + 792) = v11;
  *(v8 + 800) = *(v11 - 8);
  *(v8 + 808) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v8 + 816) = swift_task_alloc();
  v12 = type metadata accessor for LogKey.Prefix();
  *(v8 + 824) = v12;
  *(v8 + 832) = *(v12 - 8);
  *(v8 + 840) = swift_task_alloc();
  v13 = type metadata accessor for IdentifiableAvailableUpdate(0);
  *(v8 + 848) = v13;
  *(v8 + 856) = *(v13 - 8);
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v8 + 896) = v14;
  *(v8 + 904) = *(v14 - 8);
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = swift_task_alloc();
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = swift_task_alloc();
  *(v8 + 264) = a8;
  *(v8 + 272) = v17;
  *(v8 + 288) = v18;
  *(v8 + 296) = v19;
  *(v8 + 304) = v20;
  *(v8 + 312) = v21;
  *(v8 + 328) = v22;
  *(v8 + 968) = sub_10020A748((v8 + 240));
  (*(*(a8 - 8) + 16))();

  return _swift_task_switch(sub_1003C23EC, 0, 0);
}

uint64_t sub_1003C23EC()
{
  sub_100006D8C(v0 + 30, v0[33]);

  v1 = sub_10042A954();

  if (v1)
  {
    v2 = v0[87];
    v4 = v2[3];
    v3 = v2[4];
    v5 = sub_100006D8C(v2, v4);
    v6 = swift_task_alloc();
    v0[122] = v6;
    *v6 = v0;
    v6[1] = sub_1003C271C;

    return sub_100519B04(v5, v4, v3);
  }

  else
  {
    static Logger.updates.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = sub_100625FA0();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Ignoring update poll request as device is locked", v10, 0xCu);
      sub_1000032A8(v11, &qword_10077F920);
    }

    v13 = v0[120];
    v14 = v0[113];
    v15 = v0[112];

    (*(v14 + 8))(v13, v15);
    sub_100231094(1);
    sub_10000710C((v0 + 30));

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1003C271C(char a1)
{
  *(*v1 + 239) = a1;

  return _swift_task_switch(sub_1003C281C, 0, 0);
}

uint64_t sub_1003C281C()
{
  v46 = v0;
  if (*(v0 + 239) == 1)
  {
    v1 = *(v0 + 712);
    if (v1)
    {
      static Logger.updates.getter();

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();

      v4 = os_log_type_enabled(v2, v3);
      v5 = *(v0 + 944);
      v6 = *(v0 + 904);
      v7 = *(v0 + 896);
      if (v4)
      {
        v8 = *(v0 + 704);
        v44 = *(v0 + 944);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v45 = v11;
        *v9 = 138412546;
        v12 = sub_100625FA0();
        *(v9 + 4) = v12;
        *v10 = v12;
        *(v9 + 12) = 2082;
        *(v9 + 14) = sub_1002346CC(v8, v1, &v45);
        _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Polling for updates for %{public}s", v9, 0x16u);
        sub_1000032A8(v10, &qword_10077F920);

        sub_10000710C(v11);

        (*(v6 + 8))(v44, v7);
      }

      else
      {

        (*(v6 + 8))(v5, v7);
      }

      v31 = *(v0 + 704);
      *(v0 + 360) = &type metadata for WebDistributor;
      *(v0 + 368) = sub_100231E84();
      *(v0 + 336) = v31;
      *(v0 + 344) = v1;
    }

    else
    {
      static Logger.updates.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = sub_100625FA0();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Polling for all updates", v25, 0xCu);
        sub_1000032A8(v26, &qword_10077F920);
      }

      v28 = *(v0 + 936);
      v29 = *(v0 + 904);
      v30 = *(v0 + 896);

      (*(v29 + 8))(v28, v30);
      *(v0 + 368) = 0;
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
    }

    sub_100006D8C((v0 + 240), *(v0 + 264));

    v32 = sub_10058BEFC();

    v33 = sub_1003C681C(v0 + 336, v32);
    *(v0 + 984) = v33;

    sub_1000032A8(v0 + 336, &unk_10077FA50);
    v34 = (*sub_100006D8C((v0 + 240), *(v0 + 264)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v36 = v34[4];
    v35 = v34[5];
    v37 = v34[3];
    *(v0 + 111) = *(v34 + 95);
    *(v0 + 80) = v36;
    *(v0 + 96) = v35;
    *(v0 + 64) = v37;
    v39 = v34[1];
    v38 = v34[2];
    *(v0 + 16) = *v34;
    *(v0 + 32) = v39;
    *(v0 + 48) = v38;
    sub_10020A7AC(v0 + 16, v0 + 128);
    v40 = swift_task_alloc();
    *(v0 + 992) = v40;
    *v40 = v0;
    v40[1] = sub_1003C2E38;
    v41 = *(v0 + 968);
    v42 = *(v0 + 744);
    v43 = *(v0 + 736);

    return sub_1003BF548(v33, v0 + 16, 0, v41, v43, v42);
  }

  else
  {
    static Logger.updates.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = sub_100625FA0();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Ignoring update poll request due to feature ineligibility", v15, 0xCu);
      sub_1000032A8(v16, &qword_10077F920);
    }

    v18 = *(v0 + 952);
    v19 = *(v0 + 904);
    v20 = *(v0 + 896);

    (*(v19 + 8))(v18, v20);
    sub_10000710C(v0 + 240);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1003C2E38(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 1000) = a1;

  sub_10020A92C(v2 + 16);

  return _swift_task_switch(sub_1003C2F60, 0, 0);
}

uint64_t sub_1003C2F60()
{
  v1 = v0[125];
  v2 = *(*sub_100006D8C(v0 + 30, v0[33]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
  v0[126] = v2;
  v3 = swift_task_alloc();
  v0[127] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[128] = v4;
  *v4 = v0;
  v4[1] = sub_1003C306C;

  return sub_10052C9E4(sub_10052C9E4, sub_100231E68, v3, v2);
}

uint64_t sub_1003C306C()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_1003C3F14;
  }

  else
  {
    v2 = sub_1003C31C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C31C0()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 720);
  v3 = *(v1 + 16);
  *(v0 + 1040) = v3;
  if (!v3)
  {
    if (v2)
    {
      swift_getObjectType();
      v23._countAndFlagsBits = 0xD000000000000026;
      v23._object = 0x80000001006C4AC0;
      XPCClientProtocol.logMessage(_:)(v23);
    }

LABEL_12:
    if (!v3 || (*(v0 + 127) & 1) == 0)
    {
LABEL_14:

      sub_10000710C(v0 + 240);

      v24 = *(v0 + 8);

      return v24();
    }

    goto LABEL_18;
  }

  if (v2)
  {
    v4 = *(v0 + 864);
    v5 = *(v0 + 856);
    _StringGuts.grow(_:)(22);

    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = _swiftEmptyArrayStorage;
    v101 = v3;
    v104 = *(v5 + 72);
    do
    {
      v8 = *(v0 + 864);
      sub_1003C7360(v6, v8, type metadata accessor for IdentifiableAvailableUpdate);
      _StringGuts.grow(_:)(53);
      v9._countAndFlagsBits = 0x4920656C646E7562;
      v9._object = 0xEB00000000203A44;
      String.append(_:)(v9);
      String.append(_:)(v4[1]);
      v10._countAndFlagsBits = 0x49206D657469202CLL;
      v10._object = 0xEB00000000203A44;
      String.append(_:)(v10);
      String.append(_:)(v4[2]);
      v11._countAndFlagsBits = 0x6F6973726576202CLL;
      v11._object = 0xEE00203A4449206ELL;
      String.append(_:)(v11);
      String.append(_:)(v4[3]);
      v12._countAndFlagsBits = 0x203A504441202CLL;
      v12._object = 0xE700000000000000;
      String.append(_:)(v12);
      sub_1003C7308();
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      String.append(_:)(v14);
      sub_1003C7420(v8, type metadata accessor for IdentifiableAvailableUpdate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100009530(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_100009530((v15 > 1), v16 + 1, 1, v7);
      }

      *(v7 + 2) = v16 + 1;
      v17 = &v7[16 * v16];
      *(v17 + 4) = 0;
      *(v17 + 5) = 0xE000000000000000;
      v6 += v104;
      --v3;
    }

    while (v3);
    swift_getObjectType();
    *(v0 + 680) = v7;
    sub_1001F0C48(&unk_10077FB40);
    sub_1001F766C();
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 0xD000000000000014;
    v22._object = 0x80000001006C4AA0;
    XPCClientProtocol.logMessage(_:)(v22);

    v3 = v101;
    goto LABEL_12;
  }

  if (*(v0 + 127) != 1)
  {
    goto LABEL_14;
  }

LABEL_18:
  v26 = 0;
  v107 = (v0 + 672);
  v27 = *(v0 + 856);
  *(v0 + 1096) = *(v27 + 80);
  *(v0 + 1048) = *(v27 + 72);
  *(v0 + 1100) = enum case for LogKey.Prefix.undefined(_:);
  *(v0 + 1104) = enum case for LogKey.Prefix.automaticUpdate(_:);
  *(v0 + 1108) = enum case for AppInstallRequestType.automaticUpdate(_:);
  while (1)
  {
    *(v0 + 1056) = v26;
    v28 = *(v0 + 888);
    v29 = *(v0 + 880);
    sub_1003C7360(*(v0 + 1000) + ((*(v0 + 1096) + 32) & ~*(v0 + 1096)) + *(v0 + 1048) * v26, v28, type metadata accessor for IdentifiableAvailableUpdate);
    static Logger.updates.getter();
    sub_1003C7360(v28, v29, type metadata accessor for IdentifiableAvailableUpdate);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      v52 = *(v0 + 920);
      v53 = *(v0 + 904);
      v54 = *(v0 + 896);
      v55 = *(v0 + 880);

      sub_1003C7420(v55, type metadata accessor for IdentifiableAvailableUpdate);
      (*(v53 + 8))(v52, v54);
      if (!*(v0 + 720))
      {
        goto LABEL_29;
      }

LABEL_28:
      swift_getObjectType();
      *(v0 + 600) = 0;
      *(v0 + 608) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *(v0 + 584) = 0xD000000000000014;
      *(v0 + 592) = 0x80000001006C4A80;
      v56._countAndFlagsBits = sub_1005E2220(1);
      String.append(_:)(v56);

      XPCClientProtocol.logMessage(_:)(*(v0 + 584));

      goto LABEL_29;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v107 = v34;
    *v32 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v35 = *(v0 + 424);
    v105 = v34;
    v102 = v31;
    if (!v35 || (, , , os_unfair_lock_lock((v35 + 24)), v36 = *(v35 + 16), v37 = v36, os_unfair_lock_unlock((v35 + 24)), , !v36))
    {
      (*(*(v0 + 832) + 104))(*(v0 + 840), *(v0 + 1100), *(v0 + 824));
      v38 = objc_allocWithZone(type metadata accessor for LogKey());
      v37 = LogKey.init(prefix:)();
    }

    v39 = *(v0 + 904);
    v97 = *(v0 + 896);
    v99 = *(v0 + 920);
    v40 = *(v0 + 880);
    v41 = *(v0 + 848);
    *(v32 + 4) = v37;
    *v33 = v37;
    *(v32 + 12) = 2082;
    *(v0 + 632) = 0;
    *(v0 + 640) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    countAndFlagsBits = v40[1]._countAndFlagsBits;
    object = v40[1]._object;

    *(v0 + 616) = countAndFlagsBits;
    *(v0 + 624) = object;
    v44._countAndFlagsBits = 58;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    String.append(_:)(v40[2]);
    v45._countAndFlagsBits = 58;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    String.append(_:)(v40[3]);
    v46._countAndFlagsBits = 2108704;
    v46._object = 0xE300000000000000;
    String.append(_:)(v46);
    String.append(_:)(*(v40 + *(v41 + 40)));
    v47._countAndFlagsBits = 40;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    String.append(_:)(*(v40 + *(v41 + 36)));
    v48._countAndFlagsBits = 41;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49 = *(v0 + 616);
    v50 = *(v0 + 624);
    sub_1003C7420(v40, type metadata accessor for IdentifiableAvailableUpdate);
    v51 = sub_1002346CC(v49, v50, v107);

    *(v32 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v30, v102, "[%@] Starting update for %{public}s", v32, 0x16u);
    sub_1000032A8(v33, &qword_10077F920);

    sub_10000710C(v105);

    (*(v39 + 8))(v99, v97);
    if (*(v0 + 720))
    {
      goto LABEL_28;
    }

LABEL_29:
    v57 = *(v0 + 888);
    v58 = *(*(v0 + 848) + 32);
    v59 = URL.host(percentEncoded:)(1);
    if (v59.value._object)
    {
      break;
    }

    sub_1003C7420(*(v0 + 888), type metadata accessor for IdentifiableAvailableUpdate);
    v26 = *(v0 + 1056) + 1;
    if (v26 == *(v0 + 1040))
    {
      goto LABEL_14;
    }
  }

  v106 = v59;
  v60 = URL.port.getter();
  if ((v61 & 1) == 0)
  {
    v62 = v60;
    *(v0 + 568) = v59;
    v63._countAndFlagsBits = 58;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    *(v0 + 664) = v62;
    v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v64);

    v106 = *(v0 + 568);
  }

  v91 = *(v0 + 1108);
  v93 = *(v0 + 1104);
  v65 = *(v0 + 888);
  v81 = *(v0 + 848);
  v66 = *(v0 + 840);
  v67 = *(v0 + 832);
  v86 = *(v0 + 824);
  v100 = *(v0 + 816);
  v68 = *(v0 + 808);
  v69 = *(v0 + 800);
  v89 = *(v0 + 792);
  v70 = *(v0 + 776);
  v82 = *(v0 + 768);
  v83 = *(v0 + 784);
  v84 = *(v0 + 760);
  v88 = *(v0 + 752);
  v96 = *(v0 + 744);
  v98 = *(v0 + 736);
  v103 = *(v0 + 728);
  v85 = *(v0 + 696);
  v95 = type metadata accessor for ADPInstallConfiguration(0);
  UUID.init()();
  (*(v67 + 104))(v66, v93, v86);
  v71 = objc_allocWithZone(type metadata accessor for LogKey());
  v94 = LogKey.init(prefix:)();
  (*(v69 + 104))(v68, v91, v89);
  v72 = (v65 + *(v81 + 44));
  v92 = *v72;
  v87 = v72[1];
  v73 = v65[1];
  v90 = *v65;
  (*(v70 + 16))(v83, v57 + v58, v82);
  (*(v70 + 56))(v84, 1, 1, v82);
  sub_10020A980(v85, v0 + 376);
  sub_100005934(v65 + *(v81 + 48), v88, &unk_1007809F0);
  v74 = *(v0 + 264);
  v75 = sub_100006D8C((v0 + 240), v74);
  *(v0 + 520) = v106;
  v76 = *(v74 - 8);
  v77 = swift_task_alloc();
  (*(v76 + 16))(v77, v75, v74);
  v78 = sub_100231E84();

  *(v0 + 1064) = sub_10038B61C(v100, v94, v0 + 520, v68, 0, 0, v92, v87, v90, v73, 0, 0, v83, v84, v0 + 376, 0, 0xF000000000000000, 2u, 0, 0, 1u, 0, 1u, v88, 0, v77, v95, &type metadata for WebDistributor, v98, v78, v96);

  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 1072) = sub_100400560(v79, v103);
  v80 = swift_task_alloc();
  *(v0 + 1080) = v80;
  *v80 = v0;
  v80[1] = sub_1003C4E9C;

  return sub_1003FF6B0(v0 + 240);
}

uint64_t sub_1003C3F14()
{
  v129 = v0;
  static Logger.updates.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v117 = *(v0 + 904);
    v121 = *(v0 + 896);
    v125 = *(v0 + 928);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v127 = v5;
    *v3 = 138412546;
    v6 = sub_100625FA0();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2082;
    swift_getErrorValue();
    v7 = *(*(v0 + 504) - 8);
    swift_task_alloc();
    (*(v7 + 16))();
    v8 = String.init<A>(describing:)();
    v10 = v9;

    v11 = sub_1002346CC(v8, v10, &v127);

    *(v3 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error saving updates to database: %{public}s", v3, 0x16u);
    sub_1000032A8(v4, &qword_10077F920);

    sub_10000710C(v5);

    (*(v117 + 8))(v125, v121);
  }

  else
  {
    v12 = *(v0 + 928);
    v13 = *(v0 + 904);
    v14 = *(v0 + 896);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 1000);
  v16 = *(v0 + 720);
  v17 = *(v15 + 16);
  *(v0 + 1040) = v17;
  if (!v17)
  {
    if (v16)
    {
      swift_getObjectType();
      v39._countAndFlagsBits = 0xD000000000000026;
      v39._object = 0x80000001006C4AC0;
      XPCClientProtocol.logMessage(_:)(v39);
    }

LABEL_15:
    if (!v17 || (*(v0 + 127) & 1) == 0)
    {
LABEL_17:

      sub_10000710C(v0 + 240);

      v40 = *(v0 + 8);

      return v40();
    }

    goto LABEL_21;
  }

  if (v16)
  {
    v18 = *(v0 + 864);
    v19 = *(v0 + 856);
    v127 = 0;
    v128 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v20 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = _swiftEmptyArrayStorage;
    v118 = v17;
    v122 = *(v19 + 72);
    do
    {
      v22 = *(v0 + 864);
      sub_1003C7360(v20, v22, type metadata accessor for IdentifiableAvailableUpdate);
      v127 = 0;
      v128 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v23._countAndFlagsBits = 0x4920656C646E7562;
      v23._object = 0xEB00000000203A44;
      String.append(_:)(v23);
      String.append(_:)(v18[1]);
      v24._countAndFlagsBits = 0x49206D657469202CLL;
      v24._object = 0xEB00000000203A44;
      String.append(_:)(v24);
      String.append(_:)(v18[2]);
      v25._countAndFlagsBits = 0x6F6973726576202CLL;
      v25._object = 0xEE00203A4449206ELL;
      String.append(_:)(v25);
      String.append(_:)(v18[3]);
      v26._countAndFlagsBits = 0x203A504441202CLL;
      v26._object = 0xE700000000000000;
      String.append(_:)(v26);
      sub_1003C7308();
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      String.append(_:)(v28);
      v30 = v127;
      v29 = v128;
      sub_1003C7420(v22, type metadata accessor for IdentifiableAvailableUpdate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100009530(0, *(v21 + 2) + 1, 1, v21);
      }

      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      if (v32 >= v31 >> 1)
      {
        v21 = sub_100009530((v31 > 1), v32 + 1, 1, v21);
      }

      *(v21 + 2) = v32 + 1;
      v33 = &v21[16 * v32];
      *(v33 + 4) = v30;
      *(v33 + 5) = v29;
      v20 += v122;
      --v17;
    }

    while (v17);
    swift_getObjectType();
    *(v0 + 680) = v21;
    sub_1001F0C48(&unk_10077FB40);
    sub_1001F766C();
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    v38._countAndFlagsBits = 0xD000000000000014;
    v38._object = 0x80000001006C4AA0;
    XPCClientProtocol.logMessage(_:)(v38);

    v17 = v118;
    goto LABEL_15;
  }

  if (*(v0 + 127) != 1)
  {
    goto LABEL_17;
  }

LABEL_21:
  v42 = 0;
  v126 = (v0 + 672);
  v43 = *(v0 + 856);
  *(v0 + 1096) = *(v43 + 80);
  *(v0 + 1048) = *(v43 + 72);
  *(v0 + 1100) = enum case for LogKey.Prefix.undefined(_:);
  *(v0 + 1104) = enum case for LogKey.Prefix.automaticUpdate(_:);
  *(v0 + 1108) = enum case for AppInstallRequestType.automaticUpdate(_:);
  while (1)
  {
    *(v0 + 1056) = v42;
    v44 = *(v0 + 888);
    v45 = *(v0 + 880);
    sub_1003C7360(*(v0 + 1000) + ((*(v0 + 1096) + 32) & ~*(v0 + 1096)) + *(v0 + 1048) * v42, v44, type metadata accessor for IdentifiableAvailableUpdate);
    static Logger.updates.getter();
    sub_1003C7360(v44, v45, type metadata accessor for IdentifiableAvailableUpdate);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v46, v47))
    {
      v68 = *(v0 + 920);
      v69 = *(v0 + 904);
      v70 = *(v0 + 896);
      v71 = *(v0 + 880);

      sub_1003C7420(v71, type metadata accessor for IdentifiableAvailableUpdate);
      (*(v69 + 8))(v68, v70);
      if (!*(v0 + 720))
      {
        goto LABEL_32;
      }

LABEL_31:
      swift_getObjectType();
      *(v0 + 600) = 0;
      *(v0 + 608) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *(v0 + 584) = 0xD000000000000014;
      *(v0 + 592) = 0x80000001006C4A80;
      v72._countAndFlagsBits = sub_1005E2220(1);
      String.append(_:)(v72);

      XPCClientProtocol.logMessage(_:)(*(v0 + 584));

      goto LABEL_32;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v126 = v50;
    *v48 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v51 = *(v0 + 424);
    v123 = v50;
    v119 = v47;
    if (!v51 || (, , , os_unfair_lock_lock((v51 + 24)), v52 = *(v51 + 16), v53 = v52, os_unfair_lock_unlock((v51 + 24)), , !v52))
    {
      (*(*(v0 + 832) + 104))(*(v0 + 840), *(v0 + 1100), *(v0 + 824));
      v54 = objc_allocWithZone(type metadata accessor for LogKey());
      v53 = LogKey.init(prefix:)();
    }

    v55 = *(v0 + 904);
    v113 = *(v0 + 896);
    v115 = *(v0 + 920);
    v56 = *(v0 + 880);
    v57 = *(v0 + 848);
    *(v48 + 4) = v53;
    *v49 = v53;
    *(v48 + 12) = 2082;
    *(v0 + 632) = 0;
    *(v0 + 640) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    countAndFlagsBits = v56[1]._countAndFlagsBits;
    object = v56[1]._object;

    *(v0 + 616) = countAndFlagsBits;
    *(v0 + 624) = object;
    v60._countAndFlagsBits = 58;
    v60._object = 0xE100000000000000;
    String.append(_:)(v60);
    String.append(_:)(v56[2]);
    v61._countAndFlagsBits = 58;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    String.append(_:)(v56[3]);
    v62._countAndFlagsBits = 2108704;
    v62._object = 0xE300000000000000;
    String.append(_:)(v62);
    String.append(_:)(*(v56 + *(v57 + 40)));
    v63._countAndFlagsBits = 40;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    String.append(_:)(*(v56 + *(v57 + 36)));
    v64._countAndFlagsBits = 41;
    v64._object = 0xE100000000000000;
    String.append(_:)(v64);
    v65 = *(v0 + 616);
    v66 = *(v0 + 624);
    sub_1003C7420(v56, type metadata accessor for IdentifiableAvailableUpdate);
    v67 = sub_1002346CC(v65, v66, v126);

    *(v48 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v46, v119, "[%@] Starting update for %{public}s", v48, 0x16u);
    sub_1000032A8(v49, &qword_10077F920);

    sub_10000710C(v123);

    (*(v55 + 8))(v115, v113);
    if (*(v0 + 720))
    {
      goto LABEL_31;
    }

LABEL_32:
    v73 = *(v0 + 888);
    v74 = *(*(v0 + 848) + 32);
    v75 = URL.host(percentEncoded:)(1);
    if (v75.value._object)
    {
      break;
    }

    sub_1003C7420(*(v0 + 888), type metadata accessor for IdentifiableAvailableUpdate);
    v42 = *(v0 + 1056) + 1;
    if (v42 == *(v0 + 1040))
    {
      goto LABEL_17;
    }
  }

  v124 = v75;
  v76 = URL.port.getter();
  if ((v77 & 1) == 0)
  {
    v78 = v76;
    *(v0 + 568) = v75;
    v79._countAndFlagsBits = 58;
    v79._object = 0xE100000000000000;
    String.append(_:)(v79);
    *(v0 + 664) = v78;
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v124 = *(v0 + 568);
  }

  v107 = *(v0 + 1108);
  v109 = *(v0 + 1104);
  v81 = *(v0 + 888);
  v97 = *(v0 + 848);
  v82 = *(v0 + 840);
  v83 = *(v0 + 832);
  v102 = *(v0 + 824);
  v116 = *(v0 + 816);
  v84 = *(v0 + 808);
  v85 = *(v0 + 800);
  v105 = *(v0 + 792);
  v86 = *(v0 + 776);
  v98 = *(v0 + 768);
  v99 = *(v0 + 784);
  v100 = *(v0 + 760);
  v104 = *(v0 + 752);
  v112 = *(v0 + 744);
  v114 = *(v0 + 736);
  v120 = *(v0 + 728);
  v101 = *(v0 + 696);
  v111 = type metadata accessor for ADPInstallConfiguration(0);
  UUID.init()();
  (*(v83 + 104))(v82, v109, v102);
  v87 = objc_allocWithZone(type metadata accessor for LogKey());
  v110 = LogKey.init(prefix:)();
  (*(v85 + 104))(v84, v107, v105);
  v88 = (v81 + *(v97 + 44));
  v108 = *v88;
  v103 = v88[1];
  v89 = v81[1];
  v106 = *v81;
  (*(v86 + 16))(v99, v73 + v74, v98);
  (*(v86 + 56))(v100, 1, 1, v98);
  sub_10020A980(v101, v0 + 376);
  sub_100005934(v81 + *(v97 + 48), v104, &unk_1007809F0);
  v90 = *(v0 + 264);
  v91 = sub_100006D8C((v0 + 240), v90);
  *(v0 + 520) = v124;
  v92 = *(v90 - 8);
  v93 = swift_task_alloc();
  (*(v92 + 16))(v93, v91, v90);
  v94 = sub_100231E84();

  *(v0 + 1064) = sub_10038B61C(v116, v110, v0 + 520, v84, 0, 0, v108, v103, v106, v89, 0, 0, v99, v100, v0 + 376, 0, 0xF000000000000000, 2u, 0, 0, 1u, 0, 1u, v104, 0, v93, v111, &type metadata for WebDistributor, v114, v94, v112);

  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 1072) = sub_100400560(v95, v120);
  v96 = swift_task_alloc();
  *(v0 + 1080) = v96;
  *v96 = v0;
  v96[1] = sub_1003C4E9C;

  return sub_1003FF6B0(v0 + 240);
}

uint64_t sub_1003C4E9C()
{
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v2 = sub_1003C59FC;
  }

  else
  {
    v2 = sub_1003C4FB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C4FB0()
{
  v1 = *(v0 + 888);

  sub_1003C7420(v1, type metadata accessor for IdentifiableAvailableUpdate);
  v2 = *(v0 + 1056) + 1;
  if (v2 == *(v0 + 1040))
  {
LABEL_2:

    sub_10000710C(v0 + 240);

    v3 = *(v0 + 8);

    return v3();
  }

  v81 = (v0 + 672);
  while (1)
  {
    *(v0 + 1056) = v2;
    v5 = *(v0 + 888);
    v6 = *(v0 + 880);
    sub_1003C7360(*(v0 + 1000) + ((*(v0 + 1096) + 32) & ~*(v0 + 1096)) + *(v0 + 1048) * v2, v5, type metadata accessor for IdentifiableAvailableUpdate);
    static Logger.updates.getter();
    sub_1003C7360(v5, v6, type metadata accessor for IdentifiableAvailableUpdate);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      v28 = *(v0 + 920);
      v29 = *(v0 + 904);
      v30 = *(v0 + 896);
      v31 = *(v0 + 880);

      sub_1003C7420(v31, type metadata accessor for IdentifiableAvailableUpdate);
      (*(v29 + 8))(v28, v30);
      if (!*(v0 + 720))
      {
        goto LABEL_16;
      }

LABEL_15:
      swift_getObjectType();
      *(v0 + 600) = 0;
      *(v0 + 608) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *(v0 + 584) = 0xD000000000000014;
      *(v0 + 592) = 0x80000001006C4A80;
      v32._countAndFlagsBits = sub_1005E2220(1);
      String.append(_:)(v32);

      XPCClientProtocol.logMessage(_:)(*(v0 + 584));

      goto LABEL_16;
    }

    v77 = v8;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v81 = v79;
    *v9 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v11 = *(v0 + 424);
    if (!v11 || (, , , os_unfair_lock_lock((v11 + 24)), v12 = *(v11 + 16), v13 = v12, os_unfair_lock_unlock((v11 + 24)), , !v12))
    {
      (*(*(v0 + 832) + 104))(*(v0 + 840), *(v0 + 1100), *(v0 + 824));
      v14 = objc_allocWithZone(type metadata accessor for LogKey());
      v13 = LogKey.init(prefix:)();
    }

    v15 = *(v0 + 904);
    v73 = *(v0 + 896);
    v75 = *(v0 + 920);
    v16 = *(v0 + 880);
    v17 = *(v0 + 848);
    *(v9 + 4) = v13;
    *v10 = v13;
    *(v9 + 12) = 2082;
    *(v0 + 632) = 0;
    *(v0 + 640) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    countAndFlagsBits = v16[1]._countAndFlagsBits;
    object = v16[1]._object;

    *(v0 + 616) = countAndFlagsBits;
    *(v0 + 624) = object;
    v20._countAndFlagsBits = 58;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    String.append(_:)(v16[2]);
    v21._countAndFlagsBits = 58;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    String.append(_:)(v16[3]);
    v22._countAndFlagsBits = 2108704;
    v22._object = 0xE300000000000000;
    String.append(_:)(v22);
    String.append(_:)(*(v16 + *(v17 + 40)));
    v23._countAndFlagsBits = 40;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    String.append(_:)(*(v16 + *(v17 + 36)));
    v24._countAndFlagsBits = 41;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25 = *(v0 + 616);
    v26 = *(v0 + 624);
    sub_1003C7420(v16, type metadata accessor for IdentifiableAvailableUpdate);
    v27 = sub_1002346CC(v25, v26, v81);

    *(v9 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v7, v77, "[%@] Starting update for %{public}s", v9, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_10000710C(v79);

    (*(v15 + 8))(v75, v73);
    if (*(v0 + 720))
    {
      goto LABEL_15;
    }

LABEL_16:
    v33 = *(v0 + 888);
    v34 = *(*(v0 + 848) + 32);
    v35 = URL.host(percentEncoded:)(1);
    if (v35.value._object)
    {
      break;
    }

    sub_1003C7420(*(v0 + 888), type metadata accessor for IdentifiableAvailableUpdate);
    v2 = *(v0 + 1056) + 1;
    if (v2 == *(v0 + 1040))
    {
      goto LABEL_2;
    }
  }

  v80 = v35;
  v36 = URL.port.getter();
  if ((v37 & 1) == 0)
  {
    v38 = v36;
    *(v0 + 568) = v35;
    v39._countAndFlagsBits = 58;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    *(v0 + 664) = v38;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v80 = *(v0 + 568);
  }

  v67 = *(v0 + 1108);
  v69 = *(v0 + 1104);
  v41 = *(v0 + 888);
  v57 = *(v0 + 848);
  v42 = *(v0 + 840);
  v43 = *(v0 + 832);
  v62 = *(v0 + 824);
  v76 = *(v0 + 816);
  v44 = *(v0 + 808);
  v45 = *(v0 + 800);
  v65 = *(v0 + 792);
  v46 = *(v0 + 776);
  v58 = *(v0 + 768);
  v59 = *(v0 + 784);
  v60 = *(v0 + 760);
  v64 = *(v0 + 752);
  v72 = *(v0 + 744);
  v74 = *(v0 + 736);
  v78 = *(v0 + 728);
  v61 = *(v0 + 696);
  v71 = type metadata accessor for ADPInstallConfiguration(0);
  UUID.init()();
  (*(v43 + 104))(v42, v69, v62);
  v47 = objc_allocWithZone(type metadata accessor for LogKey());
  v70 = LogKey.init(prefix:)();
  (*(v45 + 104))(v44, v67, v65);
  v48 = (v41 + *(v57 + 44));
  v63 = v48[1];
  v49 = v41[1];
  v66 = *v41;
  v68 = *v48;
  (*(v46 + 16))(v59, v33 + v34, v58);
  (*(v46 + 56))(v60, 1, 1, v58);
  sub_10020A980(v61, v0 + 376);
  sub_100005934(v41 + *(v57 + 48), v64, &unk_1007809F0);
  v50 = *(v0 + 264);
  v51 = sub_100006D8C((v0 + 240), v50);
  *(v0 + 520) = v80;
  v52 = *(v50 - 8);
  v53 = swift_task_alloc();
  (*(v52 + 16))(v53, v51, v50);
  v54 = sub_100231E84();

  *(v0 + 1064) = sub_10038B61C(v76, v70, v0 + 520, v44, 0, 0, v68, v63, v66, v49, 0, 0, v59, v60, v0 + 376, 0, 0xF000000000000000, 2u, 0, 0, 1u, 0, 1u, v64, 0, v53, v71, &type metadata for WebDistributor, v74, v54, v72);

  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 1072) = sub_100400560(v55, v78);
  v56 = swift_task_alloc();
  *(v0 + 1080) = v56;
  *v56 = v0;
  v56[1] = sub_1003C4E9C;

  return sub_1003FF6B0(v0 + 240);
}

uint64_t sub_1003C59FC()
{
  v113 = v0;
  if (*(v0 + 720))
  {
    swift_getObjectType();
    *(v0 + 552) = 0;
    *(v0 + 560) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v1 = *(v0 + 560);
    *(v0 + 536) = *(v0 + 552);
    *(v0 + 544) = v1;
    v2._countAndFlagsBits = 0xD000000000000019;
    v2._object = 0x80000001006C4A60;
    String.append(_:)(v2);
    v3._countAndFlagsBits = sub_1005E2414();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 8250;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    XPCClientProtocol.logMessage(_:)(*(v0 + 536));
  }

  v5 = *(v0 + 888);
  v6 = *(v0 + 872);
  static Logger.updates.getter();
  sub_1003C7360(v5, v6, type metadata accessor for IdentifiableAvailableUpdate);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v110 = v8;
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 912);
  v11 = *(v0 + 904);
  v12 = *(v0 + 896);
  v13 = *(v0 + 888);
  v14 = *(v0 + 872);
  if (v9)
  {
    v15 = swift_slowAlloc();
    v107 = v10;
    v16 = swift_slowAlloc();
    v112[0] = swift_slowAlloc();
    *v15 = 138412802;
    v17 = sub_100625FA0();
    *(v15 + 4) = v17;
    *v16 = v17;
    v102 = v13;
    *(v15 + 12) = 2082;
    v99 = v12;
    v18 = sub_1005E2414();
    v20 = v19;
    sub_1003C7420(v14, type metadata accessor for IdentifiableAvailableUpdate);
    v21 = sub_1002346CC(v18, v20, v112);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2082;
    swift_getErrorValue();
    v22 = *(*(v0 + 456) - 8);
    swift_task_alloc();
    (*(v22 + 16))();
    v23 = String.init<A>(describing:)();
    v25 = v24;

    v26 = sub_1002346CC(v23, v25, v112);

    *(v15 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v110, "[%@] Unable to enqueue update %{public}s: %{public}s", v15, 0x20u);
    sub_1000032A8(v16, &qword_10077F920);

    swift_arrayDestroy();

    (*(v11 + 8))(v107, v99);
    v27 = v102;
  }

  else
  {

    sub_1003C7420(v14, type metadata accessor for IdentifiableAvailableUpdate);
    (*(v11 + 8))(v10, v12);
    v27 = v13;
  }

  sub_1003C7420(v27, type metadata accessor for IdentifiableAvailableUpdate);
  v28 = *(v0 + 1056) + 1;
  if (v28 == *(v0 + 1040))
  {
LABEL_7:

    sub_10000710C(v0 + 240);

    v29 = *(v0 + 8);

    return v29();
  }

  v111 = (v0 + 672);
  while (1)
  {
    *(v0 + 1056) = v28;
    v31 = *(v0 + 888);
    v32 = *(v0 + 880);
    sub_1003C7360(*(v0 + 1000) + ((*(v0 + 1096) + 32) & ~*(v0 + 1096)) + *(v0 + 1048) * v28, v31, type metadata accessor for IdentifiableAvailableUpdate);
    static Logger.updates.getter();
    sub_1003C7360(v31, v32, type metadata accessor for IdentifiableAvailableUpdate);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      v54 = *(v0 + 920);
      v55 = *(v0 + 904);
      v56 = *(v0 + 896);
      v57 = *(v0 + 880);

      sub_1003C7420(v57, type metadata accessor for IdentifiableAvailableUpdate);
      (*(v55 + 8))(v54, v56);
      if (!*(v0 + 720))
      {
        goto LABEL_21;
      }

LABEL_20:
      swift_getObjectType();
      *(v0 + 600) = 0;
      *(v0 + 608) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *(v0 + 584) = 0xD000000000000014;
      *(v0 + 592) = 0x80000001006C4A80;
      v58._countAndFlagsBits = sub_1005E2220(1);
      String.append(_:)(v58);

      XPCClientProtocol.logMessage(_:)(*(v0 + 584));

      goto LABEL_21;
    }

    v105 = v34;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v111 = v108;
    *v35 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v37 = *(v0 + 424);
    if (!v37 || (, , , os_unfair_lock_lock((v37 + 24)), v38 = *(v37 + 16), v39 = v38, os_unfair_lock_unlock((v37 + 24)), , !v38))
    {
      (*(*(v0 + 832) + 104))(*(v0 + 840), *(v0 + 1100), *(v0 + 824));
      v40 = objc_allocWithZone(type metadata accessor for LogKey());
      v39 = LogKey.init(prefix:)();
    }

    v41 = *(v0 + 904);
    v100 = *(v0 + 896);
    v103 = *(v0 + 920);
    v42 = *(v0 + 880);
    v43 = *(v0 + 848);
    *(v35 + 4) = v39;
    *v36 = v39;
    *(v35 + 12) = 2082;
    *(v0 + 632) = 0;
    *(v0 + 640) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    countAndFlagsBits = v42[1]._countAndFlagsBits;
    object = v42[1]._object;

    *(v0 + 616) = countAndFlagsBits;
    *(v0 + 624) = object;
    v46._countAndFlagsBits = 58;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    String.append(_:)(v42[2]);
    v47._countAndFlagsBits = 58;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    String.append(_:)(v42[3]);
    v48._countAndFlagsBits = 2108704;
    v48._object = 0xE300000000000000;
    String.append(_:)(v48);
    String.append(_:)(*(v42 + *(v43 + 40)));
    v49._countAndFlagsBits = 40;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    String.append(_:)(*(v42 + *(v43 + 36)));
    v50._countAndFlagsBits = 41;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    v51 = *(v0 + 616);
    v52 = *(v0 + 624);
    sub_1003C7420(v42, type metadata accessor for IdentifiableAvailableUpdate);
    v53 = sub_1002346CC(v51, v52, v111);

    *(v35 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v33, v105, "[%@] Starting update for %{public}s", v35, 0x16u);
    sub_1000032A8(v36, &qword_10077F920);

    sub_10000710C(v108);

    (*(v41 + 8))(v103, v100);
    if (*(v0 + 720))
    {
      goto LABEL_20;
    }

LABEL_21:
    v59 = *(v0 + 888);
    v60 = *(*(v0 + 848) + 32);
    v61 = URL.host(percentEncoded:)(1);
    if (v61.value._object)
    {
      break;
    }

    sub_1003C7420(*(v0 + 888), type metadata accessor for IdentifiableAvailableUpdate);
    v28 = *(v0 + 1056) + 1;
    if (v28 == *(v0 + 1040))
    {
      goto LABEL_7;
    }
  }

  v109 = v61;
  v62 = URL.port.getter();
  if ((v63 & 1) == 0)
  {
    v64 = v62;
    *(v0 + 568) = v61;
    v65._countAndFlagsBits = 58;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    *(v0 + 664) = v64;
    v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v66);

    v109 = *(v0 + 568);
  }

  v93 = *(v0 + 1108);
  v95 = *(v0 + 1104);
  v67 = *(v0 + 888);
  v83 = *(v0 + 848);
  v68 = *(v0 + 840);
  v69 = *(v0 + 832);
  v88 = *(v0 + 824);
  v104 = *(v0 + 816);
  v70 = *(v0 + 808);
  v71 = *(v0 + 800);
  v91 = *(v0 + 792);
  v72 = *(v0 + 776);
  v84 = *(v0 + 768);
  v85 = *(v0 + 784);
  v86 = *(v0 + 760);
  v90 = *(v0 + 752);
  v98 = *(v0 + 744);
  v101 = *(v0 + 736);
  v106 = *(v0 + 728);
  v87 = *(v0 + 696);
  v97 = type metadata accessor for ADPInstallConfiguration(0);
  UUID.init()();
  (*(v69 + 104))(v68, v95, v88);
  v73 = objc_allocWithZone(type metadata accessor for LogKey());
  v96 = LogKey.init(prefix:)();
  (*(v71 + 104))(v70, v93, v91);
  v74 = (v67 + *(v83 + 44));
  v94 = *v74;
  v89 = v74[1];
  v75 = v67[1];
  v92 = *v67;
  (*(v72 + 16))(v85, v59 + v60, v84);
  (*(v72 + 56))(v86, 1, 1, v84);
  sub_10020A980(v87, v0 + 376);
  sub_100005934(v67 + *(v83 + 48), v90, &unk_1007809F0);
  v76 = *(v0 + 264);
  v77 = sub_100006D8C((v0 + 240), v76);
  *(v0 + 520) = v109;
  v78 = *(v76 - 8);
  v79 = swift_task_alloc();
  (*(v78 + 16))(v79, v77, v76);
  v80 = sub_100231E84();

  *(v0 + 1064) = sub_10038B61C(v104, v96, v0 + 520, v70, 0, 0, v94, v89, v92, v75, 0, 0, v85, v86, v0 + 376, 0, 0xF000000000000000, 2u, 0, 0, 1u, 0, 1u, v90, 0, v79, v97, &type metadata for WebDistributor, v101, v80, v98);

  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 1072) = sub_100400560(v81, v106);
  v82 = swift_task_alloc();
  *(v0 + 1080) = v82;
  *v82 = v0;
  v82[1] = sub_1003C4E9C;

  return sub_1003FF6B0(v0 + 240);
}

uint64_t sub_1003C681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !*(a2 + 16))
  {
    static Logger.updates.getter();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      v79 = sub_100625FA0();
      *(v77 + 4) = v79;
      *v78 = v79;
      _os_log_impl(&_mh_execute_header, v75, v76, "[%@] Skipping update checks because there are no allowed developers", v77, 0xCu);
      sub_1000032A8(v78, &qword_10077F920);
    }

    (*(v5 + 8))(v7, v4);
    return _swiftEmptyArrayStorage;
  }

  v8 = objc_opt_self();

  v9 = [v8 enumeratorWithOptions:0];
  sub_100005934(a1, &v123, &unk_10077FA50);
  v10 = swift_allocObject();
  v11 = v124;
  *(v10 + 24) = v123;
  *(v10 + 16) = a2;
  *(v10 + 40) = v11;
  *(v10 + 56) = v125;
  *&v117 = sub_1003C74E4;
  *(&v117 + 1) = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v116 = sub_100009BE4;
  *(&v116 + 1) = &unk_100763148;
  v12 = _Block_copy(&aBlock);

  [v9 setFilter:v12];
  _Block_release(v12);
  v13 = [v9 nextObject];
  v109 = v9;
  if (!v13)
  {
    v15 = &_swiftEmptyDictionarySingleton;
    goto LABEL_41;
  }

  v14 = v13;
  v15 = &_swiftEmptyDictionarySingleton;
  do
  {
    v110 = v15;
    while (1)
    {
      v16 = [v14 iTunesMetadata];
      v17 = [v16 distributorInfo];

      v18 = [v17 distributorID];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = [v14 bundleIdentifier];
        if (!v23)
        {
          goto LABEL_15;
        }

        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (v20 == v25 && v22 == v27)
        {
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
LABEL_15:
            *(&v113 + 1) = &type metadata for NativeDistributor;
            v30 = sub_1003000A4();
            goto LABEL_19;
          }
        }

        v31 = [v17 domain];
        if (v31)
        {
          break;
        }
      }

      v114 = 0;
      v113 = 0u;
      v112 = 0u;

      sub_1000032A8(&v112, &unk_10077FA50);
LABEL_7:
      v14 = [v9 nextObject];
      if (!v14)
      {
        v15 = v110;
        goto LABEL_41;
      }
    }

    v32 = v31;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v33;

    *(&v113 + 1) = &type metadata for WebDistributor;
    v30 = sub_100231E84();
LABEL_19:
    v114 = v30;

    *&v112 = v20;
    *(&v112 + 1) = v22;
    sub_1001DFDBC(&v112, &aBlock);
    v34 = [v14 iTunesMetadata];
    v35 = [v34 distributorInfo];

    v36 = [v35 accountID];
    if (!v36)
    {
      goto LABEL_22;
    }

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = *(&v116 + 1);
    v41 = v117;
    sub_100006D8C(&aBlock, *(&v116 + 1));
    if ((*(v41 + 48))(v40, v41))
    {

LABEL_22:

      sub_10000710C(&aBlock);
      goto LABEL_7;
    }

    v42 = [v14 bundleIdentifier];
    if (v42)
    {
      v43 = v42;
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v44;

      sub_10020A980(&aBlock, &v112);
      v45 = *(&v113 + 1);
      sub_100006D8C(&v112, *(&v113 + 1));

      v46 = sub_10056D600(v45);
      v48 = v47;
      v50 = v49;
      sub_10000710C(&v112);
      if (v110[2])
      {
        *&v123 = v46;
        *(&v123 + 1) = v48;
        LOBYTE(v124) = v50 & 1;
        *(&v124 + 1) = v37;
        v125 = v39;
        v111 = sub_100522414(&v123);
        v52 = v51;
        sub_1003C74F8();

        v53 = _swiftEmptyArrayStorage;
        if (v52)
        {
        }
      }

      else
      {
        sub_1003C74F8();

        v53 = _swiftEmptyArrayStorage;
      }

      v111 = v53;
      v54 = [v14 iTunesMetadata];
      v55 = [v54 storeItemIdentifier];

      *&v112 = v55;
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v56;
      v57 = [v14 iTunesMetadata];
      v58 = [v57 versionIdentifier];

      *&v112 = v58;
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_100362AE4(0, *(v59 + 2) + 1, 1, v59);
      }

      v64 = *(v59 + 2);
      v63 = *(v59 + 3);
      if (v64 >= v63 >> 1)
      {
        v59 = sub_100362AE4((v63 > 1), v64 + 1, 1, v59);
      }

      v111 = v59;
      *(v59 + 2) = v64 + 1;
      v65 = &v59[48 * v64];
      v66 = v107;
      *(v65 + 4) = v108;
      *(v65 + 5) = v66;
      v67 = v105;
      *(v65 + 6) = v106;
      *(v65 + 7) = v67;
      *(v65 + 8) = v60;
      *(v65 + 9) = v62;
      sub_10020A980(&aBlock, &v112);
      v68 = *(&v113 + 1);
      sub_100006D8C(&v112, *(&v113 + 1));
      v69 = sub_10056D600(v68);
      v71 = v70;
      LOBYTE(v68) = v72;
      sub_10000710C(&v112);
      v119[0] = v69;
      v119[1] = v71;
      v120 = v68 & 1;
      v121 = v37;
      v122 = v39;
      v73 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v112 = v73;
      sub_1005C216C(v111, v119, isUniquelyReferenced_nonNull_native);
      sub_1003C74F8();

      v15 = v112;
      v9 = v109;
    }

    else
    {

      v15 = v110;
    }

    sub_10000710C(&aBlock);
    v14 = [v9 nextObject];
  }

  while (v14);
LABEL_41:
  v80 = v15 + 64;
  v81 = 1 << v15[32];
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v15 + 8);
  v84 = (v81 + 63) >> 6;

  v86 = 0;
  v111 = _swiftEmptyArrayStorage;
  v110 = v15;
  if (v83)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v87 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v87 >= v84)
    {

      return v111;
    }

    v83 = *&v80[8 * v87];
    ++v86;
    if (v83)
    {
      v86 = v87;
      do
      {
LABEL_48:
        v88 = __clz(__rbit64(v83)) | (v86 << 6);
        v89 = *(v15 + 7);
        v90 = *(v15 + 6) + 40 * v88;
        v91 = *v90;
        v92 = *(v90 + 8);
        v93 = *(v90 + 24);
        v94 = *(v90 + 32);
        v95 = *(v89 + 8 * v88);
        if (*(v90 + 16))
        {
          *(&v116 + 1) = &type metadata for WebDistributor;
          v96 = sub_100231E84();
        }

        else
        {
          *(&v116 + 1) = &type metadata for NativeDistributor;
          v96 = sub_1003000A4();
        }

        *&v117 = v96;
        *&aBlock = v91;
        *(&aBlock + 1) = v92;
        sub_1001DFDBC(&aBlock, &v112);
        sub_1001DFDBC(&v112, &aBlock);
        *(&v117 + 1) = v93;
        *&v118 = v94;
        *(&v118 + 1) = v95;

        sub_10032F7C8();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1003629D8(0, *(v111 + 2) + 1, 1, v111);
          v111 = result;
        }

        v98 = *(v111 + 2);
        v97 = *(v111 + 3);
        if (v98 >= v97 >> 1)
        {
          result = sub_1003629D8((v97 > 1), v98 + 1, 1, v111);
          v111 = result;
        }

        v83 &= v83 - 1;
        v99 = v111;
        *(v111 + 2) = v98 + 1;
        v100 = &v99[64 * v98];
        v101 = aBlock;
        v102 = v116;
        v103 = v118;
        *(v100 + 4) = v117;
        *(v100 + 5) = v103;
        *(v100 + 2) = v101;
        *(v100 + 3) = v102;
        v15 = v110;
      }

      while (v83);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003C7308()
{
  result = qword_10077EE18;
  if (!qword_10077EE18)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EE18);
  }

  return result;
}

uint64_t sub_1003C7360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C73C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == *v2 && *(a1 + 24) == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1003C7420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003C7480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiableAvailableUpdate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C7500(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1003C74F8();
  }

  return result;
}

uint64_t sub_1003C7518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C7560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003C75BC()
{
  result = qword_100783170;
  if (!qword_100783170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783170);
  }

  return result;
}

uint64_t sub_1003C7610(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100783218);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_1003C9A04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_1001F0C48(&qword_100783228);
  sub_1003C9A58();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[5] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003C77DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1001F0C48(&qword_100783280);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_1003CA518();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1003C7970()
{
  v1 = 0x6D726F6674616C70;
  if (*v0 != 1)
  {
    v1 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1936748641;
  }
}

uint64_t sub_1003C79C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003C9B30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003C79F0(uint64_t a1)
{
  v2 = sub_1003C9A04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C7A2C(uint64_t a1)
{
  v2 = sub_1003C9A04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C7A80()
{
  if (*v0)
  {
    return 0x726556656C707061;
  }

  else
  {
    return 0x657449656C707061;
  }
}

uint64_t sub_1003C7AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657449656C707061 && a2 == 0xEB0000000064496DLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726556656C707061 && a2 == 0xEE0064496E6F6973)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1003C7BB8(uint64_t a1)
{
  v2 = sub_1003CA518();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C7BF4(uint64_t a1)
{
  v2 = sub_1003CA518();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1003C7C5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003C7D68()
{
  String.hash(into:)();
}

Swift::Int sub_1003C7E60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003C7F68@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003C9C50(*a1);
  *a2 = result;
  return result;
}

void sub_1003C7F98(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064496DLL;
  v4 = 0x657449656C707061;
  v5 = 0x80000001006C3670;
  v6 = 0xD00000000000001ELL;
  v7 = 0xEB000000004C5255;
  v8 = 0x6572616853707061;
  if (v2 != 3)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001006C3690;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726556656C707061;
    v3 = 0xEE0064496E6F6973;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1003C8060()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0xD00000000000001ELL;
  v4 = 0x6572616853707061;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726556656C707061;
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

unint64_t sub_1003C8124@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003C9C50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C814C(uint64_t a1)
{
  v2 = sub_1003CA614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C8188(uint64_t a1)
{
  v2 = sub_1003CA614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C81C4()
{
  _StringGuts.grow(_:)(30);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x203A64697665202CLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  String.append(_:)(v0[1]);
  v2._countAndFlagsBits = 0x203A504441202CLL;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  type metadata accessor for AvailableRestore();
  type metadata accessor for URL();
  sub_1003CA6C8(&qword_10077EE18, &type metadata accessor for URL);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return 0x3A4449206D657469;
}

uint64_t sub_1003C82F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v3 - 8);
  v28 = v26 - v4;
  v5 = type metadata accessor for URL();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1001F0C48(&qword_1007832A8);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = v26 - v8;
  v10 = type metadata accessor for AvailableRestore();
  __chkstk_darwin(v10);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006D8C(a1, a1[3]);
  sub_1003CA614();
  v31 = v9;
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_10000710C(a1);
  }

  v33 = v10;
  v14 = v29;
  v38 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v15;
  v26[2] = v15;
  v37 = 1;
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[3] = v16;
  v36 = 2;
  v26[0] = sub_1003CA6C8(&qword_100781BB8, &type metadata accessor for URL);
  v26[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v33;
  (*(v14 + 32))(v12 + *(v33 + 24), v7, v5);
  v35 = 3;
  v18 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1002321B0(v18, v12 + *(v17 + 28));
  v34 = 4;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v20;
  v21 = v19;
  (*(v30 + 8))(v31, v32);
  v22 = (v12 + *(v17 + 32));
  v23 = v27;
  v24 = v28;
  *v22 = v21;
  v22[1] = v24;
  sub_100007C80(v12, v23, type metadata accessor for AvailableRestore);
  sub_10000710C(a1);
  return sub_1003CA668(v12, type metadata accessor for AvailableRestore);
}

uint64_t sub_1003C8820(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7470697263736564;
  }

  else
  {
    v3 = 1701080931;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v5 = 0x7470697263736564;
  }

  else
  {
    v5 = 1701080931;
  }

  if (*a2)
  {
    v6 = 0xEB000000006E6F69;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003C88C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003C894C()
{
  String.hash(into:)();
}

Swift::Int sub_1003C89BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003C8A3C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100759EE8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003C8A9C(uint64_t *a1@<X8>)
{
  v2 = 1701080931;
  if (*v1)
  {
    v2 = 0x7470697263736564;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1003C8ADC()
{
  if (*v0)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_1003C8B18@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100759EE8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1003C8B7C(uint64_t a1)
{
  v2 = sub_1003CAC98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C8BB8(uint64_t a1)
{
  v2 = sub_1003CAC98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C8BF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003C9C9C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1003C8C24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726556656C707061;
  v4 = 0xEE0064496E6F6973;
  if (v2 != 1)
  {
    v3 = 0x6572756C696166;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657449656C707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB0000000064496DLL;
  }

  v7 = 0x726556656C707061;
  v8 = 0xEE0064496E6F6973;
  if (*a2 != 1)
  {
    v7 = 0x6572756C696166;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657449656C707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB0000000064496DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1003C8D44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003C8DFC()
{
  String.hash(into:)();
}

Swift::Int sub_1003C8EA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003C8F54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003C9E48(*a1);
  *a2 = result;
  return result;
}

void sub_1003C8F84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064496DLL;
  v4 = 0xEE0064496E6F6973;
  v5 = 0x726556656C707061;
  if (v2 != 1)
  {
    v5 = 0x6572756C696166;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657449656C707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1003C8FF8()
{
  v1 = 0x726556656C707061;
  if (*v0 != 1)
  {
    v1 = 0x6572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657449656C707061;
  }
}

unint64_t sub_1003C9068@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003C9E48(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C9090(uint64_t a1)
{
  v2 = sub_1003CA56C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C90CC(uint64_t a1)
{
  v2 = sub_1003CA56C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1003C9108@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003C9E94(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1003C9158()
{
  if (*v0)
  {
    return 0x736572756C696166;
  }

  else
  {
    return 0x7365726F74736572;
  }
}

uint64_t sub_1003C918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365726F74736572 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736572756C696166 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1003C9268(uint64_t a1)
{
  v2 = sub_1003CA338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C92A4(uint64_t a1)
{
  v2 = sub_1003CA338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C92E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003CA128(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1003C930C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = type metadata accessor for Platform();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Restore();
  __chkstk_darwin(v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v44 = v7;
    v45 = v6;
    v46 = a2;
    v47 = a3;
    v14 = *(v10 + 80);
    v43[1] = a1;
    v15 = a1 + ((v14 + 32) & ~v14);
    v16 = *(v10 + 72);
    v17 = _swiftEmptyArrayStorage;
    v49 = v16;
    do
    {
      sub_100007C80(v15, v12, type metadata accessor for Restore);
      v18 = &v12[v9[15]];
      if (v18[8])
      {
        sub_1003CA668(v12, type metadata accessor for Restore);
      }

      else
      {
        v19 = *v18;
        v20 = &v12[v9[16]];
        if (v20[8])
        {
          *&v52[0] = v19;
          v21 = dispatch thunk of CustomStringConvertible.description.getter();
          v23 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100363A58(0, *(v17 + 2) + 1, 1, v17);
          }

          v25 = *(v17 + 2);
          v24 = *(v17 + 3);
          if (v25 >= v24 >> 1)
          {
            v17 = sub_100363A58((v24 > 1), v25 + 1, 1, v17);
          }

          sub_1003CA668(v12, type metadata accessor for Restore);
          *(v17 + 2) = v25 + 1;
          v26 = &v17[32 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
          *(v26 + 6) = 0;
          *(v26 + 7) = 0;
        }

        else
        {
          if (v12[v9[22]])
          {
            v50 = 0;
            v27 = 0;
          }

          else
          {
            *&v52[0] = *v20;
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            v27 = v28;
          }

          *&v52[0] = v19;
          v29 = dispatch thunk of CustomStringConvertible.description.getter();
          v31 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100363A58(0, *(v17 + 2) + 1, 1, v17);
          }

          v33 = *(v17 + 2);
          v32 = *(v17 + 3);
          if (v33 >= v32 >> 1)
          {
            v17 = sub_100363A58((v32 > 1), v33 + 1, 1, v17);
          }

          sub_1003CA668(v12, type metadata accessor for Restore);
          *(v17 + 2) = v33 + 1;
          v34 = &v17[32 * v33];
          *(v34 + 4) = v29;
          *(v34 + 5) = v31;
          v16 = v49;
          *(v34 + 6) = v50;
          *(v34 + 7) = v27;
        }
      }

      v15 += v16;
      --v13;
    }

    while (v13);

    a2 = v46;
    a3 = v47;
    v7 = v44;
    v6 = v45;
    if (*(v46 + 108))
    {
      goto LABEL_21;
    }

LABEL_23:
    v37 = v48;
    static Platform.iOS.getter();
    v36 = Platform.description.getter();
    v35 = v38;
    (*(v7 + 8))(v37, v6);
    goto LABEL_24;
  }

  v17 = _swiftEmptyArrayStorage;
  if ((*(a2 + 108) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v35 = 0xE600000000000000;
  v36 = 0x534F64615069;
LABEL_24:
  v39 = *(a2 + 72);
  v52[0] = *(a2 + 56);
  v52[1] = v39;
  v40 = *(a2 + 88);
  v53 = v40;
  v41 = *(&v39 + 1);
  result = sub_1003C974C(v52, v51);
  *a3 = v17;
  a3[1] = v36;
  a3[2] = v35;
  a3[3] = v41;
  a3[4] = v40;
  return result;
}

uint64_t sub_1003C97B8(uint64_t *a1, int a2)
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

uint64_t sub_1003C9800(uint64_t result, int a2, int a3)
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

uint64_t sub_1003C984C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1003C9894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AvailableRestore()
{
  result = qword_1007831D0;
  if (!qword_1007831D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003C9970()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10037F89C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1003C9A04()
{
  result = qword_100783220;
  if (!qword_100783220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783220);
  }

  return result;
}

unint64_t sub_1003C9A58()
{
  result = qword_100783230;
  if (!qword_100783230)
  {
    sub_1001F76D0(&qword_100783228);
    sub_1003C9ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783230);
  }

  return result;
}

unint64_t sub_1003C9ADC()
{
  result = qword_100783238;
  if (!qword_100783238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783238);
  }

  return result;
}

uint64_t sub_1003C9B30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936748641 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
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

unint64_t sub_1003C9C50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100759E50, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003C9C9C(void *a1)
{
  v3 = sub_1001F0C48(&qword_100783330);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100006D8C(a1, v7);
  sub_1003CAC98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_1003C9E48(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100759F38, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003C9E94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100783290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1003CA56C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v23) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v21 = a2;
  v22 = v9;
  LOBYTE(v23) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v20 = v12;
  v26 = 2;
  sub_1003CA5C0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v23;
  v16 = v24;
  v17 = v25;

  sub_10000710C(a1);

  v19 = v21;
  *v21 = v22;
  v19[1] = v11;
  v19[2] = v20;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = v17;
  return result;
}

uint64_t sub_1003CA128(void *a1)
{
  v2 = sub_1001F0C48(&qword_100783240);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100006D8C(a1, a1[3]);
  sub_1003CA338();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1001F0C48(&qword_100783250);
  HIBYTE(v8) = 0;
  sub_1003CA38C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  sub_1001F0C48(&qword_100783268);
  HIBYTE(v8) = 1;
  sub_1003CA440();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000710C(a1);
  return v7;
}

unint64_t sub_1003CA338()
{
  result = qword_100783248;
  if (!qword_100783248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783248);
  }

  return result;
}

unint64_t sub_1003CA38C()
{
  result = qword_100783258;
  if (!qword_100783258)
  {
    sub_1001F76D0(&qword_100783250);
    sub_1003CA6C8(&qword_100783260, type metadata accessor for AvailableRestore);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783258);
  }

  return result;
}

unint64_t sub_1003CA440()
{
  result = qword_100783270;
  if (!qword_100783270)
  {
    sub_1001F76D0(&qword_100783268);
    sub_1003CA4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783270);
  }

  return result;
}

unint64_t sub_1003CA4C4()
{
  result = qword_100783278;
  if (!qword_100783278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783278);
  }

  return result;
}

unint64_t sub_1003CA518()
{
  result = qword_100783288;
  if (!qword_100783288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783288);
  }

  return result;
}

unint64_t sub_1003CA56C()
{
  result = qword_100783298;
  if (!qword_100783298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783298);
  }

  return result;
}

unint64_t sub_1003CA5C0()
{
  result = qword_1007832A0;
  if (!qword_1007832A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832A0);
  }

  return result;
}

unint64_t sub_1003CA614()
{
  result = qword_1007832B0;
  if (!qword_1007832B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832B0);
  }

  return result;
}

uint64_t sub_1003CA668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003CA6C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003CA774()
{
  result = qword_1007832B8;
  if (!qword_1007832B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832B8);
  }

  return result;
}

unint64_t sub_1003CA7CC()
{
  result = qword_1007832C0;
  if (!qword_1007832C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832C0);
  }

  return result;
}

unint64_t sub_1003CA824()
{
  result = qword_1007832C8;
  if (!qword_1007832C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832C8);
  }

  return result;
}

unint64_t sub_1003CA87C()
{
  result = qword_1007832D0;
  if (!qword_1007832D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832D0);
  }

  return result;
}

unint64_t sub_1003CA8D4()
{
  result = qword_1007832D8;
  if (!qword_1007832D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832D8);
  }

  return result;
}

unint64_t sub_1003CA92C()
{
  result = qword_1007832E0;
  if (!qword_1007832E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832E0);
  }

  return result;
}

unint64_t sub_1003CA984()
{
  result = qword_1007832E8;
  if (!qword_1007832E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832E8);
  }

  return result;
}

unint64_t sub_1003CA9DC()
{
  result = qword_1007832F0;
  if (!qword_1007832F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832F0);
  }

  return result;
}

unint64_t sub_1003CAA34()
{
  result = qword_1007832F8;
  if (!qword_1007832F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007832F8);
  }

  return result;
}

unint64_t sub_1003CAA8C()
{
  result = qword_100783300;
  if (!qword_100783300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783300);
  }

  return result;
}

unint64_t sub_1003CAAE4()
{
  result = qword_100783308;
  if (!qword_100783308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783308);
  }

  return result;
}

unint64_t sub_1003CAB3C()
{
  result = qword_100783310;
  if (!qword_100783310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783310);
  }

  return result;
}

unint64_t sub_1003CAB94()
{
  result = qword_100783318;
  if (!qword_100783318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783318);
  }

  return result;
}

unint64_t sub_1003CABEC()
{
  result = qword_100783320;
  if (!qword_100783320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783320);
  }

  return result;
}

unint64_t sub_1003CAC44()
{
  result = qword_100783328;
  if (!qword_100783328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783328);
  }

  return result;
}

unint64_t sub_1003CAC98()
{
  result = qword_100783338;
  if (!qword_100783338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783338);
  }

  return result;
}

unint64_t sub_1003CAD00()
{
  result = qword_100783340;
  if (!qword_100783340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783340);
  }

  return result;
}

unint64_t sub_1003CAD58()
{
  result = qword_100783348;
  if (!qword_100783348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783348);
  }

  return result;
}

unint64_t sub_1003CADB0()
{
  result = qword_100783350;
  if (!qword_100783350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783350);
  }

  return result;
}

void sub_1003CAE58()
{
  v0 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v0 - 8);
  v29 = v28 - v1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v28 - v7;
  v9 = sub_1003CB3C4();
  static Logger.library.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v28[1] = v6;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v2;
    v15 = v14;
    v32[0] = v14;
    *v13 = 136446210;
    v31 = v9;
    sub_1001F0C48(&unk_10077FB40);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v16 = BidirectionalCollection<>.joined(separator:)();
    v18 = sub_1002346CC(v16, v17, v32);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received application registered notification for %{public}s", v13, 0xCu);
    sub_10000710C(v15);
    v2 = v28[0];
  }

  (*(v3 + 8))(v8, v2);

  v20 = sub_1005DA314(v19);

  v21 = v30;
  if (*(v20 + 16))
  {
    v22 = type metadata accessor for TaskPriority();
    v23 = v29;
    (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v21;
    *(v24 + 40) = 1;
    *(v24 + 48) = v20;

    sub_1004A673C(0, 0, v23, &unk_1006A9148, v24);
  }

  else
  {
  }

  v32[0] = 0xD000000000000012;
  v32[1] = 0x80000001006C2DF0;
  __chkstk_darwin(v25);
  v28[-2] = v32;
  if (sub_10020A1BC(sub_1001F80EC, &v28[-4], v9))
  {
    v26 = *(v21 + 16);
    os_unfair_lock_lock((v26 + 88));
    v27 = *(v26 + 40);
    if (v27)
    {
      sub_100006D8C((v26 + 16), v27);

      os_unfair_lock_unlock((v26 + 88));

      sub_100650534(0xD000000000000012, 0x80000001006C2DF0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void *sub_1003CB3C4()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1005223D0(v5), (v3 & 1) == 0))
  {

    sub_10039DCC4(v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_10020A6D0(*(v1 + 56) + 32 * v2, &v6);
  sub_10039DCC4(v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_1000032A8(&v6, &qword_100783A30);
    return _swiftEmptyArrayStorage;
  }

  sub_1001F0C48(&unk_10077FB40);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003CB4F8()
{
  v1 = v0;
  v2 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1003CB3C4();
  static Logger.library.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v4;
    v13 = v12;
    v25 = swift_slowAlloc();
    v28 = v9;
    v29 = v25;
    *v13 = 136446210;
    v26 = v5;
    sub_1001F0C48(&unk_10077FB40);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = sub_1002346CC(v14, v15, &v29);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received application unregistered notification for %{public}s", v13, 0xCu);
    sub_10000710C(v25);

    v4 = v27;

    (*(v6 + 8))(v8, v26);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v18 = sub_1005DA314(v17);

  if (*(v18 + 16))
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = v1;
    *(v20 + 40) = 0;
    *(v20 + 48) = v18;

    sub_1004A673C(0, 0, v4, &unk_1006A90D8, v20);
  }

  else
  {
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v1;
  v22[5] = v9;

  sub_100494DB4(0, 0, v4, &unk_1006A90E8, v22);

  return sub_10048C4C4();
}

uint64_t sub_1003CB8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  sub_1001F0C48(&qword_1007812A0);
  v5[27] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for DDMDeclaration(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v5[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003CBA4C, 0, 0);
}

uint64_t sub_1003CBA4C()
{
  v1 = *(v0[25] + 16);
  os_unfair_lock_lock(v1 + 22);
  v2 = sub_100005934(&v1[4], (v0 + 11), &qword_1007833F8);
  if (!v0[14])
  {
    goto LABEL_47;
  }

  v5 = v0[26];
  sub_10026FEE4((v0 + 11), (v0 + 2));
  os_unfair_lock_unlock(v1 + 22);
  v6 = *(v5 + 16);
  v0[33] = v6;
  v7 = v0[26];
  if (v6)
  {
    v0[38] = 0;
    v8 = *(v7 + 32);
    v0[39] = v8;
    v9 = *(v7 + 40);
    v0[40] = v9;
    sub_100006D8C(v0 + 2, v0[5]);

    sub_10065263C(v8, v9);

    sub_100006D8C(v0 + 2, v0[5]);

    v10 = sub_1000071AC();
    v0[20] = v8;
    v0[21] = v9;
    v11 = swift_task_alloc();
    *(v11 + 16) = v0 + 20;
    v12 = sub_10020A1BC(sub_1001F7FFC, v11, v10);

    if ((v12 & 1) == 0)
    {
LABEL_21:
      sub_100651160(v10);
      v23 = v0[32];

      v24 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v24;
      v26[5] = v8;
      v26[6] = v9;

      sub_100494DB4(0, 0, v23, &unk_1006A9100, v26);

      v27 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
      v0[41] = v27;

      v2 = sub_1003CC180;
      v3 = v27;
      v4 = 0;

      return _swift_task_switch(v2, v3, v4);
    }

    v2 = sub_1003D41C8(v10, v8, v9);
    if (v3)
    {
      v13 = *(v10 + 16);
      v14 = v13;
      goto LABEL_13;
    }

    v14 = v2;
    v19 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return _swift_task_switch(v2, v3, v4);
    }

    v20 = *(v10 + 16);

    if (v19 == v20)
    {
LABEL_11:

      v13 = *(v10 + 16);
      if (v13 >= v14)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
LABEL_13:
          if (!__OFADD__(v13, v14 - v13))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v0[24] = v10;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v14 > *(v10 + 24) >> 1)
            {
              if (v13 <= v14)
              {
                v22 = v14;
              }

              else
              {
                v22 = v13;
              }

              v10 = sub_100009530(isUniquelyReferenced_nonNull_native, v22, 1, v10);
              v0[24] = v10;
            }

            sub_100009640(v14, v13, 0);
            goto LABEL_21;
          }

          goto LABEL_43;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      v28 = 16 * v14;
      while (v19 < v20)
      {
        v30 = *(v10 + v28 + 48);
        v31 = *(v10 + v28 + 56);
        if (v30 != v8 || v31 != v9)
        {
          v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v2 & 1) == 0)
          {
            if (v19 != v14)
            {
              if (v14 >= v20)
              {
                goto LABEL_44;
              }

              v33 = (v10 + 32 + 16 * v14);
              v34 = v33[1];
              v36 = *v33;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_100659A28(v10);
              }

              v35 = v10 + 16 * v14;
              *(v35 + 32) = v30;
              *(v35 + 40) = v31;

              if (v19 >= *(v10 + 16))
              {
                goto LABEL_45;
              }

              v29 = v10 + v28;
              *(v29 + 48) = v36;
              *(v29 + 56) = v34;
            }

            ++v14;
          }
        }

        ++v19;
        v20 = *(v10 + 16);
        v28 += 16;
        if (v19 == v20)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  v15 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
  v0[34] = v15;
  v16 = swift_task_alloc();
  v0[35] = v16;
  *(v16 + 16) = v7;

  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v17[1] = sub_1003CC030;

  return sub_10052C9E4(sub_10052C9E4, sub_1003D44D8, v16, v15);
}

uint64_t sub_1003CC030()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1003CDCC0;
  }

  else
  {
    v2 = sub_1003CD8F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003CC180()
{
  v1 = v0[40];
  v2 = v0[39];
  v3 = *(v0[41] + 112);
  v4 = swift_task_alloc();
  v0[42] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_1003CC270;
  v6 = v0[28];

  return sub_1003AF648(v6, sub_1003D44BC, v4, v3);
}

uint64_t sub_1003CC270()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {

    v4 = sub_1003CCBA8;
    v5 = v3;
  }

  else
  {

    v4 = sub_1003CC3F4;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003CC3F4()
{
  v1 = v0[28];
  if ((*(v0[30] + 48))(v1, 1, v0[29]) == 1)
  {

    v2 = v0[44];
    sub_1000032A8(v0[28], &unk_1007809E0);
    v3 = v0[38] + 1;
    if (v3 == v0[33])
    {
      v4 = v0[26];
      v5 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
      v0[34] = v5;
      v6 = swift_task_alloc();
      v0[35] = v6;
      *(v6 + 16) = v4;

      v7 = swift_task_alloc();
      v0[36] = v7;
      *v7 = v0;
      v7[1] = sub_1003CC030;

      return sub_10052C9E4(sub_10052C9E4, sub_1003D44D8, v6, v5);
    }

    v0[38] = v3;
    v21 = v0[26] + 16 * v3;
    v22 = *(v21 + 32);
    v0[39] = v22;
    v23 = *(v21 + 40);
    v0[40] = v23;
    sub_100006D8C(v0 + 2, v0[5]);

    sub_10065263C(v22, v23);

    sub_100006D8C(v0 + 2, v0[5]);

    v24 = sub_1000071AC();
    v0[20] = v22;
    v0[21] = v23;
    v25 = swift_task_alloc();
    *(v25 + 16) = v0 + 20;
    v26 = sub_10020A1BC(sub_1001F7FFC, v25, v24);

    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }

    v27 = sub_1003D41C8(v24, v22, v23);
    if (v28)
    {
      v30 = *(v24 + 16);
      v31 = v30;
      goto LABEL_16;
    }

    v31 = v27;
    v50 = v2;
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
LABEL_52:
      __break(1u);
      return _swift_task_switch(v27, v28, v29);
    }

    v33 = *(v24 + 16);

    if (v32 == v33)
    {
LABEL_14:

      v30 = *(v24 + 16);
      if (v30 >= v31)
      {
        v2 = v50;
        if ((v31 & 0x8000000000000000) == 0)
        {
LABEL_16:
          if (!__OFADD__(v30, v31 - v30))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v0[24] = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v31 > *(v24 + 24) >> 1)
            {
              if (v30 <= v31)
              {
                v35 = v31;
              }

              else
              {
                v35 = v30;
              }

              v24 = sub_100009530(isUniquelyReferenced_nonNull_native, v35, 1, v24);
              v0[24] = v24;
            }

            sub_100009640(v31, v30, 0);
LABEL_24:
            sub_100651160(v24);
            if (v2)
            {

              sub_10000710C((v0 + 2));

              v36 = v0[1];

              return v36();
            }

            v37 = v0[32];

            v38 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
            v39 = type metadata accessor for TaskPriority();
            (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
            v40 = swift_allocObject();
            v40[2] = 0;
            v40[3] = 0;
            v40[4] = v38;
            v40[5] = v22;
            v40[6] = v23;

            sub_100494DB4(0, 0, v37, &unk_1006A9100, v40);

            v41 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
            v0[41] = v41;

            v27 = sub_1003CC180;
            v28 = v41;
            v29 = 0;

            return _swift_task_switch(v27, v28, v29);
          }

          goto LABEL_49;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    else
    {
      v42 = 16 * v31;
      while (v32 < v33)
      {
        v43 = *(v24 + v42 + 48);
        v44 = *(v24 + v42 + 56);
        if (v43 != v22 || v44 != v23)
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v27 & 1) == 0)
          {
            if (v32 != v31)
            {
              if (v31 >= v33)
              {
                goto LABEL_50;
              }

              v46 = (v24 + 32 + 16 * v31);
              v47 = v46[1];
              v51 = *v46;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = sub_100659A28(v24);
              }

              v48 = v24 + 16 * v31;
              *(v48 + 32) = v43;
              *(v48 + 40) = v44;

              if (v32 >= *(v24 + 16))
              {
                goto LABEL_51;
              }

              v49 = v24 + v42;
              *(v49 + 48) = v51;
              *(v49 + 56) = v47;
            }

            ++v31;
          }
        }

        ++v32;
        v33 = *(v24 + 16);
        v42 += 16;
        if (v32 == v33)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

  v10 = v0[39];
  v9 = v0[40];
  sub_1003D46A4(v1, v0[31], type metadata accessor for DDMDeclaration);
  v0[22] = 4801613;
  v0[23] = 0xE300000000000000;
  sub_1001F0C48(&qword_10077E910);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10069E680;
  v12 = String.hashValue.getter();
  *(v11 + 56) = &type metadata for Int;
  *(v11 + 64) = &protocol witness table for Int;
  *(v11 + 32) = v12;
  v13._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 58;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v10;
  v15._object = v9;
  String.append(_:)(v15);

  v16 = objc_allocWithZone(type metadata accessor for LogKey());
  v17 = LogKey.init(string:)();
  v0[45] = v17;
  v18 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v0[46] = v18;

  v19 = swift_task_alloc();
  v0[47] = v19;
  *v19 = v0;
  v19[1] = sub_1003CD1EC;
  v20 = v0[31];

  return sub_1003E7C68(v20, v18, v17);
}

uint64_t sub_1003CCBA8()
{

  return _swift_task_switch(sub_1003CCC10, 0, 0);
}

uint64_t sub_1003CCC10()
{
  (*(v0[30] + 56))(v0[28], 1, 1, v0[29]);
  sub_1000032A8(v0[28], &unk_1007809E0);
  v1 = v0[38] + 1;
  if (v1 != v0[33])
  {
    v0[38] = v1;
    v7 = v0[26] + 16 * v1;
    v8 = *(v7 + 32);
    v0[39] = v8;
    v9 = *(v7 + 40);
    v0[40] = v9;
    sub_100006D8C(v0 + 2, v0[5]);

    sub_10065263C(v8, v9);

    sub_100006D8C(v0 + 2, v0[5]);

    v10 = sub_1000071AC();
    v0[20] = v8;
    v0[21] = v9;
    v11 = swift_task_alloc();
    *(v11 + 16) = v0 + 20;
    v12 = sub_10020A1BC(sub_1001F7FFC, v11, v10);

    if ((v12 & 1) == 0)
    {
LABEL_20:
      sub_100651160(v10);
      v22 = v0[32];

      v23 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v23;
      v25[5] = v8;
      v25[6] = v9;

      sub_100494DB4(0, 0, v22, &unk_1006A9100, v25);

      v26 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
      v0[41] = v26;

      v13 = sub_1003CC180;
      v14 = v26;
      v15 = 0;

      return _swift_task_switch(v13, v14, v15);
    }

    v13 = sub_1003D41C8(v10, v8, v9);
    if (v14)
    {
      v16 = *(v10 + 16);
      v17 = v16;
      goto LABEL_12;
    }

    v17 = v13;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_45:
      __break(1u);
      return _swift_task_switch(v13, v14, v15);
    }

    v19 = *(v10 + 16);

    if (v18 == v19)
    {
LABEL_10:

      v16 = *(v10 + 16);
      if (v16 >= v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
LABEL_12:
          if (!__OFADD__(v16, v17 - v16))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v0[24] = v10;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v17 > *(v10 + 24) >> 1)
            {
              if (v16 <= v17)
              {
                v21 = v17;
              }

              else
              {
                v21 = v16;
              }

              v10 = sub_100009530(isUniquelyReferenced_nonNull_native, v21, 1, v10);
              v0[24] = v10;
            }

            sub_100009640(v17, v16, 0);
            goto LABEL_20;
          }

          goto LABEL_42;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v27 = 16 * v17;
      while (v18 < v19)
      {
        v29 = *(v10 + v27 + 48);
        v30 = *(v10 + v27 + 56);
        if (v29 != v8 || v30 != v9)
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v13 & 1) == 0)
          {
            if (v18 != v17)
            {
              if (v17 >= v19)
              {
                goto LABEL_43;
              }

              v32 = (v10 + 32 + 16 * v17);
              v33 = v32[1];
              v35 = *v32;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_100659A28(v10);
              }

              v34 = v10 + 16 * v17;
              *(v34 + 32) = v29;
              *(v34 + 40) = v30;

              if (v18 >= *(v10 + 16))
              {
                goto LABEL_44;
              }

              v28 = v10 + v27;
              *(v28 + 48) = v35;
              *(v28 + 56) = v33;
            }

            ++v17;
          }
        }

        ++v18;
        v19 = *(v10 + 16);
        v27 += 16;
        if (v18 == v19)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  v2 = v0[26];
  v3 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
  v0[34] = v3;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *(v4 + 16) = v2;

  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_1003CC030;

  return sub_10052C9E4(sub_10052C9E4, sub_1003D44D8, v4, v3);
}

uint64_t sub_1003CD1EC()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1003CDBFC;
  }

  else
  {
    v2 = sub_1003CD320;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003CD320()
{
  v1 = *(v0 + 248);

  sub_1003D470C(v1, type metadata accessor for DDMDeclaration);
  v2 = *(v0 + 304) + 1;
  if (v2 == *(v0 + 264))
  {
    v3 = *(v0 + 208);
    v4 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
    *(v0 + 272) = v4;
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *(v5 + 16) = v3;

    v6 = swift_task_alloc();
    *(v0 + 288) = v6;
    *v6 = v0;
    v6[1] = sub_1003CC030;

    return sub_10052C9E4(sub_10052C9E4, sub_1003D44D8, v5, v4);
  }

  v8 = *(v0 + 384);
  *(v0 + 304) = v2;
  v9 = *(v0 + 208) + 16 * v2;
  v10 = *(v9 + 32);
  *(v0 + 312) = v10;
  v11 = *(v9 + 40);
  *(v0 + 320) = v11;
  sub_100006D8C((v0 + 16), *(v0 + 40));

  sub_10065263C(v10, v11);

  sub_100006D8C((v0 + 16), *(v0 + 40));

  v12 = sub_1000071AC();
  *(v0 + 160) = v10;
  *(v0 + 168) = v11;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 160;
  v14 = sub_10020A1BC(sub_1001F7FFC, v13, v12);

  if (v14)
  {
    v15 = sub_1003D41C8(v12, v10, v11);
    if (v16)
    {
      v18 = *(v12 + 16);
      v19 = v18;
      goto LABEL_12;
    }

    v19 = v15;
    v38 = v8;
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_49:
      __break(1u);
      return _swift_task_switch(v15, v16, v17);
    }

    v21 = *(v12 + 16);

    if (v20 == v21)
    {
LABEL_10:

      v18 = *(v12 + 16);
      if (v18 >= v19)
      {
        v8 = v38;
        if ((v19 & 0x8000000000000000) == 0)
        {
LABEL_12:
          if (!__OFADD__(v18, v19 - v18))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 192) = v12;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(v12 + 24) >> 1)
            {
              if (v18 <= v19)
              {
                v23 = v19;
              }

              else
              {
                v23 = v18;
              }

              v12 = sub_100009530(isUniquelyReferenced_nonNull_native, v23, 1, v12);
              *(v0 + 192) = v12;
            }

            sub_100009640(v19, v18, 0);
            goto LABEL_20;
          }

          goto LABEL_46;
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    else
    {
      v30 = 16 * v19;
      while (v20 < v21)
      {
        v32 = *(v12 + v30 + 48);
        v33 = *(v12 + v30 + 56);
        if (v32 != v10 || v33 != v11)
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v15 & 1) == 0)
          {
            if (v20 != v19)
            {
              if (v19 >= v21)
              {
                goto LABEL_47;
              }

              v35 = (v12 + 32 + 16 * v19);
              v36 = v35[1];
              v39 = *v35;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_100659A28(v12);
              }

              v37 = v12 + 16 * v19;
              *(v37 + 32) = v32;
              *(v37 + 40) = v33;

              if (v20 >= *(v12 + 16))
              {
                goto LABEL_48;
              }

              v31 = v12 + v30;
              *(v31 + 48) = v39;
              *(v31 + 56) = v36;
            }

            ++v19;
          }
        }

        ++v20;
        v21 = *(v12 + 16);
        v30 += 16;
        if (v20 == v21)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_20:
  sub_100651160(v12);
  if (!v8)
  {
    v25 = *(v0 + 256);

    v26 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v26;
    v28[5] = v10;
    v28[6] = v11;

    sub_100494DB4(0, 0, v25, &unk_1006A9100, v28);

    v29 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 328) = v29;

    v15 = sub_1003CC180;
    v16 = v29;
    v17 = 0;

    return _swift_task_switch(v15, v16, v17);
  }

  sub_10000710C(v0 + 16);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1003CD8F4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = sub_100006D8C(v0 + 2, v0[5]);
  sub_100005934(*v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v1, &qword_1007812A0);
  v4 = swift_task_alloc();
  v0[49] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v0[50] = v5;
  *v5 = v0;
  v5[1] = sub_1003CDA08;

  return sub_10052FC18(sub_10052FC18, sub_1003D44F4, v4);
}

uint64_t sub_1003CDA08()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  sub_1000032A8(*(v2 + 216), &qword_1007812A0);

  if (v0)
  {
    v3 = sub_1003CDD5C;
  }

  else
  {
    v3 = sub_1003CDB68;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003CDB68()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}