uint64_t sub_100305E04()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.optional(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_100305934;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_100306360(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_10030657C, v8, v7);
}

uint64_t sub_10030657C()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.promptingForConsent(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_100305934;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_100306AD8(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_100306CF4, v8, v7);
}

uint64_t sub_100306CF4()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.promptingForManagement(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_100305934;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_100307250(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_10030746C, v8, v7);
}

uint64_t sub_10030746C()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.queued(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_100305934;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_1003079C8(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_100307BE4, v8, v7);
}

uint64_t sub_100307BE4()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.downloading(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_100305934;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_100308140(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_10030835C, v8, v7);
}

uint64_t sub_10030835C()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.installing(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_100305934;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_1003088B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 248) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for DDMDeclaration(0);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  type metadata accessor for URL();
  *(v5 + 104) = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v7 = type metadata accessor for ManagedAppStatus.State();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 184) = v9;
  *(v5 + 192) = v8;

  return _swift_task_switch(sub_100308B44, v9, v8);
}

uint64_t sub_100308B44()
{
  v73 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 24);
  (*(*(v0 + 160) + 104))(*(v0 + 176), enum case for ManagedAppStatus.State.managed(_:), *(v0 + 152));
  v3 = type metadata accessor for ManagedAppStatus.Reason();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v68 = v4;
  v69 = v3;
  if (v2)
  {
    v5 = *(v0 + 112);
    v6 = [*(v0 + 24) URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    FilePath.init(_:)();
    v7 = type metadata accessor for FilePath();
    v8 = *(v7 - 8);
    result = (*(v8 + 48))(v5, 1, v7);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v10 = *(v0 + 120);
    (*(v8 + 32))(v10, *(v0 + 112), v7);
    (*(v8 + 56))(v10, 0, 1, v7);
  }

  else
  {
    v11 = *(v0 + 120);
    v12 = type metadata accessor for FilePath();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v14 = *(v0 + 168);
  v13 = *(v0 + 176);
  v16 = *(v0 + 152);
  v15 = *(v0 + 160);
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v19 = *(v0 + 64);
  loga = *(v0 + 32);
  v20 = *(v0 + 16);
  static Logger.ddm.getter();
  (*(v15 + 16))(v14, v13, v16);
  sub_100005934(v17, v18, &qword_10077F380);
  sub_100310B50(v20, v19, type metadata accessor for DDMDeclaration);
  v21 = loga;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  v28 = *(v0 + 136);
  if (v24)
  {
    v66 = v23;
    log = v22;
    v29 = *(v0 + 128);
    v30 = *(v0 + 32);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v31 = 138413058;
    *(v31 + 4) = v30;
    v65 = v32;
    *v32 = v30;
    *(v31 + 12) = 2082;
    v33 = v30;
    v34 = ManagedAppStatus.State.rawValue.getter();
    v36 = v35;
    v67 = *(v26 + 8);
    v67(v25, v27);
    v37 = sub_1002346CC(v34, v36, &v72);

    *(v31 + 14) = v37;
    *(v31 + 22) = 2082;
    sub_100005934(v28, v29, &qword_10077F380);
    v38 = (*(v68 + 48))(v29, 1, v69);
    v39 = *(v0 + 128);
    if (v38 == 1)
    {
      sub_1000032A8(*(v0 + 128), &qword_10077F380);
      v40 = 0xE400000000000000;
      v41 = 1701736302;
    }

    else
    {
      v41 = ManagedAppStatus.Reason.rawValue.getter();
      v40 = v48;
      (*(v68 + 8))(v39, v69);
    }

    v49 = *(v0 + 96);
    v50 = *(v0 + 72);
    v51 = *(v0 + 80);
    v52 = *(v0 + 64);
    v53 = *(v0 + 48);
    sub_1000032A8(*(v0 + 136), &qword_10077F380);
    v54 = sub_1002346CC(v41, v40, &v72);

    *(v31 + 24) = v54;
    *(v31 + 32) = 2080;
    v55 = (v52 + *(v53 + 52));
    v56 = *v55;
    v57 = v55[1];

    sub_100310BB8(v52, type metadata accessor for DDMDeclaration);
    v58 = sub_1002346CC(v56, v57, &v72);

    *(v31 + 34) = v58;
    _os_log_impl(&_mh_execute_header, log, v66, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v31, 0x2Au);
    sub_1000032A8(v65, &qword_10077F920);

    swift_arrayDestroy();

    v47 = *(v51 + 8);
    v47(v49, v50);
    v46 = v67;
  }

  else
  {
    v42 = *(v0 + 96);
    v43 = *(v0 + 72);
    v44 = *(v0 + 80);
    v45 = *(v0 + 64);

    sub_100310BB8(v45, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v28, &qword_10077F380);
    v46 = *(v26 + 8);
    v46(v25, v27);
    v47 = *(v44 + 8);
    v47(v42, v43);
  }

  *(v0 + 200) = v46;
  *(v0 + 208) = v47;
  v59 = *(v0 + 176);
  v60 = *(v0 + 144);
  v61 = *(v0 + 32);
  v62 = *(v0 + 16);
  v63 = swift_task_alloc();
  *(v0 + 216) = v63;
  v63[2] = v62;
  v63[3] = v61;
  v63[4] = v59;
  v63[5] = v60;
  v64 = swift_task_alloc();
  *(v0 + 224) = v64;
  *v64 = v0;
  v64[1] = sub_1003091DC;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v63);
}

uint64_t sub_1003091DC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1003094D8;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1003092F8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1003092F8()
{
  if (*(v0 + 248) == 1)
  {
    v1 = *(*(v0 + 16) + *(*(v0 + 48) + 76));
    v2 = swift_task_alloc();
    *(v0 + 240) = v2;
    *v2 = v0;
    v2[1] = sub_1003098E0;
    v3 = *(v0 + 32);

    return sub_10030C314(v1, v3);
  }

  else
  {
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 144);
    sub_1000032A8(*(v0 + 120), &qword_10077E958);
    sub_1000032A8(v8, &qword_10077F380);
    v5(v6, v7);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1003094D8()
{
  v36 = v0;
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  static Logger.ddm.getter();
  sub_100310B50(v3, v1, type metadata accessor for DDMDeclaration);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[22];
  v11 = v0[19];
  v12 = v0[18];
  v33 = v0[11];
  v34 = v0[15];
  v32 = v0[9];
  v13 = v0[7];
  if (v7)
  {
    v14 = v0[6];
    v29 = v0[26];
    v15 = v0[4];
    v31 = v0[25];
    v16 = swift_slowAlloc();
    v30 = v11;
    v17 = swift_slowAlloc();
    v28 = v10;
    v18 = swift_slowAlloc();
    v35 = v18;
    *v16 = 138412802;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2082;
    v19 = (v13 + *(v14 + 52));
    v27 = v12;
    v20 = *v19;
    v21 = v19[1];
    v22 = v15;

    sub_100310BB8(v13, type metadata accessor for DDMDeclaration);
    v23 = sub_1002346CC(v20, v21, &v35);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v24;
    v17[1] = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Unable to set status for %{public}s: %{public}@", v16, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v18);

    v29(v33, v32);
    sub_1000032A8(v34, &qword_10077E958);
    sub_1000032A8(v27, &qword_10077F380);
    v31(v28, v30);
  }

  else
  {

    sub_100310BB8(v13, type metadata accessor for DDMDeclaration);
    v9(v33, v32);
    sub_1000032A8(v34, &qword_10077E958);
    sub_1000032A8(v12, &qword_10077F380);
    v8(v10, v11);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_1003098E0()
{
  v1 = *v0;
  v8 = *v0;

  v2 = v1[25];
  v3 = v1[22];
  v4 = v1[19];
  v5 = v1[18];
  sub_1000032A8(v1[15], &qword_10077E958);
  sub_1000032A8(v5, &qword_10077F380);
  v2(v3, v4);

  v6 = v8[1];

  return v6();
}

uint64_t sub_100309BD4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_100309DF0, v8, v7);
}

uint64_t sub_100309DF0()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.managedButUninstalled(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_10030A34C;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_10030A34C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10030A600;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10030A468;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10030A468()
{
  if (*(v0 + 216) == 1)
  {
    v1 = *(*(v0 + 16) + *(*(v0 + 40) + 76));
    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = sub_10030A9A8;
    v3 = *(v0 + 24);

    return sub_10030C314(v1, v3);
  }

  else
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 120);
    sub_1000032A8(*(v0 + 112), &qword_10077F380);
    v5(v6, v7);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10030A600()
{
  v35 = v0;
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];

  static Logger.ddm.getter();
  sub_100310B50(v2, v1, type metadata accessor for DDMDeclaration);
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v32 = v0[8];
  v33 = v0[10];
  v13 = v0[6];
  if (v7)
  {
    v30 = v0[14];
    v31 = v0[15];
    v14 = v0[5];
    v15 = v0[3];
    v27 = v0[22];
    v16 = swift_slowAlloc();
    v29 = v10;
    v17 = swift_slowAlloc();
    v28 = v8;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v16 = 138412802;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2082;
    v19 = (v13 + *(v14 + 52));
    v20 = *v19;
    v21 = v19[1];
    v22 = v15;

    sub_100310BB8(v13, type metadata accessor for DDMDeclaration);
    v23 = sub_1002346CC(v20, v21, &v34);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v24;
    v17[1] = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Unable to set status for %{public}s: %{public}@", v16, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v18);

    v27(v33, v32);
    sub_1000032A8(v30, &qword_10077F380);
    v28(v29, v31);
  }

  else
  {

    sub_100310BB8(v13, type metadata accessor for DDMDeclaration);
    v9(v33, v32);
    sub_1000032A8(v12, &qword_10077F380);
    v8(v10, v11);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10030A9A8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[21];
  v4 = v1[18];
  v5 = v1[15];
  sub_1000032A8(v1[14], &qword_10077F380);
  v3(v4, v5);

  v6 = v2[1];

  return v6();
}

uint64_t sub_10030AC24(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_10030AE40, v8, v7);
}

uint64_t sub_10030AE40()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.notPresent(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_100305934;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_10030B39C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 216) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for DDMDeclaration(0);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v7 = type metadata accessor for ManagedAppStatus.State();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 152) = v9;
  *(v5 + 160) = v8;

  return _swift_task_switch(sub_10030B5AC, v9, v8);
}

uint64_t sub_10030B5AC()
{
  v62 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[3];
  loga = v0[4];
  v8 = v0[2];
  (*(v4 + 104))(v2, enum case for ManagedAppStatus.State.failed(_:), v3);
  static Logger.ddm.getter();
  (*(v4 + 16))(v1, v2, v3);
  sub_100005934(v7, v5, &qword_10077F380);
  sub_100310B50(v8, v6, type metadata accessor for DDMDeclaration);
  v9 = loga;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  if (v12)
  {
    v58 = v11;
    log = v10;
    v16 = v0[9];
    v55 = v0[10];
    v17 = v0[4];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v18 = 138413058;
    *(v18 + 4) = v17;
    v57 = v19;
    *v19 = v17;
    *(v18 + 12) = 2082;
    v20 = v17;
    v21 = ManagedAppStatus.State.rawValue.getter();
    v23 = v22;
    v24 = *(v14 + 8);
    v24(v13, v15);
    v25 = sub_1002346CC(v21, v23, &v61);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2082;
    sub_100005934(v55, v16, &qword_10077F380);
    v26 = type metadata accessor for ManagedAppStatus.Reason();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 48))(v16, 1, v26);
    v29 = v0[9];
    if (v28 == 1)
    {
      sub_1000032A8(v0[9], &qword_10077F380);
      v30 = 0xE400000000000000;
      v31 = 1701736302;
    }

    else
    {
      v31 = ManagedAppStatus.Reason.rawValue.getter();
      v30 = v38;
      (*(v27 + 8))(v29, v26);
    }

    v56 = v0[14];
    v40 = v0[11];
    v39 = v0[12];
    v41 = v0[8];
    v42 = v0[6];
    sub_1000032A8(v0[10], &qword_10077F380);
    v43 = sub_1002346CC(v31, v30, &v61);

    *(v18 + 24) = v43;
    *(v18 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v61);

    *(v18 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v58, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v18, 0x2Au);
    sub_1000032A8(v57, &qword_10077F920);

    swift_arrayDestroy();

    v37 = *(v39 + 8);
    v37(v56, v40);
  }

  else
  {
    v32 = v0[14];
    v33 = v0[11];
    v34 = v0[12];
    v35 = v0[10];
    v36 = v0[8];

    sub_100310BB8(v36, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v35, &qword_10077F380);
    v24 = *(v14 + 8);
    v24(v13, v15);
    v37 = *(v34 + 8);
    v37(v32, v33);
  }

  v0[21] = v24;
  v0[22] = v37;
  v48 = v0[18];
  v49 = v0[4];
  v51 = v0[2];
  v50 = v0[3];
  v52 = swift_task_alloc();
  v0[23] = v52;
  v52[2] = v51;
  v52[3] = v49;
  v52[4] = v48;
  v52[5] = v50;
  v53 = swift_task_alloc();
  v0[24] = v53;
  *v53 = v0;
  v53[1] = sub_10030BAE8;

  return sub_10052E0B0(sub_10052E0B0, sub_100310AC0, v52);
}

uint64_t sub_10030BAE8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10030BD70;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10030BC04;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10030BC04()
{
  if (*(v0 + 216) == 1)
  {
    v1 = *(*(v0 + 16) + *(*(v0 + 48) + 76));
    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = sub_10030C0DC;
    v3 = *(v0 + 32);

    return sub_10030C314(v1, v3);
  }

  else
  {
    (*(v0 + 168))(*(v0 + 144), *(v0 + 120));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10030BD70()
{
  v34 = v0;
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  static Logger.ddm.getter();
  sub_100310B50(v3, v1, type metadata accessor for DDMDeclaration);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[13];
  v32 = v0[11];
  v13 = v0[7];
  if (v7)
  {
    v30 = v0[22];
    v31 = v0[18];
    v14 = v0[6];
    v15 = v0[4];
    v16 = swift_slowAlloc();
    v29 = v8;
    v17 = swift_slowAlloc();
    v28 = v12;
    v18 = swift_slowAlloc();
    v33 = v18;
    *v16 = 138412802;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2082;
    v19 = (v13 + *(v14 + 52));
    v27 = v11;
    v20 = *v19;
    v21 = v19[1];
    v22 = v15;

    sub_100310BB8(v13, type metadata accessor for DDMDeclaration);
    v23 = sub_1002346CC(v20, v21, &v33);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v24;
    v17[1] = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Unable to set status for %{public}s: %{public}@", v16, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v18);

    v30(v28, v32);
    v29(v31, v27);
  }

  else
  {

    sub_100310BB8(v13, type metadata accessor for DDMDeclaration);
    v9(v12, v32);
    v8(v10, v11);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10030C0DC()
{
  v1 = *v0;
  v2 = *v0;

  (*(v1 + 168))(*(v1 + 144), *(v1 + 120));

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10030C314(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 73) = a1;
  v4 = type metadata accessor for Logger();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10030C42C, v6, v5);
}

uint64_t sub_10030C42C()
{
  v29 = v0;
  v1 = *(v0 + 16);
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v27 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = *(v0 + 16);
    v8 = *(v0 + 73);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v7;
    *v10 = v7;
    *(v9 + 12) = 2082;
    *(v0 + 72) = v8 & 1;
    v12 = v7;
    v13 = String.init<A>(describing:)();
    v15 = sub_1002346CC(v13, v14, &v28);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Notifying subscriber in scope %{public}s", v9, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_10000710C(v11);

    (*(v5 + 8))(v27, v6);
  }

  else
  {
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = *(v0 + 32);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 24);
  v20 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon32ManagedAppDeclarationStatusStore_postTimer;
  v21 = *(v19 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon32ManagedAppDeclarationStatusStore_postTimer);
  if (!v21)
  {
    sub_1001F0C48(&qword_100780190);
    v21 = swift_allocObject();
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    *(v21 + 48) = 0;
    *(v21 + 16) = xmmword_10069F940;
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = &unk_1006A1558;
    v22[5] = 0;
    *(v21 + 32) = &unk_1006A1568;
    *(v21 + 40) = v22;
    *(v19 + v20) = v21;
  }

  *(v0 + 56) = v21;
  v23 = *(v0 + 73);

  v24 = swift_task_alloc();
  *(v0 + 64) = v24;
  *v24 = v0;
  v24[1] = sub_10030C734;
  v25 = *(v0 + 24);

  return sub_10030F9D0(v23 & 1, v25, v21);
}

uint64_t sub_10030C734()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10030C888()
{
  v1 = *(v0 + 16);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      if (*(*(v1 + 48) + (v9 | (v8 << 6))))
      {
        v10 = "com.apple.managedappdistribution.managed-app-changed.user";
      }

      else
      {
        v10 = "com.apple.managedappdistribution.managed-app-changed.system";
      }

      result = notify_post(v10);
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10030C9B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 120) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for Logger();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 72) = v8;
  *(v5 + 80) = v7;

  return _swift_task_switch(sub_10030CAD0, v8, v7);
}

uint64_t sub_10030CAD0()
{
  v24 = v0;
  v1 = v0[4];
  static Logger.ddm.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  if (v5)
  {
    v22 = v0[8];
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[2];
    v21 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = sub_1002346CC(v11, v10, &v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Removing status for declaration %s", v12, 0x16u);
    sub_1000032A8(v13, &qword_10077F920);

    sub_10000710C(v14);

    (*(v6 + 8))(v22, v21);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v17 = v0[2];
  v16 = v0[3];
  v18 = swift_task_alloc();
  v0[11] = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v19 = swift_task_alloc();
  v0[12] = v19;
  *v19 = v0;
  v19[1] = sub_10030CD3C;

  return sub_1005306C4(sub_100310898, v18);
}

uint64_t sub_10030CD3C()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);

    return _swift_task_switch(sub_10030CFD8, v3, v4);
  }

  else
  {
    v5 = *(v2 + 120);

    v6 = swift_task_alloc();
    *(v2 + 112) = v6;
    *v6 = v2;
    v6[1] = sub_10030CEC4;
    v7 = *(v2 + 32);

    return sub_10030C314(v5 & 1, v7);
  }
}

uint64_t sub_10030CEC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10030CFD8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10030D048(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = *a1;

  v8 = sub_10031032C(0, 0, a2, a3, sub_1003102B8, 0, v7);

  if (v8)
  {
    [v8 deleteFromDatabase];
  }

  *a4 = v8 == 0;
}

uint64_t sub_10030D0EC(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v184 = a5;
  v192 = a4;
  v181 = a3;
  v7 = sub_1001F0C48(&qword_10077F3A0);
  __chkstk_darwin(v7 - 8);
  v167 = &v160 - v8;
  v165 = type metadata accessor for DDMDeclarationStatus(0);
  v9 = __chkstk_darwin(v165);
  v170 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v177 = (&v160 - v11);
  v12 = sub_1001F0C48(&qword_10077F380);
  v13 = __chkstk_darwin(v12 - 8);
  v166 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v173 = &v160 - v15;
  v16 = type metadata accessor for ManagedAppStatus.Reason();
  v185 = *(v16 - 8);
  v186 = v16;
  v17 = __chkstk_darwin(v16);
  v169 = (&v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v168 = &v160 - v20;
  v21 = __chkstk_darwin(v19);
  v163 = &v160 - v22;
  __chkstk_darwin(v21);
  v176 = (&v160 - v23);
  v172 = sub_1001F0C48(&qword_1007801A0);
  __chkstk_darwin(v172);
  v188 = &v160 - v24;
  v25 = sub_1001F0C48(&qword_10077F3D8);
  v26 = __chkstk_darwin(v25 - 8);
  v174 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v162 = &v160 - v29;
  v30 = __chkstk_darwin(v28);
  v179 = &v160 - v31;
  __chkstk_darwin(v30);
  v180 = &v160 - v32;
  v33 = type metadata accessor for ManagedAppStatus.State();
  v190 = *(v33 - 8);
  v191 = v33;
  v34 = __chkstk_darwin(v33);
  v164 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v171 = &v160 - v37;
  __chkstk_darwin(v36);
  v39 = &v160 - v38;
  v40 = type metadata accessor for DDMDeclaration(0);
  v41 = __chkstk_darwin(v40);
  v43 = &v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v160 - v45;
  __chkstk_darwin(v44);
  v48 = &v160 - v47;
  v49 = type metadata accessor for Logger();
  v182 = *(v49 - 1);
  v183 = v49;
  v50 = __chkstk_darwin(v49);
  v178 = &v160 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v53 = &v160 - v52;
  v175 = v40;
  v54 = a2;
  v55 = (a2 + *(v40 + 52));
  v56 = *v55;
  v57 = v55[1];
  v58 = *a1;

  v59 = sub_10031032C(0, 0, v56, v57, sub_1003102B8, 0, v58);

  v189 = v59;
  if (v59)
  {
    static Logger.ddm.getter();
    sub_100310B50(v54, v48, type metadata accessor for DDMDeclaration);
    v177 = v190[2];
    v178 = (v190 + 2);
    v177(v39, v192, v191);
    v60 = v181;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v169 = v64;
      v170 = swift_slowAlloc();
      v193 = v170;
      *v63 = 138412802;
      *(v63 + 4) = v60;
      *v64 = v60;
      *(v63 + 12) = 2080;
      v65 = &v48[*(v175 + 52)];
      v66 = *v65;
      v67 = v65[1];
      v68 = v60;

      sub_100310BB8(v48, type metadata accessor for DDMDeclaration);
      v69 = sub_1002346CC(v66, v67, &v193);

      *(v63 + 14) = v69;
      *(v63 + 22) = 2080;
      v70 = ManagedAppStatus.State.rawValue.getter();
      v72 = v71;
      v73 = v190;
      v74 = v39;
      v75 = v191;
      v181 = v190[1];
      (v181)(v74, v191);
      v76 = sub_1002346CC(v70, v72, &v193);

      *(v63 + 24) = v76;
      _os_log_impl(&_mh_execute_header, v61, v62, "[%@] Updating managed app state for: %s to: %s", v63, 0x20u);
      sub_1000032A8(v169, &qword_10077F920);

      swift_arrayDestroy();

      (*(v182 + 8))(v53, v183);
      v77 = v75;
      v78 = v73;
    }

    else
    {

      v78 = v190;
      v77 = v191;
      v181 = v190[1];
      (v181)(v39, v191);
      sub_100310BB8(v48, type metadata accessor for DDMDeclaration);
      (*(v182 + 8))(v53, v183);
    }

    v102 = v179;
    v103 = v189;
    v104 = sub_1005362B8(4, v189);
    v105 = _swiftEmptyArrayStorage;
    if (v104)
    {
      v105 = v104;
    }

    v190 = v105;
    v106 = v180;
    v177(v180, v192, v77);
    v182 = v78[7];
    v183 = (v78 + 7);
    (v182)(v106, 0, 1, v77);
    sub_10053604C(v103, v102);
    v107 = *(v172 + 48);
    v108 = v188;
    sub_100005934(v106, v188, &qword_10077F3D8);
    sub_100005934(v102, &v108[v107], &qword_10077F3D8);
    v109 = v78[6];
    if (v109(v108, 1, v77) == 1)
    {
      sub_1000032A8(v102, &qword_10077F3D8);
      v110 = v188;
      sub_1000032A8(v106, &qword_10077F3D8);
      v111 = v109(&v110[v107], 1, v77);
      v113 = v185;
      v112 = v186;
      v114 = v190;
      if (v111 == 1)
      {
        sub_1000032A8(v110, &qword_10077F3D8);
        v115 = v192;
        v116 = v173;
LABEL_16:
        sub_100005934(v184, v116, &qword_10077F380);
        v118 = (*(v113 + 48))(v116, 1, v112);
        v119 = v176;
        if (v118 == 1)
        {
          sub_1000032A8(v116, &qword_10077F380);
        }

        else
        {
          v120 = *(v113 + 32);
          v120(v176, v116, v112);
          if (sub_100355C5C(v119, v114))
          {
            (*(v113 + 8))(v119, v112);
          }

          else
          {
            (*(v113 + 16))(v163, v119, v112);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v114 = sub_100363328(0, v114[2] + 1, 1, v114);
            }

            v157 = v114[2];
            v156 = v114[3];
            if (v157 >= v156 >> 1)
            {
              v114 = sub_100363328(v156 > 1, v157 + 1, 1, v114);
            }

            (*(v113 + 8))(v176, v112);
            v114[2] = v157 + 1;
            v120((v114 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v157), v163, v112);
            v115 = v192;
          }
        }

        v158 = v174;
        v177(v174, v115, v77);
        (v182)(v158, 0, 1, v77);
        v159 = v189;
        sub_10063498C(v158, 2, v189);
        sub_1000032A8(v158, &qword_10077F3D8);
        sub_100634744(v114, 4, v159);
      }
    }

    else
    {
      v117 = v162;
      sub_100005934(v108, v162, &qword_10077F3D8);
      if (v109(&v108[v107], 1, v77) != 1)
      {
        v153 = v171;
        (v78[4])(v171, &v108[v107], v77);
        sub_100310CC8(&qword_1007801A8, &type metadata accessor for ManagedAppStatus.State);
        v154 = dispatch thunk of static Equatable.== infix(_:_:)();
        v155 = v181;
        (v181)(v153, v77);
        sub_1000032A8(v179, &qword_10077F3D8);
        sub_1000032A8(v180, &qword_10077F3D8);
        v155(v117, v77);
        sub_1000032A8(v108, &qword_10077F3D8);
        v113 = v185;
        v112 = v186;
        v115 = v192;
        v116 = v173;
        v114 = v190;
        if (v154)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      sub_1000032A8(v179, &qword_10077F3D8);
      v110 = v188;
      sub_1000032A8(v180, &qword_10077F3D8);
      (v181)(v117, v77);
      v113 = v185;
      v112 = v186;
    }

    sub_1000032A8(v110, &qword_1007801A0);
    v115 = v192;
    v116 = v173;
LABEL_15:

    v114 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v161 = v43;
  v189 = v58;
  static Logger.ddm.getter();
  v79 = v54;
  sub_100310B50(v54, v46, type metadata accessor for DDMDeclaration);
  v80 = v164;
  v188 = v190[2];
  (v188)(v164, v192, v191);
  v81 = v181;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v176 = v85;
    v179 = swift_slowAlloc();
    v193 = v179;
    *v84 = 138412802;
    *(v84 + 4) = v81;
    *v85 = v81;
    *(v84 + 12) = 2080;
    v86 = v175;
    v87 = &v46[*(v175 + 52)];
    LODWORD(v174) = v83;
    v180 = v79;
    v88 = *v87;
    v89 = v87[1];
    v90 = v81;

    sub_100310BB8(v46, type metadata accessor for DDMDeclaration);
    v91 = sub_1002346CC(v88, v89, &v193);

    *(v84 + 14) = v91;
    *(v84 + 22) = 2080;
    v92 = ManagedAppStatus.State.rawValue.getter();
    v94 = v93;
    v95 = v191;
    v96 = v190[1];
    v181 = ((v190 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v190 = v96;
    (v96)(v80, v191);
    v97 = v92;
    v98 = v86;
    v99 = sub_1002346CC(v97, v94, &v193);
    v79 = v180;

    *(v84 + 24) = v99;
    _os_log_impl(&_mh_execute_header, v82, v174, "[%@] Inserting managed app state for: %s to: %s", v84, 0x20u);
    sub_1000032A8(v176, &qword_10077F920);

    swift_arrayDestroy();

    (*(v182 + 8))(v178, v183);
    v100 = v95;
    v101 = v165;
  }

  else
  {

    v100 = v191;
    v121 = v190[1];
    v181 = ((v190 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v190 = v121;
    (v121)(v80, v191);
    sub_100310BB8(v46, type metadata accessor for DDMDeclaration);
    (*(v182 + 8))(v178, v183);
    v101 = v165;
    v98 = v175;
  }

  v122 = v161;
  v123 = v171;
  v124 = v188;
  (v188)(v171, v192, v100);
  v183 = type metadata accessor for DDMDeclaration;
  sub_100310B50(v79, v122, type metadata accessor for DDMDeclaration);
  v125 = *(v98 + 56);
  v126 = (v122 + *(v98 + 52));
  v128 = *v126;
  v127 = v126[1];
  v192 = v128;
  v180 = v127;
  v129 = *(v122 + v125 + 8);
  v182 = *(v122 + v125);
  v130 = v177;
  (v124)(v177 + v101[7], v123, v100);
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v132 = *(*(updated - 8) + 56);
  v133 = v167;
  v132(v167, 1, 1, updated);
  v134 = v101[8];
  v132(&v130[v134], 1, 1, updated);
  v135 = v130;
  v136 = v101[9];
  v137 = v180;

  sub_100310BB8(v161, v183);
  (v190)(v123, v191);
  v138 = v192;
  *v130 = 0;
  *(v130 + 1) = v138;
  v139 = v182;
  *(v130 + 2) = v137;
  *(v130 + 3) = v139;
  *(v130 + 4) = v129;
  sub_100310AE0(v133, &v130[v134]);
  *&v130[v136] = _swiftEmptyArrayStorage;
  v140 = v166;
  sub_100005934(v184, v166, &qword_10077F380);
  v142 = v185;
  v141 = v186;
  if ((*(v185 + 48))(v140, 1, v186) == 1)
  {
    sub_1000032A8(v140, &qword_10077F380);
  }

  else
  {
    v143 = *(v142 + 32);
    v144 = v168;
    v143(v168, v140, v141);
    (*(v142 + 16))(v169, v144, v141);
    v145 = sub_100363328(0, 1, 1, _swiftEmptyArrayStorage);
    v147 = *(v145 + 2);
    v146 = *(v145 + 3);
    if (v147 >= v146 >> 1)
    {
      v145 = sub_100363328(v146 > 1, v147 + 1, 1, v145);
    }

    (*(v142 + 8))(v168, v141);
    *(v145 + 2) = v147 + 1;
    v143(&v145[((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v147], v169, v141);
    *(v135 + v136) = v145;
  }

  v148 = v170;
  sub_100310B50(v135, v170, type metadata accessor for DDMDeclarationStatus);
  v149 = v189;
  v150 = v187;
  v151 = sub_10056565C(v148, v149);
  if (!v150)
  {
  }

  return sub_100310BB8(v135, type metadata accessor for DDMDeclarationStatus);
}

uint64_t sub_10030E4E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 136) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for DDMDeclaration(0);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v8;
  *(v5 + 96) = v7;

  return _swift_task_switch(sub_10030E62C, v8, v7);
}

uint64_t sub_10030E62C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10030E720;

  return (sub_10052E0B0)();
}

uint64_t sub_10030E720()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10030E930;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10030E83C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10030E83C()
{
  if (*(v0 + 136) == 1)
  {
    v1 = *(*(v0 + 24) + *(*(v0 + 48) + 76));
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_10030EC5C;
    v3 = *(v0 + 32);

    return sub_10030C314(v1, v3);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10030E930()
{

  return _swift_task_switch(sub_10030E998, 0, 0);
}

uint64_t sub_10030E998()
{
  v28 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  static Logger.ddm.getter();
  sub_100310B50(v2, v1, type metadata accessor for DDMDeclaration);
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[7];
  v10 = v0[8];
  if (v7)
  {
    v26 = v0[10];
    v12 = v0[6];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v14 = 138412802;
    *(v14 + 4) = v13;
    *v15 = v13;
    *(v14 + 12) = 2082;
    v16 = (v11 + *(v12 + 52));
    v25 = v10;
    v18 = *v16;
    v17 = v16[1];
    v19 = v13;

    sub_100310BB8(v11, type metadata accessor for DDMDeclaration);
    v20 = sub_1002346CC(v18, v17, &v27);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v21;
    v15[1] = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Unable to set update status for %{public}s: %{public}@", v14, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v24);

    (*(v9 + 8))(v26, v25);
  }

  else
  {

    sub_100310BB8(v11, type metadata accessor for DDMDeclaration);
    (*(v9 + 8))(v8, v10);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10030EC5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10030ED88(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v94 = a4;
  v95 = a3;
  v6 = type metadata accessor for DDMDeclaration(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v87 = (&v87 - v11);
  __chkstk_darwin(v10);
  v88 = &v87 - v12;
  v13 = type metadata accessor for Logger();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = __chkstk_darwin(v13);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v89 = &v87 - v17;
  __chkstk_darwin(v16);
  v90 = &v87 - v18;
  v19 = sub_1001F0C48(&qword_10077F3A0);
  v20 = __chkstk_darwin(v19 - 8);
  v92 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v87 - v22;
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v25 = *(updated - 8);
  v26 = __chkstk_darwin(updated);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v87 - v29;
  v91 = v6;
  v31 = (a2 + *(v6 + 52));
  v33 = *v31;
  v32 = v31[1];
  v34 = *a1;

  v35 = sub_10031032C(0, 0, v33, v32, sub_1003102B8, 0, v34);

  if (v35)
  {
    v93 = v35;
    v37 = v94;
    v36 = v95;
    sub_100005934(v94, v23, &qword_10077F3A0);
    if ((*(v25 + 48))(v23, 1, updated) == 1)
    {
      sub_1000032A8(v23, &qword_10077F3A0);
      v38 = v89;
      static Logger.ddm.getter();
      v39 = v87;
      sub_100310B50(a2, v87, type metadata accessor for DDMDeclaration);
      v40 = v36;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v98 = v95;
        *v43 = 138412546;
        *(v43 + 4) = v40;
        *v44 = v40;
        *(v43 + 12) = 2080;
        v45 = (v39 + *(v91 + 52));
        v46 = *v45;
        v47 = v45[1];
        v48 = v40;

        sub_100310BB8(v39, type metadata accessor for DDMDeclaration);
        v49 = v38;
        v50 = sub_1002346CC(v46, v47, &v98);

        *(v43 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v41, v42, "[%@] Clearing update state for declaration %s", v43, 0x16u);
        sub_1000032A8(v44, &qword_10077F920);

        sub_10000710C(v95);
        v37 = v94;

        (*(v96 + 8))(v49, v97);
      }

      else
      {

        sub_100310BB8(v39, type metadata accessor for DDMDeclaration);
        (*(v96 + 8))(v38, v97);
      }
    }

    else
    {
      v61 = v30;
      (*(v25 + 32))(v30, v23, updated);
      v62 = v90;
      static Logger.ddm.getter();
      v63 = *(v25 + 16);
      v89 = v61;
      v63(v28, v61, updated);
      v64 = a2;
      v65 = v88;
      sub_100310B50(v64, v88, type metadata accessor for DDMDeclaration);
      v66 = v36;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v87 = v70;
        v95 = swift_slowAlloc();
        v98 = v95;
        *v69 = 138412802;
        *(v69 + 4) = v66;
        *v70 = v66;
        *(v69 + 12) = 2082;
        v71 = v66;
        v72 = v65;
        v73 = v68;
        v74 = ManagedAppStatus.UpdateState.rawValue.getter();
        v76 = v75;
        v77 = *(v25 + 8);
        v77(v28);
        v78 = sub_1002346CC(v74, v76, &v98);

        *(v69 + 14) = v78;
        *(v69 + 22) = 2080;
        v79 = (v72 + *(v91 + 52));
        v80 = *v79;
        v81 = v79[1];

        sub_100310BB8(v72, type metadata accessor for DDMDeclaration);
        v82 = sub_1002346CC(v80, v81, &v98);

        *(v69 + 24) = v82;
        _os_log_impl(&_mh_execute_header, v67, v73, "[%@] Setting update state %{public}s for declaration %s", v69, 0x20u);
        sub_1000032A8(v87, &qword_10077F920);

        swift_arrayDestroy();

        v37 = v94;

        (*(v96 + 8))(v90, v97);
        (v77)(v89, updated);
      }

      else
      {

        sub_100310BB8(v65, type metadata accessor for DDMDeclaration);
        v84 = *(v25 + 8);
        v84(v28, updated);
        (*(v96 + 8))(v62, v97);
        v84(v89, updated);
      }
    }

    v85 = v92;
    sub_100005934(v37, v92, &qword_10077F3A0);
    v86 = v93;
    sub_100634DDC(v85, 3, v93);

    return sub_1000032A8(v85, &qword_10077F3A0);
  }

  else
  {
    static Logger.ddm.getter();
    sub_100310B50(a2, v9, type metadata accessor for DDMDeclaration);
    v51 = v95;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v98 = v95;
      *v54 = 138412546;
      *(v54 + 4) = v51;
      *v55 = v51;
      *(v54 + 12) = 2080;
      v56 = &v9[*(v91 + 52)];
      v58 = *v56;
      v57 = v56[1];
      v59 = v51;

      sub_100310BB8(v9, type metadata accessor for DDMDeclaration);
      v60 = sub_1002346CC(v58, v57, &v98);

      *(v54 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%@] State for declaration %s was missing", v54, 0x16u);
      sub_1000032A8(v55, &qword_10077F920);

      sub_10000710C(v95);
    }

    else
    {

      sub_100310BB8(v9, type metadata accessor for DDMDeclaration);
    }

    return (*(v96 + 8))(v93, v97);
  }
}

uint64_t sub_10030F7C4()
{
  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon32ManagedAppDeclarationStatusStore_database, &qword_1007801B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManagedAppDeclarationStatusStore()
{
  result = qword_10077FFF0;
  if (!qword_10077FFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030F8A4()
{
  sub_10030F94C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10030F94C()
{
  if (!qword_100780000)
  {
    type metadata accessor for DDMDeclarationStatusDatabaseConfig(255);
    v0 = type metadata accessor for SQLiteDatabase();
    if (!v1)
    {
      atomic_store(v0, &qword_100780000);
    }
  }
}

uint64_t sub_10030F9D0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 49) = a1;
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 72) = v5;
  *(v3 + 80) = v4;

  return _swift_task_switch(sub_10030FA8C, v5, v4);
}

uint64_t sub_10030FA8C()
{
  v12 = v0;
  v1 = *(v0 + 64);
  if (*(v1 + 48))
  {
    v2 = *(v0 + 49);
    v3 = *(v1 + 56);
    v10 = *(v1 + 48);

    sub_1003F144C(&v11, v2 & 1);
    v4 = *(v1 + 48);
    *(v1 + 48) = v10;
    *(v1 + 56) = v3;
    sub_10027070C(v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_10030FBA0;
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);

    return sub_10030FF38(v9, v8);
  }
}

uint64_t sub_10030FBA0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_10030FCC8, v4, v3);
}

uint64_t sub_10030FCC8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 49);
  v4 = v2[6];
  v2[6] = &_swiftEmptySetSingleton;
  v2[7] = v1;
  sub_10027070C(v4);
  v5 = v2[4];
  sub_1001F0C48(&qword_100780198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = v3 & 1;
  v7 = sub_1001F6610(inited);
  *(v0 + 104) = v7;
  swift_setDeallocating();
  v10 = (v5 + *v5);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10030FE28;

  return v10(v7);
}

uint64_t sub_10030FE28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10030FF38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1001F0C48(&unk_100780380);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  swift_getObjectType();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10031009C, v6, v5);
}

uint64_t sub_10031009C()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v18 = v0[3];
  v8 = v0[2];
  static ContinuousClock.now.getter();
  v17 = v1;
  ContinuousClock.Instant.advanced(by:)();
  v19 = *(v5 + 8);
  v19(v3, v6);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v5 + 16))(v3, v1, v6);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v2;
  (*(v5 + 32))(v12 + v10, v3, v6);
  v13 = (v12 + v11);
  *v13 = v8;
  v13[1] = v2;
  *(v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  swift_retain_n();

  v14 = sub_100494DB4(0, 0, v7, &unk_1006A1590, v12);
  v19(v17, v6);

  v15 = v0[1];

  return v15(v14);
}

void sub_1003102B8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DDMDeclarationStatusEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_10031032C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52 = 0;
  type metadata accessor for DDMDeclarationStatusEntity.Entity();
  v14 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v15 = sub_100238EB4(a2 & 0x1FF, a3, a4);
  [v14 setPredicate:v15];

  if (a1)
  {
    v50 = a5;
    v16 = *(a1 + 16);
    if (v16)
    {
      v48 = a6;
      v49 = v14;

      v17 = _swiftEmptyArrayStorage;
      v18 = (a1 + 33);
      v19 = _swiftEmptyArrayStorage;
      while (1)
      {
        v20 = *(v18 - 1);
        if (*v18)
        {
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
          }

          v25 = *(v17 + 2);
          v24 = *(v17 + 3);
          if (v25 >= v24 >> 1)
          {
            v17 = sub_100009530((v24 > 1), v25 + 1, 1, v17);
          }

          *(v17 + 2) = v25 + 1;
          v26 = &v17[16 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
          if (v20 > 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
          }

          v33 = *(v17 + 2);
          v32 = *(v17 + 3);
          if (v33 >= v32 >> 1)
          {
            v17 = sub_100009530((v32 > 1), v33 + 1, 1, v17);
          }

          *(v17 + 2) = v33 + 1;
          v34 = &v17[16 * v33];
          *(v34 + 4) = v29;
          *(v34 + 5) = v31;
          if (v20 > 1)
          {
LABEL_17:
            if (v20 == 2)
            {
              v28 = 0xE500000000000000;
              v27 = 0x6574617473;
            }

            else if (v20 == 3)
            {
              v27 = 0x735F657461647075;
              v28 = 0xEC00000065746174;
            }

            else
            {
              v28 = 0xE700000000000000;
              v27 = 0x736E6F73616572;
            }

            goto LABEL_23;
          }
        }

        v27 = 0x746172616C636564;
        if (v20)
        {
          v28 = 0xEF79656B5F6E6F69;
        }

        else
        {
          v28 = 0xEE0064695F6E6F69;
        }

LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100009530(0, *(v19 + 2) + 1, 1, v19);
        }

        v36 = *(v19 + 2);
        v35 = *(v19 + 3);
        if (v36 >= v35 >> 1)
        {
          v19 = sub_100009530((v35 > 1), v36 + 1, 1, v19);
        }

        *(v19 + 2) = v36 + 1;
        v37 = &v19[16 * v36];
        *(v37 + 4) = v27;
        *(v37 + 5) = v28;
        v18 += 2;
        if (!--v16)
        {

          v14 = v49;
          a6 = v48;
          goto LABEL_30;
        }
      }
    }

    v17 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage;
LABEL_30:
    sub_100235974(v17);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setOrderingDirections:isa];

    sub_100235974(v19);

    v39 = Array._bridgeToObjectiveC()().super.isa;

    [v14 setOrderingProperties:v39];

    a5 = v50;
  }

  v40 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a7 descriptor:v14];
  v41 = swift_allocObject();
  v41[2] = &v52;
  v41[3] = a5;
  v41[4] = a6;
  v41[5] = a7;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1002398F8;
  *(v42 + 24) = v41;
  aBlock[4] = sub_100239904;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_10075EFB8;
  v43 = _Block_copy(aBlock);
  v44 = a7;

  [v40 enumeratePersistentIDsUsingBlock:v43];

  _Block_release(v43);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v47 = v52;

    return v47;
  }

  return result;
}

uint64_t sub_1003108B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_100261450(a1, v4, v5, v6);
}

uint64_t sub_10031097C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1001F0E54;

  return sub_100261544(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_100310AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F3A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100310B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100310BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100310C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMDeclarationStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100310C7C()
{
  result = qword_1007801B8;
  if (!qword_1007801B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007801B8);
  }

  return result;
}

uint64_t sub_100310CC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100310D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_1007801B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100310DA0(uint64_t a1)
{
  v2[298] = v1;
  v2[297] = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[299] = v3;
  v2[300] = *(v3 - 8);
  v2[301] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v2[302] = v4;
  v2[303] = *(v4 - 8);
  v2[304] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v2[305] = v5;
  v2[306] = *(v5 - 8);
  v2[307] = swift_task_alloc();
  v2[308] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v2[309] = v6;
  v2[310] = *(v6 - 8);
  v2[311] = swift_task_alloc();
  v2[312] = sub_1001F0C48(&unk_1007809F0);
  v2[313] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[314] = v7;
  v2[315] = *(v7 - 8);
  v2[316] = swift_task_alloc();
  v2[317] = swift_task_alloc();
  v2[318] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[319] = v8;
  v2[320] = *(v8 - 8);
  v2[321] = swift_task_alloc();
  v2[322] = swift_task_alloc();
  v2[323] = swift_task_alloc();
  v2[324] = swift_task_alloc();

  return _swift_task_switch(sub_1003110B4, v1, 0);
}

uint64_t sub_1003110B4()
{
  v1 = v0[298];
  v2 = *(v1 + 152);
  v0[325] = v2;
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_request;
  v0[326] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_request;
  v4 = type metadata accessor for DownloadRequest();
  v0[327] = v4;
  sub_10020A980(v2 + *(v4 + 68) + v3, (v0 + 282));
  sub_1001F0C48(&qword_10077F4D8);
  swift_dynamicCast();
  *(v1 + 304) = 0;
  *(v1 + 280) = 0;

  static Logger.download.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[298];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v7 + 160);
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Resetting data consumer", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  v12 = v0[324];
  v13 = v0[320];
  v14 = v0[319];
  v15 = v0[298];

  v16 = *(v13 + 8);
  v0[328] = v16;
  v0[329] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v14);
  v0[330] = *sub_100006D8C((v15 + 112), *(v15 + 136));
  v17 = swift_task_alloc();
  v0[331] = v17;
  *v17 = v0;
  v17[1] = sub_1003112F4;

  return sub_100490898();
}

uint64_t sub_1003112F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2656) = v1;

  if (v1)
  {
    v5 = *(v4 + 2384);
    v6 = sub_1003120A4;
    v7 = 0;
  }

  else
  {
    *(v4 + 2664) = a1;
    type metadata accessor for StreamingExtractor();
    sub_10031E050(&unk_1007803D0, type metadata accessor for StreamingExtractor);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v6 = sub_10031147C;
    v5 = v8;
    v7 = v10;
  }

  return _swift_task_switch(v6, v5, v7);
}

uint64_t sub_10031147C()
{
  v1 = v0[330];
  v2 = v0[298];
  v3 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor);
  *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor) = v0[333];

  return _swift_task_switch(sub_1003114FC, v2, 0);
}

uint64_t sub_1003114FC()
{
  v96 = v0;
  v1 = (v0 + 1224);
  sub_100005934(*(v0 + 2376), v0 + 1288, &qword_10077E968);
  if (*(v0 + 1320))
  {
    v2 = *(v0 + 1304);
    *v1 = *(v0 + 1288);
    *(v0 + 1240) = v2;
    v3 = *(v0 + 1336);
    *(v0 + 1256) = *(v0 + 1320);
    *(v0 + 1272) = v3;
  }

  else
  {
    sub_100005934(v0 + 72, v0 + 1224, &qword_10077E968);
    if (*(v0 + 1320))
    {
      sub_1000032A8(v0 + 1288, &qword_10077E968);
    }
  }

  if (*(v0 + 1256))
  {
    v4 = *(v0 + 1240);
    *(v0 + 1160) = *v1;
    *(v0 + 1176) = v4;
    v5 = *(v0 + 1272);
    *(v0 + 1192) = *(v0 + 1256);
    *(v0 + 1208) = v5;
    static Logger.download.getter();
    sub_10031E0F4(v0 + 1160, v0 + 1032);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 2624);
    v10 = *(v0 + 2584);
    v11 = *(v0 + 2552);
    if (v8)
    {
      v12 = *(v0 + 2384);
      v88 = *(v0 + 2552);
      v13 = swift_slowAlloc();
      v86 = v7;
      v14 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v95 = v87;
      *v13 = 138412546;
      v15 = *(v12 + 160);
      *(v13 + 4) = v15;
      *v14 = v15;
      *(v13 + 12) = 2082;
      *(v0 + 2360) = *(v0 + 1088);
      v16 = v15;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v17;
      v18._countAndFlagsBits = 47;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      *(v0 + 2368) = *(v0 + 1080);
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      sub_10031E150(v0 + 1032);
      v20 = sub_1002346CC(v91, v92, &v95);

      *(v13 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v6, v86, "[%@] Resuming download with state: %{public}s", v13, 0x16u);
      sub_1000032A8(v14, &qword_10077F920);

      sub_10000710C(v87);

      v9(v10, v88);
    }

    else
    {

      sub_10031E150(v0 + 1032);
      v9(v10, v11);
    }

    sub_10031E150(v0 + 1160);
  }

  else
  {
    sub_1000032A8(v0 + 1224, &qword_10077E968);
  }

  v21 = (v0 + 2216);
  v22 = *(v0 + 2616);
  v23 = *(v0 + 2600) + *(v0 + 2608);
  v24 = (v23 + *(v22 + 48));
  v25 = *v24;
  v26 = v24[2];
  *(v0 + 488) = v24[1];
  *(v0 + 504) = v26;
  v27 = v24[3];
  v28 = v24[4];
  v29 = v24[6];
  *(v0 + 552) = v24[5];
  *(v0 + 568) = v29;
  *(v0 + 520) = v27;
  *(v0 + 536) = v28;
  *(v0 + 472) = v25;
  v31 = *(v0 + 472);
  v30 = *(v0 + 480);
  v33 = *(v0 + 488);
  v32 = *(v0 + 496);
  v34 = *(v0 + 504);
  v35 = *(v0 + 512);
  v36 = *(v0 + 520);
  v37 = *(v0 + 528);
  v38 = *(v0 + 567) >> 6;
  if (!v38)
  {
    v89 = (v0 + 2216);
    v52 = *(v0 + 2376);
    v53 = *(v0 + 509);
    v54 = *(v0 + 505);
    *(v0 + 1096) = v31;
    *(v0 + 1104) = v30;
    *(v0 + 1112) = v33;
    *(v0 + 1120) = v32;
    *(v0 + 1128) = v34;
    *(v0 + 1133) = v53;
    *(v0 + 1129) = v54;
    *(v0 + 1135) = *(v0 + 511);
    *(v0 + 1136) = v35;
    *(v0 + 1144) = v36;
    *(v0 + 1152) = v37;
    v55 = (v23 + *(v22 + 44));
    v56 = *v55;
    v57 = v55[2];
    *(v0 + 2088) = v55[1];
    *(v0 + 2104) = v57;
    *(v0 + 2072) = v56;
    sub_100005934(v52, v0 + 1352, &qword_10077E968);
    if (*(v0 + 1384))
    {
      v58 = *(v0 + 1368);
      *(v0 + 1544) = *(v0 + 1352);
      *(v0 + 1560) = v58;
      v59 = *(v0 + 1400);
      *(v0 + 1576) = *(v0 + 1384);
      *(v0 + 1592) = v59;
      sub_10031DF6C(v0 + 472, v0 + 696);
      v60 = v0 + 1784;
    }

    else
    {
      sub_100005934(v0 + 72, v0 + 1544, &qword_10077E968);
      if (*(v0 + 1384))
      {
        sub_10031DF6C(v0 + 472, v0 + 360);
        sub_100005934(v0 + 2072, v0 + 2024, &unk_1007803F0);
        sub_1000032A8(v0 + 1352, &qword_10077E968);
        goto LABEL_29;
      }

      sub_10031DF6C(v0 + 472, v0 + 136);
      v60 = v0 + 2168;
    }

    sub_100005934(v0 + 2072, v60, &unk_1007803F0);
LABEL_29:
    v65 = *(v0 + 2656);
    sub_10031DF6C(v0 + 472, v0 + 248);
    v66 = sub_100590620((v0 + 1096), (v0 + 2072), v0 + 1544);
    if (v65)
    {
      sub_10031E0A0(v0 + 472);
      goto LABEL_31;
    }

    v69 = v66;
    *(v0 + 2240) = type metadata accessor for Decrypter();
    *(v0 + 2248) = &off_100763080;
    sub_10031E0A0(v0 + 472);
    *(v0 + 2216) = v69;
    goto LABEL_36;
  }

  if (v38 != 1)
  {
    *(v0 + 2248) = 0;
    *v21 = 0u;
    *(v0 + 2232) = 0u;
    goto LABEL_37;
  }

  v89 = (v0 + 2216);
  v39 = *(v0 + 544);
  v40 = *(v0 + 552);
  v41 = *(v0 + 2376);
  v42 = *(v0 + 560);
  v43 = *(v0 + 536);
  v44 = *(v0 + 576);
  v45 = *(v0 + 568);
  *(v0 + 1672) = v31;
  *(v0 + 1680) = v30;
  *(v0 + 1688) = v33;
  *(v0 + 1696) = v32;
  *(v0 + 1704) = v34 & 1;
  *(v0 + 1712) = v35;
  *(v0 + 1720) = v36;
  *(v0 + 1728) = v37;
  *(v0 + 1736) = v43;
  *(v0 + 1744) = v39;
  *(v0 + 1752) = v40;
  *(v0 + 1760) = v42 & 1;
  *(v0 + 1768) = v45;
  *(v0 + 1776) = v44;
  v46 = (v23 + *(v22 + 44));
  v47 = *v46;
  v48 = v46[2];
  *(v0 + 2136) = v46[1];
  *(v0 + 2152) = v48;
  *(v0 + 2120) = v47;
  sub_100005934(v41, v0 + 1480, &qword_10077E968);
  if (*(v0 + 1512))
  {
    v49 = *(v0 + 1496);
    *(v0 + 1416) = *(v0 + 1480);
    *(v0 + 1432) = v49;
    v50 = *(v0 + 1528);
    *(v0 + 1448) = *(v0 + 1512);
    *(v0 + 1464) = v50;
    sub_10031DF6C(v0 + 472, v0 + 808);
    v51 = v0 + 1928;
  }

  else
  {
    sub_100005934(v0 + 72, v0 + 1416, &qword_10077E968);
    if (*(v0 + 1512))
    {
      sub_10031DF6C(v0 + 472, v0 + 584);
      sub_100005934(v0 + 2120, v0 + 1976, &unk_1007803F0);
      sub_1000032A8(v0 + 1480, &qword_10077E968);
      goto LABEL_22;
    }

    sub_10031DF6C(v0 + 472, v0 + 920);
    v51 = v0 + 1832;
  }

  sub_100005934(v0 + 2120, v51, &unk_1007803F0);
LABEL_22:
  sub_10020ABFC(v39, v40);

  sub_10020ABFC(v33, v32);
  v61 = qword_10077E580;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 2656);
  v63 = sub_1005F4BF0(v0 + 1672, v0 + 1728);
  if (v62)
  {
    sub_1000032A8(v0 + 1416, &qword_10077E968);
    sub_1000032A8(v0 + 2120, &unk_1007803F0);
    sub_100007158(v39, v40);

    sub_100007158(v33, v32);

    sub_100007158(v39, v40);

    sub_100007158(v33, v32);

LABEL_31:
    sub_10027323C(v0 + 16);

    v67 = *(v0 + 8);

    return v67();
  }

  v93 = &type metadata for AppLicenseDeliveryDecryptionSession;
  v94 = &off_100760218;
  LODWORD(v91) = 0x8000;
  v92 = v63;
  sub_100005934(v0 + 1416, v0 + 1608, &qword_10077E968);
  v64 = sub_1003AC8A4(&v91, (v0 + 2120), v0 + 1608);
  sub_1000032A8(v0 + 1416, &qword_10077E968);
  sub_100007158(v39, v40);

  sub_100007158(v33, v32);

  *(v0 + 2240) = type metadata accessor for Decrypter();
  *(v0 + 2248) = &off_100763080;
  sub_100007158(v33, v32);

  sub_100007158(v39, v40);

  *(v0 + 2216) = v64;
LABEL_36:
  v21 = v89;
LABEL_37:
  v70 = *(v0 + 2616);
  v71 = *(v0 + 2544);
  v72 = *(v0 + 2520);
  v73 = *(v0 + 2512);
  v74 = *(v0 + 2384);
  v75 = *(v0 + 2600) + *(v0 + 2608);
  swift_beginAccess();
  sub_10031DFC8(v21, v74 + 232);
  swift_endAccess();
  v76 = *(v70 + 24);
  v77 = *(v72 + 16);
  *(v0 + 2672) = v77;
  *(v0 + 2680) = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v77(v71, v75 + v76, v73);
  if (*(v75 + *(v70 + 36)) == 1)
  {

    return _swift_task_switch(sub_1003121D4, 0, 0);
  }

  else
  {
    v78 = *(v0 + 2672);
    v79 = *(v0 + 2616);
    v80 = *(v0 + 2536);
    v81 = *(v0 + 2528);
    v82 = *(v0 + 2520);
    v83 = *(v0 + 2512);
    v90 = *(v0 + 2384);
    v78(v80, *(v0 + 2544), v83);
    *(v0 + 2744) = *(v79 + 28);
    v78(v81, v80, v83);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.allowsCellularAccess.setter();
    URLRequest.allowsConstrainedNetworkAccess.setter();
    URLRequest.allowsExpensiveNetworkAccess.setter();
    v84 = *(v82 + 8);
    *(v0 + 2704) = v84;
    *(v0 + 2712) = (v82 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v84(v80, v83);
    sub_100006D8C((v90 + 112), *(v90 + 136));
    v85 = swift_task_alloc();
    *(v0 + 2720) = v85;
    *v85 = v0;
    v85[1] = sub_1003125FC;

    return sub_10048EA18();
  }
}

uint64_t sub_1003120A4()
{
  sub_10027323C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003121D4()
{
  v1 = v0[318];
  v2 = swift_task_alloc();
  v0[336] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[337] = v3;
  *v3 = v0;
  v3[1] = sub_1003122C8;
  v4 = v0[313];
  v5 = v0[312];

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000019, 0x80000001006C5D80, sub_10031E098, v2, v5);
}

uint64_t sub_1003122C8()
{
  v1 = *(*v0 + 2384);

  return _swift_task_switch(sub_1003123F4, v1, 0);
}

uint64_t sub_1003123F4()
{
  v1 = *(v0 + 2520);
  v2 = *(v0 + 2512);
  v3 = *(v0 + 2504);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1000032A8(v3, &unk_1007809F0);
  }

  else
  {
    v4 = *(v0 + 2544);
    (*(v1 + 8))(v4, v2);
    (*(v1 + 32))(v4, v3, v2);
  }

  v5 = *(v0 + 2672);
  v6 = *(v0 + 2616);
  v7 = *(v0 + 2536);
  v8 = *(v0 + 2528);
  v9 = *(v0 + 2520);
  v10 = *(v0 + 2512);
  v14 = *(v0 + 2384);
  v5(v7, *(v0 + 2544), v10);
  *(v0 + 2744) = *(v6 + 28);
  v5(v8, v7, v10);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.allowsCellularAccess.setter();
  URLRequest.allowsConstrainedNetworkAccess.setter();
  URLRequest.allowsExpensiveNetworkAccess.setter();
  v11 = *(v9 + 8);
  *(v0 + 2704) = v11;
  *(v0 + 2712) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v10);
  sub_100006D8C((v14 + 112), *(v14 + 136));
  v12 = swift_task_alloc();
  *(v0 + 2720) = v12;
  *v12 = v0;
  v12[1] = sub_1003125FC;

  return sub_10048EA18();
}

uint64_t sub_1003125FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2728) = a1;
  *(v4 + 2736) = v1;

  v5 = *(v3 + 2384);
  if (v1)
  {
    v6 = sub_100313158;
  }

  else
  {
    v6 = sub_100312734;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100312734()
{
  v83 = v0;
  if (v0[341])
  {
    static Logger.download.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = v0[341];
      v4 = v0[298];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412546;
      v7 = *(v4 + 160);
      *(v5 + 4) = v7;
      *v6 = v7;
      *(v5 + 12) = 2048;
      *(v5 + 14) = v3;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Resuming download at offset %llu", v5, 0x16u);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v9 = v0[341];
    v10 = v0[328];
    v11 = v0[322];
    v12 = v0[319];
    v13 = v0[298];

    v10(v11, v12);
    v82.value._countAndFlagsBits = 0x3D7365747962;
    v82.value._object = 0xE600000000000000;
    v0[294] = v9;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 45;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x65676E6152;
    v16._object = 0xE500000000000000;
    URLRequest.setValue(_:forHTTPHeaderField:)(v82, v16);

    *(v13 + 272) = 1;
  }

  v17 = v0[325] + v0[326];
  v18 = (v17 + *(v0 + 686));
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[17];
  v22 = *(v18 + 6);
  v81 = *(v17 + *(v0[327] + 40));
  v23 = v18[56];
  v24 = objc_opt_self();

  v25 = [v24 defaultSessionConfiguration];
  [v25 set_timingDataOptions:69];
  [v25 setHTTPCookieAcceptPolicy:1];
  [v25 setHTTPShouldSetCookies:0];
  [v25 setRequestCachePolicy:1];
  [v25 set_overridesBackgroundSessionAutoRedirect:1];
  [v25 setAllowsCellularAccess:v20 & 1];
  [v25 setAllowsConstrainedNetworkAccess:(v20 >> 1) & 1];
  [v25 setAllowsExpensiveNetworkAccess:(v20 >> 2) & 1];
  [v25 setDiscretionary:v21];
  [v25 set_requiresPowerPluggedIn:(v19 & 1) == 0];
  v26 = String._bridgeToObjectiveC()();
  [v25 set_sourceApplicationBundleIdentifier:v26];

  if (v22)
  {
    v27 = String._bridgeToObjectiveC()();
    [v25 set_sourceApplicationSecondaryIdentifier:v27];
  }

  sub_10043D15C(v23);

  v28 = [objc_opt_self() sessionWithConfiguration:v25];

  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v30 = [v28 dataTaskWithRequest:isa];

  v31 = qword_1006A1818[v81];
  v32 = v0[298];
  v33 = v30;
  [v33 set_priority:v31];
  [v33 setDelegate:v32];

  v34 = *(v32 + 224);
  *(v32 + 224) = v33;
  v35 = v33;

  v36 = *(v32 + 288);
  *(v32 + 288) = v28;
  v78 = v28;

  static Logger.download.getter();

  v37 = v35;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v79 = v37;

  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[328];
  v42 = v0[321];
  v43 = v0[319];
  if (v40)
  {
    v77 = v0[328];
    v44 = v0[298];
    v76 = v0[319];
    v45 = swift_slowAlloc();
    v75 = v42;
    v46 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v82.value._countAndFlagsBits = v74;
    *v45 = 138412802;
    v47 = *(v44 + 160);
    *(v45 + 4) = v47;
    *(v45 + 12) = 2114;
    *(v45 + 14) = v79;
    *v46 = v47;
    v46[1] = v33;
    *(v45 + 22) = 2082;
    swift_beginAccess();
    sub_10031E050(&qword_100780418, &type metadata accessor for URLRequest);
    v48 = v79;
    v49 = v47;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = sub_1002346CC(v50, v51, &v82.value._countAndFlagsBits);

    *(v45 + 24) = v52;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Resuming data task: %{public}@ with request: %{public}s", v45, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v74);

    v77(v75, v76);
  }

  else
  {

    v41(v42, v43);
  }

  v53 = v0[306];
  v73 = v0[338];
  v69 = v0[318];
  v68 = v0[314];
  v72 = v0[311];
  v70 = v0[310];
  v71 = v0[309];
  v54 = v0[308];
  v55 = v0[307];
  v56 = v0[305];
  v57 = v0[304];
  v66 = v0[303];
  v67 = v0[302];
  v65 = v0[301];
  v58 = v0[300];
  v59 = v0[299];
  (*(v53 + 104))(v55, **(&off_10075F330 + v81), v56);
  sub_1001F0FB0();
  (*(v53 + 32))(v54, v55, v56);
  v60 = static OS_dispatch_queue.global(qos:)();
  (*(v53 + 8))(v54, v56);
  v61 = swift_allocObject();
  *(v61 + 16) = v79;
  v0[239] = sub_10031E038;
  v0[240] = v61;
  v0[235] = _NSConcreteStackBlock;
  v0[236] = 1107296256;
  v0[237] = sub_100495FFC;
  v0[238] = &unk_10075F200;
  v62 = _Block_copy(v0 + 235);
  v80 = v79;
  static DispatchQoS.unspecified.getter();
  v0[293] = _swiftEmptyArrayStorage;
  sub_10031E050(&qword_100780400, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F0C48(&qword_100780408);
  sub_100213FA0(&qword_100780410, &qword_100780408);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v62);

  (*(v58 + 8))(v65, v59);
  (*(v66 + 8))(v57, v67);
  v73(v69, v68);

  (*(v70 + 8))(v72, v71);
  sub_10027323C((v0 + 2));

  v63 = v0[1];

  return v63();
}

uint64_t sub_100313158()
{
  v1 = *(v0 + 2488);
  v2 = *(v0 + 2480);
  v3 = *(v0 + 2472);
  (*(v0 + 2704))(*(v0 + 2544), *(v0 + 2512));
  (*(v2 + 8))(v1, v3);
  sub_10027323C(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

id *sub_1003132F4()
{
  sub_10000710C((v0 + 14));

  sub_10000710C((v0 + 22));
  sub_1000032A8((v0 + 29), &qword_100780390);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10031336C()
{
  sub_1003132F4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003133BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  v7 = type metadata accessor for URLRequest();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003134E8, v5, 0);
}

uint64_t sub_1003134E8()
{
  v49 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  static Logger.download.getter();
  v6 = *(v4 + 16);
  v6(v1, v5, v3);
  v47 = v6;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v45 = v8;
    log = v7;
    v9 = v0[8];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v13 = 138412802;
    v15 = *(v12 + 160);
    *(v13 + 4) = v15;
    v44 = v14;
    *v14 = v15;
    *(v13 + 12) = 2080;
    v16 = v15;
    v17 = URLRequest.debugDescription.getter();
    v19 = v18;
    v20 = *(v10 + 8);
    v20(v9, v11);
    v21 = sub_1002346CC(v17, v19, &v48);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    if (!URLRequest.allHTTPHeaderFields.getter())
    {
      sub_1005288C8(_swiftEmptyArrayStorage);
    }

    v22 = v0[10];
    v42 = v0[9];
    v43 = v0[11];
    v23 = v0[7];
    v24 = v0[5];
    v25 = Dictionary.description.getter();
    v27 = v26;

    v20(v23, v24);
    v28 = sub_1002346CC(v25, v27, &v48);

    *(v13 + 24) = v28;
    _os_log_impl(&_mh_execute_header, log, v45, "[%@] Following redirect: %s headers: %s", v13, 0x20u);
    sub_1000032A8(v44, &qword_10077F920);

    swift_arrayDestroy();

    (*(v22 + 8))(v43, v42);
  }

  else
  {
    v29 = v0[10];
    v30 = v0[11];
    v32 = v0[8];
    v31 = v0[9];
    v34 = v0[6];
    v33 = v0[7];
    v35 = v0[5];

    v36 = *(v34 + 8);
    v36(v33, v35);
    v36(v32, v35);
    (*(v29 + 8))(v30, v31);
  }

  v37 = v0[5];
  v38 = v0[6];
  v39 = v0[2];
  v47(v39, v0[3], v37);
  (*(v38 + 56))(v39, 0, 1, v37);

  v40 = v0[1];

  return v40();
}

uint64_t sub_100313A40(void *a1, void *a2, void *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v11 = type metadata accessor for URLRequest();
  v6[6] = v11;
  v6[7] = *(v11 - 8);
  v12 = swift_task_alloc();
  v6[8] = v12;
  sub_1001F0C48(&unk_1007803C0);
  v6[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[10] = v13;
  v6[11] = _Block_copy(a5);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a1;
  v15 = a2;
  v16 = a3;

  v20 = swift_task_alloc();
  v6[12] = v20;
  *v20 = v6;
  v20[1] = sub_100313BE8;

  return sub_1003133BC(v13, v17, v18, v19, v12);
}

uint64_t sub_100313BE8()
{
  v1 = *v0;
  v17 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v16 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 16);
  v8 = *v0;

  v9 = *(v3 + 8);
  v9(v16, v4);
  sub_10031DC90(v17, v2);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    v11 = v1[9];
    v12 = v1[6];
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v9(v11, v12);
  }

  v13 = v1[11];
  (v13)[2](v13, isa);
  _Block_release(v13);

  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_100313E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1001F0E54;

  return sub_100313F40(a5, a6, a7);
}

uint64_t sub_100313F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[134] = v3;
  v4[133] = a3;
  v4[132] = a2;
  v4[131] = a1;
  type metadata accessor for DownloadRequest();
  v4[135] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[136] = v5;
  v4[137] = *(v5 - 8);
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v6 = type metadata accessor for URLError.Code();
  v4[148] = v6;
  v4[149] = *(v6 - 8);
  v4[150] = swift_task_alloc();

  return _swift_task_switch(sub_100314100, v3, 0);
}

uint64_t sub_100314100()
{
  if (!v0[133])
  {
    v19 = v0[132];
    static Logger.download.getter();

    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[134];
      v24 = v0[132];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27 = *(v23 + 160);
      *(v25 + 4) = v27;
      *(v25 + 12) = 2114;
      *(v25 + 14) = v24;
      *v26 = v27;
      v26[1] = v24;
      v28 = v24;
      v29 = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Data task %{public}@ did complete", v25, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    v30 = v0[145];
    v31 = v0[137];
    v32 = v0[136];
    v33 = v0[134];

    v34 = *(v31 + 8);
    v35 = v34(v30, v32);
    v38 = (v33 + 304);
    goto LABEL_18;
  }

  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[148];
  swift_errorRetain();
  static URLError.cancelled.getter();
  sub_10031E050(&unk_1007803E0, &type metadata accessor for URLError.Code);
  v4 = static _ErrorCodeProtocol.~= infix(_:_:)();
  v5 = *(v2 + 8);
  v5(v1, v3);
  v6 = v0[132];
  if ((v4 & 1) == 0)
  {
    v7 = v0 + 146;

    swift_errorRetain();
    static Logger.download.getter();
    swift_errorRetain();

    v39 = v6;
    v9 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v40))
    {
      v41 = v0[134];
      v42 = v5;
      v43 = v0[132];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412802;
      v46 = *(v41 + 160);
      *(v44 + 4) = v46;
      *(v44 + 12) = 2114;
      *(v44 + 14) = v43;
      *v45 = v46;
      v45[1] = v43;
      *(v44 + 22) = 2114;
      swift_errorRetain();
      v47 = v43;
      v5 = v42;
      v48 = v46;
      v7 = v0 + 146;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v49;
      v45[2] = v49;
      _os_log_impl(&_mh_execute_header, v9, v40, "[%@] Data task %{public}@ did complete with error: %{public}@", v44, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v7 = v0 + 147;
  static Logger.download.getter();

  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_11;
  }

  v11 = v0[134];
  v12 = v5;
  v13 = v0[132];
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  *v14 = 138412546;
  v16 = *(v11 + 160);
  *(v14 + 4) = v16;
  *(v14 + 12) = 2114;
  *(v14 + 14) = v13;
  *v15 = v16;
  v15[1] = v13;
  v17 = v13;
  v5 = v12;
  v18 = v16;
  v7 = v0 + 147;
  _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Data task %{public}@ was finished", v14, 0x16u);
  sub_1001F0C48(&qword_10077F920);
  swift_arrayDestroy();

LABEL_10:

LABEL_12:
  v50 = v0[134];
  v34 = *(v0[137] + 8);
  v34(*v7, v0[136]);
  v38 = (v50 + 304);
  if (*(v50 + 304) == 2)
  {
LABEL_21:
    v0[166] = v34;
    v0[165] = v38;
    sub_100006D8C((v0[134] + 112), *(v0[134] + 136));
    v67 = swift_task_alloc();
    v0[167] = v67;
    *v67 = v0;
    v68 = sub_100315AC8;
LABEL_24:
    v67[1] = v68;

    return sub_1004900E8();
  }

  v51 = v0[150];
  v52 = v0[148];
  swift_errorRetain();
  static URLError.cancelled.getter();
  v53 = static _ErrorCodeProtocol.~= infix(_:_:)();
  v5(v51, v52);
  if ((v53 & 1) == 0)
  {
    static Logger.download.getter();
    swift_errorRetain();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v0[134];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412546;
      v59 = *(v56 + 160);
      *(v57 + 4) = v59;
      *v58 = v59;
      *(v57 + 12) = 2114;
      swift_errorRetain();
      v60 = v59;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 14) = v61;
      v58[1] = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%@] Transitioning to failed state as error occurred durring download: %{public}@", v57, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    v62 = v0[144];
    v63 = v0[136];
    v64 = v0[134];
    v65 = v0[133];

    v34(v62, v63);
    *v38 = 2;
    *(v64 + 280) = v65;
  }

LABEL_18:
  v0[152] = v38;
  v0[151] = v34;
  v66 = *v38;
  if (v66 <= 2)
  {
    if (v66 != 1)
    {
      if (v66 == 2)
      {
        goto LABEL_21;
      }

      __break(1u);
      return _swift_task_switch(v35, v36, v37);
    }

    v0[177] = *sub_100006D8C((v0[134] + 112), *(v0[134] + 136));
    type metadata accessor for StreamingExtractor();
    v0[178] = sub_10031E050(&unk_1007803D0, type metadata accessor for StreamingExtractor);
    v78 = dispatch thunk of Actor.unownedExecutor.getter();
    v37 = v79;
    v0[179] = v78;
    v0[180] = v79;
    v80 = sub_100317A68;
LABEL_32:
    v35 = v80;
    v36 = v78;

    return _swift_task_switch(v35, v36, v37);
  }

  if (v66 == 3)
  {
    sub_100006D8C((v0[134] + 112), *(v0[134] + 136));
    v67 = swift_task_alloc();
    v0[175] = v67;
    *v67 = v0;
    v68 = sub_1003173B0;
    goto LABEL_24;
  }

  v70 = v0[134];
  swift_beginAccess();
  v71 = *(v70 + 256);
  if (!v71 || (v72 = sub_100006D8C((v70 + 232), *(v70 + 256)), v73 = *(v71 - 8), v74 = swift_task_alloc(), (*(v73 + 16))(v74, v72, v71), v75 = sub_1003AC26C(), v77 = v76, v0[153] = v75, v0[154] = v76, , v77 >> 60 == 15))
  {
    v0[157] = *sub_100006D8C((v0[134] + 112), *(v0[134] + 136));
    type metadata accessor for StreamingExtractor();
    v0[158] = sub_10031E050(&unk_1007803D0, type metadata accessor for StreamingExtractor);
    v78 = dispatch thunk of Actor.unownedExecutor.getter();
    v37 = v81;
    v0[159] = v78;
    v0[160] = v81;
    v80 = sub_1003152E8;
    goto LABEL_32;
  }

  sub_100006D8C((v0[134] + 112), *(v0[134] + 136));
  v82 = swift_task_alloc();
  v0[155] = v82;
  *v82 = v0;
  v82[1] = sub_100314DDC;

  return sub_10048FA40(v75, v77);
}

uint64_t sub_100314DDC()
{
  v2 = *v1;
  *(*v1 + 1248) = v0;

  v3 = *(v2 + 1072);
  if (v0)
  {
    v4 = sub_100314FE8;
  }

  else
  {
    v4 = sub_100314F08;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100314F08()
{
  sub_10020B0E0(v0[153], v0[154]);
  v0[157] = *sub_100006D8C((v0[134] + 112), *(v0[134] + 136));
  type metadata accessor for StreamingExtractor();
  v0[158] = sub_10031E050(&unk_1007803D0, type metadata accessor for StreamingExtractor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[159] = v2;
  v0[160] = v1;

  return _swift_task_switch(sub_1003152E8, v2, v1);
}

uint64_t sub_100314FE8()
{
  sub_10020B0E0(*(v0 + 1224), *(v0 + 1232));
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);
  static Logger.download.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1072);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + 160);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error occurred while handling download task completion: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1072);

  v3(v12, v13);
  *v2 = 2;
  *(v14 + 280) = v1;
  swift_errorRetain();

  *(v0 + 256) = v1;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  swift_errorRetain();
  sub_100272AF4(v0 + 256);

  sub_10031DDD4(v0 + 256);
  v15 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v16 = v15[28];
  v15[28] = 0;

  v17 = v15[36];
  v15[36] = 0;

  v15[37] = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003152E8()
{
  v1 = v0[157];
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor;
  v3 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor);
  v0[161] = v3;
  *(v1 + v2) = 0;
  if (!v3)
  {
LABEL_4:
    v5 = v0[134];

    return _swift_task_switch(sub_10031557C, v5, 0);
  }

  v4 = [v3 error];
  if (v4)
  {

    goto LABEL_4;
  }

  v6 = v0[158];
  v7 = v0[157];
  v8 = swift_task_alloc();
  v0[162] = v8;
  *(v8 + 16) = v3;
  v9 = swift_task_alloc();
  v0[163] = v9;
  *v9 = v0;
  v9[1] = sub_100315458;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v7, v6, 0x29286873696E6966, 0xE800000000000000, sub_10031E424, v8, &type metadata for () + 8);
}

uint64_t sub_100315458()
{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v3 = *(v2 + 1280);
    v4 = *(v2 + 1272);
    v5 = sub_10031575C;
  }

  else
  {

    v3 = *(v2 + 1280);
    v4 = *(v2 + 1272);
    v5 = sub_1003156F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10031557C()
{
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0;
  *(v0 + 728) = 3;
  sub_100272AF4(v0 + 656);
  sub_10031DDD4(v0 + 656);
  v1 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v2 = v1[28];
  v1[28] = 0;

  v3 = v1[36];
  v1[36] = 0;

  v1[37] = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003156F4()
{
  v1 = *(v0 + 1072);

  return _swift_task_switch(sub_10031557C, v1, 0);
}

uint64_t sub_10031575C()
{
  v1 = *(v0 + 1072);

  return _swift_task_switch(sub_1003157D4, v1, 0);
}

uint64_t sub_1003157D4()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);
  static Logger.download.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1072);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + 160);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error occurred while handling download task completion: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1072);

  v3(v12, v13);
  *v2 = 2;
  *(v14 + 280) = v1;
  swift_errorRetain();

  *(v0 + 256) = v1;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  swift_errorRetain();
  sub_100272AF4(v0 + 256);

  sub_10031DDD4(v0 + 256);
  v15 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v16 = v15[28];
  v15[28] = 0;

  v17 = v15[36];
  v15[36] = 0;

  v15[37] = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100315AC8()
{
  v2 = *v1;
  *(*v1 + 1344) = v0;

  v3 = *(v2 + 1072);
  if (v0)
  {
    v4 = sub_100316478;
  }

  else
  {
    v4 = sub_100315BF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100315BF4()
{
  v1 = *(v0 + 1072);
  swift_beginAccess();
  v2 = *(v1 + 256);
  if (v2 && (v3 = *sub_100006D8C((v1 + 232), v2), swift_beginAccess(), *(v3 + 80)))
  {
    sub_10031DE30(v3 + 72, v0 + 96);
    v4 = *(v0 + 96);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    sub_100006D8C((v0 + 120), v5);
    v7 = *(v6 + 32);
    *(v0 + 832) = swift_getAssociatedTypeWitness();
    *(v0 + 840) = swift_getAssociatedConformanceWitness();
    sub_10020A748((v0 + 808));
    v7(v5, v6);
    *(v0 + 800) = v4;
    *(v0 + 848) = *(v0 + 160);
    sub_10031DE8C(v0 + 96);
  }

  else
  {
    *(v0 + 832) = 0u;
    *(v0 + 848) = 0u;
    *(v0 + 800) = 0u;
    *(v0 + 816) = 0u;
  }

  v8 = *(v0 + 1072);
  result = *(v8 + 280);
  if (result)
  {
    v10 = *(v8 + 280);
  }

  else
  {
    v10 = *(v0 + 1064);
    if (!v10)
    {
      __break(1u);
      return result;
    }

    swift_errorRetain();
  }

  swift_errorRetain();
  v11 = sub_1003EE90C(v10);
  v12 = v11;
  v14 = v13;
  if (v13 != 2)
  {
    goto LABEL_16;
  }

  if (v11 != 3)
  {
    if (v11 == 2)
    {
      v18 = v0 + 496;
      static Logger.download.getter();

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 1072);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = *(v40 + 160);
        *(v41 + 4) = v43;
        *v42 = v43;
        v44 = v43;
        _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Network disconnected, will retry later", v41, 0xCu);
        sub_1000032A8(v42, &qword_10077F920);
      }

      v45 = *(v0 + 1328);
      v46 = *(v0 + 1128);
      v47 = *(v0 + 1088);

      v45(v46, v47);
      sub_100005934(v0 + 800, v0 + 496, &qword_10077E968);
      *(v0 + 568) = 1;
      sub_100272AF4(v0 + 496);
      goto LABEL_19;
    }

    if (v11 == 1)
    {
      v15 = *(v0 + 1080);
      v16 = *(*(v0 + 1072) + 152);
      *(v0 + 1352) = v16;
      sub_10031DF08(v16 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_request, v15);
      v17 = swift_task_alloc();
      *(v0 + 1360) = v17;
      *v17 = v0;
      v17[1] = sub_10031676C;

      return sub_1003EDEF0();
    }

LABEL_16:
    v18 = v0 + 416;
    static Logger.download.getter();

    sub_10031DEE0(v12, v14);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    sub_10031DEF4(v12, v14);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 1072);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412802;
      v24 = *(v21 + 160);
      *(v22 + 4) = v24;
      *v23 = v24;
      *(v22 + 12) = 2114;
      sub_10031DB1C();
      swift_allocError();
      *v25 = v12;
      *(v25 + 8) = v14;
      sub_10031DEE0(v12, v14);
      v26 = v24;
      v18 = v0 + 416;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v27;
      v23[1] = v27;
      *(v22 + 22) = 2114;
      swift_allocError();
      *v28 = v12;
      *(v28 + 8) = v14;
      sub_10031DEE0(v12, v14);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v29;
      v23[2] = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Download failed: %{public}@, phase: %{public}@", v22, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    v30 = *(v0 + 1328);
    v31 = *(v0 + 1112);
    v32 = *(v0 + 1088);

    v30(v31, v32);
    sub_10031DB1C();
    *(v0 + 416) = swift_allocError();
    *v33 = v12;
    *(v33 + 8) = v14;
    sub_100005934(v0 + 800, v0 + 424, &qword_10077E968);
    *(v0 + 488) = 2;
    sub_10031DEE0(v12, v14);
    sub_100272AF4(v18);
    sub_10031DEF4(v12, v14);
LABEL_19:
    sub_10031DDD4(v18);
    sub_1000032A8(v0 + 800, &qword_10077E968);
    v34 = *(v0 + 1072);
    [*(v0 + 1048) finishTasksAndInvalidate];
    v35 = v34[28];
    v34[28] = 0;

    v36 = v34[36];
    v34[36] = 0;

    v34[37] = 0;

    v37 = *(v0 + 8);

    return v37();
  }

  static Logger.download.getter();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v0 + 1072);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    v53 = *(v50 + 160);
    *(v51 + 4) = v53;
    *v52 = v53;
    v54 = v53;
    _os_log_impl(&_mh_execute_header, v48, v49, "[%@] Network timed out, will retry immediately", v51, 0xCu);
    sub_1000032A8(v52, &qword_10077F920);
  }

  v55 = *(v0 + 1328);
  v56 = *(v0 + 1120);
  v57 = *(v0 + 1088);

  v55(v56, v57);
  *(v0 + 896) = 0u;
  *(v0 + 912) = 0u;
  *(v0 + 864) = 0u;
  *(v0 + 880) = 0u;
  v58 = swift_task_alloc();
  *(v0 + 1384) = v58;
  *v58 = v0;
  v58[1] = sub_100316F5C;

  return sub_100310DA0(v0 + 864);
}

uint64_t sub_100316478()
{
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1320);
  static Logger.download.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1072);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + 160);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error occurred while handling download task completion: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1072);

  v2(v12, v13);
  *v3 = 2;
  *(v14 + 280) = v1;
  swift_errorRetain();

  *(v0 + 256) = v1;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  swift_errorRetain();
  sub_100272AF4(v0 + 256);

  sub_10031DDD4(v0 + 256);
  v15 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v16 = v15[28];
  v15[28] = 0;

  v17 = v15[36];
  v15[36] = 0;

  v15[37] = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10031676C(char a1)
{
  v2 = *(*v1 + 1080);
  v3 = *(*v1 + 1072);
  *(*v1 + 249) = a1;

  sub_100272F5C(v2);

  return _swift_task_switch(sub_1003168A0, v3, 0);
}

uint64_t sub_1003168A0()
{
  if (*(v0 + 249) == 1)
  {
    static Logger.download.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 1072);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = *(v3 + 160);
      *(v4 + 4) = v6;
      *v5 = v6;
      v7 = v6;
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Network changed, will retry immediately", v4, 0xCu);
      sub_1000032A8(v5, &qword_10077F920);
    }

    v8 = *(v0 + 1328);
    v9 = *(v0 + 1144);
    v10 = *(v0 + 1088);

    v8(v9, v10);
    v11 = swift_task_alloc();
    *(v0 + 1368) = v11;
    *v11 = v0;
    v11[1] = sub_100316CD0;

    return sub_100310DA0(v0 + 800);
  }

  else
  {
    static Logger.download.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 1072);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = *(v15 + 160);
      *(v16 + 4) = v18;
      *v17 = v18;
      v19 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Network changed, will retry later", v16, 0xCu);
      sub_1000032A8(v17, &qword_10077F920);
    }

    v20 = *(v0 + 1328);
    v21 = *(v0 + 1136);
    v22 = *(v0 + 1088);

    v20(v21, v22);
    sub_100005934(v0 + 800, v0 + 576, &qword_10077E968);
    *(v0 + 648) = 1;
    sub_100272AF4(v0 + 576);
    sub_10031DDD4(v0 + 576);
    sub_1000032A8(v0 + 800, &qword_10077E968);
    v23 = *(v0 + 1072);
    [*(v0 + 1048) finishTasksAndInvalidate];
    v24 = v23[28];
    v23[28] = 0;

    v25 = v23[36];
    v23[36] = 0;

    v23[37] = 0;

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_100316CD0()
{
  v2 = *v1;
  *(*v1 + 1376) = v0;

  v3 = *(v2 + 1072);
  if (v0)
  {
    v4 = sub_100318250;
  }

  else
  {
    v4 = sub_100316DFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100316DFC()
{
  sub_1000032A8(v0 + 800, &qword_10077E968);
  v1 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v2 = v1[28];
  v1[28] = 0;

  v3 = v1[36];
  v1[36] = 0;

  v1[37] = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100316F5C()
{
  v2 = *v1;
  *(v2 + 1392) = v0;

  v3 = *(v2 + 1072);
  sub_1000032A8(v2 + 864, &qword_10077E968);
  if (v0)
  {
    v4 = sub_1003170A4;
  }

  else
  {
    v4 = sub_10031E420;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003170A4()
{
  sub_1000032A8(v0 + 800, &qword_10077E968);
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1320);
  static Logger.download.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1072);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + 160);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error occurred while handling download task completion: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1072);

  v2(v12, v13);
  *v3 = 2;
  *(v14 + 280) = v1;
  swift_errorRetain();

  *(v0 + 256) = v1;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  swift_errorRetain();
  sub_100272AF4(v0 + 256);

  sub_10031DDD4(v0 + 256);
  v15 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v16 = v15[28];
  v15[28] = 0;

  v17 = v15[36];
  v15[36] = 0;

  v15[37] = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003173B0()
{
  v2 = *v1;
  *(*v1 + 1408) = v0;

  v3 = *(v2 + 1072);
  if (v0)
  {
    v4 = sub_100317774;
  }

  else
  {
    v4 = sub_1003174DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003174DC()
{
  v1 = *(v0 + 1072);
  swift_beginAccess();
  v2 = *(v1 + 256);
  if (v2 && (v3 = *sub_100006D8C((v1 + 232), v2), swift_beginAccess(), *(v3 + 80)))
  {
    sub_10031DE30(v3 + 72, v0 + 16);
    v4 = *(v0 + 16);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    sub_100006D8C((v0 + 40), v5);
    v7 = *(v6 + 32);
    *(v0 + 768) = swift_getAssociatedTypeWitness();
    *(v0 + 776) = swift_getAssociatedConformanceWitness();
    sub_10020A748((v0 + 744));
    v7(v5, v6);
    *(v0 + 736) = v4;
    *(v0 + 784) = *(v0 + 80);
    sub_10031DE8C(v0 + 16);
  }

  else
  {
    *(v0 + 768) = 0u;
    *(v0 + 784) = 0u;
    *(v0 + 736) = 0u;
    *(v0 + 752) = 0u;
  }

  sub_100005934(v0 + 736, v0 + 336, &qword_10077E968);
  *(v0 + 408) = 0;
  sub_100272AF4(v0 + 336);
  sub_10031DDD4(v0 + 336);
  sub_1000032A8(v0 + 736, &qword_10077E968);
  v8 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v9 = v8[28];
  v8[28] = 0;

  v10 = v8[36];
  v8[36] = 0;

  v8[37] = 0;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100317774()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);
  static Logger.download.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1072);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + 160);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error occurred while handling download task completion: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1072);

  v3(v12, v13);
  *v2 = 2;
  *(v14 + 280) = v1;
  swift_errorRetain();

  *(v0 + 256) = v1;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  swift_errorRetain();
  sub_100272AF4(v0 + 256);

  sub_10031DDD4(v0 + 256);
  v15 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v16 = v15[28];
  v15[28] = 0;

  v17 = v15[36];
  v15[36] = 0;

  v15[37] = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100317A68()
{
  v1 = v0[177];
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor;
  v3 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor);
  v0[181] = v3;
  *(v1 + v2) = 0;
  if (!v3)
  {
LABEL_4:
    v5 = v0[134];

    return _swift_task_switch(sub_100317CFC, v5, 0);
  }

  v4 = [v3 error];
  if (v4)
  {

    goto LABEL_4;
  }

  v6 = v0[178];
  v7 = v0[177];
  v8 = swift_task_alloc();
  v0[182] = v8;
  *(v8 + 16) = v3;
  v9 = swift_task_alloc();
  v0[183] = v9;
  *v9 = v0;
  v9[1] = sub_100317BD8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v7, v6, 0x29286873696E6966, 0xE800000000000000, sub_10031DE28, v8, &type metadata for () + 8);
}

uint64_t sub_100317BD8()
{
  v2 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100317EE4;
  }

  else
  {

    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100317E7C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100317CFC()
{
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 248) = 3;
  sub_100272AF4(v0 + 176);
  sub_10031DDD4(v0 + 176);
  v1 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v2 = v1[28];
  v1[28] = 0;

  v3 = v1[36];
  v1[36] = 0;

  v1[37] = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100317E7C()
{
  v1 = *(v0 + 1072);

  return _swift_task_switch(sub_100317CFC, v1, 0);
}

uint64_t sub_100317EE4()
{
  v1 = *(v0 + 1072);

  return _swift_task_switch(sub_100317F5C, v1, 0);
}

uint64_t sub_100317F5C()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);
  static Logger.download.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1072);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + 160);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error occurred while handling download task completion: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1072);

  v3(v12, v13);
  *v2 = 2;
  *(v14 + 280) = v1;
  swift_errorRetain();

  *(v0 + 256) = v1;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  swift_errorRetain();
  sub_100272AF4(v0 + 256);

  sub_10031DDD4(v0 + 256);
  v15 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v16 = v15[28];
  v15[28] = 0;

  v17 = v15[36];
  v15[36] = 0;

  v15[37] = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100318250()
{
  sub_1000032A8(v0 + 800, &qword_10077E968);
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1320);
  static Logger.download.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1072);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + 160);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error occurred while handling download task completion: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 1104);
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1072);

  v2(v12, v13);
  *v3 = 2;
  *(v14 + 280) = v1;
  swift_errorRetain();

  *(v0 + 256) = v1;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 2;
  swift_errorRetain();
  sub_100272AF4(v0 + 256);

  sub_10031DDD4(v0 + 256);
  v15 = *(v0 + 1072);
  [*(v0 + 1048) finishTasksAndInvalidate];
  v16 = v15[28];
  v15[28] = 0;

  v17 = v15[36];
  v15[36] = 0;

  v15[37] = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100318690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[17] = a1;
  return _swift_task_switch(sub_1003186B4, v4, 0);
}

uint64_t sub_1003186B4()
{
  v1 = *(*(v0 + 152) + 152) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_request;
  v2 = type metadata accessor for DownloadRequest();
  sub_100005934(v1 + v2[14], v0 + 56, &unk_10077FA50);
  if (*(v0 + 80))
  {
    sub_1001DFDBC((v0 + 56), v0 + 16);
    v3 = (v1 + v2[15]);
    v4 = v3[1];
    if (v4)
    {
      v5 = *(v0 + 152);
      v28 = *v3;
      v27 = type metadata accessor for DecoratedHTTP();
      sub_10020A980(v0 + 16, v0 + 96);
      v6 = *(v1 + v2[16]);
      v7 = v5[20];
      v8 = v5[25];
      v9 = v5[27];
      v10 = sub_100006D8C(v5 + 22, v8);
      v11 = objc_opt_self();

      v12 = v7;
      v13 = [v11 ephemeralSessionConfiguration];
      [v13 setHTTPShouldSetCookies:0];
      [v13 setHTTPCookieAcceptPolicy:1];
      [v13 setRequestCachePolicy:1];
      sub_10043D15C(1);
      v14 = [objc_opt_self() sessionWithConfiguration:v13];

      type metadata accessor for PlainHTTP();
      v15 = swift_allocObject();
      *(v15 + 24) = 0;
      *(v15 + 16) = v14;
      v16 = *(v8 - 8);
      v17 = swift_task_alloc();
      (*(v16 + 16))(v17, v10, v8);
      *(v0 + 160) = sub_10038E7B4(v15, v0 + 96, v28, v4, v6, v12, v17, v27, v8, v9);

      v18 = swift_task_alloc();
      *(v0 + 168) = v18;
      *v18 = v0;
      v18[1] = sub_100318A74;
      v19 = *(v0 + 136);
      v20 = *(v0 + 144);

      return sub_10038C2D4(v19, v20);
    }

    sub_10000710C(v0 + 16);
  }

  else
  {
    sub_1000032A8(v0 + 56, &unk_10077FA50);
  }

  v22 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = type metadata accessor for URLRequest();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100318A74()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_100318BA0, v1, 0);
}

uint64_t sub_100318BA0()
{
  v1 = *(v0 + 136);
  sub_10000710C(v0 + 16);
  v2 = type metadata accessor for URLRequest();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100318DEC(void *a1, void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v9 = type metadata accessor for URLRequest();
  v5[5] = v9;
  v5[6] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[7] = v10;
  sub_1001F0C48(&unk_1007803C0);
  v5[8] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[9] = v11;
  v5[10] = _Block_copy(a4);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a1;
  v13 = a2;

  v16 = swift_task_alloc();
  v5[11] = v16;
  *v16 = v5;
  v16[1] = sub_100318F8C;

  return sub_100318690(v11, v14, v15, v10);
}

uint64_t sub_100318F8C()
{
  v1 = *v0;
  v16 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 16);
  v8 = *v0;

  v9 = *(v4 + 8);
  v9(v3, v5);
  sub_10031DC90(v16, v2);
  if ((*(v4 + 48))(v2, 1, v5) == 1)
  {
    isa = 0;
  }

  else
  {
    v11 = v1[8];
    v12 = v1[5];
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v9(v11, v12);
  }

  v13 = v1[10];
  (v13)[2](v13, isa);
  _Block_release(v13);

  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_100319214()
{
  result = sub_100319234();
  qword_1007801D0 = result;
  return result;
}

uint64_t sub_100319234()
{
  sub_1001F0C48(&qword_100784460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10069F230;
  strcpy((v0 + 32), "accept-ranges");
  *(v0 + 46) = -4864;
  strcpy((v0 + 48), "content-type");
  *(v0 + 61) = 0;
  *(v0 + 62) = -5120;
  strcpy((v0 + 64), "content-length");
  *(v0 + 79) = -18;
  strcpy((v0 + 80), "content-range");
  *(v0 + 94) = -4864;
  if (os_variant_has_internal_content())
  {
    v0 = sub_100009530(1, 5, 1, v0);
    *(v0 + 16) = 5;
    *(v0 + 96) = 0xD00000000000001ELL;
    *(v0 + 104) = 0x80000001006C5D60;
  }

  return v0;
}

uint64_t sub_100319344()
{
  v1 = v0;
  v2 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v98 - v3;
  v5 = sub_1001F0C48(&unk_1007803A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v98 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v102 = v1;
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v98 = v4;
    v99 = v13;
    v100 = v11;
    v18 = v12;
    v19 = v9;
    v20 = v8;
    v104._countAndFlagsBits = 0x203A737574617453;
    v104._object = 0xE800000000000000;
    v21 = v102;
    v105 = [v17 statusCode];
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    countAndFlagsBits = v104._countAndFlagsBits;
    object = v104._object;
    v25 = sub_100009530(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    v101 = v25;
    if (v27 >= v26 >> 1)
    {
      v101 = sub_100009530((v26 > 1), v27 + 1, 1, v101);
    }

    v28 = v101;
    *(v101 + 2) = v27 + 1;
    v29 = &v28[16 * v27];
    *(v29 + 4) = countAndFlagsBits;
    *(v29 + 5) = object;
    v8 = v20;
    v9 = v19;
    v12 = v18;
    v13 = v99;
    v11 = v100;
    v4 = v98;
  }

  else
  {
    v101 = _swiftEmptyArrayStorage;
  }

  v30 = [v102 URL];
  if (v30)
  {
    v31 = v30;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v13 + 8))(v15, v12);
      v32 = &unk_1007803A0;
      v33 = v7;
LABEL_14:
      sub_1000032A8(v33, v32);
      goto LABEL_20;
    }

    (*(v9 + 32))(v11, v7, v8);
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      URLComponents.query.getter();
      if (v34)
      {

        URLComponents.query.setter();
      }
    }

    URLComponents.url.getter();
    if ((*(v13 + 48))(v4, 1, v12) == 1)
    {
      (*(v9 + 8))(v11, v8);
      (*(v13 + 8))(v15, v12);
      v32 = &unk_1007809F0;
      v33 = v4;
      goto LABEL_14;
    }

    v100 = v11;
    v35 = URL.absoluteString.getter();
    v37 = v36;
    v38 = *(v13 + 8);
    v99 = v12;
    v38(v4, v12);
    v104._countAndFlagsBits = 0x203A4C5255;
    v104._object = 0xE500000000000000;
    v39._countAndFlagsBits = v35;
    v39._object = v37;
    String.append(_:)(v39);

    v11 = v104._countAndFlagsBits;
    v40 = v104._object;
    v41 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_100009530(0, *(v101 + 2) + 1, 1, v101);
    }

    v43 = *(v101 + 2);
    v42 = *(v101 + 3);
    if (v43 >= v42 >> 1)
    {
      v101 = sub_100009530((v42 > 1), v43 + 1, 1, v101);
    }

    (*(v41 + 8))(v100, v8);
    v38(v15, v99);
    v44 = v101;
    *(v101 + 2) = v43 + 1;
    v45 = &v44[16 * v43];
    *(v45 + 4) = v11;
    *(v45 + 5) = v40;
  }

LABEL_20:
  v46 = [v102 _allHTTPHeaderFieldsAsArrays];
  if (v46)
  {
    v47 = v46;
    sub_1001F0C48(&unk_10077FB40);
    v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v48 = sub_100528D4C(_swiftEmptyArrayStorage);
  }

  v49 = v48 + 64;
  v50 = 1 << v48[32];
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v48 + 8);
  v53 = (v50 + 63) >> 6;

  v54 = 0;
  v55 = 0;
  v100 = _swiftEmptyArrayStorage;
  v102 = v48;
LABEL_26:
  v56 = v54;
  if (!v52)
  {
    goto LABEL_28;
  }

  do
  {
    v54 = v56;
LABEL_31:
    v57 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v58 = (*(v48 + 6) + ((v54 << 10) | (16 * v57)));
    v60 = *v58;
    v59 = v58[1];

    if (os_variant_has_internal_content())
    {
      goto LABEL_37;
    }

    if (qword_10077E500 != -1)
    {
      swift_once();
    }

    v61 = qword_1007801D0;
    v11 = &v98;
    v104 = String.lowercased()();
    __chkstk_darwin(v104._countAndFlagsBits);
    *(&v98 - 2) = &v104;
    LOBYTE(v61) = sub_10020A1BC(sub_1001F7FFC, (&v98 - 4), v61);

    if (v61)
    {
LABEL_37:
      v62 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v62;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = &v105;
        sub_100526304(0, v100[1]._countAndFlagsBits + 1, 1);
        v100 = v105;
      }

      v65 = v100[1]._countAndFlagsBits;
      v64 = v100[1]._object;
      if (v65 >= v64 >> 1)
      {
        v11 = &v105;
        sub_100526304((v64 > 1), v65 + 1, 1);
        v100 = v105;
      }

      v66 = v100;
      v100[1]._countAndFlagsBits = v65 + 1;
      v67 = &v66[v65];
      v67[2]._countAndFlagsBits = v60;
      v67[2]._object = v59;
      v48 = v102;
      goto LABEL_26;
    }

    v56 = v54;
    v48 = v102;
  }

  while (v52);
  while (1)
  {
LABEL_28:
    v54 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v54 >= v53)
    {
      break;
    }

    v52 = *&v49[8 * v54];
    ++v56;
    if (v52)
    {
      goto LABEL_31;
    }
  }

  v104._countAndFlagsBits = v100;

  sub_10031A968(&v104);

  v68 = v104._countAndFlagsBits;
  v69 = *(v104._countAndFlagsBits + 16);
  if (v69)
  {
    v105 = _swiftEmptyArrayStorage;
    v11 = &v105;
    sub_100526304(0, v69, 0);
    v70 = 0;
    v71 = (v68 + 40);
    v55 = v105;
    while (v70 < *(v68 + 16))
    {
      v72 = *(v71 - 1);
      v73 = *v71;
      v104._countAndFlagsBits = 8224;
      v104._object = 0xE200000000000000;

      v74._countAndFlagsBits = v72;
      v74._object = v73;
      String.append(_:)(v74);
      v75._countAndFlagsBits = 8250;
      v75._object = 0xE200000000000000;
      String.append(_:)(v75);
      if (*(v48 + 2) && (v76 = sub_10052213C(v72, v73), (v77 & 1) != 0))
      {
        v78 = *(*(v48 + 7) + 8 * v76);
      }

      else
      {
        v78 = _swiftEmptyArrayStorage;
      }

      v103 = v78;
      sub_1001F0C48(&unk_10077FB40);
      sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
      v79 = BidirectionalCollection<>.joined(separator:)();
      v81 = v80;

      v11 = &v104;
      v82._countAndFlagsBits = v79;
      v82._object = v81;
      String.append(_:)(v82);

      v83 = v104._countAndFlagsBits;
      v84 = v104._object;
      v105 = v55;
      v86 = v55[1]._countAndFlagsBits;
      v85 = v55[1]._object;
      if (v86 >= v85 >> 1)
      {
        v11 = &v105;
        sub_100526304((v85 > 1), v86 + 1, 1);
        v55 = v105;
      }

      ++v70;
      v55[1]._countAndFlagsBits = v86 + 1;
      v87 = &v55[v86];
      v87[2]._countAndFlagsBits = v83;
      v87[2]._object = v84;
      v71 += 2;
      v48 = v102;
      if (v69 == v70)
      {

        goto LABEL_54;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v101 = sub_100009530(0, *(v101 + 2) + 1, 1, v101);
    goto LABEL_55;
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_54:
  v104._countAndFlagsBits = v55;
  sub_1001F0C48(&unk_10077FB40);
  sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
  v88 = BidirectionalCollection<>.joined(separator:)();
  v90 = v89;

  v104._countAndFlagsBits = 0x3A73726564616548;
  v104._object = 0xE90000000000000ALL;
  v91._countAndFlagsBits = v88;
  v91._object = v90;
  String.append(_:)(v91);

  v11 = v104._countAndFlagsBits;
  v55 = v104._object;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_55:
  v93 = *(v101 + 2);
  v92 = *(v101 + 3);
  if (v93 >= v92 >> 1)
  {
    v101 = sub_100009530((v92 > 1), v93 + 1, 1, v101);
  }

  v94 = v101;
  *(v101 + 2) = v93 + 1;
  v95 = &v94[16 * v93];
  *(v95 + 4) = v11;
  *(v95 + 5) = v55;
  v104._countAndFlagsBits = v94;
  v96 = BidirectionalCollection<>.joined(separator:)();

  return v96;
}

uint64_t sub_10031A018(void *a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_10031A10C;

  return sub_10031B4F8(v11);
}

uint64_t sub_10031A10C(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_10031A450(void *a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v5[6] = v12;
  v5[7] = v14;
  v15 = swift_task_alloc();
  v5[8] = v15;
  *v15 = v5;
  v15[1] = sub_10031A564;

  return sub_10031CAC8(v10, v12, v14);
}

uint64_t sub_10031A564()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  sub_100007158(v2, v1);

  v3[2](v3);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10031A714()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100214EFC;

  return sub_10031A450(v2, v3, v4, v5, v6);
}

uint64_t sub_10031A7DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100214EFC;

  return sub_100521C70(v2, v3, v4);
}

uint64_t sub_10031A89C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100521D58(a1, v4, v5, v6);
}

Swift::Int sub_10031A968(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059027C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10031A9D4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10031A9D4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10031AB9C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10031AACC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10031AACC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031AB9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100590170(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10031B178((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100362C54(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100362C54((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10031B178((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100590170(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1005900E4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10031B178(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

id sub_10031B3A0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  *(v2 + 272) = 0;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 280) = 0;
  *(v2 + 304) = 0;
  *(v2 + 152) = a1;
  sub_10020AB78(a2, v2 + 176);
  v6 = a1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon8Download_request;
  v7 = type metadata accessor for DownloadRequest();
  sub_10020A980(v6 + v7[17], v18);

  sub_1001F0C48(&qword_10077F4D8);
  swift_dynamicCast();
  sub_10020A980(v19, v2 + 112);
  v8 = 0;
  v9 = *(v6 + v7[8]);
  *(v2 + 160) = v9;
  v10 = v6 + v7[11];
  v11 = *(v10 + 16);
  v12 = *(v10 + 40);
  if (v11 != 1 && v12 != 0)
  {
    v8 = *(v12 + 16) == 1;
  }

  *(v2 + 168) = v8;
  v14 = v9;
  sub_10027323C(v19);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "init");
  sub_10000710C(a2);
  return v15;
}

uint64_t sub_10031B4F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10031B600, v1, 0);
}

void *sub_10031B600()
{
  v81 = v0;
  v1 = *(v0 + 24);
  v79 = 0x64616F6C6E776F44;
  v80 = 0xE90000000000002FLL;
  v2 = *(v1 + 160);
  *(v0 + 104) = v2;
  v3 = [v2 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8 = v80;
  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  *(v9 + 16) = v79;
  *(v9 + 24) = v8;
  v10 = qword_10077E570;

  if (v10 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v9);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);

  os_unfair_lock_unlock(&dword_100788650);
  *(v11 + 296) = v9;

  static Logger.download.getter();

  v13 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 96);
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);
  if (v16)
  {
    v77 = *(v0 + 96);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v79 = v22;
    *v20 = 138412546;
    *(v20 + 4) = v2;
    *v21 = v2;
    *(v20 + 12) = 2082;
    v23 = v2;
    v24 = sub_100319344();
    v75 = v18;
    v26 = sub_1002346CC(v24, v25, &v79);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Received response: %{public}s", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    v27 = *(v19 + 8);
    v27(v77, v75);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v17, v18);
  }

  *(v0 + 112) = v27;
  v28 = *(v0 + 24);
  if (*(v28 + 304))
  {
    static Logger.download.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 56);
    v33 = *(v0 + 32);
    if (v31)
    {
      v78 = *(v0 + 56);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v76 = v27;
      v36 = swift_slowAlloc();
      v79 = v36;
      *v34 = 138412546;
      *(v34 + 4) = v2;
      *v35 = v2;
      *(v34 + 12) = 2082;
      *(v0 + 168) = *(v28 + 304);
      v37 = v2;
      v38 = String.init<A>(describing:)();
      v40 = sub_1002346CC(v38, v39, &v79);

      *(v34 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%@] Received HTTP response in unexpected download state '%{public}s'", v34, 0x16u);
      sub_1000032A8(v35, &qword_10077F920);

      sub_10000710C(v36);

      v76(v78, v33);
    }

    else
    {

      v27(v32, v33);
    }

LABEL_22:
    v64 = 0;
LABEL_23:

    v65 = *(v0 + 8);

    return v65(v64);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v42 = [result statusCode];
  v43 = v42;
  if (v42 >= 400)
  {
    static Logger.download.getter();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v2;
      *v57 = v2;
      v58 = v2;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%@] Invalid status code, failing download", v56, 0xCu);
      sub_1000032A8(v57, &qword_10077F920);
    }

    v59 = *(v0 + 88);
    v60 = *(v0 + 32);
    v61 = *(v0 + 24);

    v27(v59, v60);
    *(v28 + 304) = 2;
    sub_10031DB1C();
    v62 = swift_allocError();
    *v63 = v43;
    *(v63 + 8) = 0;
    *(v61 + 280) = v62;

    goto LABEL_22;
  }

  if (v42 == 206 || !*(*(v0 + 24) + 272))
  {
    if ([*(v0 + 16) expectedContentLength] == -1)
    {
      static Logger.download.getter();

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = *(v0 + 104);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v68;
        *v70 = v68;
        v71 = v68;
        _os_log_impl(&_mh_execute_header, v66, v67, "[%@] Server did not return a valid content-length header", v69, 0xCu);
        sub_1000032A8(v70, &qword_10077F920);
      }

      v72 = *(v0 + 112);
      v73 = *(v0 + 64);
      v74 = *(v0 + 32);

      v72(v73, v74);
    }

    *(*(v0 + 24) + 304) = 4;
    v64 = 1;
    goto LABEL_23;
  }

  static Logger.download.getter();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v2;
    *v47 = v2;
    v48 = v2;
    _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Expected partial content, truncating consumer", v46, 0xCu);
    sub_1000032A8(v47, &qword_10077F920);
  }

  v49 = *(v0 + 80);
  v50 = *(v0 + 32);
  v51 = *(v0 + 40);
  v52 = *(v0 + 24);

  *(v0 + 120) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v49, v50);
  sub_100006D8C((v52 + 112), *(v52 + 136));
  v53 = swift_task_alloc();
  *(v0 + 128) = v53;
  *v53 = v0;
  v53[1] = sub_10031BF50;

  return sub_100491038();
}

uint64_t sub_10031BF50()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10031C258;
  }

  else
  {
    v4 = sub_10031C07C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10031C07C()
{
  sub_100006D8C((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_10031C11C;

  return sub_10048EA18();
}

uint64_t sub_10031C11C(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_10031C8D4;
  }

  else
  {
    v4[20] = a1;
    v6 = sub_10031C44C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10031C258()
{
  static Logger.download.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v3;
    *v5 = v3;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Expected partial content, failing download", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920);
  }

  v7 = v0[14];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];

  v7(v8, v9);
  *(v10 + 304) = 2;
  sub_10031DB1C();
  v11 = swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 2;

  *(v10 + 280) = v11;

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_10031C44C()
{
  if (*(v0 + 160))
  {
    static Logger.download.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 104);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      *(v4 + 4) = v3;
      *v5 = v3;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Resumption offset expected to be zero after truncation", v4, 0xCu);
      sub_1000032A8(v5, &qword_10077F920);
    }

    v7 = *(v0 + 112);
    v8 = *(v0 + 72);
    v9 = *(v0 + 32);

    v7(v8, v9);
    type metadata accessor for InternalError();
    sub_10031E050(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.download.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 104);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Expected partial content, failing download", v13, 0xCu);
      sub_1000032A8(v14, &qword_10077F920);
    }

    v16 = *(v0 + 112);
    v17 = *(v0 + 48);
    v19 = *(v0 + 24);
    v18 = *(v0 + 32);

    v16(v17, v18);
    *(v19 + 304) = 2;
    sub_10031DB1C();
    v20 = swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 2;

    *(v19 + 280) = v20;

    v22 = 0;
  }

  else
  {
    if ([*(v0 + 16) expectedContentLength] == -1)
    {
      static Logger.download.getter();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 104);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v25;
        *v27 = v25;
        v28 = v25;
        _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Server did not return a valid content-length header", v26, 0xCu);
        sub_1000032A8(v27, &qword_10077F920);
      }

      v29 = *(v0 + 112);
      v30 = *(v0 + 64);
      v31 = *(v0 + 32);

      v29(v30, v31);
    }

    *(*(v0 + 24) + 304) = 4;
    v22 = 1;
  }

  v32 = *(v0 + 8);

  return v32(v22);
}

uint64_t sub_10031C8D4()
{
  static Logger.download.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v3;
    *v5 = v3;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Expected partial content, failing download", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920);
  }

  v7 = v0[14];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];

  v7(v8, v9);
  *(v10 + 304) = 2;
  sub_10031DB1C();
  v11 = swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 2;

  *(v10 + 280) = v11;

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_10031CAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = type metadata accessor for Logger();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10031CBA4, v3, 0);
}

uint64_t sub_10031CBA4()
{
  v1 = *(v0 + 144);
  if (*(v1 + 304) != 4)
  {
    static Logger.download.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 144);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = *(v11 + 160);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Download state not running, ignoring received data", v12, 0xCu);
      sub_1000032A8(v13, &qword_10077F920);
    }

    v16 = *(v0 + 176);
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);

    (*(v18 + 8))(v16, v17);
    goto LABEL_7;
  }

  swift_beginAccess();
  sub_100005934(v1 + 232, v0 + 56, &qword_100780390);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    sub_1001DFDBC((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_100231ED8(v0 + 16, v4);
    v6 = *(v5 + 16);
    sub_10020ABFC(v2, v3);
    v7 = v6(v2, v3, v4, v5);
    *(v0 + 192) = v7;
    *(v0 + 200) = v8;
    if (v8 >> 60 == 15)
    {
      sub_10000710C(v0 + 16);
LABEL_7:

      v19 = *(v0 + 8);

      return v19();
    }

    v25 = v7;
    v26 = v8;
    sub_100006D8C((*(v0 + 144) + 112), *(*(v0 + 144) + 136));
    v27 = swift_task_alloc();
    *(v0 + 208) = v27;
    *v27 = v0;
    v27[1] = sub_10031D06C;
    v24 = v25;
    v23 = v26;
  }

  else
  {
    v21 = *(v0 + 144);
    sub_1000032A8(v0 + 56, &qword_100780390);
    sub_100006D8C((v21 + 112), *(v21 + 136));
    v22 = swift_task_alloc();
    *(v0 + 224) = v22;
    *v22 = v0;
    v22[1] = sub_10031D3A0;
    v23 = *(v0 + 136);
    v24 = *(v0 + 128);
  }

  return sub_10048FA40(v24, v23);
}

uint64_t sub_10031D06C(char a1)
{
  v4 = *v2;
  *(v4 + 216) = v1;

  v5 = *(v4 + 144);
  if (v1)
  {
    v6 = sub_10031D1AC;
  }

  else
  {
    *(v4 + 241) = a1 & 1;
    v6 = sub_10031D884;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10031D1AC()
{
  sub_10020B0E0(v0[24], v0[25]);
  sub_10000710C((v0 + 2));
  v1 = v0[27];
  v2 = v0[18];
  if (*(v2 + 304) == 4)
  {
    v3 = v0[15];
    *(v2 + 304) = 2;
    *(v2 + 280) = v1;
    swift_errorRetain();

    [v3 cancel];
  }

  else
  {
    static Logger.download.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[18];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = *(v6 + 160);
      *(v7 + 4) = v9;
      *v8 = v9;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failure encountered, but download no longer receiving", v7, 0xCu);
      sub_1000032A8(v8, &qword_10077F920);
    }

    else
    {
    }

    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10031D3A0(char a1)
{
  v4 = *v2;
  *(v4 + 232) = v1;

  v5 = *(v4 + 144);
  if (v1)
  {
    v6 = sub_10031D6A0;
  }

  else
  {
    *(v4 + 240) = a1 & 1;
    v6 = sub_10031D4E0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10031D4E0()
{
  if (*(v0 + 240) == 1)
  {
    v1 = *(v0 + 144);
    if ((*(v1 + 168) & 1) == 0)
    {
      if (*(v1 + 304) == 4)
      {
        v2 = *(v0 + 120);
        *(v1 + 304) = 1;
        [v2 cancel];
      }

      else
      {
        static Logger.download.getter();

        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v3, v4))
        {
          v5 = *(v0 + 144);
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          *v6 = 138412290;
          v8 = *(v5 + 160);
          *(v6 + 4) = v8;
          *v7 = v8;
          v9 = v8;
          _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Received data complete from consumer, but download no longer receiving", v6, 0xCu);
          sub_1000032A8(v7, &qword_10077F920);
        }

        v10 = *(v0 + 184);
        v11 = *(v0 + 152);
        v12 = *(v0 + 160);

        (*(v12 + 8))(v10, v11);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10031D6A0()
{
  v1 = v0[29];
  v2 = v0[18];
  if (*(v2 + 304) == 4)
  {
    v3 = v0[15];
    *(v2 + 304) = 2;
    *(v2 + 280) = v1;
    swift_errorRetain();

    [v3 cancel];
  }

  else
  {
    static Logger.download.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[18];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = *(v6 + 160);
      *(v7 + 4) = v9;
      *v8 = v9;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failure encountered, but download no longer receiving", v7, 0xCu);
      sub_1000032A8(v8, &qword_10077F920);
    }

    else
    {
    }

    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10031D884()
{
  v1 = *(v0 + 241);
  sub_10020B0E0(*(v0 + 192), *(v0 + 200));
  sub_10000710C(v0 + 16);
  if (v1 == 1)
  {
    v2 = *(v0 + 144);
    if ((*(v2 + 168) & 1) == 0)
    {
      if (*(v2 + 304) == 4)
      {
        v3 = *(v0 + 120);
        *(v2 + 304) = 1;
        [v3 cancel];
      }

      else
      {
        static Logger.download.getter();

        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v4, v5))
        {
          v6 = *(v0 + 144);
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          *v7 = 138412290;
          v9 = *(v6 + 160);
          *(v7 + 4) = v9;
          *v8 = v9;
          v10 = v9;
          _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Received data complete from consumer, but download no longer receiving", v7, 0xCu);
          sub_1000032A8(v8, &qword_10077F920);
        }

        v11 = *(v0 + 184);
        v12 = *(v0 + 152);
        v13 = *(v0 + 160);

        (*(v13 + 8))(v11, v12);
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10031DA54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1001F0E54;

  return sub_10031A018(v2, v3, v4, v5, v6);
}

unint64_t sub_10031DB1C()
{
  result = qword_100780398;
  if (!qword_100780398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780398);
  }

  return result;
}

uint64_t sub_10031DB70()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10031DBC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100214EFC;

  return sub_100318DEC(v2, v3, v4, v5, v6);
}

uint64_t sub_10031DC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_1007803C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031DD00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100214EFC;

  return sub_100313E8C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10031DEE0(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10031DEF4(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_10031DF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031DFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100780390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031E050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031E1A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100214EFC;

  return sub_100313A40(v2, v3, v4, v5, v7, v6);
}

uint64_t getEnumTagSinglePayload for StreamingDownloadTask.Phase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StreamingDownloadTask.Phase(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10031E3CC()
{
  result = qword_100780420;
  if (!qword_100780420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780420);
  }

  return result;
}

id sub_10031E4B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10031E524()
{
  result = qword_1007804C0;
  if (!qword_1007804C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007804C0);
  }

  return result;
}

BOOL sub_10031E578(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  *v14.val = *a1;
  *&v14.val[4] = v4;
  v5 = audit_token_to_pid(&v14);
  v6 = a1[1];
  *v14.val = *a1;
  *&v14.val[4] = v6;
  v7 = audit_token_to_pidversion(&v14);
  v8 = a2[1];
  *v14.val = *a2;
  *&v14.val[4] = v8;
  v9 = audit_token_to_pid(&v14);
  v10 = a2[1];
  *v14.val = *a2;
  *&v14.val[4] = v10;
  v11 = audit_token_to_pidversion(&v14);
  return v5 == v9 && v7 == v11;
}

Swift::Int sub_10031E604()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  *v6.val = *v0;
  *&v6.val[4] = v1;
  v2 = audit_token_to_pid(&v6);
  Hasher._combine(_:)(v2);
  v3 = v0[1];
  *v6.val = *v0;
  *&v6.val[4] = v3;
  v4 = audit_token_to_pidversion(&v6);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_10031E670()
{
  v1 = v0[1];
  *v5.val = *v0;
  *&v5.val[4] = v1;
  v2 = audit_token_to_pid(&v5);
  Hasher._combine(_:)(v2);
  v3 = v0[1];
  *v5.val = *v0;
  *&v5.val[4] = v3;
  v4 = audit_token_to_pidversion(&v5);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_10031E6C4()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  *v6.val = *v0;
  *&v6.val[4] = v1;
  v2 = audit_token_to_pid(&v6);
  Hasher._combine(_:)(v2);
  v3 = v0[1];
  *v6.val = *v0;
  *&v6.val[4] = v3;
  v4 = audit_token_to_pidversion(&v6);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_10031E72C(void *a1)
{
  v42 = type metadata accessor for Logger();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for XPCClientMessage();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ServiceListenerDelegate_service);
  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP22ManagedAppDistribution17XPCClientProtocol_];
  [a1 setRemoteObjectInterface:v8];

  v9 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP22ManagedAppDistribution15ServiceProtocol_];
  [a1 setExportedInterface:v9];

  v39 = v6;
  [a1 setExportedObject:v6];
  [a1 resume];
  [a1 auditToken];
  v10 = v50;
  LODWORD(v9) = DWORD1(v50);
  LODWORD(v7) = DWORD2(v50);
  v11 = HIDWORD(v50);
  LODWORD(v6) = v51;
  v12 = DWORD1(v51);
  v14 = DWORD2(v51);
  v13 = HIDWORD(v51);
  v15 = audit_token_t.signingIdentifier.getter(v50 | (DWORD1(v50) << 32), DWORD2(v50) | (HIDWORD(v50) << 32), v51 | (DWORD1(v51) << 32), DWORD2(v51) | (HIDWORD(v51) << 32));
  *&v50 = __PAIR64__(v9, v10);
  *(&v50 + 1) = __PAIR64__(v11, v7);
  *&v51 = __PAIR64__(v12, v6);
  *(&v51 + 1) = __PAIR64__(v13, v14);
  *&v52 = v15;
  *(&v52 + 1) = v16;
  v17 = [a1 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001F0C48(&qword_10077F8D8);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    static XPCClientMessage.connectionEstablished.getter();
    XPCClientProtocol.handleMessage(_:)();
    (*(v37 + 8))(v5, v38);
    v18 = swift_allocObject();
    v19 = v51;
    *(v18 + 24) = v50;
    v20 = v39;
    *(v18 + 16) = v39;
    *(v18 + 40) = v19;
    *(v18 + 56) = v52;
    v48 = sub_10031EE54;
    v49 = v18;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100495FFC;
    v47 = &unk_10075F380;
    v21 = _Block_copy(&aBlock);
    v22 = v20;
    sub_1002FAF54(&v50, v43);

    [a1 setInterruptionHandler:v21];
    _Block_release(v21);
    v23 = swift_allocObject();
    v24 = v51;
    *(v23 + 24) = v50;
    *(v23 + 16) = v22;
    *(v23 + 40) = v24;
    *(v23 + 56) = v52;
    v48 = sub_10031ED58;
    v49 = v23;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100495FFC;
    v47 = &unk_10075F3D0;
    v25 = _Block_copy(&aBlock);
    v26 = v22;
    sub_1002FAF54(&v50, v43);

    [a1 setInvalidationHandler:v25];
    _Block_release(v25);
    swift_unknownObjectRelease();
  }

  v27 = v40;
  static Logger.xpc.getter();
  sub_1002FAF54(&v50, &aBlock);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  sub_1002FAFB0(&v50);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315138;
    v32 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      v33 = v52;
    }

    else
    {
      sub_1002FAFB0(&v50);
      v32 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E75;
    }

    v34 = sub_1002346CC(v33, v32, &aBlock);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Client connected: %s", v30, 0xCu);
    sub_10000710C(v31);
  }

  else
  {
    sub_1002FAFB0(&v50);
  }

  (*(v41 + 8))(v27, v42);
  return 1;
}

uint64_t sub_10031ED18()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10031ED84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_10031EDE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_10031EE5C(void *a1)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v1 = sub_10023576C(&v12, a1);
  v3 = v2;
  if (*(&v13 + 1))
  {
    sub_10000710C(&v12);
  }

  *&v12 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = *(v3 + 8 * v6 + 32);
      type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:v1];
      if (([v8 existsInDatabase] & 1) == 0)
      {

        v1 = v8;
        goto LABEL_10;
      }

      ++v6;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

LABEL_10:

    v9 = *(v12 + 16);
    if (v9)
    {
      v10 = (v12 + 32);
      do
      {
        v11 = *v10++;
        [v11 deleteFromDatabase];
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

void *sub_10031EFD0()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  v1[2] = sub_10031F0A8;
  v1[3] = 0;
  v1[4] = 0xD000000000000013;
  v1[5] = 0x80000001006C5ED0;
  v2 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_10000710C(inited + 32);
  return v2;
}

void *sub_10031F0A8()
{
  v6[0] = 0x695F656C646E7562;
  v6[1] = 0xE900000000000064;
  v6[2] = 1415071060;
  v6[3] = 0xE400000000000000;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  v0._countAndFlagsBits = 2019846495;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069F6E0;
  *(inited + 56) = &type metadata for SQLiteColumn;
  *(inited + 64) = &off_10076CDE0;
  v2 = swift_allocObject();
  *(inited + 32) = v2;
  sub_1002783D8(v6, v2 + 16);
  *(inited + 96) = &type metadata for SQLiteIndex;
  *(inited + 104) = &off_10076CDD8;
  v3 = swift_allocObject();
  *(inited + 72) = v3;
  *(v3 + 16) = 0x695F656C646E7562;
  *(v3 + 24) = 0xE900000000000064;
  *(v3 + 32) = 0x695F656C646E7562;
  *(v3 + 40) = 0xE900000000000064;
  *(v3 + 48) = 1;
  v4 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  sub_100278434(v6);
  return v4;
}

uint64_t sub_10031F244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_10031F2CC(uint64_t a1)
{
  v2 = sub_10032071C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031F308(uint64_t a1)
{
  v2 = sub_10032071C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10031F344@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_1007805B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10032071C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000710C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_10031F4C0(void *a1)
{
  v2 = sub_1001F0C48(&qword_1007805C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006D8C(a1, a1[3]);
  sub_10032071C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_10031F5FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10031F648()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10031F690(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_10031F6C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10031F734()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10031F788@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100758F30, *a1);

  *a2 = v3 != 0;
  return result;
}

id sub_10031F9AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10031FA04(void **a1)
{
  v80 = a1;
  v2 = type metadata accessor for CocoaError.Code();
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v83 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = __chkstk_darwin(v4);
  v86 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v71 - v7;
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v71 - v18;
  static URL.applicationSupportDirectory.getter();
  (*(v10 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
  sub_100005E50();
  URL.appending<A>(components:directoryHint:)();
  (*(v10 + 8))(v12, v9);
  v20 = v13;
  v23 = *(v14 + 8);
  v22 = v14 + 8;
  v21 = v23;
  v23(v17, v20);
  v24 = Data.init(contentsOf:options:)();
  if (!v1)
  {
    v26 = v25;
    v77 = v8;
    v27 = v24;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v28 = JSONDecoder.init()();
    sub_1001F0C48(&qword_1007804F8);
    sub_1003202DC();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v78 = v22;
    v75 = v26;
    v76 = v28;
    v74 = v27;
    v41 = v87;
    if (v87[2])
    {
      v42 = v77;
      static Logger.ddm.getter();

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v45 = os_log_type_enabled(v43, v44);
      v79 = 0;
      v72 = v21;
      v73 = v20;
      if (v45)
      {
        v46 = swift_slowAlloc();
        *v46 = 134349056;
        *(v46 + 4) = v41[2];

        _os_log_impl(&_mh_execute_header, v43, v44, "Migrating %{public}ld legacy install history entries", v46, 0xCu);
      }

      else
      {
      }

      v47 = v80;
      v48 = v41;
      (*(v81 + 8))(v42, v82);
      v49 = 0;
      v50 = v41 + 7;
      v51 = 1 << *(v41 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & v41[7];
      v54 = (v51 + 63) >> 6;
      if (v53)
      {
        while (1)
        {
          v55 = v49;
LABEL_22:
          v56 = v48;
          v57 = (v48[6] + ((v55 << 10) | (16 * __clz(__rbit64(v53)))));
          v58 = *v57;
          v59 = v57[1];
          v60 = *v47;

          v61 = v60;
          v62 = v79;
          v63 = sub_100564C98(0, v58, v59, v61);
          v79 = v62;
          if (v62)
          {
            break;
          }

          v53 &= v53 - 1;

          v49 = v55;
          v47 = v80;
          v48 = v56;
          if (!v53)
          {
            goto LABEL_19;
          }
        }

        v72(v19, v73);

        sub_100007158(v74, v75);

        goto LABEL_4;
      }

      while (1)
      {
LABEL_19:
        v55 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
        }

        if (v55 >= v54)
        {
          break;
        }

        v53 = v50[v55];
        ++v49;
        if (v53)
        {
          goto LABEL_22;
        }
      }

      v21 = v72;
      v20 = v73;
    }

    else
    {
    }

    v64 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v65);
    v67 = v66;
    v87 = 0;
    v68 = [v64 removeItemAtURL:v66 error:&v87];

    if (v68)
    {
      v69 = v87;
      v21(v19, v20);

      return sub_100007158(v74, v75);
    }

    else
    {
      v70 = v87;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_100007158(v74, v75);

      return (v21)(v19, v20);
    }
  }

  v21(v19, v20);
LABEL_4:
  v29 = v85;
  v30 = v86;
  v32 = v83;
  v31 = v84;
  swift_errorRetain();
  static CocoaError.fileReadNoSuchFile.getter();
  sub_100320284();
  v33 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v31 + 8))(v32, v29);
  if (v33)
  {
  }

  static Logger.ddm.getter();
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138543362;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "Unable to read ddm install history from disk: %{public}@", v37, 0xCu);
    sub_1001F8084(v38);
    v40 = v82;
  }

  else
  {

    v40 = v82;
  }

  return (*(v81 + 8))(v30, v40);
}

unint64_t sub_100320284()
{
  result = qword_1007804F0;
  if (!qword_1007804F0)
  {
    type metadata accessor for CocoaError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007804F0);
  }

  return result;
}

unint64_t sub_1003202DC()
{
  result = qword_100780500;
  if (!qword_100780500)
  {
    sub_1001F76D0(&qword_1007804F8);
    sub_100320360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780500);
  }

  return result;
}

unint64_t sub_100320360()
{
  result = qword_100780508;
  if (!qword_100780508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780508);
  }

  return result;
}

uint64_t sub_1003203E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10032042C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10032047C()
{
  result = qword_100780510;
  if (!qword_100780510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780510);
  }

  return result;
}

unint64_t sub_1003204D4()
{
  result = qword_100780548;
  if (!qword_100780548)
  {
    sub_1001F76D0(&qword_100780550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780548);
  }

  return result;
}

unint64_t sub_100320538(void *a1)
{
  a1[1] = sub_100320570();
  a1[2] = sub_1003205C4();
  result = sub_100320618();
  a1[3] = result;
  return result;
}

unint64_t sub_100320570()
{
  result = qword_100780558;
  if (!qword_100780558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780558);
  }

  return result;
}

unint64_t sub_1003205C4()
{
  result = qword_100780560;
  if (!qword_100780560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780560);
  }

  return result;
}

unint64_t sub_100320618()
{
  result = qword_100780568;
  if (!qword_100780568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780568);
  }

  return result;
}

unint64_t sub_100320670()
{
  result = qword_100780570;
  if (!qword_100780570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780570);
  }

  return result;
}

unint64_t sub_1003206C8()
{
  result = qword_100780578;
  if (!qword_100780578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780578);
  }

  return result;
}

unint64_t sub_10032071C()
{
  result = qword_1007805B8;
  if (!qword_1007805B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007805B8);
  }

  return result;
}

unint64_t sub_100320794()
{
  result = qword_1007805C8;
  if (!qword_1007805C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007805C8);
  }

  return result;
}

unint64_t sub_1003207EC()
{
  result = qword_1007805D0;
  if (!qword_1007805D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007805D0);
  }

  return result;
}

unint64_t sub_100320844()
{
  result = qword_1007805D8;
  if (!qword_1007805D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007805D8);
  }

  return result;
}

void *sub_100320898(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v17 = v1 + 64;
    v18 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v19 = v6;

      String._bridgeToObjectiveC()();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v18;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v18 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v10 = *(v4 + 8 * v9);
      if ((v10 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v5 & 0x3F));
      if (v11)
      {
        v8 = __clz(__rbit64(v11)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (v17 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            result = sub_100323C00(v5, v7, 0);
            v8 = __clz(__rbit64(v15)) + v12;
            goto LABEL_4;
          }
        }

        result = sub_100323C00(v5, v7, 0);
      }

LABEL_4:
      v6 = v19 + 1;
      v5 = v8;
      if (v19 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

Swift::Int sub_100320AE4()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}