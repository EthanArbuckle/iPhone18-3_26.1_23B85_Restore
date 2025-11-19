uint64_t sub_100131D80(uint64_t a1)
{
  v2[168] = v1;
  v2[167] = a1;
  v3 = type metadata accessor for Logger();
  v2[169] = v3;
  v4 = *(v3 - 8);
  v2[170] = v4;
  v5 = *(v4 + 64) + 15;
  v2[171] = swift_task_alloc();
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();

  return _swift_task_switch(sub_100131E5C, 0, 0);
}

uint64_t sub_100131E5C()
{
  if (*(v0[167] + 50))
  {
    v1 = swift_task_alloc();
    v0[174] = v1;
    *v1 = v0;
    v1[1] = sub_100132020;
    v2 = v0[168];

    return sub_100131720();
  }

  else
  {
    v4 = v0[173];
    v5 = v0[170];
    v6 = v0[169];
    v7 = Logger.postback.unsafeMutableAddressor();
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[173];
    v12 = v0[170];
    v13 = v0[169];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "ghostback unregistered, skipping imprint", v14, 2u);
    }

    (*(v12 + 8))(v11, v13);
    v15 = v0[173];
    v16 = v0[172];
    v17 = v0[171];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100132020(uint64_t a1)
{
  v2 = *(*v1 + 1392);
  v4 = *v1;
  *(*v1 + 1400) = a1;

  return _swift_task_switch(sub_100132120, 0, 0);
}

uint64_t sub_100132120()
{
  v19 = v0;
  v1 = v0[168];
  v2 = v0[167];
  v3 = [objc_opt_self() sharedScheduler];
  v17[3] = &type metadata for ActivityManager;
  v17[4] = &off_100223E90;
  v4 = swift_allocObject();
  v17[0] = v4;
  v4[5] = &type metadata for BackgroundSystemTaskScheduler;
  v4[6] = &off_100217910;
  v4[2] = v3;
  v18[3] = &type metadata for LaunchServicesRecordFactory;
  v18[4] = &off_10021CBA8;
  sub_1000B8524(v17, v18, (v0 + 148));
  v5 = *v1;
  v0[176] = *v1;
  v6 = v1[1];
  v0[177] = v6;
  v7 = v1[2];
  v0[178] = v7;
  v8 = swift_allocObject();
  v0[179] = v8;
  v8[1] = *v2;
  v9 = v2[4];
  v11 = v2[1];
  v10 = v2[2];
  v8[4] = v2[3];
  v8[5] = v9;
  v8[2] = v11;
  v8[3] = v10;
  v12 = v2[8];
  v14 = v2[5];
  v13 = v2[6];
  v8[8] = v2[7];
  v8[9] = v12;
  v8[6] = v14;
  v8[7] = v13;
  sub_100070EEC(v2, (v0 + 76));
  v15 = swift_task_alloc();
  v0[180] = v15;
  *v15 = v0;
  v15[1] = sub_1001322F0;

  return sub_100110084(sub_10014C830, v8, v5, v6, v7);
}

uint64_t sub_1001322F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1440);
  v6 = *v2;
  v4[181] = a1;
  v4[182] = v1;

  v7 = v3[179];
  if (v1)
  {
    v8 = v4[175];

    v9 = sub_100133514;
  }

  else
  {

    v9 = sub_100132444;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100132444(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), void *a7, char *a8)
{
  v63 = v8;
  v9 = v8[181];
  v10 = *(v9 + 16);
  v8[183] = v10;
  if (v10)
  {
    v11 = v8[182];
    v8[184] = 0;
    if (*(v9 + 16))
    {
      v12 = v8[175];
      v13 = v8[167];
      memcpy(v8 + 2, (v9 + 32), 0x121uLL);
      v14 = swift_allocObject();
      v8[185] = v14;
      memmove((v14 + 16), (v9 + 32), 0x121uLL);
      swift_beginAccess();
      sub_1000B3B24((v8 + 2), (v8 + 39));
      sub_1000B17E0(v13, v12, (v8 + 148));
      if (v11)
      {
        v15 = v8[181];
        v16 = v8[175];
        swift_endAccess();

        v17 = v8[172];
        v18 = v8[170];
        v19 = v8[169];
        v20 = v8[167];
        v21 = Logger.postback.unsafeMutableAddressor();
        (*(v18 + 16))(v17, v21, v19);
        sub_100070EEC(v20, (v8 + 94));
        swift_errorRetain();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        sub_10003BC20(v20);

        v24 = os_log_type_enabled(v22, v23);
        v25 = v8[172];
        v26 = v8[170];
        v27 = v8[169];
        if (v24)
        {
          v61 = v8[172];
          v28 = v8[167];
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v62 = v31;
          *v29 = 136315394;
          *(v29 + 4) = sub_10017AD04(*(v28 + 56), *(v28 + 64), &v62);
          *(v29 + 12) = 2112;
          swift_errorRetain();
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v29 + 14) = v32;
          *v30 = v32;
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed to imprint postbacks for conversion id %s, with error: %@", v29, 0x16u);
          sub_10000DAF8(v30, &qword_100239F10, &qword_1001B4FD0);

          sub_10000DB58(v31);

          (*(v26 + 8))(v61, v27);
        }

        else
        {

          (*(v26 + 8))(v25, v27);
        }

        v54 = v8[173];
        v55 = v8[172];
        v56 = v8[171];
        swift_willThrow();
        sub_10014AA3C((v8 + 148));

        v57 = v8[1];
        goto LABEL_16;
      }

      v48 = v8[178];
      v49 = v8[177];
      v50 = v8[176];
      swift_endAccess();

      v8[162] = &type metadata for PostbackDatabaseStore;
      v8[163] = sub_1001494B0();
      v8[159] = v50;
      v8[160] = v49;
      v8[161] = v48;

      v51 = v48;
      v52 = swift_task_alloc();
      v8[186] = v52;
      v52[2] = v51;
      v52[3] = v8 + 159;
      v52[4] = sub_10014D2C8;
      v52[5] = v14;
      v53 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      a1 = swift_task_alloc();
      v8[187] = a1;
      *a1 = v8;
      a1[1] = sub_1001329E0;
      a6 = sub_10014D288;
      a5 = 0x80000001001CD620;
      a8 = &type metadata for () + 8;
      a2 = 0;
      a3 = 0;
      a4 = 0xD00000000000001BLL;
      a7 = v52;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v33 = v8[175];
  v34 = v8[167];

  if ((*(v34 + 74) & 1) == 0)
  {
    sub_10014AA3C((v8 + 148));
    v58 = v8[173];
    v59 = v8[172];
    v60 = v8[171];

    v57 = v8[1];
LABEL_16:

    return v57();
  }

  v35 = v8[167];
  v36 = swift_allocObject();
  v8[189] = v36;
  v36[1] = *v35;
  v37 = v35[4];
  v39 = v35[1];
  v38 = v35[2];
  v36[4] = v35[3];
  v36[5] = v37;
  v36[2] = v39;
  v36[3] = v38;
  v40 = v35[8];
  v42 = v35[5];
  v41 = v35[6];
  v36[8] = v35[7];
  v36[9] = v40;
  v36[6] = v42;
  v36[7] = v41;
  sub_100070EEC(v35, (v8 + 112));
  v43 = swift_task_alloc();
  v8[190] = v43;
  *v43 = v8;
  v43[1] = sub_10013335C;
  v44 = v8[178];
  v45 = v8[177];
  v46 = v8[176];

  return sub_10010EF70(sub_10010EF70, sub_10014C8A8, v36, v46, v45, v44);
}

uint64_t sub_1001329E0()
{
  v2 = *v1;
  v3 = (*v1)[187];
  v11 = *v1;
  (*v1)[188] = v0;

  if (v0)
  {
    v4 = v2[186];
    v5 = v2[181];
    v6 = v2[175];

    v7 = sub_1001330F4;
  }

  else
  {
    v8 = v2[186];
    v9 = v2[185];

    sub_10000DB58(v2 + 159);
    v7 = sub_100132B30;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100132B30()
{
  v68 = v0;
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[183];

  if (v2 + 1 != v3)
  {
    v28 = v0[188];
    v29 = v0[184] + 1;
    v0[184] = v29;
    v30 = v0[181];
    if (v29 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v0[175];
      v32 = v0[167];
      v33 = v30 + 296 * v29;
      memcpy(v0 + 2, (v33 + 32), 0x121uLL);
      v34 = swift_allocObject();
      v0[185] = v34;
      memmove((v34 + 16), (v33 + 32), 0x121uLL);
      swift_beginAccess();
      sub_1000B3B24((v0 + 2), (v0 + 39));
      sub_1000B17E0(v32, v31, (v0 + 148));
      if (v28)
      {
        v35 = v0[181];
        v36 = v0[175];
        swift_endAccess();

        v37 = v0[172];
        v38 = v0[170];
        v39 = v0[169];
        v40 = v0[167];
        v41 = Logger.postback.unsafeMutableAddressor();
        (*(v38 + 16))(v37, v41, v39);
        sub_100070EEC(v40, (v0 + 94));
        swift_errorRetain();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        sub_10003BC20(v40);

        v44 = os_log_type_enabled(v42, v43);
        v45 = v0[172];
        v46 = v0[170];
        v47 = v0[169];
        if (v44)
        {
          v66 = v0[172];
          v48 = v0[167];
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v67 = v51;
          *v49 = 136315394;
          *(v49 + 4) = sub_10017AD04(*(v48 + 56), *(v48 + 64), &v67);
          *(v49 + 12) = 2112;
          swift_errorRetain();
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 14) = v52;
          *v50 = v52;
          _os_log_impl(&_mh_execute_header, v42, v43, "Failed to imprint postbacks for conversion id %s, with error: %@", v49, 0x16u);
          sub_10000DAF8(v50, &qword_100239F10, &qword_1001B4FD0);

          sub_10000DB58(v51);

          (*(v46 + 8))(v66, v47);
        }

        else
        {

          (*(v46 + 8))(v45, v47);
        }

        v63 = v0[173];
        v64 = v0[172];
        v65 = v0[171];
        swift_willThrow();
        sub_10014AA3C((v0 + 148));

        v56 = v0[1];
        goto LABEL_16;
      }

      v57 = v0[178];
      v58 = v0[177];
      v59 = v0[176];
      swift_endAccess();

      v0[162] = &type metadata for PostbackDatabaseStore;
      v0[163] = sub_1001494B0();
      v0[159] = v59;
      v0[160] = v58;
      v0[161] = v57;

      v60 = v57;
      v61 = swift_task_alloc();
      v0[186] = v61;
      v61[2] = v60;
      v61[3] = v0 + 159;
      v61[4] = sub_10014D2C8;
      v61[5] = v34;
      v62 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v4 = swift_task_alloc();
      v0[187] = v4;
      *v4 = v0;
      v4[1] = sub_1001329E0;
      v9 = sub_10014D288;
      v8 = 0x80000001001CD620;
      v11 = &type metadata for () + 8;
      v5 = 0;
      v6 = 0;
      v7 = 0xD00000000000001BLL;
      v10 = v61;
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = v0[181];
  v13 = v0[175];
  v14 = v0[167];

  if (*(v14 + 74))
  {
    v15 = v0[167];
    v16 = swift_allocObject();
    v0[189] = v16;
    v16[1] = *v15;
    v17 = v15[4];
    v19 = v15[1];
    v18 = v15[2];
    v16[4] = v15[3];
    v16[5] = v17;
    v16[2] = v19;
    v16[3] = v18;
    v20 = v15[8];
    v22 = v15[5];
    v21 = v15[6];
    v16[8] = v15[7];
    v16[9] = v20;
    v16[6] = v22;
    v16[7] = v21;
    sub_100070EEC(v15, (v0 + 112));
    v23 = swift_task_alloc();
    v0[190] = v23;
    *v23 = v0;
    v23[1] = sub_10013335C;
    v24 = v0[178];
    v25 = v0[177];
    v26 = v0[176];

    return sub_10010EF70(sub_10010EF70, sub_10014C8A8, v16, v26, v25, v24);
  }

  sub_10014AA3C((v0 + 148));
  v53 = v0[173];
  v54 = v0[172];
  v55 = v0[171];

  v56 = v0[1];
LABEL_16:

  return v56();
}

uint64_t sub_1001330F4()
{
  v26 = v0;
  v1 = v0[185];

  sub_10000DB58(v0 + 159);

  v2 = v0[188];
  v3 = v0[172];
  v4 = v0[170];
  v5 = v0[169];
  v6 = v0[167];
  v7 = Logger.postback.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  sub_100070EEC(v6, (v0 + 94));
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_10003BC20(v6);

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[172];
  v12 = v0[170];
  v13 = v0[169];
  if (v10)
  {
    v24 = v0[172];
    v14 = v0[167];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_10017AD04(*(v14 + 56), *(v14 + 64), &v25);
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to imprint postbacks for conversion id %s, with error: %@", v15, 0x16u);
    sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v17);

    (*(v12 + 8))(v24, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = v0[173];
  v20 = v0[172];
  v21 = v0[171];
  swift_willThrow();
  sub_10014AA3C((v0 + 148));

  v22 = v0[1];

  return v22();
}

uint64_t sub_10013335C()
{
  v2 = *v1;
  v3 = *(*v1 + 1520);
  v4 = *v1;
  *(*v1 + 1528) = v0;

  v5 = *(v2 + 1512);

  if (v0)
  {
    v6 = sub_100133760;
  }

  else
  {
    v6 = sub_100133490;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100133490()
{
  sub_10014AA3C((v0 + 148));
  v1 = v0[173];
  v2 = v0[172];
  v3 = v0[171];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100133514()
{
  v25 = v0;
  v1 = v0[182];
  v2 = v0[172];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[167];
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, (v0 + 94));
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[172];
  v11 = v0[170];
  v12 = v0[169];
  if (v9)
  {
    v23 = v0[172];
    v13 = v0[167];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v24);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to imprint postbacks for conversion id %s, with error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v23, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = v0[173];
  v19 = v0[172];
  v20 = v0[171];
  swift_willThrow();
  sub_10014AA3C((v0 + 148));

  v21 = v0[1];

  return v21();
}

uint64_t sub_100133760()
{
  v28 = v0;
  v1 = v0[191];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[167];
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, (v0 + 130));
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[191];
    v26 = v0[171];
    v10 = v0[170];
    v11 = v0[169];
    v12 = v0[167];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_10017AD04(*(v12 + 56), *(v12 + 64), &v27);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to clear unregistered postbacks for completed conversion id %s, with error: %@", v13, 0x16u);
    sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v15);

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v17 = v0[171];
    v18 = v0[170];
    v19 = v0[169];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[191];
  v21 = v0[173];
  v22 = v0[172];
  v23 = v0[171];
  swift_willThrow();
  sub_10014AA3C((v0 + 148));

  v24 = v0[1];

  return v24();
}

uint64_t sub_1001339CC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  sub_1000E70F0(v9, a1);
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v10;
  result = (*(v6 + 8))(v9, v5);
  *a2 = v12;
  return result;
}

uint64_t sub_100133AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[197] = a4;
  v4[196] = a3;
  v4[195] = a2;
  v5 = *(*(sub_10000CDE0(&qword_100239EE0, &qword_1001B3640) - 8) + 64) + 15;
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();

  return _swift_task_switch(sub_100133BA0, 0, 0);
}

uint64_t sub_100133BA0()
{
  v1 = *(v0 + 1568);
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = **(v0 + 1560);
    v3 = (v1 + 32);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v27 = *(v5 + 56);
    v26 = (v5 + 48);
    v25 = (v5 + 8);
    do
    {
      v8 = *(v0 + 1592);
      v9 = *(v0 + 1584);
      v10 = *(v0 + 1576);
      memcpy((v0 + 616), v3, 0x121uLL);
      v27(v8, 1, 1, v4);
      sub_10003FD38(v10, v0 + 16);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      memcpy(v11 + 4, (v0 + 616), 0x121uLL);
      memcpy(v11 + 41, (v0 + 16), 0x258uLL);
      sub_100014B50(v8, v9, &qword_100239EE0, &qword_1001B3640);
      v13 = (*v26)(v9, 1, v4);
      v14 = *(v0 + 1584);
      if (v13 == 1)
      {
        sub_1000B3B24(v0 + 616, v0 + 912);
        sub_10000DAF8(v14, &qword_100239EE0, &qword_1001B3640);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1000B3B24(v0 + 616, v0 + 1208);
        TaskPriority.rawValue.getter();
        (*v25)(v14, v4);
        if (*v12)
        {
LABEL_9:
          v17 = v11[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v16 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_1001C1690;
      *(v19 + 24) = v11;

      if (v16 | v15)
      {
        v6 = v0 + 1504;
        *(v0 + 1504) = 0;
        *(v0 + 1512) = 0;
        *(v0 + 1520) = v15;
        *(v0 + 1528) = v16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 1592);
      *(v0 + 1536) = 1;
      *(v0 + 1544) = v6;
      *(v0 + 1552) = v28;
      swift_task_create();

      sub_10000DAF8(v7, &qword_100239EE0, &qword_1001B3640);
      v3 += 296;
      --v2;
    }

    while (v2);
  }

  v20 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
  v21 = swift_task_alloc();
  *(v0 + 1600) = v21;
  v22 = sub_10000CDE0(&qword_10023D660, &unk_1001C16A0);
  *v21 = v0;
  v21[1] = sub_100133F38;
  v23 = *(v0 + 1560);

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v22);
}

uint64_t sub_100133F38()
{
  v1 = *(*v0 + 1600);
  v2 = *(*v0 + 1592);
  v3 = *(*v0 + 1584);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100134064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[427] = a5;
  v5[426] = a4;
  v6 = type metadata accessor for Logger();
  v5[428] = v6;
  v7 = *(v6 - 8);
  v5[429] = v7;
  v8 = *(v7 + 64) + 15;
  v5[430] = swift_task_alloc();
  v5[431] = swift_task_alloc();
  v5[432] = swift_task_alloc();
  v5[433] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  v5[434] = v9;
  v10 = *(v9 - 8);
  v5[435] = v10;
  v11 = *(v10 + 64) + 15;
  v5[436] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v5[437] = v12;
  v13 = *(v12 - 8);
  v5[438] = v13;
  v14 = *(v13 + 64) + 15;
  v5[439] = swift_task_alloc();

  return _swift_task_switch(sub_100134204, 0, 0);
}

uint64_t sub_100134204()
{
  v1 = v0[427];
  v2 = v0[426];
  v0[440] = v2[22];
  v0[441] = v2[23];
  v3 = v1[26];
  v0[442] = v3;
  v4 = v1[27];
  v0[443] = v4;
  v5 = v1[28];
  v0[444] = v5;
  v6 = v2[4];
  v0[445] = v6;
  v7 = v2[5];
  v0[446] = v7;

  v8 = swift_task_alloc();
  v0[447] = v8;
  *v8 = v0;
  v8[1] = sub_100134300;

  return sub_1000F1318(v6, v7, v3, v4, v5);
}

uint64_t sub_100134300(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3576);
  v6 = *v2;
  *(v3 + 3584) = a1;
  *(v3 + 3837) = a2;

  return _swift_task_switch(sub_100134404, 0, 0);
}

uint64_t sub_100134404()
{
  v31 = *(v0 + 3837);
  v1 = *(v0 + 3512);
  v2 = *(v0 + 3504);
  v30 = *(v0 + 3496);
  v3 = *(v0 + 3488);
  v4 = *(v0 + 3480);
  v5 = *(v0 + 3472);
  v34 = *(v0 + 3416);
  v32 = *(v0 + 3584);
  v33 = *(v0 + 3408);
  static Date.now.getter();
  *(v0 + 1604) = enum case for Calendar.Component.hour(_:);
  v6 = *(v4 + 104);
  *(v0 + 3592) = v6;
  *(v0 + 3600) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v3);
  v7 = sub_100025808(v1, v3);
  v9 = v8;
  v10 = *(v4 + 8);
  *(v0 + 3608) = v10;
  *(v0 + 3616) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v5);
  v11 = *(v2 + 8);
  *(v0 + 3624) = v11;
  *(v0 + 3632) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1, v30);
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  v13 = objc_opt_self();
  *(v0 + 3640) = v13;
  v14 = [v13 buildVersion];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v0 + 3856) = 1;
  *(v0 + 3880) = v31 & 1;
  *(v0 + 3888) = 1;
  *(v0 + 3904) = 1;
  *(v0 + 3896) = 1;
  *(v0 + 2280) = 1031;
  *(v0 + 2288) = 0u;
  *(v0 + 2304) = 0u;
  *(v0 + 2320) = 0u;
  *(v0 + 2336) = v12;
  *(v0 + 2344) = v15;
  *(v0 + 2352) = v17;
  *(v0 + 2360) = 0;
  *(v0 + 2361) = 33686018;
  *(v0 + 2365) = 2;
  *(v0 + 2368) = 0;
  *(v0 + 2376) = 1;
  *(v0 + 2384) = v32;
  *(v0 + 2392) = v31 & 1;
  *(v0 + 2393) = 3;
  *(v0 + 2400) = 0;
  v18 = *(v0 + 3888);
  *(v0 + 2408) = v18;
  *(v0 + 2416) = 0;
  v19 = *(v0 + 3904);
  *(v0 + 2424) = v19;
  *(v0 + 2425) = 770;
  *(v0 + 2432) = 0;
  v20 = *(v0 + 3896);
  *(v0 + 2440) = v20;
  *(v0 + 2448) = 0u;
  *(v0 + 2464) = 514;
  *(v0 + 2466) = 2;
  *(v0 + 2472) = 0u;
  *(v0 + 2488) = 0u;
  *(v0 + 2056) = 1031;
  *(v0 + 2096) = 0u;
  *(v0 + 2080) = 0u;
  *(v0 + 2064) = 0u;
  *(v0 + 2112) = v12;
  *(v0 + 2120) = v15;
  *(v0 + 2128) = v17;
  *(v0 + 2136) = 0;
  *(v0 + 2141) = 2;
  *(v0 + 2137) = 33686018;
  *(v0 + 2144) = 0;
  *(v0 + 2152) = 1;
  *(v0 + 2160) = v32;
  *(v0 + 2168) = v31 & 1;
  *(v0 + 2169) = 3;
  *(v0 + 2176) = 0;
  *(v0 + 2184) = v18;
  *(v0 + 2192) = 0;
  *(v0 + 2200) = v19;
  *(v0 + 2201) = 770;
  *(v0 + 2208) = 0;
  *(v0 + 2216) = v20;
  *(v0 + 2224) = 0u;
  *(v0 + 2240) = 514;
  *(v0 + 2242) = 2;
  *(v0 + 2248) = 0u;
  *(v0 + 2264) = 0u;
  sub_100010568(v0 + 2280, v0 + 2504);
  sub_10003AE8C(v0 + 2056);
  v21 = *(v0 + 2456);
  *(v0 + 2888) = *(v0 + 2440);
  *(v0 + 2904) = v21;
  v22 = *(v0 + 2488);
  *(v0 + 2920) = *(v0 + 2472);
  *(v0 + 2936) = v22;
  v23 = *(v0 + 2392);
  *(v0 + 2824) = *(v0 + 2376);
  *(v0 + 2840) = v23;
  v24 = *(v0 + 2424);
  *(v0 + 2856) = *(v0 + 2408);
  *(v0 + 2872) = v24;
  v25 = *(v0 + 2328);
  *(v0 + 2760) = *(v0 + 2312);
  *(v0 + 2776) = v25;
  v26 = *(v0 + 2360);
  *(v0 + 2792) = *(v0 + 2344);
  *(v0 + 2808) = v26;
  v27 = *(v0 + 2296);
  *(v0 + 2728) = *(v0 + 2280);
  *(v0 + 2744) = v27;
  sub_1000C4E28(v33);
  sub_10014A628(v34 + 392, v0 + 312);
  memcpy((v0 + 16), v33, 0x121uLL);
  *(v0 + 400) = &type metadata for HTTP;
  *(v0 + 408) = &off_10021B990;
  sub_1000B3B24(v33, v0 + 1304);
  v28 = swift_task_alloc();
  *(v0 + 3648) = v28;
  *v28 = v0;
  v28[1] = sub_1001347A8;

  return sub_1000C2388();
}

uint64_t sub_1001347A8()
{
  v2 = *(*v1 + 3648);
  v5 = *v1;
  *(*v1 + 3656) = v0;

  if (v0)
  {
    v3 = sub_100134C18;
  }

  else
  {
    v3 = sub_1001348BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001348BC()
{
  v33 = v0;
  sub_10014A684(v0 + 16);
  *(v0 + 3838) = 0;
  v1 = *(v0 + 3464);
  v2 = *(v0 + 3432);
  v3 = *(v0 + 3424);
  v4 = *(v0 + 3408);
  v5 = Logger.postback.unsafeMutableAddressor();
  *(v0 + 3664) = v5;
  v6 = *(v2 + 16);
  *(v0 + 3672) = v6;
  *(v0 + 3680) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_1000B3B24(v4, v0 + 712);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 3408);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 134218242;
    *(v10 + 4) = *(v9 + 64);
    sub_10003C04C(v9);
    *(v10 + 12) = 2080;
    v12 = *(v0 + 3464);
    v13 = *(v0 + 3432);
    v14 = *(v0 + 3424);
    v15 = sub_10017AD04(0x73736563637573, 0xE700000000000000, &v32);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Postback transmission for app %llu completed with result: %s", v10, 0x16u);
    sub_10000DB58(v11);

    v16 = *(v13 + 8);
    v16(v12, v14);
  }

  else
  {
    v17 = *(v0 + 3464);
    v18 = *(v0 + 3432);
    v19 = *(v0 + 3424);
    sub_10003C04C(*(v0 + 3408));

    v16 = *(v18 + 8);
    v16(v17, v19);
  }

  *(v0 + 3688) = v16;
  v20 = *(v0 + 3528);
  sub_10000DA7C((*(v0 + 3416) + 560), *(*(v0 + 3416) + 584));
  v21 = *(v0 + 2904);
  *(v0 + 1768) = *(v0 + 2888);
  *(v0 + 1784) = v21;
  v22 = *(v0 + 2936);
  *(v0 + 1800) = *(v0 + 2920);
  *(v0 + 1816) = v22;
  v23 = *(v0 + 2840);
  *(v0 + 1704) = *(v0 + 2824);
  *(v0 + 1720) = v23;
  v24 = *(v0 + 2872);
  *(v0 + 1736) = *(v0 + 2856);
  *(v0 + 1752) = v24;
  v25 = *(v0 + 2776);
  *(v0 + 1640) = *(v0 + 2760);
  *(v0 + 1656) = v25;
  v26 = *(v0 + 2808);
  *(v0 + 1672) = *(v0 + 2792);
  *(v0 + 1688) = v26;
  v27 = *(v0 + 2744);
  *(v0 + 1608) = *(v0 + 2728);
  *(v0 + 1624) = v27;
  *(v0 + 3696) = &unk_1001C3B20;
  *(v0 + 3704) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
  v28 = type metadata accessor for SnoutManager();
  *(v0 + 3712) = v28;
  v29 = swift_task_alloc();
  *(v0 + 3720) = v29;
  *v29 = v0;
  v29[1] = sub_1001352E4;
  v30 = *(v0 + 3520);

  return (sub_10016E27C)(v0 + 1608, v30, v20, 1, v28, &off_100223858);
}

uint64_t sub_100134C18()
{
  v89 = v0;
  v1 = *(v0 + 3656);
  sub_10014A684(v0 + 16);
  *(v0 + 3400) = v1;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 3836) & 1) == 0)
  {
    v32 = *(v0 + 3656);
    v33 = *(v0 + 3456);
    v34 = *(v0 + 3432);
    v35 = *(v0 + 3424);

    v36 = Logger.postback.unsafeMutableAddressor();
    (*(v34 + 16))(v33, v36, v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Postback has invalid URL, deleting", v39, 2u);
    }

    v40 = *(v0 + 3456);
    v41 = *(v0 + 3432);
    v42 = *(v0 + 3424);

    (*(v41 + 8))(v40, v42);
    sub_1000C33F0();
    v43 = swift_allocError();
    *v44 = 0;
    v45 = sub_1000C7C10(v43);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = *(v0 + 2744);

    *(v0 + 2736) = v45;
    *(v0 + 2744) = v47;
    v53 = *(v0 + 2760);

    *(v0 + 2752) = v49;
    *(v0 + 2760) = v51;
    v54 = *(v0 + 3400);

    v30 = 0;
    v31 = 2;
    v29 = 1;
  }

  else
  {
    v2 = *(v0 + 3656);
    v3 = *(v0 + 3448);
    v4 = *(v0 + 3432);
    v5 = *(v0 + 3424);
    v6 = *(v0 + 3408);
    v7 = *(v0 + 3400);

    v8 = Logger.postback.unsafeMutableAddressor();
    (*(v4 + 16))(v3, v8, v5);
    sub_1000B3B24(v6, v0 + 1008);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 3656);
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 134218242;
      *(v13 + 4) = *(v12 + 64);
      sub_10003C04C(v12);
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Postback transmission failed for app: %llu with error: %@", v13, 0x16u);
      sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
      sub_10003C04C(*(v0 + 3408));
    }

    v16 = *(v0 + 3656);
    v17 = *(v0 + 3448);
    v18 = *(v0 + 3432);
    v19 = *(v0 + 3424);

    (*(v18 + 8))(v17, v19);
    v20 = sub_1000C7C10(v16);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = *(v0 + 2744);

    *(v0 + 2736) = v20;
    *(v0 + 2744) = v22;
    v28 = *(v0 + 2760);

    v29 = 0;
    *(v0 + 2752) = v24;
    *(v0 + 2760) = v26;
    v30 = 1;
    v31 = 1;
  }

  *(v0 + 3839) = v31;
  *(v0 + 3838) = v30;
  v55 = *(v0 + 3464);
  v56 = *(v0 + 3432);
  v57 = *(v0 + 3424);
  v58 = *(v0 + 3408);
  v59 = Logger.postback.unsafeMutableAddressor();
  *(v0 + 3664) = v59;
  v60 = *(v56 + 16);
  *(v0 + 3672) = v60;
  *(v0 + 3680) = (v56 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60(v55, v59, v57);
  sub_1000B3B24(v58, v0 + 712);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 3408);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v88 = v65;
    *v64 = 134218242;
    *(v64 + 4) = *(v63 + 64);
    sub_10003C04C(v63);
    *(v64 + 12) = 2080;
    if (v29)
    {
      v66 = 0xD000000000000014;
    }

    else
    {
      v66 = 0x6572756C696166;
    }

    if (v29)
    {
      v67 = 0x80000001001CD670;
    }

    else
    {
      v67 = 0xE700000000000000;
    }

    v68 = *(v0 + 3464);
    v69 = *(v0 + 3432);
    v70 = *(v0 + 3424);
    v71 = sub_10017AD04(v66, v67, &v88);

    *(v64 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v61, v62, "Postback transmission for app %llu completed with result: %s", v64, 0x16u);
    sub_10000DB58(v65);

    v72 = *(v69 + 8);
    v72(v68, v70);
  }

  else
  {
    v73 = *(v0 + 3464);
    v74 = *(v0 + 3432);
    v75 = *(v0 + 3424);
    sub_10003C04C(*(v0 + 3408));

    v72 = *(v74 + 8);
    v72(v73, v75);
  }

  *(v0 + 3688) = v72;
  v76 = *(v0 + 3528);
  sub_10000DA7C((*(v0 + 3416) + 560), *(*(v0 + 3416) + 584));
  v77 = *(v0 + 2904);
  *(v0 + 1768) = *(v0 + 2888);
  *(v0 + 1784) = v77;
  v78 = *(v0 + 2936);
  *(v0 + 1800) = *(v0 + 2920);
  *(v0 + 1816) = v78;
  v79 = *(v0 + 2840);
  *(v0 + 1704) = *(v0 + 2824);
  *(v0 + 1720) = v79;
  v80 = *(v0 + 2872);
  *(v0 + 1736) = *(v0 + 2856);
  *(v0 + 1752) = v80;
  v81 = *(v0 + 2776);
  *(v0 + 1640) = *(v0 + 2760);
  *(v0 + 1656) = v81;
  v82 = *(v0 + 2808);
  *(v0 + 1672) = *(v0 + 2792);
  *(v0 + 1688) = v82;
  v83 = *(v0 + 2744);
  *(v0 + 1608) = *(v0 + 2728);
  *(v0 + 1624) = v83;
  *(v0 + 3696) = &unk_1001C3B20;
  *(v0 + 3704) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
  v84 = type metadata accessor for SnoutManager();
  *(v0 + 3712) = v84;
  v85 = swift_task_alloc();
  *(v0 + 3720) = v85;
  *v85 = v0;
  v85[1] = sub_1001352E4;
  v86 = *(v0 + 3520);

  return (sub_10016E27C)(v0 + 1608, v86, v76, 1, v84, &off_100223858);
}

uint64_t sub_1001352E4()
{
  v1 = *v0;
  v2 = *(*v0 + 3720);
  v4 = *v0;

  sub_10003AE8C(v1 + 1608);

  return _swift_task_switch(sub_1001353E8, 0, 0);
}

uint64_t sub_1001353E8()
{
  if (*(v0 + 3838) == 1)
  {
    v1 = *(v0 + 3568);
    v17 = *(v0 + 3408);

    v2 = swift_task_alloc();
    *(v0 + 3728) = v2;
    v2[1] = vextq_s8(v17, v17, 8uLL);
    v3 = swift_task_alloc();
    *(v0 + 3736) = v3;
    *v3 = v0;
    v3[1] = sub_1001355DC;
    v4 = *(v0 + 3568);
    v5 = *(v0 + 3560);
    v6 = *(v0 + 3552);
    v7 = *(v0 + 3544);
    v8 = *(v0 + 3536);

    return sub_1000F01F0(v5, v4, 1, &unk_1001C16B8, v2, v8, v7, v6);
  }

  else
  {
    v10 = *(v0 + 3416);
    v11 = *(v0 + 3408);
    v13 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v15 = swift_allocObject();
    *(v0 + 3752) = v15;
    memcpy((v15 + 16), v11, 0x121uLL);
    sub_1000B3B24(v11, v0 + 416);
    v16 = swift_task_alloc();
    *(v0 + 3760) = v16;
    *v16 = v0;
    v16[1] = sub_1001356F8;

    return sub_10010EF70(sub_10010EF70, sub_10014A6DC, v15, v13, v12, v14);
  }
}

uint64_t sub_1001355DC()
{
  v2 = *v1;
  v3 = *(*v1 + 3736);
  v7 = *v1;
  *(*v1 + 3744) = v0;

  if (v0)
  {
    v4 = sub_1001363C4;
  }

  else
  {
    v5 = *(v2 + 3728);

    v4 = sub_10014D66C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001356F8()
{
  v2 = *v1;
  v3 = *(*v1 + 3760);
  v4 = *(*v1 + 3752);
  v8 = *v1;
  *(*v1 + 3768) = v0;

  if (v0)
  {
    v5 = *(v2 + 3568);

    v6 = sub_100136AB8;
  }

  else
  {
    v6 = sub_100135838;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100135838()
{
  v1 = v0[446];
  v2 = v0[445];
  v3 = swift_allocObject();
  v0[472] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[473] = v4;
  *v4 = v0;
  v4[1] = sub_10013592C;
  v5 = v0[444];
  v6 = v0[443];
  v7 = v0[442];

  return sub_10010E890(sub_10010E890, sub_10014D680, v3, v7, v6, v5);
}

uint64_t sub_10013592C()
{
  v2 = *(*v1 + 3784);
  v3 = *(*v1 + 3776);
  v6 = *v1;
  *(*v1 + 3792) = v0;

  if (v0)
  {
    v4 = sub_100135B08;
  }

  else
  {
    v4 = sub_100135A5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100135A5C()
{
  v1 = v0[439];
  v2 = v0[436];
  v3 = v0[433];
  v4 = v0[432];
  v5 = v0[431];
  v6 = v0[430];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100135B08()
{
  v1 = *(v0 + 3792);
  *(v0 + 3800) = v1;
  v2 = *(v0 + 3680);
  (*(v0 + 3672))(*(v0 + 3440), *(v0 + 3664), *(v0 + 3424));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during cleanup after postback transmission: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 3688);
  v9 = *(v0 + 3839);
  v10 = *(v0 + 3440);
  v11 = *(v0 + 3432);
  v12 = *(v0 + 3424);

  v8(v10, v12);
  if (v9)
  {
    if (v9 == 2)
    {
      v13 = 0x80000001001CD670;
      v14 = 0xD000000000000014;
    }

    else
    {
      v13 = 0xE700000000000000;
      v14 = 0x6572756C696166;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    v14 = 0x73736563637573;
  }

  v68 = (v0 + 3825);
  v70 = (v0 + 1593);
  v63 = (v0 + 3830);
  v64 = (v0 + 1297);
  v66 = (v0 + 1598);
  v67 = (v0 + 1001);
  v69 = (v0 + 705);
  *(v0 + 3808) = v13;
  v73 = *(v0 + 3696);
  v74 = *(v0 + 3704);
  v60 = *(v0 + 3632);
  v61 = *(v0 + 3640);
  v58 = *(v0 + 3616);
  v59 = *(v0 + 3624);
  v57 = *(v0 + 3608);
  v51 = *(v0 + 3592);
  v52 = *(v0 + 3600);
  v50 = *(v0 + 1604);
  v75 = *(v0 + 3528);
  v15 = *(v0 + 3512);
  v56 = *(v0 + 3496);
  v16 = *(v0 + 3488);
  v17 = *(v0 + 3472);
  v71 = *(v0 + 3416);
  v18 = *(v0 + 3408);
  v65 = *(v18 + 104) > 1u;
  sub_1000401C4();
  v19 = swift_allocError();
  *v20 = v1;
  v20[1] = v14;
  v20[2] = v13;
  v62 = *(v18 + 112);
  swift_errorRetain();
  swift_errorRetain();

  swift_errorRetain();
  v21 = sub_1000C7C10(v19);
  v54 = v23;
  v55 = v22;
  v53 = v24;

  static Date.now.getter();
  v51(v16, v50, v17);
  v25 = sub_100025808(v15, v16);
  v27 = v26;
  v57(v16, v17);
  v59(v15, v56);
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  v29 = [v61 buildVersion];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v0 + 3824) = 0;
  *(v0 + 3840) = 1;
  *(v0 + 3848) = 1;
  *(v0 + 3864) = 1;
  *(v0 + 3872) = 1;
  *(v0 + 2952) = 773;
  *(v0 + 2954) = *v63;
  *(v0 + 2958) = *(v0 + 3834);
  *(v0 + 2960) = v21;
  *(v0 + 2968) = v55;
  *(v0 + 2976) = v54;
  *(v0 + 2984) = v53;
  *(v0 + 2992) = 0u;
  *(v0 + 3008) = v28;
  *(v0 + 3016) = v30;
  *(v0 + 3024) = v32;
  *(v0 + 3032) = 0;
  *(v0 + 3033) = 33686018;
  *(v0 + 3037) = 1;
  *(v0 + 3040) = v62;
  v33 = *(v0 + 3824);
  *(v0 + 3048) = v33;
  *(v0 + 3049) = *v64;
  *(v0 + 3052) = *(v0 + 1300);
  *(v0 + 3056) = 0;
  v34 = *(v0 + 3840);
  *(v0 + 3064) = v34;
  *(v0 + 3065) = 3;
  *(v0 + 3066) = *v66;
  *(v0 + 3070) = *(v0 + 1602);
  *(v0 + 3072) = 0;
  v35 = *(v0 + 3848);
  *(v0 + 3080) = v35;
  *(v0 + 3081) = *v67;
  *(v0 + 3084) = *(v0 + 1004);
  *(v0 + 3088) = 0;
  v36 = *(v0 + 3864);
  *(v0 + 3096) = v36;
  *(v0 + 3097) = v65;
  *(v0 + 3098) = 3;
  *(v0 + 3099) = *v68;
  *(v0 + 3103) = *(v0 + 3829);
  *(v0 + 3104) = 0;
  v37 = *(v0 + 3872);
  *(v0 + 3112) = v37;
  *(v0 + 3116) = *(v0 + 708);
  *(v0 + 3113) = *v69;
  *(v0 + 3120) = 0u;
  *(v0 + 3136) = 514;
  *(v0 + 3138) = 2;
  *(v0 + 3143) = *(v0 + 1597);
  *(v0 + 3139) = *v70;
  *(v0 + 3144) = 0u;
  *(v0 + 3160) = 0u;
  *(v0 + 1832) = 773;
  *(v0 + 1838) = *(v0 + 3834);
  *(v0 + 1834) = *v63;
  *(v0 + 1840) = v21;
  *(v0 + 1848) = v55;
  *(v0 + 1856) = v54;
  *(v0 + 1864) = v53;
  *(v0 + 1872) = 0u;
  *(v0 + 1888) = v28;
  *(v0 + 1896) = v30;
  *(v0 + 1904) = v32;
  *(v0 + 1912) = 0;
  *(v0 + 1913) = 33686018;
  *(v0 + 1917) = 1;
  *(v0 + 1920) = v62;
  *(v0 + 1928) = v33;
  v38 = *v64;
  *(v0 + 1932) = *(v0 + 1300);
  *(v0 + 1929) = v38;
  *(v0 + 1936) = 0;
  *(v0 + 1944) = v34;
  *(v0 + 1945) = 3;
  v39 = *v66;
  *(v0 + 1950) = *(v0 + 1602);
  *(v0 + 1946) = v39;
  *(v0 + 1952) = 0;
  *(v0 + 1960) = v35;
  v40 = *v67;
  *(v0 + 1964) = *(v0 + 1004);
  *(v0 + 1961) = v40;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = v36;
  *(v0 + 1977) = v65;
  *(v0 + 1978) = 3;
  v41 = *v68;
  *(v0 + 1983) = *(v0 + 3829);
  *(v0 + 1979) = v41;
  *(v0 + 1984) = 0;
  *(v0 + 1992) = v37;
  v42 = *v69;
  *(v0 + 1996) = *(v0 + 708);
  *(v0 + 1993) = v42;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 514;
  *(v0 + 2018) = 2;
  v43 = *v70;
  *(v0 + 2023) = *(v0 + 1597);
  *(v0 + 2019) = v43;
  *(v0 + 2024) = 0u;
  *(v0 + 2040) = 0u;
  sub_100010568(v0 + 2952, v0 + 3176);
  sub_10003AE8C(v0 + 1832);
  sub_10000DA7C((v71 + 560), *(v71 + 584));
  v72 = (v73 + *v73);
  v44 = v73[1];
  v45 = swift_task_alloc();
  *(v0 + 3816) = v45;
  *v45 = v0;
  v45[1] = sub_1001361F4;
  v46 = *(v0 + 3712);
  v47 = *(v0 + 3704);
  v48 = *(v0 + 3520);

  return (v72)(v0 + 2952, v48, v75, 1, v46, &off_100223858);
}

uint64_t sub_1001361F4()
{
  v1 = *v0;
  v2 = *(*v0 + 3816);
  v4 = *v0;

  sub_10003AE8C(v1 + 2952);

  return _swift_task_switch(sub_1001362F8, 0, 0);
}

uint64_t sub_1001362F8()
{
  v1 = v0[476];
  v2 = v0[475];

  v3 = v0[439];
  v4 = v0[436];
  v5 = v0[433];
  v6 = v0[432];
  v7 = v0[431];
  v8 = v0[430];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001363C4()
{
  v1 = *(v0 + 3728);

  v2 = *(v0 + 3744);
  *(v0 + 3800) = v2;
  v3 = *(v0 + 3680);
  (*(v0 + 3672))(*(v0 + 3440), *(v0 + 3664), *(v0 + 3424));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error during cleanup after postback transmission: %@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v9 = *(v0 + 3688);
  v10 = *(v0 + 3839);
  v11 = *(v0 + 3440);
  v12 = *(v0 + 3432);
  v13 = *(v0 + 3424);

  v9(v11, v13);
  if (v10)
  {
    if (v10 == 2)
    {
      v14 = 0x80000001001CD670;
      v15 = 0xD000000000000014;
    }

    else
    {
      v14 = 0xE700000000000000;
      v15 = 0x6572756C696166;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    v15 = 0x73736563637573;
  }

  v69 = (v0 + 3825);
  v71 = (v0 + 1593);
  v64 = (v0 + 3830);
  v65 = (v0 + 1297);
  v67 = (v0 + 1598);
  v68 = (v0 + 1001);
  v70 = (v0 + 705);
  *(v0 + 3808) = v14;
  v74 = *(v0 + 3696);
  v75 = *(v0 + 3704);
  v61 = *(v0 + 3632);
  v62 = *(v0 + 3640);
  v59 = *(v0 + 3616);
  v60 = *(v0 + 3624);
  v58 = *(v0 + 3608);
  v52 = *(v0 + 3592);
  v53 = *(v0 + 3600);
  v51 = *(v0 + 1604);
  v76 = *(v0 + 3528);
  v16 = *(v0 + 3512);
  v57 = *(v0 + 3496);
  v17 = *(v0 + 3488);
  v18 = *(v0 + 3472);
  v72 = *(v0 + 3416);
  v19 = *(v0 + 3408);
  v66 = *(v19 + 104) > 1u;
  sub_1000401C4();
  v20 = swift_allocError();
  *v21 = v2;
  v21[1] = v15;
  v21[2] = v14;
  v63 = *(v19 + 112);
  swift_errorRetain();
  swift_errorRetain();

  swift_errorRetain();
  v22 = sub_1000C7C10(v20);
  v55 = v24;
  v56 = v23;
  v54 = v25;

  static Date.now.getter();
  v52(v17, v51, v18);
  v26 = sub_100025808(v16, v17);
  v28 = v27;
  v58(v17, v18);
  v60(v16, v57);
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26;
  }

  v30 = [v62 buildVersion];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v0 + 3824) = 0;
  *(v0 + 3840) = 1;
  *(v0 + 3848) = 1;
  *(v0 + 3864) = 1;
  *(v0 + 3872) = 1;
  *(v0 + 2952) = 773;
  *(v0 + 2954) = *v64;
  *(v0 + 2958) = *(v0 + 3834);
  *(v0 + 2960) = v22;
  *(v0 + 2968) = v56;
  *(v0 + 2976) = v55;
  *(v0 + 2984) = v54;
  *(v0 + 2992) = 0u;
  *(v0 + 3008) = v29;
  *(v0 + 3016) = v31;
  *(v0 + 3024) = v33;
  *(v0 + 3032) = 0;
  *(v0 + 3033) = 33686018;
  *(v0 + 3037) = 1;
  *(v0 + 3040) = v63;
  v34 = *(v0 + 3824);
  *(v0 + 3048) = v34;
  *(v0 + 3049) = *v65;
  *(v0 + 3052) = *(v0 + 1300);
  *(v0 + 3056) = 0;
  v35 = *(v0 + 3840);
  *(v0 + 3064) = v35;
  *(v0 + 3065) = 3;
  *(v0 + 3066) = *v67;
  *(v0 + 3070) = *(v0 + 1602);
  *(v0 + 3072) = 0;
  v36 = *(v0 + 3848);
  *(v0 + 3080) = v36;
  *(v0 + 3081) = *v68;
  *(v0 + 3084) = *(v0 + 1004);
  *(v0 + 3088) = 0;
  v37 = *(v0 + 3864);
  *(v0 + 3096) = v37;
  *(v0 + 3097) = v66;
  *(v0 + 3098) = 3;
  *(v0 + 3099) = *v69;
  *(v0 + 3103) = *(v0 + 3829);
  *(v0 + 3104) = 0;
  v38 = *(v0 + 3872);
  *(v0 + 3112) = v38;
  *(v0 + 3116) = *(v0 + 708);
  *(v0 + 3113) = *v70;
  *(v0 + 3120) = 0u;
  *(v0 + 3136) = 514;
  *(v0 + 3138) = 2;
  *(v0 + 3143) = *(v0 + 1597);
  *(v0 + 3139) = *v71;
  *(v0 + 3144) = 0u;
  *(v0 + 3160) = 0u;
  *(v0 + 1832) = 773;
  *(v0 + 1838) = *(v0 + 3834);
  *(v0 + 1834) = *v64;
  *(v0 + 1840) = v22;
  *(v0 + 1848) = v56;
  *(v0 + 1856) = v55;
  *(v0 + 1864) = v54;
  *(v0 + 1872) = 0u;
  *(v0 + 1888) = v29;
  *(v0 + 1896) = v31;
  *(v0 + 1904) = v33;
  *(v0 + 1912) = 0;
  *(v0 + 1913) = 33686018;
  *(v0 + 1917) = 1;
  *(v0 + 1920) = v63;
  *(v0 + 1928) = v34;
  v39 = *v65;
  *(v0 + 1932) = *(v0 + 1300);
  *(v0 + 1929) = v39;
  *(v0 + 1936) = 0;
  *(v0 + 1944) = v35;
  *(v0 + 1945) = 3;
  v40 = *v67;
  *(v0 + 1950) = *(v0 + 1602);
  *(v0 + 1946) = v40;
  *(v0 + 1952) = 0;
  *(v0 + 1960) = v36;
  v41 = *v68;
  *(v0 + 1964) = *(v0 + 1004);
  *(v0 + 1961) = v41;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = v37;
  *(v0 + 1977) = v66;
  *(v0 + 1978) = 3;
  v42 = *v69;
  *(v0 + 1983) = *(v0 + 3829);
  *(v0 + 1979) = v42;
  *(v0 + 1984) = 0;
  *(v0 + 1992) = v38;
  v43 = *v70;
  *(v0 + 1996) = *(v0 + 708);
  *(v0 + 1993) = v43;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 514;
  *(v0 + 2018) = 2;
  v44 = *v71;
  *(v0 + 2023) = *(v0 + 1597);
  *(v0 + 2019) = v44;
  *(v0 + 2024) = 0u;
  *(v0 + 2040) = 0u;
  sub_100010568(v0 + 2952, v0 + 3176);
  sub_10003AE8C(v0 + 1832);
  sub_10000DA7C((v72 + 560), *(v72 + 584));
  v73 = (v74 + *v74);
  v45 = v74[1];
  v46 = swift_task_alloc();
  *(v0 + 3816) = v46;
  *v46 = v0;
  v46[1] = sub_1001361F4;
  v47 = *(v0 + 3712);
  v48 = *(v0 + 3704);
  v49 = *(v0 + 3520);

  return (v73)(v0 + 2952, v49, v76, 1, v47, &off_100223858);
}

uint64_t sub_100136AB8()
{
  v1 = *(v0 + 3768);
  *(v0 + 3800) = v1;
  v2 = *(v0 + 3680);
  (*(v0 + 3672))(*(v0 + 3440), *(v0 + 3664), *(v0 + 3424));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during cleanup after postback transmission: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 3688);
  v9 = *(v0 + 3839);
  v10 = *(v0 + 3440);
  v11 = *(v0 + 3432);
  v12 = *(v0 + 3424);

  v8(v10, v12);
  if (v9)
  {
    if (v9 == 2)
    {
      v13 = 0x80000001001CD670;
      v14 = 0xD000000000000014;
    }

    else
    {
      v13 = 0xE700000000000000;
      v14 = 0x6572756C696166;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    v14 = 0x73736563637573;
  }

  v68 = (v0 + 3825);
  v70 = (v0 + 1593);
  v63 = (v0 + 3830);
  v64 = (v0 + 1297);
  v66 = (v0 + 1598);
  v67 = (v0 + 1001);
  v69 = (v0 + 705);
  *(v0 + 3808) = v13;
  v73 = *(v0 + 3696);
  v74 = *(v0 + 3704);
  v60 = *(v0 + 3632);
  v61 = *(v0 + 3640);
  v58 = *(v0 + 3616);
  v59 = *(v0 + 3624);
  v57 = *(v0 + 3608);
  v51 = *(v0 + 3592);
  v52 = *(v0 + 3600);
  v50 = *(v0 + 1604);
  v75 = *(v0 + 3528);
  v15 = *(v0 + 3512);
  v56 = *(v0 + 3496);
  v16 = *(v0 + 3488);
  v17 = *(v0 + 3472);
  v71 = *(v0 + 3416);
  v18 = *(v0 + 3408);
  v65 = *(v18 + 104) > 1u;
  sub_1000401C4();
  v19 = swift_allocError();
  *v20 = v1;
  v20[1] = v14;
  v20[2] = v13;
  v62 = *(v18 + 112);
  swift_errorRetain();
  swift_errorRetain();

  swift_errorRetain();
  v21 = sub_1000C7C10(v19);
  v54 = v23;
  v55 = v22;
  v53 = v24;

  static Date.now.getter();
  v51(v16, v50, v17);
  v25 = sub_100025808(v15, v16);
  v27 = v26;
  v57(v16, v17);
  v59(v15, v56);
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  v29 = [v61 buildVersion];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v0 + 3824) = 0;
  *(v0 + 3840) = 1;
  *(v0 + 3848) = 1;
  *(v0 + 3864) = 1;
  *(v0 + 3872) = 1;
  *(v0 + 2952) = 773;
  *(v0 + 2954) = *v63;
  *(v0 + 2958) = *(v0 + 3834);
  *(v0 + 2960) = v21;
  *(v0 + 2968) = v55;
  *(v0 + 2976) = v54;
  *(v0 + 2984) = v53;
  *(v0 + 2992) = 0u;
  *(v0 + 3008) = v28;
  *(v0 + 3016) = v30;
  *(v0 + 3024) = v32;
  *(v0 + 3032) = 0;
  *(v0 + 3033) = 33686018;
  *(v0 + 3037) = 1;
  *(v0 + 3040) = v62;
  v33 = *(v0 + 3824);
  *(v0 + 3048) = v33;
  *(v0 + 3049) = *v64;
  *(v0 + 3052) = *(v0 + 1300);
  *(v0 + 3056) = 0;
  v34 = *(v0 + 3840);
  *(v0 + 3064) = v34;
  *(v0 + 3065) = 3;
  *(v0 + 3066) = *v66;
  *(v0 + 3070) = *(v0 + 1602);
  *(v0 + 3072) = 0;
  v35 = *(v0 + 3848);
  *(v0 + 3080) = v35;
  *(v0 + 3081) = *v67;
  *(v0 + 3084) = *(v0 + 1004);
  *(v0 + 3088) = 0;
  v36 = *(v0 + 3864);
  *(v0 + 3096) = v36;
  *(v0 + 3097) = v65;
  *(v0 + 3098) = 3;
  *(v0 + 3099) = *v68;
  *(v0 + 3103) = *(v0 + 3829);
  *(v0 + 3104) = 0;
  v37 = *(v0 + 3872);
  *(v0 + 3112) = v37;
  *(v0 + 3116) = *(v0 + 708);
  *(v0 + 3113) = *v69;
  *(v0 + 3120) = 0u;
  *(v0 + 3136) = 514;
  *(v0 + 3138) = 2;
  *(v0 + 3143) = *(v0 + 1597);
  *(v0 + 3139) = *v70;
  *(v0 + 3144) = 0u;
  *(v0 + 3160) = 0u;
  *(v0 + 1832) = 773;
  *(v0 + 1838) = *(v0 + 3834);
  *(v0 + 1834) = *v63;
  *(v0 + 1840) = v21;
  *(v0 + 1848) = v55;
  *(v0 + 1856) = v54;
  *(v0 + 1864) = v53;
  *(v0 + 1872) = 0u;
  *(v0 + 1888) = v28;
  *(v0 + 1896) = v30;
  *(v0 + 1904) = v32;
  *(v0 + 1912) = 0;
  *(v0 + 1913) = 33686018;
  *(v0 + 1917) = 1;
  *(v0 + 1920) = v62;
  *(v0 + 1928) = v33;
  v38 = *v64;
  *(v0 + 1932) = *(v0 + 1300);
  *(v0 + 1929) = v38;
  *(v0 + 1936) = 0;
  *(v0 + 1944) = v34;
  *(v0 + 1945) = 3;
  v39 = *v66;
  *(v0 + 1950) = *(v0 + 1602);
  *(v0 + 1946) = v39;
  *(v0 + 1952) = 0;
  *(v0 + 1960) = v35;
  v40 = *v67;
  *(v0 + 1964) = *(v0 + 1004);
  *(v0 + 1961) = v40;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = v36;
  *(v0 + 1977) = v65;
  *(v0 + 1978) = 3;
  v41 = *v68;
  *(v0 + 1983) = *(v0 + 3829);
  *(v0 + 1979) = v41;
  *(v0 + 1984) = 0;
  *(v0 + 1992) = v37;
  v42 = *v69;
  *(v0 + 1996) = *(v0 + 708);
  *(v0 + 1993) = v42;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 514;
  *(v0 + 2018) = 2;
  v43 = *v70;
  *(v0 + 2023) = *(v0 + 1597);
  *(v0 + 2019) = v43;
  *(v0 + 2024) = 0u;
  *(v0 + 2040) = 0u;
  sub_100010568(v0 + 2952, v0 + 3176);
  sub_10003AE8C(v0 + 1832);
  sub_10000DA7C((v71 + 560), *(v71 + 584));
  v72 = (v73 + *v73);
  v44 = v73[1];
  v45 = swift_task_alloc();
  *(v0 + 3816) = v45;
  *v45 = v0;
  v45[1] = sub_1001361F4;
  v46 = *(v0 + 3712);
  v47 = *(v0 + 3704);
  v48 = *(v0 + 3520);

  return (v72)(v0 + 2952, v48, v75, 1, v46, &off_100223858);
}

uint64_t sub_1001371A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return _swift_task_switch(sub_1001371C4, 0, 0);
}

uint64_t sub_1001371C4()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v0[41] = v6;
  memcpy((v6 + 16), v2, 0x121uLL);
  sub_1000B3B24(v2, (v0 + 2));
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_1001372DC;

  return sub_10010EF70(sub_10010EF70, sub_10014D568, v6, v4, v3, v5);
}

uint64_t sub_1001372DC()
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 328);
  v6 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_10013740C;
  }

  else
  {
    v4 = sub_1000FB99C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100137450(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 1864) = v3;
  *(v4 + 2088) = a3;
  *(v4 + 1856) = a2;
  *(v4 + 1848) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 1872) = v5;
  v6 = *(v5 - 8);
  *(v4 + 1880) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 1888) = swift_task_alloc();

  return _swift_task_switch(sub_10013751C, 0, 0);
}

uint64_t sub_10013751C()
{
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);
  sub_1000C7DDC(*(v0 + 2088), 0, (v0 + 464));
  v4 = *(v0 + 480);
  *(v0 + 1896) = *(v0 + 464);
  *(v0 + 1912) = v4;
  *(v0 + 1928) = *(v0 + 496);
  v5 = *(v0 + 648);
  *(v0 + 1040) = *(v0 + 632);
  *(v0 + 1056) = v5;
  *(v0 + 1072) = *(v0 + 664);
  *(v0 + 1088) = *(v0 + 680);
  v6 = *(v0 + 584);
  *(v0 + 976) = *(v0 + 568);
  *(v0 + 992) = v6;
  v7 = *(v0 + 616);
  *(v0 + 1008) = *(v0 + 600);
  *(v0 + 1024) = v7;
  v8 = *(v0 + 520);
  *(v0 + 912) = *(v0 + 504);
  *(v0 + 928) = v8;
  v9 = *(v0 + 552);
  *(v0 + 944) = *(v0 + 536);
  *(v0 + 960) = v9;
  v10 = v1[3];
  *(v0 + 1936) = v10;
  v11 = v1[4];
  *(v0 + 1944) = v11;
  v12 = v1[5];
  *(v0 + 1952) = v12;
  v13 = swift_allocObject();
  *(v0 + 1960) = v13;
  *(v13 + 16) = v3;
  *(v13 + 24) = v2;

  v14 = swift_task_alloc();
  *(v0 + 1968) = v14;
  *v14 = v0;
  v14[1] = sub_1001376B0;

  return (sub_10010FAD4)(v0 + 1096, sub_10014BAAC, v13, v10, v11, v12);
}

uint64_t sub_1001376B0()
{
  v2 = *v1;
  v3 = *(*v1 + 1968);
  v7 = *v1;
  *(*v1 + 1976) = v0;

  v4 = *(v2 + 1960);

  if (v0)
  {
    v5 = sub_1001388DC;
  }

  else
  {
    v5 = sub_1001377D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001377D4()
{
  v1 = *(v0 + 1208);
  *(v0 + 1336) = *(v0 + 1192);
  *(v0 + 1352) = v1;
  *(v0 + 1368) = *(v0 + 1224);
  v2 = *(v0 + 1144);
  *(v0 + 1272) = *(v0 + 1128);
  *(v0 + 1288) = v2;
  v3 = *(v0 + 1176);
  *(v0 + 1304) = *(v0 + 1160);
  *(v0 + 1320) = v3;
  v4 = *(v0 + 1112);
  *(v0 + 1240) = *(v0 + 1096);
  *(v0 + 1256) = v4;
  if (sub_10014B138(v0 + 1240) == 1)
  {
    sub_1000401C4();
    v5 = swift_allocError();
    v6[1] = 0;
    v6[2] = 0;
    *v6 = 11;
    swift_willThrow();
    *(v0 + 2072) = v5;
    v7 = *(v0 + 1888);
    v8 = *(v0 + 1880);
    v9 = *(v0 + 1872);
    v10 = Logger.postback.unsafeMutableAddressor();
    (*(v8 + 16))(v7, v10, v9);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Pending postback attribution failed %@", v13, 0xCu);
      sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
    }

    v16 = *(v0 + 1888);
    v17 = *(v0 + 1880);
    v18 = *(v0 + 1872);
    v19 = *(v0 + 1864);
    v48 = *(v0 + 1856);
    v49 = *(v0 + 1896);

    *(v0 + 1816) = *(v0 + 488);
    *(v0 + 1832) = *(v0 + 472);
    (*(v17 + 8))(v16, v18);
    v20 = sub_1000C7C10(v5);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_10000DAF8(v0 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
    sub_10000DAF8(v0 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
    sub_10000DA7C((v19 + 560), *(v19 + 584));
    *(v0 + 184) = *(v0 + 1040);
    *(v0 + 200) = *(v0 + 1056);
    *(v0 + 216) = *(v0 + 1072);
    v27 = *(v0 + 992);
    *(v0 + 120) = *(v0 + 976);
    *(v0 + 136) = v27;
    v28 = *(v0 + 1024);
    *(v0 + 152) = *(v0 + 1008);
    *(v0 + 168) = v28;
    v29 = *(v0 + 928);
    *(v0 + 56) = *(v0 + 912);
    *(v0 + 72) = v29;
    v30 = *(v0 + 960);
    *(v0 + 88) = *(v0 + 944);
    *(v0 + 16) = v49;
    *(v0 + 24) = v20;
    *(v0 + 32) = v22;
    *(v0 + 40) = v24;
    *(v0 + 48) = v26;
    *(v0 + 232) = *(v0 + 1088);
    *(v0 + 104) = v30;
    v31 = type metadata accessor for SnoutManager();
    v32 = swift_task_alloc();
    *(v0 + 2080) = v32;
    *v32 = v0;
    v32[1] = sub_100138760;
    v33 = *(v0 + 1848);

    return (sub_10016E27C)(v0 + 16, v33, v48, 1, v31, &off_100223858);
  }

  else
  {
    v35 = *(v0 + 1313);
    v36 = *(v0 + 1264);
    v37 = *(v0 + 1272);
    *(v0 + 1984) = v37;
    v38 = *(v0 + 1256);
    v39 = *(v0 + 1352);
    *(v0 + 1480) = *(v0 + 1336);
    *(v0 + 1496) = v39;
    *(v0 + 1512) = *(v0 + 1368);
    v40 = *(v0 + 1288);
    *(v0 + 1416) = *(v0 + 1272);
    *(v0 + 1432) = v40;
    v41 = *(v0 + 1320);
    *(v0 + 1448) = *(v0 + 1304);
    *(v0 + 1464) = v41;
    v42 = *(v0 + 1256);
    *(v0 + 1384) = *(v0 + 1240);
    *(v0 + 1400) = v42;
    v43 = *(v0 + 1312);

    v44 = swift_task_alloc();
    *(v0 + 1992) = v44;
    *v44 = v0;
    v44[1] = sub_100137C94;
    v45 = *(v0 + 1864);
    v46 = *(v0 + 1856);
    v47 = *(v0 + 1848);

    return sub_1001399F8(v38, v43, v36, v37, v47, v46, v35);
  }
}

uint64_t sub_100137C94(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1992);
  v14 = *v2;
  *(*v2 + 2000) = v1;

  if (v1)
  {
    v6 = *(v4 + 1984);
    v7 = *(v4 + 1496);
    *(v4 + 1624) = *(v4 + 1480);
    *(v4 + 1640) = v7;
    *(v4 + 1656) = *(v4 + 1512);
    v8 = *(v4 + 1432);
    *(v4 + 1560) = *(v4 + 1416);
    *(v4 + 1576) = v8;
    v9 = *(v4 + 1464);
    *(v4 + 1592) = *(v4 + 1448);
    *(v4 + 1608) = v9;
    v10 = *(v4 + 1400);
    *(v4 + 1528) = *(v4 + 1384);
    *(v4 + 1544) = v10;
    sub_10003BC20(v4 + 1528);

    v11 = sub_100138C48;
  }

  else
  {
    v12 = *(v4 + 1984);

    *(v4 + 2089) = a1 & 1;
    v11 = sub_100137E04;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100137E04()
{
  v1 = (v0 + 1384);
  if (*(v0 + 2089) == 1)
  {
    v2 = *(v0 + 1864);
    sub_10006FB24();
    v3 = swift_allocObject();
    v4 = *(v0 + 1496);
    v3[7] = *(v0 + 1480);
    v3[8] = v4;
    v3[9] = *(v0 + 1512);
    v5 = *(v0 + 1432);
    v3[3] = *(v0 + 1416);
    v3[4] = v5;
    v6 = *(v0 + 1464);
    v3[5] = *(v0 + 1448);
    v3[6] = v6;
    v8 = *v1;
    v7 = *(v0 + 1400);
    *(v0 + 2008) = v3;
    v3[1] = v8;
    v3[2] = v7;
    v9 = swift_task_alloc();
    *(v0 + 2016) = v9;
    *v9 = v0;
    v9[1] = sub_100137FDC;
    v10 = *(v0 + 1952);
    v11 = *(v0 + 1944);
    v12 = *(v0 + 1936);

    return (sub_10010E9F0)();
  }

  else
  {
    v14 = *(v0 + 1856);
    v15 = *(v0 + 1496);
    *(v0 + 1768) = *(v0 + 1480);
    *(v0 + 1784) = v15;
    *(v0 + 1800) = *(v0 + 1512);
    v16 = *(v0 + 1432);
    *(v0 + 1704) = *(v0 + 1416);
    *(v0 + 1720) = v16;
    v17 = *(v0 + 1464);
    *(v0 + 1736) = *(v0 + 1448);
    *(v0 + 1752) = v17;
    v18 = *(v0 + 1400);
    *(v0 + 1672) = *v1;
    *(v0 + 1688) = v18;
    sub_10003BC20(v0 + 1672);
    v19 = swift_task_alloc();
    *(v0 + 2056) = v19;
    *v19 = v0;
    v19[1] = sub_1001385E8;
    v20 = *(v0 + 1864);
    v21 = *(v0 + 1848);

    return sub_1001260DC(v21, v14, 0);
  }
}

uint64_t sub_100137FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 2016);
  v4 = *v1;
  *(*v1 + 2024) = v0;

  v5 = *(v2 + 2008);

  if (v0)
  {
    v6 = sub_100138FB4;
  }

  else
  {
    v6 = sub_100138110;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100138110()
{
  v1 = swift_task_alloc();
  *(v0 + 2032) = v1;
  *v1 = v0;
  v1[1] = sub_1001381A0;
  v2 = *(v0 + 1864);

  return sub_100128208();
}

uint64_t sub_1001381A0()
{
  v2 = *(*v1 + 2032);
  v5 = *v1;
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v3 = sub_100139320;
  }

  else
  {
    v3 = sub_1001382B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001382B4()
{
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1856);
  v12 = *(v0 + 1912);
  v13 = *(v0 + 1896);
  sub_10000DA7C((*(v0 + 1864) + 560), *(*(v0 + 1864) + 584));
  *(v0 + 256) = v12;
  *(v0 + 240) = v13;
  *(v0 + 272) = v1;
  v3 = *(v0 + 648);
  *(v0 + 408) = *(v0 + 632);
  *(v0 + 424) = v3;
  *(v0 + 440) = *(v0 + 664);
  *(v0 + 456) = *(v0 + 680);
  v4 = *(v0 + 584);
  *(v0 + 344) = *(v0 + 568);
  *(v0 + 360) = v4;
  v5 = *(v0 + 616);
  *(v0 + 376) = *(v0 + 600);
  *(v0 + 392) = v5;
  v6 = *(v0 + 520);
  *(v0 + 280) = *(v0 + 504);
  *(v0 + 296) = v6;
  v7 = *(v0 + 552);
  *(v0 + 312) = *(v0 + 536);
  *(v0 + 328) = v7;
  v8 = type metadata accessor for SnoutManager();
  v9 = swift_task_alloc();
  *(v0 + 2048) = v9;
  *v9 = v0;
  v9[1] = sub_100138480;
  v10 = *(v0 + 1848);

  return (sub_10016E27C)(v0 + 240, v10, v2, 1, v8, &off_100223858);
}

uint64_t sub_100138480()
{
  v1 = *v0;
  v2 = *(*v0 + 2048);
  v4 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_100138584, 0, 0);
}

uint64_t sub_100138584()
{
  v1 = *(v0 + 1888);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001385E8()
{
  v2 = *v1;
  v3 = *(*v1 + 2056);
  v13 = *v1;
  *(*v1 + 2064) = v0;

  if (v0)
  {
    v4 = sub_10013968C;
  }

  else
  {
    v5 = *(v2 + 1928);
    v6 = *(v2 + 1912);
    *(v2 + 688) = *(v2 + 1896);
    *(v2 + 704) = v6;
    *(v2 + 720) = v5;
    *(v2 + 904) = *(v2 + 680);
    v7 = *(v2 + 648);
    *(v2 + 856) = *(v2 + 632);
    *(v2 + 872) = v7;
    *(v2 + 888) = *(v2 + 664);
    v8 = *(v2 + 584);
    *(v2 + 792) = *(v2 + 568);
    *(v2 + 808) = v8;
    v9 = *(v2 + 616);
    *(v2 + 824) = *(v2 + 600);
    *(v2 + 840) = v9;
    v10 = *(v2 + 520);
    *(v2 + 728) = *(v2 + 504);
    *(v2 + 744) = v10;
    v11 = *(v2 + 552);
    *(v2 + 760) = *(v2 + 536);
    *(v2 + 776) = v11;
    sub_10003AE8C(v2 + 688);
    v4 = sub_100138584;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100138760()
{
  v1 = *v0;
  v2 = *(*v0 + 2080);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_100138864, 0, 0);
}

uint64_t sub_100138864()
{
  v1 = v0[259];
  v2 = v0[236];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[259];

  return v3();
}

uint64_t sub_1001388DC()
{
  v1 = *(v0 + 1976);
  *(v0 + 2072) = v1;
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pending postback attribution failed %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 1888);
  v12 = *(v0 + 1880);
  v13 = *(v0 + 1872);
  v14 = *(v0 + 1864);
  v30 = *(v0 + 1856);
  v31 = *(v0 + 1896);

  *(v0 + 1816) = *(v0 + 488);
  *(v0 + 1832) = *(v0 + 472);
  (*(v12 + 8))(v11, v13);
  v15 = sub_1000C7C10(v1);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000DAF8(v0 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v0 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v14 + 560), *(v14 + 584));
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  v22 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v22;
  v23 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v23;
  v24 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v24;
  v25 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 16) = v31;
  *(v0 + 24) = v15;
  *(v0 + 32) = v17;
  *(v0 + 40) = v19;
  *(v0 + 48) = v21;
  *(v0 + 232) = *(v0 + 1088);
  *(v0 + 104) = v25;
  v26 = type metadata accessor for SnoutManager();
  v27 = swift_task_alloc();
  *(v0 + 2080) = v27;
  *v27 = v0;
  v27[1] = sub_100138760;
  v28 = *(v0 + 1848);

  return (sub_10016E27C)(v0 + 16, v28, v30, 1, v26, &off_100223858);
}

uint64_t sub_100138C48()
{
  v1 = *(v0 + 2000);
  *(v0 + 2072) = v1;
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pending postback attribution failed %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 1888);
  v12 = *(v0 + 1880);
  v13 = *(v0 + 1872);
  v14 = *(v0 + 1864);
  v30 = *(v0 + 1856);
  v31 = *(v0 + 1896);

  *(v0 + 1816) = *(v0 + 488);
  *(v0 + 1832) = *(v0 + 472);
  (*(v12 + 8))(v11, v13);
  v15 = sub_1000C7C10(v1);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000DAF8(v0 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v0 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v14 + 560), *(v14 + 584));
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  v22 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v22;
  v23 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v23;
  v24 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v24;
  v25 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 16) = v31;
  *(v0 + 24) = v15;
  *(v0 + 32) = v17;
  *(v0 + 40) = v19;
  *(v0 + 48) = v21;
  *(v0 + 232) = *(v0 + 1088);
  *(v0 + 104) = v25;
  v26 = type metadata accessor for SnoutManager();
  v27 = swift_task_alloc();
  *(v0 + 2080) = v27;
  *v27 = v0;
  v27[1] = sub_100138760;
  v28 = *(v0 + 1848);

  return (sub_10016E27C)(v0 + 16, v28, v30, 1, v26, &off_100223858);
}

uint64_t sub_100138FB4()
{
  v1 = *(v0 + 2024);
  *(v0 + 2072) = v1;
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pending postback attribution failed %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 1888);
  v12 = *(v0 + 1880);
  v13 = *(v0 + 1872);
  v14 = *(v0 + 1864);
  v30 = *(v0 + 1856);
  v31 = *(v0 + 1896);

  *(v0 + 1816) = *(v0 + 488);
  *(v0 + 1832) = *(v0 + 472);
  (*(v12 + 8))(v11, v13);
  v15 = sub_1000C7C10(v1);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000DAF8(v0 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v0 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v14 + 560), *(v14 + 584));
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  v22 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v22;
  v23 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v23;
  v24 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v24;
  v25 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 16) = v31;
  *(v0 + 24) = v15;
  *(v0 + 32) = v17;
  *(v0 + 40) = v19;
  *(v0 + 48) = v21;
  *(v0 + 232) = *(v0 + 1088);
  *(v0 + 104) = v25;
  v26 = type metadata accessor for SnoutManager();
  v27 = swift_task_alloc();
  *(v0 + 2080) = v27;
  *v27 = v0;
  v27[1] = sub_100138760;
  v28 = *(v0 + 1848);

  return (sub_10016E27C)(v0 + 16, v28, v30, 1, v26, &off_100223858);
}

uint64_t sub_100139320()
{
  v1 = *(v0 + 2040);
  *(v0 + 2072) = v1;
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pending postback attribution failed %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 1888);
  v12 = *(v0 + 1880);
  v13 = *(v0 + 1872);
  v14 = *(v0 + 1864);
  v30 = *(v0 + 1856);
  v31 = *(v0 + 1896);

  *(v0 + 1816) = *(v0 + 488);
  *(v0 + 1832) = *(v0 + 472);
  (*(v12 + 8))(v11, v13);
  v15 = sub_1000C7C10(v1);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000DAF8(v0 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v0 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v14 + 560), *(v14 + 584));
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  v22 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v22;
  v23 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v23;
  v24 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v24;
  v25 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 16) = v31;
  *(v0 + 24) = v15;
  *(v0 + 32) = v17;
  *(v0 + 40) = v19;
  *(v0 + 48) = v21;
  *(v0 + 232) = *(v0 + 1088);
  *(v0 + 104) = v25;
  v26 = type metadata accessor for SnoutManager();
  v27 = swift_task_alloc();
  *(v0 + 2080) = v27;
  *v27 = v0;
  v27[1] = sub_100138760;
  v28 = *(v0 + 1848);

  return (sub_10016E27C)(v0 + 16, v28, v30, 1, v26, &off_100223858);
}

uint64_t sub_10013968C()
{
  v1 = *(v0 + 2064);
  *(v0 + 2072) = v1;
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pending postback attribution failed %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 1888);
  v12 = *(v0 + 1880);
  v13 = *(v0 + 1872);
  v14 = *(v0 + 1864);
  v30 = *(v0 + 1856);
  v31 = *(v0 + 1896);

  *(v0 + 1816) = *(v0 + 488);
  *(v0 + 1832) = *(v0 + 472);
  (*(v12 + 8))(v11, v13);
  v15 = sub_1000C7C10(v1);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000DAF8(v0 + 1832, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DAF8(v0 + 1816, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10000DA7C((v14 + 560), *(v14 + 584));
  *(v0 + 184) = *(v0 + 1040);
  *(v0 + 200) = *(v0 + 1056);
  *(v0 + 216) = *(v0 + 1072);
  v22 = *(v0 + 992);
  *(v0 + 120) = *(v0 + 976);
  *(v0 + 136) = v22;
  v23 = *(v0 + 1024);
  *(v0 + 152) = *(v0 + 1008);
  *(v0 + 168) = v23;
  v24 = *(v0 + 928);
  *(v0 + 56) = *(v0 + 912);
  *(v0 + 72) = v24;
  v25 = *(v0 + 960);
  *(v0 + 88) = *(v0 + 944);
  *(v0 + 16) = v31;
  *(v0 + 24) = v15;
  *(v0 + 32) = v17;
  *(v0 + 40) = v19;
  *(v0 + 48) = v21;
  *(v0 + 232) = *(v0 + 1088);
  *(v0 + 104) = v25;
  v26 = type metadata accessor for SnoutManager();
  v27 = swift_task_alloc();
  *(v0 + 2080) = v27;
  *v27 = v0;
  v27[1] = sub_100138760;
  v28 = *(v0 + 1848);

  return (sub_10016E27C)(v0 + 16, v28, v30, 1, v26, &off_100223858);
}

uint64_t sub_1001399F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 2648) = v7;
  *(v8 + 1817) = a7;
  *(v8 + 2640) = a6;
  *(v8 + 2632) = a5;
  *(v8 + 2624) = a4;
  *(v8 + 2616) = a3;
  *(v8 + 1599) = a2;
  *(v8 + 2608) = a1;
  v9 = type metadata accessor for Calendar.Component();
  *(v8 + 2656) = v9;
  v10 = *(v9 - 8);
  *(v8 + 2664) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 2672) = swift_task_alloc();
  v12 = type metadata accessor for Date();
  *(v8 + 2680) = v12;
  v13 = *(v12 - 8);
  *(v8 + 2688) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 2696) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v8 + 2704) = v15;
  v16 = *(v15 - 8);
  *(v8 + 2712) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 2720) = swift_task_alloc();
  *(v8 + 2728) = swift_task_alloc();
  v18 = type metadata accessor for URL.DirectoryHint();
  *(v8 + 2736) = v18;
  v19 = *(v18 - 8);
  *(v8 + 2744) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 2752) = swift_task_alloc();
  v21 = type metadata accessor for URL();
  *(v8 + 2760) = v21;
  v22 = *(v21 - 8);
  *(v8 + 2768) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 2776) = swift_task_alloc();
  *(v8 + 2784) = swift_task_alloc();
  *(v8 + 2792) = swift_task_alloc();

  return _swift_task_switch(sub_100139C94, 0, 0);
}

uint64_t sub_100139C94()
{
  v1 = *(v0 + 2608);
  if (v1 == 915061776)
  {
    v2 = objc_allocWithZone(LSApplicationRecord);
    v3 = sub_1000BB120(0xD000000000000012, 0x80000001001CB3C0, 0);
    v4 = *(v0 + 2792);
    v5 = *(v0 + 2784);
    v6 = *(v0 + 2768);
    v117 = *(v0 + 2760);
    v7 = *(v0 + 2752);
    v8 = *(v0 + 2744);
    v9 = *(v0 + 2736);
    v10 = type metadata accessor for PropertyListDecoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v13 = [v3 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 2544) = 0x696C702E6F666E49;
    *(v0 + 2552) = 0xEA00000000007473;
    (*(v8 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
    sub_10003E5C8();
    URL.appending<A>(path:directoryHint:)();
    (*(v8 + 8))(v7, v9);
    v14 = *(v6 + 8);
    v14(v5, v117);
    v15 = Data.init(contentsOf:options:)();
    v17 = v16;
    v14(*(v0 + 2792), *(v0 + 2760));
    sub_1000BB9AC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10001BABC(v15, v17);

    v86 = *(v0 + 2208);
    v87 = *(v0 + 2224);
    v88 = *(v0 + 2225);
    v89 = *(v0 + 2232);
    v90 = *(v0 + 2240);
    v91 = *(v0 + 2256);
    v92 = *(v0 + 2272);
  }

  else
  {
    v18 = objc_allocWithZone(LSApplicationRecord);
    *(v0 + 2592) = 0;
    v19 = [v18 initWithStoreItemIdentifier:v1 error:v0 + 2592];
    v20 = *(v0 + 2592);
    if (!v19)
    {
      v37 = v20;
      v38 = _convertNSErrorToError(_:)();

      swift_willThrow();
      *(v0 + 3032) = v38;
      v39 = *(v0 + 2720);
      v40 = *(v0 + 2712);
      v41 = *(v0 + 2704);
      v42 = Logger.postback.unsafeMutableAddressor();
      (*(v40 + 16))(v39, v42, v41);
      swift_errorRetain();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        swift_errorRetain();
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v47;
        *v46 = v47;
        _os_log_impl(&_mh_execute_header, v43, v44, "Failed to get advertised app info plist: %@", v45, 0xCu);
        sub_10000DAF8(v46, &qword_100239F10, &qword_1001B4FD0);
      }

      v48 = *(v0 + 2720);
      v115 = (v0 + 1594);
      v116 = (v0 + 1577);
      v49 = *(v0 + 2712);
      v112 = (v0 + 1582);
      v113 = (v0 + 1353);
      v114 = (v0 + 1129);
      v50 = *(v0 + 2704);
      v110 = (v0 + 905);
      v51 = *(v0 + 2696);
      v52 = v43;
      v53 = *(v0 + 2688);
      v54 = *(v0 + 2672);
      v55 = v38;
      v56 = *(v0 + 2664);
      v105 = *(v0 + 2656);
      v106 = *(v0 + 2680);
      v119 = *(v0 + 2648);
      v104 = *(v0 + 2640);
      v57 = *(v0 + 1599);

      (*(v49 + 8))(v48, v50);
      v111 = v57 > 1;
      swift_errorRetain();
      v58 = sub_1000C7C10(v55);
      v108 = v60;
      v109 = v59;
      v107 = v61;
      static Date.now.getter();
      (*(v56 + 104))(v54, enum case for Calendar.Component.hour(_:), v105);
      v62 = sub_100025808(v51, v54);
      LOBYTE(v48) = v63;
      (*(v56 + 8))(v54, v105);
      (*(v53 + 8))(v51, v106);
      if (v48)
      {
        v62 = 0;
      }

      v64 = [objc_opt_self() buildVersion];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      *(v0 + 3056) = 1;
      *(v0 + 3048) = 1;
      *(v0 + 3080) = 1;
      *(v0 + 3072) = 1;
      *(v0 + 240) = 5;
      *(v0 + 3064) = 1;
      *(v0 + 242) = *(v0 + 1588);
      *(v0 + 246) = *(v0 + 1592);
      *(v0 + 248) = v58;
      *(v0 + 256) = v109;
      *(v0 + 264) = v108;
      *(v0 + 272) = v107;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      *(v0 + 296) = v62;
      *(v0 + 304) = v65;
      *(v0 + 312) = v67;
      *(v0 + 320) = 0;
      *(v0 + 321) = 33686018;
      *(v0 + 325) = 0;
      *(v0 + 328) = 0;
      v68 = *(v0 + 3056);
      *(v0 + 336) = v68;
      *(v0 + 337) = *v110;
      *(v0 + 340) = *(v0 + 908);
      *(v0 + 344) = 0;
      v69 = *(v0 + 3048);
      *(v0 + 352) = v69;
      *(v0 + 353) = 3;
      *(v0 + 354) = *v112;
      *(v0 + 358) = *(v0 + 1586);
      *(v0 + 360) = 0;
      v70 = *(v0 + 3080);
      *(v0 + 368) = v70;
      *(v0 + 372) = *(v0 + 1356);
      *(v0 + 369) = *v113;
      *(v0 + 376) = 0;
      v71 = *(v0 + 3072);
      *(v0 + 384) = v71;
      *(v0 + 385) = v111;
      *(v0 + 386) = 3;
      *(v0 + 391) = *(v0 + 1598);
      *(v0 + 387) = *v115;
      *(v0 + 392) = 0;
      v72 = *(v0 + 3064);
      *(v0 + 400) = v72;
      v73 = *v114;
      *(v0 + 404) = *(v0 + 1132);
      *(v0 + 401) = v73;
      *(v0 + 408) = 0;
      *(v0 + 416) = 0;
      *(v0 + 424) = 514;
      *(v0 + 426) = 2;
      v74 = *v116;
      *(v0 + 431) = *(v0 + 1581);
      *(v0 + 427) = v74;
      *(v0 + 16) = 5;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      v75 = *(v0 + 1588);
      *(v0 + 22) = *(v0 + 1592);
      *(v0 + 18) = v75;
      *(v0 + 24) = v58;
      *(v0 + 32) = v109;
      *(v0 + 40) = v108;
      *(v0 + 48) = v107;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v62;
      *(v0 + 80) = v65;
      *(v0 + 88) = v67;
      *(v0 + 96) = 0;
      *(v0 + 97) = 33686018;
      *(v0 + 101) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v68;
      v76 = *v110;
      *(v0 + 116) = *(v0 + 908);
      *(v0 + 113) = v76;
      *(v0 + 120) = 0;
      *(v0 + 128) = v69;
      *(v0 + 129) = 3;
      v77 = *v112;
      *(v0 + 134) = *(v0 + 1586);
      *(v0 + 130) = v77;
      *(v0 + 136) = 0;
      *(v0 + 144) = v70;
      v78 = *v113;
      *(v0 + 148) = *(v0 + 1356);
      *(v0 + 145) = v78;
      *(v0 + 152) = 0;
      *(v0 + 160) = v71;
      *(v0 + 161) = v111;
      *(v0 + 162) = 3;
      v79 = *v115;
      *(v0 + 167) = *(v0 + 1598);
      *(v0 + 163) = v79;
      *(v0 + 168) = 0;
      *(v0 + 176) = v72;
      v80 = *v114;
      *(v0 + 180) = *(v0 + 1132);
      *(v0 + 177) = v80;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 514;
      *(v0 + 202) = 2;
      v81 = *v116;
      *(v0 + 207) = *(v0 + 1581);
      *(v0 + 203) = v81;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      sub_100010568(v0 + 240, v0 + 464);
      sub_10003AE8C(v0 + 16);
      sub_10000DA7C((v119 + 560), *(v119 + 584));
      v82 = type metadata accessor for SnoutManager();
      v83 = swift_task_alloc();
      *(v0 + 3040) = v83;
      *v83 = v0;
      v83[1] = sub_10013C62C;
      v84 = *(v0 + 2632);

      return (sub_10016E27C)(v0 + 240, v84, v104, 1, v82, &off_100223858);
    }

    v21 = v19;
    v22 = *(v0 + 2784);
    v23 = *(v0 + 2776);
    v24 = *(v0 + 2768);
    v118 = *(v0 + 2760);
    v25 = *(v0 + 2752);
    v26 = *(v0 + 2744);
    v27 = *(v0 + 2736);
    v28 = type metadata accessor for PropertyListDecoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = v20;
    PropertyListDecoder.init()();
    v32 = [v21 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 2560) = 0x696C702E6F666E49;
    *(v0 + 2568) = 0xEA00000000007473;
    (*(v26 + 104))(v25, enum case for URL.DirectoryHint.inferFromPath(_:), v27);
    sub_10003E5C8();
    URL.appending<A>(path:directoryHint:)();
    (*(v26 + 8))(v25, v27);
    v33 = *(v24 + 8);
    v33(v22, v118);
    v34 = Data.init(contentsOf:options:)();
    v36 = v35;
    v33(*(v0 + 2776), *(v0 + 2760));
    sub_1000BB9AC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10001BABC(v34, v36);

    v86 = *(v0 + 2128);
    v87 = *(v0 + 2144);
    v88 = *(v0 + 2145);
    v89 = *(v0 + 2152);
    v90 = *(v0 + 2160);
    v91 = *(v0 + 2176);
    v92 = *(v0 + 2192);
  }

  *(v0 + 2048) = v86;
  *(v0 + 2064) = v87;
  *(v0 + 2065) = v88;
  *(v0 + 2072) = v89;
  *(v0 + 2080) = v90;
  *(v0 + 2096) = v91;
  *(v0 + 2112) = v92;
  *(v0 + 2800) = 0;
  if (*(v0 + 2616) == 0xD000000000000012 && 0x80000001001CB3C0 == *(v0 + 2624) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(v0 + 1599) && *(v0 + 1599) != 1)
    {
    }

    else
    {
      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v93 & 1) == 0)
      {
        v94 = swift_task_alloc();
        *(v0 + 2864) = v94;
        *v94 = v0;
        v94[1] = sub_10013B22C;
        v95 = *(v0 + 2608);

        return sub_1001550F0(v95);
      }
    }
  }

  v96 = *(v0 + 2648);
  v97 = *(v0 + 1817);
  v98 = *(v0 + 2608);
  v99 = v96[6];
  *(v0 + 2808) = v99;
  v100 = v96[7];
  *(v0 + 2816) = v100;
  v101 = v96[8];
  *(v0 + 2824) = v101;
  v102 = swift_allocObject();
  *(v0 + 2832) = v102;
  *(v102 + 16) = v98;
  *(v102 + 24) = v97 & 1;
  v103 = swift_task_alloc();
  *(v0 + 2840) = v103;
  *v103 = v0;
  v103[1] = sub_10013A9DC;

  return sub_10010F4F0(sub_10014D2F8, v102, v99, v100, v101);
}

uint64_t sub_10013A9DC(uint64_t a1)
{
  v3 = *(*v2 + 2840);
  v4 = *v2;
  v4[356] = a1;
  v4[357] = v1;

  if (v1)
  {
    v5 = v4[354];

    sub_10000DAF8((v4 + 256), &qword_10023D7A0, &qword_1001C18F8);
    v6 = v4[349];
    v7 = v4[348];
    v8 = v4[347];
    v9 = v4[344];
    v10 = v4[341];
    v11 = v4[340];
    v12 = v4[337];
    v13 = v4[334];

    v14 = v4[1];

    return v14(0);
  }

  else
  {
    v16 = v4[354];

    return _swift_task_switch(sub_10013AC10, 0, 0);
  }
}

uint64_t sub_10013AC10()
{
  v72 = v0;
  if (*(v0 + 2056) == 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = *(v0 + 2120);
    v5 = *(v0 + 2112);
    v4 = *(v0 + 2104);
    v3 = *(v0 + 2096);
    v2 = *(v0 + 2088);
    v1 = *(v0 + 2080);
    v7 = *(v0 + 2072);
    sub_1000E198C(v7, v1, v2, v3, v4, v5, v6);
    sub_10000DAF8(v0 + 2048, &qword_10023D7A0, &qword_1001C18F8);
  }

  v8 = *(v0 + 2856);
  v9 = *(v0 + 2848);
  v10 = *(v0 + 2624);
  v11 = *(v0 + 2616);
  *(v0 + 2488) = v7;
  v12 = v1;
  *(v0 + 2496) = v1;
  v13 = v2;
  *(v0 + 2504) = v2;
  v69 = v3;
  *(v0 + 2512) = v3;
  v14 = v4;
  *(v0 + 2520) = v4;
  v15 = v5;
  *(v0 + 2528) = v5;
  v16 = v6;
  *(v0 + 2536) = v6;
  v17 = sub_10004ADEC(v9, *(v0 + 1599), v11, v10, (v0 + 2488));
  v18 = *(v0 + 2848);
  if (v8)
  {
    sub_10014BB88(v7, v12, v13, v69, v14, v15, v6);

    v19 = *(v0 + 2792);
    v20 = *(v0 + 2784);
    v21 = *(v0 + 2776);
    v22 = *(v0 + 2752);
    v23 = *(v0 + 2728);
    v24 = *(v0 + 2720);
    v25 = *(v0 + 2696);
    v26 = *(v0 + 2672);

    v27 = *(v0 + 8);

    return v27(0);
  }

  else
  {
    v29 = v17;
    v30 = *(v0 + 2848);

    sub_10014BB88(v7, v12, v13, v69, v14, v15, v16);
    v31 = *(v0 + 2824);
    v32 = *(v0 + 2816);
    v33 = *(v0 + 2808);
    if (*(v29 + 16))
    {
      *(v0 + 2968) = v33;
      *(v0 + 2960) = v32;
      *(v0 + 2952) = v31;
      v34 = type metadata accessor for JSONEncoder();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      *(v0 + 2976) = JSONEncoder.init()();
      *(v0 + 2584) = v29;
      sub_10000CDE0(&qword_10023D7A8, &qword_1001C1900);
      sub_10014BC00();
      v55 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v57 = v56;

      v58 = *(v0 + 2640);
      v59 = *(v0 + 2632);
      v60 = *(v0 + 2608);
      *(v0 + 2288) = 0;
      *(v0 + 2296) = 1;
      *(v0 + 2304) = v55;
      *(v0 + 2312) = v57;
      *(v0 + 2320) = xmmword_1001C15A0;
      *(v0 + 2336) = v60;
      *(v0 + 2344) = v59;
      *(v0 + 2352) = v58;
      v61 = swift_allocObject();
      *(v0 + 2984) = v61;
      v62 = *(v0 + 2304);
      v63 = *(v0 + 2336);
      *(v61 + 48) = *(v0 + 2320);
      *(v61 + 64) = v63;
      *(v61 + 80) = *(v0 + 2352);
      *(v61 + 16) = *(v0 + 2288);
      *(v61 + 32) = v62;

      sub_100072034(v0 + 2288, v0 + 2360);
      v64 = swift_task_alloc();
      *(v0 + 2992) = v64;
      *v64 = v0;
      v64[1] = sub_10013C120;
      v65 = sub_10014BD40;
    }

    else
    {
      v37 = *(v0 + 2728);
      v38 = *(v0 + 2712);
      v39 = *(v0 + 2704);
      v40 = *(v0 + 2640);

      v41 = Logger.postback.unsafeMutableAddressor();
      (*(v38 + 16))(v37, v41, v39);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 2728);
      v46 = *(v0 + 2712);
      v47 = *(v0 + 2704);
      if (v44)
      {
        v68 = v32;
        v48 = *(v0 + 2640);
        v49 = v33;
        v50 = *(v0 + 2632);
        v67 = *(v0 + 2728);
        v51 = swift_slowAlloc();
        v70 = v31;
        v52 = swift_slowAlloc();
        v71 = v52;
        *v51 = 136315138;
        v53 = v50;
        v33 = v49;
        v54 = v48;
        v32 = v68;
        *(v51 + 4) = sub_10017AD04(v53, v54, &v71);
        _os_log_impl(&_mh_execute_header, v42, v43, "No eligible impressions found for conversion %s, skipping impression freeze", v51, 0xCu);
        sub_10000DB58(v52);
        v31 = v70;

        (*(v46 + 8))(v67, v47);
      }

      else
      {

        (*(v46 + 8))(v45, v47);
      }

      *(v0 + 1818) = 0;
      v66 = *(v0 + 2608);
      v61 = swift_allocObject();
      *(v0 + 3008) = v61;
      *(v61 + 16) = v66;
      v64 = swift_task_alloc();
      *(v0 + 3016) = v64;
      *v64 = v0;
      v64[1] = sub_10013C3CC;
      v65 = sub_10014BBD4;
    }

    return sub_10010E730(v64, v65, v61, v33, v32, v31);
  }
}

uint64_t sub_10013B22C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2864);
  v6 = *v2;
  *(v3 + 2872) = a1;
  *(v3 + 2880) = a2;

  return _swift_task_switch(sub_10013B35C, 0, 0);
}

uint64_t sub_10013B35C()
{
  v1 = *(v0 + 2880);
  if (v1 >> 60 == 15)
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = _swiftEmptyArrayStorage[2];
    if (!v3)
    {
      goto LABEL_31;
    }

LABEL_3:
    v4 = 0;
    v5 = (v0 + 1824);
    v6 = v2 + 4;
    while (1)
    {
      v7 = &v6[28 * v4];
      v8 = v4;
      while (1)
      {
        if (v8 >= v2[2])
        {
          __break(1u);
        }

        v9 = *(v0 + 1817);
        v10 = v7[1];
        *v5 = *v7;
        *(v0 + 1840) = v10;
        v11 = v7[5];
        v13 = v7[2];
        v12 = v7[3];
        *(v0 + 1888) = v7[4];
        *(v0 + 1904) = v11;
        *(v0 + 1856) = v13;
        *(v0 + 1872) = v12;
        v14 = v7[9];
        v16 = v7[6];
        v15 = v7[7];
        *(v0 + 1952) = v7[8];
        *(v0 + 1968) = v14;
        *(v0 + 1920) = v16;
        *(v0 + 1936) = v15;
        v18 = v7[11];
        v17 = v7[12];
        v19 = v7[10];
        *(v0 + 2025) = *(v7 + 201);
        *(v0 + 2000) = v18;
        *(v0 + 2016) = v17;
        *(v0 + 1984) = v19;
        v20 = *(v0 + 2025);
        if (v9)
        {
          if (v20 == 2)
          {
            sub_10000E870(v0 + 1824, v0 + 1136);
            goto LABEL_20;
          }

          if (v20)
          {
            sub_10000E870(v0 + 1824, v0 + 688);
            goto LABEL_19;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10000E870(v0 + 1824, v0 + 912);
          goto LABEL_5;
        }

        if (v20 == 2)
        {
          goto LABEL_7;
        }

        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10000E870(v0 + 1824, v0 + 1600);
LABEL_5:

        if (v21)
        {
          goto LABEL_20;
        }

        sub_10000E8CC(v0 + 1824);
LABEL_7:
        ++v8;
        v7 += 14;
        if (v3 == v8)
        {
          goto LABEL_31;
        }
      }

      sub_10000E870(v0 + 1824, v0 + 1360);
LABEL_19:

LABEL_20:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001470E0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_1001470E0((v22 > 1), v23 + 1, 1);
      }

      v4 = v8 + 1;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[28 * v23];
      v25 = *(v0 + 1840);
      v24[2] = *v5;
      v24[3] = v25;
      v26 = *(v0 + 1856);
      v27 = *(v0 + 1872);
      v28 = *(v0 + 1904);
      v24[6] = *(v0 + 1888);
      v24[7] = v28;
      v24[4] = v26;
      v24[5] = v27;
      v29 = *(v0 + 1920);
      v30 = *(v0 + 1936);
      v31 = *(v0 + 1968);
      v24[10] = *(v0 + 1952);
      v24[11] = v31;
      v24[8] = v29;
      v24[9] = v30;
      v32 = *(v0 + 1984);
      v33 = *(v0 + 2000);
      v34 = *(v0 + 2016);
      *(v24 + 233) = *(v0 + 2025);
      v24[13] = v33;
      v24[14] = v34;
      v24[12] = v32;
      v6 = v2 + 4;
      if (v3 - 1 == v8)
      {
LABEL_31:
        *(v0 + 2888) = _swiftEmptyArrayStorage;
        v52 = *(v0 + 2648);
        v53 = *(v0 + 1817);
        v54 = *(v0 + 2608);

        v55 = v52[6];
        *(v0 + 2896) = v55;
        v56 = v52[7];
        *(v0 + 2904) = v56;
        v57 = v52[8];
        *(v0 + 2912) = v57;
        v58 = swift_allocObject();
        *(v0 + 2920) = v58;
        *(v58 + 16) = v54;
        *(v58 + 24) = v53 & 1;
        v59 = swift_task_alloc();
        *(v0 + 2928) = v59;
        *v59 = v0;
        v59[1] = sub_10013B8CC;

        return sub_10010F4F0(sub_10014BE34, v58, v55, v56, v57);
      }
    }
  }

  v35 = *(v0 + 2872);
  v36 = *(v0 + 2800);
  v37 = type metadata accessor for JSONDecoder();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_1000438D8(v35, v1);
  JSONDecoder.init()();
  sub_10000CDE0(&qword_10023D7C0, &qword_1001C1908);
  sub_10014BE88();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v36)
  {
    sub_10005CB30(*(v0 + 2872), *(v0 + 2880));

    v2 = *(v0 + 2600);
    v3 = v2[2];
    if (!v3)
    {
      goto LABEL_31;
    }

    goto LABEL_3;
  }

  v40 = *(v0 + 2880);
  v41 = *(v0 + 2872);
  sub_10005CB30(v41, v40);

  sub_10005CB30(v41, v40);
  sub_10000DAF8(v0 + 2048, &qword_10023D7A0, &qword_1001C18F8);
  v42 = *(v0 + 2792);
  v43 = *(v0 + 2784);
  v44 = *(v0 + 2776);
  v45 = *(v0 + 2752);
  v46 = *(v0 + 2728);
  v47 = *(v0 + 2720);
  v48 = *(v0 + 2696);
  v49 = *(v0 + 2672);

  v50 = *(v0 + 8);

  return v50(0);
}

uint64_t sub_10013B8CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2928);
  v9 = *v2;
  v3[367] = a1;
  v3[368] = v1;

  v5 = v3[365];
  if (v1)
  {
    v6 = v3[361];

    sub_10000DAF8((v3 + 256), &qword_10023D7A0, &qword_1001C18F8);
    v7 = sub_10013CA44;
  }

  else
  {

    v7 = sub_10013BA4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10013BA4C()
{
  v83 = v0;
  if (*(v0 + 2056) == 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = *(v0 + 2120);
    v5 = *(v0 + 2112);
    v4 = *(v0 + 2104);
    v3 = *(v0 + 2096);
    v2 = *(v0 + 2088);
    v1 = *(v0 + 2080);
    v7 = *(v0 + 2072);
    sub_1000E198C(v7, v1, v2, v3, v4, v5, v6);
    sub_10000DAF8(v0 + 2048, &qword_10023D7A0, &qword_1001C18F8);
  }

  v8 = *(v0 + 2944);
  v9 = *(v0 + 2936);
  v10 = *(v0 + 2888);
  v11 = *(v0 + 2624);
  v12 = *(v0 + 2616);
  *(v0 + 2432) = v7;
  *(v0 + 2440) = v1;
  v78 = v2;
  v80 = v4;
  *(v0 + 2448) = v2;
  v13 = v3;
  *(v0 + 2456) = v3;
  *(v0 + 2464) = v4;
  v14 = v5;
  *(v0 + 2472) = v5;
  v15 = v6;
  *(v0 + 2480) = v6;
  v16 = sub_10004B658(v9, v10, *(v0 + 1599), v12, v11, v0 + 2432);
  v76 = v17;
  v18 = *(v0 + 2936);
  v19 = *(v0 + 2888);
  sub_10005CB30(*(v0 + 2872), *(v0 + 2880));
  if (v8)
  {
    sub_10014BB88(v7, v1, v78, v13, v80, v14, v15);

    v27 = *(v0 + 2792);
    v28 = *(v0 + 2784);
    v29 = *(v0 + 2776);
    v30 = *(v0 + 2752);
    v31 = *(v0 + 2728);
    v32 = *(v0 + 2720);
    v33 = *(v0 + 2696);
    v34 = *(v0 + 2672);

    v35 = *(v0 + 8);

    return v35(0);
  }

  else
  {

    sub_10014BB88(v7, v1, v78, v13, v80, v14, v15);

    v20 = v76;
    if (*(v16 + 2) || *(v76 + 16))
    {
      v21 = *(v0 + 2896);
      v22 = *(v0 + 2904);
      v23 = *(v0 + 2912);
      *(v0 + 2968) = v21;
      *(v0 + 2960) = v22;
      *(v0 + 2952) = v23;
      v24 = type metadata accessor for JSONEncoder();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      *(v0 + 2976) = JSONEncoder.init()();
      *(v0 + 2584) = v16;
      sub_10000CDE0(&qword_10023D7A8, &qword_1001C1900);
      sub_10014BC00();
      v37 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v39 = v38;

      if (v76)
      {
        *(v0 + 2576) = v76;
        sub_10000CDE0(&qword_10023D7C0, &qword_1001C1908);
        sub_10014BD5C();
        v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v61 = v60;
      }

      else
      {
        v61 = 0xF000000000000000;
      }

      v62 = *(v0 + 2640);
      v63 = *(v0 + 2632);
      v64 = *(v0 + 2608);
      *(v0 + 2288) = 0;
      *(v0 + 2296) = 1;
      *(v0 + 2304) = v37;
      *(v0 + 2312) = v39;
      *(v0 + 2320) = v20;
      *(v0 + 2328) = v61;
      *(v0 + 2336) = v64;
      *(v0 + 2344) = v63;
      *(v0 + 2352) = v62;
      v65 = swift_allocObject();
      *(v0 + 2984) = v65;
      v66 = *(v0 + 2304);
      v67 = *(v0 + 2336);
      *(v65 + 48) = *(v0 + 2320);
      *(v65 + 64) = v67;
      *(v65 + 80) = *(v0 + 2352);
      *(v65 + 16) = *(v0 + 2288);
      *(v65 + 32) = v66;

      sub_100072034(v0 + 2288, v0 + 2360);
      v68 = swift_task_alloc();
      *(v0 + 2992) = v68;
      *v68 = v0;
      v68[1] = sub_10013C120;
      v69 = sub_10014BD40;
      v70 = v65;
      v71 = v21;
      v72 = v22;
      v73 = v23;
    }

    else
    {
      v40 = *(v0 + 2912);
      v81 = *(v0 + 2904);
      v41 = *(v0 + 2896);
      v42 = *(v0 + 2728);
      v43 = *(v0 + 2712);
      v44 = *(v0 + 2704);
      v45 = *(v0 + 2640);

      v46 = Logger.postback.unsafeMutableAddressor();
      (*(v43 + 16))(v42, v46, v44);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 2728);
      v51 = *(v0 + 2712);
      v52 = *(v0 + 2704);
      if (v49)
      {
        v79 = v40;
        v53 = *(v0 + 2640);
        v54 = v41;
        v55 = *(v0 + 2632);
        v77 = *(v0 + 2728);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v82 = v57;
        *v56 = 136315138;
        v58 = v55;
        v41 = v54;
        v59 = v53;
        v40 = v79;
        *(v56 + 4) = sub_10017AD04(v58, v59, &v82);
        _os_log_impl(&_mh_execute_header, v47, v48, "No eligible impressions found for conversion %s, skipping impression freeze", v56, 0xCu);
        sub_10000DB58(v57);

        (*(v51 + 8))(v77, v52);
      }

      else
      {

        (*(v51 + 8))(v50, v52);
      }

      *(v0 + 1818) = 0;
      v74 = *(v0 + 2608);
      v75 = swift_allocObject();
      *(v0 + 3008) = v75;
      *(v75 + 16) = v74;
      v68 = swift_task_alloc();
      *(v0 + 3016) = v68;
      *v68 = v0;
      v68[1] = sub_10013C3CC;
      v69 = sub_10014BBD4;
      v70 = v75;
      v71 = v41;
      v72 = v81;
      v73 = v40;
    }

    return sub_10010E730(v68, v69, v70, v71, v72, v73);
  }
}

uint64_t sub_10013C120()
{
  v2 = *v1;
  v3 = *(*v1 + 2992);
  v4 = *v1;
  *(*v1 + 3000) = v0;

  v5 = *(v2 + 2984);

  if (v0)
  {
    v6 = sub_10013CB58;
  }

  else
  {
    v6 = sub_10013C280;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013C280()
{
  v1 = *(v0 + 2976);
  sub_10003BDD0(v0 + 2288);

  v2 = *(v0 + 2968);
  v3 = *(v0 + 2960);
  v4 = *(v0 + 2952);
  *(v0 + 1818) = 1;
  v5 = *(v0 + 2608);
  v6 = swift_allocObject();
  *(v0 + 3008) = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  *(v0 + 3016) = v7;
  *v7 = v0;
  v7[1] = sub_10013C3CC;

  return sub_10010E730(v7, sub_10014BBD4, v6, v2, v3, v4);
}

uint64_t sub_10013C3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 3016);
  v4 = *v1;
  *(*v1 + 3024) = v0;

  v5 = *(v2 + 3008);

  if (v0)
  {
    v6 = sub_10013CC74;
  }

  else
  {
    v6 = sub_10013C52C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013C52C()
{
  v1 = *(v0 + 2792);
  v2 = *(v0 + 2784);
  v3 = *(v0 + 2776);
  v4 = *(v0 + 2752);
  v5 = *(v0 + 2728);
  v6 = *(v0 + 2720);
  v7 = *(v0 + 2696);
  v8 = *(v0 + 2672);

  v9 = *(v0 + 8);
  v10 = *(v0 + 1818);

  return v9(v10);
}

uint64_t sub_10013C62C()
{
  v1 = *v0;
  v2 = *(*v0 + 3040);
  v4 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_10013C75C, 0, 0);
}

uint64_t sub_10013C75C()
{
  v1 = *(v0 + 3032);

  *(v0 + 2048) = xmmword_1001BC260;
  *(v0 + 2064) = 0u;
  *(v0 + 2080) = 0u;
  *(v0 + 2096) = 0u;
  *(v0 + 2112) = 0u;
  *(v0 + 2800) = 0;
  if (*(v0 + 2616) == 0xD000000000000012 && 0x80000001001CB3C0 == *(v0 + 2624) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(v0 + 1599) && *(v0 + 1599) != 1)
    {
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v2 & 1) == 0)
      {
        v3 = swift_task_alloc();
        *(v0 + 2864) = v3;
        *v3 = v0;
        v3[1] = sub_10013B22C;
        v4 = *(v0 + 2608);

        return sub_1001550F0(v4);
      }
    }
  }

  v6 = *(v0 + 2648);
  v7 = *(v0 + 1817);
  v8 = *(v0 + 2608);
  v9 = v6[6];
  *(v0 + 2808) = v9;
  v10 = v6[7];
  *(v0 + 2816) = v10;
  v11 = v6[8];
  *(v0 + 2824) = v11;
  v12 = swift_allocObject();
  *(v0 + 2832) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v7 & 1;
  v13 = swift_task_alloc();
  *(v0 + 2840) = v13;
  *v13 = v0;
  v13[1] = sub_10013A9DC;

  return sub_10010F4F0(sub_10014D2F8, v12, v9, v10, v11);
}

uint64_t sub_10013CA44()
{
  sub_10005CB30(v0[359], v0[360]);
  v1 = v0[368];
  v2 = v0[349];
  v3 = v0[348];
  v4 = v0[347];
  v5 = v0[344];
  v6 = v0[341];
  v7 = v0[340];
  v8 = v0[337];
  v9 = v0[334];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10013CB58()
{
  v1 = v0[372];
  sub_10003BDD0((v0 + 286));

  v2 = v0[375];
  v3 = v0[349];
  v4 = v0[348];
  v5 = v0[347];
  v6 = v0[344];
  v7 = v0[341];
  v8 = v0[340];
  v9 = v0[337];
  v10 = v0[334];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10013CC74()
{
  v1 = v0[378];
  v2 = v0[349];
  v3 = v0[348];
  v4 = v0[347];
  v5 = v0[344];
  v6 = v0[341];
  v7 = v0[340];
  v8 = v0[337];
  v9 = v0[334];

  v10 = v0[1];

  return v10(0);
}

void sub_10013CD7C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, id))
{
  v6 = [a1 connection];
  v7 = a3(a2, v6);

  if (!v3)
  {
  }
}

uint64_t sub_10013CDF0(void *a1, _OWORD *a2)
{
  swift_beginAccess();
  v5 = a2[8];
  v13[6] = a2[7];
  v13[7] = v5;
  v13[8] = a2[9];
  v6 = a2[4];
  v13[2] = a2[3];
  v13[3] = v6;
  v7 = a2[6];
  v13[4] = a2[5];
  v13[5] = v7;
  v8 = a2[2];
  v13[0] = a2[1];
  v13[1] = v8;
  sub_100070EEC(v13, v12);
  v9 = [a1 connection];
  v10 = sub_1000EE964(v13, v9);

  if (!v2)
  {
  }

  return sub_10003BC20(v13);
}

uint64_t sub_10013CEC8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  memcpy(__dst, (a2 + 16), 0x121uLL);
  sub_1000B3B24(__dst, v8);
  v5 = [a1 connection];
  v6 = sub_1000ED22C(__dst, v5);

  if (!v2)
  {
  }

  return sub_10003C04C(__dst);
}

void sub_10013CF7C(void *a1, __int128 *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EE690(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_10013CFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[152] = a4;
  v4[151] = a3;
  v4[150] = a2;
  v5 = *(*(sub_10000CDE0(&qword_100239EE0, &qword_1001B3640) - 8) + 64) + 15;
  v4[153] = swift_task_alloc();
  v4[154] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[155] = v6;
  v7 = *(v6 - 8);
  v4[156] = v7;
  v8 = *(v7 + 64) + 15;
  v4[157] = swift_task_alloc();

  return _swift_task_switch(sub_10013D0F4, 0, 0);
}

uint64_t sub_10013D0F4()
{
  v1 = *(v0 + 1208);
  v2 = *(v1 + 16);
  *(v0 + 1264) = v2;
  if (v2)
  {
    v3 = *(v0 + 1216);
    *(v0 + 1272) = **(v0 + 1200);
    v4 = v3[18];
    *(v0 + 1280) = v4;
    v5 = v3[19];
    *(v0 + 1288) = v5;
    v6 = v3[20];
    *(v0 + 1296) = v6;
    *(v0 + 1312) = 0;
    *(v0 + 616) = *(v1 + 32);
    v7 = *(v1 + 48);
    v8 = *(v1 + 64);
    v9 = *(v1 + 96);
    *(v0 + 664) = *(v1 + 80);
    *(v0 + 680) = v9;
    *(v0 + 632) = v7;
    *(v0 + 648) = v8;
    v10 = *(v1 + 112);
    v11 = *(v1 + 128);
    v12 = *(v1 + 160);
    *(v0 + 728) = *(v1 + 144);
    *(v0 + 744) = v12;
    *(v0 + 696) = v10;
    *(v0 + 712) = v11;
    *(v0 + 1320) = *(v0 + 712);
    *(v0 + 1328) = *(v0 + 696);
    *(v0 + 1416) = *(v0 + 704);
    *(v0 + 1417) = *(v0 + 689);
    v13 = *(v0 + 672);
    *(v0 + 1336) = v13;
    v14 = *(v0 + 680);
    *(v0 + 1344) = v14;
    *(v0 + 1352) = *(v0 + 640);
    *(v0 + 1360) = *(v0 + 648);
    *(v0 + 1368) = *(v0 + 632);
    v15 = swift_allocObject();
    *(v0 + 1376) = v15;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    *(v0 + 1384) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v14;
    swift_bridgeObjectRetain_n();
    sub_100070EEC(v0 + 616, v0 + 760);

    *(v0 + 1104) = &type metadata for ConversionHistoryDatabaseStore;
    *(v0 + 1112) = sub_10014ACC4();
    *(v0 + 1080) = v4;
    *(v0 + 1088) = v5;
    *(v0 + 1096) = v6;

    v17 = v6;
    v18 = swift_task_alloc();
    *(v0 + 1392) = v18;
    v18[2] = v17;
    v18[3] = v0 + 1080;
    v18[4] = sub_1000E1CF0;
    v18[5] = v16;
    v19 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v20 = swift_task_alloc();
    *(v0 + 1400) = v20;
    v21 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
    *v20 = v0;
    v20[1] = sub_10013D55C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 904, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014D290, v18, v21);
  }

  else
  {
    v22 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
    v23 = swift_task_alloc();
    *(v0 + 1304) = v23;
    v24 = sub_10000CDE0(&qword_10023D660, &unk_1001C16A0);
    *v23 = v0;
    v23[1] = sub_10013D40C;
    v25 = *(v0 + 1200);

    return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v24);
  }
}

uint64_t sub_10013D40C()
{
  v1 = *(*v0 + 1304);
  v2 = *(*v0 + 1256);
  v3 = *(*v0 + 1232);
  v4 = *(*v0 + 1224);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10013D55C()
{
  v2 = *v1;
  v3 = *(*v1 + 1400);
  v7 = *v1;
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v4 = sub_10013DD24;
  }

  else
  {
    v5 = *(v2 + 1384);

    sub_10000DB58((v2 + 1080));
    v4 = sub_10013D680;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013D680()
{
  v1 = (v0 + 616);
  v2 = *(v0 + 936);
  *(v0 + 1040) = *(v0 + 952);
  *(v0 + 1072) = *(v0 + 984);
  *(v0 + 1056) = *(v0 + 968);
  v3 = *(v0 + 920);
  *(v0 + 992) = *(v0 + 904);
  *(v0 + 1008) = v3;
  *(v0 + 1024) = v2;
  if (*(v0 + 1040))
  {
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1064);

    sub_10000DAF8(v0 + 992, &qword_10023B690, &qword_1001B9260);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v0 + 1392);
  v7 = *(v0 + 1376);
  swift_beginAccess();
  v8 = *(v7 + 24);
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;

  v9 = *(v0 + 1376);
  v66 = *(v0 + 1368);
  v10 = *(v0 + 1352);
  v63 = *(v0 + 1336);
  v64 = *(v0 + 1416);
  v65 = *(v0 + 1417);
  v62 = *(v0 + 1328);
  v60 = *(v0 + 1360);
  v61 = *(v0 + 1320);
  v11 = *(v0 + 1232);
  v12 = *(v0 + 1224);
  v13 = *(v0 + 1216);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v11, 1, 1, v14);
  sub_10003FD38(v13, v0 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  *(v16 + 24) = 0;
  v18 = *(v0 + 728);
  *(v16 + 128) = *(v0 + 712);
  *(v16 + 144) = v18;
  *(v16 + 160) = *(v0 + 744);
  v19 = *(v0 + 664);
  *(v16 + 64) = *(v0 + 648);
  *(v16 + 80) = v19;
  v20 = *(v0 + 696);
  *(v16 + 96) = *(v0 + 680);
  *(v16 + 112) = v20;
  v21 = *(v0 + 632);
  *(v16 + 32) = *v1;
  *(v16 + 48) = v21;
  *(v16 + 176) = v10;
  *(v16 + 184) = v60;
  *(v16 + 192) = v9;
  memcpy((v16 + 200), (v0 + 16), 0x258uLL);
  *(v16 + 800) = v63;
  *(v16 + 816) = v66;
  *(v16 + 824) = v61;
  *(v16 + 832) = v62;
  *(v16 + 840) = v64;
  *(v16 + 841) = v65;
  sub_100014B50(v11, v12, &qword_100239EE0, &qword_1001B3640);
  LODWORD(v12) = (*(v15 + 48))(v12, 1, v14);

  v22 = *(v0 + 1224);
  if (v12 == 1)
  {
    sub_10000DAF8(*(v0 + 1224), &qword_100239EE0, &qword_1001B3640);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v22, v14);
    if (*v17)
    {
      v25 = *(v16 + 24);
      v26 = *v17;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }
  }

  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1001C1980;
  *(v28 + 24) = v16;

  if (v24 | v23)
  {
    v29 = v0 + 1120;
    *(v0 + 1120) = 0;
    *(v0 + 1128) = 0;
    *(v0 + 1136) = v23;
    *(v0 + 1144) = v24;
  }

  else
  {
    v29 = 0;
  }

  v30 = *(v0 + 1376);
  v31 = *(v0 + 1272);
  v32 = *(v0 + 1264);
  v33 = *(v0 + 1232);
  v34 = *(v0 + 1312) + 1;
  *(v0 + 1152) = 1;
  *(v0 + 1160) = v29;
  *(v0 + 1168) = v31;
  swift_task_create();

  sub_10000DAF8(v33, &qword_100239EE0, &qword_1001B3640);

  if (v34 == v32)
  {
    v35 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
    v36 = swift_task_alloc();
    *(v0 + 1304) = v36;
    v37 = sub_10000CDE0(&qword_10023D660, &unk_1001C16A0);
    *v36 = v0;
    v36[1] = sub_10013D40C;
    v38 = *(v0 + 1200);

    return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v37);
  }

  else
  {
    v39 = *(v0 + 1312);
    *(v0 + 1312) = v39 + 1;
    v40 = *(v0 + 1296);
    v41 = *(v0 + 1288);
    v42 = *(v0 + 1280);
    v43 = (*(v0 + 1208) + 144 * v39);
    v44 = v43[12];
    v45 = v43[13];
    v46 = v43[15];
    *(v0 + 664) = v43[14];
    *(v0 + 680) = v46;
    *(v0 + 632) = v44;
    *(v0 + 648) = v45;
    v47 = v43[16];
    v48 = v43[17];
    v49 = v43[19];
    *(v0 + 728) = v43[18];
    *(v0 + 744) = v49;
    *(v0 + 696) = v47;
    *(v0 + 712) = v48;
    *v1 = v43[11];
    *(v0 + 1320) = *(v0 + 712);
    *(v0 + 1328) = *(v0 + 696);
    *(v0 + 1416) = *(v0 + 704);
    *(v0 + 1417) = *(v0 + 689);
    v50 = *(v0 + 672);
    *(v0 + 1336) = v50;
    v51 = *(v0 + 680);
    *(v0 + 1344) = v51;
    *(v0 + 1352) = *(v0 + 640);
    *(v0 + 1360) = *(v0 + 648);
    *(v0 + 1368) = *(v0 + 632);
    v52 = swift_allocObject();
    *(v0 + 1376) = v52;
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
    v53 = swift_allocObject();
    *(v0 + 1384) = v53;
    *(v53 + 16) = v50;
    *(v53 + 24) = v51;
    swift_bridgeObjectRetain_n();
    sub_100070EEC(v0 + 616, v0 + 760);

    *(v0 + 1104) = &type metadata for ConversionHistoryDatabaseStore;
    *(v0 + 1112) = sub_10014ACC4();
    *(v0 + 1080) = v42;
    *(v0 + 1088) = v41;
    *(v0 + 1096) = v40;

    v54 = v40;
    v55 = swift_task_alloc();
    *(v0 + 1392) = v55;
    v55[2] = v54;
    v55[3] = v0 + 1080;
    v55[4] = sub_1000E1CF0;
    v55[5] = v53;
    v56 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v57 = swift_task_alloc();
    *(v0 + 1400) = v57;
    v58 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
    *v57 = v0;
    v57[1] = sub_10013D55C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 904, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014D290, v55, v58);
  }
}

uint64_t sub_10013DD24()
{
  v1 = (v0 + 616);
  v2 = *(v0 + 1408);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);

  sub_10000DB58((v0 + 1080));
  v8 = Logger.postback.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1408);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to retrieve history %@", v13, 0xCu);
    sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    v16 = *(v0 + 1408);
  }

  (*(*(v0 + 1248) + 8))(*(v0 + 1256), *(v0 + 1240));
  v17 = *(v0 + 1376);
  v74 = *(v0 + 1368);
  v18 = *(v0 + 1352);
  v71 = *(v0 + 1336);
  v72 = *(v0 + 1416);
  v73 = *(v0 + 1417);
  v70 = *(v0 + 1328);
  v68 = *(v0 + 1360);
  v69 = *(v0 + 1320);
  v19 = *(v0 + 1232);
  v20 = *(v0 + 1224);
  v21 = *(v0 + 1216);
  v22 = type metadata accessor for TaskPriority();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v19, 1, 1, v22);
  sub_10003FD38(v21, v0 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = (v24 + 16);
  *(v24 + 24) = 0;
  v26 = *(v0 + 728);
  *(v24 + 128) = *(v0 + 712);
  *(v24 + 144) = v26;
  *(v24 + 160) = *(v0 + 744);
  v27 = *(v0 + 664);
  *(v24 + 64) = *(v0 + 648);
  *(v24 + 80) = v27;
  v28 = *(v0 + 696);
  *(v24 + 96) = *(v0 + 680);
  *(v24 + 112) = v28;
  v29 = *(v0 + 632);
  *(v24 + 32) = *v1;
  *(v24 + 48) = v29;
  *(v24 + 176) = v18;
  *(v24 + 184) = v68;
  *(v24 + 192) = v17;
  memcpy((v24 + 200), (v0 + 16), 0x258uLL);
  *(v24 + 800) = v71;
  *(v24 + 816) = v74;
  *(v24 + 824) = v69;
  *(v24 + 832) = v70;
  *(v24 + 840) = v72;
  *(v24 + 841) = v73;
  sub_100014B50(v19, v20, &qword_100239EE0, &qword_1001B3640);
  LODWORD(v20) = (*(v23 + 48))(v20, 1, v22);

  v30 = *(v0 + 1224);
  if (v20 == 1)
  {
    sub_10000DAF8(*(v0 + 1224), &qword_100239EE0, &qword_1001B3640);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v23 + 8))(v30, v22);
    if (*v25)
    {
      v33 = *(v24 + 24);
      v34 = *v25;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v35;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }
  }

  v36 = swift_allocObject();
  *(v36 + 16) = &unk_1001C1980;
  *(v36 + 24) = v24;

  if (v32 | v31)
  {
    v37 = v0 + 1120;
    *(v0 + 1120) = 0;
    *(v0 + 1128) = 0;
    *(v0 + 1136) = v31;
    *(v0 + 1144) = v32;
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v0 + 1376);
  v39 = *(v0 + 1272);
  v40 = *(v0 + 1264);
  v41 = *(v0 + 1232);
  v42 = *(v0 + 1312) + 1;
  *(v0 + 1152) = 1;
  *(v0 + 1160) = v37;
  *(v0 + 1168) = v39;
  swift_task_create();

  sub_10000DAF8(v41, &qword_100239EE0, &qword_1001B3640);

  if (v42 == v40)
  {
    v43 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
    v44 = swift_task_alloc();
    *(v0 + 1304) = v44;
    v45 = sub_10000CDE0(&qword_10023D660, &unk_1001C16A0);
    *v44 = v0;
    v44[1] = sub_10013D40C;
    v46 = *(v0 + 1200);

    return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v45);
  }

  else
  {
    v47 = *(v0 + 1312);
    *(v0 + 1312) = v47 + 1;
    v48 = *(v0 + 1296);
    v49 = *(v0 + 1288);
    v50 = *(v0 + 1280);
    v51 = (*(v0 + 1208) + 144 * v47);
    v52 = v51[12];
    v53 = v51[13];
    v54 = v51[15];
    *(v0 + 664) = v51[14];
    *(v0 + 680) = v54;
    *(v0 + 632) = v52;
    *(v0 + 648) = v53;
    v55 = v51[16];
    v56 = v51[17];
    v57 = v51[19];
    *(v0 + 728) = v51[18];
    *(v0 + 744) = v57;
    *(v0 + 696) = v55;
    *(v0 + 712) = v56;
    *v1 = v51[11];
    *(v0 + 1320) = *(v0 + 712);
    *(v0 + 1328) = *(v0 + 696);
    *(v0 + 1416) = *(v0 + 704);
    *(v0 + 1417) = *(v0 + 689);
    v58 = *(v0 + 672);
    *(v0 + 1336) = v58;
    v59 = *(v0 + 680);
    *(v0 + 1344) = v59;
    *(v0 + 1352) = *(v0 + 640);
    *(v0 + 1360) = *(v0 + 648);
    *(v0 + 1368) = *(v0 + 632);
    v60 = swift_allocObject();
    *(v0 + 1376) = v60;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    v61 = swift_allocObject();
    *(v0 + 1384) = v61;
    *(v61 + 16) = v58;
    *(v61 + 24) = v59;
    swift_bridgeObjectRetain_n();
    sub_100070EEC(v0 + 616, v0 + 760);

    *(v0 + 1104) = &type metadata for ConversionHistoryDatabaseStore;
    *(v0 + 1112) = sub_10014ACC4();
    *(v0 + 1080) = v50;
    *(v0 + 1088) = v49;
    *(v0 + 1096) = v48;

    v62 = v48;
    v63 = swift_task_alloc();
    *(v0 + 1392) = v63;
    v63[2] = v62;
    v63[3] = v0 + 1080;
    v63[4] = sub_1000E1CF0;
    v63[5] = v61;
    v64 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v65 = swift_task_alloc();
    *(v0 + 1400) = v65;
    v66 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
    *v65 = v0;
    v65[1] = sub_10013D55C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 904, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014D290, v63, v66);
  }
}

uint64_t sub_10013E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 6401) = v26;
  *(v8 + 5784) = v24;
  *(v8 + 5768) = v23;
  *(v8 + 5800) = v25;
  *(v8 + 5760) = a8;
  *(v8 + 5752) = a7;
  *(v8 + 5744) = a6;
  *(v8 + 5736) = a5;
  *(v8 + 5728) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 5808) = v9;
  v10 = *(v9 - 8);
  *(v8 + 5816) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 5824) = swift_task_alloc();
  *(v8 + 5832) = swift_task_alloc();
  *(v8 + 5840) = swift_task_alloc();
  v12 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  *(v8 + 5848) = v12;
  v13 = *(v12 - 8);
  *(v8 + 5856) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 5864) = swift_task_alloc();
  v15 = type metadata accessor for Calendar.Component();
  *(v8 + 5872) = v15;
  v16 = *(v15 - 8);
  *(v8 + 5880) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 5888) = swift_task_alloc();
  v18 = type metadata accessor for Date();
  *(v8 + 5896) = v18;
  v19 = *(v18 - 8);
  *(v8 + 5904) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 5912) = swift_task_alloc();

  return _swift_task_switch(sub_10013E6C8, 0, 0);
}

uint64_t sub_10013E6C8()
{
  v47 = (v0 + 506);
  v49 = (v0 + 1002);
  v55 = (v0 + 6369);
  v52 = (v0 + 6395);
  v1 = *(v0 + 5912);
  v2 = *(v0 + 5904);
  v3 = *(v0 + 5896);
  v4 = *(v0 + 5888);
  v5 = *(v0 + 5880);
  v6 = *(v0 + 5872);
  v58 = *(v0 + 5776);
  v56 = *(v0 + 5760);
  v57 = *(v0 + 5768);
  v7 = *(v0 + 5752);
  v53 = *(v0 + 5736);
  v54 = *(v0 + 5744);
  v8 = *(*(v0 + 5728) + 72);
  *(v0 + 6403) = v8;
  v48 = v8 > 1;
  swift_beginAccess();
  v50 = *(v7 + 24);
  v51 = *(v7 + 16);

  static Date.now.getter();
  *(v0 + 5236) = enum case for Calendar.Component.hour(_:);
  v9 = *(v5 + 104);
  *(v0 + 5920) = v9;
  *(v0 + 5928) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v4);
  v10 = sub_100025808(v1, v4);
  v12 = v11;
  v13 = *(v5 + 8);
  *(v0 + 5936) = v13;
  *(v0 + 5944) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v4, v6);
  v14 = *(v2 + 8);
  *(v0 + 5952) = v14;
  *(v0 + 5960) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v1, v3);
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  v16 = objc_opt_self();
  *(v0 + 5968) = v16;
  v17 = [v16 buildVersion];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v0 + 6416) = 1;
  *(v0 + 6360) = 1;
  *(v0 + 6464) = 1;
  *(v0 + 6448) = 1;
  *(v0 + 6456) = 1;
  *(v0 + 1008) = 1543;
  *(v0 + 1010) = *v47;
  *(v0 + 1014) = *(v0 + 510);
  *(v0 + 1016) = 0u;
  *(v0 + 1032) = 0u;
  *(v0 + 1048) = 0u;
  *(v0 + 1064) = v15;
  *(v0 + 1072) = v18;
  *(v0 + 1080) = v20;
  *(v0 + 1088) = 0;
  *(v0 + 1089) = 33686018;
  *(v0 + 1093) = 2;
  *(v0 + 1096) = 0;
  v21 = *(v0 + 6416);
  *(v0 + 1104) = v21;
  *(v0 + 1105) = *(v0 + 6353);
  *(v0 + 1108) = *(v0 + 6356);
  *(v0 + 1112) = 0;
  v22 = *(v0 + 6360);
  *(v0 + 1120) = v22;
  *(v0 + 1121) = 1;
  *(v0 + 1122) = *v49;
  *(v0 + 1126) = *(v0 + 1006);
  *(v0 + 1128) = 0;
  v23 = *(v0 + 6464);
  *(v0 + 1136) = v23;
  *(v0 + 1140) = *(v0 + 6348);
  *(v0 + 1137) = *(v0 + 6345);
  *(v0 + 1144) = 0;
  v24 = *(v0 + 6448);
  *(v0 + 1152) = v24;
  *(v0 + 1153) = v48;
  *(v0 + 1154) = 3;
  *(v0 + 1159) = *(v0 + 6399);
  *(v0 + 1155) = *v52;
  *(v0 + 1160) = 0;
  v25 = *(v0 + 6456);
  *(v0 + 1168) = v25;
  v26 = *(v0 + 6361);
  *(v0 + 1172) = *(v0 + 6364);
  *(v0 + 1169) = v26;
  *(v0 + 1176) = v53;
  *(v0 + 1184) = v54;
  *(v0 + 1192) = 514;
  *(v0 + 1194) = 2;
  v27 = *v55;
  *(v0 + 1199) = *(v0 + 6373);
  *(v0 + 1195) = v27;
  *(v0 + 1200) = 0u;
  *(v0 + 1216) = v51;
  *(v0 + 1224) = v50;
  *(v0 + 3472) = 1543;
  v28 = *v47;
  *(v0 + 3478) = *(v0 + 510);
  *(v0 + 3474) = v28;
  *(v0 + 3496) = 0u;
  *(v0 + 3512) = 0u;
  *(v0 + 3480) = 0u;
  *(v0 + 3528) = v15;
  *(v0 + 3536) = v18;
  *(v0 + 3544) = v20;
  *(v0 + 3552) = 0;
  *(v0 + 3557) = 2;
  *(v0 + 3553) = 33686018;
  *(v0 + 3560) = 0;
  *(v0 + 3568) = v21;
  v29 = *(v0 + 6353);
  *(v0 + 3572) = *(v0 + 6356);
  *(v0 + 3569) = v29;
  *(v0 + 3576) = 0;
  *(v0 + 3584) = v22;
  *(v0 + 3585) = 1;
  v30 = *v49;
  *(v0 + 3590) = *(v0 + 1006);
  *(v0 + 3586) = v30;
  *(v0 + 3592) = 0;
  *(v0 + 3600) = v23;
  v31 = *(v0 + 6345);
  *(v0 + 3604) = *(v0 + 6348);
  *(v0 + 3601) = v31;
  *(v0 + 3608) = 0;
  *(v0 + 3616) = v24;
  *(v0 + 3617) = v48;
  *(v0 + 3618) = 3;
  v32 = *v52;
  *(v0 + 3623) = *(v0 + 6399);
  *(v0 + 3619) = v32;
  *(v0 + 3624) = 0;
  *(v0 + 3632) = v25;
  v33 = *(v0 + 6361);
  *(v0 + 3636) = *(v0 + 6364);
  *(v0 + 3633) = v33;
  *(v0 + 3640) = v53;
  *(v0 + 3648) = v54;
  *(v0 + 3656) = 514;
  *(v0 + 3658) = 2;
  v34 = *v55;
  *(v0 + 3663) = *(v0 + 6373);
  *(v0 + 3659) = v34;
  *(v0 + 3664) = 0u;
  *(v0 + 3680) = v51;
  *(v0 + 3688) = v50;

  sub_100010568(v0 + 1008, v0 + 3248);
  sub_10003AE8C(v0 + 3472);
  v35 = *(v0 + 1024);
  *(v0 + 5976) = *(v0 + 1008);
  *(v0 + 5992) = v35;
  v36 = *(v0 + 1192);
  *(v0 + 4416) = *(v0 + 1176);
  *(v0 + 4432) = v36;
  *(v0 + 4448) = *(v0 + 1208);
  v37 = *(v0 + 1128);
  *(v0 + 4352) = *(v0 + 1112);
  *(v0 + 4368) = v37;
  v38 = *(v0 + 1160);
  *(v0 + 4384) = *(v0 + 1144);
  *(v0 + 4400) = v38;
  v39 = *(v0 + 1064);
  *(v0 + 4288) = *(v0 + 1048);
  *(v0 + 4304) = v39;
  v40 = *(v0 + 1096);
  *(v0 + 4320) = *(v0 + 1080);
  *(v0 + 6008) = *(v0 + 1040);
  *(v0 + 4464) = *(v0 + 1224);
  *(v0 + 4336) = v40;
  v41 = v56[9];
  v42 = v56[10];
  v43 = v56[11];
  v44 = swift_allocObject();
  *(v0 + 6016) = v44;
  *(v44 + 16) = v57;
  *(v44 + 24) = v58;

  v45 = swift_task_alloc();
  *(v0 + 6024) = v45;
  *v45 = v0;
  v45[1] = sub_10013EC8C;

  return sub_10010FC40(v0 + 4904, sub_10014C4EC, v44, v41, v42, v43);
}

uint64_t sub_10013EC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 6024);
  v7 = *v1;
  *(*v1 + 6032) = v0;

  v4 = *(v2 + 6016);

  if (v0)
  {
    v5 = sub_100142288;
  }

  else
  {
    v5 = sub_10013EDB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10013EDB0()
{
  v61 = v0;
  v1 = *(v0 + 4984);
  *(v0 + 5080) = *(v0 + 4968);
  *(v0 + 5096) = v1;
  *(v0 + 5111) = *(v0 + 4999);
  v3 = *(v0 + 4904);
  v2 = *(v0 + 4920);
  *(v0 + 5016) = v3;
  *(v0 + 5032) = v2;
  v4 = *(v0 + 4952);
  *(v0 + 5048) = *(v0 + 4936);
  *(v0 + 5064) = v4;
  *(v0 + 5648) = v3;
  *(v0 + 5664) = *(v0 + 4920);
  v5 = *(v0 + 5040);
  *(v0 + 6040) = v5;
  v6 = *(v0 + 4952);
  *(v0 + 5456) = *(v0 + 4936);
  *(v0 + 5472) = v6;
  v7 = *(v0 + 4984);
  *(v0 + 5488) = *(v0 + 4968);
  *(v0 + 5504) = v7;
  *(v0 + 6404) = *(v0 + 5112);
  *(v0 + 5234) = *(v0 + 5113);
  if (v5)
  {
    v8 = *(v0 + 5784);
    v9 = *(v0 + 5760);
    v10 = *(v0 + 5728);
    v12 = v9[6];
    v11 = v9[7];
    v13 = v9[8];
    v14 = swift_allocObject();
    *(v0 + 6048) = v14;
    *(v14 + 16) = v8;
    v15 = v10[5];
    v16 = v10[6];
    v17 = v10[7];
    *(v14 + 152) = v10[8];
    *(v14 + 136) = v17;
    *(v14 + 120) = v16;
    *(v14 + 104) = v15;
    v18 = v10[1];
    v19 = v10[2];
    v20 = v10[3];
    *(v14 + 88) = v10[4];
    *(v14 + 72) = v20;
    *(v14 + 56) = v19;
    *(v14 + 40) = v18;
    *(v14 + 24) = *v10;
    sub_100070EEC(v10, v0 + 4760);
    v21 = swift_task_alloc();
    *(v0 + 6056) = v21;
    *v21 = v0;
    v21[1] = sub_10013F26C;

    return sub_100111AC8(v0 + 5312, sub_10014C638, v14, v12, v11, v13);
  }

  else
  {
    sub_10014C5A4();
    v23 = swift_allocError();
    *v24 = 3;
    swift_willThrow();
    *(v0 + 6288) = v23;
    v25 = *(v0 + 5832);
    v26 = *(v0 + 5816);
    v27 = *(v0 + 5808);
    v28 = *(v0 + 5728);
    v29 = Logger.postback.unsafeMutableAddressor();
    (*(v26 + 16))(v25, v29, v27);
    sub_100070EEC(v28, v0 + 4472);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_10003BC20(v28);

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 5832);
    v34 = *(v0 + 5816);
    v35 = *(v0 + 5808);
    if (v32)
    {
      v59 = *(v0 + 5832);
      v36 = *(v0 + 5728);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v60 = v39;
      *v37 = 136315394;
      *(v37 + 4) = sub_10017AD04(*(v36 + 56), *(v36 + 64), &v60);
      *(v37 + 12) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v40;
      *v38 = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "Fetch postback failed for conversion ID: %s, error: %@", v37, 0x16u);
      sub_10000DAF8(v38, &qword_100239F10, &qword_1001B4FD0);

      sub_10000DB58(v39);

      (*(v34 + 8))(v59, v35);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v41 = *(v0 + 5976);
    v42 = *(v0 + 5760);
    v43 = *(v0 + 1040);
    v44 = *(v0 + 1024);
    v45 = sub_1000C7C10(v23);
    v47 = v46;
    v49 = v48;
    v51 = v50;

    v52 = sub_10000DA7C((v42 + 560), *(v42 + 584));
    *(v0 + 3024) = v41;
    *(v0 + 3032) = v45;
    *(v0 + 3040) = v47;
    *(v0 + 3048) = v49;
    *(v0 + 3056) = v51;
    v53 = *(v0 + 4432);
    *(v0 + 3192) = *(v0 + 4416);
    *(v0 + 3208) = v53;
    *(v0 + 3224) = *(v0 + 4448);
    *(v0 + 3240) = *(v0 + 4464);
    v54 = *(v0 + 4368);
    *(v0 + 3128) = *(v0 + 4352);
    *(v0 + 3144) = v54;
    v55 = *(v0 + 4400);
    *(v0 + 3160) = *(v0 + 4384);
    *(v0 + 3176) = v55;
    v56 = *(v0 + 4304);
    *(v0 + 3064) = *(v0 + 4288);
    *(v0 + 3080) = v56;
    v57 = *(v0 + 4336);
    *(v0 + 3096) = *(v0 + 4320);
    *(v0 + 3112) = v57;
    v58 = *v52;
    *(v0 + 6296) = *v52;
    swift_errorRetain();

    return _swift_task_switch(sub_100141C90, v58, 0);
  }
}

uint64_t sub_10013F26C()
{
  v2 = *v1;
  v3 = *(*v1 + 6056);
  v4 = *v1;
  *(v2 + 6064) = v0;

  v5 = *(v2 + 6048);

  if (v0)
  {
    sub_10000DAF8(v2 + 5016, &qword_10023AFD8, qword_1001B7F28);
    v6 = sub_100142564;
  }

  else
  {
    v6 = sub_10013F3C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013F3C0()
{
  v78 = v0;
  v1 = *(v0 + 5328);
  v2 = *(v0 + 5376);
  *(v0 + 5448) = v2;
  v3 = *(v0 + 5360);
  *(v0 + 5416) = *(v0 + 5344);
  *(v0 + 5432) = v3;
  *(v0 + 5384) = *(v0 + 5312);
  *(v0 + 5400) = v1;
  if (!v2)
  {
    v10 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v4 = *(v0 + 5400);
  v5 = *(v0 + 5408);
  if (v5 >> 60 == 15)
  {
    v6 = *(v0 + 5416);
    v7 = *(v0 + 5424);
    v8 = *(v0 + 6064);
    v9 = _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = *(v0 + 6064);
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1000438D8(v4, v5);
    JSONDecoder.init()();
    sub_10000CDE0(&qword_10023D7A8, &qword_1001C1900);
    sub_10014C758();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v8)
    {
      sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);

      sub_10005CB30(v4, v5);
      goto LABEL_12;
    }

    sub_10005CB30(v4, v5);

    v9 = *(v0 + 5720);
    v4 = *(v0 + 5400);
    v5 = *(v0 + 5408);
    v6 = *(v0 + 5416);
    v7 = *(v0 + 5424);
    v14 = *(v0 + 5448);
  }

  sub_10014C744(v6, v7);
  sub_100014B50(v0 + 5384, v0 + 5240, &qword_10023C6E8, &unk_1001BC790);
  sub_10005CB30(v4, v5);
  sub_10005CB30(v6, v7);

  if (v7 >> 60 == 15)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10000CDE0(&qword_10023D7C0, &qword_1001C1908);
  sub_10014BE88();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v8)
  {
    sub_10005CB30(v6, v7);

    v10 = *(v0 + 5696);
LABEL_19:
    v52 = (v0 + 5456);
    v53 = (v0 + 5648);
    *(v0 + 6080) = v9;
    *(v0 + 6072) = v10;
    v54 = *(v0 + 6404);
    if (v54 > 1)
    {
      v63 = *(v0 + 5234);
      v64 = *(v0 + 6040);
      v65 = *(v0 + 5752);
      v66 = *(v0 + 5744);
      v67 = *(v0 + 5736);
      swift_beginAccess();
      v68 = *(v65 + 16);
      v69 = *(v65 + 24);
      *(v0 + 3904) = *v53;
      v70 = *(v0 + 5472);
      *(v0 + 3936) = *v52;
      *(v0 + 3952) = v70;
      v71 = *(v0 + 5504);
      *(v0 + 3968) = *(v0 + 5488);
      *(v0 + 4088) = &type metadata for AMSDogBag;
      *(v0 + 4096) = &off_100222F48;
      *(v0 + 3920) = *(v0 + 5664);
      *(v0 + 3928) = v64;
      *(v0 + 3984) = v71;
      *(v0 + 4000) = 2;
      *(v0 + 4001) = v63;
      *(v0 + 4008) = v9;
      *(v0 + 4016) = v67;
      *(v0 + 4024) = v66;
      *(v0 + 4032) = v68;
      *(v0 + 4040) = v69;
      *(v0 + 4048) = &type metadata for HTTP;
      *(v0 + 4056) = &off_10021B990;

      sub_100014B50(v0 + 5016, v0 + 5128, &qword_10023AFD8, qword_1001B7F28);

      v72 = swift_task_alloc();
      *(v0 + 6104) = v72;
      *v72 = v0;
      v72[1] = sub_100140124;

      return sub_10006E444();
    }

    else
    {
      v76 = *(v0 + 5234);
      v55 = *(v0 + 6040);
      v56 = *(v0 + 5752);
      v57 = *(v0 + 5744);
      v74 = *(v0 + 5736);
      swift_beginAccess();
      v58 = *(v56 + 16);
      v59 = *(v56 + 24);
      *(v0 + 3696) = *v53;
      v60 = *(v0 + 5472);
      *(v0 + 3728) = *v52;
      *(v0 + 3744) = v60;
      v61 = *(v0 + 5504);
      *(v0 + 3760) = *(v0 + 5488);
      *(v0 + 3888) = &type metadata for AMSDogBag;
      *(v0 + 3896) = &off_100222F48;
      *(v0 + 3712) = *(v0 + 5664);
      *(v0 + 3720) = v55;
      *(v0 + 3776) = v61;
      *(v0 + 3792) = v54;
      *(v0 + 3793) = v76;
      *(v0 + 3800) = v9;
      *(v0 + 3808) = v10;
      *(v0 + 3816) = v74;
      *(v0 + 3824) = v57;
      *(v0 + 3832) = v58;
      *(v0 + 3840) = v59;
      *(v0 + 3848) = &type metadata for HTTP;
      *(v0 + 3856) = &off_10021B990;

      v62 = swift_task_alloc();
      *(v0 + 6088) = v62;
      *v62 = v0;
      v62[1] = sub_10013FBE0;

      return sub_10001AC94();
    }
  }

  sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);

  sub_10005CB30(v6, v7);
LABEL_12:
  sub_10000DAF8(v0 + 5016, &qword_10023AFD8, qword_1001B7F28);
  *(v0 + 6288) = v8;
  v18 = *(v0 + 5832);
  v19 = *(v0 + 5816);
  v20 = *(v0 + 5808);
  v21 = *(v0 + 5728);
  v22 = Logger.postback.unsafeMutableAddressor();
  (*(v19 + 16))(v18, v22, v20);
  sub_100070EEC(v21, v0 + 4472);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  sub_10003BC20(v21);

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 5832);
  v27 = *(v0 + 5816);
  v28 = *(v0 + 5808);
  if (v25)
  {
    v75 = *(v0 + 5832);
    v29 = *(v0 + 5728);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v77 = v32;
    *v30 = 136315394;
    *(v30 + 4) = sub_10017AD04(*(v29 + 56), *(v29 + 64), &v77);
    *(v30 + 12) = 2112;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v33;
    *v31 = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Fetch postback failed for conversion ID: %s, error: %@", v30, 0x16u);
    sub_10000DAF8(v31, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v32);

    (*(v27 + 8))(v75, v28);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  v34 = *(v0 + 5976);
  v35 = *(v0 + 5760);
  v36 = *(v0 + 1040);
  v37 = *(v0 + 1024);
  v38 = sub_1000C7C10(v8);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = sub_10000DA7C((v35 + 560), *(v35 + 584));
  *(v0 + 3024) = v34;
  *(v0 + 3032) = v38;
  *(v0 + 3040) = v40;
  *(v0 + 3048) = v42;
  *(v0 + 3056) = v44;
  v46 = *(v0 + 4432);
  *(v0 + 3192) = *(v0 + 4416);
  *(v0 + 3208) = v46;
  *(v0 + 3224) = *(v0 + 4448);
  *(v0 + 3240) = *(v0 + 4464);
  v47 = *(v0 + 4368);
  *(v0 + 3128) = *(v0 + 4352);
  *(v0 + 3144) = v47;
  v48 = *(v0 + 4400);
  *(v0 + 3160) = *(v0 + 4384);
  *(v0 + 3176) = v48;
  v49 = *(v0 + 4304);
  *(v0 + 3064) = *(v0 + 4288);
  *(v0 + 3080) = v49;
  v50 = *(v0 + 4336);
  *(v0 + 3096) = *(v0 + 4320);
  *(v0 + 3112) = v50;
  v51 = *v45;
  *(v0 + 6296) = *v45;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v51, 0);
}

uint64_t sub_10013FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[690] = v4;
  v6[691] = a1;
  v6[692] = a2;
  v6[693] = a3;
  v6[694] = v3;
  v7 = v5[761];
  v12 = *v4;
  v6[762] = v3;

  if (v3)
  {
    v8 = v6[760];
    v9 = v6[759];

    v10 = sub_10013FE24;
  }

  else
  {
    v10 = sub_10013FD1C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10013FD1C()
{
  sub_10014C6F0(v0 + 3696);
  v1 = *(v0 + 5544);
  v2 = *(v0 + 6080);
  v3 = *(v0 + 6072);
  *(v0 + 6120) = v1;
  *(v0 + 6128) = *(v0 + 5528);
  v4 = sub_10000E200(v2, v3);
  v6 = v5;

  *(v0 + 6144) = v4;
  *(v0 + 6152) = v6;
  v7 = swift_task_alloc();
  *(v0 + 6160) = v7;
  *v7 = v0;
  v7[1] = sub_10014069C;
  v8 = *(v0 + 5784);
  v9 = *(v0 + 5776);
  v10 = *(v0 + 5768);
  v11 = *(v0 + 5760);

  return sub_100143150(v1, v8, v10, v9, v4, v6);
}

uint64_t sub_10013FE24()
{
  v39 = v0;
  sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);
  sub_10014C6F0(v0 + 3696);
  v1 = *(v0 + 6096);
  *(v0 + 6288) = v1;
  v2 = *(v0 + 5832);
  v3 = *(v0 + 5816);
  v4 = *(v0 + 5808);
  v5 = *(v0 + 5728);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, v0 + 4472);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5832);
  v11 = *(v0 + 5816);
  v12 = *(v0 + 5808);
  if (v9)
  {
    v37 = *(v0 + 5832);
    v13 = *(v0 + 5728);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v38);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch postback failed for conversion ID: %s, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v37, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 5976);
  v19 = *(v0 + 5760);
  v20 = *(v0 + 1040);
  v21 = *(v0 + 1024);
  v22 = sub_1000C7C10(v1);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = sub_10000DA7C((v19 + 560), *(v19 + 584));
  *(v0 + 3024) = v18;
  *(v0 + 3032) = v22;
  *(v0 + 3040) = v24;
  *(v0 + 3048) = v26;
  *(v0 + 3056) = v28;
  v30 = *(v0 + 4432);
  *(v0 + 3192) = *(v0 + 4416);
  *(v0 + 3208) = v30;
  *(v0 + 3224) = *(v0 + 4448);
  *(v0 + 3240) = *(v0 + 4464);
  v31 = *(v0 + 4368);
  *(v0 + 3128) = *(v0 + 4352);
  *(v0 + 3144) = v31;
  v32 = *(v0 + 4400);
  *(v0 + 3160) = *(v0 + 4384);
  *(v0 + 3176) = v32;
  v33 = *(v0 + 4304);
  *(v0 + 3064) = *(v0 + 4288);
  *(v0 + 3080) = v33;
  v34 = *(v0 + 4336);
  *(v0 + 3096) = *(v0 + 4320);
  *(v0 + 3112) = v34;
  v35 = *v29;
  *(v0 + 6296) = *v29;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v35, 0);
}

uint64_t sub_100140124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[695] = v4;
  v6[696] = a1;
  v6[697] = a2;
  v6[698] = a3;
  v6[699] = v3;
  v7 = v5[763];
  v12 = *v4;
  v6[764] = v3;

  if (v3)
  {
    v8 = v6[760];
    v9 = v6[759];

    v10 = sub_100140380;
  }

  else
  {
    v10 = sub_100140260;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100140260()
{
  sub_10000DAF8(v0 + 5016, &qword_10023AFD8, qword_1001B7F28);
  sub_10014C69C(v0 + 3904);
  v1 = *(v0 + 5584);
  v2 = *(v0 + 6080);
  v3 = *(v0 + 6072);
  *(v0 + 6120) = v1;
  *(v0 + 6128) = *(v0 + 5568);
  v4 = sub_10000E200(v2, v3);
  v6 = v5;

  *(v0 + 6144) = v4;
  *(v0 + 6152) = v6;
  v7 = swift_task_alloc();
  *(v0 + 6160) = v7;
  *v7 = v0;
  v7[1] = sub_10014069C;
  v8 = *(v0 + 5784);
  v9 = *(v0 + 5776);
  v10 = *(v0 + 5768);
  v11 = *(v0 + 5760);

  return sub_100143150(v1, v8, v10, v9, v4, v6);
}

uint64_t sub_100140380()
{
  v39 = v0;
  sub_10000DAF8(v0 + 5016, &qword_10023AFD8, qword_1001B7F28);
  sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);
  sub_10014C69C(v0 + 3904);
  v1 = *(v0 + 6112);
  *(v0 + 6288) = v1;
  v2 = *(v0 + 5832);
  v3 = *(v0 + 5816);
  v4 = *(v0 + 5808);
  v5 = *(v0 + 5728);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, v0 + 4472);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5832);
  v11 = *(v0 + 5816);
  v12 = *(v0 + 5808);
  if (v9)
  {
    v37 = *(v0 + 5832);
    v13 = *(v0 + 5728);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v38);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch postback failed for conversion ID: %s, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v37, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 5976);
  v19 = *(v0 + 5760);
  v20 = *(v0 + 1040);
  v21 = *(v0 + 1024);
  v22 = sub_1000C7C10(v1);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = sub_10000DA7C((v19 + 560), *(v19 + 584));
  *(v0 + 3024) = v18;
  *(v0 + 3032) = v22;
  *(v0 + 3040) = v24;
  *(v0 + 3048) = v26;
  *(v0 + 3056) = v28;
  v30 = *(v0 + 4432);
  *(v0 + 3192) = *(v0 + 4416);
  *(v0 + 3208) = v30;
  *(v0 + 3224) = *(v0 + 4448);
  *(v0 + 3240) = *(v0 + 4464);
  v31 = *(v0 + 4368);
  *(v0 + 3128) = *(v0 + 4352);
  *(v0 + 3144) = v31;
  v32 = *(v0 + 4400);
  *(v0 + 3160) = *(v0 + 4384);
  *(v0 + 3176) = v32;
  v33 = *(v0 + 4304);
  *(v0 + 3064) = *(v0 + 4288);
  *(v0 + 3080) = v33;
  v34 = *(v0 + 4336);
  *(v0 + 3096) = *(v0 + 4320);
  *(v0 + 3112) = v34;
  v35 = *v29;
  *(v0 + 6296) = *v29;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v35, 0);
}

uint64_t sub_10014069C()
{
  v1 = *(*v0 + 6160);
  v2 = *(*v0 + 6120);
  v4 = *v0;

  return _swift_task_switch(sub_1001407B4, 0, 0);
}

uint64_t sub_1001407B4()
{
  v1 = *(v0 + 6008);
  v10 = *(v0 + 5992);
  v11 = *(v0 + 5976);
  v2 = sub_10000DA7C((*(v0 + 5760) + 560), *(*(v0 + 5760) + 584));
  *(v0 + 2368) = v10;
  *(v0 + 2352) = v11;
  *(v0 + 2384) = v1;
  v3 = *(v0 + 4432);
  *(v0 + 2520) = *(v0 + 4416);
  *(v0 + 2536) = v3;
  *(v0 + 2552) = *(v0 + 4448);
  *(v0 + 2568) = *(v0 + 4464);
  v4 = *(v0 + 4368);
  *(v0 + 2456) = *(v0 + 4352);
  *(v0 + 2472) = v4;
  v5 = *(v0 + 4400);
  *(v0 + 2488) = *(v0 + 4384);
  *(v0 + 2504) = v5;
  v6 = *(v0 + 4304);
  *(v0 + 2392) = *(v0 + 4288);
  *(v0 + 2408) = v6;
  v7 = *(v0 + 4336);
  *(v0 + 2424) = *(v0 + 4320);
  *(v0 + 2440) = v7;
  v8 = *v2;
  *(v0 + 6168) = *v2;

  return _swift_task_switch(sub_10014089C, v8, 0);
}

uint64_t sub_10014089C()
{
  v1 = *(v0 + 6168);
  v2 = *(v0 + 5864);
  v3 = *(v0 + 5856);
  v4 = *(v0 + 5848);
  v5 = *(v0 + 5776);
  v6 = *(v0 + 5768);
  v7 = *(v0 + 2528);
  *(v0 + 424) = *(v0 + 2512);
  *(v0 + 440) = v7;
  v8 = *(v0 + 2560);
  *(v0 + 456) = *(v0 + 2544);
  *(v0 + 472) = v8;
  v9 = *(v0 + 2464);
  *(v0 + 360) = *(v0 + 2448);
  *(v0 + 376) = v9;
  v10 = *(v0 + 2496);
  *(v0 + 392) = *(v0 + 2480);
  *(v0 + 408) = v10;
  v11 = *(v0 + 2400);
  *(v0 + 296) = *(v0 + 2384);
  *(v0 + 312) = v11;
  v12 = *(v0 + 2432);
  *(v0 + 328) = *(v0 + 2416);
  *(v0 + 344) = v12;
  v13 = *(v0 + 2368);
  *(v0 + 264) = *(v0 + 2352);
  *(v0 + 280) = v13;
  *(v0 + 488) = v6;
  *(v0 + 496) = v5;
  *(v0 + 504) = 257;
  sub_1000E191C(v0 + 264);
  v14 = *(v0 + 472);
  *(v0 + 208) = *(v0 + 456);
  *(v0 + 224) = v14;
  *(v0 + 240) = *(v0 + 488);
  *(v0 + 256) = *(v0 + 504);
  v15 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 392);
  *(v0 + 160) = v15;
  v16 = *(v0 + 440);
  *(v0 + 176) = *(v0 + 424);
  *(v0 + 192) = v16;
  v17 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 328);
  *(v0 + 96) = v17;
  v18 = *(v0 + 376);
  *(v0 + 112) = *(v0 + 360);
  *(v0 + 128) = v18;
  v19 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 264);
  *(v0 + 32) = v19;
  v20 = *(v0 + 312);
  *(v0 + 48) = *(v0 + 296);
  *(v0 + 64) = v20;

  sub_100010568(v0 + 2352, v0 + 2128);
  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  v21 = *(v0 + 2352);
  v22 = *(v0 + 2392);
  v23 = *(v0 + 2400);
  v32 = *(v0 + 2432);
  LOBYTE(v1) = *(v0 + 2435);
  v24 = *(v0 + 2465);
  v33 = *(v0 + 2472);
  v36 = *(v0 + 2537);
  v34 = *(v0 + 2437);
  v35 = *(v0 + 2538);
  v25 = *(v0 + 2552);
  v37 = *(v0 + 2560);
  v38 = *(v0 + 2544);
  v26 = *(v0 + 2568);
  *(v0 + 6424) = *(v0 + 2480);
  *(v0 + 6408) = 1;
  sub_10000CDE0(&qword_10023BCB0, &unk_1001BE250);
  v27 = swift_allocObject();
  *(v0 + 6176) = v27;
  *(v27 + 16) = xmmword_1001B93B0;
  *(v27 + 32) = v21;
  *(v27 + 34) = *(v0 + 258);
  *(v27 + 38) = *(v0 + 262);
  *(v27 + 40) = v22;
  *(v27 + 48) = v23;
  *(v27 + 56) = v32;
  *(v27 + 57) = v1;
  *(v27 + 58) = v24;
  *(v27 + 59) = *(v0 + 6390);
  *(v27 + 63) = *(v0 + 6394);
  *(v27 + 64) = v33;
  *(v27 + 72) = *(v0 + 6424);
  *(v27 + 73) = v34;
  *(v27 + 74) = *(v0 + 754);
  *(v27 + 78) = *(v0 + 758);
  *(v27 + 88) = 0;
  *(v27 + 96) = 0;
  *(v27 + 80) = 0;
  *(v27 + 104) = *(v0 + 6408);
  *(v27 + 105) = v36;
  *(v27 + 106) = v35;
  *(v27 + 107) = *(v0 + 6374);
  *(v27 + 111) = *(v0 + 6378);
  *(v27 + 112) = v38;
  *(v27 + 120) = v25;
  *(v27 + 128) = v37;
  *(v27 + 136) = v26;

  v28 = swift_task_alloc();
  *(v0 + 6184) = v28;
  *v28 = v0;
  v28[1] = sub_100140BEC;
  v29 = *(v0 + 6168);
  v30 = *(v0 + 5784);

  return sub_10016D920(v27, v30);
}

uint64_t sub_100140BEC()
{
  v1 = *(*v0 + 6184);
  v2 = *(*v0 + 6176);
  v3 = *(*v0 + 6168);
  v5 = *v0;

  return _swift_task_switch(sub_100140D18, v3, 0);
}

uint64_t sub_100140D18()
{
  sub_10003AE8C(v0 + 2352);

  return _swift_task_switch(sub_100140D80, 0, 0);
}

uint64_t sub_100140D80()
{
  v1 = (v0 + 6344);
  v46 = *(v0 + 5960);
  v47 = *(v0 + 5968);
  v48 = (v0 + 5003);
  v52 = (v0 + 5115);
  v50 = (v0 + 5227);
  v51 = (v0 + 6379);
  v53 = (v0 + 6385);
  v44 = *(v0 + 5944);
  v45 = *(v0 + 5952);
  v43 = *(v0 + 5936);
  v2 = *(v0 + 5928);
  v3 = *(v0 + 5920);
  v4 = *(v0 + 5236);
  v5 = *(v0 + 5912);
  v6 = *(v0 + 5896);
  v7 = *(v0 + 5888);
  v8 = *(v0 + 5872);
  v54 = *(v0 + 6401);
  v55 = *(v0 + 6402);
  v49 = *(v0 + 6403) > 1u;
  sub_10000DAF8(v0 + 5384, &qword_10023C6E8, &unk_1001BC790);
  static Date.now.getter();
  v3(v7, v4, v8);
  v9 = sub_100025808(v5, v7);
  LOBYTE(v2) = v10;
  v43(v7, v8);
  v45(v5, v6);
  if (v2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v47 buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *v1 = 1;
  *(v0 + 6352) = 1;
  *(v0 + 6368) = 1;
  *(v0 + 6384) = 1;
  *(v0 + 6400) = 1;
  *(v0 + 1680) = 5;
  *(v0 + 1682) = *(v0 + 5122);
  *(v0 + 1686) = *(v0 + 5126);
  *(v0 + 1688) = 0u;
  *(v0 + 1704) = 0u;
  *(v0 + 1720) = 0u;
  *(v0 + 1736) = v11;
  *(v0 + 1744) = v13;
  *(v0 + 1752) = v15;
  *(v0 + 1760) = 0;
  *(v0 + 1761) = 33686018;
  *(v0 + 1765) = 1;
  *(v0 + 1768) = 0;
  v16 = *v1;
  *(v0 + 1776) = *v1;
  *(v0 + 1777) = *v48;
  *(v0 + 1780) = *(v0 + 5006);
  *(v0 + 1784) = 0;
  v17 = *(v0 + 6352);
  *(v0 + 1792) = v17;
  *(v0 + 1793) = 3;
  *(v0 + 1794) = *(v0 + 5010);
  *(v0 + 1798) = *(v0 + 5014);
  *(v0 + 1800) = 0;
  v18 = *(v0 + 6368);
  *(v0 + 1808) = v18;
  v19 = *v50;
  *(v0 + 1812) = *(v0 + 5230);
  *(v0 + 1809) = v19;
  *(v0 + 1816) = 0;
  v20 = *(v0 + 6384);
  *(v0 + 1824) = v20;
  *(v0 + 1825) = v49;
  *(v0 + 1826) = 3;
  *(v0 + 1831) = *(v0 + 6383);
  *(v0 + 1827) = *v51;
  *(v0 + 1832) = 0;
  LOBYTE(v19) = *(v0 + 6400);
  *(v0 + 1840) = v19;
  *(v0 + 1841) = *v52;
  *(v0 + 1844) = *(v0 + 5118);
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = 514;
  *(v0 + 1866) = 2;
  v21 = *v53;
  *(v0 + 1871) = *(v0 + 6389);
  *(v0 + 1867) = v21;
  *(v0 + 1888) = 0u;
  *(v0 + 1872) = 0u;
  *(v0 + 1904) = 5;
  v22 = *(v0 + 5122);
  *(v0 + 1910) = *(v0 + 5126);
  *(v0 + 1906) = v22;
  *(v0 + 1928) = 0u;
  *(v0 + 1944) = 0u;
  *(v0 + 1912) = 0u;
  *(v0 + 1960) = v11;
  *(v0 + 1968) = v13;
  *(v0 + 1976) = v15;
  *(v0 + 1984) = 0;
  *(v0 + 1985) = 33686018;
  *(v0 + 1989) = 1;
  *(v0 + 1992) = 0;
  *(v0 + 2000) = v16;
  v23 = *v48;
  *(v0 + 2004) = *(v0 + 5006);
  *(v0 + 2001) = v23;
  *(v0 + 2008) = 0;
  *(v0 + 2016) = v17;
  *(v0 + 2017) = 3;
  v24 = *(v0 + 5010);
  *(v0 + 2022) = *(v0 + 5014);
  *(v0 + 2018) = v24;
  *(v0 + 2024) = 0;
  *(v0 + 2032) = v18;
  v25 = *v50;
  *(v0 + 2036) = *(v0 + 5230);
  *(v0 + 2033) = v25;
  *(v0 + 2040) = 0;
  *(v0 + 2048) = v20;
  *(v0 + 2049) = v49;
  *(v0 + 2050) = 3;
  v26 = *v51;
  *(v0 + 2055) = *(v0 + 6383);
  *(v0 + 2051) = v26;
  *(v0 + 2056) = 0;
  *(v0 + 2064) = v19;
  v27 = *v52;
  *(v0 + 2068) = *(v0 + 5118);
  *(v0 + 2065) = v27;
  *(v0 + 2072) = 0u;
  *(v0 + 2088) = 514;
  *(v0 + 2090) = 2;
  v28 = *v53;
  *(v0 + 2095) = *(v0 + 6389);
  *(v0 + 2091) = v28;
  *(v0 + 2112) = 0u;
  *(v0 + 2096) = 0u;
  sub_100010568(v0 + 1680, v0 + 1456);
  sub_10003AE8C(v0 + 1904);
  *(v0 + 6192) = *(v0 + 1680);
  *(v0 + 6208) = *(v0 + 1696);
  *(v0 + 6224) = *(v0 + 1712);
  v29 = *(v0 + 1864);
  *(v0 + 4232) = *(v0 + 1848);
  *(v0 + 4248) = v29;
  *(v0 + 4264) = *(v0 + 1880);
  *(v0 + 4280) = *(v0 + 1896);
  v30 = *(v0 + 1800);
  *(v0 + 4168) = *(v0 + 1784);
  *(v0 + 4184) = v30;
  v31 = *(v0 + 1832);
  *(v0 + 4200) = *(v0 + 1816);
  *(v0 + 4216) = v31;
  v32 = *(v0 + 1736);
  *(v0 + 4104) = *(v0 + 1720);
  *(v0 + 4120) = v32;
  v33 = *(v0 + 1768);
  *(v0 + 4136) = *(v0 + 1752);
  *(v0 + 4152) = v33;
  v34 = swift_task_alloc();
  *(v0 + 6232) = v34;
  *v34 = v0;
  v34[1] = sub_100141264;
  v35 = *(v0 + 6136);
  v36 = *(v0 + 6128);
  v37 = *(v0 + 5800);
  v38 = *(v0 + 5792);
  v39 = *(v0 + 5776);
  v40 = *(v0 + 5768);
  v41 = *(v0 + 5760);

  return sub_100145A70(v36, v35, v40, v39, v38, v37, v54 & 1, v55 & 1);
}

uint64_t sub_100141264()
{
  v2 = *(*v1 + 6232);
  v3 = *v1;
  v3[780] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100142A10, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[781] = v4;
    *v4 = v3;
    v4[1] = sub_1001413D8;
    v5 = v3[720];
    v6 = v3[716];

    return sub_100131D80(v6);
  }
}

uint64_t sub_1001413D8()
{
  v2 = *(*v1 + 6248);
  v5 = *v1;
  *(*v1 + 6256) = v0;

  if (v0)
  {
    v3 = sub_100142DB0;
  }

  else
  {
    v3 = sub_1001414EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001414EC()
{
  v1 = *(v0 + 6224);
  v2 = *(v0 + 5776);
  v12 = *(v0 + 6208);
  v13 = *(v0 + 6192);
  sub_10000DA7C((*(v0 + 5760) + 560), *(*(v0 + 5760) + 584));
  *(v0 + 1248) = v12;
  *(v0 + 1232) = v13;
  *(v0 + 1264) = v1;
  v3 = *(v0 + 4248);
  *(v0 + 1400) = *(v0 + 4232);
  *(v0 + 1416) = v3;
  *(v0 + 1432) = *(v0 + 4264);
  *(v0 + 1448) = *(v0 + 4280);
  v4 = *(v0 + 4184);
  *(v0 + 1336) = *(v0 + 4168);
  *(v0 + 1352) = v4;
  v5 = *(v0 + 4216);
  *(v0 + 1368) = *(v0 + 4200);
  *(v0 + 1384) = v5;
  v6 = *(v0 + 4120);
  *(v0 + 1272) = *(v0 + 4104);
  *(v0 + 1288) = v6;
  v7 = *(v0 + 4152);
  *(v0 + 1304) = *(v0 + 4136);
  *(v0 + 1320) = v7;
  v8 = type metadata accessor for SnoutManager();
  v9 = swift_task_alloc();
  *(v0 + 6264) = v9;
  *v9 = v0;
  v9[1] = sub_1001416B4;
  v10 = *(v0 + 5768);

  return (sub_10016E27C)(v0 + 1232, v10, v2, 1, v8, &off_100223858);
}

uint64_t sub_1001416B4()
{
  v1 = *v0;
  v2 = *(*v0 + 6264);
  v4 = *v0;

  sub_10003AE8C(v1 + 1232);

  return _swift_task_switch(sub_1001417B8, 0, 0);
}

uint64_t sub_1001417B8()
{
  sub_10000DA7C((v0[720] + 520), *(v0[720] + 544));
  v1 = swift_task_alloc();
  v0[784] = v1;
  *v1 = v0;
  v1[1] = sub_10014187C;
  v2 = v0[769];
  v3 = v0[768];
  v4 = v0[767];
  v5 = v0[766];
  v6 = v0[722];
  v7 = v0[721];
  v8 = v0[718];
  v9 = v0[717];

  return sub_1000D5974(v7, v6, v9, v8, v3, v2, v5, v4);
}

uint64_t sub_10014187C()
{
  v2 = *v1;
  v3 = *(*v1 + 6272);
  v10 = *v1;
  *(*v1 + 6280) = v0;

  if (v0)
  {
    v4 = sub_100141A70;
  }

  else
  {
    v5 = v2[769];
    v6 = v2[768];
    v7 = v2[767];
    v8 = v2[766];

    v4 = sub_1001419C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001419C4()
{
  v1 = v0[739];
  v2 = v0[736];
  v3 = v0[733];
  v4 = v0[730];
  v5 = v0[729];
  v6 = v0[728];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100141A70()
{
  v1 = v0[785];
  v2 = v0[769];
  v3 = v0[768];
  v4 = v0[767];
  v5 = v0[766];
  v6 = v0[730];
  v7 = v0[727];
  v8 = v0[726];

  v9 = Logger.postback.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[785];
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to report conversion: %@", v14, 0xCu);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    v17 = v0[785];
  }

  (*(v0[727] + 8))(v0[730], v0[726]);
  v18 = v0[739];
  v19 = v0[736];
  v20 = v0[733];
  v21 = v0[730];
  v22 = v0[729];
  v23 = v0[728];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100141C90()
{
  v1 = *(v0 + 6296);
  v2 = *(v0 + 6288);
  v3 = *(v0 + 5864);
  v4 = *(v0 + 5856);
  v5 = *(v0 + 5848);
  v6 = *(v0 + 5776);
  v7 = *(v0 + 5768);
  v8 = *(v0 + 3200);
  *(v0 + 920) = *(v0 + 3184);
  *(v0 + 936) = v8;
  v9 = *(v0 + 3232);
  *(v0 + 952) = *(v0 + 3216);
  *(v0 + 968) = v9;
  v10 = *(v0 + 3136);
  *(v0 + 856) = *(v0 + 3120);
  *(v0 + 872) = v10;
  v11 = *(v0 + 3168);
  *(v0 + 888) = *(v0 + 3152);
  *(v0 + 904) = v11;
  v12 = *(v0 + 3072);
  *(v0 + 792) = *(v0 + 3056);
  *(v0 + 808) = v12;
  v13 = *(v0 + 3104);
  *(v0 + 824) = *(v0 + 3088);
  *(v0 + 840) = v13;
  v14 = *(v0 + 3040);
  *(v0 + 760) = *(v0 + 3024);
  *(v0 + 776) = v14;
  *(v0 + 984) = v7;
  *(v0 + 992) = v6;
  *(v0 + 1000) = 257;
  sub_1000E191C(v0 + 760);
  v15 = *(v0 + 968);
  *(v0 + 704) = *(v0 + 952);
  *(v0 + 720) = v15;
  *(v0 + 736) = *(v0 + 984);
  *(v0 + 752) = *(v0 + 1000);
  v16 = *(v0 + 904);
  *(v0 + 640) = *(v0 + 888);
  *(v0 + 656) = v16;
  v17 = *(v0 + 936);
  *(v0 + 672) = *(v0 + 920);
  *(v0 + 688) = v17;
  v18 = *(v0 + 840);
  *(v0 + 576) = *(v0 + 824);
  *(v0 + 592) = v18;
  v19 = *(v0 + 872);
  *(v0 + 608) = *(v0 + 856);
  *(v0 + 624) = v19;
  v20 = *(v0 + 776);
  *(v0 + 512) = *(v0 + 760);
  *(v0 + 528) = v20;
  v21 = *(v0 + 808);
  *(v0 + 544) = *(v0 + 792);
  *(v0 + 560) = v21;

  sub_100010568(v0 + 3024, v0 + 2800);
  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v3, v5);
  *(v0 + 5704) = v2;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  sub_10014C558();
  v22 = swift_dynamicCast();
  v23 = v22;
  if (v22)
  {
    v24 = *(v0 + 5712);
    v47 = *(v0 + 3072);
    v48 = *(v0 + 3064);

    v25 = [v24 domain];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v27;
    v46 = v26;

    v44 = [v24 code];
  }

  else
  {
    v47 = *(v0 + 3072);
    v48 = *(v0 + 3064);

    v44 = 0;
    v45 = 0;
    v46 = 0;
    v24 = 0;
  }

  *(v0 + 6304) = v24;
  v28 = *(v0 + 3144);
  v29 = *(v0 + 3137);
  v30 = *(v0 + 3107);
  v31 = *(v0 + 3104);
  v32 = *(v0 + 3024);
  v42 = *(v0 + 3209);
  v43 = *(v0 + 3109);
  v33 = *(v0 + 3224);
  v40 = *(v0 + 3232);
  v41 = *(v0 + 3216);
  v34 = *(v0 + 3240);
  *(v0 + 6440) = *(v0 + 3152);
  *(v0 + 6432) = v23 ^ 1;
  sub_10000CDE0(&qword_10023BCB0, &unk_1001BE250);
  v35 = swift_allocObject();
  *(v0 + 6312) = v35;
  *(v35 + 16) = xmmword_1001B93B0;
  *(v35 + 32) = v32;
  *(v35 + 40) = v48;
  *(v35 + 48) = v47;
  *(v35 + 56) = v31;
  *(v35 + 57) = v30;
  *(v35 + 58) = v29;
  *(v35 + 64) = v28;
  *(v35 + 72) = *(v0 + 6440);
  *(v35 + 73) = v43;
  *(v35 + 80) = v46;
  *(v35 + 88) = v45;
  *(v35 + 96) = v44;
  *(v35 + 104) = *(v0 + 6432);
  *(v35 + 105) = v42;
  *(v35 + 112) = v41;
  *(v35 + 120) = v33;
  *(v35 + 128) = v40;
  *(v35 + 136) = v34;

  v36 = swift_task_alloc();
  *(v0 + 6320) = v36;
  *v36 = v0;
  v36[1] = sub_10014202C;
  v37 = *(v0 + 6296);
  v38 = *(v0 + 5784);

  return sub_10016D920(v35, v38);
}

uint64_t sub_10014202C()
{
  v1 = *(*v0 + 6320);
  v2 = *(*v0 + 6312);
  v3 = *(*v0 + 6296);
  v5 = *v0;

  return _swift_task_switch(sub_100142158, v3, 0);
}

uint64_t sub_100142158()
{
  v1 = *(v0 + 6288);

  sub_10003AE8C(v0 + 3024);

  return _swift_task_switch(sub_1001421D4, 0, 0);
}

uint64_t sub_1001421D4()
{
  v1 = v0[786];

  v2 = v0[739];
  v3 = v0[736];
  v4 = v0[733];
  v5 = v0[730];
  v6 = v0[729];
  v7 = v0[728];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100142288()
{
  v39 = v0;
  v1 = *(v0 + 6032);
  *(v0 + 6288) = v1;
  v2 = *(v0 + 5832);
  v3 = *(v0 + 5816);
  v4 = *(v0 + 5808);
  v5 = *(v0 + 5728);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, v0 + 4472);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5832);
  v11 = *(v0 + 5816);
  v12 = *(v0 + 5808);
  if (v9)
  {
    v37 = *(v0 + 5832);
    v13 = *(v0 + 5728);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v38);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch postback failed for conversion ID: %s, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v37, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 5976);
  v19 = *(v0 + 5760);
  v20 = *(v0 + 1040);
  v21 = *(v0 + 1024);
  v22 = sub_1000C7C10(v1);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = sub_10000DA7C((v19 + 560), *(v19 + 584));
  *(v0 + 3024) = v18;
  *(v0 + 3032) = v22;
  *(v0 + 3040) = v24;
  *(v0 + 3048) = v26;
  *(v0 + 3056) = v28;
  v30 = *(v0 + 4432);
  *(v0 + 3192) = *(v0 + 4416);
  *(v0 + 3208) = v30;
  *(v0 + 3224) = *(v0 + 4448);
  *(v0 + 3240) = *(v0 + 4464);
  v31 = *(v0 + 4368);
  *(v0 + 3128) = *(v0 + 4352);
  *(v0 + 3144) = v31;
  v32 = *(v0 + 4400);
  *(v0 + 3160) = *(v0 + 4384);
  *(v0 + 3176) = v32;
  v33 = *(v0 + 4304);
  *(v0 + 3064) = *(v0 + 4288);
  *(v0 + 3080) = v33;
  v34 = *(v0 + 4336);
  *(v0 + 3096) = *(v0 + 4320);
  *(v0 + 3112) = v34;
  v35 = *v29;
  *(v0 + 6296) = *v29;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v35, 0);
}

uint64_t sub_100142564()
{
  v39 = v0;
  v1 = *(v0 + 6064);
  *(v0 + 6288) = v1;
  v2 = *(v0 + 5832);
  v3 = *(v0 + 5816);
  v4 = *(v0 + 5808);
  v5 = *(v0 + 5728);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, v0 + 4472);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5832);
  v11 = *(v0 + 5816);
  v12 = *(v0 + 5808);
  if (v9)
  {
    v37 = *(v0 + 5832);
    v13 = *(v0 + 5728);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v38);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch postback failed for conversion ID: %s, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v37, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 5976);
  v19 = *(v0 + 5760);
  v20 = *(v0 + 1040);
  v21 = *(v0 + 1024);
  v22 = sub_1000C7C10(v1);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = sub_10000DA7C((v19 + 560), *(v19 + 584));
  *(v0 + 3024) = v18;
  *(v0 + 3032) = v22;
  *(v0 + 3040) = v24;
  *(v0 + 3048) = v26;
  *(v0 + 3056) = v28;
  v30 = *(v0 + 4432);
  *(v0 + 3192) = *(v0 + 4416);
  *(v0 + 3208) = v30;
  *(v0 + 3224) = *(v0 + 4448);
  *(v0 + 3240) = *(v0 + 4464);
  v31 = *(v0 + 4368);
  *(v0 + 3128) = *(v0 + 4352);
  *(v0 + 3144) = v31;
  v32 = *(v0 + 4400);
  *(v0 + 3160) = *(v0 + 4384);
  *(v0 + 3176) = v32;
  v33 = *(v0 + 4304);
  *(v0 + 3064) = *(v0 + 4288);
  *(v0 + 3080) = v33;
  v34 = *(v0 + 4336);
  *(v0 + 3096) = *(v0 + 4320);
  *(v0 + 3112) = v34;
  v35 = *v29;
  *(v0 + 6296) = *v29;
  swift_errorRetain();

  return _swift_task_switch(sub_100141C90, v35, 0);
}

uint64_t sub_100142840()
{
  v1 = *v0;
  v2 = *(*v0 + 6336);
  v4 = *v0;

  sub_10003AE8C(v1 + 2576);

  return _swift_task_switch(sub_100142944, 0, 0);
}

uint64_t sub_100142944()
{
  v1 = v0[791];

  sub_10000DA7C((v0[720] + 520), *(v0[720] + 544));
  v2 = swift_task_alloc();
  v0[784] = v2;
  *v2 = v0;
  v2[1] = sub_10014187C;
  v3 = v0[769];
  v4 = v0[768];
  v5 = v0[767];
  v6 = v0[766];
  v7 = v0[722];
  v8 = v0[721];
  v9 = v0[718];
  v10 = v0[717];

  return sub_1000D5974(v8, v7, v10, v9, v4, v3, v6, v5);
}

uint64_t sub_100142A10()
{
  v41 = v0;
  v1 = *(v0 + 6240);
  *(v0 + 6328) = v1;
  v2 = *(v0 + 5824);
  v3 = *(v0 + 5816);
  v4 = *(v0 + 5808);
  v5 = *(v0 + 5728);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, v0 + 4616);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5824);
  v11 = *(v0 + 5816);
  v12 = *(v0 + 5808);
  if (v9)
  {
    v13 = *(v0 + 5728);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v10;
    v40 = swift_slowAlloc();
    v16 = v40;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v40);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Postback finalization failed for conversion ID: %s, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v39, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 6192);
  v38 = *(v0 + 5776);
  v19 = *(v0 + 5760);
  v20 = *(v0 + 1712);
  v21 = *(v0 + 1696);
  v22 = sub_1000C7C10(v1);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_10000DA7C((v19 + 560), *(v19 + 584));
  *(v0 + 2576) = v18;
  *(v0 + 2584) = v22;
  *(v0 + 2592) = v24;
  *(v0 + 2600) = v26;
  *(v0 + 2608) = v28;
  v29 = *(v0 + 4248);
  *(v0 + 2744) = *(v0 + 4232);
  *(v0 + 2760) = v29;
  *(v0 + 2776) = *(v0 + 4264);
  *(v0 + 2792) = *(v0 + 4280);
  v30 = *(v0 + 4184);
  *(v0 + 2680) = *(v0 + 4168);
  *(v0 + 2696) = v30;
  v31 = *(v0 + 4216);
  *(v0 + 2712) = *(v0 + 4200);
  *(v0 + 2728) = v31;
  v32 = *(v0 + 4120);
  *(v0 + 2616) = *(v0 + 4104);
  *(v0 + 2632) = v32;
  v33 = *(v0 + 4152);
  *(v0 + 2648) = *(v0 + 4136);
  *(v0 + 2664) = v33;
  v34 = type metadata accessor for SnoutManager();
  v35 = swift_task_alloc();
  *(v0 + 6336) = v35;
  *v35 = v0;
  v35[1] = sub_100142840;
  v36 = *(v0 + 5768);

  return (sub_10016E27C)(v0 + 2576, v36, v38, 1, v34, &off_100223858);
}

uint64_t sub_100142DB0()
{
  v41 = v0;
  v1 = *(v0 + 6256);
  *(v0 + 6328) = v1;
  v2 = *(v0 + 5824);
  v3 = *(v0 + 5816);
  v4 = *(v0 + 5808);
  v5 = *(v0 + 5728);
  v6 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_100070EEC(v5, v0 + 4616);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  sub_10003BC20(v5);

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 5824);
  v11 = *(v0 + 5816);
  v12 = *(v0 + 5808);
  if (v9)
  {
    v13 = *(v0 + 5728);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v10;
    v40 = swift_slowAlloc();
    v16 = v40;
    *v14 = 136315394;
    *(v14 + 4) = sub_10017AD04(*(v13 + 56), *(v13 + 64), &v40);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Postback finalization failed for conversion ID: %s, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v16);

    (*(v11 + 8))(v39, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 6192);
  v38 = *(v0 + 5776);
  v19 = *(v0 + 5760);
  v20 = *(v0 + 1712);
  v21 = *(v0 + 1696);
  v22 = sub_1000C7C10(v1);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_10000DA7C((v19 + 560), *(v19 + 584));
  *(v0 + 2576) = v18;
  *(v0 + 2584) = v22;
  *(v0 + 2592) = v24;
  *(v0 + 2600) = v26;
  *(v0 + 2608) = v28;
  v29 = *(v0 + 4248);
  *(v0 + 2744) = *(v0 + 4232);
  *(v0 + 2760) = v29;
  *(v0 + 2776) = *(v0 + 4264);
  *(v0 + 2792) = *(v0 + 4280);
  v30 = *(v0 + 4184);
  *(v0 + 2680) = *(v0 + 4168);
  *(v0 + 2696) = v30;
  v31 = *(v0 + 4216);
  *(v0 + 2712) = *(v0 + 4200);
  *(v0 + 2728) = v31;
  v32 = *(v0 + 4120);
  *(v0 + 2616) = *(v0 + 4104);
  *(v0 + 2632) = v32;
  v33 = *(v0 + 4152);
  *(v0 + 2648) = *(v0 + 4136);
  *(v0 + 2664) = v33;
  v34 = type metadata accessor for SnoutManager();
  v35 = swift_task_alloc();
  *(v0 + 6336) = v35;
  *v35 = v0;
  v35[1] = sub_100142840;
  v36 = *(v0 + 5768);

  return (sub_10016E27C)(v0 + 2576, v36, v38, 1, v34, &off_100223858);
}

uint64_t sub_100143150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[105] = v6;
  v7[104] = a6;
  v7[103] = a5;
  v7[102] = a4;
  v7[101] = a3;
  v7[100] = a2;
  v7[99] = a1;
  v8 = type metadata accessor for Logger();
  v7[106] = v8;
  v9 = *(v8 - 8);
  v7[107] = v9;
  v10 = *(v9 + 64) + 15;
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  v7[110] = swift_task_alloc();
  v7[111] = swift_task_alloc();
  v11 = type metadata accessor for Calendar.Component();
  v7[112] = v11;
  v12 = *(v11 - 8);
  v7[113] = v12;
  v13 = *(v12 + 64) + 15;
  v7[114] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v7[115] = v14;
  v15 = *(v14 - 8);
  v7[116] = v15;
  v16 = *(v15 + 64) + 15;
  v7[117] = swift_task_alloc();
  v17 = *(*(sub_10000CDE0(&qword_10023D840, &qword_1001C19D8) - 8) + 64) + 15;
  v7[118] = swift_task_alloc();
  v7[119] = swift_task_alloc();

  return _swift_task_switch(sub_100143348, 0, 0);
}

uint64_t sub_100143348()
{
  v1 = *(*(v0 + 792) + 16);
  *(v0 + 960) = v1;
  if (v1)
  {
    v2 = 0;
    v133 = (v0 + 688);
    v135 = (v0 + 1033);
    v136 = (v0 + 1025);
    v137 = (v0 + 1041);
    v138 = (v0 + 1076);
    v139 = (v0 + 1082);
    v141 = (v0 + 1049);
    v140 = (v0 + 1094);
    v3 = _swiftEmptyArrayStorage;
    *(v0 + 1060) = enum case for Calendar.Component.hour(_:);
    while (1)
    {
      *(v0 + 976) = v3;
      *(v0 + 968) = v2;
      v4 = (*(v0 + 792) + 32 * v2);
      v5 = v4[5];
      v6 = v4[6];
      v7 = v4[7];
      if (*(*(v0 + 824) + 16))
      {
        v8 = sub_1000C3CA8(v7);
        if (v9)
        {
          break;
        }
      }

      if (*(*(v0 + 832) + 16) && (v10 = sub_1000C3CA8(v7), (v11 & 1) != 0))
      {
        v12 = *(*(v0 + 832) + 56) + 224 * v10;
        v13 = *(v12 + 32);
        v154 = *(v12 + 24);
        v14 = *(v12 + 184);
        if (*(v12 + 8))
        {
          v15 = 1;
        }

        else
        {
          v15 = 4;
        }

        if (!*(v12 + 136))
        {
          v15 = 0;
        }

        v152 = v15;
        if (v14)
        {
          v16 = *(v12 + 176);

          v17._countAndFlagsBits = v16;
          v17._object = v14;
          v18 = _findStringSwitchCase(cases:string:)(&off_1002168B0, v17);

          if (v18 == 1)
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          if (v18)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {

          v20 = 2;
        }

        v28 = String.lowercased()();
        v29 = _findStringSwitchCase(cases:string:)(&off_100213600, v28);

        if (v29 >= 4)
        {
          LOBYTE(v29) = 0;
        }

        sub_1000183C0();
        swift_allocError();
        *v30 = v29;
        v31 = _convertErrorToNSError(_:)();

        v32 = [v31 domain];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = [v31 code];
        *(v0 + 1088) = 1;
        *(v0 + 1024) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100089644(0, *(v3 + 2) + 1, 1, v3);
        }

        v38 = *(v3 + 2);
        v37 = *(v3 + 3);
        if (v38 >= v37 >> 1)
        {
          v3 = sub_100089644((v37 > 1), v38 + 1, 1, v3);
        }

        *(v3 + 2) = v38 + 1;
        v39 = &v3[112 * v38];
        *(v39 + 16) = 256;
        v40 = *(v0 + 1054);
        *(v39 + 19) = *(v0 + 1058);
        *(v39 + 34) = v40;
        *(v39 + 5) = v154;
        *(v39 + 6) = v13;
        v39[56] = v152;
        v39[57] = v20;
        v39[58] = 3;
        v41 = *(v0 + 1065);
        v39[63] = *(v0 + 1069);
        *(v39 + 59) = v41;
        *(v39 + 8) = 0;
        v39[72] = *(v0 + 1088);
        v39[73] = 2;
        v42 = *(v0 + 1070);
        *(v39 + 39) = *(v0 + 1074);
        *(v39 + 74) = v42;
        *(v39 + 10) = v33;
        *(v39 + 11) = v35;
        *(v39 + 12) = v36;
        v39[104] = *(v0 + 1024);
        *(v39 + 105) = 514;
        v43 = *(v0 + 1089);
        v39[111] = *(v0 + 1093);
        *(v39 + 107) = v43;
        *(v39 + 7) = 0u;
        *(v39 + 8) = 0u;
      }

      else
      {
        v21 = *(v0 + 888);
        v22 = *(v0 + 856);
        v23 = *(v0 + 848);

        v24 = Logger.postback.unsafeMutableAddressor();
        (*(v22 + 16))(v21, v24, v23);

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;

          *(v27 + 4) = v7;

          _os_log_impl(&_mh_execute_header, v25, v26, "Could not find impression with ordering index: %ld in AAK or SKAN maps", v27, 0xCu);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        (*(*(v0 + 856) + 8))(*(v0 + 888), *(v0 + 848));
      }

      v2 = *(v0 + 968) + 1;
      if (v2 == *(v0 + 960))
      {
        goto LABEL_33;
      }
    }

    v58 = *(v0 + 952);
    v59 = *(*(v0 + 824) + 56) + (v8 << 6);
    v60 = *(v59 + 8);
    v147 = *v59;
    v150 = *(v0 + 944);
    v153 = *(v59 + 16);
    v61 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
    v155 = *(v61 - 8);
    v143 = *(v155 + 56);
    v143(v58, 1, 1, v61);
    v62 = type metadata accessor for AppImpressionPayload();
    v145 = sub_10003AFB8();
    v63 = sub_10003B00C();
    v64 = sub_10014CA00(&qword_10023A808, type metadata accessor for AppImpressionPayload);
    v65 = sub_10014CA00(&qword_10023A810, type metadata accessor for AppImpressionPayload);

    v66 = v147;
    v148 = v62;
    JWS.init(compactJWS:)(v66, v60, v62, v145, v63, v64, v65, v150);
    v82 = *(v0 + 952);
    v83 = *(v0 + 944);
    v143(v83, 0, 1, v61);
    sub_10014CA48(v83, v82);
    *(v0 + 984) = 0;
    v84 = String.lowercased()();
    v85 = _findStringSwitchCase(cases:string:)(&off_100213600, v84);

    if (v85 >= 4)
    {
      v86 = 0;
    }

    else
    {
      v86 = v85;
    }

    v87 = *(v0 + 952);
    sub_1000183C0();
    v88 = swift_allocError();
    *v89 = v86;
    v90 = *(v155 + 48);
    v91 = v90(v87, 1, v61);
    v92 = 0;
    v156 = 0;
    v93 = *(v0 + 952);
    if (!v91)
    {
      v94 = (v93 + *(v148 + 40) + *(v61 + 68));
      v92 = *v94;
      v156 = v94[1];
    }

    if (v90(v93, 1, v61))
    {
      v95 = 2;
    }

    else
    {
      v95 = *(v93 + *(v61 + 68) + *(v148 + 44));
    }

    v131 = v95;
    *(v0 + 784) = v88;
    swift_errorRetain();
    swift_errorRetain();
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
    v151 = v92;
    if (swift_dynamicCast())
    {
      sub_10000DA64(v133, v0 + 728);
      v96 = *(v0 + 752);
      v97 = *(v0 + 760);
      sub_10000DA7C((v0 + 728), v96);
      v98 = sub_10009DB48(v96);
      v144 = v99;
      v146 = v98;
      v132 = v101;
      v134 = v100;
      sub_10000DB58((v0 + 728));
    }

    else
    {
      *(v0 + 720) = 0;
      *v133 = 0u;
      *(v0 + 704) = 0u;
      sub_10000DAF8(v133, &qword_10023AEC0, &unk_1001BCC00);
      v102 = _convertErrorToNSError(_:)();
      v103 = [v102 domain];
      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v105;
      v146 = v104;

      *(v0 + 776) = [v102 code];
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v107;
      v134 = v106;
    }

    v108 = *(v0 + 1060);
    v109 = *(v0 + 936);
    v110 = *(v0 + 928);
    v111 = *(v0 + 920);
    v112 = *(v0 + 912);
    v113 = *(v0 + 904);
    v114 = *(v0 + 896);
    v142 = *(v0 + 840);
    v149 = *(v0 + 816);
    static Date.now.getter();
    (*(v113 + 104))(v112, v108, v114);
    v115 = sub_100025808(v109, v112);
    v117 = v116;
    (*(v113 + 8))(v112, v114);
    (*(v110 + 8))(v109, v111);
    if (v117)
    {
      v118 = 0;
    }

    else
    {
      v118 = v115;
    }

    v119 = [objc_opt_self() buildVersion];
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    *(v0 + 466) = *v138;
    *(v0 + 561) = *v136;
    *(v0 + 578) = *v139;
    *(v0 + 596) = *(v0 + 1036);
    *(v0 + 593) = *v135;
    *(v0 + 611) = *v140;
    *(v0 + 625) = *v137;
    *(v0 + 651) = *v141;
    *(v0 + 340) = *(v0 + 1028);
    *(v0 + 337) = *v136;
    *(v0 + 354) = *v139;
    *(v0 + 372) = *(v0 + 1036);
    *(v0 + 369) = *v135;
    *(v0 + 609) = 770;
    *(v0 + 385) = 770;
    *(v0 + 387) = *v140;
    *(v0 + 404) = *(v0 + 1044);
    *(v0 + 401) = *v137;
    *(v0 + 427) = *v141;
    *(v0 + 1064) = 1;
    *(v0 + 1048) = 1;
    *(v0 + 1104) = 1;
    *(v0 + 1040) = 1;
    *(v0 + 1032) = 1;
    *(v0 + 470) = *(v0 + 1080);
    *(v0 + 564) = *(v0 + 1028);
    *(v0 + 582) = *(v0 + 1086);
    *(v0 + 615) = *(v0 + 1098);
    *(v0 + 628) = *(v0 + 1044);
    *(v0 + 464) = 256;
    *(v0 + 632) = 0u;
    *(v0 + 240) = 256;
    *(v0 + 655) = *(v0 + 1053);
    *(v0 + 246) = *(v0 + 1080);
    *(v0 + 242) = *v138;
    *(v0 + 248) = v146;
    *(v0 + 472) = v146;
    *(v0 + 480) = v144;
    *(v0 + 256) = v144;
    *(v0 + 264) = v134;
    *(v0 + 488) = v134;
    *(v0 + 496) = v132;
    *(v0 + 272) = v132;
    *(v0 + 280) = v151;
    *(v0 + 504) = v151;
    *(v0 + 512) = v156;
    *(v0 + 288) = v156;
    *(v0 + 296) = v118;
    *(v0 + 520) = v118;
    *(v0 + 528) = v120;
    *(v0 + 304) = v120;
    *(v0 + 312) = v122;
    *(v0 + 536) = v122;
    *(v0 + 544) = 512;
    *(v0 + 320) = 512;
    *(v0 + 546) = v131;
    *(v0 + 322) = v131;
    *(v0 + 547) = v153;
    *(v0 + 323) = v153;
    v123 = *(v0 + 1064);
    *(v0 + 560) = v123;
    *(v0 + 336) = v123;
    v124 = *(v0 + 1048);
    *(v0 + 576) = v124;
    *(v0 + 352) = v124;
    *(v0 + 577) = 3;
    *(v0 + 353) = 3;
    *(v0 + 358) = *(v0 + 1086);
    v125 = *(v0 + 1104);
    *(v0 + 592) = v125;
    *(v0 + 368) = v125;
    v126 = *(v0 + 1040);
    *(v0 + 608) = v126;
    *(v0 + 384) = v126;
    *(v0 + 391) = *(v0 + 1098);
    v127 = *(v0 + 1032);
    *(v0 + 624) = v127;
    *(v0 + 400) = v127;
    *(v0 + 548) = 514;
    *(v0 + 648) = 514;
    *(v0 + 324) = 514;
    *(v0 + 424) = 514;
    *(v0 + 650) = 2;
    *(v0 + 426) = 2;
    *(v0 + 431) = *(v0 + 1053);
    *(v0 + 552) = 0;
    *(v0 + 568) = 0;
    *(v0 + 584) = 0;
    *(v0 + 600) = 0;
    *(v0 + 616) = 0;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 328) = 0;
    *(v0 + 344) = 0;
    *(v0 + 360) = 0;
    *(v0 + 376) = 0;
    *(v0 + 392) = 0;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 464, v0 + 16);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v142 + 560), *(v142 + 584));
    v128 = type metadata accessor for SnoutManager();
    v129 = swift_task_alloc();
    *(v0 + 992) = v129;
    *v129 = v0;
    v129[1] = sub_10014455C;
    v130 = *(v0 + 808);

    return (sub_10016E27C)(v0 + 464, v130, v149, 1, v128, &off_100223858);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_33:
    if (*(v3 + 2))
    {
      v44 = type metadata accessor for JSONEncoder();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      *(v0 + 768) = v3;
      sub_10000CDE0(&qword_10023D848, &unk_1001C19E0);
      sub_10014C928();
      v67 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v69 = v68;

      *(v0 + 1000) = v69;
      *(v0 + 1008) = v67;
      v70 = swift_task_alloc();
      *(v0 + 1016) = v70;
      *v70 = v0;
      v70[1] = sub_10014589C;
      v71 = *(v0 + 800);

      return sub_1001553C8(v67, v69, v71);
    }

    else
    {
      v47 = *(v0 + 880);
      v48 = *(v0 + 856);
      v49 = *(v0 + 848);

      v50 = Logger.postback.unsafeMutableAddressor();
      (*(v48 + 16))(v47, v50, v49);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 880);
      v55 = *(v0 + 856);
      v56 = *(v0 + 848);
      if (v53)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Received no skan impression errors", v57, 2u);
      }

      (*(v55 + 8))(v54, v56);
      v73 = *(v0 + 952);
      v74 = *(v0 + 944);
      v75 = *(v0 + 936);
      v76 = *(v0 + 912);
      v77 = *(v0 + 888);
      v78 = *(v0 + 880);
      v79 = *(v0 + 872);
      v80 = *(v0 + 864);

      v81 = *(v0 + 8);

      return v81();
    }
  }
}

uint64_t sub_10014455C()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v4 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_100144660, 0, 0);
}

uint64_t sub_100144660()
{
  sub_10000DAF8(*(v0 + 952), &qword_10023D840, &qword_1001C19D8);
  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968) + 1;
  if (v3 == *(v0 + 960))
  {
LABEL_2:
    if (!*(v2 + 2))
    {
      v58 = *(v0 + 880);
      v59 = *(v0 + 856);
      v60 = *(v0 + 848);

      v61 = Logger.postback.unsafeMutableAddressor();
      (*(v59 + 16))(v58, v61, v60);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 880);
      v66 = *(v0 + 856);
      v67 = *(v0 + 848);
      if (v64)
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Received no skan impression errors", v68, 2u);
      }

      (*(v66 + 8))(v65, v67);
      goto LABEL_48;
    }

    v4 = type metadata accessor for JSONEncoder();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *(v0 + 768) = v2;
    sub_10000CDE0(&qword_10023D848, &unk_1001C19E0);
    sub_10014C928();
    v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v1)
    {
      v9 = *(v0 + 864);
      v10 = *(v0 + 856);
      v11 = *(v0 + 848);

      v12 = Logger.postback.unsafeMutableAddressor();
      (*(v10 + 16))(v9, v12, v11);
      swift_errorRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 800);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 134218242;
        *(v16 + 4) = v15;
        *(v16 + 12) = 2112;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v13, v14, "Encountered error while storing skanner events for app %llu with error: %@", v16, 0x16u);
        sub_10000DAF8(v17, &qword_100239F10, &qword_1001B4FD0);
      }

      else
      {
      }

      (*(*(v0 + 856) + 8))(*(v0 + 864), *(v0 + 848));
LABEL_48:
      v96 = *(v0 + 952);
      v97 = *(v0 + 944);
      v98 = *(v0 + 936);
      v99 = *(v0 + 912);
      v100 = *(v0 + 888);
      v101 = *(v0 + 880);
      v102 = *(v0 + 872);
      v103 = *(v0 + 864);

      v104 = *(v0 + 8);

      return v104();
    }

    v91 = v7;
    v92 = v8;

    *(v0 + 1000) = v92;
    *(v0 + 1008) = v91;
    v93 = swift_task_alloc();
    *(v0 + 1016) = v93;
    *v93 = v0;
    v93[1] = sub_10014589C;
    v94 = *(v0 + 800);

    return sub_1001553C8(v91, v92, v94);
  }

  else
  {
    v172 = (v0 + 1033);
    v173 = (v0 + 1025);
    v174 = (v0 + 1041);
    v175 = (v0 + 1076);
    v176 = (v0 + 1082);
    v178 = (v0 + 1049);
    v177 = (v0 + 1094);
    while (1)
    {
      *(v0 + 976) = v2;
      *(v0 + 968) = v3;
      v19 = (*(v0 + 792) + 32 * v3);
      v20 = v19[5];
      v21 = v19[6];
      v22 = v19[7];
      if (*(*(v0 + 824) + 16))
      {
        v23 = sub_1000C3CA8(v22);
        if (v24)
        {
          break;
        }
      }

      if (*(*(v0 + 832) + 16) && (v25 = sub_1000C3CA8(v22), (v26 & 1) != 0))
      {
        v179 = v1;
        v34 = *(*(v0 + 832) + 56) + 224 * v25;
        v35 = *(v34 + 32);
        v36 = *(v34 + 184);
        if (*(v34 + 8))
        {
          v37 = 1;
        }

        else
        {
          v37 = 4;
        }

        if (!*(v34 + 136))
        {
          v37 = 0;
        }

        v157 = *(v34 + 32);
        v158 = *(v34 + 24);
        v156 = v37;
        if (v36)
        {
          v38 = *(v34 + 176);

          v39._countAndFlagsBits = v38;
          v39._object = v36;
          v40 = _findStringSwitchCase(cases:string:)(&off_1002168B0, v39);

          if (v40 == 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = 2;
          }

          if (!v40)
          {
            v41 = 0;
          }

          v155 = v41;
        }

        else
        {

          v155 = 2;
        }

        v42 = String.lowercased()();
        v43 = _findStringSwitchCase(cases:string:)(&off_100213600, v42);

        if (v43 >= 4)
        {
          LOBYTE(v43) = 0;
        }

        sub_1000183C0();
        swift_allocError();
        *v44 = v43;
        v45 = _convertErrorToNSError(_:)();

        v46 = [v45 domain];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = [v45 code];
        *(v0 + 1088) = 1;
        *(v0 + 1024) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_100089644(0, *(v2 + 2) + 1, 1, v2);
        }

        v52 = *(v2 + 2);
        v51 = *(v2 + 3);
        if (v52 >= v51 >> 1)
        {
          v2 = sub_100089644((v51 > 1), v52 + 1, 1, v2);
        }

        *(v2 + 2) = v52 + 1;
        v53 = &v2[112 * v52];
        *(v53 + 16) = 256;
        v54 = *(v0 + 1054);
        *(v53 + 19) = *(v0 + 1058);
        *(v53 + 34) = v54;
        *(v53 + 5) = v158;
        *(v53 + 6) = v157;
        v53[56] = v156;
        v53[57] = v155;
        v53[58] = 3;
        v55 = *(v0 + 1065);
        v53[63] = *(v0 + 1069);
        *(v53 + 59) = v55;
        *(v53 + 8) = 0;
        v53[72] = *(v0 + 1088);
        v53[73] = 2;
        v56 = *(v0 + 1070);
        *(v53 + 39) = *(v0 + 1074);
        *(v53 + 74) = v56;
        *(v53 + 10) = v47;
        *(v53 + 11) = v49;
        *(v53 + 12) = v50;
        v53[104] = *(v0 + 1024);
        *(v53 + 105) = 514;
        v57 = *(v0 + 1089);
        v53[111] = *(v0 + 1093);
        *(v53 + 107) = v57;
        *(v53 + 7) = 0u;
        *(v53 + 8) = 0u;
        v3 = *(v0 + 968) + 1;
        v1 = v179;
        if (v3 == *(v0 + 960))
        {
          goto LABEL_2;
        }
      }

      else
      {
        v27 = *(v0 + 888);
        v28 = *(v0 + 856);
        v29 = *(v0 + 848);

        v30 = Logger.postback.unsafeMutableAddressor();
        (*(v28 + 16))(v27, v30, v29);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;

          *(v33 + 4) = v22;

          _os_log_impl(&_mh_execute_header, v31, v32, "Could not find impression with ordering index: %ld in AAK or SKAN maps", v33, 0xCu);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        (*(*(v0 + 856) + 8))(*(v0 + 888), *(v0 + 848));
        v3 = *(v0 + 968) + 1;
        if (v3 == *(v0 + 960))
        {
          goto LABEL_2;
        }
      }
    }

    v69 = *(v0 + 952);
    v70 = *(*(v0 + 824) + 56) + (v23 << 6);
    v71 = *(v70 + 8);
    v163 = *v70;
    v165 = *(v0 + 944);
    v183 = *(v70 + 16);
    v72 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
    v168 = *(v72 - 8);
    v180 = v1;
    v159 = *(v168 + 56);
    v159(v69, 1, 1, v72);
    v73 = type metadata accessor for AppImpressionPayload();
    v161 = sub_10003AFB8();
    v74 = sub_10003B00C();
    v75 = sub_10014CA00(&qword_10023A808, type metadata accessor for AppImpressionPayload);
    v76 = sub_10014CA00(&qword_10023A810, type metadata accessor for AppImpressionPayload);

    v77 = v165;
    v166 = v73;
    JWS.init(compactJWS:)(v163, v71, v73, v161, v74, v75, v76, v77);
    if (v180)
    {
      v181 = v72;
      v78 = *(v0 + 872);
      v79 = *(v0 + 856);
      v80 = *(v0 + 848);
      v81 = Logger.postback.unsafeMutableAddressor();
      (*(v79 + 16))(v78, v81, v80);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = *(v0 + 872);
      v86 = *(v0 + 848);
      v87 = (*(v0 + 856) + 8);
      if (v84)
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Failed to create impression JWS", v88, 2u);
      }

      (*v87)(v85, v86);
      v90 = (v0 + 784);
      v89 = v0 + 688;
      v72 = v181;
    }

    else
    {
      v105 = *(v0 + 952);
      v106 = *(v0 + 944);
      v159(v106, 0, 1, v72);
      sub_10014CA48(v106, v105);
      v90 = (v0 + 784);
      v89 = v0 + 688;
    }

    *(v0 + 984) = 0;
    v107 = String.lowercased()();
    v108 = _findStringSwitchCase(cases:string:)(&off_100213600, v107);

    if (v108 >= 4)
    {
      LOBYTE(v108) = 0;
    }

    v109 = *(v0 + 952);
    sub_1000183C0();
    v110 = swift_allocError();
    *v111 = v108;
    v112 = *(v168 + 48);
    v113 = v112(v109, 1, v72);
    v114 = 0;
    v115 = 0;
    v116 = *(v0 + 952);
    if (!v113)
    {
      v117 = (v116 + *(v166 + 40) + *(v72 + 68));
      v114 = *v117;
      v115 = v117[1];
    }

    if (v112(v116, 1, v72))
    {
      v118 = 2;
    }

    else
    {
      v118 = *(v116 + *(v72 + 68) + *(v166 + 44));
    }

    v154 = v118;
    *v90 = v110;
    swift_errorRetain();
    swift_errorRetain();
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
    v182 = v114;
    v171 = v115;
    if (swift_dynamicCast())
    {
      sub_10000DA64(v89, v0 + 728);
      v119 = *(v0 + 752);
      v120 = *(v0 + 760);
      sub_10000DA7C((v0 + 728), v119);
      v121 = sub_10009DB48(v119);
      v167 = v122;
      v169 = v121;
      v160 = v124;
      v162 = v123;
      sub_10000DB58((v0 + 728));
    }

    else
    {
      *(v89 + 32) = 0;
      *v89 = 0u;
      *(v89 + 16) = 0u;
      sub_10000DAF8(v89, &qword_10023AEC0, &unk_1001BCC00);
      v125 = _convertErrorToNSError(_:)();
      v126 = [v125 domain];
      v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v167 = v128;
      v169 = v127;

      *(v0 + 776) = [v125 code];
      v129 = dispatch thunk of CustomStringConvertible.description.getter();
      v160 = v130;
      v162 = v129;
    }

    v131 = *(v0 + 1060);
    v132 = *(v0 + 936);
    v133 = *(v0 + 928);
    v134 = *(v0 + 920);
    v135 = *(v0 + 912);
    v136 = *(v0 + 904);
    v137 = *(v0 + 896);
    v164 = *(v0 + 840);
    v170 = *(v0 + 816);
    static Date.now.getter();
    (*(v136 + 104))(v135, v131, v137);
    v138 = sub_100025808(v132, v135);
    v140 = v139;
    (*(v136 + 8))(v135, v137);
    (*(v133 + 8))(v132, v134);
    if (v140)
    {
      v141 = 0;
    }

    else
    {
      v141 = v138;
    }

    v142 = [objc_opt_self() buildVersion];
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v144;

    *(v0 + 466) = *v175;
    *(v0 + 561) = *v173;
    *(v0 + 578) = *v176;
    *(v0 + 596) = *(v0 + 1036);
    *(v0 + 593) = *v172;
    *(v0 + 611) = *v177;
    *(v0 + 625) = *v174;
    *(v0 + 651) = *v178;
    *(v0 + 340) = *(v0 + 1028);
    *(v0 + 337) = *v173;
    *(v0 + 354) = *v176;
    *(v0 + 372) = *(v0 + 1036);
    *(v0 + 369) = *v172;
    *(v0 + 609) = 770;
    *(v0 + 385) = 770;
    *(v0 + 387) = *v177;
    *(v0 + 404) = *(v0 + 1044);
    *(v0 + 401) = *v174;
    *(v0 + 427) = *v178;
    *(v0 + 1064) = 1;
    *(v0 + 1048) = 1;
    *(v0 + 1104) = 1;
    *(v0 + 1040) = 1;
    *(v0 + 1032) = 1;
    *(v0 + 470) = *(v0 + 1080);
    *(v0 + 564) = *(v0 + 1028);
    *(v0 + 582) = *(v0 + 1086);
    *(v0 + 615) = *(v0 + 1098);
    *(v0 + 628) = *(v0 + 1044);
    *(v0 + 632) = 0u;
    *(v0 + 655) = *(v0 + 1053);
    *(v0 + 464) = 256;
    *(v0 + 240) = 256;
    *(v0 + 246) = *(v0 + 1080);
    *(v0 + 242) = *v175;
    *(v0 + 248) = v169;
    *(v0 + 472) = v169;
    *(v0 + 480) = v167;
    *(v0 + 256) = v167;
    *(v0 + 264) = v162;
    *(v0 + 488) = v162;
    *(v0 + 496) = v160;
    *(v0 + 272) = v160;
    *(v0 + 280) = v182;
    *(v0 + 504) = v182;
    *(v0 + 512) = v171;
    *(v0 + 288) = v171;
    *(v0 + 296) = v141;
    *(v0 + 520) = v141;
    *(v0 + 528) = v143;
    *(v0 + 304) = v143;
    *(v0 + 312) = v145;
    *(v0 + 536) = v145;
    *(v0 + 544) = 512;
    *(v0 + 320) = 512;
    *(v0 + 546) = v154;
    *(v0 + 322) = v154;
    *(v0 + 547) = v183;
    *(v0 + 323) = v183;
    v146 = *(v0 + 1064);
    *(v0 + 560) = v146;
    *(v0 + 336) = v146;
    v147 = *(v0 + 1048);
    *(v0 + 576) = v147;
    *(v0 + 352) = v147;
    *(v0 + 577) = 3;
    *(v0 + 353) = 3;
    *(v0 + 358) = *(v0 + 1086);
    v148 = *(v0 + 1104);
    *(v0 + 592) = v148;
    *(v0 + 368) = v148;
    v149 = *(v0 + 1040);
    *(v0 + 608) = v149;
    *(v0 + 384) = v149;
    *(v0 + 391) = *(v0 + 1098);
    v150 = *(v0 + 1032);
    *(v0 + 624) = v150;
    *(v0 + 400) = v150;
    *(v0 + 548) = 514;
    *(v0 + 648) = 514;
    *(v0 + 324) = 514;
    *(v0 + 424) = 514;
    *(v0 + 650) = 2;
    *(v0 + 426) = 2;
    *(v0 + 431) = *(v0 + 1053);
    *(v0 + 552) = 0;
    *(v0 + 568) = 0;
    *(v0 + 584) = 0;
    *(v0 + 600) = 0;
    *(v0 + 616) = 0;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 328) = 0;
    *(v0 + 344) = 0;
    *(v0 + 360) = 0;
    *(v0 + 376) = 0;
    *(v0 + 392) = 0;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 464, v0 + 16);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v164 + 560), *(v164 + 584));
    v151 = type metadata accessor for SnoutManager();
    v152 = swift_task_alloc();
    *(v0 + 992) = v152;
    *v152 = v0;
    v152[1] = sub_10014455C;
    v153 = *(v0 + 808);

    return (sub_10016E27C)(v0 + 464, v153, v170, 1, v151, &off_100223858);
  }
}

uint64_t sub_10014589C()
{
  v1 = *(*v0 + 1016);
  v3 = *v0;

  return _swift_task_switch(sub_100145998, 0, 0);
}

uint64_t sub_100145998()
{
  sub_10001BABC(v0[126], v0[125]);
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[114];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[108];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100145A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 1368) = v8;
  *(v9 + 1098) = a8;
  *(v9 + 1097) = a7;
  *(v9 + 1360) = a6;
  *(v9 + 1352) = a5;
  *(v9 + 1344) = a4;
  *(v9 + 1336) = a3;
  *(v9 + 1328) = a2;
  *(v9 + 1320) = a1;
  v10 = type metadata accessor for Logger();
  *(v9 + 1376) = v10;
  v11 = *(v10 - 8);
  *(v9 + 1384) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 1392) = swift_task_alloc();
  *(v9 + 1400) = swift_task_alloc();

  return _swift_task_switch(sub_100145B5C, 0, 0);
}

uint64_t sub_100145B5C()
{
  v1 = *(v0 + 1320);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 1384);
    v4 = (v1 + 32);
    v31 = (v0 + 808);
    v32 = _swiftEmptyArrayStorage;
    for (i = v2 - 1; ; --i)
    {
      v5 = *v4;
      *(v0 + 1024) = v4[1];
      v6 = v4[2];
      v7 = v4[3];
      v8 = v4[4];
      *(v0 + 1081) = *(v4 + 73);
      *(v0 + 1056) = v7;
      *(v0 + 1072) = v8;
      *(v0 + 1040) = v6;
      *(v0 + 1008) = v5;
      v39 = *(v0 + 1032);
      v40 = *(v0 + 1024);
      v37 = *(v0 + 1048);
      v38 = *(v0 + 1040);
      v35 = *(v0 + 1064);
      v36 = *(v0 + 1056);
      v33 = *(v0 + 1088);
      v34 = *(v0 + 1080);
      v9 = *(v0 + 1016);
      v10 = *(v0 + 1008);
      sub_100019760(v0 + 1008, v0 + 1104);
      v11 = sub_1000BB714();
      v12 = sub_1000BB768();
      v13 = sub_1000BB7BC();
      v14 = sub_1000BB810();

      JWS.init(compactJWS:)(v10, v9, &type metadata for Postback.JWSPayload, v11, v12, v13, v14, v31);
      v52 = *(v0 + 968);
      v53 = *(v0 + 984);
      v54 = *(v0 + 1000);
      v48 = *(v0 + 904);
      v49 = *(v0 + 920);
      v50 = *(v0 + 936);
      v51 = *(v0 + 952);
      v44 = *(v0 + 840);
      v45 = *(v0 + 856);
      v46 = *(v0 + 872);
      v47 = *(v0 + 888);
      v42 = *v31;
      v43 = *(v0 + 824);

      sub_100019798(v0 + 1008);
      *(v0 + 504) = v52;
      *(v0 + 520) = v53;
      *(v0 + 440) = v48;
      *(v0 + 456) = v49;
      *(v0 + 472) = v50;
      *(v0 + 488) = v51;
      *(v0 + 376) = v44;
      *(v0 + 392) = v45;
      *(v0 + 408) = v46;
      *(v0 + 424) = v47;
      *(v0 + 344) = v42;
      *(v0 + 360) = v43;
      *(v0 + 240) = v52;
      *(v0 + 256) = v53;
      *(v0 + 176) = v48;
      *(v0 + 192) = v49;
      *(v0 + 208) = v50;
      *(v0 + 224) = v51;
      *(v0 + 112) = v44;
      *(v0 + 128) = v45;
      *(v0 + 144) = v46;
      *(v0 + 160) = v47;
      *(v0 + 536) = v54;
      *(v0 + 288) = v39;
      *(v0 + 296) = v38;
      *(v0 + 304) = v37;
      *(v0 + 312) = v36;
      *(v0 + 320) = v35;
      *(v0 + 328) = v34;
      *(v0 + 336) = v33;
      *(v0 + 16) = v40;
      *(v0 + 24) = v39;
      *(v0 + 32) = v38;
      *(v0 + 40) = v37;
      *(v0 + 48) = v36;
      *(v0 + 56) = v35;
      *(v0 + 64) = v34;
      *(v0 + 72) = v33;
      *(v0 + 272) = v54;
      *(v0 + 280) = v40;
      *(v0 + 80) = v42;
      *(v0 + 96) = v43;
      sub_1000BB8B8(v0 + 280, v0 + 544);
      sub_1000BB914(v0 + 16);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v32;
      }

      else
      {
        v15 = sub_100088E34(0, *(v32 + 2) + 1, 1, v32);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_100088E34((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v32 = v15;
      memcpy(&v15[264 * v17 + 32], (v0 + 280), 0x108uLL);
      if (!i)
      {
        break;
      }

      v4 += 6;
    }

    v18 = v32;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  *(v0 + 1408) = 0;
  v19 = *(v0 + 1098);
  v20 = *(v0 + 1097);
  v21 = *(v0 + 1360);
  v22 = *(v0 + 1352);
  v23 = *(v0 + 1344);
  v24 = *(v0 + 1336);
  *(v0 + 1256) = v18;
  *(v0 + 1264) = v24;
  *(v0 + 1272) = v23;
  *(v0 + 1280) = v22;
  *(v0 + 1288) = v19 & 1;
  *(v0 + 1289) = 1;
  *(v0 + 1296) = v21;
  *(v0 + 1304) = v20 & 1;
  v25 = *(v0 + 1256);
  v26 = *(v0 + 1272);
  v27 = *(v0 + 1288);
  *(v0 + 1248) = v20 & 1;
  *(v0 + 1232) = v27;
  *(v0 + 1216) = v26;
  *(v0 + 1200) = v25;

  v28 = swift_task_alloc();
  *(v0 + 1416) = v28;
  *v28 = v0;
  v28[1] = sub_100146034;
  v29 = *(v0 + 1368);

  return sub_1001091AC(v0 + 1200);
}

uint64_t sub_100146034()
{
  v1 = *v0;
  v2 = *(*v0 + 1416);
  v4 = *v0;

  sub_10014C8D4(v1 + 1256);

  return _swift_task_switch(sub_100146138, 0, 0);
}

uint64_t sub_100146138()
{
  v1 = v0[176];
  v2 = v0[166];
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[164] = v2;
  sub_10000CDE0(&qword_10023A488, &qword_1001C19D0);
  sub_1000198F4();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;
  v0[178] = v6;
  v0[179] = v7;

  if (v1)
  {
    v9 = v0[174];
    v10 = v0[173];
    v11 = v0[172];
    v12 = Logger.postback.unsafeMutableAddressor();
    (*(v10 + 16))(v9, v12, v11);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Encountered error while trying to woof SKAN postbacks over %@", v15, 0xCu);
      sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(v0[173] + 8))(v0[174], v0[172]);
    v20 = v0[175];
    v21 = v0[174];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[180] = v18;
    *v18 = v0;
    v18[1] = sub_1001463EC;

    return sub_1001556C4(v6, v8);
  }
}

uint64_t sub_1001463EC()
{
  v2 = *(*v1 + 1440);
  v5 = *v1;
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v3 = sub_10014657C;
  }

  else
  {
    v3 = sub_100146500;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100146500()
{
  sub_10001BABC(v0[178], v0[179]);
  v1 = v0[175];
  v2 = v0[174];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10014657C()
{
  sub_10001BABC(v0[178], v0[179]);
  v1 = v0[181];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered error while trying to woof SKAN postbacks over %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[173] + 8))(v0[174], v0[172]);
  v11 = v0[175];
  v12 = v0[174];

  v13 = v0[1];

  return v13();
}

void *sub_100146740@<X0>(void *a1@<X8>)
{
  result = sub_1000E4EB8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_100146770(void *a1, uint64_t a2, uint64_t (*a3)(id, id, void *, void, void))
{
  v4 = [a1 connection];
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = a3(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  if (([v8 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_100146908@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v7 = static ConversionType.allCasesSet.getter();
  v8 = a2(a1, v7);

  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

void *sub_100146984@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v14 = sub_100088798(0, 1, 1, _swiftEmptyArrayStorage);
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
    v14 = sub_100088798((a7 > 1), v10, 1, v14);
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

        v14 = sub_100088798(0, *(v14 + 16) + 1, 1, v14);
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
      v41 = sub_100088798(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100088798((v28 > 1), v13 + 1, 1, v41);
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

uint64_t sub_100146D44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100146D74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_100146DA4(char *a1, int64_t a2, char a3)
{
  result = sub_1001472A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100146DC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100146DFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1001037D8();
}

unint64_t sub_100146E28()
{
  result = qword_10023D620;
  if (!qword_10023D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D620);
  }

  return result;
}

void sub_100146E88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000F28B0();
}

unint64_t sub_100146EB4()
{
  result = qword_10023D628;
  if (!qword_10023D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D628);
  }

  return result;
}

void sub_100146F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10009B79C();
}

void sub_100146F4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000F181C();
}

unint64_t sub_100146F68()
{
  result = qword_10023D630;
  if (!qword_10023D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D630);
  }

  return result;
}

uint64_t sub_100147004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10014701C(char *a1, int64_t a2, char a3)
{
  result = sub_1001473B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10014703C(char *a1, int64_t a2, char a3)
{
  result = sub_1001474D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10014705C(size_t a1, int64_t a2, char a3)
{
  result = sub_100147BCC(a1, a2, a3, *v3, &qword_10023BC48, &unk_1001BA540, type metadata accessor for ImpressionModel);
  *v3 = result;
  return result;
}

void *sub_1001470A0(void *a1, int64_t a2, char a3)
{
  result = sub_100147FCC(a1, a2, a3, *v3, &qword_10023AC48, &unk_1001BA570, &qword_10023BC80, &unk_1001B7000);
  *v3 = result;
  return result;
}

char *sub_1001470E0(char *a1, int64_t a2, char a3)
{
  result = sub_100147640(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147100(char *a1, int64_t a2, char a3)
{
  result = sub_100147764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147120(char *a1, int64_t a2, char a3)
{
  result = sub_100147870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147140(char *a1, int64_t a2, char a3)
{
  result = sub_100147994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147160(char *a1, int64_t a2, char a3)
{
  result = sub_100147ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100147180(size_t a1, int64_t a2, char a3)
{
  result = sub_100147BCC(a1, a2, a3, *v3, &qword_10023D740, &qword_1001C1808, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_1001471C4(void *a1, int64_t a2, char a3)
{
  result = sub_100147FCC(a1, a2, a3, *v3, &qword_10023D708, &qword_1001C17B8, &qword_10023D710, &qword_1001C17C0);
  *v3 = result;
  return result;
}

char *sub_100147204(char *a1, int64_t a2, char a3)
{
  result = sub_100147DA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100147224(char *a1, int64_t a2, char a3)
{
  result = sub_100147EAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100147244(void *a1, int64_t a2, char a3)
{
  result = sub_100147FCC(a1, a2, a3, *v3, &qword_10023D6B0, &qword_1001C1750, &qword_10023D6B8, &qword_1001C1758);
  *v3 = result;
  return result;
}

char *sub_100147284(char *a1, int64_t a2, char a3)
{
  result = sub_100148114(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001472A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC10, &qword_1001BA520);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001473B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D830, &qword_1001C19C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001474D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D838, &qword_1001C19C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100147640(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&unk_10023BC90, &unk_1001BA588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100147764(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D948, &qword_1001C1DC8);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100147870(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCB8, &qword_1001BA5B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100147994(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC60, &qword_1001BA558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100147ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023D638, qword_1001C8340);
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

size_t sub_100147BCC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000CDE0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100147DA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC50, &qword_1001C1850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}