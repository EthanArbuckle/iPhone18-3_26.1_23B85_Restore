uint64_t sub_1001E5930()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = sub_1001E5A2C;
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    Player.requestSharePlayTogether(completion:)(sub_1001F4CC8, v8);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_1001E5A2C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_1001E5C14;
  }

  else
  {

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_1001E5B74;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001E5B74()
{
  *(v0 + 345) = 0;
  v1 = sub_1004BC464();
  *(v0 + 328) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1004BC3E4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1001E5CA0, v2, v4);
}

uint64_t sub_1001E5C14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E5CA0()
{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = sub_1001E5D58;
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  sub_1001E8600(v5, v4, v3, v2);

  return _swift_continuation_await(v1);
}

uint64_t sub_1001E5D58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_1001E5F28;
  }

  else
  {

    *(v1 + 346) = *(v1 + 344);
    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_1001E5EA8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001E5EA8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

uint64_t sub_1001E5F28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E5FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  sub_1004B6E64();
  v4[42] = swift_task_alloc();
  v5 = sub_1004BBE14();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = sub_1004B8104();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[51] = swift_task_alloc();
  v4[52] = sub_1004BC474();
  v4[53] = sub_1004BC464();
  v8 = sub_1004BC3E4();
  v4[54] = v8;
  v4[55] = v7;

  return _swift_task_switch(sub_1001E616C, v8, v7);
}

uint64_t sub_1001E616C()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  sub_10000F778(v1 + *(v2 + 28), v0 + 80, &qword_100606290);
  sub_10000F778(v0 + 80, v0 + 200, &qword_100606290);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    sub_100009178((v0 + 200), *(v0 + 224));
    sub_1001E9248(v3, v4, (v0 + 160));
    sub_100004C6C(v0 + 200);
    if (*(v0 + 184))
    {
      sub_100013414((v0 + 160), v0 + 120);
      sub_100009178((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (qword_100600138 != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = (off_100609138 + 32);
      v7 = *(off_100609138 + 2) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 2;
        if (v8 == DynamicType)
        {
          sub_100004C6C(v0 + 120);
          goto LABEL_11;
        }
      }

      sub_1001F2120(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *(v0 + 408);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = *(v0 + 376);
        (*(v34 + 32))(v33, v32, v35);
        v36 = sub_1004B80D4();
        (*(v34 + 8))(v33, v35);
      }

      else
      {
        v36 = *v32;
      }

      *(v0 + 448) = v36;
      v37 = *(v0 + 304);
      v38 = *(v2 + 32);
      v39 = swift_task_alloc();
      *(v0 + 456) = v39;
      *v39 = v0;
      v39[1] = sub_1001E6694;
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return sub_1001DBAC4(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    sub_100007214(v0 + 200, &qword_100606290);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  sub_100007214(v0 + 160, &qword_100606290);
LABEL_11:
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v9 = sub_1004B80B4();
  sub_100007084(v9, static Logger.sharedListening);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  sub_10000F778(v0 + 80, v0 + 240, &qword_100606290);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    sub_100009178((v0 + 240), *(v0 + 264));
    v15 = sub_1001E970C(v13, v14);
    v17 = v16;
    sub_100004C6C(v0 + 240);
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    sub_100007214(v0 + 240, &qword_100606290);
    sub_1004BBDA4();
    (*(v21 + 16))(v18, v19, v20);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = qword_100617118;
    sub_1004B6DF4();
    v15 = sub_1004BBED4();
    v17 = v26;
    (*(v24 + 8))(v22, v23);
  }

  *(v0 + 472) = v17;
  *(v0 + 480) = v15;
  v27 = sub_1004BC464();
  *(v0 + 488) = v27;
  if (v27)
  {
    swift_getObjectType();
    v28 = sub_1004BC3E4();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return _swift_task_switch(sub_1001E68B4, v28, v30);
}

uint64_t sub_1001E6694()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_1001E6B84;
  }

  else
  {
    v6 = sub_1001E67E8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1001E67E8()
{

  sub_100004C6C(v0 + 120);
  sub_100007214(v0 + 80, &qword_100606290);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_1001E68B4()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_1001E698C;
  v5 = swift_continuation_init();
  sub_1001EA2FC(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001E698C()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(sub_1001E6AA8, v4, v3);
}

uint64_t sub_1001E6AA8()
{

  sub_100007214(v0 + 80, &qword_100606290);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

uint64_t sub_1001E6B84()
{

  sub_100004C6C(v0 + 120);
  sub_100007214(v0 + 80, &qword_100606290);

  v1 = *(v0 + 8);

  return v1();
}

id *sub_1001E6C50(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && sub_1001F21F0(v10, a3))
    {
      v9 = sub_1000184FC(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1000184FC((v11 > 1), v12 + 1, 1, v9);
      }

      v40 = &type metadata for Player.ReplaceCommand;
      v41 = &protocol witness table for Player.ReplaceCommand;
      *&v39 = v10;
      *(&v39 + 1) = a3;
      v9[2] = (v12 + 1);
      v13 = &v9[5 * v12];
      goto LABEL_34;
    }

    if (a2)
    {
      sub_100003ABC(&unk_100606020);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004C50C0;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (sub_1001F2420(v19, 0) && sub_1001F2550(1))
      {
        sub_100022DAC(inited);
        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        v20 = v19;
      }

      else
      {

        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        sub_10001342C(&v39, v38);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000184FC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_1000184FC((v25 > 1), v26 + 1, 1, v9);
        }

        v27 = sub_1001F4C68(v38, v38[3]);
        __chkstk_darwin(v27);
        v29 = (&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v30 + 16))(v29);
        v31 = *v29;
        v32 = v29[1];
        v36 = &type metadata for Player.ReplaceCommand;
        v37 = &protocol witness table for Player.ReplaceCommand;
        *&v35 = v31;
        *(&v35 + 1) = v32;
        v9[2] = (v26 + 1);
        sub_100013414(&v35, &v9[5 * v26 + 4]);
        sub_100004C6C(v38);
        v42 = v9;
      }

      sub_100004C6C(&v39);
      if (!sub_1001F230C(0))
      {

        return v42;
      }

      v9 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1000184FC(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v33 = v9[3];
      v23 = (v17 + 1);
      if (v17 >= v33 >> 1)
      {
        v9 = sub_1000184FC((v33 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.PlaybackCommand;
      v41 = &protocol witness table for Player.PlaybackCommand;
      LOBYTE(v39) = 0;
    }

    else
    {
      if ((a2 & 4) != 0)
      {
        v14 = v10;
        v15 = sub_1001F2420(v14, 0);

        if (v15)
        {
          v9 = sub_1000184FC(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = sub_1000184FC((v16 > 1), v17 + 1, 1, v9);
          }

          v40 = &type metadata for Player.InsertCommand;
          v41 = &protocol witness table for Player.InsertCommand;
          v39 = v14;
          v9[2] = (v17 + 1);
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = sub_1001F2420(v10, 1), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = sub_1000184FC(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = (v17 + 1);
      if (v17 >= v22 >> 1)
      {
        v9 = sub_1000184FC((v22 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.InsertCommand;
      v41 = &protocol witness table for Player.InsertCommand;
      *&v39 = v10;
      *(&v39 + 1) = 1;
    }

    v9[2] = v23;
LABEL_33:
    v13 = &v9[5 * v17];
LABEL_34:
    sub_100013414(&v39, (v13 + 4));
  }

  return v9;
}

uint64_t sub_1001E71E0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v61 = a1;
  v63 = sub_1004B6D14();
  v2 = *(v63 - 8);
  __chkstk_darwin(v63);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B6E64();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1004BBE14();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  sub_1004BBDA4();
  v62 = *(v7 + 16);
  v55 = v7 + 16;
  v62(v10, v12, v6);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v13 = qword_100617118;
  v14 = qword_100617118;
  v53 = v13;
  v15 = v14;
  sub_1004B6DF4();
  v59 = v15;
  v51 = sub_1004BBED4();
  v50 = v16;
  v42 = *(v7 + 8);
  v42(v12, v6);
  v49 = swift_allocObject();
  v17 = v61;
  *(v49 + 16) = v61;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v48 = sub_1004B6CE4();
  v60 = v18;
  v54 = *(v2 + 8);
  v54(v4, v63);
  sub_1004BBDA4();
  v62(v10, v12, v6);
  sub_1004B6DF4();
  v59 = v59;
  v41 = v7 + 8;
  v47 = sub_1004BBED4();
  v57 = v19;
  v20 = v42;
  v42(v12, v6);
  v46 = swift_allocObject();
  *(v46 + 16) = v17;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v45 = sub_1004B6CE4();
  v56 = v21;
  v54(v4, v63);
  sub_1004BBDA4();
  v22 = v62;
  v62(v10, v12, v6);
  sub_1004B6DF4();
  v23 = v59;
  v44 = sub_1004BBED4();
  v59 = v24;
  v20(v12, v6);
  v58 = swift_allocObject();
  *(v58 + 16) = v61;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v61 = sub_1004B6CE4();
  v43 = v25;
  v54(v4, v63);
  sub_1004BBDA4();
  v22(v10, v12, v6);
  sub_1004B6DF4();
  v63 = sub_1004BBED4();
  v27 = v26;
  v20(v12, v6);
  sub_100003ABC(&qword_1006011F0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004C5070;
  v29 = v60;
  *(v28 + 32) = v48;
  *(v28 + 40) = v29;
  v30 = v50;
  *(v28 + 48) = v51;
  *(v28 + 56) = v30;
  *(v28 + 64) = 2;
  v31 = v49;
  *(v28 + 72) = &unk_1004D32E0;
  *(v28 + 80) = v31;
  v32 = v56;
  *(v28 + 88) = v45;
  *(v28 + 96) = v32;
  v33 = v57;
  *(v28 + 104) = v47;
  *(v28 + 112) = v33;
  *(v28 + 120) = 1;
  v34 = v46;
  *(v28 + 128) = &unk_1004D32F0;
  *(v28 + 136) = v34;
  v35 = v43;
  *(v28 + 144) = v61;
  *(v28 + 152) = v35;
  v36 = v59;
  *(v28 + 160) = v44;
  *(v28 + 168) = v36;
  *(v28 + 176) = 0;
  v37 = v58;
  *(v28 + 184) = &unk_1004D3300;
  *(v28 + 192) = v37;
  LOBYTE(v65[0]) = 1;
  v68 = 0uLL;
  *&v69 = v63;
  *(&v69 + 1) = v27;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = 0;
  LOBYTE(v71) = 1;
  *(&v71 + 1) = v28;
  v72 = 0;
  v38 = *(v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v39 = *(v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v63 = sub_100009178((v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v38);
  v65[2] = v70;
  v65[3] = v71;
  v66 = v72;
  v65[0] = v68;
  v65[1] = v69;
  v67 = 0;
  v62 = *(v39 + 8);

  sub_1000C7A60(&v68, v64);
  v62(v65, v38, v39);
  sub_100052310(&v68);

  return sub_1001F3874(v65);
}

uint64_t sub_1001E7A24()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 2;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E7ACC()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 1;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E7B74()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E7BFC(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v56 = a1;
  v52 = sub_1004B6D14();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  sub_1004BBDA4();
  v55 = *(v6 + 16);
  v55(v9, v11, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v12 = qword_100617118;
  v13 = qword_100617118;
  v41 = v12;
  v14 = v13;
  sub_1004B6DF4();
  v45 = v14;
  v50 = sub_1004BBED4();
  v49 = v15;
  v54 = *(v6 + 8);
  v54(v11, v5);
  v48 = swift_allocObject();
  *(v48 + 16) = v56;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v47 = sub_1004B6CE4();
  v46 = v16;
  v40 = v6 + 8;
  v39 = *(v51 + 8);
  v17 = v52;
  v39(v3, v52);
  sub_1004BBDA4();
  v55(v9, v11, v5);
  sub_1004B6DF4();
  v42 = v45;
  v51 = sub_1004BBED4();
  v45 = v18;
  v54(v11, v5);
  v44 = swift_allocObject();
  *(v44 + 16) = v56;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v43 = sub_1004B6CE4();
  v56 = v19;
  v39(v3, v17);
  sub_1004BBDA4();
  v20 = v55;
  v55(v9, v11, v5);
  sub_1004B6DF4();
  v21 = v42;
  v52 = sub_1004BBED4();
  v42 = v22;
  v23 = v54;
  v54(v11, v5);
  sub_1004BBDA4();
  v20(v9, v11, v5);
  sub_1004B6DF4();
  v24 = sub_1004BBED4();
  v26 = v25;
  v23(v11, v5);
  sub_100003ABC(&qword_1006011F0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004C50C0;
  v28 = v46;
  *(v27 + 32) = v47;
  *(v27 + 40) = v28;
  v29 = v49;
  *(v27 + 48) = v50;
  *(v27 + 56) = v29;
  *(v27 + 64) = 2;
  v30 = v48;
  *(v27 + 72) = &unk_1004D3330;
  *(v27 + 80) = v30;
  v31 = v56;
  *(v27 + 88) = v43;
  *(v27 + 96) = v31;
  v32 = v45;
  *(v27 + 104) = v51;
  *(v27 + 112) = v32;
  *(v27 + 120) = 0;
  v33 = v44;
  *(v27 + 128) = &unk_1004D3340;
  *(v27 + 136) = v33;
  LOBYTE(v58[0]) = 1;
  *&v61 = v52;
  *(&v61 + 1) = v42;
  *&v62 = v24;
  *(&v62 + 1) = v26;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = 0;
  LOBYTE(v64) = 1;
  *(&v64 + 1) = v27;
  v65 = 0;
  v34 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v35 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v55 = sub_100009178((v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v34);
  v58[2] = v63;
  v58[3] = v64;
  v59 = v65;
  v58[0] = v61;
  v58[1] = v62;
  v60 = 0;
  v36 = *(v35 + 8);

  sub_1000C7A60(&v61, v57);
  v36(v58, v34, v35);
  sub_100052310(&v61);

  return sub_1001F3874(v58);
}

uint64_t sub_1001E8368()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E8408()
{
  **(*(*(v0 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E8484(uint64_t result)
{
  if (result)
  {
    if (([result isDeviceRoute] & 1) == 0)
    {
      v2 = [v1 musicSubscriptionStatus];
      if (!v2)
      {
LABEL_8:
        v6 = [objc_opt_self() sharedController];
        v7 = [v6 isCloudLibraryEnabled];

        if (v7)
        {
          return 0;
        }

        else
        {
          return 2;
        }
      }

      v3 = v2;
      v4 = [v2 capabilities];
      v5 = [v3 capabilities];

      if ((v5 & 2) == 0)
      {
        if ((v4 & 1) == 0)
        {
          return 1;
        }

        goto LABEL_8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001E855C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100003ABC(&qword_100604C30);
    swift_allocError();
    *v4 = a3;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1001E8600(void *a1, char a2, void *a3, uint64_t a4)
{
  v70 = a3;
  v72 = a1;
  v6 = sub_1004B6D14();
  v69 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004B6E64();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1004BBE14();
  v71 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v59 - v14;
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 applicationState];

  if (!a2)
  {
LABEL_8:
    **(v72[8] + 40) = 0;

    return swift_continuation_throwingResume();
  }

  if (v17 == 2)
  {
    if (qword_100600050 != -1)
    {
      swift_once();
    }

    v18 = sub_1004B80B4();
    sub_100007084(v18, static Logger.playbackController);
    v19 = sub_1004B8094();
    v20 = sub_1004BC9A4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Music is background so bypass the requires subscription alert and use buffered AirPlay", v21, 2u);
    }

    goto LABEL_8;
  }

  v68 = a4;
  if (v70)
  {
    sub_1004BBDA4();
    v23 = v71;
    (*(v71 + 16))(v13, v15, v10);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v24 = qword_100617118;
    sub_1004B6DF4();
    v67 = sub_1004BBED4();
    v66 = v25;
    (*(v23 + 8))(v15, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = v72;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v65 = sub_1004B6CE4();
    v64 = v27;
    (*(v69 + 8))(v8, v6);
    v28 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = v28[2];
    v29 = v28[3];
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1000183D4((v29 > 1), v30 + 1, 1, v28);
    }

    v28[2] = (v30 + 1);
    v31 = &v28[7 * v30];
    v32 = v64;
    v31[4] = v65;
    v31[5] = v32;
    v33 = v66;
    v31[6] = v67;
    v31[7] = v33;
    *(v31 + 64) = 2;
    v31[9] = &unk_1004D3320;
    v31[10] = v26;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v34 = v71;
  v67 = v6;
  sub_1004BBDA4();
  v35 = *(v34 + 16);
  v66 = (v34 + 16);
  v65 = v35;
  v35(v13, v15, v10);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v36 = qword_100617118;
  v37 = qword_100617118;
  sub_1004B6DF4();
  v38 = v37;
  v64 = v36;
  v62 = sub_1004BBED4();
  v40 = v39;
  v63 = *(v34 + 8);
  v63(v15, v10);
  v41 = swift_allocObject();
  *(v41 + 16) = v72;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v60 = sub_1004B6CE4();
  v43 = v42;
  (*(v69 + 8))(v8, v67);
  v72 = v43;

  v69 = v41;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v34 + 8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_1000183D4(0, v28[2] + 1, 1, v28);
  }

  v46 = v28[2];
  v45 = v28[3];
  if (v46 >= v45 >> 1)
  {
    v28 = sub_1000183D4((v45 > 1), v46 + 1, 1, v28);
  }

  v28[2] = (v46 + 1);
  v47 = &v28[7 * v46];
  v48 = v72;
  v47[4] = v60;
  v47[5] = v48;
  v47[6] = v62;
  v47[7] = v40;
  v61 = v40;
  *(v47 + 64) = 0;
  v49 = v69;
  v47[9] = &unk_1004D3310;
  v47[10] = v49;
  v50 = sub_1001E8FF8(v70);
  v52 = v51;
  sub_1004BBDA4();
  v65(v13, v15, v10);
  sub_1004B6DF4();
  v53 = sub_1004BBED4();
  v55 = v54;
  v63(v15, v10);
  LOBYTE(v74[0]) = 1;
  *&v77 = v50;
  *(&v77 + 1) = v52;
  *&v78 = v53;
  *(&v78 + 1) = v55;
  LOBYTE(v79) = 0;
  *(&v79 + 1) = 0;
  LOBYTE(v80) = 1;
  *(&v80 + 1) = v28;
  v81 = 0;
  v56 = *(v68 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v57 = *(v68 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_100009178((v68 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v56);
  v74[2] = v79;
  v74[3] = v80;
  v75 = v81;
  v74[0] = v77;
  v74[1] = v78;
  v76 = 0;
  v58 = *(v57 + 8);
  sub_1000C7A60(&v77, v73);
  v58(v74, v56, v57);
  sub_100052310(&v77);

  return sub_1001F3874(v74);
}

uint64_t sub_1001E8ED8()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E8F78()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E8FF8(void *a1)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  sub_1004BBDA4();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v10 = qword_100617118;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t sub_1001E9248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a3;
  v39 = a2;
  v47 = sub_1004B7644();
  v40 = *(v47 - 8);
  v4 = __chkstk_darwin(v47);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v37 - v6;
  v7 = sub_1004BB9B4();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1004BBA44();
  v42 = *(v48 - 8);
  v9 = __chkstk_darwin(v48);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_1004BB4D4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - v19;
  v21 = *(a1 - 8);
  __chkstk_darwin(v18);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 16);
  v24(v23, v50, a1);
  if (swift_dynamicCast())
  {
    (*(v14 + 32))(v17, v20, v13);
    Track.musicItem.getter(v49);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v26 = v48;
    v25 = v49;
    if (swift_dynamicCast())
    {
      v28 = v41;
      v27 = v42;
      (*(v42 + 32))(v41, v12, v26);
      v29 = v43;
      sub_1004BB9C4();
      Playlist.Entry.InternalItem.musicItem.getter(v25);
      (*(v44 + 8))(v29, v45);
      (*(v27 + 8))(v28, v26);
    }

    else
    {
      v31 = v46;
      v30 = v47;
      if (swift_dynamicCast())
      {
        v32 = v40;
        v33 = v38;
        (*(v40 + 32))(v38, v31, v30);
        GenericMusicItem.innerMusicItem.getter(v25);
        (*(v32 + 8))(v33, v30);
      }

      else
      {
        v34 = v39;
        v25[3] = a1;
        v25[4] = v34;
        v35 = sub_1000133B0(v25);
        v24(v35, v50, a1);
      }
    }
  }

  return (*(v21 + 8))(v23, a1);
}

uint64_t sub_1001E970C(uint64_t a1, uint64_t a2)
{
  v42 = sub_1004BB744();
  v40[0] = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004B7A34();
  v40[1] = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1004B7CF4();
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1004BBA84();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1004BB434();
  v49 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1004BAD04();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004B6E64();
  __chkstk_darwin(v11 - 8);
  v56 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BBE14();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v40 - v18;
  v20 = sub_1004BB384();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E9248(a1, a2, v58);
  if (!v58[3])
  {
    goto LABEL_31;
  }

  sub_10000F778(v58, v57, &qword_100606290);
  sub_100003ABC(&qword_100606298);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v14 + 16))(v17, v19, v13);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v24 = qword_100617118;
    sub_1004B6DF4();
    v25 = sub_1004BBED4();
    (*(v14 + 8))(v19, v13);
    (*(v21 + 8))(v23, v20);
    goto LABEL_20;
  }

  v26 = v55;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v14 + 16))(v17, v19, v13);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v27 = qword_100617118;
    sub_1004B6DF4();
    v25 = sub_1004BBED4();
    (*(v14 + 8))(v19, v13);
    (*(v52 + 8))(v10, v26);
    goto LABEL_20;
  }

  v29 = v53;
  v28 = v54;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v14 + 16))(v17, v19, v13);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v30 = qword_100617118;
    sub_1004B6DF4();
    v25 = sub_1004BBED4();
    (*(v14 + 8))(v19, v13);
    v31 = v49;
    goto LABEL_19;
  }

  v29 = v50;
  v28 = v51;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v14 + 16))(v17, v19, v13);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v32 = qword_100617118;
    sub_1004B6DF4();
    v25 = sub_1004BBED4();
    (*(v14 + 8))(v19, v13);
    v33 = &v62;
LABEL_18:
    v31 = *(v33 - 32);
LABEL_19:
    (*(v31 + 8))(v29, v28);
LABEL_20:
    sub_100004C6C(v57);
    sub_100007214(v58, &qword_100606290);
    return v25;
  }

  v34 = v46;
  v35 = v47;
  if (!swift_dynamicCast())
  {
    v34 = v44;
    v35 = v45;
    if (swift_dynamicCast())
    {
      v36 = &v60;
      goto LABEL_25;
    }

    v29 = v41;
    v28 = v42;
    if (swift_dynamicCast())
    {
      sub_1004BBDA4();
      (*(v14 + 16))(v17, v19, v13);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v37 = qword_100617118;
      sub_1004B6DF4();
      v25 = sub_1004BBED4();
      (*(v14 + 8))(v19, v13);
      v33 = &v59;
      goto LABEL_18;
    }

    sub_100004C6C(v57);
LABEL_31:
    sub_100007214(v58, &qword_100606290);
    goto LABEL_32;
  }

  v36 = &v61;
LABEL_25:
  (*(*(v36 - 32) + 8))(v34, v35);
  sub_100004C6C(v57);
  sub_100007214(v58, &qword_100606290);
LABEL_32:
  sub_1004BBDA4();
  (*(v14 + 16))(v17, v19, v13);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v38 = qword_100617118;
  sub_1004B6DF4();
  v25 = sub_1004BBED4();
  (*(v14 + 8))(v19, v13);
  return v25;
}

uint64_t sub_1001EA2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v106 = a4;
  *(&v106 + 1) = a5;
  v124 = a1;
  v125 = a3;
  v107 = a2;
  v5 = sub_1004B8104();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v103 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = __chkstk_darwin(v123);
  v102 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v111 = &v101 - v9;
  v10 = sub_1004B6D14();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004B6E64();
  __chkstk_darwin(v14 - 8);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004BBE14();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v101 - v22;
  sub_1004BBDA4();
  v113 = *(v18 + 16);
  v114 = v18 + 16;
  v113(v21, v23, v17);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v24 = qword_100617118;
  v108 = qword_100617118;
  sub_1004B6DF4();
  v115 = v21;
  v112 = v24;
  v118 = v16;
  v25 = sub_1004BBED4();
  v27 = v26;
  v28 = *(v18 + 8);
  v116 = v23;
  v117 = v18 + 8;
  v119 = v17;
  v110 = v28;
  v28(v23, v17);
  v29 = swift_allocObject();
  *(v29 + 16) = v124;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v30 = sub_1004B6CE4();
  v32 = v31;
  v33 = *(v11 + 8);
  v120 = v13;
  v121 = v11 + 8;
  v122 = v10;
  v109 = v33;
  v33(v13, v10);
  v34 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_1000183D4((v35 > 1), v36 + 1, 1, v34);
  }

  v37 = v107;
  v34[2] = (v36 + 1);
  v38 = &v34[7 * v36];
  v38[4] = v30;
  v38[5] = v32;
  v38[6] = v25;
  v38[7] = v27;
  *(v38 + 64) = 2;
  v38[9] = &unk_1004D32A0;
  v38[10] = v29;
  v39 = v111;
  sub_1001F2120(v37, v111, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v103;
    v41 = v104;
    v42 = v39;
    v43 = v105;
    (*(v104 + 32))(v103, v42, v105);
    v111 = sub_1004B80D4();
    (*(v41 + 8))(v40, v43);
  }

  else
  {
    v111 = *v39;
  }

  v44 = v120;
  v45 = v116;
  v46 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v47 = v125;
  swift_beginAccess();
  if (*(v47 + v46))
  {

    v48 = v111;
    v49 = sub_1001F2420(v48, 0);

    if (v49)
    {
      sub_1004BBDA4();
      v50 = v119;
      v113(v115, v45, v119);
      v51 = v108;
      sub_1004B6DF4();
      v52 = sub_1004BBED4();
      v54 = v53;
      v110(v45, v50);
      v55 = swift_allocObject();
      *(v55 + 16) = v124;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v56 = sub_1004B6CE4();
      v58 = v57;
      v109(v44, v122);
      v60 = v34[2];
      v59 = v34[3];
      if (v60 >= v59 >> 1)
      {
        v34 = sub_1000183D4((v59 > 1), v60 + 1, 1, v34);
      }

      v34[2] = (v60 + 1);
      v61 = &v34[7 * v60];
      v61[4] = v56;
      v61[5] = v58;
      v61[6] = v52;
      v61[7] = v54;
      *(v61 + 64) = 2;
      v61[9] = &unk_1004D32D0;
      v61[10] = v55;
      v44 = v120;
      v45 = v116;
      v37 = v107;
    }
  }

  v62 = v102;
  sub_1001F2120(v37, v102, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = v103;
    v64 = v104;
    v65 = v62;
    v66 = v105;
    (*(v104 + 32))(v103, v65, v105);
    v67 = sub_1004B80D4();
    (*(v64 + 8))(v63, v66);
  }

  else
  {
    v67 = *v62;
  }

  v68 = *(v125 + v46);
  v123 = v67;
  if (v68 && (, v69 = v67, v70 = sub_1001F2420(v69, 1), v69, , v70))
  {
    sub_1004BBDA4();
    v71 = v119;
    v113(v115, v45, v119);
    v72 = v108;
    sub_1004B6DF4();
    v73 = sub_1004BBED4();
    v74 = v45;
    v76 = v75;
    v110(v74, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v124;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v78 = sub_1004B6CE4();
    v80 = v79;
    v109(v44, v122);
    v82 = v34[2];
    v81 = v34[3];
    if (v82 >= v81 >> 1)
    {
      v34 = sub_1000183D4((v81 > 1), v82 + 1, 1, v34);
    }

    v34[2] = (v82 + 1);
    v83 = &v34[7 * v82];
    v83[4] = v78;
    v83[5] = v80;
    v83[6] = v73;
    v83[7] = v76;
    *(v83 + 64) = 2;
    v83[9] = &unk_1004D32C0;
    v83[10] = v77;
    v84 = v124;
    v44 = v120;
    v45 = v116;
  }

  else
  {
    v84 = v124;
  }

  sub_1004BBDA4();
  v85 = v119;
  v113(v115, v45, v119);
  v86 = v108;
  sub_1004B6DF4();
  v87 = sub_1004BBED4();
  v89 = v88;
  v110(v45, v85);
  v90 = swift_allocObject();
  *(v90 + 16) = v84;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v91 = sub_1004B6CE4();
  v93 = v92;
  v109(v44, v122);
  v95 = v34[2];
  v94 = v34[3];
  if (v95 >= v94 >> 1)
  {
    v34 = sub_1000183D4((v94 > 1), v95 + 1, 1, v34);
  }

  v34[2] = (v95 + 1);
  v96 = &v34[7 * v95];
  v96[4] = v91;
  v96[5] = v93;
  v96[6] = v87;
  v96[7] = v89;
  *(v96 + 64) = 0;
  v96[9] = &unk_1004D32B0;
  v96[10] = v90;
  LOBYTE(v127[0]) = 1;
  v130 = 0uLL;
  v131 = v106;
  LOBYTE(v132) = 0;
  *(&v132 + 1) = 0;
  LOBYTE(v133) = 1;
  *(&v133 + 1) = v34;
  v134 = 0;
  v97 = *(v125 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v98 = *(v125 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_100009178((v125 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v97);
  v127[2] = v132;
  v127[3] = v133;
  v128 = v134;
  v127[0] = v130;
  v127[1] = v131;
  v129 = 0;
  v99 = *(v98 + 8);

  sub_1000C7A60(&v130, &v126);
  v99(v127, v97, v98);
  sub_100052310(&v130);

  return sub_1001F3874(v127);
}

uint64_t sub_1001EADE4()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = vdupq_n_s64(2uLL);
  v1[1].i8[0] = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EAE90()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_1004C51C0;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EAF3C()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_1004C51D0;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EAFE8()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

id PlaybackController.requestedPropertySet(for:)()
{
  if (qword_100600128 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_1001EB1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1004BC474();
  v4[3] = sub_1004BC464();
  v6 = sub_1004BC3E4();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1001EB250, v6, v5);
}

uint64_t sub_1001EB250()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  sub_100009178(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1001EB330;

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

uint64_t sub_1001EB330()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1001EB474, v3, v2);
}

uint64_t sub_1001EB474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EB4D4(uint64_t a1)
{
  v36 = a1;
  v35 = sub_1004B6D14();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  sub_1004BBDA4();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v11 = qword_100617118;
  sub_1004B6DF4();
  v12 = v11;
  v32 = sub_1004BBED4();
  v31 = v13;
  v14 = *(v4 + 8);
  v14(v9, v3);
  sub_1004BBDA4();
  v10(v7, v9, v3);
  sub_1004B6DF4();
  v30 = sub_1004BBED4();
  v29 = v15;
  v14(v9, v3);
  sub_100003ABC(&qword_1006011F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004C50A0;
  sub_1004BBDA4();
  v10(v7, v9, v3);
  sub_1004B6DF4();
  v17 = sub_1004BBED4();
  v19 = v18;
  v14(v9, v3);
  v20 = v33;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v21 = sub_1004B6CE4();
  v23 = v22;
  (*(v34 + 8))(v20, v35);
  *(v16 + 32) = v21;
  *(v16 + 40) = v23;
  *(v16 + 48) = v17;
  *(v16 + 56) = v19;
  *(v16 + 64) = 2;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  LOBYTE(v38[0]) = 1;
  *&v41 = v32;
  *(&v41 + 1) = v31;
  *&v42 = v30;
  *(&v42 + 1) = v29;
  LOBYTE(v43) = 0;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = v16;
  v45 = 0;
  v24 = *(v36 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v25 = *(v36 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_100009178((v36 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v24);
  v38[2] = v43;
  v38[3] = v44;
  v39 = v45;
  v38[0] = v41;
  v38[1] = v42;
  v40 = 0;
  v26 = *(v25 + 8);
  sub_1000C7A60(&v41, v37);
  v26(v38, v24, v25);
  sub_100052310(&v41);
  return sub_1001F3874(v38);
}

void sub_1001EBA14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = &type metadata for String;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v4 = a3 + 16 * a1;
  v5 = *(v4 + 40);
  *&v13 = *(v4 + 32);
  *(&v13 + 1) = v5;
  sub_10003E13C(&v13, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  sub_100038C10(v17, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v7 = v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10001342C(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v13);

    v10 = v14;
    v11 = v15;
    sub_100009178(&v13, v14);
    (*(v11 + 24))(v7, v10, v11);

    sub_100004C6C(&v13);
  }

  else
  {
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v12[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  }
}

void sub_1001EBB90(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v53 = a1;
  v54 = a2;
  v52 = sub_1004B6D14();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v4 buttons];
  sub_100009130(0, &qword_100606190);
  v9 = sub_1004BC2A4();

  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_20;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v4;
  for (i = a3; v11; i = a3)
  {
    v12 = 0;
    v49 = v10 & 0xFFFFFFFFFFFFFF8;
    v50 = v10 & 0xC000000000000001;
    v13 = _swiftEmptyArrayStorage;
    v46 = (v6 + 8);
    v47 = v11;
    v48 = v10;
    while (1)
    {
      if (v50)
      {
        v10 = sub_1004BD484();
      }

      else
      {
        if (v12 >= *(v49 + 16))
        {
          goto LABEL_19;
        }

        v10 = *(v10 + 8 * v12 + 32);
      }

      v14 = v10;
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v57 = [v10 type] != 2;
      v15 = [v14 title];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1004BBE64();
        v55 = v18;
        v56 = v17;
      }

      else
      {
        v55 = 0xE000000000000000;
        v56 = 0;
      }

      v19 = swift_allocObject();
      v21 = v53;
      v20 = v54;
      v19[2] = v14;
      v19[3] = v21;
      v19[4] = v20;
      v19[5] = v12;
      v22 = v14;
      sub_10002F518(v21);
      v23 = v51;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v24 = sub_1004B6CE4();
      v4 = v25;
      (*v46)(v23, v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1000183D4(0, v13[2] + 1, 1, v13);
      }

      a3 = v13[2];
      v26 = v13[3];
      if (a3 >= v26 >> 1)
      {
        v13 = sub_1000183D4((v26 > 1), a3 + 1, 1, v13);
      }

      v27 = 2 * v57;

      v13[2] = (a3 + 1);
      v28 = &v13[7 * a3];
      v28[4] = v24;
      v28[5] = v4;
      v29 = v55;
      v28[6] = v56;
      v28[7] = v29;
      *(v28 + 64) = v27;
      v28[9] = &unk_1004D30D8;
      v28[10] = v19;
      ++v12;
      v10 = v48;
      if (v6 == v47)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v30 = v10;
    v11 = sub_1004BD6A4();
    v10 = v30;
    v44 = v4;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_22:

  v31 = v44;
  v32 = [v44 message];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1004BBE64();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = i;
  v38 = [v31 explanation];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1004BBE64();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  *v37 = v34;
  *(v37 + 8) = v36;
  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  *(v37 + 48) = 1;
  *(v37 + 56) = v13;
  *(v37 + 64) = 0;
}

uint64_t sub_1001EBF64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) = 1;
    v6 = result;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = v7;

    sub_1001EBB90(sub_1001F4470, v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_100009178((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    sub_1000C7A60(v16, v12);
    v11(v13, v9, v10);
    sub_100052310(v16);
    return sub_1001F3874(v13);
  }

  return result;
}

uint64_t PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100009130(0, &qword_100603570);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F3204, v6);
}

void sub_1001EC1FC(uint64_t a1, uint64_t a2, void *a3)
{
  v166 = a3;
  v169 = a2;
  v4 = sub_100003ABC(&qword_1006025E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v154 - v5;
  v7 = sub_100003ABC(&unk_100606170);
  __chkstk_darwin(v7 - 8);
  v9 = &v154 - v8;
  if (qword_100600050 != -1)
  {
    swift_once();
  }

  v10 = sub_1004B80B4();
  sub_100007084(v10, static Logger.playbackController);
  swift_errorRetain();
  v11 = sub_1004B8094();
  v12 = sub_1004BC984();

  v13 = os_log_type_enabled(v11, v12);
  v173 = v6;
  v175 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v177 = v15;
    *v14 = 136446210;
    *&v202 = a1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v16 = sub_1004BBF04();
    v18 = sub_100012018(v16, v17, &v177);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "didFailToPlayFirstItem with error=%{public}s", v14, 0xCu);
    sub_100004C6C(v15);
  }

  if ((*(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v159 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v19 = sub_1004B69A4();
    v20 = [v19 userInfo];
    v21 = sub_1004BBC44();

    v22 = *(v21 + 16);
    v163 = v19;
    if (v22 && (v23 = sub_1000346D4(0x676F6C616964, 0xE600000000000000), (v24 & 1) != 0))
    {
      sub_100004DE4(*(v21 + 56) + 32 * v23, &v177);

      sub_100003ABC(&qword_100602EC8);
      if (swift_dynamicCast())
      {

        v25 = sub_1004B8094();
        v26 = sub_1004BC9A4();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          *&v177 = v174;
          *v27 = 136446210;
          v28 = sub_1004BBC54();
          v30 = sub_100012018(v28, v29, &v177);

          *(v27 + 4) = v30;
          v19 = v163;
          _os_log_impl(&_mh_execute_header, v25, v26, "Found an error dialog=%{public}s", v27, 0xCu);
          sub_100004C6C(v174);
        }

        v31 = objc_allocWithZone(ICStoreDialogResponse);
        isa = sub_1004BBC24().super.isa;

        v33 = [v31 initWithResponseDictionary:isa];

        sub_1001EBB90(0, 0, &v177);
        v199 = v179;
        v200 = v180;
        v201 = v181;
        v197 = v177;
        v198 = v178;
LABEL_14:
        v34 = [v19 userInfo];
        v35 = sub_1004BBC44();

        v36 = sub_1004BBE64();
        if (*(v35 + 16))
        {
          v38 = sub_1000346D4(v36, v37);
          v40 = v39;

          if (v40)
          {
            sub_100004DE4(*(v35 + 56) + 32 * v38, &v177);

            sub_100009130(0, &qword_1006014B0);
            if (swift_dynamicCast())
            {
              v41 = v202;
              goto LABEL_21;
            }

LABEL_20:
            v41 = 0;
LABEL_21:
            v42 = swift_allocObject();
            *(v42 + 16) = 0;
            v174 = (v42 + 16);
            v43 = swift_allocObject();
            *(v43 + 16) = 0;
            v172 = (v43 + 16);
            v44 = swift_allocObject();
            *(v44 + 16) = 0;
            v171 = (v44 + 16);
            sub_1001ED988(a1, v43, v44, v42);
            if (v41)
            {
              v45 = v41;
              sub_1001ED988(v45, v43, v44, v42);
            }

            v161 = v43;
            v162 = v44;
            v164 = v41;
            v160 = v42;
            if (!v166)
            {
              v52 = 0;
              goto LABEL_47;
            }

            v46 = v166;
            v47 = [v46 stationStringID];
            if (v47)
            {
              v48 = v47;
              v49 = sub_1004BBE64();
              v51 = v50;
            }

            else
            {
              v49 = 0;
              v51 = 0;
            }

            v53 = [v46 stationID];
            v54 = [v46 stationHash];
            if (v54)
            {
              v55 = v54;
              v56 = sub_1004BBE64();
              v58 = v57;

              v19 = v163;
              if (v51)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v56 = 0;
              v58 = 0;
              if (v51)
              {
LABEL_30:
                v59 = HIBYTE(v51) & 0xF;
                if ((v51 & 0x2000000000000000) == 0)
                {
                  v59 = v49 & 0xFFFFFFFFFFFFLL;
                }

                if (v59 | v53)
                {
LABEL_40:
                  sub_100009130(0, &qword_1006086C0);
                  v61 = [swift_getObjCClassFromMetadata() identityKind];
                  v170 = &v154;
                  __chkstk_darwin(v61);
                  *(&v154 - 6) = v49;
                  *(&v154 - 5) = v51;
                  *(&v154 - 4) = v53;
                  *(&v154 - 3) = v56;
                  *(&v154 - 2) = v58;
                  v62 = objc_allocWithZone(MPIdentifierSet);
                  v63 = swift_allocObject();
                  *(v63 + 16) = sub_1001F3C98;
                  *(v63 + 24) = &v154 - 8;
                  *&v179 = sub_1001F3CC0;
                  *(&v179 + 1) = v63;
                  *&v177 = _NSConcreteStackBlock;
                  *(&v177 + 1) = 1107296256;
                  *&v178 = sub_10011FE68;
                  *(&v178 + 1) = &unk_1005B7E30;
                  v64 = _Block_copy(&v177);

                  v65 = [v62 initWithModelKind:v61 block:v64];

                  _Block_release(v64);

                  LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

                  if (v61)
                  {
                    __break(1u);
                  }

                  else
                  {
                    __chkstk_darwin(v66);
                    *(&v154 - 2) = v46;
                    v67 = objc_allocWithZone(MPModelRadioStation);
                    v68 = swift_allocObject();
                    *(v68 + 16) = sub_1001F3CC8;
                    *(v68 + 24) = &v154 - 4;
                    *&v179 = sub_1001F3CC0;
                    *(&v179 + 1) = v68;
                    *&v177 = _NSConcreteStackBlock;
                    *(&v177 + 1) = 1107296256;
                    *&v178 = sub_10011FE68;
                    *(&v178 + 1) = &unk_1005B7E80;
                    v69 = _Block_copy(&v177);

                    v52 = [v67 initWithIdentifiers:v65 block:v69];

                    _Block_release(v69);

                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    v42 = v160;
                    if ((isEscapingClosureAtFileLocation & 1) == 0)
                    {
                      v19 = v163;
LABEL_46:
                      v41 = v164;
LABEL_47:
                      v71 = v174;
                      swift_beginAccess();
                      v72 = *v71;
                      v73 = v52;
                      v165 = v52;
                      if (v72 == 1)
                      {
                        if (v52)
                        {
                          sub_10001342C(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v202);
                          v74 = *(&v203 + 1);
                          v75 = v204;
                          sub_100009178(&v202, *(&v203 + 1));
                          v76 = sub_1004BB744();
                          v77 = v52;
                          v78 = v175;
                          sub_1004B7F74();
                          v79 = *(v76 - 8);
                          if ((*(v79 + 48))(v78, 1, v76) == 1)
                          {
                            sub_100007214(v78, &unk_100606170);
                            v177 = 0u;
                            v178 = 0u;
                            *&v179 = 0;
                          }

                          else
                          {
                            *(&v178 + 1) = v76;
                            *&v179 = &protocol witness table for Station;
                            v93 = sub_1000133B0(&v177);
                            (*(v79 + 32))(v93, v78, v76);
                          }

                          v41 = v164;
                          v182 = 2;
                          (*(v75 + 8))(&v177, v74, v75);
                          sub_1001F3874(&v177);
                          sub_100004C6C(&v202);
                          v95 = v197;
                          v94 = v198;
                          v87 = v199;
                          v194[0] = *(&v199 + 1);
                          *(v194 + 3) = DWORD1(v199);
                          v86 = *(&v199 + 1);
                          v88 = v200;
                          v193[0] = *(&v200 + 1);
                          *(v193 + 3) = DWORD1(v200);
                          v85 = *(&v200 + 1);
                          v96 = v201;
                          v97 = v165;
                          v19 = v163;
                          goto LABEL_62;
                        }

                        v73 = 0;
                      }

                      v80 = v172;
                      swift_beginAccess();
                      if (*v80)
                      {
                        v81 = v52;
                        sub_100115F10(v73, &v202);
LABEL_56:
                        sub_100007214(&v197, &qword_100602B60);

                        v85 = v207;
                        v84 = v208;
                        v86 = v205;
                        v87 = v204;
                        v88 = v206;
                        v167 = v202;
                        v168 = v203;
                        v177 = v202;
                        v178 = v203;
                        LOBYTE(v179) = v204;
                        *(&v179 + 1) = v205;
                        LOBYTE(v180) = v206;
                        *(&v180 + 1) = v207;
                        v181 = v208;
                        v89 = &v188;
LABEL_57:
                        sub_1000C7A60(&v177, v89);
                        v157 = v87;
                        goto LABEL_64;
                      }

                      v82 = v171;
                      swift_beginAccess();
                      if (*v82)
                      {
                        v83 = v52;
                        sub_100116DD0(v73, 0, &v202);
                        goto LABEL_56;
                      }

                      v90 = v52;

                      v91 = sub_1004B69A4();
                      v92 = [objc_opt_self() playbackAlertControllerForItem:v166 contentType:0 error:v91 dismissalBlock:0];

                      if (v92)
                      {
                        sub_1001EDD1C(&v177);
                        sub_100007214(&v197, &qword_100602B60);

                        v190 = v179;
                        v191 = v180;
                        v192 = v181;
                        v188 = v177;
                        v189 = v178;
                      }

                      else
                      {
                        sub_100007214(&v197, &qword_100602B60);
                        v188 = 0u;
                        v189 = 0u;
                        v190 = 0u;
                        v191 = 0u;
                        v192 = 0;
                      }

                      v135 = v161;
                      v134 = v162;
                      sub_1001EE104(a1, v42, v162, v161);
                      if (v41)
                      {
                        v136 = v41;
                        sub_1001EE104(v136, v42, v134, v135);
                      }

                      if (!v166)
                      {
                        goto LABEL_117;
                      }

                      v137 = v166;
                      v138 = [v137 modelGenericObject];
                      v97 = v165;
                      if (v138)
                      {
                        v139 = v138;
                        v140 = [v138 innermostModelObject];
                      }

                      else
                      {
                        v140 = 0;
                      }

                      if (*v174 == 1)
                      {
                        v141 = [v137 modelPlayEvent];
                        if (v141)
                        {
                          v142 = v141;
                          v143 = [v141 itemType];
                          if (v143 == 3)
                          {
                            v144 = [v142 playlist];
LABEL_115:
                            v145 = v144;

                            if (!v145)
                            {

LABEL_117:
                              v95 = v188;
                              v94 = v189;
                              v87 = v190;
                              v194[0] = *(&v190 + 1);
                              *(v194 + 3) = DWORD1(v190);
                              v86 = *(&v190 + 1);
                              v88 = v191;
                              v193[0] = *(&v191 + 1);
                              *(v193 + 3) = DWORD1(v191);
                              v85 = *(&v191 + 1);
                              v96 = v192;
                              v97 = v165;
LABEL_62:
                              if (!v85)
                              {
                                v177 = v95;
                                v178 = v94;
                                LOBYTE(v179) = v87;
                                *(&v179 + 1) = v194[0];
                                DWORD1(v179) = *(v194 + 3);
                                *(&v179 + 1) = v86;
                                LOBYTE(v180) = v88;
                                *(&v180 + 1) = v193[0];
                                DWORD1(v180) = *(v193 + 3);
                                *(&v180 + 1) = 0;
                                v181 = v96;
                                if (v41)
                                {
LABEL_74:
                                  v121 = [v41 domain];
                                  v122 = sub_1004BBE64();
                                  v124 = v123;

                                  v125 = sub_1004BBE64();
                                  if (v124)
                                  {
                                    if (v122 == v125 && v124 == v126)
                                    {

LABEL_80:
                                      if ([v41 code] != 40)
                                      {

                                        sub_100007214(&v177, &qword_100602B60);

LABEL_107:

                                        v19 = v165;
                                        goto LABEL_108;
                                      }

                                      if (!v166)
                                      {
                                        v131 = 0;
                                        v133 = 0;
                                        v130 = 0;
LABEL_106:
                                        sub_1001EF998(v131, v133, 0, 0);

                                        sub_100007214(&v177, &qword_100602B60);

                                        goto LABEL_107;
                                      }

                                      v128 = [v166 modelGenericObject];
                                      if (v128)
                                      {
                                        v129 = v128;
                                        v130 = [v128 flattenedGenericObject];

                                        if (v130)
                                        {
                                          v131 = MPModelObject.bestIdentifier(for:)(2, 1u);
                                          v133 = v132;
                                        }

                                        else
                                        {
                                          v131 = 0;
                                          v133 = 0;
                                        }

                                        goto LABEL_106;
                                      }

LABEL_129:
                                      __break(1u);
                                      return;
                                    }

                                    v127 = sub_1004BD9C4();

                                    if (v127)
                                    {
                                      goto LABEL_80;
                                    }

                                    sub_100007214(&v177, &qword_100602B60);

LABEL_108:

                                    return;
                                  }

                                  v97 = v165;
LABEL_87:

                                  sub_100007214(&v177, &qword_100602B60);

                                  goto LABEL_108;
                                }

LABEL_86:
                                sub_1004BBE64();
                                goto LABEL_87;
                              }

                              v177 = v95;
                              v178 = v94;
                              LOBYTE(v179) = v87;
                              *(&v179 + 1) = v194[0];
                              DWORD1(v179) = *(v194 + 3);
                              *(&v179 + 1) = v86;
                              LOBYTE(v180) = v88;
                              *(&v180 + 1) = v193[0];
                              DWORD1(v180) = *(v193 + 3);
                              *(&v180 + 1) = v85;
                              v181 = v96;
                              v84 = v96;
                              v167 = v95;
                              v168 = v94;
                              sub_1000C7A60(&v177, &v202);
                              v196[0] = v194[0];
                              *(v196 + 3) = *(v194 + 3);
                              v195[0] = v193[0];
                              *(v195 + 3) = *(v193 + 3);
                              v157 = v87;
                              LOBYTE(v87) = v87 & 1;
LABEL_64:
                              v99 = v167;
                              v98 = v168;
                              v188 = v167;
                              v189 = v168;
                              LOBYTE(v190) = v87;
                              v158 = v86;
                              *(&v190 + 1) = v86;
                              v156 = v88;
                              LOBYTE(v191) = v88 & 1;
                              *(&v191 + 1) = v85;
                              v192 = v84;
                              v155 = v84;
                              v100 = *(v85 + 16);
                              if (v100)
                              {

                                v101 = _swiftEmptyArrayStorage;
                                v154 = v85;
                                v102 = (v85 + 80);
                                do
                                {
                                  v172 = v101;
                                  v175 = v100;
                                  v103 = *(v102 - 6);
                                  v104 = *(v102 - 5);
                                  v105 = *(v102 - 4);
                                  v106 = *(v102 - 3);
                                  LODWORD(v170) = *(v102 - 16);
                                  v108 = *(v102 - 1);
                                  v107 = *v102;
                                  v109 = swift_allocObject();
                                  swift_unknownObjectWeakInit();
                                  v110 = swift_allocObject();
                                  v173 = v105;
                                  v174 = v103;
                                  *(v110 + 16) = v103;
                                  *(v110 + 24) = v104;
                                  v101 = v172;
                                  v111 = v170;
                                  *(v110 + 32) = v105;
                                  *(v110 + 40) = v106;
                                  v112 = v111;
                                  *(v110 + 48) = v111;
                                  *(v110 + 49) = v209[0];
                                  *(v110 + 52) = *(v209 + 3);
                                  *(v110 + 56) = v108;
                                  *(v110 + 64) = v107;
                                  *(v110 + 72) = v109;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  sub_10002F518(v108);

                                  v171 = v107;
                                  sub_10002F518(v108);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v101 = sub_1000183D4(0, v101[2] + 1, 1, v101);
                                  }

                                  v114 = v101[2];
                                  v113 = v101[3];
                                  if (v114 >= v113 >> 1)
                                  {
                                    v101 = sub_1000183D4((v113 > 1), v114 + 1, 1, v101);
                                  }

                                  v102 += 7;

                                  sub_10003CC4C(v108);
                                  v101[2] = (v114 + 1);
                                  v115 = &v101[7 * v114];
                                  v116 = v173;
                                  v115[4] = v174;
                                  v115[5] = v104;
                                  v115[6] = v116;
                                  v115[7] = v106;
                                  *(v115 + 64) = v112;
                                  v115[9] = &unk_1004D30C8;
                                  v115[10] = v110;
                                  v100 = v175 - 1;
                                }

                                while (v175 != 1);
                                v85 = v154;

                                v19 = v163;
                                v99 = v167;
                                v98 = v168;
                              }

                              else
                              {
                                v101 = _swiftEmptyArrayStorage;
                              }

                              v167 = v99;
                              v168 = v98;
                              LOBYTE(v177) = 1;
                              v183 = v99;
                              v184 = v98;
                              LOBYTE(v185) = 0;
                              *(&v185 + 1) = 0;
                              LOBYTE(v186) = 1;
                              *(&v186 + 1) = v101;
                              v187 = 0;
                              v117 = v169;
                              *(v169 + v159) = 1;
                              v118 = *(v117 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                              v119 = *(v117 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                              sub_100009178((v117 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v118);
                              v179 = v185;
                              v180 = v186;
                              v181 = v187;
                              v177 = v183;
                              v178 = v184;
                              v182 = 0;
                              v120 = *(v119 + 8);

                              sub_1000C7A60(&v183, &v176);
                              v120(&v177, v118, v119);
                              sub_100052310(&v188);
                              sub_100052310(&v183);
                              sub_1001F3874(&v177);
                              v177 = v167;
                              v178 = v168;
                              LOBYTE(v179) = v157;
                              *(&v179 + 1) = v196[0];
                              DWORD1(v179) = *(v196 + 3);
                              *(&v179 + 1) = v158;
                              LOBYTE(v180) = v156;
                              *(&v180 + 1) = v195[0];
                              DWORD1(v180) = *(v195 + 3);
                              *(&v180 + 1) = v85;
                              v181 = v155;
                              v41 = v164;
                              v97 = v165;
                              if (v164)
                              {
                                goto LABEL_74;
                              }

                              goto LABEL_86;
                            }

LABEL_121:
                            v146 = v145;
                            sub_10001342C(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v202);
                            v147 = *(&v203 + 1);
                            v148 = v204;
                            sub_100009178(&v202, *(&v203 + 1));
                            v149 = v146;
                            v150 = v173;
                            sub_1004B7634();
                            v151 = sub_1004B7644();
                            v152 = *(v151 - 8);
                            if ((*(v152 + 48))(v150, 1, v151) == 1)
                            {
                              sub_100007214(v150, &qword_1006025E8);
                              v177 = 0u;
                              v178 = 0u;
                              *&v179 = 0;
                            }

                            else
                            {
                              *(&v178 + 1) = v151;
                              *&v179 = sub_1001F3C50(&unk_100606180, &type metadata accessor for GenericMusicItem);
                              v153 = sub_1000133B0(&v177);
                              (*(v152 + 32))(v153, v150, v151);
                            }

                            v182 = 2;
                            (*(v148 + 8))(&v177, v147, v148);

                            sub_1001F3874(&v177);
                            sub_100004C6C(&v202);
                            v95 = v188;
                            v94 = v189;
                            v87 = v190;
                            v194[0] = *(&v190 + 1);
                            *(v194 + 3) = DWORD1(v190);
                            v86 = *(&v190 + 1);
                            v88 = v191;
                            v193[0] = *(&v191 + 1);
                            *(v193 + 3) = DWORD1(v191);
                            v85 = *(&v191 + 1);
                            v96 = v192;
                            v19 = v163;
                            v41 = v164;
                            v97 = v165;
                            goto LABEL_62;
                          }

                          if (v143 == 1)
                          {
                            v144 = [v142 album];
                            goto LABEL_115;
                          }
                        }

                        if (v140)
                        {
                          v145 = v140;
                          goto LABEL_121;
                        }

LABEL_126:
                        v95 = v188;
                        v94 = v189;
                        v87 = v190;
                        v194[0] = *(&v190 + 1);
                        *(v194 + 3) = DWORD1(v190);
                        v86 = *(&v190 + 1);
                        v88 = v191;
                        v193[0] = *(&v191 + 1);
                        *(v193 + 3) = DWORD1(v191);
                        v85 = *(&v191 + 1);
                        v96 = v192;
                        goto LABEL_62;
                      }

                      if (*v172)
                      {
                        sub_100115F10(v140, &v202);
                      }

                      else
                      {
                        if ((*v171 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        sub_100116DD0(v140, 0, &v202);
                      }

                      sub_100007214(&v188, &qword_100602B60);

                      v85 = v207;
                      v84 = v208;
                      v86 = v205;
                      v87 = v204;
                      v88 = v206;
                      v167 = v202;
                      v168 = v203;
                      v177 = v202;
                      v178 = v203;
                      LOBYTE(v179) = v204;
                      *(&v179 + 1) = v205;
                      LOBYTE(v180) = v206;
                      *(&v180 + 1) = v207;
                      v181 = v208;
                      v89 = &v183;
                      goto LABEL_57;
                    }
                  }

                  __break(1u);
                  goto LABEL_129;
                }

LABEL_36:
                if (v58)
                {
                  v60 = HIBYTE(v58) & 0xF;
                  if ((v58 & 0x2000000000000000) == 0)
                  {
                    v60 = v56 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v60)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                }

                v52 = 0;
                v42 = v160;
                goto LABEL_46;
              }
            }

            if (v53)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }
        }

        else
        {
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0;
    goto LABEL_14;
  }
}

void sub_1001ED988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1004B69A4();
  v8 = sub_1004B69A4();
  Category = MPCRadioPlaybackErrorGetCategory();

  switch(Category)
  {
    case 3:
      v10 = (a4 + 16);
      break;
    case 2:
      v10 = (a3 + 16);
      break;
    case 1:
      v10 = (a2 + 16);
      break;
    default:
      return;
  }

  swift_beginAccess();
  *v10 = 1;
}

uint64_t sub_1001EDA30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1001F4114;
  *(v13 + 24) = v12;
  v16[4] = sub_100124268;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10011FDEC;
  v16[3] = &unk_1005B7FC0;
  v14 = _Block_copy(v16);

  [a1 setRadioIdentifiersWithBlock:v14];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_1001EDBB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = sub_1004BBE24();
  }

  else
  {
    v9 = 0;
  }

  [a1 setStationStringID:v9];

  [a1 setStationID:a4];
  if (a6)
  {
    v10 = sub_1004BBE24();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a1 setStationHash:?];
}

void sub_1001EDC84(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void sub_1001EDD1C(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = sub_1004B6D14();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 actions];
  sub_100009130(0, &unk_100606208);
  v7 = sub_1004BC2A4();

  if (v7 >> 62)
  {
    v8 = sub_1004BD6A4();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_21:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v40 = v2;
  v41 = a1;
  v9 = 0;
  v42 = (v4 + 8);
  v43 = v7 & 0xC000000000000001;
  v10 = _swiftEmptyArrayStorage;
  v44 = v8;
  v45 = v7;
  do
  {
    if (v43)
    {
      v11 = sub_1004BD484();
    }

    else
    {
      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v11 handler];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v13 = sub_1001F4284;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v12 title];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1004BBE64();
      v48 = v18;
      v49 = v17;
    }

    else
    {
      v48 = 0xE000000000000000;
      v49 = 0;
    }

    v19 = swift_allocObject();
    v19[2] = v13;
    v19[3] = v14;
    v19[4] = v12;
    sub_10002F518(v13);
    v20 = v12;
    v21 = v46;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v22 = sub_1004B6CE4();
    v24 = v23;
    (*v42)(v21, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1000183D4(0, v10[2] + 1, 1, v10);
    }

    v26 = v10[2];
    v25 = v10[3];
    if (v26 >= v25 >> 1)
    {
      v10 = sub_1000183D4((v25 > 1), v26 + 1, 1, v10);
    }

    ++v9;

    sub_10003CC4C(v13);
    v10[2] = (v26 + 1);
    v27 = &v10[7 * v26];
    v27[4] = v22;
    v27[5] = v24;
    v28 = v48;
    v27[6] = v49;
    v27[7] = v28;
    *(v27 + 64) = 2;
    v27[9] = &unk_1004D3128;
    v27[10] = v19;
    v7 = v45;
  }

  while (v44 != v9);

  v2 = v40;
  a1 = v41;
LABEL_22:
  v29 = [v2 title];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1004BBE64();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [v2 message];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1004BBE64();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  *a1 = v31;
  *(a1 + 8) = v33;
  *(a1 + 16) = v36;
  *(a1 + 24) = v38;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v10;
  *(a1 + 64) = 0;
}

void sub_1001EE104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30);
  type metadata accessor for MPCError(0);
  if (swift_dynamicCast())
  {
    sub_1001F3C50(&qword_100600F90, type metadata accessor for MPCError);
    sub_1004B6964();

    switch(v7)
    {
      case 10:
        swift_beginAccess();
        *(a4 + 16) = 1;
        break;
      case 11:
        swift_beginAccess();
        *(a3 + 16) = 1;
        break;
      case 17:
        swift_beginAccess();
        *(a2 + 16) = 1;
        break;
    }
  }
}

uint64_t sub_1001EE258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_100003ABC(&qword_1006014F0);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001EE2F8, 0, 0);
}

uint64_t sub_1001EE2F8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = sub_1004BC4B4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  *(v0 + 112) = *v3;
  *(v0 + 128) = v3[1];
  v5 = *(v3 + 5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  *(v6 + 80) = *(v3 + 6);
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = *(v2 + 64);
  v11 = *(v2 + 48);
  v12 = *(v2 + 16);
  *(v6 + 120) = *(v2 + 32);
  *(v6 + 136) = v11;
  *(v6 + 152) = v10;
  *(v6 + 104) = v12;
  *(v6 + 88) = *v2;
  sub_100013D04(v0 + 112, v0 + 144);
  sub_100013D04(v0 + 128, v0 + 160);
  sub_10002F518(v5);
  sub_10000F778(v2, v0 + 16, &qword_100602B60);
  sub_1000FD6BC(0, 0, v1, &unk_1004D3138, v6);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001EE4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = sub_1000136EC;

    return v12(a4, a5);
  }

  else
  {
    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009130(0, &qword_100603570);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F3214, v10);
}

id sub_1001EE7B4(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void), uint64_t a5)
{
  v123 = a2;
  v9 = sub_1004B6D14();
  v10 = *(v9 - 8);
  v118 = v9;
  v119 = v10;
  __chkstk_darwin(v9);
  v117 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004B6E64();
  __chkstk_darwin(v12 - 8);
  v116 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1004BBE14();
  v14 = *(v122 - 8);
  v15 = __chkstk_darwin(v122);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  if (qword_100600050 != -1)
  {
    swift_once();
  }

  v20 = sub_1004B80B4();
  sub_100007084(v20, static Logger.playbackController);
  v21 = sub_1004B8094();
  v22 = sub_1004BC984();
  v23 = os_log_type_enabled(v21, v22);
  v121 = a3;
  v115 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v120 = v14;
    v25 = v24;
    v114 = swift_slowAlloc();
    *&v138[0] = v114;
    *v25 = 136446210;
    v26 = a1;
    *&v130 = a1;
    type metadata accessor for MPCExplicitContentAuthorizationReason(0);
    v27 = sub_1004BBF04();
    v29 = v19;
    v30 = sub_100012018(v27, v28, v138);
    v31 = a5;
    v32 = a4;

    *(v25 + 4) = v30;
    v19 = v29;
    a3 = v121;
    _os_log_impl(&_mh_execute_header, v21, v22, "requiresAuthorizationToPlay with reason=%{public}s", v25, 0xCu);
    sub_100004C6C(v114);

    v14 = v120;

    if (v26 != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v40 = a1;
    v31 = a5;
    v32 = a4;
    if (v40 != 2)
    {
LABEL_5:
      if (qword_1005FFE10 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      v140 = v134;
      v141 = v135;
      v142 = v136;
      v143 = v137;
      v138[0] = v130;
      v138[1] = v131;
      v138[2] = v132;
      v139 = v133;
      v33 = v134;
      if (!v134 || (v34 = v141) == 0)
      {
        v120 = v31;
        v121 = v32;
        sub_1004BBDA4();
        v47 = v115;
        v114 = *(v14 + 16);
        v114(v115, v19, v122);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v48 = qword_100617118;
        sub_1004B6DF4();
        v49 = v48;
        v50 = sub_1004BBED4();
        v112 = v51;
        v113 = v50;
        v52 = *(v14 + 8);
        v53 = v122;
        v52(v19, v122);
        v54 = v117;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v55 = sub_1004B6CE4();
        v110 = v56;
        v111 = v55;
        (*(v119 + 8))(v54, v118);
        sub_1004BBDA4();
        v114(v47, v19, v53);
        sub_1004B6DF4();
        v57 = sub_1004BBED4();
        v59 = v58;
        v52(v19, v53);
        sub_100003ABC(&qword_1006011F0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1004C50A0;
        v61 = v110;
        *(v60 + 32) = v111;
        *(v60 + 40) = v61;
        v62 = v112;
        *(v60 + 48) = v113;
        *(v60 + 56) = v62;
        *(v60 + 64) = 2;
        *(v60 + 72) = 0;
        *(v60 + 80) = 0;
        v125 = 0uLL;
        *&v126 = v57;
        *(&v126 + 1) = v59;
        LOBYTE(v127) = 0;
        *(&v127 + 1) = 0;
        LOBYTE(v128) = 1;
        *(&v128 + 1) = v60;
        v129 = 0;
        v63 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
        v64 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
        sub_100009178((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v63);
        v132 = v127;
        v133 = v128;
        *&v134 = v129;
        v130 = v125;
        v131 = v126;
        BYTE8(v134) = 0;
        v65 = *(v64 + 8);

        sub_1000C7A60(&v125, v124);
        v65(&v130, v63, v64);
        sub_1001F3874(&v130);
        v121(0, 0);
        sub_100052310(&v125);

        return sub_100051DEC(v138);
      }

      v109 = *(&v140 + 1);
      v110 = *(&v139 + 1);
      v35 = objc_opt_self();

      v111 = v34;

      v36 = [v35 standardUserDefaults];
      *&v125 = 0xD000000000000012;
      *(&v125 + 1) = 0x8000000100503550;
      sub_10000E7F4();
      NSUserDefaults.subscript.getter(&v125, &v130);

      v112 = v33;
      if (*(&v131 + 1))
      {
        sub_100003ABC(&unk_100603590);
        v37 = swift_dynamicCast();
        v38 = v121;
        if (v37)
        {
          v39 = v125;
LABEL_24:
          v66 = [v38 cloudUniversalLibraryID];
          if (!v66)
          {

LABEL_29:
            sub_1004BBDA4();
            v72 = v115;
            v105 = *(v14 + 16);
            v106 = v14 + 16;
            v105(v115, v19, v122);
            if (qword_1005FFD30 != -1)
            {
              swift_once();
            }

            v73 = qword_100617118;
            v74 = qword_100617118;
            v103 = v73;
            v75 = v74;
            sub_1004B6DF4();
            v76 = v75;
            v108 = sub_1004BBED4();
            v114 = v77;
            v78 = *(v14 + 8);
            v120 = v14 + 8;
            v102 = v78;
            v79 = v122;
            v78(v19, v122);
            v80 = swift_allocObject();
            v107 = v80;
            v80[2] = v38;
            v80[3] = v32;
            v80[4] = v31;
            v81 = v38;

            v82 = v117;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v104 = sub_1004B6CE4();
            v113 = v83;
            v121 = v32;
            v84 = v118;
            v85 = v19;
            v86 = *(v119 + 8);
            v86(v82, v118);
            sub_1004BBDA4();
            v105(v72, v85, v79);
            sub_1004B6DF4();
            v119 = sub_1004BBED4();
            v116 = v87;
            v102(v85, v79);
            v88 = v84;
            v89 = swift_allocObject();
            *(v89 + 16) = v121;
            *(v89 + 24) = v31;

            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v90 = sub_1004B6CE4();
            v92 = v91;
            v122 = v91;
            v86(v82, v88);
            sub_100003ABC(&qword_1006011F0);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_1004C50C0;
            v95 = v113;
            v94 = v114;
            *(v93 + 32) = v104;
            *(v93 + 40) = v95;
            v96 = v107;
            *(v93 + 48) = v108;
            *(v93 + 56) = v94;
            *(v93 + 64) = 2;
            *(v93 + 72) = &unk_1004D30A8;
            *(v93 + 80) = v96;
            *(v93 + 88) = v90;
            *(v93 + 96) = v92;
            v97 = v116;
            *(v93 + 104) = v119;
            *(v93 + 112) = v97;
            *(v93 + 120) = 0;
            *(v93 + 128) = &unk_1004D30B8;
            *(v93 + 136) = v89;
            LOBYTE(v130) = 1;
            *&v125 = v110;
            *(&v125 + 1) = v112;
            *&v126 = v109;
            *(&v126 + 1) = v111;
            LOBYTE(v127) = 0;
            *(&v127 + 1) = 0;
            LOBYTE(v128) = 1;
            *(&v128 + 1) = v93;
            v129 = 0;
            v98 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
            v99 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
            v123 = sub_100009178((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v98);
            v132 = v127;
            v133 = v128;
            *&v134 = v129;
            v130 = v125;
            v131 = v126;
            BYTE8(v134) = 0;
            v100 = *(v99 + 8);

            sub_1000C7A60(&v125, v124);
            v100(&v130, v98, v99);
            sub_100051DEC(v138);
            sub_100052310(&v125);

            return sub_1001F3874(&v130);
          }

          v120 = v14;

          result = [v38 cloudUniversalLibraryID];
          if (result)
          {
            v67 = result;
            v68 = sub_1004BBE64();
            v70 = v69;

            *&v130 = v68;
            *(&v130 + 1) = v70;
            __chkstk_darwin(v71);
            *(&v101 - 2) = &v130;
            LOBYTE(v67) = sub_1000DFCA4(sub_1001F3B18, (&v101 - 4), v39);

            v14 = v120;
            v38 = v121;
            if (v67)
            {

              v32(1, 0);
              return sub_100051DEC(v138);
            }

            goto LABEL_29;
          }

LABEL_33:
          __break(1u);
          return result;
        }
      }

      else
      {
        sub_100007214(&v130, &qword_100605110);
        v38 = v121;
      }

      v39 = _swiftEmptyArrayStorage;
      goto LABEL_24;
    }
  }

  result = [a3 modelGenericObject];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v42 = result;
  v43 = [result flattenedGenericObject];

  if (v43)
  {
    v44 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  sub_1001EF998(v44, v46, v32, v31);
}

uint64_t sub_1001EF4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_1001EF4D4, 0, 0);
}

uint64_t sub_1001EF4D4()
{
  v19 = v0;
  v1 = [*(v0 + 64) cloudUniversalLibraryID];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = sub_1004BBE64();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x8000000100503550;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(v0 + 48, (v0 + 16));

  if (*(v0 + 40))
  {
    sub_100003ABC(&unk_100603590);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 48);
      v9 = *(v8 + 2);
      if (v9 > 0x3E7)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v8;
        if (!isUniquelyReferenced_nonNull_native || *(v8 + 3) <= 0x7CDuLL)
        {
          v8 = sub_100017CC8(isUniquelyReferenced_nonNull_native, v9, 1, v8);
          v17 = v8;
        }

        sub_1001330CC(0, v9 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100605110);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100017CC8(0, *(v8 + 2) + 1, 1, v8);
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_100017CC8((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v3;
  *(v13 + 5) = v5;
  v14 = [v6 standardUserDefaults];
  v18[3] = sub_100003ABC(&unk_100603590);
  v18[0] = v8;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000100503550;
  NSUserDefaults.subscript.setter(v18, v0 + 16, &type metadata for String);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001EF778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001EF798, 0, 0);
}

uint64_t sub_1001EF798()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001EF928(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1004B69A4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1001EF998(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v71 = a4;
  v74 = a3;
  v8 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v8 - 8);
  v70 = &v65 - v9;
  v73 = sub_1004B6B04();
  v10 = *(v73 - 8);
  v11 = __chkstk_darwin(v73);
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  if (qword_100600050 != -1)
  {
    swift_once();
  }

  v72 = sub_1004B80B4();
  sub_100007084(v72, static Logger.playbackController);

  v15 = sub_1004B8094();
  v16 = sub_1004BC9A4();

  v17 = os_log_type_enabled(v15, v16);
  v69 = a1;
  if (v17)
  {
    v18 = a2;
    v19 = v14;
    v20 = v10;
    v21 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v75[0] = v67;
    *v21 = 136446210;
    v22 = v5;
    v23 = v21;
    *&v80[0] = a1;
    *(&v80[0] + 1) = v18;

    sub_100003ABC(&unk_100606160);
    v24 = sub_1004BBF04();
    v26 = sub_100012018(v24, v25, v75);
    v10 = v20;
    v14 = v19;
    a2 = v18;

    v27 = v23;
    *(v23 + 1) = v26;
    v28 = v73;
    v5 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Presenting Age Verification with model identifier=%{public}s", v27, 0xCu);
    sub_100004C6C(v67);
  }

  else
  {

    v28 = v73;
  }

  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v80[4] = v76;
  v80[5] = v77;
  v80[6] = v78;
  v80[7] = v79;
  v80[0] = v75[0];
  v80[1] = v75[1];
  v80[2] = v75[2];
  v80[3] = v75[3];
  sub_100051DEC(v80);
  if (BYTE1(v80[0]) != 1)
  {
    v34 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v35 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_100009178((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v34);
    v36 = sub_100117524(v75);
    BYTE8(v76) = 0;
    (*(v35 + 8))(v75, v34, v35, v36);
    sub_1001F3874(v75);
    if (qword_100600058 != -1)
    {
      swift_once();
    }

    sub_100007084(v72, qword_100606000);
    v30 = sub_1004B8094();
    v31 = sub_1004BC984();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Device is offline. Age Verification cannot proceed. Displaying fallback alert instead.";
    goto LABEL_20;
  }

  if (qword_100600718 != -1)
  {
    swift_once();
  }

  v29 = v70;
  ExplicitRestrictionsController.accountVerificationURL.getter(v70);
  if ((*(v10 + 48))(v29, 1, v28) == 1)
  {
    sub_100007214(v29, &qword_100600DE0);
    if (qword_100600058 != -1)
    {
      swift_once();
    }

    sub_100007084(v72, qword_100606000);
    v30 = sub_1004B8094();
    v31 = sub_1004BC984();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "accountVerificationURL is missing. Age Verification cannot proceed.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_21:

    if (v74)
    {
      v74(0, 0);
    }

    return;
  }

  v37 = *(v10 + 32);
  v37(v14, v29, v28);
  v38 = qword_100600058;
  v66 = v5;
  if (a2)
  {
    v70 = v14;

    if (v38 != -1)
    {
      swift_once();
    }

    sub_100007084(v72, qword_100606000);
    v39 = sub_1004B8094();
    v40 = sub_1004BC964();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "modelObjectIdentifier parameters found for age verification context", v41, 2u);
    }

    sub_100003ABC(&unk_100606150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = 0x64496D616461;
    v43 = inited + 32;
    v44 = v69;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v44;
    *(inited + 56) = a2;
    v45 = sub_10003C464(inited);
    swift_setDeallocating();
    sub_100007214(v43, &qword_100602EA0);
    v46 = v68;
    v14 = v70;
    URL.parametrize(_:)(v45, v68);

    (*(v10 + 8))(v14, v28);
    v37(v14, v46, v28);
    v47 = v10;
  }

  else
  {
    if (qword_100600058 != -1)
    {
      swift_once();
    }

    sub_100007084(v72, qword_100606000);
    v48 = sub_1004B8094();
    v49 = sub_1004BC984();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "modelObjectIdentifier parameters missing for age verification context", v50, 2u);
    }

    v47 = v10;
  }

  v51 = [objc_allocWithZone(_s22AgeVerificationWrapperCMa()) init];
  v52 = swift_allocObject();
  v53 = v66;
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  v55 = v74;
  v56 = v71;
  *(v54 + 2) = v74;
  *(v54 + 3) = v56;
  *(v54 + 4) = v52;
  v57 = &v51[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v58 = *&v51[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  *v57 = sub_1001F3924;
  v57[1] = v54;
  sub_10002F518(v55);

  sub_10003CC4C(v58);

  v59 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v51;
  v60 = v51;

  v61 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v62 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_100009178((v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
  v63 = *(v62 + 16);
  v64 = v60;
  v63(v14, v64, v61, v62);

  (*(v47 + 8))(v14, v73);
}

void sub_1001F0304(void *a1, char a2, void (*a3)(void, void))
{
  if (a3)
  {
    a3(a2 & 1, 0);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
      v6 = Strong;
      v7 = v5;

      if (v5)
      {

        if (v5 == a1)
        {
          swift_beginAccess();
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            v9 = *&v8[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper];
            *&v8[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
          }
        }
      }
    }
  }
}

uint64_t PlaybackController.displayAgeVerification(modelObject:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1)
  {
    a1 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1001EF998(a1, v6, a2, a3);
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1004BC474();
  v2[5] = sub_1004BC464();
  v4 = sub_1004BC3E4();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_1001F04F4, v4, v3);
}

uint64_t sub_1001F04F4()
{
  v5 = v0[1];
  v1 = sub_1004BC464();
  v0[4].i64[0] = v1;
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v5, v5, 8uLL);
  v3 = swift_task_alloc();
  v0[5].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_1001F0608;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000100503390, sub_1001F3218, v2, &type metadata for () + 8);
}

uint64_t sub_1001F0608()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1001F0790;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1001F072C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001F072C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F0790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F0808(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100003ABC(&unk_100606140);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100009178(a3, a3[3]);
  v9 = sub_1004BAC74();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  sub_1001EF998(v9, v11, sub_1001F37E0, v13);
}

uint64_t sub_1001F0998(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100003ABC(&unk_100606140);
    return sub_1004BC3F4();
  }

  else
  {
    sub_100003ABC(&unk_100606140);
    return sub_1004BC404();
  }
}

id sub_1001F0AF8()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v2)
  {

    v2(0, 0);
    sub_10003CC4C(v2);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001F0C30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100009130(0, &qword_100603570);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F3658, v8);
}

uint64_t sub_1001F0CEC(uint64_t result)
{
  v1 = (result + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  v2 = *(result + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  if (v2)
  {
    v3 = result;
    v4 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    v5 = [objc_opt_self() defaultManager];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v4;
    v6[4] = v3;
    v9[4] = sub_1001F35EC;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000C81CC;
    v9[3] = &unk_1005B7C28;
    v7 = _Block_copy(v9);
    sub_10002F518(v2);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return sub_10003CC4C(v2);
  }

  return result;
}

uint64_t sub_1001F0F28()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, static Logger.playbackController);
  sub_100007084(v0, static Logger.playbackController);
  return sub_1004B80A4();
}

uint64_t sub_1001F1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_1001F1068, 0, 0);
}

uint64_t sub_1001F1068()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001F10D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  sub_100003ABC(&qword_1006014F0);
  v6[6] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0);
  v6[7] = swift_task_alloc();
  v7 = sub_1004B6B04();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001F121C, 0, 0);
}

uint64_t sub_1001F121C()
{
  v1 = [*(v0 + 16) action];
  v2 = [v1 type];

  if (v2 != 2 || (v3 = [*(v0 + 16) action], v4 = objc_msgSend(v3, "URLString"), v3, !v4))
  {
LABEL_5:
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    v11 = [objc_opt_self() activeAccount];
    v12 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v11];

    v13 = sub_1004BC4B4();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    sub_1000FDCB4(0, 0, v8, &unk_1004D30F0, v14);

    v16 = *(v0 + 24);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_1004BBE64();

  sub_1004B6AC4();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100007214(*(v0 + 56), &qword_100600DE0);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = sub_1004BC4B4();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  sub_1000FD9BC(0, 0, v23, &unk_1004D3100, v27);

  (*(v21 + 8))(v19, v22);
  v16 = *(v0 + 24);
  if (v16)
  {
LABEL_6:
    v16(*(v0 + 40));
  }

LABEL_7:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1001F15C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_1001F15E8, 0, 0);
}

uint64_t sub_1001F15E8()
{
  *(v0 + 160) = objc_opt_self();
  sub_1004BC474();
  *(v0 + 168) = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001F168C, v2, v1);
}

uint64_t sub_1001F168C()
{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_1001F1710, 0, 0);
}

uint64_t sub_1001F1710@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[22];
  sub_1004B6A44(a1);
  v4 = v3;
  v1[23] = v3;
  sub_10003D128(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1001F3C50(&qword_100600FD0, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_1004BBC24().super.isa;
  v1[24] = isa;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_1001F18D0;
  v6 = swift_continuation_init();
  v1[17] = sub_100003ABC(&qword_100606198);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001F1A28;
  v1[13] = &unk_1005B7F20;
  v1[14] = v6;
  [v2 openURL:v4 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1001F18D0()
{

  return _swift_task_switch(sub_1001F19B0, 0, 0);
}

uint64_t sub_1001F19B0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001F1A28(uint64_t a1, char a2)
{
  **(*(*sub_100009178((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_1001F1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(sub_1001F1AA8, 0, 0);
}

uint64_t sub_1001F1AA8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_1001F1BF4;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_100003ABC(&qword_1006061A0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001F1DF4;
  *(v0 + 104) = &unk_1005B7F48;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001F1BF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1001F1D70;
  }

  else
  {
    v2 = sub_1001F1D04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F1D04()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001F1D70()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  **(v0 + 144) = 2;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001F1DF4(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100009178((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003ABC(&qword_100604C30);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1001F1EC0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

void sub_1001F1F40(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  sub_1004B85B4();
  sub_1001FE038(v4);
}

unint64_t sub_1001F2034()
{
  result = qword_100606030;
  if (!qword_100606030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606030);
  }

  return result;
}

unint64_t sub_1001F2088()
{
  result = qword_100606038;
  if (!qword_100606038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606038);
  }

  return result;
}

uint64_t sub_1001F20DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001F2120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1001F2188(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_1001F21AC(a1);
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

void sub_1001F21AC(id a1)
{
  if (a1 >= 5)
  {
  }
}

id sub_1001F21BC(id result, char a2)
{
  if (a2 == 2)
  {
    return sub_1001F21E0(result);
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    return sub_1001F21E0(result);
  }
}

id sub_1001F21E0(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL sub_1001F21F0(void *a1, uint64_t a2)
{
  v7[3] = &type metadata for Player.ReplaceCommand;
  v7[4] = &protocol witness table for Player.ReplaceCommand;
  v7[0] = a1;
  v7[1] = a2;
  sub_100009178(v7, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  sub_1004B85A4();

  if (v6)
  {
    v4 = MPCPlayerResponse.canPerform(_:)(v7);
  }

  else
  {
    v4 = 0;
  }

  sub_100004C6C(v7);
  return v4;
}

BOOL sub_1001F230C(char a1)
{
  v4[3] = &type metadata for Player.PlaybackCommand;
  v4[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v4[0]) = a1;
  sub_100009178(v4, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v3)
  {
    v1 = MPCPlayerResponse.canPerform(_:)(v4);
  }

  else
  {
    v1 = 0;
  }

  sub_100004C6C(v4);
  return v1;
}

BOOL sub_1001F2420(void *a1, void *a2)
{
  v8[3] = &type metadata for Player.InsertCommand;
  v8[4] = &protocol witness table for Player.InsertCommand;
  v8[0] = a1;
  v8[1] = a2;
  sub_100009178(v8, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_10004AF8C(a2);
  sub_1004B85A4();

  if (v7)
  {
    v5 = MPCPlayerResponse.canPerform(_:)(v8);
  }

  else
  {
    v5 = 0;
  }

  sub_100004C6C(v8);
  return v5;
}

BOOL sub_1001F2550(void *a1)
{
  v5[3] = &type metadata for Player.ChangeCommand;
  v5[4] = &protocol witness table for Player.ChangeCommand;
  v5[0] = a1;
  sub_100009178(v5, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1001F4CB8(a1);
  sub_1004B85A4();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  sub_100004C6C(v5);
  return v2;
}

BOOL sub_1001F2670(uint64_t a1)
{
  v4[3] = &type metadata for Player.VocalsCommand;
  v4[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v4[0]) = a1;
  BYTE4(v4[0]) = BYTE4(a1);
  BYTE5(v4[0]) = BYTE5(a1) & 1;
  sub_100009178(v4, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v3)
  {
    v1 = MPCPlayerResponse.canPerform(_:)(v4);
  }

  else
  {
    v1 = 0;
  }

  sub_100004C6C(v4);
  return v1;
}

uint64_t sub_1001F2794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001F27F4(void *a1)
{
  v2 = v1;
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, static Logger.sharedListening);
  v5 = a1;
  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v27[0] = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_1004BBE64();
    v14 = v13;

    v15 = sub_100012018(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    sub_100004C6C(v9);
  }

  v16 = v5;
  sub_100275244(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    sub_100009178(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = sub_1004BBE64();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    sub_100007214(v25, &unk_100606230);
  }
}

uint64_t sub_1001F2A80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v7 = sub_1004B80B4();
  sub_100007084(v7, static Logger.sharedListening);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = a1;
    v23 = v11;
    *v10 = 136446210;
    swift_errorRetain();
    sub_100003ABC(&qword_100607010);
    v12 = sub_1004BBF04();
    v14 = sub_100012018(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Receiving didEndSharedListeningSessionWithError=%{public}s", v10, 0xCu);
    sub_100004C6C(v11);
  }

  v15 = sub_1004BC4B4();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_1004BC474();
  v16 = v2;
  v17 = sub_1004BC464();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  sub_1000FD6BC(0, 0, v6, &unk_1004D3158, v18);

  if (a1)
  {
    sub_100009130(0, &qword_100603570);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v21 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F45A8, v20);
  }

  return result;
}

void sub_1001F2D64(void *a1)
{
  v2 = v1;
  if (qword_100600050 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, static Logger.playbackController);
  swift_errorRetain();
  v5 = sub_1004B8094();
  v6 = sub_1004BC984();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v8;
    *v7 = 136446210;
    swift_errorRetain();
    sub_100003ABC(&qword_100607010);
    v9 = sub_1004BBF04();
    v11 = sub_100012018(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    sub_100004C6C(v8);
  }

  if (a1)
  {
    v12 = sub_1004B69A4();
    v13 = [v12 userInfo];
    v14 = sub_1004BBC44();

    v15 = sub_1004BBE64();
    if (*(v14 + 16))
    {
      v17 = sub_1000346D4(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_100004DE4(*(v14 + 56) + 32 * v17, v35);

        sub_100009130(0, &qword_100606218);
        if (swift_dynamicCast())
        {
          v20 = [v34 stateReasonDialog];
          if (!v20)
          {

            return;
          }

          v21 = v20;
          v22 = [v12 userInfo];
          v23 = sub_1004BBC44();

          v24 = sub_1004BBE64();
          if (*(v23 + 16))
          {
            v26 = sub_1000346D4(v24, v25);
            v28 = v27;

            if (v28)
            {
              sub_100004DE4(*(v23 + 56) + 32 * v26, v35);

              sub_100003ABC(&unk_100606220);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = sub_1000346D4(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                sub_100004DE4(v34[7] + 32 * v29, v35);
                sub_100003ABC(&unk_100603590);
                if (swift_dynamicCast())
                {
                  sub_100009130(0, &qword_100603570);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F441C, v31);

                  return;
                }

                goto LABEL_19;
              }

              goto LABEL_24;
            }
          }

          else
          {
          }

LABEL_24:
        }

LABEL_19:

        return;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }
}

uint64_t sub_1001F3220(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001F3244(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F3280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001F32D0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1001F3364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F33AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1001F3404(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001F341C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F3474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1001F34D4(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1001F34F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001F3538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001F357C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1001F35AC()
{

  return swift_deallocObject();
}

uint64_t sub_1001F35F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F3610()
{

  return swift_deallocObject();
}

uint64_t sub_1001F36AC()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3704()
{

  return swift_deallocObject();
}

uint64_t sub_1001F374C()
{
  v1 = sub_100003ABC(&unk_100606140);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001F37E0(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&unk_100606140);

  return sub_1001F0998(a1, a2);
}

uint64_t sub_1001F38A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001F38DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F3930()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3970(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001384C;

  return sub_1001EF4B0(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F3A30()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3A68(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_1001EF778(a1, a2, v7, v6);
}

uint64_t sub_1001F3B48()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F3BA0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EE258(a1, a2, v2 + 16, v6);
}

uint64_t sub_1001F3C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F3CD0()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F3D18(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10001384C;

  return sub_1001F10D4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1001F3DDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F3E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_1001F1A84(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001F3EF4()
{
  v1 = sub_1004B6B04();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1001F3FB8(uint64_t a1)
{
  v4 = *(sub_1004B6B04() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_1001F15C8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001F40D4()
{

  return swift_deallocObject();
}

uint64_t sub_1001F4144()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F418C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001384C;

  return sub_1001F1044(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F424C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1001F4298()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F4318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001EE4C0(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_1001F43CC()
{

  return swift_deallocObject();
}

uint64_t sub_1001F4428()
{

  return swift_deallocObject();
}

uint64_t sub_1001F447C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F44BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1001EB1B8(a1, v4, v5, v6);
}

uint64_t sub_1001F4570()
{

  return swift_deallocObject();
}

unint64_t sub_1001F45B8()
{
  result = qword_100606720;
  if (!qword_100606720)
  {
    sub_100003B68(&unk_100609050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606720);
  }

  return result;
}

uint64_t sub_1001F461C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F4664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_1001DA80C(a1, v4, v5, v7, v6);
}

unint64_t sub_1001F4724()
{
  result = qword_100606250;
  if (!qword_100606250)
  {
    sub_100009130(255, &qword_100606248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606250);
  }

  return result;
}

uint64_t sub_1001F47B4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EADC4(a1, a2, v6);
}

uint64_t sub_1001F4860(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EAFC8(a1, a2, v6);
}

uint64_t sub_1001F490C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EAF1C(a1, a2, v6);
}

uint64_t sub_1001F49B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EAE70(a1, a2, v6);
}

uint64_t sub_1001F4A64(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E7A04(a1, a2, v6);
}

uint64_t sub_1001F4B10(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E7AAC(a1, a2, v6);
}

uint64_t sub_1001F4BBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E7B54(a1, a2, v6);
}

uint64_t sub_1001F4C68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_1001F4CB8(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t sub_1001F4CD0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E8F58(a1, a2, v6);
}

uint64_t sub_1001F4D7C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E8EB8(a1, a2, v6);
}

uint64_t sub_1001F4E28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E8348(a1, a2, v6);
}

uint64_t sub_1001F4ED4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000136EC;

  return sub_1001E83E8(a1, a2, v6);
}

uint64_t sub_1001F4F80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001F5074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1001F7864(a1, a2, a3, a4);

  sub_10003F3E0(a1, a2, a3, a4);
}

uint64_t PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v44 = a7;
  v49 = a4;
  v50 = a11;
  v43 = sub_1004B8104();
  v48 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v45);
  v46 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v21 = a9 + v20[7];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = a9 + v20[8];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(a9 + v20[9]) = 0;
  *(a9 + v20[10]) = 0;
  *(a9 + v20[11]) = 0;
  v51 = a1;
  sub_1001F5074(a1, a9);
  if ((a6 & 1) == 0)
  {
    sub_1001F5F88(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    sub_1001F5F88(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  sub_10009EE9C(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  sub_10000F778(v24, &v52, &qword_100601C48);
  if (v53)
  {
    sub_100013414(&v52, v54);
  }

  else
  {
    if (a10)
    {
      v54[0] = a10;
      v25 = a10;
    }

    else
    {
      v54[0] = 0;
      sub_100003ABC(&qword_100602688);
    }

    v26 = sub_1004BBF34();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      sub_100007214(&v52, &qword_100601C48);
    }
  }

  sub_100047A5C(v54, v22, &qword_100601C48);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  sub_1004BBE64();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  sub_100004D7C(0, 0xF000000000000000);

  sub_10003F3CC(v29, v31);

  sub_100004D7C(v29, v31);
  v32 = a9;
  v33 = v46;
  sub_1001F5074(v32, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v33;

    v40 = sub_1004BBE24();

    [v39 setPlayActivityFeatureName:v40];

    if (v31 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_10003E428(v29, v31);
      isa = sub_1004B6B64().super.isa;
      sub_100004D7C(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    sub_100004D7C(v29, v31);
LABEL_22:
    sub_100007214(v24, &qword_100601C48);
    sub_100007214(v23, &qword_100606290);
    return sub_10003F494(v51);
  }

  v34 = v33;
  v35 = v43;
  (*(v48 + 32))(v47, v34, v43);
  v36 = sub_1004B80D4();

  v37 = sub_1004BBE24();

  [v36 setPlayActivityFeatureName:v37];

  if (v31 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    sub_10003E428(v29, v31);
    v38 = sub_1004B6B64().super.isa;
    sub_100004D7C(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  sub_100004D7C(v29, v31);
  sub_100007214(v24, &qword_100601C48);
  sub_100007214(v23, &qword_100606290);
  sub_10003F494(v51);
  return (*(v48 + 8))(v47, v35);
}

void PlaybackIntentDescriptor.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1004B8104();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v14);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001F5074(v5, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v16, v10);
    v17 = sub_1004B80D4();
    sub_1001F7864(a1, a2, a3, a4);
    sub_10003F3E0(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = *v16;
    sub_1001F7864(a1, a2, a3, a4);
    sub_10003F3E0(a1, a2, a3, a4);
  }
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO010underlyingD0So011MPCPlaybackD0Cvg_0()
{
  v1 = v0;
  v2 = sub_1004B8104();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F5074(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_1004B80D4();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100004D7C(0, 0xF000000000000000);

  sub_10003F3CC(a3, a4);

  sub_100004D7C(a3, a4);
  return a1;
}

uint64_t PlaybackIntentDescriptor.IntentType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v7 = a1;
    v11 = v5;
    swift_storeEnumTagMultiPayload();
    sub_1001F7980(v7, a2);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v9 = *(v5 + 56);

    return v9(a2, 1, 1, v4);
  }
}

{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B8104();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7) == 1)
  {
    sub_100007214(a1, &qword_100602698);
    v11 = *(v15 + 56);

    return v11(a2, 1, 1, v4);
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v10, a1, v7);
    v13(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1001F7980(v6, a2);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

id sub_1001F5DE4(SEL *a1)
{
  v3 = v1;
  v4 = sub_1004B8104();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001F5074(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v11 = sub_1004B80D4();
    v12 = [v11 *a1];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = *v10;
    v12 = [*v10 *a1];
  }

  return v12;
}

void sub_1001F5F88(uint64_t a1, char a2, SEL *a3)
{
  v5 = v3;
  v8 = sub_1004B8104();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v12);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (&v19 - v14);
  if (a2)
  {
    v16 = -1;
  }

  else
  {
    v16 = a1;
  }

  sub_1001F5074(v5, &v19 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v15, v8);
    v17 = sub_1004B80D4();
    [v17 *a3];

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v18 = *v15;
    [*v15 *a3];
  }
}

uint64_t PlaybackIntentDescriptor.intentOptions.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.replaceIntent.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.autoSing.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.isSiriIntent.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.playActivityInformation.getter()
{
  v1 = v0;
  v2 = sub_1004B8104();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001F5074(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_1004B80D4();
    v10 = MPCPlaybackIntent.playActivityInformation.getter();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = *v8;
    v10 = MPCPlaybackIntent.playActivityInformation.getter();
  }

  return v10;
}

uint64_t MPCPlaybackIntent.playActivityInformation.getter()
{
  v1 = [v0 playActivityFeatureName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1004BBE64();

  v4 = [v0 playActivityRecommendationData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1004B6B74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_100004D7C(0, 0xF000000000000000);

  sub_10003F3CC(v6, v8);

  sub_100004D7C(v6, v8);
  return v3;
}

void (*PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = sub_1004B8104();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[6] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[7] = v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[8] = v10;
  v11 = *(*(v10 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[9] = swift_coroFrameAlloc();
    v4[10] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[9] = malloc(v11);
    v4[10] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[11] = v12;
  sub_1001F5074(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v5);
    v14 = sub_1004B80D4();
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    (*(v7 + 8))(v9, v5);
  }

  else
  {
    v22 = *v13;
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  *v4 = v15;
  v4[1] = v17;
  v4[2] = v19;
  v4[3] = v21;
  return sub_1001F6A20;
}

void sub_1001F6A20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    sub_1001F5074(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      sub_10003F380(v4, v3, v6, v5);
      v13 = sub_1004B80D4();
      sub_1001F7864(v4, v3, v6, v5);
      sub_10003F3E0(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      sub_10003F380(v4, v3, v6, v5);
      sub_1001F7864(v4, v3, v6, v5);
      sub_10003F3E0(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    sub_10003F3E0(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    sub_1001F5074(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_1004B80D4();
      sub_1001F7864(v4, v3, v6, v5);
      sub_10003F3E0(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      sub_1001F7864(v4, v3, v6, v5);
      sub_10003F3E0(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
  }

  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t PlaybackIntentDescriptor.forceSharePlayPrompt.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.recommendationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100004D7C(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*MPCPlaybackIntent.playActivityInformation.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = MPCPlaybackIntent.playActivityInformation.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1001F6E18;
}

void sub_1001F6E18(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_10003F380(v3, v4, v5, v6);
    sub_1001F7864(v3, v4, v5, v6);
    sub_10003F3E0(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    sub_1001F7864(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  sub_10003F3E0(v7, v8, v9, v10);

  free(v2);
}

unint64_t PlaybackIntentDescriptor.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1004B8104();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = 0xD000000000000019;
  v26 = 0x8000000100503A40;
  strcpy(&v22, "intent=");
  v22._object = 0xE700000000000000;
  sub_1001F5074(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_1004B80D4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
  }

  v10 = [v9 description];
  v11 = sub_1004BBE64();
  v13 = v12;

  v27._countAndFlagsBits = v11;
  v27._object = v13;
  sub_1004BC024(v27);

  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  sub_1004BC024(v28);
  sub_1004BC024(v22);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1004BD404(16);

  strcpy(&v22, "shuffleMode=");
  BYTE5(v22._object) = 0;
  HIWORD(v22._object) = -5120;
  v20._countAndFlagsBits = sub_1001F5DE4(&selRef_shuffleMode);
  LOBYTE(v20._object) = 0;
  sub_100003ABC(&qword_100606300);
  v29._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v29);

  v30._countAndFlagsBits = 8236;
  v30._object = 0xE200000000000000;
  sub_1004BC024(v30);
  sub_1004BC024(v22);

  strcpy(&v22, "repeatMode=");
  HIDWORD(v22._object) = -352321536;
  v20._countAndFlagsBits = sub_1001F5DE4(&selRef_repeatMode);
  LOBYTE(v20._object) = 0;
  sub_100003ABC(&qword_100606308);
  v31._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v31);

  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  sub_1004BC024(v32);
  sub_1004BC024(v22);

  strcpy(&v22, "options=");
  BYTE1(v22._object) = 0;
  WORD1(v22._object) = 0;
  HIDWORD(v22._object) = -402653184;
  v14 = type metadata accessor for PlaybackIntentDescriptor(0);
  v20._countAndFlagsBits = *(v1 + v14[5]);
  type metadata accessor for MPCPlaybackIntentOptions(0);
  v33._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v33);

  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  sub_1004BC024(v34);
  sub_1004BC024(v22);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1004BD404(19);

  v22._countAndFlagsBits = 0x206563616C706572;
  v22._object = 0xEF3D746E65746E69;
  v20._countAndFlagsBits = *(v1 + v14[6]);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v35._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v35);

  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  sub_1004BC024(v36);
  sub_1004BC024(v22);

  v37._object = 0x8000000100503A60;
  v37._countAndFlagsBits = 0xD000000000000012;
  sub_1004BC024(v37);
  sub_10000F778(v1 + v14[7], &v20, &qword_100606290);
  if (v21)
  {
    sub_100013414(&v20._countAndFlagsBits, &v22);
    sub_10001342C(&v22, &v20);
    sub_100003ABC(&qword_100606298);
    v20._countAndFlagsBits = sub_1004BBF04();
    v20._object = v15;
    v38._countAndFlagsBits = 8236;
    v38._object = 0xE200000000000000;
    sub_1004BC024(v38);
    sub_1004BC024(v20);

    sub_100004C6C(&v22);
  }

  else
  {
    sub_100007214(&v20, &qword_100606290);
    v39._countAndFlagsBits = 0x202C656E6F6ELL;
    v39._object = 0xE600000000000000;
    sub_1004BC024(v39);
  }

  v40._countAndFlagsBits = 0x3D726575737369;
  v40._object = 0xE700000000000000;
  sub_1004BC024(v40);
  sub_10000F778(v1 + v14[8], &v20, &qword_100601C48);
  if (v21)
  {
    sub_100013414(&v20._countAndFlagsBits, &v22);
    v16 = v23;
    v17 = v24;
    sub_100009178(&v22, v23);
    v20._countAndFlagsBits = (*(v17 + 8))(v16, v17);
    v20._object = v18;
    v41._countAndFlagsBits = 8236;
    v41._object = 0xE200000000000000;
    sub_1004BC024(v41);
    sub_1004BC024(v20);

    sub_100004C6C(&v22);
  }

  else
  {
    sub_100007214(&v20, &qword_100601C48);
    v42._countAndFlagsBits = 0x6669636570736E75;
    v42._object = 0xEC0000003D646569;
    sub_1004BC024(v42);
  }

  v43._countAndFlagsBits = 41;
  v43._object = 0xE100000000000000;
  sub_1004BC024(v43);
  return v25;
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B8104();
  v31 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v30 - v14);
  v16 = sub_100003ABC(&qword_100606468);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v30 - v18;
  v20 = *(v17 + 56);
  sub_1001F5074(a1, &v30 - v18);
  sub_1001F5074(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001F5074(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v31;
      v22 = *(v31 + 32);
      v22(v9, v13, v4);
      v22(v7, &v19[v20], v4);
      sub_100009130(0, &qword_100604490);
      v23 = sub_1004B80D4();
      v24 = sub_1004B80D4();
      v25 = sub_1004BCFA4();

      v26 = *(v21 + 8);
      v26(v7, v4);
      v26(v9, v4);
LABEL_9:
      sub_10003F494(v19);
      return v25 & 1;
    }

    (*(v31 + 8))(v13, v4);
  }

  else
  {
    sub_1001F5074(v19, v15);
    v27 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *&v19[v20];
      sub_100009130(0, &qword_100604490);
      v25 = sub_1004BCFA4();

      goto LABEL_9;
    }
  }

  sub_100007214(v19, &qword_100606468);
  v25 = 0;
  return v25 & 1;
}

void sub_1001F7864(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = sub_1004BBE24();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      sub_10003E428(a3, a4);
      isa = sub_1004B6B64().super.isa;
      sub_100004D7C(a3, a4);
      v8 = isa;
      goto LABEL_6;
    }
  }

  else
  {
    [v4 setPlayActivityFeatureName:0];
  }

  v8 = 0;
LABEL_6:
  v10 = v8;
  [v4 setPlayActivityRecommendationData:?];
}

uint64_t sub_1001F7980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F79F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001F7AD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_1001F7B94()
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntentOptions(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MPCPlayerTracklistReplaceIntent(319);
      if (v2 <= 0x3F)
      {
        sub_100029AC4(319, &unk_100606378, &qword_100606298);
        if (v3 <= 0x3F)
        {
          sub_100029AC4(319, &qword_100601DA0, &unk_100601DA8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1001F7C9C()
{
  result = sub_100009130(319, &qword_100605EC8);
  if (v1 <= 0x3F)
  {
    result = sub_1004B8104();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F7D20(uint64_t a1)
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

uint64_t sub_1001F7D3C(uint64_t a1)
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

uint64_t PlaybackTimeObserver.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PlaybackTimeObserver.init(name:)(a1, a2);
  return v4;
}

uint64_t PlaybackTimeObserver.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = xmmword_1004C50E0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100009130(0, &qword_100606478);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(sub_1001F7F68, v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_1001F7F30()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F7F68()
{
  swift_unownedRetainStrong();
  sub_1001F7FA8();
}

void sub_1001F7FA8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (qword_100600068 != -1)
    {
      swift_once();
    }

    v3 = sub_1004B80B4();
    sub_100007084(v3, qword_100617630);

    v4 = sub_1004B8094();
    v5 = sub_1004BC9A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100012018(*(v1 + 16), *(v1 + 24), v26);
      sub_100004C6C(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v26[0] = v1;
      sub_1001F8ED0();
      sub_1004B70F4();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (qword_100600068 != -1)
    {
      swift_once();
    }

    v9 = sub_1004B80B4();
    sub_100007084(v9, qword_100617630);

    v10 = sub_1004B8094();
    v11 = sub_1004BC9A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100012018(*(v1 + 16), *(v1 + 24), v26);
      sub_100004C6C(v13);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  if (v14 <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    sub_1004B6B94();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  sub_1001F8F74(*&v20, 0);
  sub_1004B6B94();
  v23 = v22;
  swift_beginAccess();
  v24 = vabdd_f64(v23, *(v0 + 152));
  v25 = fabsf(v15);
  if (v25 <= 1.0)
  {
    v25 = 1.0;
  }

  if (v24 >= (1.0 / v25))
  {
    *(v0 + 152) = v23;
  }
}

uint64_t PlaybackTimeObserver.deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_1004B7144();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackTimeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_1004B7144();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_1001F8564()
{
  if (qword_100600068 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, qword_100617630);

  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_100012018(*(v0 + 16), *(v0 + 24), v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "📺 %{public}s: Updating DisplayLink…", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v0 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "   — isBackgrounded: %{BOOL,public}d", v8, 8u);
  }

  else
  {
  }

  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 32);

    _os_log_impl(&_mh_execute_header, v9, v10, "   — automaticallyUpdates: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v0 + 32) != 1 || (*(v0 + 120) & 1) != 0 || (swift_beginAccess(), v12 = *(v0 + 104), v12 == 2))
  {
    v13 = sub_1004B8094();
    v14 = sub_1004BC9A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "   — Null Snapshot", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 56);
    v26 = sub_1004B8094();
    v27 = sub_1004BC9A4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v42[1] = v40;
      v42[0] = v41;
      v43 = v25;
      v44 = v24;
      v45 = v12 & 0x101;
      v46 = BYTE2(v12) & 1;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v30 = sub_1004BBF04();
      v32 = sub_100012018(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "   — Snapshot: %{public}s", v28, 0xCu);
      sub_100004C6C(v29);
    }

    v33 = v24 & 0x7FFFFFFF;
    v34 = sub_1004B8094();
    v35 = sub_1004BC9A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      *(v36 + 4) = v12 & 1;
      _os_log_impl(&_mh_execute_header, v34, v35, "   — isLiveContent: %{BOOL,public}d", v36, 8u);
    }

    v37 = sub_1004B8094();
    v38 = sub_1004BC9A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67240192;
      *(v39 + 4) = v33 == 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "   — isRateNull: %{BOOL,public}d", v39, 8u);
    }

    v16 = v12 | (v33 == 0);
  }

  v17 = sub_1004B8094();
  v18 = sub_1004BC9A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, " -> should pause: %{BOOL,public}d", v19, 8u);
  }

  v20 = *(v0 + 128);
  if (v20)
  {
    [v20 setPaused:v16 & 1];
  }

  swift_beginAccess();
  if (!*(v0 + 112))
  {
    v21 = sub_1004B8094();
    v22 = sub_1004BC984();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v23, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v4 != v3)
  {
    sub_1001F8564();
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_1001F8D1C;
}

void sub_1001F8D1C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  if (v3 != v4)
  {
    sub_1001F8564();
  }

  free(v1);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  sub_1001F8ED0();
  sub_1004B7104();

  return *(v0 + 40);
}

uint64_t sub_1001F8DE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F8ED0();
  sub_1004B7104();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_1001F8ED0()
{
  result = qword_100606480;
  if (!qword_100606480)
  {
    type metadata accessor for PlaybackTimeObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606480);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver()
{
  result = qword_1006064B0;
  if (!qword_1006064B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001F8F74(uint64_t result, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&result;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001F8ED0();
  sub_1004B70F4();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_1001F907C()
{
  v1 = v0;
  if (qword_100600068 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  sub_100007084(v2, qword_100617630);

  v3 = sub_1004B8094();
  v4 = sub_1004BC9A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    sub_100003ABC(&qword_100606590);
    v7 = sub_1004BBF04();
    v9 = sub_100012018(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    sub_100004C6C(v6);
  }

  sub_1004B6B94();
  v11 = v10;
  swift_beginAccess();
  *(v1 + 152) = v11;
  sub_1001F7FA8();
  sub_1001F8564();
}

__n128 PlaybackTimeObserver.durationSnapshot.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void PlaybackTimeObserver.durationSnapshot.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  sub_1001F907C();
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001F935C;
}

void sub_1001F935C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1001F907C();
  }
}

void sub_1001F9390(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    sub_100009130(0, &qword_100606588);
    v5 = v4;
    a1 = a1;
    v6 = sub_1004BCFA4();

    if (v6)
    {
      return;
    }

    v4 = *(v2 + 112);
    if (!v4)
    {
LABEL_13:
      v26 = qword_100600068;
      v27 = a1;
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = sub_1004B80B4();
      sub_100007084(v28, qword_100617630);
      v29 = v27;

      v30 = sub_1004B8094();
      v31 = sub_1004BC9A4();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_100012018(*(v2 + 16), *(v2 + 24), &v40);
        *(v32 + 12) = 2082;
        v33 = v29;
        v34 = [v33 description];
        v35 = sub_1004BBE64();
        v37 = v36;

        v38 = sub_100012018(v35, v37, &v40);

        *(v32 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: Removed windowScene=%{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v39 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v39 == 1)
      {
        sub_1001F8564();
      }

      *(v2 + 136) = 0;

      v25 = 0;
      goto LABEL_21;
    }
  }

  v7 = qword_100600068;
  v8 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1004B80B4();
  sub_100007084(v9, qword_100617630);
  v10 = v8;

  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_100012018(*(v2 + 16), *(v2 + 24), &v40);
    *(v13 + 12) = 2082;
    v14 = v10;
    v15 = [v14 description];
    v16 = sub_1004BBE64();
    v18 = v17;

    v19 = sub_100012018(v16, v18, &v40);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: Received windowScene=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = [v10 activationState] == 2;
  v21 = *(v2 + 120);
  *(v2 + 120) = v20;
  if (v20 != v21)
  {
    sub_1001F8564();
  }

  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v23 = v10;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v4, 1, 1, sub_1001F9D58, v22);

  v24 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v25 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v4, 1, 1, sub_1001F9D60, v24);
LABEL_21:
  *(v2 + 144) = v25;
}

uint64_t sub_1001F98E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 1;
    if ((v1 & 1) == 0)
    {
      sub_1001F8564();
    }
  }

  return result;
}

uint64_t sub_1001F9950()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 0;
    if (v1 == 1)
    {
      sub_1001F8564();
    }
  }

  return result;
}

void *PlaybackTimeObserver.windowScene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void PlaybackTimeObserver.windowScene.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;
  sub_1001F9390(v3);
}

void (*PlaybackTimeObserver.windowScene.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_1001F9AF4;
}

void sub_1001F9AF4(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    sub_1001F9390(v7);

    v7 = *v5;
  }

  else
  {
    sub_1001F9390(v7);
  }

  free(v3);
}

uint64_t sub_1001F9BCC()
{
  result = sub_1004B7144();
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

uint64_t sub_1001F9CA4()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100617630);
  sub_100007084(v0, qword_100617630);
  return sub_1004B80A4();
}

uint64_t sub_1001F9D20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1001F9D68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_100003ABC(&qword_100602688);
  }

  return sub_1004BBF34();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = sub_1004B6A04();
  v3 = sub_1004B6B04();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    sub_100003ABC(&qword_100602688);
  }

  return sub_1004BBF34();
}

uint64_t Player.CommandIssuerIdentity.init(_:)()
{
  sub_100003ABC(&qword_100606598);
  sub_1001F9FB0();
  v0 = sub_1004BBD34();

  return v0;
}

uint64_t sub_1001F9F58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100009178(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_1001F9FB0()
{
  result = qword_1006065A0;
  if (!qword_1006065A0)
  {
    sub_100003B68(&qword_100606598);
    sub_1001FA034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006065A0);
  }

  return result;
}

unint64_t sub_1001FA034()
{
  result = qword_1006065A8;
  if (!qword_1006065A8)
  {
    sub_100003B68(&qword_1006065B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006065A8);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003ABC(&qword_1006065B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C50C0;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_10001342C(a1, v6 + 72);

  sub_100003ABC(&qword_100606598);
  sub_1001F9FB0();
  v7 = sub_1004BBD34();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003ABC(&qword_1006065B8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C50C0;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  v8 = sub_1000133B0((v7 + 32));
  (*(*(a2 - 8) + 16))(v8, v3, a2);
  sub_10001342C(a1, v7 + 72);
  sub_100003ABC(&qword_100606598);
  sub_1001F9FB0();
  v9 = sub_1004BBD34();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1)
{
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_1004B6A04();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t static Player.CommandIssuer<>.combining(_:)()
{

  sub_100003ABC(&qword_100606598);
  sub_1001F9FB0();
  v0 = sub_1004BBD34();

  return v0;
}

uint64_t Player.CommandIssuer<>.commandIssuingIdentifier.getter()
{
  sub_1004BC244();
  return v1;
}

{
  sub_1004BD424();
  return v1;
}

unint64_t sub_1001FA4BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1004BD404(29);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_1004BC024(v9);
  v10._countAndFlagsBits = 0x3A656C746974202CLL;
  v10._object = 0xE800000000000000;
  sub_1004BC024(v10);
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  sub_1004BC024(v11);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_1004BC024(v12);
  return 0xD000000000000010;
}

unint64_t sub_1001FA588(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_1004BD404(29);

  v24 = 0xD000000000000010;
  v25 = 0x8000000100503BB0;
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  sub_1004BC024(v26);
  v27._countAndFlagsBits = 0x3A656C746974202CLL;
  v27._object = 0xE800000000000000;
  sub_1004BC024(v27);
  v28._countAndFlagsBits = a3;
  v28._object = a4;
  sub_1004BC024(v28);
  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_1004BC024(v29);
  v13 = 0xD000000000000010;
  if (a7[7])
  {
    v22 = a5;
    v14 = a7[2];
    v15 = a7[3];
    v17 = *a7;
    v16 = a7[1];
    sub_1004BD404(26);

    strcpy(&v23, "Alert(title:");
    BYTE5(v23._object) = 0;
    HIWORD(v23._object) = -5120;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v30._countAndFlagsBits = v17;
    v30._object = v18;
    sub_1004BC024(v30);

    v31._countAndFlagsBits = 0x67617373656D202CLL;
    v31._object = 0xEA00000000003A65;
    sub_1004BC024(v31);
    if (v15)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v32._countAndFlagsBits = v19;
    v32._object = v20;
    sub_1004BC024(v32);

    sub_1004BC024(v23);

    sub_10003CC4C(v22);

    sub_1001FA7C4(a7);
    return v24;
  }

  else
  {

    sub_10003CC4C(a5);
  }

  return v13;
}

uint64_t sub_1001FA7C4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100602B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001FA854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000F778(a3, v22 - v9, &qword_1006014F0);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_1006014F0);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1004BBF54() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007214(a3, &qword_1006014F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007214(a3, &qword_1006014F0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001FAB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000F778(a3, v22 - v9, &qword_1006014F0);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_1006014F0);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;

      sub_100003ABC(&qword_100606FB8);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007214(a3, &qword_1006014F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007214(a3, &qword_1006014F0);
  sub_100003ABC(&qword_100606FB8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001FADBC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1004BD604();

    if (v3)
    {
      sub_100003ABC(&qword_100606F38);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1000348F4(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t))
{
  v3 = sub_1004BCA94();
  type metadata accessor for MusicItemState();

  v4 = sub_100212AA8(a1, v3, v1);

  return v4;
}

uint64_t sub_1001FAF34()
{
  sub_1004BA8F4();
  sub_100213E2C(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00);
  sub_1000206D4(&qword_100606F50, &unk_100604C00);
  return sub_1004BD2D4();
}

uint64_t sub_1001FB020()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100617648);
  sub_100007084(v0, qword_100617648);
  return sub_1004B80A4();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = sub_1004BBE64();

  sub_1001D4A40(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = 0;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*Player.sampleReceiver.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = Player.sampleReceiver.getter();
  return sub_1001FB218;
}

uint64_t Player.__allocating_init()()
{
  v0 = swift_allocObject();
  Player.init()();
  return v0;
}

char *Player.init()()
{
  v1 = v0;
  v104 = *v0;
  v2 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v2 - 8);
  v115 = &v91 - v3;
  v4 = sub_100003ABC(&qword_1006026C0);
  __chkstk_darwin(v4 - 8);
  v114 = &v91 - v5;
  v6 = sub_100003ABC(&qword_1006065D0);
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v91 - v7;
  v8 = sub_100003ABC(&qword_1006065D8);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin(v8);
  v108 = &v91 - v9;
  v10 = sub_100003ABC(&unk_1006065E0);
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v109 = &v91 - v11;
  v12 = sub_100003ABC(&qword_1006051A8);
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v91 - v13;
  v98 = sub_100003ABC(&qword_1006065F0);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v91 - v14;
  v95 = sub_100003ABC(&unk_1006065F8);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v16 = &v91 - v15;
  v99 = sub_100003ABC(&qword_100606240);
  v17 = *(v99 - 8);
  __chkstk_darwin(v99);
  v19 = &v91 - v18;
  v20 = sub_100003ABC(&qword_100606608);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v91 - v22;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v103 = objc_opt_self();
  v24 = [v103 systemRoute];
  v25 = [v24 isDeviceRoute];
  v26 = objc_opt_self();
  v27 = v26;
  if (v25)
  {
    if (qword_100600040 != -1)
    {
      swift_once();
    }

    v28 = sub_1004BBE24();
    v29 = [v27 systemMusicPathWithRoute:v24 playerID:v28];
  }

  else
  {
    v29 = [v26 pathWithRoute:v24 bundleID:0 playerID:0];
  }

  v30 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v29;
  sub_100009130(0, &qword_100601B28);
  sub_1004B8564();
  (*(v21 + 32))(&v1[v30], v23, v20);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v31 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v32 = v19;
  v93 = sub_100003ABC(&qword_100606630);
  sub_1004B8564();
  v33 = *(v17 + 32);
  v34 = v99;
  v92 = v33;
  v33(&v1[v31], v19, v99);
  v35 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  sub_100003ABC(&qword_100606640);
  sub_1004B8564();
  (*(v94 + 32))(&v1[v35], v16, v95);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  sub_100003ABC(&qword_100606650);
  v37 = v96;
  sub_1004B8564();
  (*(v97 + 32))(&v1[v36], v37, v98);
  v38 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v39 = v100;
  sub_1004B8564();
  v40 = v102;
  v41 = *(v101 + 32);
  v41(&v1[v38], v39, v102);
  v42 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  sub_1004B8564();
  v41(&v1[v42], v39, v40);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v43 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (qword_100600078 != -1)
  {
    swift_once();
  }

  v44 = qword_1006065C0;
  *v43 = qword_1006065C0;
  *(v43 + 1) = v44;
  *(v43 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v45 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v46 = v44;
  sub_1004B8564();
  v92(&v1[v45], v32, v34);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v47 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v47] = sub_10003DCE4(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v48 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v48] = UnfairLock.init()();
  if (qword_100600040 != -1)
  {
    swift_once();
  }

  v49 = qword_1006175E0;
  v50 = unk_1006175E8;
  v51 = objc_allocWithZone(MPCPlaybackEngine);
  v52 = sub_1004BBE24();
  v53 = [v51 initWithPlayerID:v52];

  v54 = v53;
  sub_1001D4B28(v49, v50);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v54;
  [v54 becomeActive];
  v55 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v56 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v57 = sub_1001D4A40(v56);
  LOBYTE(v56) = sub_1000FF478(4u, v57);

  if (v56)
  {
    v58 = *&v1[v55];
    v120 = sub_1001FC4FC;
    v121 = 0;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_1001FC6A4;
    v119 = &unk_1005B8688;
    v59 = _Block_copy(&aBlock);
    v60 = v58;
    [v60 restoreStateWithCompletion:v59];
    _Block_release(v59);
  }

  v61 = v103;
  v62 = [v103 systemRoute];
  v63 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v62 outputDeviceRoute:0];
  v64 = [objc_opt_self() sharedController];
  [v64 setActiveDataSource:v63];

  v65 = swift_allocObject();
  v66 = v104;
  *(v65 + 16) = v1;
  *(v65 + 24) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_100212B40;
  *(v67 + 24) = v65;
  v120 = sub_100212B80;
  v121 = v67;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_100207FC0;
  v119 = &unk_1005B8610;
  v68 = _Block_copy(&aBlock);

  [v61 getActiveRouteWithTimeout:v68 completion:1.0];

  _Block_release(v68);
  v69 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v70 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, sub_100215AE4, v70);

  v71 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v71, 0, 1, 1, sub_100212BA0, v72);

  v73 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = v73;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v75, 0, 1, 1, sub_100212BD8, v74);

  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100003ABC(&qword_1006066D0);
  v76 = v105;
  sub_1004B8574();
  swift_endAccess();
  sub_1000206D4(&unk_1006066D8, &qword_1006065D0);
  v77 = v107;
  v78 = v108;
  sub_1004B85F4();
  (*(v106 + 8))(v76, v77);
  sub_100009130(0, &qword_100603570);
  v79 = sub_1004BCB44();
  aBlock = v79;
  v80 = sub_1004BCB24();
  v81 = v114;
  (*(*(v80 - 8) + 56))(v114, 1, 1, v80);
  sub_1000206D4(&qword_1006066E8, &qword_1006065D8);
  sub_100212C10();
  v82 = v109;
  v83 = v111;
  sub_1004B8614();
  sub_100007214(v81, &qword_1006026C0);

  (*(v110 + 8))(v78, v83);
  sub_1000206D4(&qword_1006066F8, &unk_1006065E0);
  v84 = v113;
  v85 = sub_1004B8644();
  (*(v112 + 8))(v82, v84);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v85;

  v86 = v115;
  sub_1004BC484();
  v87 = sub_1004BC4B4();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  sub_1004BC474();

  v88 = sub_1004BC464();
  v89 = swift_allocObject();
  v89[2] = v88;
  v89[3] = &protocol witness table for MainActor;
  v89[4] = v1;
  sub_10001F35C(0, 0, v86, &unk_1004D3798, v89);

  sub_100007214(v86, &qword_1006014F0);
  return v1;
}

void sub_1001FC4FC(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_100600070 != -1)
    {
      swift_once();
    }

    v1 = sub_1004B80B4();
    sub_100007084(v1, qword_100617648);
    swift_errorRetain();
    oslog = sub_1004B8094();
    v2 = sub_1004BC984();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136446210;
      swift_errorRetain();
      sub_100003ABC(&qword_100607010);
      v5 = sub_1004BBF04();
      v7 = sub_100012018(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Restoration Failed with error=%{public}s", v3, 0xCu);
      sub_100004C6C(v4);
    }

    else
    {
    }
  }
}

void sub_1001FC6A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001FC71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FC7B4, v6, v5);
}

uint64_t sub_1001FC7B4()
{

  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.sharePlayTogether);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_10020C2AC();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001FC8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1004BC4B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_1004BC474();
  v10 = sub_1004BC464();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = Strong;
  sub_1000FD6BC(0, 0, v7, a4, v11);
}

uint64_t sub_1001FCA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FCAB4, v6, v5);
}

uint64_t sub_1001FCAB4()
{

  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.sharePlayTogether);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_10020C2AC();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001FCBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;
}

void sub_1001FCC2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t sub_1001FCCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1004BC474();
  v4[4] = sub_1004BC464();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1001FCD84;

  return Player.startEngineIfNeeded()();
}

uint64_t sub_1001FCD84()
{

  v1 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FCEC0, v1, v0);
}

uint64_t sub_1001FCEC0()
{

  sub_10020C2AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = sub_1004BC474();
  v1[18] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_1001FCFC4, v3, v2);
}

uint64_t sub_1001FCFC4()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      sub_100208850(0);
    }

    v3 = sub_1004BC464();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(sub_1001FD0E0, v4, v6);
  }
}

uint64_t sub_1001FD0E0()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_1001FD260;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1000183B0(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000183B0((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = sub_100212D30;
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FD260()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_1001FD368, v2, v1);
}

uint64_t sub_1001FD368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.engineDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:a1];
  return swift_unknownObjectRelease();
}

id (*Player.engineDelegate.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001FD4D4;
}

id sub_1001FD4D4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC9MusicCore6Player_engine);
    v7 = *(v5 + 24);

    return [v6 setDelegate:v7];
  }

  return result;
}

uint64_t sub_1001FD538@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1001FD5B8(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  sub_1004B85B4();
  return sub_1001FD634();
}

uint64_t sub_1001FD634()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_100208FDC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v6 = v19;
  v7 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v8 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v19;
  sub_100009130(0, &qword_100601B28);
  v9 = v6;
  if ((sub_1004BCFA4() & 1) == 0)
  {
    v10 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v11 = [v10 request];
    if (v11)
    {
      v12 = *&v5[v7];
      v13 = v11;
      [v11 setPlayerPath:v12];
    }

    [v10 setNeedsReloadForSignificantRequestChange];
  }

  v14 = sub_1004BC4B4();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1004BC474();

  v15 = sub_1004BC464();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v1;
  sub_1000FD6BC(0, 0, v4, &unk_1004D4000, v16);
}

uint64_t sub_1001FD858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FD8F0, v6, v5);
}

uint64_t sub_1001FD8F0()
{

  sub_10020C2AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_1001FD9C8(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_100606F78);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&qword_100606608);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t Player.nowPlayingObserver.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Player.NowPlayingObserver(0);
    swift_allocObject();

    v2 = sub_100212D60();

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t Player.NowPlayingObserver.__allocating_init(player:)()
{
  swift_allocObject();
  v0 = sub_100212D60();

  return v0;
}

uint64_t sub_1001FDC58(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_100609050);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&qword_100606240);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1001FDE0C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1004B85B4();
}

uint64_t sub_1001FDE98(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100606F70);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&unk_1006065F8);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1001FE038(void *a1)
{
  v2 = v1;
  v4 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (!a1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  sub_1004B85A4();

  v8 = v17;
  if (v17)
  {
    type metadata accessor for SharePlayTogetherSession(0);
    v9 = sub_1004BCFA4();

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = sub_1004BC4B4();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1004BC474();
  v11 = v7;

  v12 = sub_1004BC464();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v2;
  v13[5] = v11;
  sub_1000FD6BC(0, 0, v6, &unk_1004D3F48, v13);

LABEL_7:

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v17)
  {
    v14 = v17[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost];
  }

  else
  {
    v14 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17) = v14;

  return sub_1004B85B4();
}

uint64_t sub_1001FE2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1004BC474();
  v5[10] = sub_1004BC464();
  v7 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FE344, v7, v6);
}

uint64_t sub_1001FE344()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v1 = v0[2];
  if (v1)
  {
    if (SharePlayTogetherSession.isEquivalent(to:)(v0[2]))
    {
      v2 = v0[9];
      v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
      swift_beginAccess();
      *(v2 + v3) = _swiftEmptyArrayStorage;

      v4 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
      swift_beginAccess();
      *(v2 + v4) = _swiftEmptyArrayStorage;

      goto LABEL_6;
    }
  }

  SharePlayTogetherSession.cleanup(notifyObservers:)(1);
LABEL_6:
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001FE494(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100606F68);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&qword_1006065F0);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1001FE670(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100605D10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1001FE824@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1001FE8B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t sub_1001FE938()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_1001FE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_100003ABC(a5);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t sub_1001FEA20(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100605D10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

id Player.supportsDelegation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v0 = [v8 route];

  if (!v0)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_12;
  }

  result = [v1 endpointObject];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result externalDevice];

  if (!v4 || (v5 = [v4 deviceInfo], v4, !v5))
  {
LABEL_12:

    return 0;
  }

  v6 = [v5 deviceClass];

  return (v6 == 7 || v6 == 4);
}

uint64_t Player.isInAnySharePlaySession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (!v2 || (v0 = [v2 isSharedListeningSession], v2, (v0 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    if (!v2)
    {
      return 0;
    }

    result = *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ([result isPlaceholder])
    {

      return 0;
    }

    if (v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      return v2 > 0;
    }
  }

  return 1;
}

void Player.sharePlayTogether(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
  *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken) = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v13[4] = sub_1002132F8;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001FF0C8;
  v13[3] = &unk_1005B8700;
  v11 = _Block_copy(v13);
  v12 = v8;
  sub_10002F518(a2);

  MRGroupSessionJoinSessionWithToken();
  _Block_release(v11);
}

uint64_t sub_1001FEFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken;
    v12 = *(result + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
    if (v12)
    {
      sub_100009130(0, &qword_100606FE8);
      v13 = a5;
      v14 = v12;
      v15 = sub_1004BCFA4();

      if (v15)
      {
        v16 = *(v10 + v11);
        *(v10 + v11) = 0;

        if (a6)
        {
          a6(a3);
        }
      }
    }
  }

  return result;
}

void sub_1001FF0C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1004BBE64();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v4 = [v12[0] route];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 endpointObject];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      sub_100009130(0, &qword_100603570);
      v8 = sub_1004BCB44();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a1;
      v10[4] = a2;
      v12[4] = sub_10021334C;
      v12[5] = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_1001FF620;
      v12[3] = &unk_1005B8750;
      v11 = _Block_copy(v12);
      sub_10002F518(a1);

      [v7 requestGroupSessionWithQueue:v8 completion:v11];
      _Block_release(v11);

      v4 = v8;
    }
  }
}

uint64_t sub_1001FF35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_1004BC4B4();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_1004BC474();

    sub_10002F518(a5);

    swift_errorRetain();
    v17 = sub_1004BC464();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v18[9] = a3;
    sub_1000FD6BC(0, 0, v13, &unk_1004D3FE0, v18);
  }

  return result;
}

uint64_t sub_1001FF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1004BC474();
  v8[8] = sub_1004BC464();
  v10 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FF5A0, v10, v9);
}

uint64_t sub_1001FF5A0()
{
  v1 = v0[3];

  sub_10020C2AC();
  if (v1)
  {
    (v0[3])(v0[5], v0[6], v0[7]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001FF620(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1004BBE64();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t Player.getNowPlaying()()
{
  v1[17] = v0;
  v1[18] = sub_1004BC474();
  v1[19] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_1001FF754, v3, v2);
}

uint64_t sub_1001FF754()
{
  v1 = sub_10020AB30();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
  *(v0 + 176) = v2;
  v3 = v2;

  v4 = sub_1004BC464();
  *(v0 + 184) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1004BC3E4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_1001FF80C, v5, v7);
}

uint64_t sub_1001FF80C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1001FF968;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_100213358;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000E26FC;
  v1[13] = &unk_1005B87A0;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_1001FF968()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[20];
    v4 = v1[21];
    v5 = sub_1001FFCC0;
  }

  else
  {

    v1[25] = v1[16];
    v3 = v1[20];
    v4 = v1[21];
    v5 = sub_1001FFAB8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001FFAB8()
{
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = [v2 playerPath];
    v4 = [v3 isSystemMusicPath];

    if (v4 || (v5 = [v2 playerPath], v6 = objc_msgSend(v5, "representedBundleID"), v5, !v6))
    {
      v7 = *(v0 + 200);
    }

    else
    {

      v7 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v7;

    sub_1004B85B4();
    v8 = [v2 playerPath];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;

    sub_1004B85B4();
    v8 = 0;
  }

  v9 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v8;
  v10 = v8;

  sub_1004B85B4();

  v11 = *(v0 + 8);
  v12 = *(v0 + 200);

  return v11(v12);
}

uint64_t sub_1001FFCC0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001FFD2C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_100003ABC(&qword_100604C30);
    swift_allocError();
    *v4 = a2;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;
    v6 = a1;

    return swift_continuation_throwingResume();
  }
}