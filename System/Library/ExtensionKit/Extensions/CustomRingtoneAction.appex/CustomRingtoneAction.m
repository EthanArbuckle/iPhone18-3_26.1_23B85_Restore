uint64_t sub_100001540()
{
  v0[3] = sub_1000067E0();
  v0[4] = sub_1000067D0();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1000015EC;

  return sub_100001DD4();
}

uint64_t sub_1000015EC()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  v7 = sub_1000067C0();
  if (v2)
  {
    v8 = sub_1000017A8;
  }

  else
  {
    v8 = sub_100001748;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100001748()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000017A8()
{
  v16 = v0;
  v1 = v0[4];

  if (qword_100010310 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_1000066E0();
  sub_100005D34(v3, qword_100010548);
  swift_errorRetain();
  v4 = sub_1000066C0();
  v5 = sub_100006810();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    swift_errorRetain();
    sub_100005288(&qword_100010388, &qword_100006EA0);
    v10 = sub_100006750();
    v12 = sub_10000552C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to add custom ringtone for selected item with error: %s.", v8, 0xCu);
    sub_100005D6C(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100001980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100005288(&qword_100010428, &qword_100006ED8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100006108(a3, v26 - v10, &qword_100010428, &qword_100006ED8);
  v12 = sub_100006800();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006170(v11, &qword_100010428, &qword_100006ED8);
  }

  else
  {
    sub_1000067F0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000067C0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100006760() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100006170(a3, &qword_100010428, &qword_100006ED8);

      return v24;
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

  sub_100006170(a3, &qword_100010428, &qword_100006ED8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100001DD4()
{
  v1[22] = v0;
  v2 = *(*(sub_100005288(&qword_100010358, &qword_100006E70) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_100006650();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = sub_1000066B0();
  v1[27] = v6;
  v7 = *(v6 - 8);
  v1[28] = v7;
  v8 = *(v7 + 64) + 15;
  v1[29] = swift_task_alloc();
  sub_1000067E0();
  v1[30] = sub_1000067D0();
  v10 = sub_1000067C0();
  v1[31] = v10;
  v1[32] = v9;

  return _swift_task_switch(sub_100001F5C, v10, v9);
}

uint64_t sub_100001F5C()
{
  v60 = v0;
  v1 = v0;
  v2 = [*(v0 + 176) extensionContext];
  if (!v2 || (v3 = v2, v4 = [v2 inputItems], v3, v5 = sub_1000067B0(), v4, v6 = sub_100002EE4(v5), , !v6))
  {
    v10 = *(v0 + 176);
    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    sub_100006870(65);
    v62._object = 0x80000001000073C0;
    v62._countAndFlagsBits = 0xD00000000000003ELL;
    sub_100006780(v62);
    v11 = [v10 extensionContext];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 inputItems];

      v14 = sub_1000067B0();
    }

    else
    {
      v14 = 0;
    }

    *(v0 + 144) = v14;
    sub_100005288(&qword_1000103A0, &unk_100006EB8);
    v63._countAndFlagsBits = sub_100006750();
    sub_100006780(v63);

    v64._countAndFlagsBits = 46;
    v64._object = 0xE100000000000000;
    sub_100006780(v64);
    return sub_100006900();
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFF8);
  if (v6 >> 62)
  {
LABEL_45:
    v8 = sub_100006910();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_46:
    v44 = v1[30];

    v45 = v1[29];
    v46 = v1[26];
    v47 = v1[23];

    v48 = v1[1];

    return v48();
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_46;
  }

LABEL_5:
  v9 = 0;
  v53 = v6 & 0xC000000000000001;
  v49 = v6 + 32;
  v58 = (v1[28] + 8);
  v51 = v7;
  v52 = v6;
  v50 = v8;
  while (1)
  {
    if (v53)
    {
      v15 = sub_100006880();
    }

    else
    {
      if (v9 >= v7[2])
      {
        goto LABEL_44;
      }

      v15 = *(v49 + 8 * v9);
    }

    v7 = v15;
    v1[33] = v15;
    v16 = __OFADD__(v9, 1);
    v17 = v9 + 1;
    if (v16)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v54 = v17;
    if (qword_100010310 != -1)
    {
      swift_once();
    }

    v18 = sub_1000066E0();
    v1[34] = sub_100005D34(v18, qword_100010548);
    v19 = v7;
    v20 = sub_1000066C0();
    v21 = sub_100006820();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v59[0] = v23;
      *v22 = 136315138;
      v24 = [v19 userInfo];
      if (v24)
      {
        v25 = v24;
        sub_100006700();
      }

      v26 = sub_100006710();
      v28 = v27;

      v29 = sub_10000552C(v26, v28, v59);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "New extension item: %s", v22, 0xCu);
      sub_100005D6C(v23);
    }

    else
    {
    }

    v30 = [v19 attachments];
    if (v30)
    {
      break;
    }

LABEL_9:

    v7 = v51;
    v9 = v54;
    v6 = v52;
    if (v54 == v50)
    {
      goto LABEL_46;
    }
  }

  v7 = v30;
  sub_100005ED8(0, &qword_1000103A8, NSItemProvider_ptr);
  v6 = sub_1000067B0();

  if (!(v6 >> 62))
  {
    v31 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v31 = sub_100006910();
  if (!v31)
  {
LABEL_8:

    goto LABEL_9;
  }

LABEL_25:
  v32 = 0;
  v57 = v6 & 0xC000000000000001;
  v55 = v6;
  v56 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v57)
    {
      v33 = sub_100006880();
    }

    else
    {
      if (v32 >= *(v56 + 16))
      {
        goto LABEL_42;
      }

      v33 = *(v6 + 8 * v32 + 32);
    }

    v34 = v33;
    v1[35] = v33;
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v36 = v1[29];
    v37 = v1[27];
    sub_1000066A0();
    sub_100006690();
    v38 = *v58;
    (*v58)(v36, v37);
    v7 = sub_100006720();

    LOBYTE(v37) = [v34 hasItemConformingToTypeIdentifier:v7];

    if (v37)
    {
      break;
    }

    ++v32;
    v6 = v55;
    if (v35 == v31)
    {
      goto LABEL_8;
    }
  }

  v40 = v1[29];
  v41 = v1[27];

  sub_1000066A0();
  sub_100006690();
  v38(v40, v41);
  v42 = sub_100006720();
  v1[36] = v42;

  v1[2] = v1;
  v1[7] = v1 + 19;
  v1[3] = sub_100002704;
  v43 = swift_continuation_init();
  v1[17] = sub_100005288(&qword_100010410, &qword_100006EC8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100002FF0;
  v1[13] = &unk_10000C658;
  v1[14] = v43;
  [v34 loadItemForTypeIdentifier:v42 options:0 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_100002704()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = sub_100002D60;
  }

  else
  {
    v6 = sub_100002834;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100002834()
{
  v33 = v0;
  v1 = v0[36];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v0[38] = v4;

  v0[20] = v4;
  swift_unknownObjectRetain();
  sub_100005288(&qword_100010418, &qword_100006ED0);
  if (swift_dynamicCast())
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    (*(v6 + 56))(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    v9 = swift_task_alloc();
    v0[39] = v9;
    *v9 = v0;
    v9[1] = sub_100002B50;
    v10 = v0[26];
    v11 = v0[22];

    return sub_1000030CC(v10);
  }

  else
  {
    v13 = v0[34];
    v14 = v0[30];
    v15 = v0[24];
    v16 = v0[25];
    v17 = v0[23];

    (*(v16 + 56))(v17, 1, 1, v15);
    sub_100006170(v17, &qword_100010358, &qword_100006E70);
    swift_unknownObjectRetain();
    v18 = sub_1000066C0();
    v19 = sub_100006810();
    swift_unknownObjectRelease();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[35];
    v22 = v0[33];
    if (v20)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      v0[21] = v4;
      swift_unknownObjectRetain();
      v25 = sub_100006750();
      v27 = sub_10000552C(v25, v26, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unexpected type for item: %s.", v23, 0xCu);
      sub_100005D6C(v24);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v28 = v0[29];
    v29 = v0[26];
    v30 = v0[23];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_100002B50()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 256);
  v6 = *(v2 + 248);
  if (v0)
  {
    v7 = sub_100002E10;
  }

  else
  {
    v7 = sub_100002C8C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100002C8C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);

  swift_unknownObjectRelease();

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 184);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100002D60()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[30];

  swift_willThrow();

  v6 = v0[37];
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100002E10()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);

  swift_unknownObjectRelease();

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 320);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);

  v11 = *(v0 + 8);

  return v11();
}

void *sub_100002EE4(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1000068C0();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100005DB8(i, v6);
    sub_100005ED8(0, &qword_100010420, NSExtensionItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1000068A0();
    v4 = v7[2];
    sub_1000068D0();
    sub_1000068E0();
    sub_1000068B0();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_100002FF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100005E94((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100005288(&qword_100010388, &qword_100006EA0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000030CC(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = sub_100006650();
  v2[50] = v3;
  v4 = *(v3 - 8);
  v2[51] = v4;
  v5 = *(v4 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = sub_1000067E0();
  v2[55] = sub_1000067D0();
  v7 = sub_1000067C0();
  v2[56] = v7;
  v2[57] = v6;

  return _swift_task_switch(sub_1000031D0, v7, v6);
}

uint64_t sub_1000031D0()
{
  v1 = v0[54];
  v2 = v0[48];
  v3 = objc_allocWithZone(AVURLAsset);
  sub_1000065F0(v4);
  v6 = v5;
  v0[58] = [v3 initWithURL:v5 options:0];

  sub_100005288(&qword_100010378, &qword_100006E90);
  v7 = sub_100006680();
  v0[59] = v7;
  v8 = sub_1000067D0();
  v0[60] = v8;
  v9 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v10 = swift_task_alloc();
  v0[61] = v10;
  *v10 = v0;
  v10[1] = sub_1000032FC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 72, v7, v8, &protocol witness table for MainActor);
}

uint64_t sub_1000032FC()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v10 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_100003EBC;
  }

  else
  {
    v8 = v2[59];
    v7 = v2[60];

    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_100003420;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100003420()
{
  v79 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 584);
  v3 = *(v0 + 588);
  v4 = *(v0 + 592);
  if (qword_100010310 != -1)
  {
    swift_once();
  }

  v5 = sub_1000066E0();
  *(v0 + 504) = sub_100005D34(v5, qword_100010548);
  v6 = sub_1000066C0();
  v7 = sub_100006820();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    sub_100006840();
    *(v8 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v6, v7, "Loaded audio asset duration: %f.", v8, 0xCu);
  }

  sub_100006840();
  if (v10 > 30.0)
  {
    v11 = *(v0 + 440);
    v12 = *(v0 + 392);

    v13 = v12;
    v14 = sub_1000066C0();
    v15 = sub_100006810();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      sub_100006840();
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      *(v16 + 14) = 0x403E000000000000;
      _os_log_impl(&_mh_execute_header, v14, v15, "Audio asset of %fs exceeds maximum custom ringtone duration of %fs.", v16, 0x16u);
    }

    v18 = *(v0 + 464);
    v19 = *(v0 + 392);

    sub_100004B1C(1);
    goto LABEL_21;
  }

  v20 = *(v0 + 424);
  v21 = *(v0 + 400);
  v22 = *(v0 + 408);
  v23 = *(v0 + 384);
  v24 = [objc_opt_self() defaultManager];
  sub_100006600();
  sub_100006630(0);
  v25 = *(v22 + 8);
  *(v0 + 512) = v25;
  *(v0 + 520) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v20, v21);
  v26 = sub_100006720();

  v27 = [v24 displayNameAtPath:v26];

  v28 = sub_100006740();
  v30 = v29;

  v31 = sub_1000065E0();
  v33 = v32;
  sub_100005288(&qword_100010380, &qword_100006E98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100006DF0;
  *(inited + 32) = sub_100006740();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v35;
  *(inited + 48) = v28;
  *(inited + 56) = v30;
  *(inited + 80) = sub_100006740();
  *(inited + 88) = v36;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  *(inited + 128) = sub_100006740();
  *(inited + 136) = v37;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  *(inited + 176) = sub_100006740();
  *(inited + 184) = v38;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v31;
  *(inited + 200) = v33;

  v39 = sub_100005C04(inited);
  swift_setDeallocating();
  sub_100005288(&qword_100010370, &qword_100006E88);
  swift_arrayDestroy();
  if (!sub_100006620())
  {
    v60 = *(v0 + 440);

    v61 = sub_1000066C0();
    v62 = sub_100006810();
    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 464);
    if (v63)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Error starting access to security scoped resource.", v65, 2u);
    }

    goto LABEL_21;
  }

  v40 = *(v0 + 496);
  v41 = *(v0 + 384);
  *(v0 + 528) = sub_100006660();
  *(v0 + 536) = v42;
  if (v40)
  {
    v43 = *(v0 + 440);

    v44 = *(v0 + 504);
    (*(*(v0 + 408) + 16))(*(v0 + 416), *(v0 + 384), *(v0 + 400));
    swift_errorRetain();
    v45 = sub_1000066C0();
    v46 = sub_100006810();

    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 520);
    v49 = *(v0 + 512);
    v50 = *(v0 + 416);
    v51 = *(v0 + 400);
    if (v47)
    {
      v77 = *(v0 + 464);
      log = v45;
      v52 = swift_slowAlloc();
      v78[0] = swift_slowAlloc();
      *v52 = 136315394;
      v53 = sub_100006630(1);
      v55 = v54;
      v49(v50, v51);
      v56 = sub_10000552C(v53, v55, v78);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      *(v0 + 368) = v40;
      swift_errorRetain();
      sub_100005288(&qword_100010388, &qword_100006EA0);
      v57 = sub_100006750();
      v59 = sub_10000552C(v57, v58, v78);

      *(v52 + 14) = v59;
      _os_log_impl(&_mh_execute_header, log, v46, "Failed to load data from %s with error: %s.", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v49(v50, v51);
    }

LABEL_21:
    v73 = *(v0 + 416);
    v72 = *(v0 + 424);

    v74 = *(v0 + 8);

    return v74();
  }

  v66 = *(v0 + 384);
  sub_100006610();
  v67 = [objc_opt_self() sharedToneManager];
  *(v0 + 544) = v67;
  if (v67)
  {
    v68 = v67;

    isa = sub_100006670().super.isa;
    *(v0 + 552) = isa;
    sub_100004200(v39);

    v70 = sub_1000066F0().super.isa;
    *(v0 + 560) = v70;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 376;
    *(v0 + 24) = sub_100003CB8;
    v71 = swift_continuation_init();
    *(v0 + 360) = sub_100005288(&qword_100010390, &qword_100006EA8);
    *(v0 + 304) = _NSConcreteStackBlock;
    *(v0 + 312) = 1107296256;
    *(v0 + 320) = sub_1000044C8;
    *(v0 + 328) = &unk_10000C630;
    *(v0 + 336) = v71;
    [v68 _importTone:isa metadata:v70 completionBlock:v0 + 304];
    v67 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v67);
}

uint64_t sub_100003CB8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 568) = v3;
  v4 = *(v1 + 456);
  v5 = *(v1 + 448);
  if (v3)
  {
    v6 = sub_100003F64;
  }

  else
  {
    v6 = sub_100003DE8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100003DE8()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[58];
  v7 = v0[55];
  v8 = v0[49];

  v9 = v0[47];

  sub_1000045A0(v9);
  sub_100005E40(v5, v4);
  v11 = v0[52];
  v10 = v0[53];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100003EBC()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 440);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);

  v6 = *(v0 + 8);
  v7 = *(v0 + 496);

  return v6();
}

uint64_t sub_100003F64()
{
  v34 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 440);

  swift_willThrow();
  sub_100005E40(v6, v5);

  v8 = *(v0 + 568);
  v9 = *(v0 + 504);
  (*(*(v0 + 408) + 16))(*(v0 + 416), *(v0 + 384), *(v0 + 400));
  swift_errorRetain();
  v10 = sub_1000066C0();
  v11 = sub_100006810();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = *(v0 + 512);
    v31 = *(v0 + 520);
    v32 = *(v0 + 464);
    v12 = *(v0 + 416);
    v13 = *(v0 + 400);
    v14 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_100006630(1);
    v17 = v16;
    v30(v12, v13);
    v18 = sub_10000552C(v15, v17, v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v0 + 368) = v8;
    swift_errorRetain();
    sub_100005288(&qword_100010388, &qword_100006EA0);
    v19 = sub_100006750();
    v21 = sub_10000552C(v19, v20, v33);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to load data from %s with error: %s.", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 520);
    v23 = *(v0 + 512);
    v24 = *(v0 + 416);
    v25 = *(v0 + 400);

    v23(v24, v25);
  }

  v27 = *(v0 + 416);
  v26 = *(v0 + 424);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100004200(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005288(&qword_100010398, &qword_100006EB0);
    v2 = sub_100006920();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100005DB8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100005E18(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100005E18(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100005E18(v31, v32);
    result = sub_100006850(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100005E18(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000044C8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005E94((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100005288(&qword_100010388, &qword_100006EA0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1000045A0(Class isa)
{
  v3 = (*(*(sub_100005288(&qword_100010358, &qword_100006E70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v32 - v4;
  v6 = sub_100006650();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &CustomRingtoneActionViewController;
  v12 = [(objc_class *)isa statusCode];
  if (v12 != 2 && v12 != 1)
  {
    if (v12)
    {
LABEL_24:
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_100006870(43);
      v38._countAndFlagsBits = 0xD000000000000028;
      v38._object = 0x8000000100007340;
      sub_100006780(v38);
      v35 = [isa v11[5].name];
      type metadata accessor for TLToneImportStatusCode(0);
      sub_1000068F0();
      v39._countAndFlagsBits = 46;
      v39._object = 0xE100000000000000;
      sub_100006780(v39);
      sub_100006900();
      __break(1u);
      return;
    }

    v13 = [(objc_class *)isa toneIdentifier];
    if (v13)
    {
      isa = v13;
      v34 = v1;
      v14 = sub_100006740();
      v11 = v15;
      if (qword_100010310 != -1)
      {
        swift_once();
      }

      v16 = sub_1000066E0();
      sub_100005D34(v16, qword_100010548);

      v17 = sub_1000066C0();
      v18 = sub_100006820();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v33 = v7;
        v20 = v19;
        v21 = swift_slowAlloc();
        v36[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_10000552C(v14, v11, v36);
        _os_log_impl(&_mh_execute_header, v17, v18, "Successfully imported tone with identifier: %s.", v20, 0xCu);
        sub_100005D6C(v21);

        v7 = v33;
      }

      v22 = [objc_opt_self() sharedToneManager];
      v1 = v34;
      if (!v22)
      {

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v23 = v22;

      [v23 setCurrentToneIdentifier:isa forAlertType:1];
    }

    v24 = [v1 extensionContext];
    if (v24)
    {
      v25 = v24;
      isa = [v24 inputItems];
      if (!isa)
      {
        v11 = sub_1000067B0();
        isa = sub_1000067A0().super.isa;
      }

      [v25 completeRequestReturningItems:isa completionHandler:0];
    }

    sub_100006640();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100006170(v5, &qword_100010358, &qword_100006E70);
      return;
    }

    (*(v7 + 32))(v10, v5, v6);
    v26 = [objc_opt_self() defaultWorkspace];
    if (v26)
    {
      v28 = v26;
      sub_1000065F0(v27);
      v30 = v29;
      sub_100005C04(&_swiftEmptyArrayStorage);
      v31 = sub_1000066F0().super.isa;

      [v28 openSensitiveURL:v30 withOptions:v31];

      (*(v7 + 8))(v10, v6);
      return;
    }

    goto LABEL_23;
  }

  sub_100004B1C(0);
}

void sub_100004B1C(char a1)
{
  v2 = &CustomRingtoneActionViewController;
  if (a1)
  {
    if (qword_100010318 != -1)
    {
      swift_once();
    }

    v3 = qword_100010560;
    v18._countAndFlagsBits = 0x8000000100007020;
    v23._countAndFlagsBits = 0xD000000000000025;
    v23._object = 0x8000000100006FF0;
    v28.value._object = 0x8000000100006DF0;
    v28.value._countAndFlagsBits = 0xD000000000000014;
    v4.super.isa = qword_100010560;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    sub_1000065D0(v23, v28, v4, v33, v18);
    v19._countAndFlagsBits = 0x80000001000070D0;
    v24._countAndFlagsBits = 0xD000000000000027;
    v24._object = 0x80000001000070A0;
    v29.value._object = 0x8000000100006DF0;
    v29.value._countAndFlagsBits = 0xD000000000000014;
    v5.super.isa = v3;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_1000065D0(v24, v29, v5, v34, v19);
    sub_100005288(&qword_100010350, &qword_100006E68);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100006E00;
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = 30;
    sub_100006730();

    v2 = &CustomRingtoneActionViewController;
  }

  else
  {
    if (qword_100010318 != -1)
    {
      swift_once();
    }

    v3 = qword_100010560;
    v18._countAndFlagsBits = 0x80000001000071E0;
    v25._countAndFlagsBits = 0xD00000000000001ELL;
    v25._object = 0x80000001000071C0;
    v30.value._object = 0x8000000100006DF0;
    v30.value._countAndFlagsBits = 0xD000000000000014;
    v7.super.isa = qword_100010560;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_1000065D0(v25, v30, v7, v35, v18);
    v21._countAndFlagsBits = 0x8000000100007280;
    v26._countAndFlagsBits = 0xD000000000000020;
    v26._object = 0x8000000100007250;
    v31.value._object = 0x8000000100006DF0;
    v31.value._countAndFlagsBits = 0xD000000000000014;
    v8.super.isa = v3;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    sub_1000065D0(v26, v31, v8, v36, v21);
  }

  v9 = sub_100006720();

  v10 = sub_100006720();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  if (*&v2[11].flags != -1)
  {
    swift_once();
  }

  v20._countAndFlagsBits = 0x8000000100007150;
  v27._countAndFlagsBits = 0x4F495443415F4B4FLL;
  v27._object = 0xEF454C5449545F4ELL;
  v32.value._object = 0x8000000100006DF0;
  v32.value._countAndFlagsBits = 0xD000000000000014;
  v12.super.isa = v3;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_1000065D0(v27, v32, v12, v37, v20);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v14 = v1;
  v15 = sub_100006720();

  aBlock[4] = sub_100005308;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005080;
  aBlock[3] = &unk_10000C608;
  v16 = _Block_copy(aBlock);

  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v11 addAction:v17];
  [v14 presentViewController:v11 animated:1 completion:0];
}

void sub_100004FA8(int a1, id a2)
{
  v2 = [a2 extensionContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 inputItems];
    if (!v4)
    {
      sub_1000067B0();
      isa = sub_1000067A0().super.isa;

      v4 = isa;
    }

    v6 = v4;
    [v3 completeRequestReturningItems:? completionHandler:?];
  }
}

void sub_100005080(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_100005230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomRingtoneActionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005288(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000052D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000533C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005434;

  return v7(a1);
}

uint64_t sub_100005434()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000552C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000055F8(v11, 0, 0, 1, a1, a2);
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
    sub_100005DB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005D6C(v11);
  return v7;
}

unint64_t sub_1000055F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005704(a5, a6);
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
    result = sub_100006890();
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

char *sub_100005704(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005750(a1, a2);
  sub_100005880(&off_10000C5B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005750(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000596C(v5, 0);
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

  result = sub_100006890();
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
        v10 = sub_100006790();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000596C(v10, 0);
        result = sub_100006860();
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

uint64_t sub_100005880(uint64_t result)
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

  result = sub_1000059E0(result, v12, 1, v3);
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

void *sub_10000596C(uint64_t a1, uint64_t a2)
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

  sub_100005288(&qword_100010360, &qword_100006E78);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000059E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005288(&qword_100010360, &qword_100006E78);
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

unint64_t sub_100005AD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100006940();
  sub_100006770();
  v6 = sub_100006950();

  return sub_100005B4C(a1, a2, v6);
}

unint64_t sub_100005B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100006930())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005288(&qword_100010368, &qword_100006E80);
    v3 = sub_100006920();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006108(v4, &v13, &qword_100010370, &qword_100006E88);
      v5 = v13;
      v6 = v14;
      result = sub_100005AD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005E18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100005D34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005D6C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100005E18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005E40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_100005E94(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005ED8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100005F20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005F60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100006014;

  return sub_100001540();
}

uint64_t sub_100006014()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005288(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006170(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005288(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000061D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006208(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000645C;

  return sub_10000533C(a1, v5);
}

uint64_t sub_1000062C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006014;

  return sub_10000533C(a1, v5);
}

__n128 sub_100006378(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006390(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000063B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_100006404(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100006460()
{
  v0 = sub_1000066E0();
  sub_1000064E0(v0, qword_100010548);
  sub_100005D34(v0, qword_100010548);
  return sub_1000066D0();
}

uint64_t *sub_1000064E0(uint64_t a1, uint64_t *a2)
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

id sub_100006544()
{
  type metadata accessor for CustomRingtoneActionViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100010560 = result;
  return result;
}