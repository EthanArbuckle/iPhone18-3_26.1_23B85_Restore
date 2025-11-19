uint64_t sub_10001821C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = [objc_opt_self() currentConnection];
  v15 = v14;
  if (v14)
  {
    [v14 auditToken];
    v20 = v23;
    v21 = v22;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  LOBYTE(v22) = v15 == 0;
  sub_100013DF4(v12, v10, &qword_1000395C0, &qword_10002AF20);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = "getClientEvents";
  *(v16 + 40) = 15;
  *(v16 + 48) = 2;
  *(v16 + 56) = v2;
  v17 = v20;
  *(v16 + 64) = v21;
  *(v16 + 80) = v17;
  *(v16 + 96) = v22;
  *(v16 + 104) = &unk_10002AFC0;
  *(v16 + 112) = 0;
  *(v16 + 120) = a1;
  *(v16 + 128) = a2;
  *(v16 + 136) = ObjectType;
  v18 = v2;

  sub_10001CE60(0, 0, v10, &unk_10002AFD0, v16);

  return sub_10000D6F8(v12, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_10001845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100018524, 0, 0);
}

uint64_t sub_100018524()
{
  v1 = sub_100013BA4(v0[3], v0[4], v0[5], v0[6]);
  v2 = sub_100012C2C(&off_1000355C8);

  sub_10001E28C(&unk_1000355E8);
  if (v2)
  {
    v3 = v0[9];
    static Logger.general.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Installation Events no longer supported", v6, 2u);
    }

    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = v0[2];

    (*(v8 + 8))(v7, v9);
    *v10 = &_swiftEmptyArrayStorage;

    v11 = v0[1];
  }

  else
  {
    v12 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for AppInstallationMetricsError.notAuthorized(_:), v12);
    swift_willThrow();
    v14 = v0[9];

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_10001877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v17;
  *(v8 + 96) = v15;
  *(v8 + 112) = v16;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 224) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v12 = *(*(sub_100002AD8(&qword_100039D70, &qword_10002AFF0) - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1000188D8, 0, 0);
}

uint64_t sub_1000188D8()
{
  v1 = v0;
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  v31 = v3;
  v32 = v0[21];
  v5 = v0[16];
  v7 = v1[8];
  v6 = v1[9];
  v28 = *(v1 + 6);
  v29 = *(v1 + 5);
  v30 = *(v1 + 7);
  v8 = *(v1 + 224);
  (*(v4 + 56))(v2, 1, 1);
  v9 = swift_task_alloc();
  v1[23] = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v28;
  *(v9 + 48) = v7;
  *(v9 + 56) = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = v30;
  *(v9 + 88) = v5;
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  v1[24] = v10;
  v11 = sub_100010170(v7, v8, &_mh_execute_header);
  v1[5] = 0;
  v1[6] = 0;
  os_activity_scope_enter(v11, (v1 + 5));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v1 + 5);
  type metadata accessor for Transaction();
  swift_allocObject();
  v12 = sub_1000158E0();
  v1[25] = v12;
  sub_100013DF4(v2, v32, &qword_100039D70, &qword_10002AFF0);
  v13 = (*(v4 + 48))(v32, 1, v31);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = v1[20];
    v17 = v1[18];
    v16 = v1[19];
    v18 = v1[17];
    v19 = v1[8];
    v33 = v1[9];
    v20 = *(v1 + 224);
    (*(v17 + 32))(v15, v1[21], v18);
    (*(v17 + 16))(v16, v15, v18);
    v21 = type metadata accessor for SignpostInterval();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v14 = sub_100011144(v19, v33, v20, v16);
    (*(v17 + 8))(v15, v18);
  }

  v1[26] = v14;
  if (qword_100039278 != -1)
  {
    swift_once();
  }

  v1[2] = v10;
  v1[3] = v12;
  v1[4] = v14;
  v24 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v25 = swift_task_alloc();
  v1[27] = v25;
  *v25 = v1;
  v25[1] = sub_100018C5C;
  v26 = v1[7];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v26, v1 + 2, &unk_10002B038, v9, 0, 0, 0xD00000000000002ALL, 0x800000010002C360);
}

uint64_t sub_100018C5C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v12 = *v1;

  if (v0)
  {
    v5 = v2[25];
    v4 = v2[26];
    v6 = v2[24];

    v7 = sub_10001EBF8;
  }

  else
  {
    v9 = v2[25];
    v8 = v2[26];
    v10 = v2[24];

    v7 = sub_10001EC88;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100018DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v17;
  *(v8 + 96) = v15;
  *(v8 + 112) = v16;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 224) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v12 = *(*(sub_100002AD8(&qword_100039D70, &qword_10002AFF0) - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_100018F48, 0, 0);
}

uint64_t sub_100018F48()
{
  v1 = v0;
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  v31 = v3;
  v32 = v0[21];
  v5 = v0[16];
  v7 = v1[8];
  v6 = v1[9];
  v28 = *(v1 + 6);
  v29 = *(v1 + 5);
  v30 = *(v1 + 7);
  v8 = *(v1 + 224);
  (*(v4 + 56))(v2, 1, 1);
  v9 = swift_task_alloc();
  v1[23] = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v28;
  *(v9 + 48) = v7;
  *(v9 + 56) = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = v30;
  *(v9 + 88) = v5;
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  v1[24] = v10;
  v11 = sub_100010170(v7, v8, &_mh_execute_header);
  v1[5] = 0;
  v1[6] = 0;
  os_activity_scope_enter(v11, (v1 + 5));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v1 + 5);
  type metadata accessor for Transaction();
  swift_allocObject();
  v12 = sub_1000158E0();
  v1[25] = v12;
  sub_100013DF4(v2, v32, &qword_100039D70, &qword_10002AFF0);
  v13 = (*(v4 + 48))(v32, 1, v31);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = v1[20];
    v17 = v1[18];
    v16 = v1[19];
    v18 = v1[17];
    v19 = v1[8];
    v33 = v1[9];
    v20 = *(v1 + 224);
    (*(v17 + 32))(v15, v1[21], v18);
    (*(v17 + 16))(v16, v15, v18);
    v21 = type metadata accessor for SignpostInterval();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v14 = sub_100011144(v19, v33, v20, v16);
    (*(v17 + 8))(v15, v18);
  }

  v1[26] = v14;
  if (qword_100039278 != -1)
  {
    swift_once();
  }

  v1[2] = v10;
  v1[3] = v12;
  v1[4] = v14;
  v24 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v25 = swift_task_alloc();
  v1[27] = v25;
  *v25 = v1;
  v25[1] = sub_1000192CC;
  v26 = v1[7];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v26, v1 + 2, &unk_10002B098, v9, 0, 0, 0xD00000000000002ALL, 0x800000010002C360);
}

uint64_t sub_1000192CC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v12 = *v1;

  if (v0)
  {
    v5 = v2[25];
    v4 = v2[26];
    v6 = v2[24];

    v7 = sub_10001955C;
  }

  else
  {
    v9 = v2[25];
    v8 = v2[26];
    v10 = v2[24];

    v7 = sub_10001945C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001945C()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];

  sub_10000D6F8(v5, &qword_100039D70, &qword_10002AFF0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10001955C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
}

uint64_t sub_1000195F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v17;
  *(v8 + 96) = v15;
  *(v8 + 112) = v16;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 224) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v12 = *(*(sub_100002AD8(&qword_100039D70, &qword_10002AFF0) - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10001974C, 0, 0);
}

uint64_t sub_10001974C()
{
  v1 = v0;
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  v31 = v3;
  v32 = v0[21];
  v5 = v0[16];
  v7 = v1[8];
  v6 = v1[9];
  v28 = *(v1 + 6);
  v29 = *(v1 + 5);
  v30 = *(v1 + 7);
  v8 = *(v1 + 224);
  (*(v4 + 56))(v2, 1, 1);
  v9 = swift_task_alloc();
  v1[23] = v9;
  *(v9 + 16) = v29;
  *(v9 + 32) = v28;
  *(v9 + 48) = v7;
  *(v9 + 56) = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = v30;
  *(v9 + 88) = v5;
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  v1[24] = v10;
  v11 = sub_100010170(v7, v8, &_mh_execute_header);
  v1[5] = 0;
  v1[6] = 0;
  os_activity_scope_enter(v11, (v1 + 5));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v1 + 5);
  type metadata accessor for Transaction();
  swift_allocObject();
  v12 = sub_1000158E0();
  v1[25] = v12;
  sub_100013DF4(v2, v32, &qword_100039D70, &qword_10002AFF0);
  v13 = (*(v4 + 48))(v32, 1, v31);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = v1[20];
    v17 = v1[18];
    v16 = v1[19];
    v18 = v1[17];
    v19 = v1[8];
    v33 = v1[9];
    v20 = *(v1 + 224);
    (*(v17 + 32))(v15, v1[21], v18);
    (*(v17 + 16))(v16, v15, v18);
    v21 = type metadata accessor for SignpostInterval();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v14 = sub_100011144(v19, v33, v20, v16);
    (*(v17 + 8))(v15, v18);
  }

  v1[26] = v14;
  if (qword_100039278 != -1)
  {
    swift_once();
  }

  v1[2] = v10;
  v1[3] = v12;
  v1[4] = v14;
  v24 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v25 = swift_task_alloc();
  v1[27] = v25;
  *v25 = v1;
  v25[1] = sub_100018C5C;
  v26 = v1[7];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v26, v1 + 2, &unk_10002B000, v9, 0, 0, 0xD00000000000002ALL, 0x800000010002C360);
}

uint64_t sub_100019AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 128) = v21;
  *(v8 + 136) = v22;
  *(v8 + 280) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 88) = a3;
  v9 = type metadata accessor for AppInstallationMetricsError();
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 176) = v12;
  v13 = *(v12 - 8);
  *(v8 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v15 = sub_100002AD8(&qword_100039DA8, &qword_10002B040);
  *(v8 + 216) = v15;
  v16 = *(v15 - 8);
  *(v8 + 224) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v8 + 256) = v18;
  *v18 = v8;
  v18[1] = sub_100019CEC;

  return sub_100011DC0(v8 + 16);
}

uint64_t sub_100019CEC()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_100019DE8, 0, 0);
}

uint64_t sub_100019DE8()
{
  v77 = v0;
  v1 = *(v0 + 48);
  sub_10000D5B4((v0 + 16), *(v0 + 40));
  v2 = sub_100011D74();
  sub_100002B88((v0 + 16));
  if ((v2 & 1) == 0)
  {
    v5 = (v0 + 208);
    v10 = *(v0 + 208);
    static Logger.general.getter();
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v11))
    {
      v9 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, v11, "Not enabled", v12, 2u);
    v9 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
LABEL_7:

LABEL_13:
    v22 = *v5;
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    v25 = *(v0 + 144);
    v26 = *(v0 + 152);

    (*(v24 + 8))(v22, v23);
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    v27 = swift_allocError();
    (*(v26 + 104))(v28, *v9, v25);
    swift_willThrow();
    v29 = *(v0 + 192);
    static Logger.general.getter();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 176);
    if (v32)
    {
      v69 = *(v0 + 120);
      v71 = *(v0 + 176);
      v74 = *(v0 + 192);
      v36 = *(v0 + 112);
      v37 = *(v0 + 280);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v76 = v40;
      *v38 = 136315394;
      v41 = StaticString.description.getter();
      v43 = sub_10001DC98(v41, v42, &v76);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2114;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v44;
      *v39 = v44;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error in %s: %{public}@", v38, 0x16u);
      sub_10000D6F8(v39, &qword_100039DA0, &qword_10002A740);

      sub_100002B88(v40);

      (*(v34 + 8))(v74, v71);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v45 = *(v0 + 160);
    v46 = *(v0 + 144);
    *(v0 + 56) = v27;
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    v47 = swift_dynamicCast();
    v48 = *(v0 + 168);
    if (v47)
    {
      v49 = *(*(v0 + 152) + 32);
      v49(*(v0 + 168), *(v0 + 160), *(v0 + 144));
      v50 = *(v0 + 56);
    }

    else
    {
      v51 = *(v0 + 144);
      v52 = *(v0 + 152);
      v53 = *(v0 + 56);

      (*(v52 + 104))(v48, enum case for AppInstallationMetricsError.unknown(_:), v51);
      v49 = *(v52 + 32);
    }

    v54 = *(v0 + 248);
    v55 = *(v0 + 216);
    v56 = *(v0 + 224);
    v49(v54, *(v0 + 168), *(v0 + 144));
    (*(v56 + 104))(v54, enum case for ServiceResult.failure<A>(_:), v55);
    v57 = *(v0 + 232);
    v58 = *(v0 + 216);
    (*(*(v0 + 224) + 16))(v57, *(v0 + 248), v58);
    *(v0 + 64) = v57;
    *(v0 + 72) = v58;
    *(v0 + 80) = sub_10001E8D0(&qword_100039DB0, &qword_100039DA8, &qword_10002B040);
    v59 = encodeXPCValues<each A>(_:)();
    v61 = v60;
    v62 = *(v0 + 248);
    v63 = *(v0 + 216);
    v68 = *(v0 + 200);
    v70 = *(v0 + 192);
    v72 = *(v0 + 168);
    v75 = *(v0 + 160);
    v65 = *(v0 + 128);
    v64 = *(v0 + 136);
    v66 = *(*(v0 + 224) + 8);
    v66(*(v0 + 232), v63);
    v65(v59, v61);
    sub_10000D80C(v59, v61);
    v66(v62, v63);

    v67 = *(v0 + 8);

    return v67();
  }

  v3 = *(v0 + 88);
  if (v3[4])
  {
    v5 = (v0 + 200);
    v4 = *(v0 + 200);
    static Logger.general.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      v9 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to obtain audit token", v8, 2u);
    v9 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
    goto LABEL_7;
  }

  v13 = v3[2];
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v73 = (*(v0 + 96) + **(v0 + 96));
  v17 = *(*(v0 + 96) + 4);
  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  *v18 = v0;
  v18[1] = sub_10001A4D4;
  v19 = *(v0 + 240);
  v20 = *(v0 + 104);

  return v73(v19, v16, v15, v13, v14);
}

uint64_t sub_10001A4D4()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_10001A7E8;
  }

  else
  {
    v3 = sub_10001A5E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001A5E8()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[27];
  (*(v0[28] + 16))(v6, v0[31], v7);
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = sub_10001E8D0(&qword_100039DB0, &qword_100039DA8, &qword_10002B040);
  v8 = encodeXPCValues<each A>(_:)();
  if (v5)
  {

    v10 = 0;
    v11 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
    v11 = v9;
  }

  v12 = v0[31];
  v13 = v0[27];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[21];
  v22 = v0[20];
  v15 = v0[16];
  v14 = v0[17];
  v16 = *(v0[28] + 8);
  v16(v0[29], v13);
  v15(v10, v11);
  sub_10000D80C(v10, v11);
  v16(v12, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001A7E8()
{
  v50 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  static Logger.general.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  if (v5)
  {
    v43 = *(v0 + 120);
    v45 = *(v0 + 176);
    v47 = *(v0 + 192);
    v9 = *(v0 + 112);
    v10 = *(v0 + 280);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v11 = 136315394;
    v14 = StaticString.description.getter();
    v16 = sub_10001DC98(v14, v15, &v49);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v11, 0x16u);
    sub_10000D6F8(v12, &qword_100039DA0, &qword_10002A740);

    sub_100002B88(v13);

    (*(v7 + 8))(v47, v45);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 144);
  *(v0 + 56) = v1;
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  v20 = swift_dynamicCast();
  v21 = *(v0 + 168);
  if (v20)
  {
    v22 = *(*(v0 + 152) + 32);
    v22(*(v0 + 168), *(v0 + 160), *(v0 + 144));
    v23 = *(v0 + 56);
  }

  else
  {
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 56);

    (*(v25 + 104))(v21, enum case for AppInstallationMetricsError.unknown(_:), v24);
    v22 = *(v25 + 32);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 216);
  v29 = *(v0 + 224);
  v22(v27, *(v0 + 168), *(v0 + 144));
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  v30 = *(v0 + 232);
  v31 = *(v0 + 216);
  (*(*(v0 + 224) + 16))(v30, *(v0 + 248), v31);
  *(v0 + 64) = v30;
  *(v0 + 72) = v31;
  *(v0 + 80) = sub_10001E8D0(&qword_100039DB0, &qword_100039DA8, &qword_10002B040);
  v32 = encodeXPCValues<each A>(_:)();
  v34 = v33;
  v35 = *(v0 + 248);
  v36 = *(v0 + 216);
  v42 = *(v0 + 200);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v48 = *(v0 + 160);
  v38 = *(v0 + 128);
  v37 = *(v0 + 136);
  v39 = *(*(v0 + 224) + 8);
  v39(*(v0 + 232), v36);
  v38(v32, v34);
  sub_10000D80C(v32, v34);
  v39(v35, v36);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10001AC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 128) = v21;
  *(v8 + 136) = v22;
  *(v8 + 280) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 88) = a3;
  v9 = type metadata accessor for AppInstallationMetricsError();
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 176) = v12;
  v13 = *(v12 - 8);
  *(v8 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v15 = sub_100002AD8(&qword_100039DB8, &qword_10002B0A0);
  *(v8 + 216) = v15;
  v16 = *(v15 - 8);
  *(v8 + 224) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v8 + 256) = v18;
  *v18 = v8;
  v18[1] = sub_10001AE1C;

  return sub_100011DC0(v8 + 16);
}

uint64_t sub_10001AE1C()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_10001AF18, 0, 0);
}

uint64_t sub_10001AF18()
{
  v77 = v0;
  v1 = *(v0 + 48);
  sub_10000D5B4((v0 + 16), *(v0 + 40));
  v2 = sub_100011D74();
  sub_100002B88((v0 + 16));
  if ((v2 & 1) == 0)
  {
    v5 = (v0 + 208);
    v10 = *(v0 + 208);
    static Logger.general.getter();
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v11))
    {
      v9 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, v11, "Not enabled", v12, 2u);
    v9 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
LABEL_7:

LABEL_13:
    v22 = *v5;
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    v25 = *(v0 + 144);
    v26 = *(v0 + 152);

    (*(v24 + 8))(v22, v23);
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    v27 = swift_allocError();
    (*(v26 + 104))(v28, *v9, v25);
    swift_willThrow();
    v29 = *(v0 + 192);
    static Logger.general.getter();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 176);
    if (v32)
    {
      v69 = *(v0 + 120);
      v71 = *(v0 + 176);
      v74 = *(v0 + 192);
      v36 = *(v0 + 112);
      v37 = *(v0 + 280);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v76 = v40;
      *v38 = 136315394;
      v41 = StaticString.description.getter();
      v43 = sub_10001DC98(v41, v42, &v76);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2114;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v44;
      *v39 = v44;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error in %s: %{public}@", v38, 0x16u);
      sub_10000D6F8(v39, &qword_100039DA0, &qword_10002A740);

      sub_100002B88(v40);

      (*(v34 + 8))(v74, v71);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v45 = *(v0 + 160);
    v46 = *(v0 + 144);
    *(v0 + 56) = v27;
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    v47 = swift_dynamicCast();
    v48 = *(v0 + 168);
    if (v47)
    {
      v49 = *(*(v0 + 152) + 32);
      v49(*(v0 + 168), *(v0 + 160), *(v0 + 144));
      v50 = *(v0 + 56);
    }

    else
    {
      v51 = *(v0 + 144);
      v52 = *(v0 + 152);
      v53 = *(v0 + 56);

      (*(v52 + 104))(v48, enum case for AppInstallationMetricsError.unknown(_:), v51);
      v49 = *(v52 + 32);
    }

    v54 = *(v0 + 248);
    v55 = *(v0 + 216);
    v56 = *(v0 + 224);
    v49(v54, *(v0 + 168), *(v0 + 144));
    (*(v56 + 104))(v54, enum case for ServiceResult.failure<A>(_:), v55);
    v57 = *(v0 + 232);
    v58 = *(v0 + 216);
    (*(*(v0 + 224) + 16))(v57, *(v0 + 248), v58);
    *(v0 + 64) = v57;
    *(v0 + 72) = v58;
    *(v0 + 80) = sub_10001E8D0(&qword_100039DC0, &qword_100039DB8, &qword_10002B0A0);
    v59 = encodeXPCValues<each A>(_:)();
    v61 = v60;
    v62 = *(v0 + 248);
    v63 = *(v0 + 216);
    v68 = *(v0 + 200);
    v70 = *(v0 + 192);
    v72 = *(v0 + 168);
    v75 = *(v0 + 160);
    v65 = *(v0 + 128);
    v64 = *(v0 + 136);
    v66 = *(*(v0 + 224) + 8);
    v66(*(v0 + 232), v63);
    v65(v59, v61);
    sub_10000D80C(v59, v61);
    v66(v62, v63);

    v67 = *(v0 + 8);

    return v67();
  }

  v3 = *(v0 + 88);
  if (v3[4])
  {
    v5 = (v0 + 200);
    v4 = *(v0 + 200);
    static Logger.general.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      v9 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to obtain audit token", v8, 2u);
    v9 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
    goto LABEL_7;
  }

  v13 = v3[2];
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v73 = (*(v0 + 96) + **(v0 + 96));
  v17 = *(*(v0 + 96) + 4);
  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  *v18 = v0;
  v18[1] = sub_10001B604;
  v19 = *(v0 + 240);
  v20 = *(v0 + 104);

  return v73(v19, v16, v15, v13, v14);
}

uint64_t sub_10001B604()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_10001B918;
  }

  else
  {
    v3 = sub_10001B718;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001B718()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[27];
  (*(v0[28] + 16))(v6, v0[31], v7);
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = sub_10001E8D0(&qword_100039DC0, &qword_100039DB8, &qword_10002B0A0);
  v8 = encodeXPCValues<each A>(_:)();
  if (v5)
  {

    v10 = 0;
    v11 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
    v11 = v9;
  }

  v12 = v0[31];
  v13 = v0[27];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[21];
  v22 = v0[20];
  v15 = v0[16];
  v14 = v0[17];
  v16 = *(v0[28] + 8);
  v16(v0[29], v13);
  v15(v10, v11);
  sub_10000D80C(v10, v11);
  v16(v12, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001B918()
{
  v50 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  static Logger.general.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  if (v5)
  {
    v43 = *(v0 + 120);
    v45 = *(v0 + 176);
    v47 = *(v0 + 192);
    v9 = *(v0 + 112);
    v10 = *(v0 + 280);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v11 = 136315394;
    v14 = StaticString.description.getter();
    v16 = sub_10001DC98(v14, v15, &v49);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v11, 0x16u);
    sub_10000D6F8(v12, &qword_100039DA0, &qword_10002A740);

    sub_100002B88(v13);

    (*(v7 + 8))(v47, v45);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 144);
  *(v0 + 56) = v1;
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  v20 = swift_dynamicCast();
  v21 = *(v0 + 168);
  if (v20)
  {
    v22 = *(*(v0 + 152) + 32);
    v22(*(v0 + 168), *(v0 + 160), *(v0 + 144));
    v23 = *(v0 + 56);
  }

  else
  {
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 56);

    (*(v25 + 104))(v21, enum case for AppInstallationMetricsError.unknown(_:), v24);
    v22 = *(v25 + 32);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 216);
  v29 = *(v0 + 224);
  v22(v27, *(v0 + 168), *(v0 + 144));
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  v30 = *(v0 + 232);
  v31 = *(v0 + 216);
  (*(*(v0 + 224) + 16))(v30, *(v0 + 248), v31);
  *(v0 + 64) = v30;
  *(v0 + 72) = v31;
  *(v0 + 80) = sub_10001E8D0(&qword_100039DC0, &qword_100039DB8, &qword_10002B0A0);
  v32 = encodeXPCValues<each A>(_:)();
  v34 = v33;
  v35 = *(v0 + 248);
  v36 = *(v0 + 216);
  v42 = *(v0 + 200);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v48 = *(v0 + 160);
  v38 = *(v0 + 128);
  v37 = *(v0 + 136);
  v39 = *(*(v0 + 224) + 8);
  v39(*(v0 + 232), v36);
  v38(v32, v34);
  sub_10000D80C(v32, v34);
  v39(v35, v36);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10001BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 128) = v21;
  *(v8 + 136) = v22;
  *(v8 + 280) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 88) = a3;
  v9 = type metadata accessor for AppInstallationMetricsError();
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 176) = v12;
  v13 = *(v12 - 8);
  *(v8 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v15 = sub_100002AD8(&unk_100039D80, &qword_10002B010);
  *(v8 + 216) = v15;
  v16 = *(v15 - 8);
  *(v8 + 224) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v8 + 256) = v18;
  *v18 = v8;
  v18[1] = sub_10001BF4C;

  return sub_100011DC0(v8 + 16);
}

uint64_t sub_10001BF4C()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_10001C048, 0, 0);
}

uint64_t sub_10001C048()
{
  v77 = v0;
  v1 = *(v0 + 48);
  sub_10000D5B4((v0 + 16), *(v0 + 40));
  v2 = sub_100011D74();
  sub_100002B88((v0 + 16));
  if ((v2 & 1) == 0)
  {
    v5 = (v0 + 208);
    v10 = *(v0 + 208);
    static Logger.general.getter();
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v11))
    {
      v9 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, v11, "Not enabled", v12, 2u);
    v9 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
LABEL_7:

LABEL_13:
    v22 = *v5;
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    v25 = *(v0 + 144);
    v26 = *(v0 + 152);

    (*(v24 + 8))(v22, v23);
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    v27 = swift_allocError();
    (*(v26 + 104))(v28, *v9, v25);
    swift_willThrow();
    v29 = *(v0 + 192);
    static Logger.general.getter();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 176);
    if (v32)
    {
      v69 = *(v0 + 120);
      v71 = *(v0 + 176);
      v74 = *(v0 + 192);
      v36 = *(v0 + 112);
      v37 = *(v0 + 280);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v76 = v40;
      *v38 = 136315394;
      v41 = StaticString.description.getter();
      v43 = sub_10001DC98(v41, v42, &v76);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2114;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v44;
      *v39 = v44;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error in %s: %{public}@", v38, 0x16u);
      sub_10000D6F8(v39, &qword_100039DA0, &qword_10002A740);

      sub_100002B88(v40);

      (*(v34 + 8))(v74, v71);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v45 = *(v0 + 160);
    v46 = *(v0 + 144);
    *(v0 + 56) = v27;
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    v47 = swift_dynamicCast();
    v48 = *(v0 + 168);
    if (v47)
    {
      v49 = *(*(v0 + 152) + 32);
      v49(*(v0 + 168), *(v0 + 160), *(v0 + 144));
      v50 = *(v0 + 56);
    }

    else
    {
      v51 = *(v0 + 144);
      v52 = *(v0 + 152);
      v53 = *(v0 + 56);

      (*(v52 + 104))(v48, enum case for AppInstallationMetricsError.unknown(_:), v51);
      v49 = *(v52 + 32);
    }

    v54 = *(v0 + 248);
    v55 = *(v0 + 216);
    v56 = *(v0 + 224);
    v49(v54, *(v0 + 168), *(v0 + 144));
    (*(v56 + 104))(v54, enum case for ServiceResult.failure<A>(_:), v55);
    v57 = *(v0 + 232);
    v58 = *(v0 + 216);
    (*(*(v0 + 224) + 16))(v57, *(v0 + 248), v58);
    *(v0 + 64) = v57;
    *(v0 + 72) = v58;
    *(v0 + 80) = sub_10001E8D0(&qword_100039D98, &unk_100039D80, &qword_10002B010);
    v59 = encodeXPCValues<each A>(_:)();
    v61 = v60;
    v62 = *(v0 + 248);
    v63 = *(v0 + 216);
    v68 = *(v0 + 200);
    v70 = *(v0 + 192);
    v72 = *(v0 + 168);
    v75 = *(v0 + 160);
    v65 = *(v0 + 128);
    v64 = *(v0 + 136);
    v66 = *(*(v0 + 224) + 8);
    v66(*(v0 + 232), v63);
    v65(v59, v61);
    sub_10000D80C(v59, v61);
    v66(v62, v63);

    v67 = *(v0 + 8);

    return v67();
  }

  v3 = *(v0 + 88);
  if (v3[4])
  {
    v5 = (v0 + 200);
    v4 = *(v0 + 200);
    static Logger.general.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      v9 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to obtain audit token", v8, 2u);
    v9 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
    goto LABEL_7;
  }

  v13 = v3[2];
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v73 = (*(v0 + 96) + **(v0 + 96));
  v17 = *(*(v0 + 96) + 4);
  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  *v18 = v0;
  v18[1] = sub_10001C734;
  v19 = *(v0 + 240);
  v20 = *(v0 + 104);

  return v73(v19, v16, v15, v13, v14);
}

uint64_t sub_10001C734()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_10001CA48;
  }

  else
  {
    v3 = sub_10001C848;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001C848()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[27];
  (*(v0[28] + 16))(v6, v0[31], v7);
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = sub_10001E8D0(&qword_100039D98, &unk_100039D80, &qword_10002B010);
  v8 = encodeXPCValues<each A>(_:)();
  if (v5)
  {

    v10 = 0;
    v11 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
    v11 = v9;
  }

  v12 = v0[31];
  v13 = v0[27];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[21];
  v22 = v0[20];
  v15 = v0[16];
  v14 = v0[17];
  v16 = *(v0[28] + 8);
  v16(v0[29], v13);
  v15(v10, v11);
  sub_10000D80C(v10, v11);
  v16(v12, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001CA48()
{
  v50 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  static Logger.general.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  if (v5)
  {
    v43 = *(v0 + 120);
    v45 = *(v0 + 176);
    v47 = *(v0 + 192);
    v9 = *(v0 + 112);
    v10 = *(v0 + 280);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v11 = 136315394;
    v14 = StaticString.description.getter();
    v16 = sub_10001DC98(v14, v15, &v49);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v11, 0x16u);
    sub_10000D6F8(v12, &qword_100039DA0, &qword_10002A740);

    sub_100002B88(v13);

    (*(v7 + 8))(v47, v45);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 144);
  *(v0 + 56) = v1;
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  v20 = swift_dynamicCast();
  v21 = *(v0 + 168);
  if (v20)
  {
    v22 = *(*(v0 + 152) + 32);
    v22(*(v0 + 168), *(v0 + 160), *(v0 + 144));
    v23 = *(v0 + 56);
  }

  else
  {
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 56);

    (*(v25 + 104))(v21, enum case for AppInstallationMetricsError.unknown(_:), v24);
    v22 = *(v25 + 32);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 216);
  v29 = *(v0 + 224);
  v22(v27, *(v0 + 168), *(v0 + 144));
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  v30 = *(v0 + 232);
  v31 = *(v0 + 216);
  (*(*(v0 + 224) + 16))(v30, *(v0 + 248), v31);
  *(v0 + 64) = v30;
  *(v0 + 72) = v31;
  *(v0 + 80) = sub_10001E8D0(&qword_100039D98, &unk_100039D80, &qword_10002B010);
  v32 = encodeXPCValues<each A>(_:)();
  v34 = v33;
  v35 = *(v0 + 248);
  v36 = *(v0 + 216);
  v42 = *(v0 + 200);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v48 = *(v0 + 160);
  v38 = *(v0 + 128);
  v37 = *(v0 + 136);
  v39 = *(*(v0 + 224) + 8);
  v39(*(v0 + 232), v36);
  v38(v32, v34);
  sub_10000D80C(v32, v34);
  v39(v35, v36);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10001CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100013DF4(a3, v27 - v11, &qword_1000395C0, &qword_10002AF20);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000D6F8(v12, &qword_1000395C0, &qword_10002AF20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000D6F8(a3, &qword_1000395C0, &qword_10002AF20);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D6F8(a3, &qword_1000395C0, &qword_10002AF20);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10001D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_10001D218;

  return sub_100016AA4(a2, a3, a4, a5);
}

uint64_t sub_10001D218()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10001D348, 0, 0);
  }
}

uint64_t sub_10001D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_10001D424;

  return sub_100017F10(a2, a3, a4, a5);
}

uint64_t sub_10001D424()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10001EC84, 0, 0);
  }
}

uint64_t sub_10001D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  *(v6 + 16) = a1;
  v14 = (a6 + *a6);
  v11 = a6[1];
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_10001D424;

  return v14(a2, a3, a4, a5);
}

uint64_t type metadata accessor for Service()
{
  result = qword_100039D58;
  if (!qword_100039D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001D770()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D7AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v13 = *(v1 + 120);
  v14 = *(v1 + 104);
  v9 = *(v1 + 136);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001EC80;

  return sub_1000195F0(a1, v4, v5, v6, v7, v10, v8, v1 + 64);
}

uint64_t sub_10001D8B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001D9B0;

  return v7(a1);
}

uint64_t sub_10001D9B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001DAA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001EC80;

  return sub_10001D8B8(a1, v5);
}

uint64_t sub_10001DB60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DB98(uint64_t a1)
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
  v12[1] = sub_10001EC80;

  return sub_10001BD30(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10001DC98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001DD64(v11, 0, 0, 1, a1, a2);
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
    sub_10000D758(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002B88(v11);
  return v7;
}

unint64_t sub_10001DD64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001DE70(a5, a6);
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

char *sub_10001DE70(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001DEBC(a1, a2);
  sub_10001DFEC(&off_1000351E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001DEBC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001E0D8(v5, 0);
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
        v7 = sub_10001E0D8(v10, 0);
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

uint64_t sub_10001DFEC(uint64_t result)
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

  result = sub_10001E14C(result, v12, 1, v3);
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

void *sub_10001E0D8(uint64_t a1, uint64_t a2)
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

  sub_100002AD8(&qword_100039D78, &qword_10002B008);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001E14C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002AD8(&qword_100039D78, &qword_10002B008);
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

uint64_t sub_10001E244(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001E2E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v13 = *(v1 + 120);
  v14 = *(v1 + 104);
  v9 = *(v1 + 136);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001EC80;

  return sub_10001877C(a1, v4, v5, v6, v7, v10, v8, v1 + 64);
}

uint64_t sub_10001E3EC(uint64_t a1)
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
  v12[1] = sub_10001EC80;

  return sub_100019AD0(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10001E4EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10001EC80;

  return sub_100017668(a1, a2, a3, a4, v10);
}

uint64_t sub_10001E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_10001EC80;

  return sub_10001D554(a1, a2, a3, a4, a5, v13);
}

uint64_t sub_10001E6C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v13 = *(v1 + 120);
  v14 = *(v1 + 104);
  v9 = *(v1 + 136);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000D3C8;

  return sub_100018DEC(a1, v4, v5, v6, v7, v10, v8, v1 + 64);
}

uint64_t sub_10001E7D0(uint64_t a1)
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
  v12[1] = sub_10001EC80;

  return sub_10001AC00(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10001E8D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001E244(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001E924()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_10001E97C()
{
  sub_10000D80C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10000D3C8;

  return sub_100015DF4(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_10001EA94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001EAEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_10001EB3C()
{
  result = qword_100039DC8;
  if (!qword_100039DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039DC8);
  }

  return result;
}

uint64_t sub_10001EB90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001EBF8()
{

  return sub_10001955C();
}

uint64_t sub_10001EC88()
{

  return sub_10001945C();
}

uint64_t sub_10001ED00(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_100002AD8(&qword_100039E90, &qword_10002B2A0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10001EE40, 0, 0);
}

uint64_t sub_10001EE40()
{
  v1 = v0[28];
  v2 = v0[19];
  static Logger.metrics.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Flushing events", v7, 0xCu);
    sub_10000D6F8(v8, &qword_100039DA0, &qword_10002A740);
  }

  v10 = v0[28];
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[22];
  v20 = v0[23];
  v15 = v0[20];
  v14 = v0[21];

  v16 = *(v11 + 8);
  v0[29] = v16;
  v0[30] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v12);
  v17 = [*(v15 + 16) flush];
  v0[31] = v17;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001F128;
  swift_continuation_init();
  v0[17] = v14;
  v18 = sub_10000D510(v0 + 14);
  sub_10001FCEC();
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  CheckedContinuation.init(continuation:function:)();
  (*(v13 + 32))(v18, v20, v14);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001FA38;
  v0[13] = &unk_100036110;
  [v17 resultWithTimeout:120.0 completion:?];
  (*(v13 + 8))(v18, v14);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001F128()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_10001F3F4;
  }

  else
  {
    v3 = sub_10001F238;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001F238()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  static Logger.metrics.getter();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v5;
    *v10 = v8;
    v10[1] = v5;
    v11 = v8;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Flushed %{public}@ event(s)", v9, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
    v12 = v6;
    v6 = v5;
  }

  v13 = *(v0 + 240);
  v14 = *(v0 + 224);
  v15 = *(v0 + 208);
  v16 = *(v0 + 184);
  (*(v0 + 232))(*(v0 + 216), *(v0 + 192));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10001F3F4()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 208);
  v4 = *(v0 + 152);
  swift_willThrow();

  static Logger.metrics.getter();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 256);
  if (v8)
  {
    v10 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2114;
    v13 = v10;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Failed to flush events due to error: %{public}@", v11, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 256);
  }

  v16 = *(v0 + 240);
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 184);
  (*(v0 + 232))(*(v0 + 208), *(v0 + 192));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10001F5DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F724665726F7473;
  }

  else
  {
    v4 = 0x4E646C697542736FLL;
  }

  if (v3)
  {
    v5 = 0xED00007265626D75;
  }

  else
  {
    v5 = 0xEC0000006449746ELL;
  }

  if (*a2)
  {
    v6 = 0x6F724665726F7473;
  }

  else
  {
    v6 = 0x4E646C697542736FLL;
  }

  if (*a2)
  {
    v7 = 0xEC0000006449746ELL;
  }

  else
  {
    v7 = 0xED00007265626D75;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10001F698()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001F730()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10001F7B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001F848@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100035608, *a1);

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

void sub_10001F8A8(uint64_t *a1@<X8>)
{
  v2 = 0x4E646C697542736FLL;
  if (*v1)
  {
    v2 = 0x6F724665726F7473;
  }

  v3 = 0xED00007265626D75;
  if (*v1)
  {
    v3 = 0xEC0000006449746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10001F8FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001F970()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001F9C4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100035658, *a1);

  *a2 = v3 != 0;
  return result;
}

void sub_10001FA38(uint64_t a1, void *a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100002AD8(&qword_100039E90, &qword_10002B2A0);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100002AD8(&qword_100039E90, &qword_10002B2A0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001FAE8()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ManateeDomain(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ManateeDomain(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001FC40()
{
  result = qword_100039E80;
  if (!qword_100039E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E80);
  }

  return result;
}

unint64_t sub_10001FC98()
{
  result = qword_100039E88;
  if (!qword_100039E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E88);
  }

  return result;
}

unint64_t sub_10001FCEC()
{
  result = qword_100039E98;
  if (!qword_100039E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039E98);
  }

  return result;
}

uint64_t sub_10001FD50(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_100020778(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_10001FEFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100021AF8(&qword_100039EB0);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100021AF8(&qword_100039EB8);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100020960(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1000201B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002AD8(&qword_100039EC8, &qword_10002B2C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100020430(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Calendar.Component();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100002AD8(&qword_100039EC0, &qword_10002B2B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100021AF8(&qword_100039EB0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100020778(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1000201B4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100020BDC();
      goto LABEL_16;
    }

    sub_100020F64(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100020960(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100020430(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100020D2C();
      goto LABEL_12;
    }

    sub_1000211B8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100021AF8(&qword_100039EB0);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100021AF8(&qword_100039EB8);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100020BDC()
{
  v1 = v0;
  sub_100002AD8(&qword_100039EC8, &qword_10002B2C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_100020D2C()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002AD8(&qword_100039EC0, &qword_10002B2B8);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100020F64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002AD8(&qword_100039EC8, &qword_10002B2C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v18;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000211B8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Calendar.Component();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100002AD8(&qword_100039EC0, &qword_10002B2B8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100021AF8(&qword_100039EB0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

void *sub_1000214C0(uint64_t a1)
{
  v22 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v19 = &v18 - v6;
  sub_100002AD8(&qword_100039EA8, &qword_10002B2B0);
  v7 = *(v2 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10002B0E0;
  v18 = v9;
  v10 = v9 + v8;
  v11 = *(v2 + 104);
  v11(v9 + v8, enum case for Calendar.Component.year(_:), v1);
  v11(v10 + v7, enum case for Calendar.Component.month(_:), v1);
  v11(v10 + 2 * v7, enum case for Calendar.Component.day(_:), v1);
  v11(v10 + 3 * v7, enum case for Calendar.Component.hour(_:), v1);
  v11(v10 + 4 * v7, enum case for Calendar.Component.minute(_:), v1);
  v11(v10 + 5 * v7, enum case for Calendar.Component.second(_:), v1);
  v20 = v7;
  v11(v10 + 6 * v7, enum case for Calendar.Component.nanosecond(_:), v1);
  v23 = &_swiftEmptySetSingleton;
  v12 = *(v2 + 16);
  v13 = 8;
  do
  {
    if (!--v13)
    {
      break;
    }

    v14 = v21;
    v15 = v10 + v20;
    v12(v21, v10, v1);
    v16 = v19;
    sub_10001FEFC(v19, v14);
    (*(v2 + 8))(v16, v1);
    v10 = v15;
  }

  while ((static Calendar.Component.== infix(_:_:)() & 1) == 0);

  return v23;
}

id sub_100021790(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002AD8(&qword_100039EA0, &qword_10002B2A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DateComponents();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v27);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1000214C0(a2);
  Calendar.dateComponents(_:from:)();

  v20 = *(v12 + 8);
  v20(v15, v11);
  static Calendar.current.getter();
  Calendar.date(from:)();
  v20(v15, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v16 + 8))(v19, v27);
    sub_10000D6F8(v6, &qword_100039EA0, &qword_10002B2A8);
    return 0;
  }

  else
  {
    v22 = v26;
    (*(v8 + 32))(v26, v6, v7);
    v23 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v25 = [v23 serverTimeFromDate:isa];

    (*(v8 + 8))(v22, v7);
    (*(v16 + 8))(v19, v27);
    return v25;
  }
}

uint64_t sub_100021AF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void main()()
{
  v0 = (*(*(sub_100002AD8(&qword_1000395C0, &qword_10002AF20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v5 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1000248CC(0, 0, v2, &unk_10002B2D8, v4);

  dispatch_main();
}

uint64_t sub_100021C20()
{
  v1 = type metadata accessor for CancellationError();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v7 = *(*(type metadata accessor for ClientInfo() - 8) + 64) + 15;
  v0[19] = swift_task_alloc();
  v8 = *(*(type metadata accessor for BagProfile() - 8) + 64) + 15;
  v0[20] = swift_task_alloc();
  v9 = type metadata accessor for BagService();
  v0[21] = v9;
  v10 = *(v9 - 8);
  v0[22] = v10;
  v11 = *(v10 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v0[25] = v12;
  v13 = *(v12 - 8);
  v0[26] = v13;
  v14 = *(v13 + 64) + 15;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();

  return _swift_task_switch(sub_100021E9C, 0, 0);
}

uint64_t sub_100021E9C()
{
  if (isAppInstallationMetricsEnabled()())
  {
    sub_100001C0C(v0[28]);
    v1 = v0[24];
    v3 = v0[19];
    v2 = v0[20];
    BagProfile.init(name:version:)();
    ClientInfo.init(identifier:name:version:)();
    BagService.init(bagProfile:clientInfo:)();
    v54 = swift_task_alloc();
    v0[29] = v54;
    *v54 = v0;
    v54[1] = sub_100022474;
    v55 = v0[24];

    return sub_100011DC0((v0 + 2));
  }

  else
  {
    v4 = v0[15];
    static Logger.daemon.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Feature flag is not enabled", v7, 2u);
    }

    v8 = v0[15];
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[8];

    (*(v10 + 8))(v8, v9);
    sub_100024B78();
    v12 = swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v13 = v0[10];
    v14 = v0[8];
    v0[7] = v12;
    swift_errorRetain();
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    if (swift_dynamicCast())
    {
      v15 = v0[14];

      static Logger.daemon.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Exiting daemon due to cancellation", v18, 2u);
      }

      v19 = v0[14];
      v20 = v0[11];
      v21 = v0[12];
      v23 = v0[9];
      v22 = v0[10];
      v24 = v0[8];

      (*(v21 + 8))(v19, v20);
      (*(v23 + 8))(v22, v24);
      v25 = v0[7];

      v27 = v0[27];
      v26 = v0[28];
      v29 = v0[23];
      v28 = v0[24];
      v31 = v0[19];
      v30 = v0[20];
      v33 = v0[17];
      v32 = v0[18];
      v35 = v0[15];
      v34 = v0[16];
      v60 = v0[14];
      v62 = v0[13];
      v64 = v0[10];

      v36 = v0[1];
    }

    else
    {
      v37 = v0[13];
      v38 = v0[7];

      static Logger.daemon.getter();
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        swift_errorRetain();
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v43;
        *v42 = v43;
        _os_log_impl(&_mh_execute_header, v39, v40, "Unexpected top-level error: %@", v41, 0xCu);
        sub_10000D6F8(v42, &qword_100039DA0, &qword_10002A740);
      }

      v45 = v0[27];
      v44 = v0[28];
      v47 = v0[23];
      v46 = v0[24];
      v48 = v0[20];
      v56 = v0[19];
      v57 = v0[18];
      v58 = v0[17];
      v59 = v0[16];
      v49 = v0[13];
      v61 = v0[15];
      v63 = v0[14];
      v50 = v39;
      v52 = v0[11];
      v51 = v0[12];
      v65 = v0[10];

      (*(v51 + 8))(v49, v52);
      swift_willThrow();

      v36 = v0[1];
    }

    return v36();
  }
}

uint64_t sub_100022474()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_100022570, 0, 0);
}

uint64_t sub_100022570()
{
  v1 = v0[18];
  v2 = v0[6];
  sub_10000D5B4(v0 + 2, v0[5]);
  v3 = sub_100011D74();
  static Logger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "Daemon launch; Bag enabled: %{BOOL}d", v6, 8u);
  }

  v7 = v0[18];
  v8 = v0[11];
  v9 = v0[12];

  v10 = *(v9 + 8);
  v0[30] = v10;
  v0[31] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  if (v3)
  {
    v11 = v0[27];
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[21];
    v15 = v0[22];
    (*(v0[26] + 16))(v11, v0[28], v0[25]);
    (*(v15 + 16))(v13, v12, v14);
    v16 = type metadata accessor for Dependencies();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_1000018D4(v11, v13);
    v0[32] = v19;
    sub_100002AD8(&qword_100039ED8, &qword_10002B2E0);
    v20 = swift_task_alloc();
    v0[33] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v12;
    v21 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v22 = swift_task_alloc();
    v0[34] = v22;
    *v22 = v0;
    v22[1] = sub_100022C78;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    v23 = v0[16];
    static Logger.daemon.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Daemon is disabled; canceling launch", v26, 2u);
    }

    v28 = v0[25];
    v27 = v0[26];
    v85 = v0[24];
    v29 = v0[22];
    v79 = v0[28];
    v82 = v0[21];
    v30 = v0[16];
    v31 = v0[11];
    v32 = v0[8];

    v10(v30, v31);
    sub_100024B78();
    v33 = swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    (*(v27 + 8))(v79, v28);
    sub_100002B88(v0 + 2);
    (*(v29 + 8))(v85, v82);
    v34 = v0[10];
    v35 = v0[8];
    v0[7] = v33;
    swift_errorRetain();
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    if (swift_dynamicCast())
    {
      v36 = v0[14];

      static Logger.daemon.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Exiting daemon due to cancellation", v39, 2u);
      }

      v40 = v0[14];
      v41 = v0[11];
      v42 = v0[12];
      v44 = v0[9];
      v43 = v0[10];
      v45 = v0[8];

      (*(v42 + 8))(v40, v41);
      (*(v44 + 8))(v43, v45);
      v46 = v0[7];

      v48 = v0[27];
      v47 = v0[28];
      v50 = v0[23];
      v49 = v0[24];
      v52 = v0[19];
      v51 = v0[20];
      v54 = v0[17];
      v53 = v0[18];
      v56 = v0[15];
      v55 = v0[16];
      v80 = v0[14];
      v83 = v0[13];
      v86 = v0[10];

      v57 = v0[1];
    }

    else
    {
      v58 = v0[13];
      v59 = v0[7];

      static Logger.daemon.getter();
      swift_errorRetain();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        swift_errorRetain();
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 4) = v64;
        *v63 = v64;
        _os_log_impl(&_mh_execute_header, v60, v61, "Unexpected top-level error: %@", v62, 0xCu);
        sub_10000D6F8(v63, &qword_100039DA0, &qword_10002A740);
      }

      v66 = v0[27];
      v65 = v0[28];
      v68 = v0[23];
      v67 = v0[24];
      v69 = v0[20];
      v75 = v0[19];
      v76 = v0[18];
      v77 = v0[17];
      v78 = v0[16];
      v70 = v0[13];
      v81 = v0[15];
      v84 = v0[14];
      v71 = v60;
      v73 = v0[11];
      v72 = v0[12];
      v87 = v0[10];

      (*(v72 + 8))(v70, v73);
      swift_willThrow();

      v57 = v0[1];
    }

    return v57();
  }
}

uint64_t sub_100022C78()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 264);

    return _swift_task_switch(sub_100022DB4, 0, 0);
  }
}

uint64_t sub_100022DB4()
{
  v1 = v0[17];
  static Logger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unexpectedly exiting daemon due to completing all tasks", v4, 2u);
  }

  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[22];
  v27 = v0[21];
  v29 = v0[24];
  v12 = v0[17];
  v13 = v0[11];

  v7(v12, v13);
  (*(v10 + 8))(v8, v9);
  sub_100002B88(v0 + 2);
  (*(v11 + 8))(v29, v27);
  v15 = v0[27];
  v14 = v0[28];
  v17 = v0[23];
  v16 = v0[24];
  v19 = v0[19];
  v18 = v0[20];
  v21 = v0[17];
  v20 = v0[18];
  v23 = v0[15];
  v22 = v0[16];
  v26 = v0[14];
  v28 = v0[13];
  v30 = v0[10];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100022F98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022FD0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D3C8;

  return sub_100021C20();
}

uint64_t sub_10002307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for BagService();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = *(*(sub_100002AD8(&qword_1000395C0, &qword_10002AF20) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100023180, 0, 0);
}

uint64_t sub_100023180()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v17 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v19 = v5;
  v6 = v0[3];
  v22 = v0[2];
  v21 = type metadata accessor for TaskPriority();
  v20 = *(*(v21 - 8) + 56);
  v20(v1, 1, 1, v21);
  v18 = *(v3 + 16);
  v7 = v5;
  v8 = v4;
  v15 = v4;
  v18(v2, v7, v4);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v6;
  v16 = *(v3 + 32);
  v16(&v10[v9], v2, v8);

  sub_1000237A8(v1, &unk_10002B300, v10);
  sub_10000D6F8(v1, &qword_1000395C0, &qword_10002AF20);
  v20(v1, 1, 1, v21);
  v11 = v2;
  v18(v2, v19, v15);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v6;
  v16(&v12[v9], v11, v15);

  sub_1000246A8(v1, &unk_10002B310, v12);
  sub_10000D6F8(v1, &qword_1000395C0, &qword_10002AF20);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100023404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for BagService();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100023524, 0, 0);
}

uint64_t sub_100023524()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = [objc_opt_self() sharedScheduler];
  v7 = *(v5 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager);
  (*(v2 + 16))(v1, v4, v3);
  v8 = type metadata accessor for DailyWakeupTask();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  (*(v2 + 32))(v11 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon15DailyWakeupTask_bagService, v1, v3);

  sub_100013F00();
  sub_100014260();

  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  **(v0 + 16) = 1;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000237A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_100013DF4(a1, v20 - v9, &qword_1000395C0, &qword_10002AF20);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000D6F8(v10, &qword_1000395C0, &qword_10002AF20);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  sub_100002AD8(&qword_100039ED8, &qword_10002B2E0);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1000239A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = sub_100002AD8(&qword_100039EE0, &qword_10002B318);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_100002AD8(&qword_100039EE8, &qword_10002B320);
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = sub_100002AD8(&qword_100039EF0, &qword_10002B328);
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v14 = *(v13 + 64) + 15;
  v5[18] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v5[19] = v15;
  v16 = *(v15 - 8);
  v5[20] = v16;
  v17 = *(v16 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v18 = *(*(sub_100002AD8(&qword_100039D70, &qword_10002AFF0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100023C1C, 0, 0);
}

uint64_t sub_100023C1C()
{
  v31 = v0;
  (*(*(v0 + 160) + 56))(*(v0 + 192), 1, 1, *(v0 + 152));
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  if (qword_100039270 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = _os_activity_create(&_mh_execute_header, "Starting XPC listener", qword_1000397D0, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  os_activity_scope_enter(v6, (v0 + 40));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 40);
  type metadata accessor for Transaction();
  swift_allocObject();
  v7 = sub_1000158E0();
  sub_100013DF4(v3, v2, &qword_100039D70, &qword_10002AFF0);
  v8 = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v9 = *(v0 + 176);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 152);
    (*(v11 + 32))(v9, *(v0 + 184), v12);
    (*(v11 + 16))(v10, v9, v12);
    v13 = type metadata accessor for SignpostInterval();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v8 = sub_100011144("Starting XPC listener", 21, 2, v10);
    (*(v11 + 8))(v9, v12);
  }

  if (qword_100039278 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  *(v0 + 16) = v1;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_100002AD8(&qword_100039EF8, &qword_10002B330);
  swift_task_localValuePush();
  sub_1000243C0(v17, v16, &v30);
  v18 = *(v0 + 192);
  v19 = *(v0 + 144);
  v20 = *(v0 + 120);
  v29 = *(v0 + 128);
  v22 = *(v0 + 104);
  v21 = *(v0 + 112);
  v23 = *(v0 + 96);
  swift_task_localValuePop();

  sub_10000D6F8(v18, &qword_100039D70, &qword_10002AFF0);
  *(v0 + 200) = v30;
  (*(v21 + 104))(v20, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v22);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  v24 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v25 = swift_task_alloc();
  *(v0 + 216) = v25;
  *v25 = v0;
  v25[1] = sub_1000240A4;
  v26 = *(v0 + 96);
  v27 = *(v0 + 80);

  return AsyncStream.Iterator.next(isolation:)(v0 + 224, 0, 0, v27);
}

uint64_t sub_1000240A4()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_1000241CC, 0, 0);
}

uint64_t sub_1000241CC()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 200);
    v2 = *(v0 + 208);
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    v15 = *(v0 + 176);
    v16 = *(v0 + 168);
    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    v17 = *(v0 + 120);
    v8 = *(v0 + 56);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    (*(v5 + 8))(v6, v7);
    *v8 = 1;

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    *(v0 + 216) = v12;
    *v12 = v0;
    v12[1] = sub_1000240A4;
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);

    return AsyncStream.Iterator.next(isolation:)(v0 + 224, 0, 0, v14);
  }
}

uint64_t sub_1000243C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for Logger();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BagService();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a2, v9);
  v15 = type metadata accessor for ServiceListenerDelegate();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC28AppInstallationMetricsDaemon23ServiceListenerDelegate_dependencies] = a1;
  v14(&v16[OBJC_IVAR____TtC28AppInstallationMetricsDaemon23ServiceListenerDelegate_bagService], v13, v9);
  v30.receiver = v16;
  v30.super_class = v15;

  v17 = objc_msgSendSuper2(&v30, "init");
  (*(v10 + 8))(v13, v9);
  ServiceMachName.getter();
  v18 = objc_allocWithZone(NSXPCListener);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithMachServiceName:v19];

  [v20 setDelegate:v17];
  [v20 activate];
  static Logger.daemon.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "XPC listener activated", v23, 2u);
  }

  result = (*(v27 + 8))(v8, v28);
  v25 = v29;
  *v29 = v20;
  v25[1] = v17;
  return result;
}

uint64_t sub_1000246A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v20 - v8;
  v10 = *v3;
  v11 = swift_taskGroup_addPending();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_100013DF4(a1, v9, &qword_1000395C0, &qword_10002AF20);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v9, v12);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  sub_10000D6F8(v9, &qword_1000395C0, &qword_10002AF20);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = *(a3 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
LABEL_8:
  sub_100002AD8(&qword_100039ED8, &qword_10002B2E0);
  v18 = (v17 | v15);
  if (v17 | v15)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v15;
    v21[3] = v17;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v10;
  swift_task_create();
LABEL_11:

  return v11 & 1;
}

uint64_t sub_1000248CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100002AD8(&qword_1000395C0, &qword_10002AF20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100013DF4(a3, v23 - v9, &qword_1000395C0, &qword_10002AF20);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000D6F8(v10, &qword_1000395C0, &qword_10002AF20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000D6F8(a3, &qword_1000395C0, &qword_10002AF20);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D6F8(a3, &qword_1000395C0, &qword_10002AF20);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_100024B78()
{
  result = qword_100039ED0;
  if (!qword_100039ED0)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039ED0);
  }

  return result;
}

uint64_t sub_100024BD0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001EC80;

  return sub_10002307C(a1, a2, v7, v6);
}

uint64_t sub_100024C84(uint64_t a1)
{
  v4 = *(type metadata accessor for BagService() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001EC80;

  return sub_100023404(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100024D80()
{
  v1 = type metadata accessor for BagService();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100024E4C(uint64_t a1)
{
  v4 = *(type metadata accessor for BagService() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001EC80;

  return sub_1000239A4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100024F48(void *a1)
{
  v3 = type metadata accessor for Logger();
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v55 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v64 = &v55 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v55 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  if (*(v1 + 56))
  {
    static Logger.events.getter();
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%@] Token did not contain a expire date", v30, 0xCu);
      sub_10000FF00(v31);
    }

    (*(v67 + 8))(v7, v3);
    v33 = 0;
  }

  else
  {
    v63 = v3;
    v34 = *(v1 + 48);
    static Date.now.getter();
    Date.init(timeIntervalSince1970:)();
    static Logger.events.getter();
    v35 = v10[2];
    v35(v21, v24, v9);
    v35(v18, v26, v9);
    v35(v64, v26, v9);
    v35(v65, v24, v9);
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = v24;
      v40 = v60;
      v62 = swift_slowAlloc();
      v68 = v62;
      *v39 = 138413058;
      *(v39 + 4) = v36;
      *v40 = v36;
      v24 = v61;
      *(v39 + 12) = 2080;
      sub_10002662C();
      v56 = v26;
      v41 = v36;
      v59 = v37;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v58 = v38;
      v45 = v10[1];
      v57 = (v10 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v45(v21, v9);
      v46 = sub_10001DC98(v42, v44, &v68);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2080;
      v26 = v56;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v45(v18, v9);
      v50 = sub_10001DC98(v47, v49, &v68);

      *(v39 + 24) = v50;
      *(v39 + 32) = 1024;
      v52 = v64;
      v51 = v65;
      LODWORD(v50) = static Date.> infix(_:_:)() & 1;
      v45(v52, v9);
      v45(v51, v9);
      *(v39 + 34) = v50;
      v53 = v59;
      _os_log_impl(&_mh_execute_header, v59, v58, "[%@] Verifying token is expireDate: %s current: %s expired: %{BOOL}d", v39, 0x26u);
      sub_10000FF00(v60);

      swift_arrayDestroy();
    }

    else
    {
      v45 = v10[1];
      v45(v64, v9);
      v45(v65, v9);

      v45(v18, v9);
      v45(v21, v9);
    }

    (*(v67 + 8))(v66, v63);
    v33 = static Date.> infix(_:_:)();
    v45(v24, v9);
    v45(v26, v9);
  }

  return v33 & 1;
}

char *sub_1000255F0()
{
  v0 = String.count.getter();
  if (v0)
  {
    v1 = v0;
    result = sub_1000266C4(0, v0 & ~(v0 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v4 = String.subscript.getter();
      v5 = v3;
      if (v4 == 45 && v3 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 43;
      }

      else if (v4 == 95 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = 0xE100000000000000;
        v4 = 47;
      }

      v7 = *(&_swiftEmptyArrayStorage + 2);
      v6 = *(&_swiftEmptyArrayStorage + 3);
      if (v7 >= v6 >> 1)
      {
        sub_1000266C4((v6 > 1), v7 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v7 + 1;
      v8 = &_swiftEmptyArrayStorage + 16 * v7;
      *(v8 + 4) = v4;
      *(v8 + 5) = v5;
      String.index(after:)();
      --v1;
    }

    while (v1);
  }

  sub_100002AD8(&qword_100039F10, &qword_10002B348);
  sub_100026FA0();
  String.init<A>(_:)();

  v9 = String.count.getter();

  v10 = v9 & 3;
  if (v9 <= 0)
  {
    v10 = -(-v9 & 3);
  }

  if (v10)
  {
    v11._countAndFlagsBits = 61;
    v11._object = 0xE100000000000000;
    v12 = String.init(repeating:count:)(v11, 4 - v10);
    String.append(_:)(v12);
  }

  v13 = Data.init(base64Encoded:options:)();
  v15 = v14;
  sub_100027004(v13, v14);

  if (v15 >> 60 != 15)
  {
    sub_100026F54(v13, v15);
  }

  return v13;
}

uint64_t sub_100025868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100002AD8(&qword_100039F68, &qword_10002B648);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  sub_100027D08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

Swift::Int sub_1000259FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100025A44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100025A88()
{
  if (*v0)
  {
    return 6580587;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_100025AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6580587 && a2 == 0xE300000000000000)
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

uint64_t sub_100025B88(uint64_t a1)
{
  v2 = sub_100027D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025BC4(uint64_t a1)
{
  v2 = sub_100027D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100025C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100027348(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100025C50(void *a1)
{
  v3 = v1;
  v5 = sub_100002AD8(&qword_100039F70, &qword_10002B650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  sub_100027C4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v26[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v26[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v26[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v26[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v20 = v3[9];
  v26[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v21 = v3[10];
  v22 = v3[11];
  v26[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24 = v3[12];
  v25 = v3[13];
  v26[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100025E8C()
{
  v1 = *v0;
  v2 = 6452595;
  v3 = 6580589;
  if (v1 != 5)
  {
    v3 = 0x6E5F6C6169726573;
  }

  v4 = 25705;
  if (v1 != 3)
  {
    v4 = 0x6E656B6F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 7370853;
  if (v1 != 1)
  {
    v5 = 7627113;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100025F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002752C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100025F70(uint64_t a1)
{
  v2 = sub_100027C4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025FAC(uint64_t a1)
{
  v2 = sub_100027C4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100025FE8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100027770(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

void *sub_100026054@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100026520(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100026520((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100026520(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100026520(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100026520((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100026414(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002AD8(&qword_1000395E8, &qword_10002A788);
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

char *sub_100026520(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002AD8(&qword_100039F38, &qword_10002B358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10002662C()
{
  result = qword_100039F00;
  if (!qword_100039F00)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F00);
  }

  return result;
}

char *sub_100026684(char *a1, int64_t a2, char a3)
{
  result = sub_1000266E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000266A4(char *a1, int64_t a2, char a3)
{
  result = sub_1000267F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000266C4(char *a1, int64_t a2, char a3)
{
  result = sub_100026900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000266E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002AD8(&qword_100039618, &qword_10002A7B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000267F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002AD8(&qword_1000395E8, &qword_10002A788);
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

char *sub_100026900(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002AD8(&qword_100039F20, &qword_10002B350);
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

uint64_t sub_100026A0C()
{
  v1 = sub_1000255F0();
  if (v2 >> 60 == 15)
  {
    sub_100026F00();
    swift_allocError();
    *v3 = 1;
    return swift_willThrow();
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10002706C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100026F54(v5, v6);

    if (!v0)
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_100026AFC@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1000255F0();
  if (v4 >> 60 == 15)
  {
    sub_100026F00();
    swift_allocError();
    *v5 = 1;
    return swift_willThrow();
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v9 = type metadata accessor for JSONDecoder();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100027018();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100026F54(v7, v8);

    if (!v1)
    {
      a1[4] = v16;
      a1[5] = v17;
      a1[6] = v18;
      *a1 = v12;
      a1[1] = v13;
      a1[2] = v14;
      a1[3] = v15;
    }
  }

  return result;
}

uint64_t sub_100026C10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v48 = 46;
  v49 = 0xE100000000000000;
  v36[2] = &v48;
  v5 = sub_100026054(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000138A4, v36, a1, a2, &v48);
  if (v5[2] != 3)
  {

    sub_100026F00();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return sub_100026F54(0, 0xF000000000000000);
  }

  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];
  v10 = v5;

  static String._fromSubstring(_:)();

  result = sub_100026A0C();
  if (v3)
  {

    return sub_100026F54(0, 0xF000000000000000);
  }

  v69 = v13;
  if (v10[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = v14;
    v17 = v12;
    v18 = v10[8];
    v19 = v10[9];
    v20 = v10[10];
    v21 = v10[11];

    static String._fromSubstring(_:)();

    result = sub_100026AFC(v68);
    v65 = v68[4];
    v66 = v68[5];
    v67 = v68[6];
    v61 = v68[0];
    v62 = v68[1];
    v63 = v68[2];
    v64 = v68[3];
    if (v10[2] >= 3uLL)
    {
      v23 = v10;
      v24 = v10[12];
      v25 = v23[13];
      v26 = v23[14];
      v27 = v23[15];

      static String._fromSubstring(_:)();

      v28 = sub_1000255F0();
      v30 = v29;
      sub_100026F54(0, 0xF000000000000000);
      v44 = v65;
      v45 = v66;
      v46 = v67;
      v40 = v61;
      v41 = v62;
      v42 = v63;
      v43 = v64;
      v52 = v61;
      v53 = v62;
      v57 = v66;
      v58 = v67;
      v55 = v64;
      v56 = v65;
      *&v38 = v15;
      *(&v38 + 1) = v17;
      *&v39 = v69;
      *(&v39 + 1) = v16;
      *&v47 = v28;
      *(&v47 + 1) = v30;
      v48 = v15;
      v49 = v17;
      v50 = v69;
      v51 = v16;
      v54 = v63;
      v59 = v28;
      v60 = v30;
      sub_100026F68(&v38, v37);
      result = sub_10000D4BC(&v48);
      v31 = v45;
      a3[6] = v44;
      a3[7] = v31;
      v32 = v47;
      a3[8] = v46;
      a3[9] = v32;
      v33 = v41;
      a3[2] = v40;
      a3[3] = v33;
      v34 = v43;
      a3[4] = v42;
      a3[5] = v34;
      v35 = v39;
      *a3 = v38;
      a3[1] = v35;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100026F00()
{
  result = qword_100039F08;
  if (!qword_100039F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F08);
  }

  return result;
}

uint64_t sub_100026F54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000D80C(a1, a2);
  }

  return a1;
}

unint64_t sub_100026FA0()
{
  result = qword_100039F18;
  if (!qword_100039F18)
  {
    sub_10001E244(&qword_100039F10, &qword_10002B348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F18);
  }

  return result;
}

uint64_t sub_100027004(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001EA94(a1, a2);
  }

  return a1;
}

unint64_t sub_100027018()
{
  result = qword_100039F28;
  if (!qword_100039F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F28);
  }

  return result;
}

unint64_t sub_10002706C()
{
  result = qword_100039F30;
  if (!qword_100039F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F30);
  }

  return result;
}

__n128 sub_1000270D0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1000270F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002713C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000271C0(uint64_t a1)
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

uint64_t sub_1000271DC(uint64_t a1)
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

__n128 sub_100027204(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100027230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_100027278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000272F4()
{
  result = qword_100039F40;
  if (!qword_100039F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F40);
  }

  return result;
}

uint64_t sub_100027348(uint64_t *a1)
{
  v3 = sub_100002AD8(&qword_100039F58, &qword_10002B640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  sub_100027D08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002B88(a1);
  return v8;
}

uint64_t sub_10002752C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6452595 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7370853 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7627113 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6580589 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E5F6C6169726573 && a2 == 0xE90000000000006FLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100027770@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100002AD8(&qword_100039F48, &qword_10002B638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  sub_100027C4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002B88(a1);
  }

  LOBYTE(v55[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v14 = v11;
  LOBYTE(v55[0]) = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = v16 & 1;
  LOBYTE(v55[0]) = 2;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v67 = v17 & 1;
  LOBYTE(v55[0]) = 3;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v18;
  LOBYTE(v55[0]) = 4;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v20;
  v41 = v19;
  LOBYTE(v55[0]) = 5;
  v43 = 0;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v21;
  v69 = 6;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = *(v6 + 8);
  v43 = v22;
  v24 = v9;
  v26 = v25;
  v23(v24, v5);
  v39 = v14;
  *&v48 = v14;
  *(&v48 + 1) = v13;
  v38 = v15;
  *&v49 = v15;
  v37 = v68;
  BYTE8(v49) = v68;
  *&v50 = v47;
  v36 = v67;
  BYTE8(v50) = v67;
  v27 = v44;
  *&v51 = v44;
  v28 = v46;
  *(&v51 + 1) = v46;
  v29 = v45;
  *&v52 = v41;
  *(&v52 + 1) = v45;
  v30 = v42;
  *&v53 = v40;
  *(&v53 + 1) = v42;
  *&v54 = v43;
  *(&v54 + 1) = v26;
  sub_100027CA0(&v48, v55);
  sub_100002B88(a1);
  v55[0] = v39;
  v55[1] = v13;
  v55[2] = v38;
  v56 = v37;
  v57 = v47;
  v58 = v36;
  v59 = v27;
  v60 = v28;
  v61 = v41;
  v62 = v29;
  v63 = v40;
  v64 = v30;
  v65 = v43;
  v66 = v26;
  result = sub_100027CD8(v55);
  v32 = v53;
  a2[4] = v52;
  a2[5] = v32;
  a2[6] = v54;
  v33 = v49;
  *a2 = v48;
  a2[1] = v33;
  v34 = v51;
  a2[2] = v50;
  a2[3] = v34;
  return result;
}

unint64_t sub_100027C4C()
{
  result = qword_100039F50;
  if (!qword_100039F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F50);
  }

  return result;
}

unint64_t sub_100027D08()
{
  result = qword_100039F60;
  if (!qword_100039F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JWTToken.Payload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JWTToken.Payload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100027EC0()
{
  result = qword_100039F78;
  if (!qword_100039F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F78);
  }

  return result;
}

unint64_t sub_100027F18()
{
  result = qword_100039F80;
  if (!qword_100039F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F80);
  }

  return result;
}

unint64_t sub_100027F70()
{
  result = qword_100039F88;
  if (!qword_100039F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F88);
  }

  return result;
}

unint64_t sub_100027FC8()
{
  result = qword_100039F90;
  if (!qword_100039F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F90);
  }

  return result;
}

unint64_t sub_100028020()
{
  result = qword_100039F98;
  if (!qword_100039F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F98);
  }

  return result;
}

unint64_t sub_100028078()
{
  result = qword_100039FA0;
  if (!qword_100039FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039FA0);
  }

  return result;
}

void sub_1000280EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002AD8(&qword_100039FB8, &qword_10002B888);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_10000D758(*(a1 + 56) + 32 * v14, v28);
    *&v27 = v16;
    *(&v27 + 1) = v17;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v18 = v27;
    sub_10000D904(v26, v25);
    sub_10002889C();

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v19 = sub_1000134FC(v18, *(&v18 + 1));
    if (v20)
    {
      v8 = v2[6] + 16 * v19;
      v9 = *(v8 + 8);
      *v8 = v18;
      v10 = v19;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      *(v2[6] + 16 * v19) = v18;
      *(v2[7] + 8 * v19) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }
}

Class sub_100028350(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10002889C();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_1000283F8()
{
  sub_100002AD8(&qword_100039FA8, &qword_10002B880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AC10;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010002C4C0;
  *(inited + 48) = 1;
  v2 = sub_100013A74(inited);
  swift_setDeallocating();
  sub_1000284E0(inited + 32);
  sub_100028548(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000284E0(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_100039B88, &qword_10002AE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100028548(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.metrics.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v18 = v2;
    aBlock[0] = v10;
    *(v9 + 4) = sub_10001DC98(0xD000000000000037, 0x800000010002C4E0, aBlock);
    *(v9 + 12) = 2080;
    v11 = Dictionary.description.getter();
    v13 = sub_10001DC98(v11, v12, aBlock);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Posting CA event for %{public}s: %s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v18);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = sub_10002887C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028350;
  aBlock[3] = &unk_100036528;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t sub_100028844()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002889C()
{
  result = qword_100039FB0;
  if (!qword_100039FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039FB0);
  }

  return result;
}

uint64_t dispatch thunk of Bag.subscript.getter()
{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}