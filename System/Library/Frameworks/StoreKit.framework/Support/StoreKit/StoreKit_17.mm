void StoreKitServiceConnection.clientOverrides(reply:)()
{
  sub_100093D08();
  v2 = v1;
  v84 = sub_100080FB4(&qword_1003D2120);
  sub_100098B7C();
  __chkstk_darwin(v3);
  sub_10018ECCC();
  v83 = v4;
  sub_10018ED10();
  __chkstk_darwin(v5);
  sub_1001B5378();
  v82 = v6;
  sub_1001B53DC();
  type metadata accessor for ClientOverrideRequest();
  sub_1000890DC();
  v81 = v7;
  __chkstk_darwin(v7);
  sub_100093D40();
  v10 = (v9 - v8);
  if (qword_1003CBE58 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v11 = type metadata accessor for SKLogger();
    sub_100107C34(v11, qword_1003F26C8);
    static os_log_type_t.default.getter();
    v12 = Logger.logObject.getter();
    if (sub_100093D8C(v12))
    {
      sub_1000B7DC8();
      v13 = swift_slowAlloc();
      sub_1000B7DBC();
      v14 = swift_slowAlloc();
      v89[0] = v14;
      *v13 = 136446466;
      v16 = sub_100093CF0(v14, v15, v89);
      sub_100093BF8(v16);
      *(v13 + 14) = sub_100080210(0xD000000000000017, 0x800000010031E3B0, v89);
      sub_10019DBA8();
      sub_10021A5DC(v17, v18, v19, v20);
      sub_10021A160();
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1001B5198();
    }

    v21 = [objc_opt_self() currentConnection];
    if (!v21)
    {
      goto LABEL_27;
    }

    v0 = v21;
    if (![v21 sk_allowClientOverride])
    {

LABEL_27:
      static os_log_type_t.error.getter();
      v55 = Logger.logObject.getter();
      if (sub_100093D8C(v55))
      {
        sub_1000B7DC8();
        v56 = swift_slowAlloc();
        sub_1000B7DBC();
        v57 = swift_slowAlloc();
        v89[0] = v57;
        *v56 = 136446466;
        v59 = sub_100093CF0(v57, v58, v89);
        sub_100093BF8(v59);
        *(v56 + 14) = sub_100080210(0xD000000000000030, 0x800000010031E3D0, v89);
        sub_10019DBA8();
        sub_10021A5DC(v60, v61, v62, v63);
        sub_10021A160();
        swift_arrayDestroy();
        sub_1000B7D68();

        sub_1001B5198();
      }

      sub_10008B5E0();
      sub_1000ED9E4();
      swift_allocError();
      v65 = sub_10021961C(v64, 3);
      (v2)(v65);
      sub_100093CB8();

      return;
    }

    type metadata accessor for Client(0);
    v22 = sub_1001B1F00();
    v23 = v22[2];
    if (!v23)
    {
      break;
    }

    v74 = v0;
    v75 = v2;
    v89[0] = _swiftEmptyArrayStorage;
    sub_10021350C();
    v24 = v89[0];
    v27 = sub_10017C828();
    v28 = 0;
    v29 = v22 + 8;
    v77 = v25;
    v78 = v23;
    v76 = v22 + 9;
    v2 = 1;
    v79 = v22;
    v80 = v22 + 8;
    while ((v27 & 0x8000000000000000) == 0 && v27 < 1 << *(v22 + 32))
    {
      if ((v29[v27 >> 6] & (1 << v27)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v22 + 9) != v25)
      {
        goto LABEL_36;
      }

      v88 = v27 >> 6;
      v86 = v28;
      v87 = v25;
      v85 = v26;
      v30 = *(v84 + 48);
      v31 = v22[6];
      v32 = v22[7];
      v33 = (v31 + 16 * v27);
      v35 = *v33;
      v34 = v33[1];
      v36 = (type metadata accessor for Client.TimedClientOverride(0) - 8);
      sub_100219094(v32 + *(*v36 + 72) * v27, v82 + v30);
      *v83 = v35;
      v83[1] = v34;
      v37 = v83 + *(v84 + 48);
      sub_100218508(v82 + v30, v37);
      v0 = v81;
      v38 = v81[5];
      sub_100219094(v37, &v10[v38]);
      v39 = type metadata accessor for ClientOverride(0);
      sub_100081DFC(&v10[v38], 0, 1, v39);
      v40 = v36[7];
      v41 = v81[7];
      type metadata accessor for Date();
      sub_100098B7C();
      (*(v42 + 16))(&v10[v41], v37 + v40);

      sub_1001CA63C();
      *v10 = v35;
      *(v10 + 1) = v34;
      v43 = &v10[v81[6]];
      *v43 = v44;
      *(v43 + 1) = v45;

      sub_10013B1E8(v83, &qword_1003D2120);
      v89[0] = v24;
      v46 = v24[2];
      if (v46 >= v24[3] >> 1)
      {
        sub_10021350C();
        v24 = v89[0];
      }

      v24[2] = v46 + 1;
      sub_100219DB8();
      sub_100218508(v10, v47);
      v22 = v79;
      v29 = v80;
      v2 = 1;
      v48 = 1 << *(v79 + 32);
      if (v27 >= v48)
      {
        goto LABEL_37;
      }

      v49 = v80[v88];
      if ((v49 & (1 << v27)) == 0)
      {
        goto LABEL_38;
      }

      if (*(v79 + 9) != v87)
      {
        goto LABEL_39;
      }

      v50 = v49 & (-2 << (v27 & 0x3F));
      if (v50)
      {
        v48 = __clz(__rbit64(v50)) | v27 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v0 = (v88 << 6);
        v51 = v88 + 1;
        v52 = &v76[v88];
        while (v51 < (v48 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v0 += 16;
          ++v51;
          if (v54)
          {
            sub_10013AC84(v27, v87, v85 & 1);
            v48 = v0 + __clz(__rbit64(v53));
            goto LABEL_24;
          }
        }

        sub_10013AC84(v27, v87, v85 & 1);
      }

LABEL_24:
      v26 = 0;
      v28 = v86 + 1;
      v27 = v48;
      v25 = v77;
      if (v86 + 1 == v78)
      {

        v2 = v75;
        v0 = v74;
        goto LABEL_33;
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
LABEL_39:
    __break(1u);
LABEL_40:
    sub_1000B7CD0();
    swift_once();
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_33:
  type metadata accessor for JSONEncoder();
  sub_10021A330();
  JSONEncoder.init()();
  v89[0] = v24;
  sub_100080FB4(&qword_1003D2128);
  sub_100214A70();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  v67 = sub_1000D4078();
  sub_1000BC808(v67, v68);
  v69 = sub_1000D4078();
  (v2)(v69);

  v70 = sub_1000D4078();
  sub_10008E168(v70, v71);
  v72 = sub_1000D4078();
  sub_10008E168(v72, v73);

  sub_100093CB8();
}

void sub_1001F8564(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_1001F85D8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v5 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for ClientOverride(0);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClientOverrideRequest();
  v12 = __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v48 = &v41 - v15;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002185B8(&unk_1003D2140, type metadata accessor for ClientOverrideRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100218508(v14, v48);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SKLogger();
  v17 = sub_10007EDA4(v16, qword_1003F26C8);
  v18 = (v48 + *(v11 + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = static os_log_type_t.default.getter();

  v47 = v17;
  v22 = Logger.logObject.getter();

  v23 = os_log_type_enabled(v22, v21);
  v46 = v19;
  if (v23)
  {
    v42 = "lientOverrideRequest ";
    v24 = swift_slowAlloc();
    v45 = a4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v43 = v26;
    v44 = v10;
    *v25 = 136446466;
    v49 = v26;
    v50 = 91;
    v51 = 0xE100000000000000;
    v27._countAndFlagsBits = v19;
    v27._object = v20;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 8285;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    v29 = sub_100080210(v50, v51, &v49);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_100080210(0xD00000000000001BLL, v42 | 0x8000000000000000, &v49);
    _os_log_impl(&_mh_execute_header, v22, v21, "%{public}s%{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v10 = v44;

    a4 = v45;
  }

  v30 = [objc_opt_self() currentConnection];
  if (v30)
  {
    v31 = v30;
    if ([v30 sk_allowClientOverride])
    {
      sub_100105C8C(v48 + *(v11 + 20), v7, &unk_1003D20F0);
      if (sub_100081D0C(v7, 1, v8) == 1)
      {
        sub_10013B1E8(v7, &unk_1003D20F0);
        type metadata accessor for Client(0);
        sub_1001B2A60();
      }

      else
      {
        sub_100218508(v7, v10);
        type metadata accessor for Client(0);
        sub_1001B2578();
        sub_1002190EC();
      }

      a4[2](a4, 0);

      goto LABEL_15;
    }
  }

  v32 = static os_log_type_t.error.getter();

  v33 = Logger.logObject.getter();

  if (os_log_type_enabled(v33, v32))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 136446466;
    v49 = v35;
    v50 = 91;
    v51 = 0xE100000000000000;
    v36._countAndFlagsBits = v46;
    v36._object = v20;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 8285;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    v38 = sub_100080210(v50, v51, &v49);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_100080210(0xD00000000000002ALL, 0x800000010031E460, &v49);
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v39 = 3;
  v40 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v40);

LABEL_15:
  sub_1002190EC();
  _Block_release(a4);
}

void StoreKitServiceConnection.setClientOverride(_:reply:)()
{
  sub_100093D08();
  v37 = v2;
  sub_1001D4F48();
  v3 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  sub_100089240();
  type metadata accessor for ClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v5);
  sub_100093D40();
  v6 = type metadata accessor for ClientOverrideRequest();
  sub_100098B7C();
  __chkstk_darwin(v7);
  sub_1001460C4();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_10021A0BC();
  type metadata accessor for JSONDecoder();
  sub_10021A330();
  JSONDecoder.init()();
  sub_1002185B8(&unk_1003D2140, type metadata accessor for ClientOverrideRequest);
  sub_10021ABC8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100219DB8();
  sub_100218508(v10, v0);
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v12 = type metadata accessor for SKLogger();
  sub_100107C34(v12, qword_1003F26C8);
  v13 = *(v0 + *(v6 + 24));
  v14 = static os_log_type_t.default.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    sub_1000B7DC8();
    v16 = swift_slowAlloc();
    sub_1000B7DBC();
    v36 = swift_slowAlloc();
    *v16 = 136446466;
    sub_100219444(v36);
    v17._countAndFlagsBits = sub_100123E9C();
    String.append(_:)(v17);
    v18._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v18);
    sub_100219AA4();
    sub_100219CE4();

    *(v16 + 4) = v13;
    sub_100219E3C();
    *(v16 + 14) = sub_100080210(0xD00000000000001BLL, 0x800000010031E440, v38);
    sub_10021A5AC(&_mh_execute_header, v15, v14, "%{public}s%{public}s");
    sub_10021A594();
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  v19 = [objc_opt_self() currentConnection];
  if (v19)
  {
    v20 = v19;
    if ([v19 sk_allowClientOverride])
    {
      sub_100105C8C(v0 + *(v6 + 20), v1, &unk_1003D20F0);
      sub_100219D64();
      sub_1001B5430(v21, v22, v23);
      if (v24)
      {
        sub_10013B1E8(v1, &unk_1003D20F0);
        type metadata accessor for Client(0);
        sub_1001B2A60();
      }

      else
      {
        v34 = sub_10017CB1C();
        sub_100218508(v34, v35);
        type metadata accessor for Client(0);
        sub_1001B2578();
        sub_100219E24();
        sub_1002190EC();
      }

      (v37)(0);

      goto LABEL_15;
    }
  }

  static os_log_type_t.error.getter();

  v25 = Logger.logObject.getter();

  if (sub_10009F1F4())
  {
    sub_1000B7DC8();
    v26 = swift_slowAlloc();
    sub_1000B7DBC();
    v27 = swift_slowAlloc();
    *v26 = 136446466;
    sub_100219444(v27);
    v28._countAndFlagsBits = sub_100123E9C();
    String.append(_:)(v28);
    v29._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v29);
    sub_100219AA4();
    sub_1000B0494();
    sub_1002198A4();
    *(v26 + 14) = sub_100080210(0xD00000000000002ALL, 0x800000010031E460, v38);
    sub_100219784(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
    sub_100106E34();
    sub_100219550();

    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  v32 = swift_allocError();
  sub_100219B0C(v32, v33);
  v37();

LABEL_15:
  sub_1002190EC();
  sub_100093CB8();
}

void sub_1001F9540(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  v7[2] = &unk_1002FACC8;
  v7[3] = 0;
  v7[4] = sub_100219348;
  v7[5] = v6;
  v7[6] = a3;
  v8 = type metadata accessor for FinishTransactionTask();
  v9 = swift_allocBox();
  v11 = v10;
  _Block_copy(a4);

  v12 = a3;
  sub_1000EB4A4();
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v13 = qword_1003F2700;
  v14 = (v11 + *(v8 + 20));
  v16 = *v14;
  v15 = v14[1];

  sub_1001DF414(v16, v15, 0xD000000000000029, 0x80000001003173B0, 150, v13, 0xD00000000000001BLL, 0x800000010031E490, v9, &unk_1002FAE38, v7, type metadata accessor for FinishTransactionTask, &qword_1003D27D8, type metadata accessor for FinishTransactionTask, &unk_1002EE374, type metadata accessor for FinishTransactionTask, type metadata accessor for FinishTransactionTask, &unk_1003909F0, &unk_1002FAF48);

  _Block_release(a4);
}

uint64_t StoreKitServiceConnection.finishTransaction(_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10021AB84();
  sub_1000EDD24();
  v7 = swift_allocObject();
  v7[2] = &unk_1002FACC8;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = a4;
  v7[6] = v5;
  v8 = type metadata accessor for FinishTransactionTask();
  v9 = swift_allocBox();
  v11 = v10;

  v12 = v5;
  sub_1000B0220();
  sub_1000EB4A4();
  if (qword_1003CBE98 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v13 = qword_1003F2700;
  v14 = (v11 + *(v8 + 20));
  v16 = *v14;
  v15 = v14[1];

  sub_1001DF414(v16, v15, 0xD000000000000029, 0x80000001003173B0, 150, v13, 0xD00000000000001BLL, 0x800000010031E490, v9, &unk_1002FACD8, v7, type metadata accessor for FinishTransactionTask, &qword_1003D27D8, type metadata accessor for FinishTransactionTask, &unk_1002EE374, type metadata accessor for FinishTransactionTask, type metadata accessor for FinishTransactionTask, &unk_1003909F0, &unk_1002FAF48);
}

uint64_t sub_1001F9A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000AFC98;

  return sub_1001B77C0();
}

void sub_1001F9B48(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002192F8;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = &unk_1002FACE0;
  *(v8 + 32) = 0;
  *(v8 + 40) = sub_10016C648;
  *(v8 + 48) = v7;
  v9 = type metadata accessor for LegacyRestoreCompletedTransactionsTask();
  v10 = swift_allocBox();
  v12 = v11;
  swift_retain_n();
  _Block_copy(a4);
  a3;

  sub_1000EB6C8();
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v13 = qword_1003F2700;
  v14 = (v12 + *(v9 + 28));
  v15 = *v14;
  v16 = v14[1];

  sub_1001DE4A4(v15, v16, 0xD000000000000029, 0x80000001003173B0, 150, v13, 0xD00000000000002CLL, 0x800000010031E4B0, v10, &unk_1002FAE30, v8);

  _Block_release(a4);
}

uint64_t sub_1001F9FFC(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for LegacyTransactionManager();
  v1[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_1001FA0C8;

  return sub_1001A2A70();
}

uint64_t sub_1001FA0C8()
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
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

void sub_1001FA1E8(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100216A74;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = &unk_1002FACF0;
  v8[4] = 0;
  v8[5] = sub_10016C648;
  v8[6] = v7;
  v9 = type metadata accessor for LegacyUnfinishedTransactionsTask();
  v10 = swift_allocBox();
  v12 = v11;
  swift_retain_n();
  _Block_copy(a4);
  a3;

  sub_1000EB8EC();
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v13 = qword_1003F2700;
  v14 = (v12 + *(v9 + 28));
  v16 = *v14;
  v15 = v14[1];

  sub_1001DF414(v16, v15, 0xD000000000000029, 0x80000001003173B0, 150, v13, 0xD000000000000026, 0x800000010031E4E0, v10, &unk_1002FAE28, v8, type metadata accessor for LegacyUnfinishedTransactionsTask, &qword_1003D27C8, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1002EE170, type metadata accessor for LegacyUnfinishedTransactionsTask, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1003909A0, &unk_1002FAF28);

  _Block_release(a4);
}

uint64_t StoreKitServiceConnection.legacyUnfinishedTransactions(_:reply:)()
{
  sub_1000EDCC8();
  sub_1000B7E4C();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v0;
  sub_1000EDD24();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = &unk_1002FACF0;
  v7[4] = 0;
  v7[5] = sub_10016C648;
  v7[6] = v6;
  v8 = type metadata accessor for LegacyUnfinishedTransactionsTask();
  swift_allocBox();
  sub_100219AFC();
  swift_retain_n();
  v9 = v1;
  sub_1000EDD18();

  sub_1000EDD04();
  sub_1000EB8EC();
  if (v2)
  {

    swift_deallocBox();
    swift_errorRetain();
    v14 = sub_100219B80();
    v3(v14);
  }

  else
  {
    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    v10 = qword_1003F2700;
    v11 = (v5 + *(v8 + 28));
    v13 = *v11;
    v12 = v11[1];
    sub_10021AA18();

    sub_1001DF414(v13, v12, 0xD000000000000029, v5 | 0x8000000000000000, 150, v10, 0xD000000000000026, 0x800000010031E4E0, v4, &unk_1002FACF8, v7, type metadata accessor for LegacyUnfinishedTransactionsTask, &qword_1003D27C8, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1002EE170, type metadata accessor for LegacyUnfinishedTransactionsTask, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1003909A0, &unk_1002FAF28);
  }
}

uint64_t sub_1001FA7D4(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for LegacyTransactionManager();
  v1[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_1001FA8A0;

  return sub_1001A42E8();
}

uint64_t sub_1001FA8A0()
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
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001FA9A8()
{
  sub_10008BE9C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_100098AA4();

  return v3();
}

uint64_t sub_1001FAA08()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

void sub_1001FAA7C(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  v7[2] = &unk_1002FAD00;
  v7[3] = 0;
  v7[4] = sub_100216A58;
  v7[5] = v6;
  v7[6] = a3;
  v8 = swift_allocObject();
  _Block_copy(a4);

  v9 = a3;
  v10 = sub_1000EBB10();
  v12 = v11;
  *(v8 + 16) = v10;
  *(v8 + 24) = v11;
  *(v8 + 32) = v13;
  *(v8 + 40) = v14 & 1;
  if (qword_1003CBE98 != -1)
  {
    swift_once();
    v10 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  v15 = qword_1003F2700;

  sub_1001E0098(v10, v12, 0xD000000000000029, 0x80000001003173B0, 150, v15, 0xD00000000000001CLL, 0x800000010031E510, v8, &unk_1002FAE20, v7);

  _Block_release(a4);
}

uint64_t sub_1001FAECC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A7644;

  return sub_1001BE66C(v4, v3, v5, v6);
}

void sub_1001FAF94(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v8 - 8);
  v53 = &v49 - v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = objc_opt_self();
  _Block_copy(a3);
  v12 = [v11 lib_shortLogKey];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SKLogger();
  v17 = sub_10007EDA4(v16, qword_1003F26C8);

  v18 = static os_log_type_t.default.getter();

  v54 = v17;
  v19 = Logger.logObject.getter();

  v20 = os_log_type_enabled(v19, v18);
  v52 = v13;
  if (v20)
  {
    v50 = a1;
    v21 = swift_slowAlloc();
    v51 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 136446466;
    v55 = 91;
    v56 = 0xE100000000000000;
    v57 = v23;
    v24._countAndFlagsBits = v13;
    v24._object = v15;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 8285;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    v26 = v7;
    v27 = sub_100080210(v55, v56, &v57);

    *(v22 + 4) = v27;
    v7 = v26;
    *(v22 + 12) = 2082;
    a1 = v50;
    *(v22 + 14) = sub_100080210(0xD000000000000013, 0x800000010031E530, &v57);
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v22, 0x16u);
    swift_arrayDestroy();

    v10 = v51;
  }

  v28 = [objc_opt_self() currentConnection];
  if (v28)
  {
    v29 = v28;
    type metadata accessor for Client(0);
    v30 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v53, 1, 1, v30);
    v31 = v29;
    sub_1001ABF2C();
    v42 = v41;

    v43 = type metadata accessor for TaskPriority();
    sub_100081DFC(v7, 1, 1, v43);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v42;
    v44[5] = a1;
    v44[6] = v52;
    v44[7] = v15;
    v44[8] = sub_1002169E8;
    v44[9] = v10;
    v45 = v42;
    v46 = a1;

    v47 = v45;
    v48 = v46;

    sub_1000B5BC0(0, 0, v7, &unk_1002FAE18, v44);

    sub_10013B1E8(v7, &unk_1003CE2B0);
  }

  else
  {

    v32 = static os_log_type_t.error.getter();

    v33 = Logger.logObject.getter();

    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136446466;
      v55 = 91;
      v56 = 0xE100000000000000;
      v57 = v35;
      v36._countAndFlagsBits = v52;
      v36._object = v15;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 8285;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38 = sub_100080210(v55, v56, &v57);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_100080210(0xD000000000000036, 0x800000010031E550, &v57);
      _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v39 = 1;
    v40 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v40);
  }

  _Block_release(a3);
}

void StoreKitServiceConnection.policy(with:reply:)()
{
  sub_100093D08();
  v4 = v3;
  v6 = v5;
  v49 = v7;
  v8 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_100089360();
  v10 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v10);
  sub_100089118();
  __chkstk_darwin(v11);
  sub_10021A64C();
  v12 = [objc_opt_self() lib_shortLogKey];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v16 = type metadata accessor for SKLogger();
  sub_10007EDA4(v16, qword_1003F26C8);
  sub_1000EDD18();

  static os_log_type_t.default.getter();
  sub_10021A8B0();
  v17 = Logger.logObject.getter();

  if (os_log_type_enabled(v17, v1))
  {
    sub_1000B7DC8();
    v12 = swift_slowAlloc();
    sub_1000B7DBC();
    v18 = swift_slowAlloc();
    *v12 = 136446466;
    sub_100106B4C(v18);
    v19._countAndFlagsBits = v13;
    v19._object = v15;
    String.append(_:)(v19);
    v20._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v20);
    sub_100219A70();
    sub_1000B0494();
    *(v12 + 1) = v6;
    sub_100219E3C();
    *(v12 + 14) = sub_100080210(0xD000000000000013, 0x800000010031E530, &v50);
    sub_10021A5AC(&_mh_execute_header, v17, v1, "%{public}s%{public}s");
    sub_100098BC0();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  if ([objc_opt_self() currentConnection])
  {
    v21 = sub_1000B06A8();
    type metadata accessor for Client(v21);
    v22 = sub_1001B52B0();
    type metadata accessor for ClientOverride(v22);
    sub_1000B0690();
    sub_100081DFC(v23, v24, v25, v26);
    v27 = v12;
    sub_1001ABF2C();
    sub_10013B8D4();

    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v36, v37, v38, v39);
    sub_10021A790();
    v40 = swift_allocObject();
    v41 = sub_10021AC54(v40);
    v41[4] = v12;
    v41[5] = v49;
    v41[6] = v13;
    v41[7] = v15;
    v41[8] = v6;
    v41[9] = v4;
    v42 = v12;
    v43 = v49;
    sub_10021A0FC();

    v44 = v42;
    v45 = v49;

    v46 = sub_1001C5454();
    sub_1000B5BC0(v46, v47, v2, v48, &off_1002EA000);

    sub_10013B1E8(v2, &unk_1003CE2B0);
  }

  else
  {

    static os_log_type_t.error.getter();
    sub_10021A8B0();
    Logger.logObject.getter();
    sub_10021A0FC();

    if (sub_10021A898())
    {
      sub_1000B7DC8();
      v12 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      *v12 = 136446466;
      sub_100106B4C(v28);
      v30._countAndFlagsBits = v29;
      v30._object = v15;
      String.append(_:)(v30);
      v31._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v31);
      sub_100219A70();
      sub_1000B0494();
      *(v12 + 1) = v6;
      sub_100219E3C();
      *(v12 + 14) = sub_100080210(0xD000000000000036, 0x800000010031E550, &v50);
      sub_10021A348(&_mh_execute_header, v32, v33, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v34 = swift_allocError();
    sub_1002195EC(v34, v35);
    v6(0, v12);
  }

  sub_100093CB8();
}

uint64_t sub_1001FBA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  type metadata accessor for URLError.Code();
  v8[9] = swift_task_alloc();
  v9 = type metadata accessor for URLError();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[13] = v10;
  *v10 = v8;
  v10[1] = sub_1001FBB9C;

  return sub_1001589B4();
}

uint64_t sub_1001FBB9C()
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
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001FBCA4()
{
  sub_100098BB4();
  v2 = *(v1 + 56);
  v3 = *(v1 + 120);
  v4 = sub_1000D3ED4();
  v2(v4, 0);

  sub_100098AC4();

  return v5();
}

uint64_t sub_1001FBD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10013BDE0();
  sub_1000B02BC();
  v10[4] = v10[14];
  swift_errorRetain();
  v13 = sub_100080FB4(&qword_1003CCCB0);
  v14 = swift_dynamicCast();
  v15 = v10[14];
  if ((v14 & 1) != 0 || (, v10[6] = v15, swift_errorRetain(), sub_10021A2F4(), swift_dynamicCast()) && (v22 = v10[3], v23 = v22 - 1, sub_1002176D4(v10[2], v22), v23 >= 3))
  {

    v16 = v10[7];
    static URLError.Code.badServerResponse.getter();
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_100219D70();
    sub_1002185B8(v17, v18);
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = URLError._nsError.getter();
    v20 = sub_1000C43E8();
    v21(v20);
    v16(0, v19);

    goto LABEL_15;
  }

  v24 = _convertErrorToNSError(_:)();
  v25 = [v24 code];

  if ((v25 - 203) < 2)
  {
    sub_10021986C();
    static URLError.Code.resourceUnavailable.getter();
    goto LABEL_14;
  }

  if (v25 == 1)
  {
    sub_10021986C();
    static URLError.Code.timedOut.getter();
    goto LABEL_14;
  }

  if (v25 == 200)
  {
    sub_10021986C();
    static URLError.Code.badURL.getter();
    goto LABEL_14;
  }

  if (v25 == 202)
  {
    sub_10021986C();
    static URLError.Code.cannotParseResponse.getter();
LABEL_14:
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_100219D70();
    sub_1002185B8(v26, v27);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = URLError._nsError.getter();
    (*(v11 + 8))(v13, v15);
    v12(0, v28);

    goto LABEL_15;
  }

  v38 = v10[14];
  v39 = v10[7];
  swift_errorRetain();
  v39(0, v38);

LABEL_15:

  sub_100098AC4();
  sub_10013BDF8();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

void sub_1001FC054(int a1, int a2, int a3, void *a4)
{
  v7 = sub_10021AD38(a1, a2, a3, a4);
  _Block_copy(v7);
  v8 = v5;
  v9 = v6;
  v4(v8, v9, v7);
  _Block_release(v7);
}

void sub_1001FC0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(const void *, void *))
{
  v69 = a3;
  v7 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v7 - 8);
  v70 = &v64 - v8;
  v9 = sub_100080FB4(&unk_1003D20F0);
  v10 = __chkstk_darwin(v9 - 8);
  v71 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v64 - v12;
  v14 = type metadata accessor for ProductRequest();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v74 = &v64 - v19;
  __chkstk_darwin(v18);
  v72 = &v64 - v20;
  v73 = swift_allocObject();
  *(v73 + 16) = a5;
  v75 = a5;
  _Block_copy(a5);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for SKLogger();
  v22 = sub_10007EDA4(v21, qword_1003F26C8);
  v23 = static os_log_type_t.default.getter();
  v24 = Logger.logObject.getter();
  if (os_log_type_enabled(v24, v23))
  {
    v67 = v22;
    v65 = v15;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v66 = a2;
    v77 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_100080210(0, 0xE000000000000000, &v77);
    *(v25 + 12) = 2082;
    v15 = v65;
    *(v25 + 14) = sub_100080210(0xD00000000000001ELL, 0x800000010031E590, &v77);
    _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1002185B8(&qword_1003CC680, type metadata accessor for ProductRequest);
  v27 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v28 = v72;
  sub_100218508(v27, v72);
  v29 = [objc_opt_self() currentConnection];
  if (!v29)
  {
    v31 = (v28 + *(v14 + 36));
    v32 = *v31;
    v33 = v31[1];
    v34 = static os_log_type_t.error.getter();

    v35 = Logger.logObject.getter();

    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 136446466;
      v76 = v37;
      v77 = 91;
      v78 = 0xE100000000000000;
      v38._countAndFlagsBits = v32;
      v38._object = v33;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 8285;
      v39._object = 0xE200000000000000;
      String.append(_:)(v39);
      v40 = sub_100080210(v77, v78, &v76);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_100080210(0xD000000000000034, 0x800000010031E5D0, &v76);
      _os_log_impl(&_mh_execute_header, v35, v34, "%{public}s%{public}s", v36, 0x16u);
      swift_arrayDestroy();
    }

    v41 = v75;
    sub_10008B5E0();
    swift_allocError();
    *v42 = 1;
    v43 = _convertErrorToNSError(_:)();
    v41[2](v41, v43);

    sub_1002190EC();
    goto LABEL_14;
  }

  v30 = v29;
  if ([v29 sk_allowClientOverride])
  {
    sub_100105C8C(v28, v13, &unk_1003D20F0);
  }

  else
  {
    v44 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v13, 1, 1, v44);
  }

  type metadata accessor for Client(0);
  v74 = v13;
  sub_100105C8C(v13, v71, &unk_1003D20F0);
  v45 = v30;
  sub_1001ABF2C();
  v67 = v46;
  v71 = v45;
  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v77 = 0x53746375646F7250;
  v78 = 0xEF5F656369767265;
  String.append(_:)(*(v28 + *(v14 + 36)));
  v47 = v77;
  v48 = v78;
  v49 = [objc_opt_self() globalStore];
  if (v49)
  {
    v50 = v49;
    sub_1000C6F80(v47, v48, v49);

    v51 = type metadata accessor for TaskPriority();
    v52 = v70;
    sub_100081DFC(v70, 1, 1, v51);
    v53 = v68;
    sub_100219094(v28, v68);
    v54 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v55 = (v16 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    sub_100218508(v53, v58 + v54);
    v59 = v67;
    *(v58 + v55) = v67;
    *(v58 + v56) = v69;
    v60 = (v58 + v57);
    v61 = v73;
    *v60 = sub_100219348;
    v60[1] = v61;
    v62 = (v58 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v62 = v47;
    v62[1] = v48;
    v63 = v59;
    swift_unknownObjectRetain();

    sub_1000B5BC0(0, 0, v52, &unk_1002FAE10, v58);

    sub_10013B1E8(v52, &unk_1003CE2B0);
    sub_10013B1E8(v74, &unk_1003D20F0);
    sub_1002190EC();
    v41 = v75;
LABEL_14:

    _Block_release(v41);
    return;
  }

  _Block_release(v75);
  __break(1u);
}

void StoreKitServiceConnection.products(with:receiver:reply:)()
{
  sub_100093D08();
  v3 = v2;
  v84 = v5;
  v85 = v4;
  v79 = v6;
  v86 = v7;
  v8 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  v80 = v10;
  v11 = sub_100080FB4(&unk_1003D20F0);
  v12 = sub_1000B01B0(v11);
  __chkstk_darwin(v12);
  sub_10018ECCC();
  v82 = v13;
  sub_10018ED10();
  __chkstk_darwin(v14);
  sub_10021A62C();
  v15 = type metadata accessor for ProductRequest();
  sub_1000890DC();
  v77 = v16;
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v19);
  v78 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  sub_10021A0BC();
  __chkstk_darwin(v21);
  v23 = &v77 - v22;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v24 = type metadata accessor for SKLogger();
  sub_100107C34(v24, qword_1003F26C8);
  static os_log_type_t.default.getter();
  v83 = v0;
  v25 = Logger.logObject.getter();
  if (sub_10021AE90(v25))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    v81 = v1;
    sub_1002197A4();
    v88 = swift_slowAlloc();
    *v3 = 136446466;
    *(v3 + 4) = sub_100219AD0();
    sub_100107150();
    *(v3 + 14) = sub_100080210(0xD00000000000001ELL, 0x800000010031E590, &v88);
    sub_10021A250();
    sub_10021A01C();
    _os_log_impl(v26, v27, v28, v29, v30, v31);
    swift_arrayDestroy();
    sub_1000B7D68();

    v1 = v81;
    sub_1000B7D68();
  }

  type metadata accessor for PropertyListDecoder();
  sub_10021A330();
  PropertyListDecoder.init()();
  sub_1002185B8(&qword_1003CC680, type metadata accessor for ProductRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100219F14();
  v32 = sub_1000D4078();
  sub_100218508(v32, v33);
  v34 = [objc_opt_self() currentConnection];
  if (!v34)
  {
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v36 = swift_slowAlloc();
      sub_1000B7DBC();
      v37 = swift_slowAlloc();
      *v36 = 136446466;
      sub_100219444(v37);
      v38._countAndFlagsBits = sub_100219CF0();
      String.append(_:)(v38);
      v39._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v39);
      sub_100219AA4();
      sub_100107144();

      sub_1002197B4();
      *(v36 + 14) = sub_100080210(0xD000000000000034, 0x800000010031E5D0, &v87);
      sub_100219784(&_mh_execute_header, v40, v41, "%{public}s%{public}s");
      sub_100219CAC();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v42 = swift_allocError();
    sub_1002195EC(v42, v43);
    v84();

    goto LABEL_14;
  }

  v35 = v34;
  if ([v34 sk_allowClientOverride])
  {
    sub_100105C8C(v23, v1, &unk_1003D20F0);
  }

  else
  {
    type metadata accessor for ClientOverride(0);
    sub_1000B0690();
    sub_100081DFC(v44, v45, v46, v47);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v1, v82, &unk_1003D20F0);
  v48 = v35;
  sub_1001ABF2C();
  v83 = v49;
  v85 = v3;
  v86 = v48;
  v81 = v1;
  sub_100219774();
  _StringGuts.grow(_:)(17);

  v88 = 0x53746375646F7250;
  v89 = 0xEF5F656369767265;
  String.append(_:)(*&v23[v15[9]]);
  v50 = v88;
  v51 = v89;
  v52 = [objc_opt_self() globalStore];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1001073F0();
    sub_1000C6F80(v54, v55, v53);

    type metadata accessor for TaskPriority();
    v56 = v80;
    sub_1000B0690();
    sub_100081DFC(v57, v58, v59, v60);
    v82 = v50;
    v61 = v78;
    sub_100219094(v23, v78);
    v62 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v63 = (v18 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    sub_100219F14();
    sub_100218508(v61, v67 + v62);
    v69 = v83;
    v68 = v84;
    *(v66 + v63) = v83;
    *(v66 + v64) = v79;
    v70 = (v66 + v65);
    v71 = v85;
    *v70 = v68;
    v70[1] = v71;
    v72 = (v66 + ((v65 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v72 = v82;
    v72[1] = v51;
    v73 = v69;
    swift_unknownObjectRetain();

    v74 = sub_1001C5454();
    sub_1000B5BC0(v74, v75, v56, v76, v66);

    sub_10013B1E8(v56, &unk_1003CE2B0);
    sub_10013B1E8(v81, &unk_1003D20F0);
LABEL_14:
    sub_100219EFC();
    sub_1002190EC();
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_1001FD6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v13;
  v8[15] = v14;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_100080FB4(&qword_1003D27A0);
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_100080FB4(&qword_1003D27A8);
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001FD804, 0, 0);
}

uint64_t sub_1001FD804()
{
  sub_10008BE9C();
  if (qword_1003CBD90 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F25A8;
  *(v0 + 176) = qword_1003F25A8;

  return _swift_task_switch(sub_1001FD898, v1, 0);
}

uint64_t sub_1001FD898()
{
  sub_10008BE9C();
  sub_10012EE8C(*(v0 + 72), *(v0 + 80));
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001FD8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10008BE9C();
  AsyncThrowingStream.makeAsyncIterator()();
  swift_task_alloc();
  sub_1000F2F10();
  *(v14 + 184) = v15;
  *v15 = v16;
  sub_100219C5C(v15);
  sub_100098AD0();

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001FD984()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001FDA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000B026C();
  sub_1000B016C();
  v15 = v14[2];
  v16 = v14[4];
  if (v16)
  {
    v17 = v14[3];
    v18 = v14[24];
    type metadata accessor for PropertyListEncoder();
    sub_10021A330();
    PropertyListEncoder.init()();
    v14[5] = v15;
    v14[6] = v17;
    v14[7] = v16;
    sub_100217680();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v18)
    {
      v50 = v14[11];

      sub_100128CCC();
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v50 receivedResponse:isa];

      v52 = sub_100128CCC();
      sub_10008E168(v52, v53);

      swift_task_alloc();
      sub_1000F2F10();
      v14[23] = v54;
      *v54 = v55;
      sub_100219C5C();
      sub_100219934();
      sub_100098AD0();
      sub_10008E654();

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
    }

    v20 = v14[20];
    v19 = v14[21];
    v22 = v14[18];
    v21 = v14[19];
    a10 = v17;
    v24 = v14[16];
    v23 = v14[17];

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);

    v26 = v14[12];
    v25 = v14[13];
    v27 = _convertErrorToNSError(_:)();
    v28 = [v27 toASDErrorWithMetadata:0];

    v26(v28);
  }

  else
  {
    v29 = v14[12];
    v25 = v14[13];
    v30 = v14[11];
    (*(v14[17] + 8))(v14[18], v14[16]);
    [v30 receivedResponse:0];
    v29(0);
    v31 = sub_100219AC0();
    v32(v31);
  }

  v33 = [objc_opt_self() globalStore];
  if (!v33)
  {
    __break(1u);
    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  sub_10021A9BC(v33);

  sub_100098AC4();
  sub_10008E654();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

id sub_1001FDD0C()
{
  sub_1000B061C();
  sub_1000B0004();
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = sub_100107174();
  v2(v1);
  v4 = v0[12];
  v3 = v0[13];
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 toASDErrorWithMetadata:0];

  v4(v6);

  result = [objc_opt_self() globalStore];
  if (result)
  {
    sub_10021A9BC(result);

    sub_100098AC4();
    sub_1000B0518();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001FDE38(void *a1, int a2, void *a3, int a4, void *aBlock, void (*a6)(uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  sub_100107144();
  swift_unknownObjectRetain();
  v15 = a1;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  _Block_copy(v10);
  v12 = sub_10021A548();
  a6(v12);
  _Block_release(v10);
  v13 = sub_10021A548();
  sub_10008E168(v13, v14);
  swift_unknownObjectRelease();
}

void sub_1001FDEFC(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v6 - 8);
  v142 = &v132 - v7;
  v8 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v132 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SKLogger();
  v13 = sub_10007EDA4(v12, qword_1003F26C8);
  v14 = static os_log_type_t.default.getter();
  v15 = Logger.logObject.getter();
  if (os_log_type_enabled(v15, v14))
  {
    v143 = v11;
    v144 = a4;
    v16 = swift_slowAlloc();
    object = a1;
    v17 = v16;
    *v149 = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100080210(0, 0xE000000000000000, v149);
    *(v17 + 12) = 2082;
    v11 = v143;
    a4 = v144;
    *(v17 + 14) = sub_100080210(0xD000000000000032, 0x800000010031E640, v149);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100215838();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v150 = *v149;
  v151 = *&v149[16];
  v152 = *&v149[32];
  v153 = *&v149[48];
  v18 = [objc_opt_self() currentConnection];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for Client(0);
    v20 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v10, 1, 1, v20);
    v21 = v19;
    sub_1001ABF2C();
    v137 = v30;
    v31 = v153;
    *v149 = 0;
    *&v149[8] = 0xE000000000000000;

    _StringGuts.grow(_:)(54);
    v32._countAndFlagsBits = 0xD000000000000016;
    v32._object = 0x800000010031E6D0;
    String.append(_:)(v32);
    v136 = v151;
    String.append(_:)(v151);
    v33._countAndFlagsBits = 0x6C7469746E45202ELL;
    v33._object = 0xEC000000203A6465;
    String.append(_:)(v33);
    v34 = [v21 sk_allowClientOverride];
    v35 = v34 == 0;
    if (v34)
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (v35)
    {
      v37 = 0xE500000000000000;
    }

    else
    {
      v37 = 0xE400000000000000;
    }

    v38 = v37;
    String.append(_:)(*&v36);

    v39._countAndFlagsBits = 0x656D61726150202ELL;
    v39._object = 0xEE00203A73726574;
    String.append(_:)(v39);
    v138 = v31;
    v40._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v40);

    v41 = *&v149[8];
    v135 = *v149;
    v140 = v21;
    v42 = v150;
    v43 = static os_log_type_t.default.getter();

    v144 = v13;
    v44 = Logger.logObject.getter();

    v45 = os_log_type_enabled(v44, v43);
    object = v42._object;
    countAndFlagsBits = v42._countAndFlagsBits;
    if (v45)
    {
      v46 = swift_slowAlloc();
      LODWORD(v133) = v43;
      v47 = v46;
      v134 = swift_slowAlloc();
      *&v146 = v134;
      *v47 = 136446466;
      *v149 = 91;
      *&v149[8] = 0xE100000000000000;
      String.append(_:)(v42);
      v48._countAndFlagsBits = 8285;
      v48._object = 0xE200000000000000;
      String.append(_:)(v48);
      v49 = sub_100080210(*v149, *&v149[8], &v146);

      *(v47 + 4) = v49;
      *(v47 + 12) = 2082;
      v50 = sub_100080210(v135, v41, &v146);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v44, v133, "%{public}s%{public}s", v47, 0x16u);
      swift_arrayDestroy();
      v51 = v140;
    }

    else
    {
      v51 = v140;
    }

    *&v146 = 0xD000000000000019;
    *(&v146 + 1) = 0x800000010031E6F0;
    v52 = v138;

    AnyHashable.init<A>(_:)();
    if (!*(v52 + 16))
    {

      sub_10008E550(v149);
      v55 = v52;
      goto LABEL_26;
    }

    sub_100212CF4(v149);
    v54 = v53;

    sub_10008E550(v149);
    v55 = v52;
    if ((v54 & 1) == 0)
    {
      goto LABEL_26;
    }

    v56 = sub_1001B56A0(5);
    v55 = v52;
    v57 = object;
    if (!v56)
    {
      v58 = static os_log_type_t.error.getter();

      v59 = Logger.logObject.getter();

      LODWORD(v135) = v58;
      if (os_log_type_enabled(v59, v58))
      {
        v133 = " to display in product views.";
        v60 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *&v146 = v134;
        *v60 = 136446466;
        *v149 = 91;
        *&v149[8] = 0xE100000000000000;
        v61._countAndFlagsBits = countAndFlagsBits;
        v61._object = v57;
        String.append(_:)(v61);
        v62._countAndFlagsBits = 8285;
        v62._object = 0xE200000000000000;
        String.append(_:)(v62);
        v63 = sub_100080210(*v149, *&v149[8], &v146);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2082;
        *(v60 + 14) = sub_100080210(0xD00000000000004ALL, v133 | 0x8000000000000000, &v146);
        _os_log_impl(&_mh_execute_header, v59, v135, "%{public}s%{public}s", v60, 0x16u);
        swift_arrayDestroy();
      }

      *&v146 = 0xD000000000000019;
      *(&v146 + 1) = 0x800000010031E6F0;
      AnyHashable.init<A>(_:)();
      v111 = v138;
      v112 = sub_100212CF4(v149);
      if (v113)
      {
        v114 = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v154 = v111;
        v116 = *(v111 + 24);
        sub_100080FB4(&qword_1003CF348);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v116);
        v55 = v154;
        sub_10008E550(*(v154 + 48) + 40 * v114);
        sub_10008B5D0((*(v55 + 56) + 32 * v114), &v146);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v146 = 0u;
        v147 = 0u;
        v55 = v111;
      }

      v57 = object;
      sub_10008E550(v149);
      sub_10013B1E8(&v146, &unk_1003CCB70);
    }

    *&v154 = 0xD000000000000019;
    *(&v154 + 1) = 0x800000010031E6F0;
    AnyHashable.init<A>(_:)();
    sub_1001DAA40(v149, v55, &v146);
    sub_10008E550(v149);
    if (*(&v147 + 1))
    {
      sub_100080FB4(&unk_1003D0530);
      if (swift_dynamicCast())
      {
        v117 = *(v154 + 16);

        if (v117)
        {
          v52 = v138;
LABEL_26:
          v138 = v55;
          *&v146 = 0x6C63697472417369;
          *(&v146 + 1) = 0xE900000000000065;

          AnyHashable.init<A>(_:)();
          v64 = *(v52 + 16);
          v143 = v11;
          if (v64)
          {
            sub_100212CF4(v149);
            v66 = v65;

            sub_10008E550(v149);
            v67 = v51;
            if (v66)
            {
              if ([v51 sk_allowArticle])
              {
                v68 = object;
              }

              else
              {
                v95 = static os_log_type_t.error.getter();
                v96 = object;

                v97 = Logger.logObject.getter();

                if (os_log_type_enabled(v97, v95))
                {
                  v133 = "Has presentation entitlement: ";
                  v98 = swift_slowAlloc();
                  LODWORD(v134) = v95;
                  v99 = v98;
                  v135 = swift_slowAlloc();
                  *&v146 = v135;
                  *v99 = 136446466;
                  *v149 = 91;
                  *&v149[8] = 0xE100000000000000;
                  v100._countAndFlagsBits = countAndFlagsBits;
                  v100._object = v96;
                  String.append(_:)(v100);
                  v101._countAndFlagsBits = 8285;
                  v101._object = 0xE200000000000000;
                  String.append(_:)(v101);
                  v102 = v67;
                  v103 = sub_100080210(*v149, *&v149[8], &v146);

                  *(v99 + 4) = v103;
                  v67 = v102;
                  *(v99 + 12) = 2082;
                  *(v99 + 14) = sub_100080210(0xD00000000000004DLL, v133 | 0x8000000000000000, &v146);
                  _os_log_impl(&_mh_execute_header, v97, v134, "%{public}s%{public}s", v99, 0x16u);
                  swift_arrayDestroy();
                }

                *&v146 = 0x6C63697472417369;
                *(&v146 + 1) = 0xE900000000000065;
                AnyHashable.init<A>(_:)();
                v104 = v138;
                v105 = sub_100212CF4(v149);
                if (v106)
                {
                  v107 = v105;
                  v108 = swift_isUniquelyReferenced_nonNull_native();
                  *&v154 = v104;
                  v109 = *(v104 + 24);
                  sub_100080FB4(&qword_1003CF348);
                  _NativeDictionary.ensureUnique(isUnique:capacity:)(v108, v109);
                  v110 = v154;
                  sub_10008E550(*(v154 + 48) + 40 * v107);
                  sub_10008B5D0((*(v110 + 56) + 32 * v107), &v146);
                  v138 = v110;
                  _NativeDictionary._delete(at:)();
                }

                else
                {
                  v146 = 0u;
                  v147 = 0u;
                }

                v68 = object;
                sub_10008E550(v149);
                sub_10013B1E8(&v146, &unk_1003CCB70);
              }
            }

            else
            {
              v68 = object;
            }
          }

          else
          {

            sub_10008E550(v149);
            v68 = object;
            v67 = v51;
          }

          v69 = sub_1001B56A0(8);
          *v149 = 0;
          *&v149[8] = 0xE000000000000000;
          _StringGuts.grow(_:)(32);

          *v149 = 0xD00000000000001ELL;
          *&v149[8] = 0x800000010031E710;
          LODWORD(v135) = v69;
          if (v69)
          {
            v70 = 1702195828;
          }

          else
          {
            v70 = 0x65736C6166;
          }

          if (v69)
          {
            v71 = 0xE400000000000000;
          }

          else
          {
            v71 = 0xE500000000000000;
          }

          v72 = v71;
          String.append(_:)(*&v70);

          v73 = *v149;
          v74 = *&v149[8];
          swift_bridgeObjectRetain_n();
          v75 = static os_log_type_t.default.getter();

          v76 = Logger.logObject.getter();

          if (os_log_type_enabled(v76, v75))
          {
            v77 = swift_slowAlloc();
            v144 = v73;
            v78 = v77;
            *&v146 = swift_slowAlloc();
            *v78 = 136446466;
            *v149 = 91;
            *&v149[8] = 0xE100000000000000;
            v79._countAndFlagsBits = countAndFlagsBits;
            v79._object = v68;
            String.append(_:)(v79);
            v80._countAndFlagsBits = 8285;
            v80._object = 0xE200000000000000;
            String.append(_:)(v80);
            v81 = sub_100080210(*v149, *&v149[8], &v146);

            *(v78 + 4) = v81;
            v68 = object;
            *(v78 + 12) = 2082;
            v82 = sub_100080210(v144, v74, &v146);

            *(v78 + 14) = v82;
            _os_log_impl(&_mh_execute_header, v76, v75, "%{public}s%{public}s", v78, 0x16u);
            swift_arrayDestroy();
            v67 = v140;
          }

          else
          {
          }

          v154 = v152;
          v83 = v137;
          v84 = v136._object;

          sub_10021453C(&v154, v149);
          v85 = v67;
          v86 = [v67 sk_allowClientOverride];
          v87 = v86;
          v148 = v154;
          v88 = v143;
          v89 = v138;
          if (v86)
          {
            strcpy(v145, "askToBuyItem");
            HIBYTE(v145[6]) = 0;
            v145[7] = -5120;

            AnyHashable.init<A>(_:)();
            sub_1001DAA40(v149, v89, &v146);
            sub_10008E550(v149);
            if (*(&v147 + 1))
            {
              sub_100080FB4(&qword_1003CC200);
              if (swift_dynamicCast())
              {

                v90 = 1;
LABEL_48:
                *v149 = v83;
                *&v149[8] = v136._countAndFlagsBits;
                *&v149[24] = v148;
                *&v149[16] = v84;
                *&v149[40] = countAndFlagsBits;
                *&v149[48] = v68;
                *&v149[56] = v89;
                v149[64] = v87;
                v149[65] = v90;
                v149[66] = v135 & 1;
                v91 = type metadata accessor for TaskPriority();
                v92 = v142;
                sub_100081DFC(v142, 1, 1, v91);
                v93 = swift_allocObject();
                *(v93 + 16) = 0;
                *(v93 + 24) = 0;
                memcpy((v93 + 32), v149, 0x43uLL);
                v94 = v151;
                *(v93 + 104) = v150;
                *(v93 + 120) = v94;
                *(v93 + 136) = v152;
                *(v93 + 152) = v153;
                *(v93 + 160) = sub_1002192FC;
                *(v93 + 168) = v88;
                sub_1001CA388(v149, &v146);

                sub_1000B5BC0(0, 0, v92, &unk_1002FAE08, v93);

                sub_1001CA3C0(v149);

                sub_10013B1E8(v92, &unk_1003CE2B0);

LABEL_71:

                goto LABEL_10;
              }
            }

            else
            {
              sub_10013B1E8(&v146, &unk_1003CCB70);
            }
          }

          else
          {
          }

          v90 = 0;
          goto LABEL_48;
        }

        sub_10021588C(&v150);
        v118 = static os_log_type_t.error.getter();

        v119 = Logger.logObject.getter();

        if (os_log_type_enabled(v119, v118))
        {
          v144 = "rings, returning error.";
          v120 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v127._object = v57;
          *&v146 = v126;
          *v120 = 136446466;
          *v149 = 91;
          *&v149[8] = 0xE100000000000000;
          v127._countAndFlagsBits = countAndFlagsBits;
          String.append(_:)(v127);
          v128._countAndFlagsBits = 8285;
          v128._object = 0xE200000000000000;
          String.append(_:)(v128);
          v129 = sub_100080210(*v149, *&v149[8], &v146);

          *(v120 + 4) = v129;
          *(v120 + 12) = 2082;
          v125 = 0xD000000000000052;
          goto LABEL_64;
        }

        goto LABEL_69;
      }
    }

    else
    {
      sub_10013B1E8(&v146, &unk_1003CCB70);
    }

    sub_10021588C(&v150);
    v118 = static os_log_type_t.error.getter();

    v119 = Logger.logObject.getter();

    if (os_log_type_enabled(v119, v118))
    {
      v144 = "oad identifiers, removing.";
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122._object = v57;
      *&v146 = v121;
      *v120 = 136446466;
      *v149 = 91;
      *&v149[8] = 0xE100000000000000;
      v122._countAndFlagsBits = countAndFlagsBits;
      String.append(_:)(v122);
      v123._countAndFlagsBits = 8285;
      v123._object = 0xE200000000000000;
      String.append(_:)(v123);
      v124 = sub_100080210(*v149, *&v149[8], &v146);

      *(v120 + 4) = v124;
      *(v120 + 12) = 2082;
      v125 = 0xD000000000000047;
LABEL_64:
      *(v120 + 14) = sub_100080210(v125, v144 | 0x8000000000000000, &v146);
      _os_log_impl(&_mh_execute_header, v119, v118, "%{public}s%{public}s", v120, 0x16u);
      swift_arrayDestroy();

LABEL_70:

      sub_10008B5E0();
      swift_allocError();
      *v130 = 13;
      v131 = _convertErrorToNSError(_:)();
      (*(a4 + 2))(a4, 0, v131);

      goto LABEL_71;
    }

LABEL_69:

    goto LABEL_70;
  }

  v22 = v150;

  sub_10021588C(&v150);
  v23 = static os_log_type_t.error.getter();

  v24 = Logger.logObject.getter();

  if (os_log_type_enabled(v24, v23))
  {
    v144 = a4;
    v25 = swift_slowAlloc();
    *&v146 = swift_slowAlloc();
    *v25 = 136446466;
    *v149 = 91;
    *&v149[8] = 0xE100000000000000;
    String.append(_:)(v22);
    v26._countAndFlagsBits = 8285;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    v27 = sub_100080210(*v149, *&v149[8], &v146);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2082;
    a4 = v144;
    *(v25 + 14) = sub_100080210(0xD000000000000029, 0x800000010031E6A0, &v146);
    _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v28 = 1;
  v29 = _convertErrorToNSError(_:)();
  (*(a4 + 2))(a4, 0, v29);

LABEL_10:
  _Block_release(a4);
}

void StoreKitServiceConnection.lookupProduct(withParametersProductRequest:reply:)()
{
  sub_100093D08();
  v1 = v0;
  v3 = v2;
  v4 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v123 = v6;
  v7 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  sub_100089360();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v9 = type metadata accessor for SKLogger();
  v10 = sub_10007EDA4(v9, qword_1003F26C8);
  v11 = static os_log_type_t.default.getter();
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v11))
  {
    sub_1000B7DC8();
    v13 = v10;
    v14 = swift_slowAlloc();
    sub_1000B7DBC();
    v15 = swift_slowAlloc();
    *v128 = v15;
    *v14 = 136446466;
    v17 = sub_100093CF0(v15, v16, v128);
    sub_100219B70(v17);
    *(v14 + 14) = sub_100080210(0xD000000000000032, 0x800000010031E640, v128);
    sub_10021A1F8(&_mh_execute_header, v18, v11, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000B7D68();

    v10 = v13;
    sub_1000B7D68();
  }

  type metadata accessor for JSONDecoder();
  sub_10021A330();
  v19 = JSONDecoder.init()();
  sub_100215838();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v129 = *v128;
  v130 = *&v128[16];
  v131 = *&v128[32];
  v132 = *&v128[48];
  if ([objc_opt_self() currentConnection])
  {
    v20 = sub_1001B52B0();
    v21 = type metadata accessor for Client(v20);
    type metadata accessor for ClientOverride(0);
    sub_1000B0690();
    sub_100081DFC(v22, v23, v24, v25);
    v26 = v19;
    sub_1001ABF2C();
    v115 = v34;
    v117 = v1;
    sub_100219B60();
    v35 = v132;
    *v128 = 0;
    *&v128[8] = 0xE000000000000000;

    _StringGuts.grow(_:)(54);
    v36._countAndFlagsBits = 0xD000000000000016;
    v36._object = 0x800000010031E6D0;
    String.append(_:)(v36);
    v114 = v130;
    String.append(_:)(v130);
    v37._countAndFlagsBits = 0x6C7469746E45202ELL;
    v37._object = 0xEC000000203A6465;
    String.append(_:)(v37);
    v38 = [v26 sk_allowClientOverride];
    v39 = v38 == 0;
    if (v38)
    {
      v40 = 1702195828;
    }

    else
    {
      v40 = v21;
    }

    if (v39)
    {
      v41 = 0xE500000000000000;
    }

    else
    {
      v41 = 0xE400000000000000;
    }

    v42 = v41;
    String.append(_:)(*&v40);

    v43._countAndFlagsBits = sub_10021A184();
    String.append(_:)(v43);
    v116 = v35;
    v44._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v44);

    v45 = *&v128[8];
    v113 = *v128;
    v47 = *(&v129 + 1);
    v46 = v129;
    isUniquelyReferenced_nonNull_native = static os_log_type_t.default.getter();

    v49 = Logger.logObject.getter();

    v119 = isUniquelyReferenced_nonNull_native;
    v121 = v47;
    v118 = v46;
    if (os_log_type_enabled(v49, isUniquelyReferenced_nonNull_native))
    {
      sub_1000B7DC8();
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      sub_1000B7DBC();
      v50 = swift_slowAlloc();
      sub_10021A838(v50);
      sub_100219524(4.8752e-34);
      v51._countAndFlagsBits = v46;
      v51._object = v47;
      String.append(_:)(v51);
      v52._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v52);
      sub_100219F38();
      sub_1000B0494();
      sub_1002198A4();
      sub_100080210(v113, v45, &v125);
      sub_10021A118();

      *(isUniquelyReferenced_nonNull_native + 14) = v128;
      sub_10021A214(&_mh_execute_header, v49, v119, "%{public}s%{public}s");
      sub_10021ABF4();
      sub_10021A388();
      sub_1000B7D68();

      sub_100219B60();
      sub_1000B7D68();
    }

    else
    {

      sub_10021ABF4();
      sub_100219B60();
    }

    *&v125 = v46;
    *(&v125 + 1) = 0x800000010031E6F0;
    v53 = v116;

    sub_10021AE48();
    v54 = v26;
    if (*(v116 + 16))
    {
      sub_100212CF4(v128);
      v56 = v55;

      sub_10008E550(v128);
      v120 = v116;
      if ((v56 & 1) == 0)
      {
        goto LABEL_26;
      }

      v57 = v116;
      if (!sub_1001B56A0(5))
      {
        v58 = static os_log_type_t.error.getter();

        v59 = Logger.logObject.getter();

        if (os_log_type_enabled(v59, v58))
        {
          sub_1000B7DC8();
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();
          sub_1000B7DBC();
          v60 = swift_slowAlloc();
          sub_10021A838(v60);
          sub_100219524(4.8752e-34);
          v61._countAndFlagsBits = v118;
          v61._object = v121;
          String.append(_:)(v61);
          v62._countAndFlagsBits = sub_1000B7DB0();
          String.append(_:)(v62);
          sub_100219F38();
          sub_100107144();

          *(isUniquelyReferenced_nonNull_native + 4) = v26;
          v54 = v26;
          sub_100219A1C();
          *(isUniquelyReferenced_nonNull_native + 14) = sub_100080210(0xD00000000000004ALL, 0x800000010031E780, &v125);
          sub_10021A214(&_mh_execute_header, v59, v58, "%{public}s%{public}s");
          sub_100219CAC();
          sub_1000B7D68();

          sub_1000B7D68();
        }

        *&v125 = 0xD000000000000019;
        *(&v125 + 1) = 0x800000010031E6F0;
        sub_10021AE48();
        v53 = v116;
        sub_100212CF4(v128);
        if (v96)
        {
          sub_10021A814();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v133 = v116;
          sub_100080FB4(&qword_1003CF348);
          sub_10021AD78();
          sub_10021AD58();
          sub_10008B5D0((*(v116 + 56) + 32 * v58), &v125);
          v46 = v116;
          _NativeDictionary._delete(at:)();
        }

        else
        {
          v125 = 0u;
          v126 = 0u;
          v46 = v116;
        }

        sub_100219B60();
        sub_10008E550(v128);
        sub_10013B1E8(&v125, &unk_1003CCB70);
        v57 = v46;
        sub_10021ABF4();
      }

      *&v133 = v46;
      *(&v133 + 1) = 0x800000010031E6F0;
      AnyHashable.init<A>(_:)();
      v120 = v57;
      sub_1001DAA40(v128, v57, &v125);
      sub_10008E550(v128);
      if (*(&v126 + 1))
      {
        sub_100080FB4(&unk_1003D0530);
        if (swift_dynamicCast())
        {
          v97 = *(v133 + 16);

          if (!v97)
          {

            sub_10021588C(&v129);
            static os_log_type_t.error.getter();
            sub_10021AE78();
            v98 = Logger.logObject.getter();

            if (os_log_type_enabled(v98, v46))
            {
              sub_1000B7DC8();
              v99 = swift_slowAlloc();
              sub_1000B7DBC();
              v100 = swift_slowAlloc();
              sub_10021A838(v100);
              sub_100219524(4.8752e-34);
              v101._countAndFlagsBits = v118;
              v101._object = v121;
              String.append(_:)(v101);
              v102._countAndFlagsBits = sub_1000B7DB0();
              String.append(_:)(v102);
              sub_100219F38();
              sub_100107144();

              sub_10021994C();
              *(v99 + 14) = sub_100080210(v103 + 57, 0x800000010031E820, &v125);
              sub_10021A214(&_mh_execute_header, v98, v46, "%{public}s%{public}s");
              sub_100219CAC();
              sub_1000B7D68();

              sub_1000B7D68();
            }

LABEL_64:

            sub_10008B5E0();
            sub_1000ED9E4();
            v110 = swift_allocError();
            v112 = sub_10021A820(v110, v111);
            v3(v112);

            goto LABEL_65;
          }

LABEL_26:
          *&v125 = 0x6C63697472417369;
          *(&v125 + 1) = 0xE900000000000065;

          sub_10021AE48();
          v122 = v3;
          if (*(v53 + 16))
          {
            sub_100212CF4(v128);
            v64 = v63;

            sub_10008E550(v128);
            if ((v64 & 1) != 0 && ([v54 sk_allowArticle] & 1) == 0)
            {
              v46 = static os_log_type_t.error.getter();

              v65 = Logger.logObject.getter();

              if (os_log_type_enabled(v65, v46))
              {
                sub_1000B7DC8();
                isUniquelyReferenced_nonNull_native = swift_slowAlloc();
                sub_1000B7DBC();
                *&v125 = swift_slowAlloc();
                sub_100219524(4.8752e-34);
                v66._countAndFlagsBits = v118;
                v66._object = v121;
                String.append(_:)(v66);
                v67._countAndFlagsBits = sub_1000B7DB0();
                String.append(_:)(v67);
                sub_100219F38();
                sub_100107144();

                sub_10021994C();
                *(isUniquelyReferenced_nonNull_native + 14) = sub_100080210(v68 + 52, 0x800000010031E730, &v125);
                sub_10021A214(&_mh_execute_header, v65, v46, "%{public}s%{public}s");
                sub_10021A594();
                swift_arrayDestroy();
                sub_1001B5198();

                sub_1000B7D68();
              }

              *&v125 = 0x6C63697472417369;
              *(&v125 + 1) = 0xE900000000000065;
              sub_10021AE48();
              sub_100212CF4(v128);
              if (v69)
              {
                sub_10001E104();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v133 = v120;
                sub_100080FB4(&qword_1003CF348);
                sub_10021AD78();
                sub_10021AD58();
                sub_10008B5D0((*(v120 + 56) + 32 * v46), &v125);
                _NativeDictionary._delete(at:)();
              }

              else
              {
                v125 = 0u;
                v126 = 0u;
              }

              sub_10021ABF4();
              sub_100219B60();
              sub_10008E550(v128);
              sub_10013B1E8(&v125, &unk_1003CCB70);
            }
          }

          else
          {

            sub_10008E550(v128);
          }

          v70 = sub_1001B56A0(8);
          *v128 = 0;
          *&v128[8] = 0xE000000000000000;
          _StringGuts.grow(_:)(32);

          sub_1000C446C();
          *v128 = v46 + 5;
          *&v128[8] = v71;
          v124 = v70;
          if (v70)
          {
            v72 = 1702195828;
          }

          else
          {
            v72 = isUniquelyReferenced_nonNull_native;
          }

          if (v70)
          {
            v73 = 0xE400000000000000;
          }

          else
          {
            v73 = 0xE500000000000000;
          }

          v74 = v73;
          String.append(_:)(*&v72);

          v75 = *v128;
          v76 = *&v128[8];
          v77 = v121;
          swift_bridgeObjectRetain_n();
          static os_log_type_t.default.getter();
          sub_10021AE78();

          v78 = Logger.logObject.getter();

          if (os_log_type_enabled(v78, v73))
          {
            sub_1000B7DC8();
            v79 = swift_slowAlloc();
            sub_1000B7DBC();
            v80 = swift_slowAlloc();
            sub_10021A838(v80);
            sub_100219524(4.8752e-34);
            v81._countAndFlagsBits = v118;
            v81._object = v121;
            String.append(_:)(v81);
            v82._countAndFlagsBits = sub_1000B7DB0();
            String.append(_:)(v82);
            sub_100219F38();
            sub_1000B0494();
            *(v79 + 4) = &type metadata for Any;
            v77 = v121;
            sub_100219A1C();
            v83 = sub_100080210(v75, v76, &v125);

            *(v79 + 14) = v83;
            sub_10021A214(&_mh_execute_header, v78, v73, "%{public}s%{public}s");
            sub_10021A388();
            sub_1000B7D68();

            sub_1000B7D68();
          }

          else
          {
          }

          v133 = v131;
          v84 = v115;

          sub_10021453C(&v133, v128);
          v85 = [v26 sk_allowClientOverride];
          v127 = v133;
          if (v85)
          {
            sub_10021A288();

            AnyHashable.init<A>(_:)();
            sub_1001DAA40(v128, v120, &v125);
            sub_10008E550(v128);
            if (*(&v126 + 1))
            {
              sub_100080FB4(&qword_1003CC200);
              if (swift_dynamicCast())
              {

                v86 = 1;
LABEL_50:
                *v128 = v84;
                *&v128[8] = v114;
                *&v128[24] = v127;
                *&v128[40] = v118;
                *&v128[48] = v77;
                *&v128[56] = v120;
                v128[64] = v85;
                v128[65] = v86;
                v128[66] = v124;
                type metadata accessor for TaskPriority();
                sub_1000B0690();
                sub_100081DFC(v87, v88, v89, v90);
                v91 = swift_allocObject();
                *(v91 + 16) = 0;
                *(v91 + 24) = 0;
                memcpy((v91 + 32), v128, 0x43uLL);
                v92 = v130;
                *(v91 + 104) = v129;
                *(v91 + 120) = v92;
                *(v91 + 136) = v131;
                *(v91 + 152) = v132;
                *(v91 + 160) = v122;
                *(v91 + 168) = v117;
                sub_1001CA388(v128, &v125);

                v93 = sub_1001C5454();
                sub_1000B5BC0(v93, v94, v123, v95, v91);

                sub_1001CA3C0(v128);

                sub_10013B1E8(v123, &unk_1003CE2B0);
LABEL_65:

                goto LABEL_10;
              }
            }

            else
            {
              sub_10013B1E8(&v125, &unk_1003CCB70);
            }
          }

          else
          {
          }

          v86 = 0;
          goto LABEL_50;
        }
      }

      else
      {
        sub_10013B1E8(&v125, &unk_1003CCB70);
      }

      sub_10021588C(&v129);
      v104 = static os_log_type_t.error.getter();

      v98 = Logger.logObject.getter();

      if (os_log_type_enabled(v98, v104))
      {
        sub_1000B7DC8();
        v105 = swift_slowAlloc();
        sub_1000B7DBC();
        v106 = swift_slowAlloc();
        sub_10021A838(v106);
        sub_100219524(4.8752e-34);
        v107._countAndFlagsBits = v118;
        v107._object = v121;
        String.append(_:)(v107);
        v108._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v108);
        sub_100219F38();
        sub_100107144();

        sub_10021994C();
        *(v105 + 14) = sub_100080210(v109 + 46, 0x800000010031E7D0, &v125);
        sub_10021A214(&_mh_execute_header, v98, v104, "%{public}s%{public}s");
        sub_100219CAC();
        sub_1000B7D68();

        sub_1000B7D68();
      }

      goto LABEL_64;
    }

    sub_10008E550(v128);
    v120 = v116;
    goto LABEL_26;
  }

  v27 = v129;

  sub_10021588C(&v129);
  static os_log_type_t.error.getter();
  sub_10021AA30();
  v28 = Logger.logObject.getter();

  if (os_log_type_enabled(v28, v10))
  {
    sub_1000B7DC8();
    v29 = swift_slowAlloc();
    sub_1000B7DBC();
    *&v125 = swift_slowAlloc();
    sub_100219524(4.8752e-34);
    v30._countAndFlagsBits = sub_10021ABC8();
    String.append(_:)(v30);
    v31._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v31);
    sub_100219F38();
    sub_100219D4C();

    *(v29 + 4) = v27;
    sub_100219A1C();
    *(v29 + 14) = sub_100080210(0xD000000000000029, 0x800000010031E6A0, &v125);
    sub_10021A214(&_mh_execute_header, v28, v10, "%{public}s%{public}s");
    sub_1000B0010();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  v32 = swift_allocError();
  sub_100219A48(v32, v33);
  (v3)(0, v32);

LABEL_10:
  sub_100093CB8();
}

uint64_t sub_100200948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[12] = a5;
  sub_100217624(a5, (v7 + 2));
  v8 = swift_task_alloc();
  v7[15] = v8;
  *v8 = v7;
  v8[1] = sub_1002009EC;

  return sub_1001C5CD4();
}

uint64_t sub_1002009EC()
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
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100200AF4()
{
  sub_100098BB4();
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v4 = sub_1000D3ED4();
  v2(v4, 0);

  sub_10021588C(*(v1 + 96));
  sub_100098AC4();

  return v5();
}

void sub_100200DD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v2 = sub_1001073F0();
  v5 = v3;
  v4(v2);
}

void sub_100200E3C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v5 - 8);
  v93 = &v87 - v6;
  v7 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v7 - 8);
  v96 = &v87 - v8;
  v9 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  v90 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v98 = &v87 - v13;
  v91 = v14;
  __chkstk_darwin(v12);
  v97 = (&v87 - v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for SKLogger();
  sub_10007EDA4(v17, qword_1003F26C8);
  v18 = static os_log_type_t.default.getter();
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v18))
  {
    v95 = v16;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v94 = a4;
    __src[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_100080210(0, 0xE000000000000000, __src);
    *(v20 + 12) = 2082;
    v16 = v95;
    *(v20 + 14) = sub_100080210(0xD00000000000002BLL, 0x800000010031E880, __src);
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
    a4 = v94;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002185B8(&qword_1003D21B8, type metadata accessor for ProductPageLookupRequest.URLRequest);
  v22 = v98;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v23 = v97;
  sub_100218508(v22, v97);
  v24 = [objc_opt_self() currentConnection];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for Client(0);
    v26 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v96, 1, 1, v26);
    v27 = v25;
    sub_1001ABF2C();
    v39 = v38;
    v95 = v9;
    v40 = [v27 sk_allowClientOverride];
    v98 = v27;
    if (v40)
    {
      v94 = *v23;
      v41 = v23;
      v42 = v23[1];
      v43 = v41[5];
      v87 = v41[4];
      v44 = v41[3];
      v89 = v41[2];
      v96 = v39;

      v88 = v44;

      v45 = sub_10014CDD0();
      v46 = [v27 sk_allowClientOverride];
      v47 = sub_1001B56A0(8);
      if (v46)
      {
        strcpy(v99, "askToBuyItem");
        BYTE5(v99[1]) = 0;
        HIWORD(v99[1]) = -5120;

        AnyHashable.init<A>(_:)();
        sub_1001DAA40(__src, v45, &v100);

        sub_10008E550(__src);
        if (v101)
        {
          sub_100080FB4(&qword_1003CC200);
          if (swift_dynamicCast())
          {

            v48 = 1;
LABEL_22:
            __src[0] = v96;
            __src[1] = v94;
            __src[2] = v42;
            __src[3] = v87;
            __src[4] = v43;
            v64 = v88;
            __src[5] = v89;
            __src[6] = v88;
            __src[7] = v45;
            LOBYTE(__src[8]) = v46;
            BYTE1(__src[8]) = v48;
            BYTE2(__src[8]) = v47;
            *&v100 = 0;
            *(&v100 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(44);

            *&v100 = 0xD00000000000001ALL;
            *(&v100 + 1) = 0x800000010031E910;
            v65._countAndFlagsBits = URL.absoluteString.getter();
            String.append(_:)(v65);

            v66._countAndFlagsBits = 0x656D61726150202ELL;
            v66._object = 0xEE00203A73726574;
            String.append(_:)(v66);
            sub_10014CDD0();
            v67 = Dictionary.description.getter();
            v69 = v68;

            v70._countAndFlagsBits = v67;
            v70._object = v69;
            String.append(_:)(v70);

            v71 = v100;
            v72 = static os_log_type_t.default.getter();

            v73 = Logger.logObject.getter();

            if (os_log_type_enabled(v73, v72))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v94 = a4;
              v99[0] = v75;
              *v74 = 136446466;
              *&v100 = 91;
              *(&v100 + 1) = 0xE100000000000000;
              v76._countAndFlagsBits = v89;
              v76._object = v64;
              String.append(_:)(v76);
              v77._countAndFlagsBits = 8285;
              v77._object = 0xE200000000000000;
              String.append(_:)(v77);
              v78 = sub_100080210(v100, *(&v100 + 1), v99);

              *(v74 + 4) = v78;
              *(v74 + 12) = 2082;
              v79 = sub_100080210(v71, *(&v71 + 1), v99);

              *(v74 + 14) = v79;
              _os_log_impl(&_mh_execute_header, v73, v72, "%{public}s%{public}s", v74, 0x16u);
              swift_arrayDestroy();
              a4 = v94;
            }

            else
            {
            }

            v80 = type metadata accessor for TaskPriority();
            v81 = v93;
            sub_100081DFC(v93, 1, 1, v80);
            v82 = v92;
            sub_100219094(v97, v92);
            v83 = (*(v90 + 80) + 99) & ~*(v90 + 80);
            v84 = (v91 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
            v85 = swift_allocObject();
            v85[2] = 0;
            v85[3] = 0;
            memcpy(v85 + 4, __src, 0x43uLL);
            sub_100218508(v82, v85 + v83);
            v86 = (v85 + v84);
            *v86 = sub_1002192FC;
            v86[1] = v16;
            sub_1001CA388(__src, &v100);

            sub_1000B5BC0(0, 0, v81, &unk_1002FAE00, v85);

            sub_1001CA3C0(__src);

            sub_10013B1E8(v81, &unk_1003CE2B0);
            goto LABEL_10;
          }
        }

        else
        {
          sub_10013B1E8(&v100, &unk_1003CCB70);
        }

        v48 = 0;
        goto LABEL_22;
      }

      v48 = 0;
      goto LABEL_22;
    }

    v49 = v23[2];
    v50 = v23[3];
    v51 = static os_log_type_t.error.getter();

    v52 = Logger.logObject.getter();

    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v95 = v16;
      *&v100 = v54;
      *v53 = 136446466;
      __src[0] = 91;
      __src[1] = 0xE100000000000000;
      v55._countAndFlagsBits = v49;
      v55._object = v50;
      String.append(_:)(v55);
      v56._countAndFlagsBits = 8285;
      v56._object = 0xE200000000000000;
      String.append(_:)(v56);
      v57 = sub_100080210(__src[0], __src[1], &v100);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2082;
      *(v53 + 14) = sub_100080210(0xD00000000000002DLL, 0x800000010031E8E0, &v100);
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s%{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
    v61 = objc_allocWithZone(NSError);
    v62 = sub_100212920(v58, v60, 512, 0);
    v63 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v63);
  }

  else
  {
    v28 = v23[2];
    v29 = v23[3];
    v30 = static os_log_type_t.error.getter();

    v31 = Logger.logObject.getter();

    if (os_log_type_enabled(v31, v30))
    {
      v98 = "Failed to decode lookup request";
      v32 = swift_slowAlloc();
      *&v100 = swift_slowAlloc();
      *v32 = 136446466;
      __src[0] = 91;
      __src[1] = 0xE100000000000000;
      v33._countAndFlagsBits = v28;
      v33._object = v29;
      String.append(_:)(v33);
      v34._countAndFlagsBits = 8285;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      v35 = sub_100080210(__src[0], __src[1], &v100);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_100080210(0xD000000000000029, v98 | 0x8000000000000000, &v100);
      _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s%{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v36 = 1;
    v37 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v37);
  }

LABEL_10:
  sub_1002190EC();

  _Block_release(a4);
}

void StoreKitServiceConnection.lookupProduct(withURLProductRequest:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100093D08();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v27);
  sub_100089118();
  __chkstk_darwin(v28);
  sub_1000891AC();
  sub_1001564A0(v29);
  v30 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v30);
  sub_100089118();
  __chkstk_darwin(v31);
  v33 = &v139 - v32;
  v34 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  sub_1000890DC();
  v144 = v35;
  __chkstk_darwin(v36);
  sub_1002199F4();
  sub_1001564A0(v37);
  __chkstk_darwin(v38);
  sub_1001B5378();
  sub_1001564A0(v39);
  v145 = v40;
  __chkstk_darwin(v41);
  sub_1001B5378();
  sub_1001564A0(v42);
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v43 = type metadata accessor for SKLogger();
  sub_10021A560(v43, qword_1003F26C8);
  v44 = static os_log_type_t.default.getter();
  v45 = Logger.logObject.getter();
  if (sub_10021AE90(v45))
  {
    v148 = v26;
    sub_1000B7DC8();
    v46 = swift_slowAlloc();
    v143 = v33;
    v47 = v46;
    sub_1000B7DBC();
    v48 = swift_slowAlloc();
    v154[0] = v48;
    *v47 = 136446466;
    v50 = sub_100093CF0(v48, v49, v154);
    sub_100219B70(v50);
    sub_1001072C0();
    v26 = v148;
    *(v47 + 14) = sub_100080210(v51 + 17, 0x800000010031E880, v154);
    sub_10021A1F8(&_mh_execute_header, v52, v44, "%{public}s%{public}s");
    sub_100219884();
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  type metadata accessor for JSONDecoder();
  sub_10021A330();
  JSONDecoder.init()();
  sub_1002185B8(&qword_1003D21B8, type metadata accessor for ProductPageLookupRequest.URLRequest);
  sub_10021AAB8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v143 = v20;
  sub_100219E90();
  v53 = v149;
  sub_100218508(v44, v149);
  if (![objc_opt_self() currentConnection])
  {
    v61 = v53[2];
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      v26 = "Failed to decode lookup request";
      sub_1000B7DC8();
      v62 = swift_slowAlloc();
      sub_1000B7DBC();
      *&v152 = swift_slowAlloc();
      sub_100219560(4.8752e-34);
      v154[0] = v63;
      v154[1] = v64;
      v65._countAndFlagsBits = sub_10021A414();
      String.append(_:)(v65);
      v66._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v66);
      sub_100080210(v154[0], v154[1], &v152);
      sub_100123F48();

      *(v62 + 4) = v61;
      sub_100219A1C();
      sub_1001072C0();
      sub_10021A244();
      *(v62 + 14) = sub_100080210(v67, v68, &v152);
      sub_100219784(&_mh_execute_header, v69, v70, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v71 = swift_allocError();
    sub_1002195EC(v71, v72);
    (v26)(0, v20);

    goto LABEL_10;
  }

  v54 = sub_1000B06A8();
  type metadata accessor for Client(v54);
  v55 = sub_1001B52B0();
  type metadata accessor for ClientOverride(v55);
  sub_1000B0690();
  sub_100081DFC(v56, v57, v58, v59);
  v60 = v20;
  sub_1001ABF2C();
  v74 = v73;
  if (![v60 sk_allowClientOverride])
  {
    sub_10021AB2C();
    v88 = v53[2];
    v89 = v53[3];
    static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_10021A814();

    if (sub_10021A898())
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1002195CC();
      v90 = swift_slowAlloc();
      v150 = v60;
      v60 = v90;
      *&v152 = v90;
      sub_100106A78(4.8752e-34);
      v154[0] = v91;
      v154[1] = v92;
      v93._countAndFlagsBits = v88;
      v93._object = v89;
      String.append(_:)(v93);
      v94._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v94);
      sub_100080210(v154[0], v154[1], &v152);
      sub_100123F48();

      *(v53 + 4) = v88;
      sub_1000B009C();
      sub_1001072C0();
      *(v53 + 14) = sub_100080210(v95 + 19, 0x800000010031E8E0, &v152);
      sub_100219A8C();
      _os_log_impl(v96, v97, v98, v99, v100, v101);
      sub_1000B0010();
      sub_10021AAB8();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = objc_allocWithZone(NSError);
    v103 = sub_1001B5400();
    v105 = sub_100212920(v103, v104, 512, 0);
    v106 = v105;
    (v148)(0, v105);

LABEL_10:
    sub_100219E78();
    goto LABEL_11;
  }

  v142 = v34;
  v75 = v53[1];
  v140 = *v53;
  v139 = v53[4];
  v76 = v53;
  v77 = v53[5];
  v78 = v76[3];
  v141 = v76[2];
  v148 = v74;

  v79 = sub_10014CDD0();
  v80 = [v60 sk_allowClientOverride];
  v150 = v60;
  v81 = sub_1001B56A0(8);
  if (!v80)
  {
LABEL_21:
    v87 = 0;
    v85 = v78;
    v86 = v141;
    goto LABEL_22;
  }

  sub_10021A288();
  v151[0] = v82;
  v151[1] = v83;

  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v154, v79, &v152);

  sub_10008E550(v154);
  if (!v153)
  {
    sub_10013B1E8(&v152, &unk_1003CCB70);
    goto LABEL_21;
  }

  sub_100080FB4(&qword_1003CC200);
  v84 = swift_dynamicCast();
  v85 = v78;
  v86 = v141;
  if (v84)
  {

    v87 = 1;
  }

  else
  {
    v87 = 0;
  }

LABEL_22:
  v154[0] = v148;
  v154[1] = v140;
  v154[2] = v75;
  v154[3] = v139;
  v154[4] = v77;
  v154[5] = v86;
  v154[6] = v85;
  v154[7] = v79;
  LOBYTE(v154[8]) = v80;
  BYTE1(v154[8]) = v87;
  BYTE2(v154[8]) = v81;
  *&v152 = 0;
  *(&v152 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  sub_1000C446C();
  *&v152 = 0xD00000000000001ALL;
  *(&v152 + 1) = v107;
  v108._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v108);

  v109._countAndFlagsBits = sub_10021A184();
  String.append(_:)(v109);
  v110 = sub_10014CDD0();
  Dictionary.description.getter();

  v111._countAndFlagsBits = sub_10021A548();
  String.append(_:)(v111);

  v112 = v152;
  static os_log_type_t.default.getter();
  sub_100143F70();

  Logger.logObject.getter();
  sub_10021A0B0();

  if (sub_10009F1F4())
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    v142 = v112;
    sub_1002197A4();
    v113 = swift_slowAlloc();
    v143 = v24;
    v151[0] = v113;
    *v86 = 136446466;
    sub_10009F0F8();
    *&v152 = v114;
    *(&v152 + 1) = v115;
    v116._countAndFlagsBits = sub_100219CF0();
    String.append(_:)(v116);
    v117._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v117);
    sub_100080210(v152, *(&v152 + 1), v151);
    v85 = &type metadata for Any;
    sub_100123F48();

    *(v86 + 4) = &type metadata for Any;
    sub_100107150();
    v118 = sub_100080210(v142, *(&v112 + 1), v151);

    *(v86 + 14) = v118;
    sub_10019DBA8();
    sub_10021A01C();
    _os_log_impl(v119, v120, v121, v122, v123, v124);
    swift_arrayDestroy();
    v24 = v143;
    sub_1000B7D68();

    sub_10015CFF0();
  }

  else
  {
  }

  sub_10021AAB8();
  type metadata accessor for TaskPriority();
  v125 = v147;
  sub_1000B0690();
  sub_100081DFC(v126, v127, v128, v129);
  v130 = sub_10021AAFC(&a17);
  v131 = v146;
  sub_100219094(v130, v146);
  v132 = (*(v144 + 80) + 99) & ~*(v144 + 80);
  v133 = (v145 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
  v134 = swift_allocObject();
  v134[2] = 0;
  v134[3] = 0;
  memcpy(v134 + 4, v154, 0x43uLL);
  sub_100219E90();
  sub_100218508(v131, v134 + v132);
  v135 = (v134 + v133);
  *v135 = v26;
  v135[1] = v24;
  sub_1001CA388(v154, &v152);

  v136 = sub_1001C5454();
  sub_1000B5BC0(v136, v137, v125, v138, v134);

  sub_1001CA3C0(v154);

  sub_10013B1E8(v125, &unk_1003CE2B0);
  sub_100219E78();
LABEL_11:
  sub_1002190EC();
  sub_100093CB8();
}

uint64_t sub_1002029A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[5] = a5;
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_100202A38;

  return sub_1001C5CD4();
}

uint64_t sub_100202A38()
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
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100202B40()
{
  sub_100098BB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 80);
  v4 = sub_1000D3ED4();
  v2(v4, 0);

  sub_100098AC4();

  return v5();
}

void sub_100202E0C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v5 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v5 - 8);
  v51 = &v49 - v6;
  v7 = type metadata accessor for PurchaseIntentRequest.Add(0);
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  v9 = __chkstk_darwin(v7);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v49 - v11;
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  v55 = swift_allocObject();
  v56 = a4;
  *(v55 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for SKLogger();
  v16 = sub_10007EDA4(v15, qword_1003F26C8);
  v17 = static os_log_type_t.default.getter();
  v54 = v16;
  v18 = Logger.logObject.getter();
  if (os_log_type_enabled(v18, v17))
  {
    v49 = "Performing lookup for URL ";
    v19 = swift_slowAlloc();
    v50 = v14;
    v20 = v19;
    v58 = swift_slowAlloc();
    *v20 = 136446466;
    *(v20 + 4) = sub_100080210(0, 0xE000000000000000, &v58);
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_100080210(0xD00000000000001ELL, v49 | 0x8000000000000000, &v58);
    _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();

    v14 = v50;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1002185B8(&unk_1003D21C0, type metadata accessor for PurchaseIntentRequest.Add);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100218508(v12, v14);
  v21 = [objc_opt_self() currentConnection];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  if (([v21 sk_allowClientOverride] & 1) == 0)
  {

LABEL_10:
    v37 = &v14[*(v7 + 24)];
    v38 = *v37;
    v39 = v37[1];
    v40 = static os_log_type_t.error.getter();

    v41 = Logger.logObject.getter();

    if (os_log_type_enabled(v41, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 136446466;
      v57 = v43;
      v58 = 91;
      v59 = 0xE100000000000000;
      v44._countAndFlagsBits = v38;
      v44._object = v39;
      String.append(_:)(v44);
      v45._countAndFlagsBits = 8285;
      v45._object = 0xE200000000000000;
      String.append(_:)(v45);
      v46 = sub_100080210(v58, v59, &v57);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_100080210(0xD00000000000002ELL, 0x800000010031E980, &v57);
      _os_log_impl(&_mh_execute_header, v41, v40, "%{public}s%{public}s", v42, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v47 = 3;
    v48 = _convertErrorToNSError(_:)();
    v36 = v56;
    (v56)[2](v56, v48);

    sub_1002190EC();
    goto LABEL_13;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v58 = 0xD000000000000016;
  v59 = 0x800000010031E9B0;
  String.append(_:)(*&v14[*(v7 + 24)]);
  v23 = v58;
  v24 = v59;
  v25 = [objc_opt_self() globalStore];
  if (v25)
  {
    v26 = v25;
    sub_1000C6F80(v23, v24, v25);

    v27 = type metadata accessor for TaskPriority();
    v28 = v51;
    sub_100081DFC(v51, 1, 1, v27);
    v29 = v53;
    sub_100219094(v14, v53);
    v30 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    sub_100218508(v29, v32 + v30);
    v33 = (v32 + v31);
    v34 = v55;
    *v33 = sub_100219348;
    v33[1] = v34;
    v35 = (v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v23;
    v35[1] = v24;

    sub_1000B5BC0(0, 0, v28, &unk_1002FADF8, v32);

    sub_10013B1E8(v28, &unk_1003CE2B0);
    sub_1002190EC();
    v36 = v56;
LABEL_13:

    _Block_release(v36);
    return;
  }

  _Block_release(v56);
  __break(1u);
}

void StoreKitServiceConnection.addPurchaseIntent(with:reply:)()
{
  sub_100093D08();
  v69 = v1;
  v70 = v2;
  v3 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  sub_1000891AC();
  v67 = v5;
  v6 = sub_1001B53DC();
  v7 = type metadata accessor for PurchaseIntentRequest.Add(v6);
  sub_1000890DC();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v12);
  v66 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  sub_10021A63C();
  __chkstk_darwin(v14);
  sub_1001B5378();
  v68 = v15;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v16 = type metadata accessor for SKLogger();
  sub_10007EDA4(v16, qword_1003F26C8);
  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  v19 = &off_1002EA000;
  if (os_log_type_enabled(v18, v17))
  {
    v63 = "Performing lookup for URL ";
    sub_1000B7DC8();
    v20 = swift_slowAlloc();
    v65 = v9;
    v21 = v20;
    sub_1000B7DBC();
    v22 = swift_slowAlloc();
    v64 = v11;
    sub_10021A468(v22);
    *v21 = 136446466;
    v23 = sub_100219AD0();
    sub_100219B70(v23);
    sub_100219D58();
    *(v21 + 14) = sub_100080210(v24 + 8, v63 | 0x8000000000000000, &v72);
    sub_10021A1F8(&_mh_execute_header, v25, v17, "%{public}s%{public}s");
    sub_1000B0010();
    v11 = v64;
    sub_1000B7D68();

    v9 = v65;
    sub_1000B7D68();
  }

  type metadata accessor for PropertyListDecoder();
  sub_10021A330();
  PropertyListDecoder.init()();
  sub_1002185B8(&unk_1003D21C0, type metadata accessor for PurchaseIntentRequest.Add);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100219E60();
  v26 = v0;
  v27 = v68;
  sub_100218508(v26, v68);
  v28 = [objc_opt_self() currentConnection];
  if (!v28)
  {
    goto LABEL_10;
  }

  v19 = v28;
  if (![v28 sk_allowClientOverride])
  {

LABEL_10:
    v53 = *(v27 + *(v7 + 24));
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v54 = swift_slowAlloc();
      sub_1000B7DBC();
      v55 = swift_slowAlloc();
      *v54 = 136446466;
      sub_100219444(v55);
      v56._countAndFlagsBits = sub_10021A414();
      String.append(_:)(v56);
      v57._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v57);
      sub_100219AA4();
      sub_100123F48();

      *(v54 + 4) = v53;
      sub_100219704();
      *(v54 + 14) = sub_100080210(v58 + 24, 0x800000010031E980, &v71);
      sub_100219784(&_mh_execute_header, v59, v60, "%{public}s%{public}s");
      sub_100106E34();
      sub_100219550();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v61 = swift_allocError();
    sub_100219B0C(v61, v62);
    v69();

    goto LABEL_13;
  }

  sub_100219774();
  _StringGuts.grow(_:)(24);

  sub_1000C446C();
  sub_10021A474();
  v72 = v30;
  v73 = v29;
  String.append(_:)(*(v27 + *(v7 + 24)));
  v32 = v72;
  v31 = v73;
  v33 = [objc_opt_self() globalStore];
  if (v33)
  {
    v34 = v33;
    v35 = sub_10021ABC8();
    sub_1000C6F80(v35, v36, v34);

    type metadata accessor for TaskPriority();
    v37 = v67;
    sub_1000B0690();
    sub_100081DFC(v38, v39, v40, v41);
    v42 = v66;
    sub_100219094(v27, v66);
    v43 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v44 = (v11 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    sub_100219E60();
    sub_100218508(v42, v46 + v43);
    v47 = (v45 + v44);
    v48 = v70;
    *v47 = v69;
    v47[1] = v48;
    v49 = (v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v49 = v32;
    v49[1] = v31;

    v50 = sub_1001C5454();
    sub_1000B5BC0(v50, v51, v37, v52, v45);

    sub_10013B1E8(v37, &unk_1003CE2B0);
LABEL_13:
    sub_1002190EC();
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_100203E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return _swift_task_switch(sub_100203E64, 0, 0);
}

uint64_t sub_100203E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v25;
  a24 = v26;
  sub_1000B0108();
  a22 = v24;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v27 = v24[10];
  v28 = type metadata accessor for SKLogger();
  v24[15] = sub_10021AEC0(v28, qword_1003F26C8);
  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v29 = a13;
  v24[8] = a12;
  v24[9] = v29;
  sub_1000B00A8();
  v30._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v30);
  v31 = type metadata accessor for PurchaseIntentRequest.Add(0);
  v24[16] = v31;
  _print_unlocked<A, B>(_:_:)();
  v33 = v24[8];
  v32 = v24[9];
  v34 = (v27 + *(v31 + 24));
  v24[17] = *v34;
  v24[18] = v34[1];
  v35 = static os_log_type_t.default.getter();

  v36 = Logger.logObject.getter();

  if (os_log_type_enabled(v36, v35))
  {
    sub_1000B7DC8();
    v37 = swift_slowAlloc();
    sub_1000B7DBC();
    a11 = swift_slowAlloc();
    *v37 = 136446466;
    sub_10009F0F8();
    a12 = v38;
    a13 = v39;
    v40._countAndFlagsBits = sub_1000C43E8();
    String.append(_:)(v40);
    v41._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v41);
    v42 = a13;
    v43 = sub_100080210(a12, a13, &a11);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2082;
    sub_100080210(v33, v32, &a11);
    sub_10021A2E8();

    *(v37 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v36, v35, "%{public}s%{public}s", v37, 0x16u);
    sub_10021A594();
    swift_arrayDestroy();
    sub_1001B5198();

    sub_1000B7D68();
  }

  else
  {
  }

  v44 = swift_task_alloc();
  v24[19] = v44;
  *v44 = v24;
  v44[1] = sub_100204110;
  sub_1000B06F4(v24[10]);
  sub_10008BE10();

  return sub_10013CECC();
}

uint64_t sub_100204110()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10020443C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  swift_setDeallocating();
  sub_10009E3C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_100204540()
{
  sub_10008BE9C();
  (*(v0 + 88))(0);
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v2 = result;
    sub_1002141CC(*(v0 + 104), *(v0 + 112), result);

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002045F4(void *a1, uint64_t a2, uint64_t a3, void (**a4)(const void *, void *))
{
  v75 = a1;
  v5 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v5 - 8);
  v69 = &v67 - v6;
  v7 = sub_100080FB4(&unk_1003D20F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for PurchaseIntentRequest.Remove(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v74 = &v67 - v18;
  __chkstk_darwin(v17);
  v71 = &v67 - v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  v76 = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for SKLogger();
  v22 = sub_10007EDA4(v21, qword_1003F26C8);
  v23 = static os_log_type_t.default.getter();
  v72 = v22;
  v24 = Logger.logObject.getter();
  v25 = os_log_type_enabled(v24, v23);
  v70 = v12;
  v73 = v20;
  if (v25)
  {
    v67 = "PurchaseIntentService_";
    v26 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_100080210(0, 0xE000000000000000, &v78);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_100080210(0xD000000000000021, v67 | 0x8000000000000000, &v78);
    _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v26, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1002185B8(&qword_1003CF9F8, type metadata accessor for PurchaseIntentRequest.Remove);
  v27 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v28 = v71;
  sub_100218508(v27, v71);
  v29 = [objc_opt_self() currentConnection];
  if (!v29)
  {
    v33 = (v28 + *(v13 + 24));
    v34 = *v33;
    v35 = v33[1];
    v36 = static os_log_type_t.error.getter();

    v37 = Logger.logObject.getter();

    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136446466;
      v77 = v39;
      v78 = 91;
      v79 = 0xE100000000000000;
      v40._countAndFlagsBits = v34;
      v40._object = v35;
      String.append(_:)(v40);
      v41._countAndFlagsBits = 8285;
      v41._object = 0xE200000000000000;
      String.append(_:)(v41);
      v42 = sub_100080210(v78, v79, &v77);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_100080210(0xD00000000000003ELL, 0x800000010031EA30, &v77);
      _os_log_impl(&_mh_execute_header, v37, v36, "%{public}s%{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }

    v43 = v76;
    sub_10008B5E0();
    swift_allocError();
    *v44 = 1;
    v45 = _convertErrorToNSError(_:)();
    v43[2](v43, v45);

    sub_1002190EC();
    goto LABEL_14;
  }

  v30 = v29;
  v31 = [v29 sk_allowClientOverride];
  if (v31)
  {
    v32 = v70;
    sub_100105C8C(v28, v70, &unk_1003D20F0);
  }

  else
  {
    v46 = type metadata accessor for ClientOverride(0);
    v32 = v70;
    sub_100081DFC(v70, 1, 1, v46);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v32, v10, &unk_1003D20F0);
  v47 = v30;
  sub_1001ABF2C();
  v74 = v48;
  v75 = v47;
  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v78 = 0xD000000000000016;
  v79 = 0x800000010031E9B0;
  String.append(_:)(*(v28 + *(v13 + 24)));
  v50 = v78;
  v49 = v79;
  v51 = [objc_opt_self() globalStore];
  if (v51)
  {
    v52 = v51;
    sub_1000C6F80(v50, v49, v51);

    v53 = type metadata accessor for TaskPriority();
    v72 = v49;
    v54 = v69;
    sub_100081DFC(v69, 1, 1, v53);
    v55 = v68;
    sub_100219094(v28, v68);
    v56 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v57 = v56 + v15;
    v58 = (v56 + v15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 31) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    sub_100218508(v55, v60 + v56);
    *(v60 + v57) = v31;
    v61 = v60 + v58;
    v63 = v73;
    v62 = v74;
    *(v61 + 8) = sub_100219348;
    *(v61 + 16) = v63;
    *(v60 + v59) = v62;
    v64 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
    v65 = v72;
    *v64 = v50;
    v64[1] = v65;

    v66 = v62;
    sub_1000B5BC0(0, 0, v54, &unk_1002FADF0, v60);

    sub_10013B1E8(v54, &unk_1003CE2B0);
    sub_10013B1E8(v70, &unk_1003D20F0);
    sub_1002190EC();
    v43 = v76;
LABEL_14:

    _Block_release(v43);
    return;
  }

  _Block_release(v76);
  __break(1u);
}

void StoreKitServiceConnection.clearPurchaseIntents(with:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v4 = v3;
  v90 = v5;
  v91 = v6;
  v7 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  sub_1000891AC();
  v86 = v9;
  v10 = sub_100080FB4(&unk_1003D20F0);
  v11 = sub_1000B01B0(v10);
  __chkstk_darwin(v11);
  sub_10018ECCC();
  v87 = v12;
  sub_10018ED10();
  __chkstk_darwin(v13);
  v15 = &v81[-v14];
  v92 = type metadata accessor for PurchaseIntentRequest.Remove(0);
  sub_1000890DC();
  v84 = v16;
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v19);
  v85 = &v81[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  sub_10021A0BC();
  __chkstk_darwin(v21);
  v23 = &v81[-v22];
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v24 = type metadata accessor for SKLogger();
  sub_100107C34(v24, qword_1003F26C8);
  static os_log_type_t.default.getter();
  v89 = v0;
  v25 = Logger.logObject.getter();
  if (sub_10021AE90(v25))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    v88 = v23;
    sub_1002195DC();
    v94 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_100219AD0();
    sub_10013BC98();
    sub_100219D58();
    *(v4 + 14) = sub_100080210(v26 + 11, 0x800000010031E9D0, &v94);
    sub_10021A250();
    sub_100219A98();
    _os_log_impl(v27, v28, v29, v30, v31, v32);
    swift_arrayDestroy();
    sub_1000B7D68();

    v23 = v88;
    sub_1000B7D68();
  }

  type metadata accessor for PropertyListDecoder();
  sub_10021A330();
  PropertyListDecoder.init()();
  sub_1002185B8(&qword_1003CF9F8, type metadata accessor for PurchaseIntentRequest.Remove);
  v33 = v92;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100219E0C();
  v34 = sub_10021AB44();
  sub_100218508(v34, v35);
  v36 = [objc_opt_self() currentConnection];
  v88 = v23;
  if (!v36)
  {
    v39 = *&v23[*(v33 + 24)];
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      v4 = "learPurchaseIntentRequest ";
      sub_1000B7DC8();
      v40 = swift_slowAlloc();
      sub_1000B7DBC();
      v41 = swift_slowAlloc();
      *v40 = 136446466;
      sub_100219444(v41);
      v42._countAndFlagsBits = sub_100219CF0();
      String.append(_:)(v42);
      v43._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v43);
      sub_100219AA4();
      sub_100107144();

      *(v40 + 4) = v39;
      sub_100219704();
      sub_10021A244();
      *(v40 + 14) = sub_100080210(v44, v45, &v93);
      sub_100219784(&_mh_execute_header, v46, v47, "%{public}s%{public}s");
      sub_100219CAC();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v48 = swift_allocError();
    sub_1002195EC(v48, v49);
    (v4)();

    goto LABEL_14;
  }

  v37 = v36;
  v38 = [v36 sk_allowClientOverride];
  if (v38)
  {
    sub_100105C8C(v23, v15, &unk_1003D20F0);
  }

  else
  {
    type metadata accessor for ClientOverride(0);
    sub_1000B0690();
    sub_100081DFC(v50, v51, v52, v53);
  }

  type metadata accessor for Client(0);
  v91 = v15;
  sub_100105C8C(v15, v87, &unk_1003D20F0);
  v90 = v37;
  sub_1001ABF2C();
  v82 = v38;
  v83 = v54;
  v87 = v4;
  v89 = v2;
  sub_100219774();
  _StringGuts.grow(_:)(24);

  sub_1000C446C();
  sub_10021A474();
  v94 = v56;
  v95 = v55;
  String.append(_:)(*&v23[*(v92 + 24)]);
  v57 = v94;
  v58 = v95;
  if ([objc_opt_self() globalStore])
  {
    v59 = sub_10001E104();
    sub_1000C6F80(v59, v58, 0);

    type metadata accessor for TaskPriority();
    v60 = v86;
    sub_1000B0690();
    sub_100081DFC(v61, v62, v63, v64);
    v65 = v23;
    v66 = v85;
    sub_100219094(v65, v85);
    v67 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v68 = v67 + v18;
    v69 = (v67 + v18) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v69 + 31) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    sub_100219E0C();
    sub_100218508(v66, v72 + v67);
    *(v71 + v68) = v82;
    v73 = v71 + v69;
    v74 = v89;
    *(v73 + 8) = v87;
    *(v73 + 16) = v74;
    v75 = v83;
    *(v71 + v70) = v83;
    v76 = (v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v76 = v57;
    v76[1] = v58;

    v77 = v75;
    v78 = sub_1001C5454();
    sub_1000B5BC0(v78, v79, v60, v80, v71);

    sub_10013B1E8(v60, &unk_1003CE2B0);
    sub_10013B1E8(v91, &unk_1003D20F0);
LABEL_14:
    sub_1002190EC();
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_100205B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 96) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  *(v8 + 64) = type metadata accessor for SKLogger();
  *(v8 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100205C34, 0, 0);
}

uint64_t sub_100206224()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_100206308()
{
  sub_10008BE9C();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  result = [objc_opt_self() globalStore];
  if (result)
  {
    sub_10021A9E0(result);

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002063A0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10020649C(void *a1, const void *a2, uint64_t a3, const void *a4)
{
  v84 = a1;
  v85 = a2;
  v5 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = sub_100080FB4(&unk_1003D20F0);
  v9 = __chkstk_darwin(v8 - 8);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v77 - v11;
  v86 = type metadata accessor for PurchaseIntentRequest.Query(0);
  v78 = *(v86 - 8);
  v13 = __chkstk_darwin(v86);
  v80 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v77 - v16;
  v79 = v18;
  __chkstk_darwin(v15);
  v20 = &v77 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SKLogger();
  v23 = sub_10007EDA4(v22, qword_1003F26C8);
  v24 = static os_log_type_t.default.getter();
  v82 = v23;
  v25 = Logger.logObject.getter();
  v26 = os_log_type_enabled(v25, v24);
  v83 = v21;
  if (v26)
  {
    v27 = v20;
    v28 = a4;
    v29 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v29 = 136446466;
    *(v29 + 4) = sub_100080210(0, 0xE000000000000000, &v88);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_100080210(0xD00000000000001CLL, 0x800000010031EAB0, &v88);
    _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v29, 0x16u);
    swift_arrayDestroy();

    a4 = v28;
    v20 = v27;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1002185B8(&unk_1003D21D0, type metadata accessor for PurchaseIntentRequest.Query);
  v30 = v86;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100218508(v17, v20);
  v31 = [objc_opt_self() currentConnection];
  if (!v31)
  {
    v35 = v30[7];
    v86 = v20;
    v36 = &v20[v35];
    v37 = *v36;
    v38 = v36[1];
    v39 = static os_log_type_t.error.getter();

    v40 = Logger.logObject.getter();

    if (os_log_type_enabled(v40, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 136446466;
      v87 = v42;
      v88 = 91;
      v89 = 0xE100000000000000;
      v43._countAndFlagsBits = v37;
      v43._object = v38;
      String.append(_:)(v43);
      v44._countAndFlagsBits = 8285;
      v44._object = 0xE200000000000000;
      String.append(_:)(v44);
      v45 = sub_100080210(v88, v89, &v87);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_100080210(0xD00000000000003CLL, 0x800000010031EB00, &v87);
      _os_log_impl(&_mh_execute_header, v40, v39, "%{public}s%{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v46 = 1;
    v47 = _convertErrorToNSError(_:)();
    (*(a4 + 2))(a4, 0, v47);

    goto LABEL_19;
  }

  v32 = v31;
  v33 = v20[v30[6]];
  v34 = [v31 sk_allowClientOverride];
  if ((v33 & 1) == 0)
  {
    if (v34)
    {
      v82 = 0;
      v48 = 0;
      goto LABEL_20;
    }

    v84 = v32;
    v50 = v30[7];
    v86 = v20;
    v51 = &v20[v50];
    v52 = *v51;
    v53 = v51[1];
    v54 = static os_log_type_t.error.getter();

    v55 = Logger.logObject.getter();

    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 136446466;
      v87 = v57;
      v88 = 91;
      v89 = 0xE100000000000000;
      v58._countAndFlagsBits = v52;
      v58._object = v53;
      String.append(_:)(v58);
      v59._countAndFlagsBits = 8285;
      v59._object = 0xE200000000000000;
      String.append(_:)(v59);
      v60 = sub_100080210(v88, v89, &v87);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2082;
      *(v56 + 14) = sub_100080210(0xD000000000000036, 0x800000010031EB80, &v87);
      _os_log_impl(&_mh_execute_header, v55, v54, "%{public}s%{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v61 = 3;
    v62 = _convertErrorToNSError(_:)();
    (*(a4 + 2))(a4, 0, v62);

LABEL_19:
    sub_1002190EC();
LABEL_22:

    _Block_release(a4);
    return;
  }

  if (v34)
  {
    sub_100105C8C(&v20[v30[5]], v12, &unk_1003D20F0);
  }

  else
  {
    v49 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v12, 1, 1, v49);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v12, v81, &unk_1003D20F0);
  v84 = v32;
  sub_1001ABF2C();
  v64 = v63;
  sub_10013B1E8(v12, &unk_1003D20F0);
  v48 = *&v64[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
  v82 = *&v64[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];

LABEL_20:
  v84 = v32;
  v85 = a4;
  v88 = 0;
  v89 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v88 = 0xD000000000000016;
  v89 = 0x800000010031E9B0;
  String.append(_:)(*&v20[v30[7]]);
  v65 = v88;
  v66 = v89;
  v67 = [objc_opt_self() globalStore];
  if (v67)
  {
    v68 = v67;
    sub_1000C6F80(v65, v66, v67);

    v69 = type metadata accessor for TaskPriority();
    sub_100081DFC(v7, 1, 1, v69);
    v70 = v80;
    sub_100219094(v20, v80);
    v71 = (*(v78 + 80) + 48) & ~*(v78 + 80);
    v72 = (v79 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v73[4] = v82;
    v73[5] = v48;
    sub_100218508(v70, v73 + v71);
    v74 = (v73 + v72);
    v75 = v83;
    *v74 = sub_1002192F8;
    v74[1] = v75;
    v76 = (v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v76 = v65;
    v76[1] = v66;

    sub_1000B5BC0(0, 0, v7, &unk_1002FADE8, v73);

    sub_10013B1E8(v7, &unk_1003CE2B0);
    sub_1002190EC();
    a4 = v85;
    goto LABEL_22;
  }

  _Block_release(v85);
  __break(1u);
}

void StoreKitServiceConnection.purchaseIntents(with:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v103 = v3;
  v4 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v99 = v6;
  v7 = sub_100080FB4(&unk_1003D20F0);
  v8 = sub_1000B01B0(v7);
  __chkstk_darwin(v8);
  sub_10018ECCC();
  v100 = v9;
  sub_10018ED10();
  __chkstk_darwin(v10);
  sub_1001B5378();
  v101 = v11;
  v12 = sub_1001B53DC();
  v13 = type metadata accessor for PurchaseIntentRequest.Query(v12);
  sub_1000890DC();
  v97 = v14;
  v16 = __chkstk_darwin(v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  sub_1001B5378();
  v104 = v19;
  v98 = v20;
  __chkstk_darwin(v21);
  v23 = &v95 - v22;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v24 = type metadata accessor for SKLogger();
  sub_10021A560(v24, qword_1003F26C8);
  static os_log_type_t.default.getter();
  v25 = Logger.logObject.getter();
  if (sub_10021AE90(v25))
  {
    v95 = "ring purchase intents";
    sub_1000B7DC8();
    swift_slowAlloc();
    v96 = v13;
    v102 = v2;
    sub_1002195DC();
    v106 = swift_slowAlloc();
    *v2 = 136446466;
    *(v2 + 4) = sub_100219AD0();
    sub_10013BC98();
    sub_100219D58();
    *(v2 + 14) = sub_100080210(v26 + 6, v95 | 0x8000000000000000, &v106);
    sub_10021A250();
    sub_100219A98();
    _os_log_impl(v27, v28, v29, v30, v31, v32);
    sub_10021A06C();
    swift_arrayDestroy();
    sub_1000B7D68();

    v2 = v102;
    v13 = v96;
    sub_1000B7D68();
  }

  type metadata accessor for PropertyListDecoder();
  sub_10021A330();
  PropertyListDecoder.init()();
  sub_1002185B8(&unk_1003D21D0, type metadata accessor for PurchaseIntentRequest.Query);
  v33 = v104;
  sub_1000D4078();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v96 = v0;
  sub_100219DE8();
  sub_100218508(v33, v23);
  v34 = [objc_opt_self() currentConnection];
  if (!v34)
  {
    v39 = *&v23[v13[7]];
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v40 = swift_slowAlloc();
      v100 = v23;
      v41 = v40;
      sub_1000B7DBC();
      v42 = swift_slowAlloc();
      *v41 = 136446466;
      sub_100219444(v42);
      v43._countAndFlagsBits = sub_100219CF0();
      String.append(_:)(v43);
      v44._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v44);
      sub_100219AA4();
      sub_100107144();

      *(v41 + 4) = v39;
      sub_100219704();
      sub_10021A244();
      *(v41 + 14) = sub_100080210(v45, v46, &v105);
      sub_100219784(&_mh_execute_header, v47, v48, "%{public}s%{public}s");
      sub_10021A388();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v49 = swift_allocError();
    sub_1002195EC(v49, v50);
    v51 = sub_1002198D4();
    v103(v51);

    goto LABEL_19;
  }

  v35 = v34;
  v36 = v23[v13[6]];
  v37 = [v34 sk_allowClientOverride];
  if ((v36 & 1) == 0)
  {
    v104 = v35;
    if (v37)
    {
      v101 = 0;
      v52 = 0;
      goto LABEL_20;
    }

    v57 = *&v23[v13[7]];
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v58 = swift_slowAlloc();
      v100 = v23;
      v59 = v58;
      sub_1000B7DBC();
      v60 = swift_slowAlloc();
      *v59 = 136446466;
      sub_100219444(v60);
      v61._countAndFlagsBits = sub_100219CF0();
      String.append(_:)(v61);
      v62._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v62);
      sub_100219AA4();
      sub_100107144();

      *(v59 + 4) = v57;
      sub_100219704();
      sub_10021A244();
      *(v59 + 14) = sub_100080210(v63, v64, &v105);
      sub_100219784(&_mh_execute_header, v65, v66, "%{public}s%{public}s");
      sub_10021A388();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    swift_allocError();
    v68 = sub_10021961C(v67, 3);
    v103(v68);

LABEL_19:
    sub_100219DD0();
LABEL_22:
    sub_1002190EC();
    sub_100093CB8();
    return;
  }

  if (v37)
  {
    v38 = v101;
    sub_100105C8C(&v23[v13[5]], v101, &unk_1003D20F0);
  }

  else
  {
    type metadata accessor for ClientOverride(0);
    v38 = v101;
    sub_1000B0690();
    sub_100081DFC(v53, v54, v55, v56);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v38, v100, &unk_1003D20F0);
  v95 = v35;
  sub_1001ABF2C();
  v70 = v69;
  v104 = v35;
  sub_10013B1E8(v38, &unk_1003D20F0);
  v52 = *&v70[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
  v101 = *&v70[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];

LABEL_20:
  v102 = v2;
  sub_100219774();
  _StringGuts.grow(_:)(24);

  sub_1000C446C();
  sub_10021A474();
  v106 = v72;
  v107 = v71;
  String.append(_:)(*&v23[v13[7]]);
  v73 = v106;
  v74 = v107;
  v75 = [objc_opt_self() globalStore];
  if (v75)
  {
    v76 = v23;
    v77 = v75;
    v78 = sub_1001073F0();
    sub_1000C6F80(v78, v79, v77);

    type metadata accessor for TaskPriority();
    v80 = v99;
    sub_1000B0690();
    sub_100081DFC(v81, v82, v83, v84);
    sub_100219094(v76, v18);
    v85 = (*(v97 + 80) + 48) & ~*(v97 + 80);
    v86 = (v98 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    v87[2] = 0;
    v87[3] = 0;
    v87[4] = v101;
    v87[5] = v52;
    sub_100219DE8();
    sub_100218508(v18, v88 + v85);
    v89 = (v87 + v86);
    v90 = v102;
    *v89 = v103;
    v89[1] = v90;
    v91 = (v87 + ((v86 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v91 = v73;
    v91[1] = v74;

    v92 = sub_1001C5454();
    sub_1000B5BC0(v92, v93, v80, v94, v87);

    sub_10013B1E8(v80, &unk_1003CE2B0);
    sub_100219DD0();
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_100207DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v13;
  v8[15] = v14;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = type metadata accessor for Date();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for SKLogger();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_100207ECC, 0, 0);
}

uint64_t sub_100207ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v25;
  a24 = v26;
  sub_1000B0108();
  a22 = v24;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v27 = v24[21];
  v28 = v24[10];
  v29 = v24[11];
  v30 = v24[9];
  v24[22] = sub_10007EDA4(v24[20], qword_1003F26C8);
  sub_100219414();
  sub_100219094(v31, v27);
  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  a12 = 0x676E697972657551;
  a13 = 0xE900000000000020;
  if (v28)
  {
    v32 = v30;
  }

  else
  {
    v32 = 7105633;
  }

  if (!v28)
  {
    v28 = 0xE300000000000000;
  }

  v33 = v28;
  String.append(_:)(*&v32);

  sub_1000B00A8();
  v34._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v34);
  v36 = a12;
  v35 = a13;
  v37 = (v29 + *(type metadata accessor for PurchaseIntentRequest.Query(0) + 28));
  v38 = *v37;
  v24[23] = *v37;
  v39 = v37[1];
  v24[24] = v39;
  v40 = static os_log_type_t.default.getter();
  v41 = Logger.logObject.getter();
  if (os_log_type_enabled(v41, v40))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002197A4();
    swift_slowAlloc();
    *v36 = 136446466;
    sub_10009F0F8();
    a11 = v42;
    a12 = v43;
    a13 = v44;
    v45._countAndFlagsBits = v38;
    v45._object = v39;
    String.append(_:)(v45);
    v46._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v46);
    v47 = a13;
    sub_100080210(a12, a13, &a11);
    sub_1000B0494();
    *(v36 + 4) = v38;
    sub_100107150();
    sub_100080210(v36, v35, &a11);
    sub_10021A118();

    *(v36 + 14) = v47;
    sub_1002199CC();
    _os_log_impl(v48, v49, v50, v51, v52, v53);
    sub_100219884();
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_10015CFF0();
  }

  else
  {
  }

  sub_1002190EC();
  sub_1001077A8();
  v54 = swift_allocObject();
  v24[25] = v54;
  *(v54 + 16) = _swiftEmptyArrayStorage;
  v55 = qword_1003CBD98;

  if (v55 != -1)
  {
    swift_once();
  }

  v24[26] = qword_1003CEF28;
  sub_10008BE10();

  return _swift_task_switch(v56, v57, v58);
}

uint64_t sub_100208194()
{
  sub_10008BE9C();
  *(v0 + 216) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1002081F4()
{
  sub_10008C07C();
  sub_1000B0108();
  v20 = v0[24];
  v18 = v0[25];
  v19 = v0[23];
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[10];
  v17 = v0[9];
  v4 = sub_10021A5A0();
  v5(v4);
  v6 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[28] = v8;
  sub_10021A2F4();
  v9();
  v10 = (v8 + v6);
  *v10 = v17;
  v10[1] = v3;
  *(v8 + v7) = v18;
  v11 = (v8 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v19;
  v11[1] = v20;

  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_100208368;
  sub_10008BE10();

  return sub_1001D5D00(v13, v14);
}

uint64_t sub_100208368()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_100208468()
{
  v1 = *(v0 + 200);

  sub_1002199B4();
  swift_beginAccess();
  v2 = *(v1 + 16);

  type metadata accessor for PropertyListEncoder();
  sub_10021A330();
  PropertyListEncoder.init()();
  *(v0 + 56) = v2;
  sub_100080FB4(&qword_1003D2788);
  sub_100217570();
  sub_1001B5400();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v4 = *(v0 + 96);
  sub_1000BC808(v3, v5);
  v6 = sub_10021A414();
  v4(v6);
  v7 = sub_10021A414();
  sub_10008E168(v7, v8);
  v9 = sub_10021A414();
  sub_10008E168(v9, v10);

  result = [objc_opt_self() globalStore];
  if (result)
  {
    v12 = result;

    v13 = sub_10017CB1C();
    sub_1002141CC(v13, v14, v12);

    sub_100098AC4();
    sub_10009F1B8();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
  return result;
}

void sub_100208810(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SKLogger();
  sub_10007EDA4(v11, qword_1003F26C8);
  v12 = static os_log_type_t.default.getter();
  v13 = Logger.logObject.getter();
  v14 = &off_1002EA000;
  if (os_log_type_enabled(v13, v12))
  {
    v25 = a4;
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_100080210(0, 0xE000000000000000, &v26);
    *(v15 + 12) = 2082;
    a4 = v25;
    *(v15 + 14) = sub_100080210(0xD000000000000024, 0x800000010031EBC0, &v26);
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    v14 = &off_1002EA000;
  }

  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {
    v17 = v16;
    if ([v16 sk_allowClientOverride])
    {
      v18 = type metadata accessor for TaskPriority();
      sub_100081DFC(v9, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = a1;
      v19[5] = a2;
      v19[6] = sub_100219348;
      v19[7] = v10;

      sub_1000B5BC0(0, 0, v9, &unk_1002FADE0, v19);

      sub_10013B1E8(v9, &unk_1003CE2B0);

      _Block_release(a4);
      return;
    }
  }

  v20 = static os_log_type_t.error.getter();
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v22 = *(v14 + 175);
    *(v22 + 4) = sub_100080210(0, 0xE000000000000000, &v26);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_100080210(0xD000000000000039, 0x800000010031EBF0, &v26);
    _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v23 = 3;
  v24 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v24);

  _Block_release(a4);
}

void StoreKitServiceConnection.setAppInstallSheetBundleID(_:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v13 = type metadata accessor for SKLogger();
  sub_100107C34(v13, qword_1003F26C8);
  v14 = static os_log_type_t.default.getter();
  v15 = Logger.logObject.getter();
  v16 = &off_1002EA000;
  if (os_log_type_enabled(v15, v14))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    v45 = v4;
    sub_1002197A4();
    v17 = swift_slowAlloc();
    v46 = v17;
    *v4 = 136446466;
    *(v4 + 4) = sub_100093CF0(v17, v18, &v46);
    sub_100107150();
    *(v4 + 14) = sub_100080210(0xD000000000000024, 0x800000010031EBC0, &v46);
    sub_10021A01C();
    _os_log_impl(v19, v20, v21, v22, v23, v24);
    swift_arrayDestroy();
    v16 = &off_1002EA000;
    sub_1000B7D68();

    v4 = v45;
    sub_1000B7D68();
  }

  v25 = [objc_opt_self() currentConnection];
  if (v25)
  {
    v26 = v25;
    if ([v25 sk_allowClientOverride])
    {
      type metadata accessor for TaskPriority();
      sub_1000B0690();
      sub_100081DFC(v27, v28, v29, v30);
      sub_10021A178();
      v31 = swift_allocObject();
      v32 = sub_10021AC54(v31);
      v32[4] = v8;
      v32[5] = v6;
      v32[6] = v4;
      v32[7] = v2;

      v33 = sub_1001C5454();
      sub_1000B5BC0(v33, v34, v12, v35, v0);

      sub_10013B1E8(v12, &unk_1003CE2B0);
      sub_100093CB8();
      return;
    }
  }

  v36 = static os_log_type_t.error.getter();
  v37 = Logger.logObject.getter();
  if (os_log_type_enabled(v37, v36))
  {
    sub_1000B7DC8();
    v38 = swift_slowAlloc();
    sub_1000B7DBC();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v38 = *(v16 + 175);
    v41 = sub_100093CF0(v39, v40, &v46);
    sub_100219B70(v41);
    *(v38 + 14) = sub_100080210(0xD000000000000039, 0x800000010031EBF0, &v46);
    sub_10021A1F8(&_mh_execute_header, v42, v36, "%{public}s%{public}s");
    sub_10021A22C();
    sub_100219550();

    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  swift_allocError();
  *v43 = 3;
  (v4)();
  sub_100093CB8();
}

uint64_t sub_100209040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for SKLogger();
  v7[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002090D8, 0, 0);
}

uint64_t sub_1002090D8()
{
  sub_1000EDA60();
  v24 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v1 = v0[7];
  sub_10021A560(v0[6], qword_1003F26C8);
  sub_100219414();
  sub_100219094(v2, v1);
  _StringGuts.grow(_:)(40);

  sub_1000C446C();
  v23[0] = 0xD000000000000025;
  v23[1] = v3;

  v4._countAndFlagsBits = sub_100219CF0();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = static os_log_type_t.default.getter();
  v7 = Logger.logObject.getter();
  if (os_log_type_enabled(v7, v6))
  {
    sub_1000B7DC8();
    v8 = swift_slowAlloc();
    sub_1000B7DBC();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_100093CF0(v9, v10, v23);
    sub_1000B04AC();
    v11 = sub_1001B5488();
    v14 = sub_100080210(v11, v12, v13);

    *(v8 + 14) = v14;
    sub_1000B0648(&_mh_execute_header, v7, v6, "%{public}s%{public}s");
    sub_10021960C();
    swift_arrayDestroy();
    sub_10015CFF0();

    sub_1000B7D68();
  }

  else
  {
  }

  sub_1002190EC();
  sub_1001CA63C();
  v16 = v15;
  v18 = v17;
  v0[8] = v17;
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_100209348;
  v20 = sub_1000B06F4(v0[2]);

  return sub_100141A24(v20, v21, v16, v18);
}

uint64_t sub_100209348()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100209448()
{
  sub_10008BE9C();
  (*(v0 + 32))(0);

  sub_100098AC4();

  return v1();
}

uint64_t sub_1002094CC(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, void *, void *))
{
  v8 = _Block_copy(aBlock);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v9;
  }

  _Block_copy(v8);
  v10 = a1;
  v11 = sub_10021A0FC();
  a5(v11, a3, a1, v8);
  _Block_release(v8);
}

void sub_100209570(uint64_t a1, char *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v74 = a2;
  v5 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v5 - 8);
  v73 = &v65 - v6;
  v7 = sub_100080FB4(&unk_1003D20F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v65 - v11;
  v13 = type metadata accessor for StorefrontRequest();
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  v75 = swift_allocObject();
  *(v75 + 16) = a4;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v76 = a4;
  _Block_copy(a4);
  JSONDecoder.init()();
  sub_1002185B8(&qword_1003CEEE0, type metadata accessor for StorefrontRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v69 = v10;
  v70 = v14;
  v74 = v12;

  sub_100218508(v19, v21);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SKLogger();
  v23 = sub_10007EDA4(v22, qword_1003F26C8);
  v24 = &v21[*(v13 + 20)];
  v25 = *v24;
  v26 = v24[1];
  v27 = static os_log_type_t.default.getter();

  v68 = v23;
  v28 = Logger.logObject.getter();

  v29 = os_log_type_enabled(v28, v27);
  v71 = v21;
  v67 = v25;
  if (v29)
  {
    v66 = "p install sheet bundle ID";
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 136446466;
    v77 = v31;
    v78 = 91;
    v79 = 0xE100000000000000;
    v32._countAndFlagsBits = v25;
    v33 = v26;
    v32._object = v26;
    String.append(_:)(v32);
    v34._countAndFlagsBits = 8285;
    v34._object = 0xE200000000000000;
    String.append(_:)(v34);
    v35 = sub_100080210(v78, v79, &v77);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_100080210(0xD000000000000014, v66 | 0x8000000000000000, &v77);
    _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v26;
  }

  v37 = v73;
  v36 = v74;
  v38 = v16;
  v39 = v69;
  v40 = [objc_opt_self() currentConnection];
  v41 = v70;
  if (v40)
  {
    v42 = v40;
    if ([v40 sk_allowClientOverride])
    {
      sub_100105C8C(v71, v36, &unk_1003D20F0);
    }

    else
    {
      v52 = type metadata accessor for ClientOverride(0);
      sub_100081DFC(v36, 1, 1, v52);
    }

    type metadata accessor for Client(0);
    sub_100105C8C(v36, v39, &unk_1003D20F0);
    v53 = v42;
    sub_1001ABF2C();
    v55 = v54;
    v56 = type metadata accessor for TaskPriority();
    sub_100081DFC(v37, 1, 1, v56);
    sub_100219094(v71, v38);
    v57 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v58 = v53;
    v59 = v36;
    v60 = (v41 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    sub_100218508(v38, v61 + v57);
    *(v61 + v60) = v55;
    v62 = (v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8));
    v63 = v75;
    *v62 = sub_1002192F8;
    v62[1] = v63;
    v64 = v55;

    sub_100165CBC();

    sub_10013B1E8(v59, &unk_1003D20F0);
  }

  else
  {
    v43 = static os_log_type_t.error.getter();

    v44 = Logger.logObject.getter();

    if (os_log_type_enabled(v44, v43))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 136446466;
      v77 = v46;
      v78 = 91;
      v79 = 0xE100000000000000;
      v47._countAndFlagsBits = v67;
      v47._object = v33;
      String.append(_:)(v47);
      v48._countAndFlagsBits = 8285;
      v48._object = 0xE200000000000000;
      String.append(_:)(v48);
      v49 = sub_100080210(v78, v79, &v77);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_100080210(0xD000000000000037, 0x800000010031EC80, &v77);
      _os_log_impl(&_mh_execute_header, v44, v43, "%{public}s%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v50 = 1;
    v51 = _convertErrorToNSError(_:)();
    (v76)[2](v76, 0, v51);
  }

  sub_1002190EC();

  _Block_release(v76);
}

void StoreKitServiceConnection.storefront(_:reply:)()
{
  sub_100093D08();
  v86 = v4;
  v87 = v3;
  v85 = v5;
  v6 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v6);
  sub_100089118();
  __chkstk_darwin(v7);
  sub_100089240();
  v8 = sub_100080FB4(&unk_1003D20F0);
  v9 = sub_1000B01B0(v8);
  __chkstk_darwin(v9);
  sub_1001460C4();
  __chkstk_darwin(v10);
  sub_10021A62C();
  v11 = type metadata accessor for StorefrontRequest();
  sub_1000890DC();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  sub_10021A0BC();
  __chkstk_darwin(v18);
  sub_1001B5378();
  v88 = v19;
  sub_1001B53DC();
  type metadata accessor for JSONDecoder();
  sub_10021A330();
  v20 = JSONDecoder.init()();
  sub_1002185B8(&qword_1003CEEE0, type metadata accessor for StorefrontRequest);
  sub_1000C43E8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v81 = v15;
  v82 = v13;
  v83 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v1;
  v85 = v2;

  sub_100219DA0();
  sub_100218508(v0, v88);
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v21 = type metadata accessor for SKLogger();
  sub_100107C34(v21, qword_1003F26C8);
  v22 = (v88 + *(v11 + 20));
  v23 = *v22;
  v24 = v22[1];
  static os_log_type_t.default.getter();
  sub_10015D264();
  v79 = v20;
  v25 = Logger.logObject.getter();

  v26 = os_log_type_enabled(v25, v0);
  v78 = v23;
  v80 = v24;
  if (v26)
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195CC();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    sub_100219444(v27);
    v28._countAndFlagsBits = v23;
    v28._object = v24;
    String.append(_:)(v28);
    v29._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v29);
    sub_100219AA4();
    sub_100219D4C();

    sub_1000AFD94();
    v30 = sub_10021AAC4();
    *(v13 + 14) = sub_100080210(v30, v31, v32);
    sub_100219A8C();
    _os_log_impl(v33, v34, v35, v36, v37, v38);
    sub_1000B0010();
    sub_1000B7D68();

    sub_100219550();
  }

  v39 = v83;
  v41 = v81;
  v40 = v82;
  v42 = [objc_opt_self() currentConnection];
  v43 = v85;
  if (v42)
  {
    v44 = v42;
    if ([v42 sk_allowClientOverride])
    {
      sub_100105C8C(v88, v43, &unk_1003D20F0);
    }

    else
    {
      type metadata accessor for ClientOverride(0);
      sub_1000B0690();
      sub_100081DFC(v55, v56, v57, v58);
    }

    v59 = type metadata accessor for Client(0);
    v60 = sub_10021ABBC();
    sub_100105C8C(v60, v61, v62);
    v63 = v44;
    sub_1001ABF2C();
    sub_1001B52B0();
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v64, v65, v66, v67);
    v84 = v63;
    v68 = sub_100219CF0();
    sub_100219094(v68, v69);
    v70 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v71 = (v41 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 24) = 0;
    sub_100219DA0();
    sub_100218508(v39, v73 + v70);
    *(v72 + v71) = v59;
    v74 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
    v75 = v86;
    *v74 = v87;
    v74[1] = v75;
    v76 = v59;
    sub_100106CE0();

    sub_1001C5454();
    sub_100165CBC();

    sub_10013B1E8(v43, &unk_1003D20F0);
    sub_100219D88();
  }

  else
  {
    v45 = static os_log_type_t.error.getter();
    v46 = v80;

    v47 = v79;
    Logger.logObject.getter();
    sub_1000D3ED4();

    if (sub_10021A898())
    {
      sub_1000B7DC8();
      v48 = swift_slowAlloc();
      sub_1000B7DBC();
      v49 = swift_slowAlloc();
      *v48 = 136446466;
      sub_100219444(v49);
      v50._countAndFlagsBits = v78;
      v50._object = v46;
      String.append(_:)(v50);
      v51._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v51);
      sub_100080210(v89[1], v89[2], v89);
      sub_10001E11C();

      *(v48 + 4) = v47;
      sub_10021A07C();
      *(v48 + 14) = sub_100080210(0xD000000000000037, 0x800000010031EC80, v89);
      sub_100107A58(&_mh_execute_header, 0, v45, "%{public}s%{public}s");
      sub_100106E34();
      sub_100219550();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v52 = swift_allocError();
    sub_1002195EC(v52, v53);
    v54 = sub_1002198D4();
    v87(v54);

    sub_100219D88();
  }

  sub_1002190EC();
  sub_100093CB8();
}

uint64_t sub_10020AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[11] = type metadata accessor for StorefrontInternal();
  v7[12] = swift_task_alloc();
  v7[13] = sub_100080FB4(&qword_1003CCEE8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_10020AB9C, 0, 0);
}

uint64_t sub_10020AB9C()
{
  sub_1000B0004();
  if (qword_1003CBE98 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = (v1 + *(type metadata accessor for StorefrontRequest() + 20));
  v4 = *v3;
  v0[16] = *v3;
  v5 = v3[1];
  v0[17] = v5;
  v0[2] = v4;
  v0[3] = v5;
  v6 = swift_task_alloc();
  v0[18] = v6;
  *(v6 + 16) = v2;

  swift_task_alloc();
  sub_1000F2F10();
  v0[19] = v7;
  *v7 = v8;
  v7[1] = sub_10020AD00;
  sub_1000B0718();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_10020AD00()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
  }

  else
  {

    sub_1002195FC();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_10020B1DC()
{
  type metadata accessor for StorefrontManager();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10020B294;

  return sub_100223DA8();
}

uint64_t sub_10020B294()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AA4();

  return v3();
}

void sub_10020B38C(int a1, int a2, int a3, void *a4)
{
  v7 = sub_10021AD38(a1, a2, a3, a4);
  v8 = v5;
  v12 = v6;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  _Block_copy(v7);
  v9 = sub_1001B5400();
  v4(v9);
  _Block_release(v7);
  v10 = sub_1001B5400();
  sub_10008E168(v10, v11);
}

void sub_10020B42C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v45 = a1;
  v6 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v6 - 8);
  v46 = &v40 - v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for SKLogger();
  sub_10007EDA4(v9, qword_1003F26C8);
  sub_1001CA63C();
  v11 = v10;
  v13 = v12;

  v14 = static os_log_type_t.default.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v41 = "Could not create client";
    v16 = swift_slowAlloc();
    v43 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v44 = a4;
    v42 = v8;
    *v17 = 136446466;
    v47 = 91;
    v48 = 0xE100000000000000;
    v49 = v18;
    v19._countAndFlagsBits = v11;
    v19._object = v13;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 8285;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21 = v11;
    v22 = sub_100080210(v47, v48, &v49);

    *(v17 + 4) = v22;
    v11 = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100080210(0xD000000000000031, v41 | 0x8000000000000000, &v49);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    v8 = v42;
    a4 = v44;

    a2 = v43;
  }

  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    objc_allocWithZone(type metadata accessor for Client(0));
    v25 = v24;
    sub_1001AB4E8();
    if (v26)
    {
      v27 = v26;

      v28 = type metadata accessor for TaskPriority();
      sub_100081DFC(v46, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v11;
      v29[5] = v13;
      v29[6] = v45;
      v29[7] = a2;
      v29[8] = v27;
      v29[9] = sub_100215FB0;
      v29[10] = v8;

      v30 = v27;

      sub_100165CBC();

      _Block_release(a4);
      return;
    }
  }

  v31 = static os_log_type_t.error.getter();

  v32 = Logger.logObject.getter();

  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 136446466;
    v47 = 91;
    v48 = 0xE100000000000000;
    v49 = v34;
    v35._countAndFlagsBits = v11;
    v35._object = v13;
    String.append(_:)(v35);
    v36._countAndFlagsBits = 8285;
    v36._object = 0xE200000000000000;
    String.append(_:)(v36);
    v37 = sub_100080210(v47, v48, &v49);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    *(v33 + 14) = sub_100080210(0xD000000000000038, 0x800000010031ED20, &v49);
    _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s%{public}s", v33, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v38 = 1;
  v39 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v39);

  _Block_release(a4);
}

void StoreKitServiceConnection.isEligibleForIntroductoryOffer(forGroupID:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v8 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v10 = type metadata accessor for SKLogger();
  sub_10007EDA4(v10, qword_1003F26C8);
  sub_1001CA63C();
  v12 = v11;
  v14 = v13;

  v15 = static os_log_type_t.default.getter();

  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v15))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195DC();
    v0 = swift_slowAlloc();
    *v6 = 136446466;
    sub_100106B4C(v0);
    v17._countAndFlagsBits = sub_10021A25C();
    String.append(_:)(v17);
    v18._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v18);
    sub_100219A70();
    sub_100107144();

    *(v6 + 4) = v12;
    sub_10013BC98();
    *(v6 + 14) = sub_100080210(0xD000000000000031, 0x800000010031ECE0, &v44);
    sub_100219A98();
    _os_log_impl(v19, v20, v21, v22, v23, v24);
    sub_10010709C();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  if ([objc_opt_self() currentConnection])
  {
    v25 = sub_1000B06A8();
    objc_allocWithZone(type metadata accessor for Client(v25));
    v26 = v0;
    sub_1001AB4E8();
    if (v27)
    {
      sub_10021A0B0();

      type metadata accessor for TaskPriority();
      sub_1000B0690();
      sub_100081DFC(v28, v29, v30, v31);
      sub_10021A7F0();
      v32 = swift_allocObject();
      v33 = sub_10021AC54(v32);
      v33[4] = v12;
      v33[5] = v14;
      v33[6] = v42;
      v33[7] = v6;
      v33[8] = v0;
      v33[9] = v4;
      v33[10] = v2;

      v34 = v0;
      sub_10013B8D4();

      sub_1001C5454();
      sub_100165CBC();

      sub_100093CB8();
      return;
    }
  }

  v35 = static os_log_type_t.error.getter();

  Logger.logObject.getter();
  sub_10021A154();

  if (os_log_type_enabled(v12, v35))
  {
    sub_1000B7DC8();
    v43 = v4;
    v36 = swift_slowAlloc();
    sub_1000B7DBC();
    v0 = swift_slowAlloc();
    *v36 = 136446466;
    sub_100106B4C(v0);
    v37._countAndFlagsBits = sub_10021ABBC();
    String.append(_:)(v37);
    v38._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v38);
    sub_100219A70();
    sub_100123F48();

    *(v36 + 4) = v2;
    sub_1000B04AC();
    *(v36 + 14) = sub_100080210(0xD000000000000038, 0x800000010031ED20, &v44);
    sub_1000B0648(&_mh_execute_header, v12, v35, "%{public}s%{public}s");
    sub_10010709C();
    sub_1000B7D68();

    v4 = v43;
    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  v39 = swift_allocError();
  sub_1002195EC(v39, v40);
  v4(0, v0);
  sub_100093CB8();
}

uint64_t sub_10020BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = v9;
  v5[8] = v10;
  v5[5] = a4;
  v5[6] = a5;
  v6 = swift_task_alloc();
  v5[9] = v6;
  *v6 = v5;
  v6[1] = sub_10020BEC4;

  return sub_100098CCC();
}

uint64_t sub_10020BEC4()
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

  if (!v0)
  {
    *(v5 + 88) = v3 & 1;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10020BFD0()
{
  sub_10008BE9C();
  (*(v0 + 56))(*(v0 + 88), 0);
  sub_100098AC4();

  return v1();
}

uint64_t sub_10020C2CC()
{
  *(v1 + 56) = v0;
  v2 = type metadata accessor for URLComponents();
  *(v1 + 64) = v2;
  *(v1 + 72) = *(v2 - 8);
  *(v1 + 80) = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  v3 = type metadata accessor for URL();
  *(v1 + 120) = v3;
  *(v1 + 128) = *(v3 - 8);
  *(v1 + 136) = swift_task_alloc();
  v4 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(v0 + 32);

  return _swift_task_switch(sub_10020C480, 0, 0);
}

uint64_t sub_10020C480()
{
  sub_1000B02BC();
  v1 = sub_10020F8E0();
  v2 = sub_1001A81B0(v1);
  v0[18] = v2;
  sub_1002101B8(v2);
  v3 = swift_task_alloc();
  v4 = sub_10021AD98(v3);
  v0[20] = v4;
  *(v4 + 16) = v0 + 2;
  swift_task_alloc();
  sub_1000F2F10();
  v0[21] = v5;
  *v5 = v6;
  v5[1] = sub_10020C5F4;
  sub_10021A65C();
  sub_10021A79C();

  return sub_100211A4C(v7, v8, v9, v10, v11);
}

uint64_t sub_10020C5F4()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10020CDD4()
{
  sub_1000B072C();
  sub_1000B0004();

  sub_100219BAC();

  sub_100098AC4();
  sub_1000B0718();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10020CE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v9 = type metadata accessor for URLComponents();
  v4[10] = v9;
  v4[11] = *(v9 - 8);
  v4[12] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v4[17] = v10;
  v4[18] = *(v10 - 8);
  v4[19] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;

  return _swift_task_switch(sub_10020D050, 0, 0);
}

uint64_t sub_10020D050()
{
  sub_1000B02BC();
  v1 = sub_10020FBD0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = sub_1001A81B0(v1);
  *(v0 + 160) = v6;
  sub_1002104FC(v6, v5, v4, v3, v2);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v0 + 16;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *(v8 + 16) = v0 + 16;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 184) = v9;
  *v9 = v10;
  v9[1] = sub_10020D1F8;
  sub_10021A65C();
  sub_10021A79C();

  return sub_100211C64(v11, v12, v13, v14, v15);
}

uint64_t sub_10020D1F8()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10020D9BC()
{
  sub_1000B072C();
  sub_1000B0004();

  sub_100098AC4();
  sub_1000B0718();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10020DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v7 = type metadata accessor for URLComponents();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[15] = v8;
  v3[16] = *(v8 - 8);
  v3[17] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  return _swift_task_switch(sub_10020DC34, 0, 0);
}

uint64_t sub_10020DC34()
{
  sub_1000B02BC();
  v1 = sub_10020FEC4(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = sub_1001A81B0(v1);
  *(v0 + 144) = v5;
  sub_1002108A4(v5, v4, v3, v2);
  v6 = swift_task_alloc();
  v7 = sub_10021AD98(v6);
  *(v0 + 160) = v7;
  *(v7 + 16) = v0 + 16;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 168) = v8;
  *v8 = v9;
  v8[1] = sub_10020DDB8;
  sub_10021A65C();
  sub_10021A79C();

  return sub_100211A4C(v10, v11, v12, v13, v14);
}

uint64_t sub_10020DDB8()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10020DEC0()
{
  sub_10008BE9C();
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_10020DF6C;
  v3 = sub_1000B06F4(*(v0 + 136));

  return sub_1000DD034(v3, v4, v5, v6);
}

uint64_t sub_10020DF6C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;
  *(v8 + 192) = v7;

  v9 = sub_10009F0B8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10020E084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10021A774();
  a27 = v31;
  a28 = v32;
  sub_10021AB14();
  a26 = v28;
  if (*(v28 + 192))
  {
    v33 = *(v28 + 136);
    v34 = *(v28 + 144);
    v35 = *(v28 + 120);
    v36 = *(v28 + 128);
    swift_willThrow();

    (*(v36 + 8))(v33, v35);
    sub_100219BAC();

    sub_100098AC4();
    sub_1000D8A10();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  sub_10021A874();
  sub_100219D64();
  if (!sub_100081D0C(v46, v47, v48))
  {
    sub_100212450(*(v28 + 40));
    URLComponents.queryItems.setter();
  }

  [objc_allocWithZone(AMSEngagementRequest) init];
  sub_100219E00();
  sub_100219D64();
  v52 = sub_100081D0C(v49, v50, v51);
  v53 = *(v28 + 120);
  if (v52)
  {
    sub_1000B0690();
    sub_100081DFC(v54, v55, v56, v53);
LABEL_11:
    v105 = 0;
    goto LABEL_12;
  }

  v57 = sub_10021A134();
  v58(v57);
  URLComponents.url.getter();
  v59 = sub_10021A60C();
  v60(v59);
  v61 = sub_1001B53A4();
  sub_1001B5430(v61, v62, v53);
  if (v64)
  {
    goto LABEL_11;
  }

  URL._bridgeToObjectiveC()(v63);
  v105 = v104;
  v106 = sub_100093DD0();
  v107(v106);
LABEL_12:
  v65 = *(v28 + 144);
  v66 = *(v28 + 104);
  v67 = *(v28 + 64);
  [v30 setURL:v105];

  [v30 setAccount:v65];
  v68 = sub_1000C43E8();
  sub_100105C8C(v68, v69, &qword_1003CEDE0);
  v70 = sub_1001B53A4();
  v72 = sub_100081D0C(v70, v71, v67);
  v73 = sub_1001B55F0();
  sub_10013B1E8(v73, v74);
  if (v72 == 1)
  {
    a13 = v65;
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v75 = type metadata accessor for SKLogger();
    sub_1000B01C8(v75, qword_1003F26C8);
    a15 = 0;
    a16 = 0xE000000000000000;
    _StringGuts.grow(_:)(88);
    sub_10021A0DC();
    v77._countAndFlagsBits = v76 + 35;
    v77._object = (v78 | 0x8000000000000000);
    String.append(_:)(v77);
    v79._countAndFlagsBits = sub_100219824();
    String.append(_:)(v79);
    v80._countAndFlagsBits = sub_100219848();
    String.append(_:)(v80);
    sub_10021942C();
    sub_1002185B8(v81, v82);
    v83._countAndFlagsBits = sub_10021A3CC();
    String.append(_:)(v83);

    v84 = a16;
    a11 = a15;
    v85 = static os_log_type_t.error.getter();

    v86 = Logger.logObject.getter();

    v87 = os_log_type_enabled(v86, v85);
    v89 = *(v28 + 128);
    v88 = *(v28 + 136);
    v72 = *(v28 + 120);
    if (v87)
    {
      a12 = v30;
      v90 = *(v28 + 48);
      v91 = *(v28 + 56);
      sub_1000B7DC8();
      v92 = swift_slowAlloc();
      sub_1000B7DBC();
      a10 = v72;
      v72 = swift_slowAlloc();
      *v92 = 136446466;
      sub_10009F0F8();
      a14 = v93;
      a15 = v94;
      a16 = v95;
      a9 = v88;
      v96._countAndFlagsBits = v90;
      v96._object = v91;
      String.append(_:)(v96);
      v97._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v97);
      sub_100080210(a15, a16, &a14);
      sub_100107144();

      *(v92 + 4) = v90;
      sub_100107300();
      v98 = sub_100080210(a11, v84, &a14);

      *(v92 + 14) = v98;
      sub_1001076B8(&_mh_execute_header, v86, v85, "%{public}s%{public}s");
      sub_10010709C();
      sub_1000B7D68();

      sub_1000B7D68();

      (*(v89 + 8))(a9, a10);
    }

    else
    {

      v101 = sub_100107174();
      v103(v101, v102);
    }
  }

  else if ([v30 URL])
  {
    sub_10021A998();

    v99 = sub_100219AC0();
    v100(v99);
    sub_10021A3A0();
    sub_10013B1E8(v67, &unk_1003D0540);
  }

  else
  {
    a12 = v30;
    v108 = *(v28 + 88);
    sub_1000B0690();
    sub_100081DFC(v109, v110, v111, v112);
    sub_10013B1E8(v108, &unk_1003D0540);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v113 = type metadata accessor for SKLogger();
    sub_1000B01C8(v113, qword_1003F26C8);
    a15 = 0;
    a16 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    sub_10021A0DC();
    v115._countAndFlagsBits = v114 + 3;
    v115._object = (v116 | 0x8000000000000000);
    String.append(_:)(v115);
    sub_10021942C();
    sub_1002185B8(v117, v118);
    v119._countAndFlagsBits = sub_10021A3CC();
    String.append(_:)(v119);

    sub_1000B00A8();
    v120._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v120);
    v121._countAndFlagsBits = sub_100219824();
    String.append(_:)(v121);
    v72 = a16;
    static os_log_type_t.error.getter();
    sub_1000B0678();
    v122 = v66;
    Logger.logObject.getter();
    sub_10001E11C();

    if (os_log_type_enabled(v66, v29))
    {
      sub_1000B7DC8();
      v123 = swift_slowAlloc();
      sub_1000B7DBC();
      a13 = v65;
      v124 = swift_slowAlloc();
      a15 = v124;
      *v123 = 136446466;
      *(v123 + 4) = sub_100093CF0(v124, v125, &a15);
      sub_100107300();
      v126 = sub_100219F9C();
      v129 = sub_100080210(v126, v127, v128);

      *(v123 + 14) = v129;
      sub_10021A250();
      sub_1001076B8(v130, v131, v132, v133);
      sub_10021960C();
      swift_arrayDestroy();
      sub_10015CFF0();

      sub_1000B7D68();
    }

    else
    {
    }

    v134 = sub_1000D4078();
    v135(v134);
  }

  sub_100219BAC();
  sub_10013B1E8(v72, &qword_1003CEDE0);

  sub_10009F198();
  sub_1000D8A10();

  return v138(v136, v137, v138, v139, v140, v141, v142, v143, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void *sub_10020E7DC(uint64_t a1)
{
  v9 = 0;
  v2 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v3;
    v4 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    sub_100212684(v4, v1);
    v9 = v4;
    sub_100080FB4(&qword_1003CCCB0);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v6 = v4;
    }

    v7 = _convertErrorToNSError(_:)();

    [v7 toASDErrorWithMetadata:0];

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10020E980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 168) = a1;
  *(v5 + 176) = *(v4 + 16);
  *(v5 + 192) = *(v4 + 32);
  return _swift_task_switch(sub_10020E9B4, 0, 0);
}

uint64_t sub_10020E9B4()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219B48();
  sub_10008E5A4(0, &qword_1003D27F8);
  v4 = v1;
  v5 = v3;
  v6 = sub_10021AB38();
  v8 = sub_10021DB28(v6, v7);
  v0[25] = v8;
  sub_10021A68C([v8 present]);
  v0[2] = v9;
  v0[7] = v2;
  sub_10021A93C();
  v10 = sub_100080FB4(&qword_1003D2800);
  sub_1002196BC(v10);
  v0[11] = 1107296256;
  sub_1002196A4();
  sub_10021AA78(v11, "resultWithCompletion:");
  sub_1000B0718();

  return _swift_continuation_await(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10020EAC8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10020EEA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 224) = a4;
  *(v8 + 168) = a1;
  *(v8 + 176) = a6;
  return _swift_task_switch(sub_10020EEC8, 0, 0);
}

uint64_t sub_10020EEC8()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219B48();
  sub_10008E5A4(0, &qword_1003D27F8);
  v4 = v1;
  v5 = v3;
  v6 = sub_10021AB38();
  v8 = sub_10021DB28(v6, v7);
  v0[25] = v8;
  sub_10021A68C([v8 present]);
  v0[2] = v9;
  v0[7] = v2;
  sub_10021A93C();
  v10 = sub_100080FB4(&qword_1003D2800);
  sub_1002196BC(v10);
  v0[11] = 1107296256;
  sub_1002196A4();
  sub_10021AA78(v11, "resultWithCompletion:");
  sub_1000B0718();

  return _swift_continuation_await(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10020EFDC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10020F38C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = a7;
  *(v7 + 224) = a4;
  *(v7 + 168) = a1;
  *(v7 + 176) = a5;
  return _swift_task_switch(sub_10020F3B4, 0, 0);
}

uint64_t sub_10020F3B4()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219B48();
  sub_10008E5A4(0, &qword_1003D27F8);
  v4 = v1;
  v5 = v3;
  v6 = sub_10021AB38();
  v8 = sub_10021DB28(v6, v7);
  v0[25] = v8;
  sub_10021A68C([v8 present]);
  v0[2] = v9;
  v0[7] = v2;
  sub_10021A93C();
  v10 = sub_100080FB4(&qword_1003D2800);
  sub_1002196BC(v10);
  v0[11] = 1107296256;
  sub_1002196A4();
  sub_10021AA78(v11, "resultWithCompletion:");
  sub_1000B0718();

  return _swift_continuation_await(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10020F4C8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10020F5C4()
{
  sub_10008BE9C();
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);
  sub_10009F198();

  return v3(v2);
}

uint64_t sub_10020F8E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_10008E5A4(0, &unk_1003CED80);
  result = sub_10018C008(6, v1);
  if (result)
  {
    v5 = result;
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_10007EDA4(v6, qword_1003F26C8);
    _StringGuts.grow(_:)(68);
    v7._countAndFlagsBits = 0xD00000000000003ELL;
    v7._object = 0x800000010031F320;
    String.append(_:)(v7);
    v8._object = 0x800000010031F3D0;
    v8._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    v10 = [v5 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15 = static os_log_type_t.default.getter();

    v16 = Logger.logObject.getter();

    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v17 = 136446466;
      v18._countAndFlagsBits = v2;
      v18._object = v3;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 8285;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      v20 = sub_100080210(91, 0xE100000000000000, &v22);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v21 = sub_100080210(0, 0xE000000000000000, &v22);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v16, v15, "%{public}s%{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10020FBD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10008E5A4(0, &unk_1003CED80);
  result = sub_10018C008(7, a2);
  if (result)
  {
    v8 = result;
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(68);
    v10._object = 0x800000010031F320;
    v10._countAndFlagsBits = 0xD00000000000003ELL;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0x7220646E75666572;
    v11._object = 0xEE00747365757165;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 8250;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13 = [v8 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18 = static os_log_type_t.default.getter();

    v19 = Logger.logObject.getter();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v20 = 136446466;
      v21._countAndFlagsBits = a3;
      v21._object = a4;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 8285;
      v22._object = 0xE200000000000000;
      String.append(_:)(v22);
      v23 = sub_100080210(91, 0xE100000000000000, &v25);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      v24 = sub_100080210(0, 0xE000000000000000, &v25);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10020FEC4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10008E5A4(0, &unk_1003CED80);
  result = sub_10018C008(8, a1);
  if (result)
  {
    v7 = result;
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for SKLogger();
    sub_10007EDA4(v8, qword_1003F26C8);
    _StringGuts.grow(_:)(68);
    v9._object = 0x800000010031F320;
    v9._countAndFlagsBits = 0xD00000000000003ELL;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0x6465722065646F63;
    v10._object = 0xEF6E6F6974706D65;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 8250;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12 = [v7 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17 = static os_log_type_t.default.getter();

    v18 = Logger.logObject.getter();

    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v19 = 136446466;
      v20._countAndFlagsBits = a2;
      v20._object = a3;
      String.append(_:)(v20);
      v21._countAndFlagsBits = 8285;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      v22 = sub_100080210(91, 0xE100000000000000, &v24);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v23 = sub_100080210(0, 0xE000000000000000, &v24);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1002101B8(void *a1)
{
  v3 = type metadata accessor for Client.Server(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = [a1 ams_DSID];
  if (v8)
  {
  }

  else
  {
    sub_1001A7E5C(0, v9, v10, v11, v12, v13, v14, v15, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6]);
    v16 = sub_100080FB4(&qword_1003CCB50);
    if (sub_100081D0C(v5, 2, v16))
    {
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for SKLogger();
      sub_10007EDA4(v17, qword_1003F26C8);
      v34 = 0;
      v35 = 0xE000000000000000;
      _StringGuts.grow(_:)(113);
      v18._countAndFlagsBits = 0xD000000000000034;
      v18._object = 0x800000010031F2A0;
      String.append(_:)(v18);
      v19._object = 0x800000010031F3D0;
      v19._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v19);
      v20._countAndFlagsBits = 0xD00000000000003BLL;
      v20._object = 0x800000010031F2E0;
      String.append(_:)(v20);
      v22 = v34;
      v21 = v35;
      v23 = static os_log_type_t.default.getter();

      v24 = Logger.logObject.getter();

      if (os_log_type_enabled(v24, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v22;
        v37[0] = v26;
        *v25 = 136446466;
        v34 = 91;
        v35 = 0xE100000000000000;
        v27._countAndFlagsBits = v7;
        v27._object = v6;
        String.append(_:)(v27);
        v28._countAndFlagsBits = 8285;
        v28._object = 0xE200000000000000;
        String.append(_:)(v28);
        v29 = sub_100080210(v34, v35, v37);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2082;
        v30 = sub_100080210(v33, v21, v37);

        *(v25 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      v31 = type metadata accessor for URL();
      (*(*(v31 - 8) + 8))(v5, v31);
    }
  }
}

void sub_1002104FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for Client.Server(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 ams_DSID];
  if (v11)
  {
  }

  else
  {
    sub_1001A7E5C(0, v12, v13, v14, v15, v16, v17, v18, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8]);
    v19 = sub_100080FB4(&qword_1003CCB50);
    if (sub_100081D0C(v10, 2, v19))
    {
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for SKLogger();
      sub_10007EDA4(v20, qword_1003F26C8);
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v21._object = 0x800000010031F390;
      v21._countAndFlagsBits = 0xD00000000000003BLL;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 0x7220646E75666572;
      v22._object = 0xEE00747365757165;
      String.append(_:)(v22);
      v24 = v33;
      v23 = v34;
      v25 = static os_log_type_t.error.getter();

      v26 = Logger.logObject.getter();

      if (os_log_type_enabled(v26, v25))
      {
        v27 = swift_slowAlloc();
        v36[0] = swift_slowAlloc();
        *v27 = 136446466;
        v33 = 91;
        v34 = 0xE100000000000000;
        v28._countAndFlagsBits = a4;
        v28._object = a5;
        String.append(_:)(v28);
        v29._countAndFlagsBits = 8285;
        v29._object = 0xE200000000000000;
        String.append(_:)(v29);
        v30 = sub_100080210(v33, v34, v36);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2082;
        v31 = sub_100080210(v24, v23, v36);

        *(v27 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      type metadata accessor for ASDError(0);
      v36[0] = 509;
      sub_1000B61D4(_swiftEmptyArrayStorage);
      sub_1002185B8(&qword_1003CC170, type metadata accessor for ASDError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }

    else
    {
      v32 = type metadata accessor for URL();
      (*(*(v32 - 8) + 8))(v10, v32);
    }
  }
}

void sub_1002108A4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Client.Server(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 ams_DSID];
  if (v10)
  {
  }

  else
  {
    sub_1001A7E5C(0, v11, v12, v13, v14, v15, v16, v17, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6]);
    v18 = sub_100080FB4(&qword_1003CCB50);
    if (sub_100081D0C(v9, 2, v18))
    {
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for SKLogger();
      sub_10007EDA4(v19, qword_1003F26C8);
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(113);
      v20._object = 0x800000010031F2A0;
      v20._countAndFlagsBits = 0xD000000000000034;
      String.append(_:)(v20);
      v21._countAndFlagsBits = 0x6465722065646F63;
      v21._object = 0xEF6E6F6974706D65;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 0xD00000000000003BLL;
      v22._object = 0x800000010031F2E0;
      String.append(_:)(v22);
      v24 = v36;
      v23 = v37;
      v25 = static os_log_type_t.default.getter();

      v26 = Logger.logObject.getter();

      if (os_log_type_enabled(v26, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v24;
        v39[0] = v28;
        *v27 = 136446466;
        v36 = 91;
        v37 = 0xE100000000000000;
        v29._countAndFlagsBits = a3;
        v29._object = a4;
        String.append(_:)(v29);
        v30._countAndFlagsBits = 8285;
        v30._object = 0xE200000000000000;
        String.append(_:)(v30);
        v31 = sub_100080210(v36, v37, v39);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v32 = sub_100080210(v35, v23, v39);

        *(v27 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      v33 = type metadata accessor for URL();
      (*(*(v33 - 8) + 8))(v9, v33);
    }
  }
}

uint64_t sub_100210BF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 160) = a1;
  *(v2 + 168) = v3;
  return _swift_task_switch(sub_100210C18, 0, 0);
}

uint64_t sub_100210C18()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = sub_1001A7AB4(v2);
  if (qword_1003CBE18 != -1)
  {
    swift_once();
  }

  sub_10015D300([v3 URLForKey:qword_1003F2600]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  sub_10013BB4C();
  v4 = sub_100080FB4(&unk_1003CEE10);
  sub_10008BD44(v4);
  v0[11] = 1107296256;
  sub_10019DC40();
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100210D54()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100210E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = a3;
  return _swift_task_switch(sub_100210E70, 0, 0);
}

uint64_t sub_100210E70()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = sub_1001A7AB4(v2);
  if (qword_1003CBE78 != -1)
  {
    swift_once();
  }

  sub_10015D300([v3 URLForKey:qword_1003F26E0]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  sub_10013BB4C();
  v4 = sub_100080FB4(&unk_1003CEE10);
  sub_10008BD44(v4);
  v0[11] = 1107296256;
  sub_10019DC40();
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100210FAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_100210FCC, 0, 0);
}

uint64_t sub_100210FCC()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = sub_1001A7AB4(v2);
  if (qword_1003CBC88 != -1)
  {
    swift_once();
  }

  sub_10015D300([v3 URLForKey:qword_1003F25A0]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  sub_10013BB4C();
  v4 = sub_100080FB4(&unk_1003CEE10);
  sub_10008BD44(v4);
  v0[11] = 1107296256;
  sub_10019DC40();
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100211108()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100211204()
{
  sub_10008BE9C();
  v1 = *(v0 + 144);

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100098AA4();

  return v2();
}

void sub_100211274(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SKLogger();
  sub_10007EDA4(v5, qword_1003F26C8);
  _StringGuts.grow(_:)(63);
  v6._countAndFlagsBits = 0xD000000000000039;
  v6._object = 0x800000010031F260;
  String.append(_:)(v6);
  v7._object = 0x800000010031F3D0;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v17[0] = a1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v9 = static os_log_type_t.error.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v17[0] = v12;
    v17[1] = 91;
    v17[2] = 0xE100000000000000;
    v13._countAndFlagsBits = v4;
    v13._object = v3;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_100080210(91, 0xE100000000000000, v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_100080210(0, 0xE000000000000000, v17);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10021150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for SKLogger();
  sub_10007EDA4(v8, qword_1003F26C8);
  _StringGuts.grow(_:)(63);
  v9._object = 0x800000010031F260;
  v9._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x7220646E75666572;
  v10._object = 0xEE00747365757165;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v20[0] = a1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v12 = static os_log_type_t.error.getter();

  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446466;
    v20[0] = v15;
    v20[1] = 91;
    v20[2] = 0xE100000000000000;
    v16._countAndFlagsBits = a4;
    v16._object = a5;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18 = sub_100080210(91, 0xE100000000000000, v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_100080210(0, 0xE000000000000000, v20);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1002117AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger();
  sub_10007EDA4(v7, qword_1003F26C8);
  _StringGuts.grow(_:)(63);
  v8._object = 0x800000010031F260;
  v8._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6465722065646F63;
  v9._object = 0xEF6E6F6974706D65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v19[0] = a1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v11 = static os_log_type_t.error.getter();

  v12 = Logger.logObject.getter();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446466;
    v19[0] = v14;
    v19[1] = 91;
    v19[2] = 0xE100000000000000;
    v15._countAndFlagsBits = a3;
    v15._object = a4;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8285;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17 = sub_100080210(91, 0xE100000000000000, v19);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = sub_100080210(0, 0xE000000000000000, v19);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100211A4C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_100211B4C;

  return (v9)(a1, v5 + 2);
}

uint64_t sub_100211B4C()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *v1;
  sub_100098AB4();
  *v3 = v2;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    sub_100098AC4();

    return v7();
  }
}

uint64_t sub_100211C64(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_100211D64;

  return (v9)(a1, v5 + 2);
}

uint64_t sub_100211D64()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *v1;
  sub_100098AB4();
  *v3 = v2;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    sub_100098AC4();

    return v7();
  }
}

uint64_t sub_100211E7C()
{
  sub_1000B0004();
  v8 = v0;
  v1 = v0[4];
  v7 = v0[2];
  v2 = v7;
  swift_errorRetain();
  v1(&v7);
  v0[3] = v2;
  v3 = sub_100080FB4(&qword_1003CCCB0);
  sub_1001B5400();
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    sub_10001E11C();
  }

  else
  {
    sub_1000ED9E4();
    swift_allocError();
    *v4 = v2;
  }

  _convertErrorToNSError(_:)();
  sub_10001E104();

  [v3 toASDErrorWithMetadata:0];

  swift_willThrow();

  sub_100098AC4();

  return v5();
}

void *sub_100211F94()
{
  v17 = type metadata accessor for URLQueryItem();
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v6;

  v10 = sub_100188B08(v9, v7, v8, v4, v5);

  v11 = *(v10 + 16);
  if (v11)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1002133B4();
    v12 = v18;
    v16[1] = v10;
    v13 = v10 + 48;
    do
    {
      v13 += 24;

      URLQueryItem.init(name:value:)();

      v18 = v12;
      v14 = v12[2];
      if (v14 >= v12[3] >> 1)
      {
        sub_1002133B4();
        v12 = v18;
      }

      v12[2] = v14 + 1;
      (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v3, v17);
      --v11;
    }

    while (v11);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

void *sub_100212210(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = type metadata accessor for URLQueryItem();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2;

  v12 = sub_1001D8EEC(v11, a3, a4, a1);

  v13 = *(v12 + 16);
  if (v13)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1002133B4();
    v18[1] = v12;
    v14 = v12 + 48;
    v15 = v20;
    do
    {

      URLQueryItem.init(name:value:)();

      v20 = v15;
      v16 = v15[2];
      if (v16 >= v15[3] >> 1)
      {
        sub_1002133B4();
        v15 = v20;
      }

      v14 += 24;
      v15[2] = v16 + 1;
      (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v10, v19);
      --v13;
    }

    while (v13);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v15;
}

void *sub_100212450(void *a1)
{
  v13 = type metadata accessor for URLQueryItem();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;

  v6 = sub_1000DCF00(v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_1002133B4();
    v12[0] = v6;
    v12[1] = v2 + 32;
    v8 = v14;
    v9 = v6 + 48;
    do
    {
      v9 += 24;

      URLQueryItem.init(name:value:)();

      v14 = v8;
      v10 = v8[2];
      if (v10 >= v8[3] >> 1)
      {
        sub_1002133B4();
        v8 = v14;
      }

      v8[2] = v10 + 1;
      (*(v2 + 32))(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10, v4, v13);
      --v7;
    }

    while (v7);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void sub_100212684(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SKLogger();
  sub_10007EDA4(v5, qword_1003F26C8);
  _StringGuts.grow(_:)(66);
  v6._countAndFlagsBits = 0xD00000000000003CLL;
  v6._object = 0x800000010031F3F0;
  String.append(_:)(v6);
  v7._object = 0x800000010031F3D0;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v17[0] = a1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v9 = static os_log_type_t.error.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v17[0] = v12;
    v17[1] = 91;
    v17[2] = 0xE100000000000000;
    v13._countAndFlagsBits = v4;
    v13._object = v3;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_100080210(91, 0xE100000000000000, v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_100080210(0, 0xE000000000000000, v17);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id sub_100212920(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  String._bridgeToObjectiveC()();
  sub_10021A0FC();

  if (a4)
  {
    Dictionary._bridgeToObjectiveC()();
    sub_10021A554();
  }

  else
  {
    a2 = 0;
  }

  v9 = [v4 initWithDomain:v5 code:a3 userInfo:a2];

  return v9;
}

id sub_1002129C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v8 = 0;
  if (sub_100081D0C(a1, 1, v6) != 1)
  {
    URL._bridgeToObjectiveC()(v7);
    v8 = v9;
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  if (a2)
  {
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = [v3 initWithSingle:v8 multi:v10.super.isa];

  return v11;
}

char *sub_100212AB0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212AD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212AF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212B14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212BAC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212BD4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

void sub_100212BFC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_100098B7C(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_1001B55F0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_1001B55F0();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_100212CCC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

unint64_t sub_100212CF4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100212F0C(a1, v4);
}

void sub_100212D38()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000EDD18();

  sub_1001B55F0();
  sub_100213290();
}

unint64_t sub_100212DC0(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1002185B8(&qword_1003D3100, &type metadata accessor for UUID);
  sub_10021A548();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100212FD0(a1, v2);
}

unint64_t sub_100212E58(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1002185B8(&qword_1003D2768, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10021318C(a1, v2);
}

unint64_t sub_100212F0C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1001060C4(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10008E550(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100212FD0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1002185B8(&qword_1003D2740, &type metadata accessor for UUID);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10021318C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_1002185B8(&qword_1003D2768, type metadata accessor for CFString);
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      break;
    }
  }

  return i;
}

void sub_100213290()
{
  sub_100093D08();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {

      break;
    }

    sub_10009F14C();
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      break;
    }
  }

  sub_100093CB8();
}

char *sub_100213394(char *a1, int64_t a2, char a3)
{
  result = sub_10021364C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10021344C(void *a1, int64_t a2, char a3)
{
  result = sub_100213758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002134AC(char *a1, int64_t a2, char a3)
{
  result = sub_100213AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002134CC(char *a1, int64_t a2, char a3)
{
  result = sub_100213BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002134EC(char *a1, int64_t a2, char a3)
{
  result = sub_100213CC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100213564(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1001DA7B0();
    if (v7 != v8)
    {
      sub_1001DA8A0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1001DA7A0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_100080FB4(&unk_1003D2720);
    v11 = swift_allocObject();
    j__malloc_size(v11);
    sub_10021AAA4();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10021364C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&qword_1003CCBB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100213758(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100080FB4(&qword_1003CF320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100080FB4(&unk_1003D2730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100213890()
{
  sub_10021AEEC();
  v3 = v2;
  v5 = v4;
  if (v6)
  {
    sub_1001DA7B0();
    if (v8 != v9)
    {
      sub_1001DA8A0();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_1001DA7A0();
    }
  }

  else
  {
    v7 = v0;
  }

  v10 = v3[2];
  if (v7 <= v10)
  {
    v11 = v3[2];
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    sub_100080FB4(v1);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v12[2] = v10;
    v12[3] = 2 * ((v13 - 32) / 8);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v12 != v3 || &v3[v10 + 4] <= v12 + 4)
    {
      v15 = sub_100128CCC();
      memmove(v15, v16, v17);
    }

    v3[2] = 0;
  }

  else
  {
    v18 = sub_1001B55F0();
    sub_100080FB4(v18);
    sub_100128CCC();
    swift_arrayInitWithCopy();
  }

  sub_10021AED8();
}

void sub_100213998(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_1001DA7B0();
    if (v7 != v8)
    {
      sub_1001DA8A0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1001DA7A0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_100080FB4(&unk_1003D28C0);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[6 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_1000D4078();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100080FB4(&qword_1003D0A88);
    sub_1000D4078();
    swift_arrayInitWithCopy();
  }
}

char *sub_100213AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&unk_1003D28D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_100213BB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&unk_1003D1CB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100213CC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&qword_1003D2748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100213DD0()
{
  sub_100093D08();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v10)
  {
    sub_1001DA7B0();
    if (v12 != v13)
    {
      sub_1001DA8A0();
      if (v12)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1001DA7A0();
    }
  }

  else
  {
    v11 = v0;
  }

  v14 = *(v7 + 16);
  if (v11 <= v14)
  {
    v15 = *(v7 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100080FB4(v1);
  v16 = v5(0);
  sub_1000B046C(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = j__malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_18:
  v24 = *(v5(0) - 8);
  if (v9)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_100212BFC(v7 + v25, v14, v21 + v25, v3);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100093CB8();
}

uint64_t sub_100213F78()
{
  sub_10021ACBC();
  sub_1000B016C();
  sub_10016C704();
  sub_10016C8F8();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_10008E654();

  return sub_1001E565C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100214024()
{
  sub_100098BB4();
  sub_100219894();
  v1 = swift_task_alloc();
  v2 = sub_1000B00E0(v1);
  *v2 = v3;
  v4 = sub_10021948C(v2);

  return sub_1001EB800(v4, v5, v0);
}

uint64_t sub_1002140B4()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1001E5AEC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100214140()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E9A38(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1002141CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 releaseKeepAliveTransaction:v4];
}

uint64_t sub_100214224(void *a1)
{
  v1 = [a1 multi];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for URL();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100214288()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219940();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_10021A1B4(v1);
  sub_1000C71E8();
  sub_100219F70();
  sub_1000B0718();

  return sub_1001F04D4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100214320()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219940();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_10021A1B4(v1);
  sub_1000C71E8();
  sub_100219F70();
  sub_1000B0718();

  return sub_1001F1460(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002143BC()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_1001D4F48();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_100219650(v1);
  sub_1000B0518();

  return sub_1001F227C(v3, v4, v5, v6, v7);
}

uint64_t sub_10021444C()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_10021953C();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_1000B0604();

  return sub_1001E4464(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100214618()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_1001D4F48();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_100219650(v1);
  sub_1000B0518();

  return sub_1001F2FA4(v3, v4, v5, v6, v7);
}

uint64_t sub_1002146A8()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_10021953C();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_1000B0604();

  return sub_1001E4774(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10021473C()
{
  sub_10013BDE0();
  sub_1000B02BC();
  sub_100219478();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_100219630(v1);
  sub_10013BDF8();

  return sub_1001F3F60(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002147D8()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_100219630(v1);
  sub_1000B0604();

  return sub_1001F4FA0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10021486C()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_10021953C();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_1000B0604();

  return sub_1001E4A44(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100214900()
{
  sub_10013BAC0();
  sub_1000EDA60();
  sub_100219978();
  v0 = type metadata accessor for AcknowledgeMessageTask();
  sub_1000B046C(v0);
  sub_10021ABD4();
  v1 = type metadata accessor for SKLogger();
  sub_1000B046C(v1);
  v2 = type metadata accessor for AcknowledgeMessageRequest();
  sub_1000B01B0(v2);
  sub_10021A4AC();
  v3 = swift_task_alloc();
  v4 = sub_1001C5480(v3);
  *v4 = v5;
  v4[1] = sub_1000AFC98;
  sub_1002194D8();
  sub_1001240F8();

  return sub_1001F70C0(v6, v7, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_100214A70()
{
  result = qword_1003D2130;
  if (!qword_1003D2130)
  {
    sub_1000852D4(&qword_1003D2128);
    sub_1002185B8(&qword_1003CFBF0, type metadata accessor for ClientOverrideRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2130);
  }

  return result;
}

uint64_t sub_100214B24()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1001E5E30(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100214BB0()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E9E8C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100214C3C()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100214C88()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E9F4C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100214D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 56) = a3;
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_100214DC4;

  return sub_100210BF4(a1, v3 + 16);
}

uint64_t sub_100214DC4()
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
    **(v3 + 56) = v0;
  }

  sub_10021A124();

  return v7();
}

void sub_100214EBC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v3;
  v5 = *(a2 + 32);
  sub_100211274(v2, v4);
}

uint64_t sub_100214EF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_100219344;

  return sub_100210E50(a1, v5, v6);
}

uint64_t sub_100214FCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100215084;

  return sub_100210FAC(a1, v5);
}

uint64_t sub_100215084()
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
    **(v3 + 16) = v0;
  }

  sub_10021A124();

  return v7();
}

uint64_t sub_100215190(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 48) = a1;
  *(v7 + 56) = a5;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  v13 = (a3 + *a3);
  v11 = swift_task_alloc();
  *(v7 + 80) = v11;
  *v11 = v7;
  v11[1] = sub_1002152B0;

  return v13(a1, v7 + 16);
}

uint64_t sub_1002152B0()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = swift_task_alloc();
    *(v3 + 96) = v7;
    *v7 = v5;
    v7[1] = sub_100215474;
    sub_1001B55FC();

    return sub_1001E521C();
  }

  else
  {
    sub_1002195FC();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_100215414()
{
  sub_10008BE9C();
  (*(v0 + 56))(0);
  sub_100098AC4();

  return v1();
}

uint64_t sub_100215474()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10021555C()
{
  sub_100098BB4();
  (*(v0 + 56))(*(v0 + 104));

  sub_100098AC4();

  return v1();
}