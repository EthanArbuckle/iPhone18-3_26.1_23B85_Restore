uint64_t sub_10043F820()
{
  v0 = sub_1001F1160(&unk_100AD9108);
  sub_100009A38(v0, qword_100AE3890);
  sub_100008B98(v0, qword_100AE3890);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_100798F14();
}

uint64_t sub_10043F8D0()
{
  v1[14] = v0;
  v1[15] = *v0;
  sub_1001F1160(&qword_100AD67D0);
  v1[16] = swift_task_alloc();
  v2 = sub_1001F1160(&qword_100AE39D0);
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = sub_1001F1160(&unk_100AD9108);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v4 = sub_100796DA4();
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  sub_1001F1160(&qword_100AE39D8);
  v1[26] = swift_task_alloc();
  sub_1001F1160(&unk_100ADB5C0);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v5 = sub_100796BB4();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  sub_1001F1160(&qword_100AE39E0);
  v1[35] = swift_task_alloc();
  v6 = type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
  v1[36] = v6;
  v1[37] = *(v6 - 8);
  v1[38] = swift_task_alloc();
  sub_1001F1160(&qword_100AD6948);
  v1[39] = swift_task_alloc();
  v7 = type metadata accessor for YearInReview.RemoteConfiguration(0);
  v1[40] = v7;
  v1[41] = *(v7 - 8);
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_10043FCE4, 0, 0);
}

uint64_t sub_10043FCE4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 112);
  v5 = OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_config;
  swift_beginAccess();
  sub_1000077D8(v4 + v5, v3, &qword_100AD6948);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 312);
    v7 = &qword_100AD6948;
LABEL_5:
    sub_100007840(v6, v7);
    if (qword_100AD1608 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);
    v17 = sub_100008B98(v16, qword_100AE3848);
    (*(v15 + 16))(v14, v17, v16);
    sub_100798EE4();
    (*(v15 + 8))(v14, v16);
    if ((*(v0 + 73) & 1) == 0)
    {
      v19 = *(v0 + 120);
      v18 = *(v0 + 128);
      v20 = *(v0 + 112);
      sub_1007A2714();
      v21 = sub_1007A2744();
      (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v20;
      v22[5] = v19;

      sub_1005E3DA4(0, 0, v18, &unk_100825F60, v22);

      sub_100007840(v18, &qword_100AD67D0);
    }

    v91 = 0;
    goto LABEL_10;
  }

  v8 = *(v0 + 336);
  v9 = *(v0 + 320);
  v10 = *(v0 + 288);
  v11 = *(v0 + 296);
  v12 = *(v0 + 280);
  sub_100443804(*(v0 + 312), v8, type metadata accessor for YearInReview.RemoteConfiguration);
  sub_1000077D8(v8 + *(v9 + 20), v12, &qword_100AE39E0);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v13 = *(v0 + 280);
    sub_1004438C0(*(v0 + 336), type metadata accessor for YearInReview.RemoteConfiguration);
    v7 = &qword_100AE39E0;
    v6 = v13;
    goto LABEL_5;
  }

  v26 = (v0 + 224);
  v25 = *(v0 + 224);
  v27 = *(v0 + 304);
  v28 = *(v0 + 232);
  v29 = *(v0 + 240);
  v30 = *(v0 + 208);
  sub_100443804(*(v0 + 280), v27, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  sub_1000077D8(v27, v30, &qword_100AE39D8);
  sub_1002D73A4(v30, v25);
  v31 = *(v29 + 48);
  if (v31(v25, 1, v28) == 1)
  {
    goto LABEL_16;
  }

  v26 = (v0 + 216);
  v32 = *(v0 + 216);
  v33 = *(v0 + 304);
  v34 = *(v0 + 288);
  v35 = *(v0 + 232);
  v36 = *(v0 + 208);
  v92 = *(*(v0 + 240) + 32);
  v92(*(v0 + 272), *(v0 + 224), v35);
  sub_1000077D8(v33 + *(v34 + 20), v36, &qword_100AE39D8);
  sub_1002D73A4(v36, v32);
  if (v31(v32, 1, v35) == 1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 272), *(v0 + 232));
LABEL_16:
    v37 = *(v0 + 336);
    v38 = *(v0 + 304);
    sub_100007840(*v26, &unk_100ADB5C0);
    sub_10044386C();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    sub_1004438C0(v38, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v37, type metadata accessor for YearInReview.RemoteConfiguration);

    v40 = *(v0 + 8);

    return v40();
  }

  v42 = *(v0 + 240);
  v41 = *(v0 + 248);
  v43 = *(v0 + 232);
  v92(*(v0 + 264), *(v0 + 216), v43);
  sub_100796B74();
  v44 = sub_100796B14();
  v45 = *(v42 + 8);
  *(v0 + 344) = v45;
  *(v0 + 352) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v41, v43);
  if (v44)
  {
    (*(*(v0 + 240) + 16))(*(v0 + 256), *(v0 + 272), *(v0 + 232));
  }

  else
  {
    v46 = *(v0 + 248);
    v47 = *(v0 + 232);
    v49 = *(v0 + 192);
    v48 = *(v0 + 200);
    v50 = *(v0 + 184);
    sub_100796B74();
    sub_100796D64();
    sub_100796A14();
    (*(v49 + 8))(v48, v50);
    v45(v46, v47);
  }

  v51 = *(v0 + 336);
  v52 = *v51;
  *(v0 + 360) = *v51;
  if (sub_100443E88(v52))
  {
    if (qword_100AD1608 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 168);
    v53 = *(v0 + 176);
    v55 = *(v0 + 160);
    v56 = sub_100008B98(v55, qword_100AE3848);
    (*(v54 + 16))(v53, v56, v55);
    sub_100798EE4();
    (*(v54 + 8))(v53, v55);
    v57 = *(v0 + 336);
    v58 = *(v0 + 304);
    v60 = *(v0 + 264);
    v59 = *(v0 + 272);
    v61 = *(v0 + 256);
    v62 = *(v0 + 232);
    if (*(v0 + 76) == 1)
    {
      v45(*(v0 + 256), *(v0 + 232));
      v45(v60, v62);
      v45(v59, v62);
      sub_1004438C0(v58, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      sub_1004438C0(v57, type metadata accessor for YearInReview.RemoteConfiguration);
      v91 = 1;
    }

    else
    {
      v70 = *(v0 + 128);
      v88 = *(v0 + 120);
      v90 = *(v0 + 304);
      v71 = *(v0 + 112);
      sub_1007A2714();
      v72 = sub_1007A2744();
      v91 = 1;
      (*(*(v72 - 8) + 56))(v70, 0, 1, v72);
      v89 = v57;
      v73 = swift_allocObject();
      v73[2] = 0;
      v73[3] = 0;
      v73[4] = v71;
      v73[5] = v88;

      sub_1005E3DA4(0, 0, v70, &unk_100825F70, v73);

      sub_100007840(v70, &qword_100AD67D0);
      v45(v61, v62);
      v45(v60, v62);
      v45(v59, v62);
      sub_1004438C0(v90, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      sub_1004438C0(v89, type metadata accessor for YearInReview.RemoteConfiguration);
    }

    goto LABEL_10;
  }

  if (qword_100AD1618 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 168);
  v63 = *(v0 + 176);
  v65 = *(v0 + 160);
  v66 = sub_100008B98(v65, qword_100AE3878);
  v67 = *(v64 + 16);
  *(v0 + 368) = v67;
  *(v0 + 376) = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v67(v63, v66, v65);
  sub_100798EE4();
  v68 = *(v64 + 8);
  *(v0 + 384) = v68;
  *(v0 + 392) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v63, v65);
  if ((*(v0 + 74) & 1) == 0)
  {
    if (qword_100AD1600 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 144);
    v74 = *(v0 + 152);
    v76 = *(v0 + 136);
    v77 = sub_100008B98(v76, qword_100AE3830);
    (*(v75 + 16))(v74, v77, v76);
    sub_100798EE4();
    (*(v75 + 8))(v74, v76);
    if ((*(v0 + 72) & 1) == 0 && v52 == *(v0 + 64))
    {
      v93 = *(v0 + 336);
      v78 = *(v0 + 304);
      v80 = *(v0 + 264);
      v79 = *(v0 + 272);
      v81 = *(v0 + 256);
      v82 = *(v0 + 232);
      sub_100441BD8(v52);
      v45(v81, v82);
      v45(v80, v82);
      v45(v79, v82);
      sub_1004438C0(v78, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      sub_1004438C0(v93, type metadata accessor for YearInReview.RemoteConfiguration);
      v91 = 2;
LABEL_10:

      v23 = *(v0 + 8);

      return v23(v91);
    }
  }

  if ((sub_100796B14() & 1) == 0)
  {
    v83 = *(v0 + 336);
    v84 = *(v0 + 304);
    v86 = *(v0 + 264);
    v85 = *(v0 + 272);
    v87 = *(v0 + 232);
    v45(*(v0 + 256), v87);
    v45(v86, v87);
    v45(v85, v87);
    sub_1004438C0(v84, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v83, type metadata accessor for YearInReview.RemoteConfiguration);
    v91 = 3;
    goto LABEL_10;
  }

  sub_10000E3E8((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v69 = swift_task_alloc();
  *(v0 + 400) = v69;
  *v69 = v0;
  v69[1] = sub_1004409C4;

  return sub_1004B8F78(2);
}

uint64_t sub_1004409C4(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100440BA0;
  }

  else
  {
    *(v4 + 77) = a1 & 1;
    v5 = sub_100440AF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100440AF4()
{
  *(v0 + 78) = *(v0 + 77);
  sub_10000E3E8((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_100440C48;

  return sub_1004B8F78(0);
}

uint64_t sub_100440BA0()
{
  *(v0 + 78) = 0;
  sub_10000E3E8((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_100440C48;

  return sub_1004B8F78(0);
}

uint64_t sub_100440C48(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100440FA8;
  }

  else
  {
    *(v4 + 79) = a1 & 1;
    v5 = sub_100440D78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100440D78()
{
  if (*(v0 + 79) == 1)
  {
    sub_10000E3E8((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
    v1 = swift_task_alloc();
    *(v0 + 416) = v1;
    *v1 = v0;
    v1[1] = sub_100441140;

    return sub_1004B8F78(1);
  }

  else
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 336);
    v5 = *(v0 + 304);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v8 = *(v0 + 232);
    v3(*(v0 + 256), v8);
    v3(v7, v8);
    v3(v6, v8);
    sub_1004438C0(v5, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v4, type metadata accessor for YearInReview.RemoteConfiguration);

    v9 = *(v0 + 8);

    return v9(4);
  }
}

uint64_t sub_100440FA8()
{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[38];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[29];
  v1(v0[32], v6);
  v1(v5, v6);
  v1(v4, v6);
  sub_1004438C0(v3, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  sub_1004438C0(v2, type metadata accessor for YearInReview.RemoteConfiguration);

  v7 = v0[1];

  return v7(4);
}

uint64_t sub_100441140(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10044424C;
  }

  else
  {
    *(v4 + 89) = a1 & 1;
    v5 = sub_100441270;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100441270()
{
  if (*(v0 + 89) != 1)
  {
    goto LABEL_6;
  }

  if (qword_100AD1620 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 78);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = sub_100008B98(v5, qword_100AE3890);
  v3(v4, v6, v5);
  sub_100798EE4();
  v2(v4, v5);
  if ((*(v0 + 75) & 1) != 0 || v1)
  {
    v15 = swift_task_alloc();
    *(v0 + 424) = v15;
    *v15 = v0;
    v15[1] = sub_100441520;
    v16 = *(v0 + 360);
    v17 = *(v0 + 256);

    return sub_100441D80(v16, v17);
  }

  else
  {
LABEL_6:
    v7 = *(v0 + 344);
    v8 = *(v0 + 336);
    v9 = *(v0 + 304);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 232);
    v7(*(v0 + 256), v12);
    v7(v11, v12);
    v7(v10, v12);
    sub_1004438C0(v9, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v8, type metadata accessor for YearInReview.RemoteConfiguration);

    v13 = *(v0 + 8);

    return v13(4);
  }
}

uint64_t sub_100441520()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_10044187C;
  }

  else
  {
    v2 = sub_100441634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100441634()
{
  if (qword_100AD1600 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v13 = *(v0 + 304);
  v14 = *(v0 + 336);
  v11 = *(v0 + 264);
  v12 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = sub_100008B98(v7, qword_100AE3830);
  (*(v6 + 16))(v5, v8, v7);
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  sub_100798EF4();
  (*(v6 + 8))(v5, v7);
  sub_100441BD8(v1);
  v2(v3, v4);
  v2(v11, v4);
  v2(v12, v4);
  sub_1004438C0(v13, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  sub_1004438C0(v14, type metadata accessor for YearInReview.RemoteConfiguration);

  v9 = *(v0 + 8);

  return v9(5);
}

uint64_t sub_10044187C()
{
  v23 = v0;
  if (qword_100AD1628 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AE38A8);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[45];
    v5 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v5 = 136315394;
    v0[12] = v4;
    v6 = sub_1007A22F4();
    v8 = sub_1000070F4(v6, v7, v22);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_1007A3B84();
    v11 = sub_1000070F4(v9, v10, v22);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cannot schedule notification for year in review %s: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[43];
  v21 = v0[42];
  v13 = v0[38];
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[32];
  v17 = v0[29];
  sub_10044386C();
  swift_allocError();
  *v18 = 1;
  swift_willThrow();

  v12(v16, v17);
  v12(v15, v17);
  v12(v14, v17);
  sub_1004438C0(v13, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  sub_1004438C0(v21, type metadata accessor for YearInReview.RemoteConfiguration);

  v19 = v0[1];

  return v19();
}

void sub_100441BD8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver;
  if (!*(v1 + OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver))
  {
    v15 = 0xD000000000000012;
    v16 = 0x80000001008D4F80;
    v14 = a1;
    v17._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v17);

    v3 = swift_allocObject();
    swift_weakInit();
    v4 = type metadata accessor for DefaultsObserver();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC5BooksP33_8A1BE8AE8AE70CC0220B9F5FF837F82D16DefaultsObserver_keyPath];
    *v6 = 0xD000000000000012;
    *(v6 + 1) = 0x80000001008D4F80;
    v7 = &v5[OBJC_IVAR____TtC5BooksP33_8A1BE8AE8AE70CC0220B9F5FF837F82D16DefaultsObserver_callback];
    *v7 = sub_100444154;
    v7[1] = v3;
    v13.receiver = v5;
    v13.super_class = v4;

    v8 = objc_msgSendSuper2(&v13, "init");
    v9 = *(v1 + v2);
    *(v1 + v2) = v8;
    v10 = v8;

    if (qword_100AD1920 != -1)
    {
      swift_once();
    }

    v11 = qword_100B236A8;
    v12 = sub_1007A2214();

    [v11 addObserver:v10 forKeyPath:v12 options:1 context:0];
  }
}

uint64_t sub_100441D80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100796BB4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1007A21B4();
  v3[9] = swift_task_alloc();
  v5 = sub_1007A21D4();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_100796CF4();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100441F40, 0, 0);
}

uint64_t sub_100441F40()
{
  v60 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v55 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[3];
  v54 = v8;
  sub_100796C74();
  v9 = sub_1004439A4(v8, v1);
  v52 = v10;
  v53 = v9;
  v56 = *(v3 + 8);
  v56(v1, v2);
  v46 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v0[18] = v46;
  sub_1007A2154();
  sub_100796C94();
  v51 = *(v7 + 16);
  v51(v5, v4, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = objc_opt_self();
  v11 = [v49 bundleForClass:ObjCClassFromMetadata];
  v48 = *(v3 + 16);
  v48(v55, v1, v2);
  sub_1007A22D4();
  v56(v1, v2);
  v47 = *(v7 + 8);
  v47(v4, v6);
  v12 = sub_1007A2214();

  [v46 setTitle:v12];

  sub_1007A21A4();
  v62._countAndFlagsBits = 0xD000000000000033;
  v62._object = 0x80000001008D5010;
  sub_1007A2194(v62);
  v63._countAndFlagsBits = v53;
  v63._object = v52;
  sub_1007A2184(v63);

  v64._countAndFlagsBits = 46;
  v64._object = 0xE100000000000000;
  sub_1007A2194(v64);
  sub_1007A21C4();
  sub_100796C94();
  v51(v5, v4, v6);
  v13 = [v49 bundleForClass:ObjCClassFromMetadata];
  v48(v55, v1, v2);
  sub_1007A22D4();
  v56(v1, v2);
  v47(v4, v6);
  v14 = sub_1007A2214();

  [v46 setBody:v14];

  [v46 setInterruptionLevel:1];
  v15 = sub_1007A2214();
  [v46 setCategoryIdentifier:v15];

  sub_100796B34();
  v17 = [objc_opt_self() triggerWithTimeInterval:0 repeats:v16];
  v0[19] = v17;
  v58 = 762472825;
  v59 = 0xE400000000000000;
  v0[2] = v54;
  v65._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v65);

  v19 = v58;
  v18 = v59;
  v20 = v46;
  v21 = v17;
  v22 = sub_1007A2214();
  v23 = [objc_opt_self() requestWithIdentifier:v22 content:v20 trigger:v21];
  v0[20] = v23;

  if (qword_100AD1628 != -1)
  {
    swift_once();
  }

  v24 = v0[7];
  v25 = v0[8];
  v26 = v0[6];
  v27 = v0[4];
  v28 = sub_10079ACE4();
  sub_100008B98(v28, qword_100AE38A8);
  (*(v24 + 16))(v25, v27, v26);

  v29 = sub_10079ACC4();
  v30 = sub_1007A2994();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[7];
  v33 = v0[8];
  v34 = v0[6];
  if (v31)
  {
    v35 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = sub_1000070F4(v19, v18, &v58);

    *(v35 + 4) = v36;
    *(v35 + 12) = 2080;
    sub_10044419C(&unk_100AE9A30, &type metadata accessor for Date);
    v37 = sub_1007A3A74();
    v39 = v38;
    (*(v32 + 8))(v33, v34);
    v40 = sub_1000070F4(v37, v39, &v58);

    *(v35 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v29, v30, "Scheduling notification %s to trigger at %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v32 + 8))(v33, v34);
  }

  v41 = v0[5];
  v42 = v41[10];
  v43 = v41[11];
  sub_10000E3E8(v41 + 7, v42);
  v57 = (*(v43 + 8) + **(v43 + 8));
  v44 = swift_task_alloc();
  v0[21] = v44;
  *v44 = v0;
  v44[1] = sub_100442708;

  return v57(v23, v42, v43);
}

uint64_t sub_100442708()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1004428E0;
  }

  else
  {
    v2 = sub_10044281C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044281C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004428E0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004429A4()
{
  v1 = *v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_1007A2714();
  v5 = sub_1007A2744();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_1005E3DA4(0, 0, v4, &unk_100825F88, v6);

  return sub_100007840(v4, &qword_100AD67D0);
}

uint64_t sub_100442B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1001F1160(&unk_100AD9108);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100442BCC, 0, 0);
}

uint64_t sub_100442BCC()
{
  v1 = *(v0 + 24);
  v2 = v1[10];
  v3 = v1[11];
  sub_10000E3E8(v1 + 7, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100442CF4;

  return v6(v2, v3);
}

uint64_t sub_100442CF4(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100442DF4, 0, 0);
}

char *sub_100442DF4()
{
  v35 = v0;
  v1 = *(v0 + 64);
  v34 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_1007A38D4();
    v3 = *(v0 + 64);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
  }

  v4 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = v1 & 0xFFFFFFFFFFFFFF8;
    v8 = v3 + 32;
    do
    {
      if (v6)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v0 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v11 = [v9 identifier];
      sub_1007A2254();

      v37._countAndFlagsBits = 762472825;
      v37._object = 0xE400000000000000;
      v1 = sub_1007A2474(v37);

      if (v1)
      {
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        v1 = &v34;
        sub_1007A37E4();
      }

      else
      {
      }

      ++v5;
    }

    while (v0 != v2);
    v0 = v33;
    v12 = v34;
    v4 = _swiftEmptyArrayStorage;

    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

  v12 = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v12 & 0x4000000000000000) != 0)
  {
LABEL_31:
    v13 = sub_1007A38D4();
    if (!v13)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_19:
  v34 = _swiftEmptyArrayStorage;
  result = sub_1003BD0CC(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v4 = v34;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = sub_1007A3784();
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = [v16 identifier];
    v19 = sub_1007A2254();
    v21 = v20;

    v34 = v4;
    v23 = v4[2];
    v22 = v4[3];
    if (v23 >= v22 >> 1)
    {
      sub_1003BD0CC((v22 > 1), v23 + 1, 1);
      v4 = v34;
    }

    ++v15;
    v4[2] = v23 + 1;
    v24 = &v4[2 * v23];
    v24[4] = v19;
    v24[5] = v21;
  }

  while (v13 != v15);

  v0 = v33;
LABEL_33:
  *(v0 + 16) = v4;
  sub_1001F1160(&unk_100AD61F0);
  sub_10023D44C();
  if (sub_1007A28A4())
  {
    v25 = *(v0 + 24);
    v26 = v25[10];
    v27 = v25[11];
    sub_10000E3E8(v25 + 7, v26);
    (*(v27 + 24))(v4, v26, v27);
  }

  if (qword_100AD1608 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 40);
  v28 = *(v0 + 48);
  v30 = *(v0 + 32);
  v31 = sub_100008B98(v30, qword_100AE3848);
  (*(v29 + 16))(v28, v31, v30);
  *(v0 + 72) = 1;
  sub_100798EF4();
  (*(v29 + 8))(v28, v30);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1004431E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      if (*(a1 + 16))
      {
        v3 = sub_1002F9CF4(NSKeyValueChangeNewKey);
        if (v4)
        {
          sub_100007484(*(a1 + 56) + 32 * v3, v6);
          sub_1000076D4(v6, v7);
          sub_100007484(v7, v6);
          if ((swift_dynamicCast() & 1) != 0 && v5 == 1)
          {
            sub_1004429A4();

            return sub_1000074E0(v7);
          }

          sub_1000074E0(v7);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004432E8()
{
  v1 = OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver;
  v2 = *(v0 + OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver);
  if (v2)
  {
    v3 = qword_100AD1920;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = qword_100B236A8;

    v6 = sub_1007A2214();

    [v5 removeObserver:v4 forKeyPath:v6];
  }

  sub_1000074E0(v0 + 16);
  sub_1000074E0(v0 + 56);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_config, &qword_100AD6948);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for YearInReviewNotificationScheduler()
{
  result = qword_100AE38F8;
  if (!qword_100AE38F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100443480()
{
  sub_100443524();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100443524()
{
  if (!qword_100AE6840)
  {
    type metadata accessor for YearInReview.RemoteConfiguration(255);
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE6840);
    }
  }
}

uint64_t sub_100443744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_100442B00(a1, v4, v5, v6);
}

uint64_t sub_100443804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10044386C()
{
  result = qword_100AE39E8;
  if (!qword_100AE39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE39E8);
  }

  return result;
}

uint64_t sub_1004438C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100443920()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE38A8);
  sub_100008B98(v0, qword_100AE38A8);
  return sub_10079ACD4();
}

uint64_t sub_1004439A4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_100796A54();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100796A74();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_100796DA4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_100796BB4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796D04();
  v36 = a1;
  sub_100796A24();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100007840(v17, &unk_100ADB5C0);
    if (qword_100AD1628 != -1)
    {
      swift_once();
    }

    v22 = sub_10079ACE4();
    sub_100008B98(v22, qword_100AE38A8);
    v23 = sub_10079ACC4();
    v24 = sub_1007A29B4();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v36;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create date for last day of '%ld'.", v27, 0xCu);
    }

    v37 = v26;
    return sub_1007A3A74();
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_100796404();
    sub_100796A44();
    sub_100796A34();
    (*(v31 + 8))(v5, v32);
    v29 = *(v33 + 8);
    v30 = v35;
    v29(v7, v35);
    sub_100796A64();
    v29(v10, v30);
    sub_10044419C(&qword_100AE39F0, &type metadata accessor for Date.FormatStyle);
    sub_100796B94();
    v29(v13, v30);
    (*(v19 + 8))(v21, v18);
    return v37;
  }
}

id sub_100443E88(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD9108);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  if (qword_100AD1610 != -1)
  {
    swift_once();
  }

  v6 = sub_100008B98(v2, qword_100AE3860);
  (*(v3 + 16))(v5, v6, v2);
  sub_100798EE4();
  (*(v3 + 8))(v5, v2);
  if (v12)
  {
    return 0;
  }

  v12 = 0xD000000000000012;
  v13 = 0x80000001008D4F80;
  v11[1] = a1;
  v14._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v14);

  if (qword_100AD1920 != -1)
  {
    swift_once();
  }

  v8 = qword_100B236A8;
  v9 = sub_1007A2214();

  v10 = [v8 BOOLForKey:v9];

  return v10;
}

uint64_t sub_100444094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_100442B00(a1, v4, v5, v6);
}

uint64_t sub_10044415C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10044419C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004441F8()
{
  result = qword_100AE3A00;
  if (!qword_100AE3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3A00);
  }

  return result;
}

id sub_1004443C4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10044446C()
{
  v1 = v0 + OBJC_IVAR____TtC5Books18ToastContainerView_contentInsets;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1004444B8(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC5Books18ToastContainerView_contentInsets);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_100444524()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books18ToastContainerView_backgroundLayerGroupName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_1004445DC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books18ToastContainerView_containerView);
  [v3 bounds];
  [a1 setFrame:?];
  v4 = [a1 layer];
  [v4 setCornerRadius:16.0];

  [a1 setAutoresizingMask:18];

  return [v3 addSubview:a1];
}

void sub_100444694()
{
  v1 = OBJC_IVAR____TtC5Books18ToastContainerView_containerView;
  type metadata accessor for ToastContainerView.ContainerView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC5Books18ToastContainerView_backgroundView;
  v3 = [objc_opt_self() effectWithStyle:10];
  v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v2) = v4;
  *(v0 + OBJC_IVAR____TtC5Books18ToastContainerView_defaultHeight) = 0x4055000000000000;
  *(v0 + OBJC_IVAR____TtC5Books18ToastContainerView_defaultHeightInset) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC5Books18ToastContainerView_defaultWidthInset) = 0x4034000000000000;
  v5 = (v0 + OBJC_IVAR____TtC5Books18ToastContainerView_backgroundLayerGroupName);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC5Books18ToastContainerView_contentInsets);
  v7 = *&UIEdgeInsetsZero.bottom;
  *v6 = *&UIEdgeInsetsZero.top;
  v6[1] = v7;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_1004447D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

void sub_10044484C()
{
  v1 = sub_1007A3854();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for State(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BookReaderChromeState();
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  if (*(v0 + OBJC_IVAR____TtC5Books26BookReaderChromeController_hasActivePageMovement) == 1)
  {
    if (qword_100AD1630 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AE3A98);
    v23 = sub_10079ACC4();
    v18 = sub_1007A29D4();
    if (os_log_type_enabled(v23, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v23, v18, "Chrome visibility changes paused (page movement in progress)", v19, 2u);
    }

    v20 = v23;
  }

  else
  {
    v21 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_10043809C(v0 + v21, v7, type metadata accessor for State);
    sub_1007A3834();
    sub_100446470(v16);
    (*(v2 + 8))(v4, v1);
    sub_10044893C(v7, type metadata accessor for State);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v22 = sub_100641198(v14, v16);
    sub_10044893C(v14, type metadata accessor for BookReaderChromeState);
    if ((v22 & 1) == 0)
    {
      sub_10043809C(v16, v14, type metadata accessor for BookReaderChromeState);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10043809C(v14, v11, type metadata accessor for BookReaderChromeState);

      sub_10079B9B4();
      sub_10044893C(v14, type metadata accessor for BookReaderChromeState);
    }

    sub_1004467F8();
    sub_10044893C(v16, type metadata accessor for BookReaderChromeState);
  }
}

uint64_t sub_100444C5C(uint64_t a1)
{
  v3 = type metadata accessor for State(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  sub_10043809C(v9, v8, type metadata accessor for State);
  swift_beginAccess();
  sub_1004485D8(a1, v9);
  swift_endAccess();
  sub_10043809C(v9, v6, type metadata accessor for State);
  v10 = sub_10044876C(v8, v6);
  sub_10044893C(v6, type metadata accessor for State);
  if ((v10 & 1) == 0)
  {
    v11 = sub_1007A2B24();
    *(v9 + v3[21]) = v11 & 1;
    if ((v11 & 1) != v8[v3[21]])
    {
      *(v9 + v3[23]) = 0;
      *(v9 + v3[22]) = 0;
    }

    sub_10044484C();
  }

  sub_10044893C(a1, type metadata accessor for State);
  return sub_10044893C(v8, type metadata accessor for State);
}

uint64_t sub_100444E04(int a1)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1001F1160(&qword_100AF2700);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  __chkstk_darwin(v3);
  v32 = &v30 - v5;
  v6 = type metadata accessor for State(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1001F1160(&qword_100AE3CD0);
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v30 - v11;
  v13 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v30 = OBJC_IVAR____TtC5Books26BookReaderChromeController__chromeState;
  *(&v30 - v17) = 0;
  v20 = *(v19 + 24);
  v21 = enum case for BookContentHeaderStyle.primary(_:);
  v22 = sub_10079F4E4();
  (*(*(v22 - 8) + 104))(&v18[v20], v21, v22);
  v18[v13[7]] = 0;
  v18[v13[8]] = 1;
  v18[v13[9]] = 0;
  v18[v13[10]] = 0;
  *&v18[v13[11]] = 0;
  v18[v13[12]] = 0;
  v18[v13[13]] = 0;
  v18[v13[14]] = 1;
  v18[v13[15]] = 0;
  sub_10043809C(v18, v15, type metadata accessor for BookReaderChromeState);
  sub_10079B964();
  sub_10044893C(v18, type metadata accessor for BookReaderChromeState);
  (*(v10 + 32))(v2 + v30, v12, v31);
  v23 = OBJC_IVAR____TtC5Books26BookReaderChromeController_axNotificationTask;
  *(v2 + OBJC_IVAR____TtC5Books26BookReaderChromeController_axNotificationTask) = 0;
  v24 = OBJC_IVAR____TtC5Books26BookReaderChromeController_reapplyStateTask;
  v25 = sub_1001F1160(&unk_100AE3B30);
  (*(*(v25 - 8) + 56))(v2 + v24, 1, 1, v25);
  *(v2 + OBJC_IVAR____TtC5Books26BookReaderChromeController_hasActivePageMovement) = 0;
  sub_1007A3834();
  sub_1007A3834();
  sub_1007A3834();
  *v9 = v33;
  *(v9 + 1) = 0;
  *(v9 + 9) = 0;
  v9[v7[22]] = 0;
  v9[v7[23]] = 0;
  v9[v7[24]] = 0;
  v9[v7[25]] = 0;
  sub_100448CC8(v9, v2 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state);
  v26 = v32;
  sub_1007A2B54();
  swift_allocObject();
  swift_weakInit();
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  v28 = sub_10079BB04();

  (*(v35 + 8))(v26, v27);
  *(v2 + v23) = v28;

  sub_10044484C();
  return v2;
}

uint64_t sub_100445294(char *a1)
{
  v2 = type metadata accessor for State(0);
  __chkstk_darwin(v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    v8 = result;
    swift_beginAccess();
    sub_10043809C(v8 + v7, v4, type metadata accessor for State);
    v4[*(v2 + 84)] = v5;
    sub_100444C5C(v4);
  }

  return result;
}

void sub_10044539C(char a1)
{
  v3 = sub_1007A3854();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for State(0);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_hasActivePageMovement);
  *(v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_hasActivePageMovement) = a1;
  if (v13 == 1 && (a1 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    v18 = type metadata accessor for State;
    sub_10043809C(v1 + v14, v12, type metadata accessor for State);
    sub_1007A3834();
    v15 = v7[18];
    v16 = *(v4 + 40);
    v16(&v12[v15], v6, v3);
    (*(v4 + 24))(&v12[v7[17]], &v12[v15], v3);
    sub_1007A3834();
    v16(&v12[v7[19]], v6, v3);
    v17 = v18;
    sub_10043809C(v12, v9, v18);
    sub_100444C5C(v9);
    sub_10044893C(v12, v17);
    sub_10044484C();
  }
}

uint64_t sub_1004455C4()
{
  v1 = sub_1007A3854();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  __chkstk_darwin(v8);
  v21 = &v21 - v9;
  v10 = type metadata accessor for State(0);
  __chkstk_darwin(v10);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  v23 = v0;
  sub_10043809C(v0 + v15, v14, type metadata accessor for State);
  if (qword_100AD1640 != -1)
  {
    swift_once();
  }

  v16 = *(v10 + 72);
  sub_1007A3834();
  sub_1007A3844();
  v17 = *(v2 + 8);
  v17(v4, v1);
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
  if (sub_1007A20E4())
  {
    v18 = v21;
    (*(v2 + 32))(v21, v7, v1);
  }

  else
  {
    v17(v7, v1);
    v18 = v21;
    (*(v2 + 16))(v21, &v14[v16], v1);
  }

  (*(v2 + 40))(&v14[v16], v18, v1);
  (*(v2 + 24))(&v14[*(v10 + 68)], &v14[v16], v1);
  v14[2] = 1;
  v19 = v22;
  sub_10043809C(v14, v22, type metadata accessor for State);
  sub_100444C5C(v19);
  return sub_10044893C(v14, type metadata accessor for State);
}

uint64_t sub_100445924(int a1)
{
  v29 = sub_1007A3854();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  __chkstk_darwin(v9);
  v30 = &v26 - v10;
  v11 = type metadata accessor for State(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  if (*(v17 + 3) == 1 && (a1 & 1) == 0)
  {
    v26 = v3;
    v27 = a1;
    v28 = v1;
    sub_10043809C(v17, v16, type metadata accessor for State);
    if (qword_100AD1640 != -1)
    {
      swift_once();
    }

    v18 = *(v11 + 72);
    sub_1007A3834();
    sub_1007A3844();
    v19 = v26;
    v20 = *(v26 + 8);
    v21 = v5;
    v22 = v18;
    v23 = v29;
    v20(v21, v29);
    sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
    if (sub_1007A20E4())
    {
      v24 = v30;
      (v19)[4](v30, v8, v23);
    }

    else
    {
      v20(v8, v23);
      v24 = v30;
      (v19)[2](v30, &v16[v22], v23);
    }

    LOBYTE(a1) = v27;
    (v19)[5](&v16[v22], v24, v23);
    sub_100444C5C(v16);
  }

  sub_10043809C(v17, v13, type metadata accessor for State);
  v13[3] = a1 & 1;
  return sub_100444C5C(v13);
}

uint64_t sub_100445C80(int a1)
{
  v29 = sub_1007A3854();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  __chkstk_darwin(v9);
  v30 = &v26 - v10;
  v11 = type metadata accessor for State(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  if (*(v17 + 5) == 1 && (a1 & 1) == 0)
  {
    v26 = v3;
    v27 = a1;
    v28 = v1;
    sub_10043809C(v17, v16, type metadata accessor for State);
    if (qword_100AD1640 != -1)
    {
      swift_once();
    }

    v18 = *(v11 + 72);
    sub_1007A3834();
    sub_1007A3844();
    v19 = v26;
    v20 = *(v26 + 8);
    v21 = v5;
    v22 = v18;
    v23 = v29;
    v20(v21, v29);
    sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
    if (sub_1007A20E4())
    {
      v24 = v30;
      (v19)[4](v30, v8, v23);
    }

    else
    {
      v20(v8, v23);
      v24 = v30;
      (v19)[2](v30, &v16[v22], v23);
    }

    LOBYTE(a1) = v27;
    (v19)[5](&v16[v22], v24, v23);
    sub_100444C5C(v16);
  }

  sub_10043809C(v17, v13, type metadata accessor for State);
  v13[5] = a1 & 1;
  return sub_100444C5C(v13);
}

uint64_t sub_100445FDC()
{
  v1 = sub_1007A3854();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v34 - v4;
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for State(0);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for BookReaderChromeState();
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v21 = v20[*(v18 + 52)];
  sub_10044893C(v20, type metadata accessor for BookReaderChromeState);
  v22 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  if (v21 == 1)
  {
    swift_beginAccess();
    sub_10043809C(v0 + v22, v16, type metadata accessor for State);
    sub_1007A3834();
    v23 = *(v8 + 72);
    v25 = v37;
    v24 = v38;
    (*(v37 + 40))(&v16[v23], v7, v38);
    (*(v25 + 24))(&v16[*(v8 + 68)], &v16[v23], v24);
    sub_10043809C(v16, v13, type metadata accessor for State);
    sub_100444C5C(v13);
    return sub_10044893C(v16, type metadata accessor for State);
  }

  else
  {
    v27 = v8;
    v28 = v37;
    v29 = v38;
    swift_beginAccess();
    sub_10043809C(v0 + v22, v10, type metadata accessor for State);
    if (qword_100AD1640 != -1)
    {
      swift_once();
    }

    v30 = *(v27 + 72);
    sub_1007A3834();
    v31 = v35;
    sub_1007A3844();
    v32 = *(v28 + 8);
    v32(v7, v29);
    sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
    if (sub_1007A20E4())
    {
      v33 = v36;
      (*(v28 + 32))(v36, v31, v29);
    }

    else
    {
      v32(v31, v29);
      v33 = v36;
      (*(v28 + 16))(v36, &v10[v30], v29);
    }

    (*(v28 + 40))(&v10[v30], v33, v29);
    return sub_100444C5C(v10);
  }
}

uint64_t sub_100446470@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079F4E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100447E58();
  v9 = v1[6];
  v29 = v8;
  v30 = v9;
  if (v1[2] == 1 && (type metadata accessor for State(0), sub_1007A3854(), sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant), (sub_1007A20D4() & 1) == 0))
  {
    v10 = &enum case for BookContentHeaderStyle.secondary(_:);
  }

  else
  {
    v10 = &enum case for BookContentHeaderStyle.primary(_:);
  }

  (*(v5 + 104))(v7, *v10, v4);
  v11 = sub_100447F90();
  v12 = v1[8];
  v27 = v11;
  v28 = v12;
  v26 = sub_1004480FC();
  v25 = sub_100448264();
  v13 = sub_10044838C();
  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0 & 1) != 0 || v1[3] == 1 || (v14 = type metadata accessor for State(0), v1[*(v14 + 84)] == 1) && v1[*(v14 + 88)] != 1 || (sub_1007A3854(), sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant), (sub_1007A20D4()) || (v1[11])
  {
    v15 = 1;
  }

  else
  {
    v15 = v1[12];
  }

  v16 = sub_1004484E8();
  v17 = type metadata accessor for State(0);
  if (v2[v17[21]])
  {
    v18 = v2[v17[22]] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = v2[v17[20]];
  *a1 = v29 & 1;
  a1[1] = v30;
  v20 = type metadata accessor for BookReaderChromeState();
  result = (*(v5 + 32))(&a1[v20[6]], v7, v4);
  v22 = v28;
  a1[v20[7]] = v27;
  a1[v20[8]] = v22;
  a1[v20[9]] = v26 & 1;
  a1[v20[10]] = v25 & 1;
  v23 = &a1[v20[11]];
  *v23 = v13 & 1;
  v23[1] = HIBYTE(v13) & 1;
  a1[v20[12]] = v15;
  a1[v20[13]] = v16 & 1;
  a1[v20[14]] = v18 & 1;
  a1[v20[15]] = v19;
  return result;
}

uint64_t sub_1004467F8()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AE3CA8);
  __chkstk_darwin(v2 - 8);
  v102 = &v89 - v3;
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v98 = &v89 - v5;
  v100 = sub_1001F1160(&qword_100AE3CB0);
  __chkstk_darwin(v100);
  v103 = &v89 - v6;
  v7 = type metadata accessor for State(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AE3CB8);
  v12 = __chkstk_darwin(v11 - 8);
  v93 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v104 = &v89 - v15;
  v16 = __chkstk_darwin(v14);
  v108 = &v89 - v17;
  __chkstk_darwin(v16);
  v107 = &v89 - v18;
  v19 = sub_1007A3854();
  v20 = *(v19 - 8);
  v21 = v20;
  v22 = __chkstk_darwin(v19);
  v24 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = v23;
  __chkstk_darwin(v22);
  v109 = &v89 - v25;
  v26 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  v106 = type metadata accessor for State;
  v110 = v1;
  sub_10043809C(v1 + v26, v10, type metadata accessor for State);
  sub_1007A3834();
  sub_1001F1160(&qword_100AE0A38);
  v27 = *(v20 + 72);
  v105 = v20;
  v28 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v95 = *(v20 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100812CF0;
  v96 = v28;
  v30 = v29 + v28;
  v31 = v21 + 16;
  v32 = *(v21 + 16);
  v32(v30, &v10[v8[19]], v19);
  v32(v30 + v27, &v10[v8[20]], v19);
  v33 = v19;
  v34 = &v10[v8[21]];
  v101 = v32;
  v32(v30 + 2 * v27, v34, v19);
  v112 = v24;
  v35 = sub_1003CD920(sub_10044899C, v111, v29);
  v36 = v107;
  sub_100447BA8(v35, v107);

  sub_10044893C(v10, v106);
  v37 = v105;
  v38 = *(v105 + 8);
  v106 = v24;
  v39 = v24;
  v40 = v36;
  v38(v39, v33);
  v41 = *(v37 + 48);
  if (v41(v40, 1, v33) != 1)
  {
    v94 = v38;
    v46 = *(v37 + 32);
    v47 = v109;
    v107 = v37 + 32;
    v92 = v46;
    v46(v109, v40, v33);
    v48 = v37;
    v49 = v108;
    v99 = v31;
    v50 = v101;
    v101(v108, v47, v33);
    v51 = *(v48 + 56);
    v52 = 1;
    v51(v49, 0, 1, v33);
    v53 = OBJC_IVAR____TtC5Books26BookReaderChromeController_reapplyStateTask;
    v54 = v110;
    swift_beginAccess();
    v55 = sub_1001F1160(&unk_100AE3B30);
    v90 = *(v55 - 8);
    v56 = *(v90 + 48);
    v91 = v55;
    if (!v56(v54 + v53, 1))
    {
      v50(v104, v110 + v53, v33);
      v52 = 0;
    }

    v105 = v53;
    v57 = v104;
    v51(v104, v52, 1, v33);
    v58 = *(v100 + 48);
    v59 = v108;
    v60 = v103;
    sub_100448A9C(v108, v103);
    sub_100448A9C(v57, v60 + v58);
    if (v41(v60, 1, v33) == 1)
    {
      sub_100007840(v57, &qword_100AE3CB8);
      v61 = v103;
      sub_100007840(v59, &qword_100AE3CB8);
      v62 = v41(v61 + v58, 1, v33);
      v63 = v109;
      if (v62 == 1)
      {
        sub_100007840(v61, &qword_100AE3CB8);
        return v94(v63, v33);
      }
    }

    else
    {
      v64 = v93;
      sub_100448A9C(v60, v93);
      if (v41(v60 + v58, 1, v33) != 1)
      {
        v83 = v60 + v58;
        v84 = v60;
        v85 = v106;
        v92(v106, v83, v33);
        sub_100448C80(&qword_100AE3CC0, &type metadata accessor for ContinuousClock.Instant);
        v86 = v59;
        v87 = sub_1007A2124();
        v88 = v94;
        v94(v85, v33);
        sub_100007840(v104, &qword_100AE3CB8);
        sub_100007840(v86, &qword_100AE3CB8);
        v88(v64, v33);
        sub_100007840(v84, &qword_100AE3CB8);
        v63 = v109;
        if (v87)
        {
          return v94(v63, v33);
        }

LABEL_11:
        v65 = sub_1007A2744();
        v66 = v98;
        (*(*(v65 - 8) + 56))(v98, 1, 1, v65);
        v67 = swift_allocObject();
        swift_weakInit();
        v68 = v106;
        v69 = v101;
        v101(v106, v63, v33);
        sub_1007A26F4();

        v70 = sub_1007A26E4();
        v71 = v96;
        v72 = v33;
        v73 = (v97 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
        v74 = swift_allocObject();
        *(v74 + 16) = v70;
        *(v74 + 24) = &protocol witness table for MainActor;
        v92((v74 + v71), v68, v72);
        *(v74 + v73) = v67;

        sub_10050CBCC(0, 0, v66, &unk_1008261D8, v74);
        v75 = v91;
        v76 = *(v91 + 48);
        v77 = v102;
        v78 = v109;
        v69(v102, v109, v72);
        sub_10079B884();
        swift_allocObject();
        v79 = sub_10079B894();
        v94(v78, v72);
        *(v77 + v76) = v79;
        (*(v90 + 56))(v77, 0, 1, v75);
        v80 = v105;
        v81 = v110;
        swift_beginAccess();
        sub_100448A2C(v77, v81 + v80);
        return swift_endAccess();
      }

      sub_100007840(v104, &qword_100AE3CB8);
      v61 = v103;
      sub_100007840(v59, &qword_100AE3CB8);
      v94(v64, v33);
      v63 = v109;
    }

    sub_100007840(v61, &qword_100AE3CB0);
    goto LABEL_11;
  }

  sub_100007840(v40, &qword_100AE3CB8);
  v42 = sub_1001F1160(&unk_100AE3B30);
  v43 = v102;
  (*(*(v42 - 8) + 56))(v102, 1, 1, v42);
  v44 = OBJC_IVAR____TtC5Books26BookReaderChromeController_reapplyStateTask;
  v45 = v110;
  swift_beginAccess();
  sub_100448A2C(v43, v45 + v44);
  return swift_endAccess();
}

uint64_t sub_10044737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1007A3864();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1007A26F4();
  v5[13] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_100447470, v8, v7);
}

uint64_t sub_100447470()
{
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  sub_1007A3B54();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  v2 = sub_100448C80(&qword_100AD76C0, &type metadata accessor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_100447568;
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v5, v0 + 40, v3, v4, v2);
}

uint64_t sub_100447568()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  v3 = v2[14];
  v4 = v2[15];
  if (v0)
  {
    v5 = sub_10044774C;
  }

  else
  {
    v5 = sub_1004476AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004476AC()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10044484C();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044774C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004477B8()
{
  v1 = OBJC_IVAR____TtC5Books26BookReaderChromeController__chromeState;
  v2 = sub_1001F1160(&qword_100AE3CD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100007840(v0 + OBJC_IVAR____TtC5Books26BookReaderChromeController_reapplyStateTask, &qword_100AE3CA8);
  sub_10044893C(v0 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state, type metadata accessor for State);

  return swift_deallocClassInstance();
}

void sub_1004478DC()
{
  sub_1004479F0();
  if (v0 <= 0x3F)
  {
    sub_100447A48();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1004479F0()
{
  if (!qword_100AE3B20)
  {
    type metadata accessor for BookReaderChromeState();
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE3B20);
    }
  }
}

void sub_100447A48()
{
  if (!qword_100AE3B28)
  {
    sub_1001F1234(&unk_100AE3B30);
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE3B28);
    }
  }
}

uint64_t sub_100447AF4()
{
  result = sub_1007A3854();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100447BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1007A3854();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
        v20 = sub_1007A20D4();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_100447E58()
{
  if (v0[1] & 1) != 0 || (v0[5] & 1) != 0 || (v0[3])
  {
    return 1;
  }

  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0)
  {
    return 1;
  }

  if (v0[9])
  {
    return 1;
  }

  v1 = type metadata accessor for State(0);
  if (v0[*(v1 + 84)] == 1 && v0[*(v1 + 88)] != 1)
  {
    return 1;
  }

  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
  if (sub_1007A20D4() & 1) != 0 || (v0[11])
  {
    return 1;
  }

  else
  {
    return v0[12];
  }
}

uint64_t sub_100447F90()
{
  if (v0[2] != 1)
  {
    return 0;
  }

  v1 = type metadata accessor for State(0);
  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
  if (sub_1007A20D4())
  {
    return 0;
  }

  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0 & 1) != 0 || (sub_1007A20D4() & 1) == 0 && ((v0[3] & 1) != 0 || v0[*(v1 + 84)] == 1 && v0[*(v1 + 88)] != 1 || (sub_1007A20D4() & 1) != 0 || (v0[11] & 1) != 0 || (v0[12]))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1004480FC()
{
  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0)
  {
    return 1;
  }

  if (v0[7])
  {
    return 0;
  }

  if (v0[3])
  {
    return 1;
  }

  v2 = type metadata accessor for State(0);
  if (v0[*(v2 + 84)] == 1 && v0[*(v2 + 88)] != 1)
  {
    return 1;
  }

  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
  if (sub_1007A20D4() & 1) != 0 || (v0[11] & 1) != 0 || (v0[12])
  {
    return 1;
  }

  return sub_1007A20D4() & 1;
}

uint64_t sub_100448264()
{
  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0)
  {
    return 1;
  }

  if (v0[3])
  {
    return 0;
  }

  v2 = type metadata accessor for State(0);
  if (v0[*(v2 + 84)] == 1 && v0[*(v2 + 88)] != 1)
  {
    return 1;
  }

  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
  if (sub_1007A20D4() & 1) != 0 || (v0[11])
  {
    return 1;
  }

  return v0[12];
}

uint64_t sub_10044838C()
{
  if (v0[3])
  {
    v1 = 0;
    v2 = 0;
    return v2 | v1;
  }

  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0)
  {
    goto LABEL_6;
  }

  v1 = v0[9];
  if (v1 != 1)
  {
    v3 = type metadata accessor for State(0);
    if (v0[*(v3 + 84)] == 1 && v0[*(v3 + 88)] != 1)
    {
      goto LABEL_6;
    }

    sub_1007A3854();
    sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
    if (sub_1007A20D4())
    {
      v1 = 1;
      goto LABEL_14;
    }

    if (v0[11])
    {
LABEL_6:
      v1 = 1;
      goto LABEL_14;
    }

    v1 = v0[12];
  }

LABEL_14:
  if (v0[4])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v1;
}

uint64_t sub_1004484E8()
{
  if (v0[3] & 1) != 0 || (v0[9])
  {
    return 0;
  }

  v2 = type metadata accessor for State(0);
  if (v0[*(v2 + 84)] == 1 && (v0[*(v2 + 92)] & 1) != 0)
  {
    return 1;
  }

  if (v0[10])
  {
    return 1;
  }

  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
  if (sub_1007A20D4() & 1) != 0 || (v0[11])
  {
    return 1;
  }

  else
  {
    return v0[12];
  }
}

uint64_t sub_1004485D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044863C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE3A98);
  sub_100008B98(v0, qword_100AE3A98);
  sub_10001389C();
  return sub_1007A3404();
}

void sub_1004486B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1007A2214();
  v2 = [v0 BOOLForKey:v1];

  byte_100AE3AB0 = v2;
}

uint64_t sub_100448744()
{
  result = sub_1007A3CE4();
  qword_100AE3AB8 = result;
  unk_100AE3AC0 = v1;
  return result;
}

uint64_t sub_10044876C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7] || a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10] || a1[11] != a2[11] || a1[12] != a2[12])
  {
    return 0;
  }

  v5 = type metadata accessor for State(0);
  if ((sub_1007A3824() & 1) != 0 && (sub_1007A3824() & 1) != 0 && (sub_1007A3824() & 1) != 0 && a1[v5[20]] == a2[v5[20]] && a1[v5[21]] == a2[v5[21]] && a1[v5[22]] == a2[v5[22]])
  {
    v6 = a1[v5[23]] ^ a2[v5[23]] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10044893C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044899C()
{
  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
  return sub_1007A20D4() & 1;
}

uint64_t sub_100448A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE3CA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100448A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE3CB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100448B0C(uint64_t a1)
{
  v4 = *(sub_1007A3854() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_10044737C(a1, v6, v7, v1 + v5, v8);
}

void sub_100448C2C()
{
  sub_1001F1160(&unk_100AD67F0);

  sub_1007A2764();
}

uint64_t sub_100448C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100448CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100448D34()
{
  result = sub_10079E404();
  v1 = 10.0;
  if (result)
  {
    v1 = 20.0;
  }

  qword_100B23378 = *&v1;
  return result;
}

uint64_t sub_100448D64()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE3CD8);
  sub_100008B98(v0, qword_100AE3CD8);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

double sub_100448E70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_10044900C(char *a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = *(v4 + 16);
  (v11)(&v14 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  sub_10079B964();
  v12 = *(v4 + 8);
  v12(a1, v3);
  return v12(v10, v3);
}

uint64_t sub_100449170()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

char *ChromeStyle.init()()
{
  v0 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v0 - 8);
  v130 = &v103 - v1;
  v2 = sub_10079D4D4();
  v128 = *(v2 - 8);
  v129 = v2;
  __chkstk_darwin(v2);
  v127 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AD50E0);
  v125 = *(v4 - 8);
  v126 = v4;
  __chkstk_darwin(v4);
  v124 = &v103 - v5;
  v123 = sub_1001F1160(&qword_100AE3CF0);
  v136 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v103 - v6;
  v121 = sub_10079EDE4();
  v135 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v119 = &v103 - v9;
  v132 = sub_1001F1160(&qword_100AE3CF8);
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v118 = &v103 - v10;
  v117 = sub_10079ED74();
  v133 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v103 - v13;
  v114 = sub_1001F1160(&qword_100AE3D00);
  v113 = *(v114 - 1);
  __chkstk_darwin(v114);
  v15 = &v103 - v14;
  v112 = sub_1001F1160(&qword_100AE3D08);
  v111 = *(v112 - 1);
  __chkstk_darwin(v112);
  v110 = &v103 - v16;
  v109 = sub_1001F1160(&qword_100AE3D10);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v103 - v17;
  v18 = sub_10079CEE4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v106 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v105 = &v103 - v22;
  v104 = sub_1001F1160(&qword_100AE3D18);
  v23 = *(v104 - 8);
  __chkstk_darwin(v104);
  v25 = &v103 - v24;
  v26 = sub_10079BC44();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v33 = &v103 - v32;
  v34 = OBJC_IVAR___REChromeStyle__colorScheme;
  (*(v27 + 104))(&v103 - v32, enum case for ColorScheme.light(_:), v26, v31);
  (*(v27 + 16))(v29, v33, v26);
  sub_10079B964();
  (*(v27 + 8))(v33, v26);
  v35 = v131;
  (*(v23 + 32))(&v131[v34], v25, v104);
  v36 = OBJC_IVAR___REChromeStyle__verticalSizeClass;
  v37 = v105;
  (*(v19 + 104))(v105, enum case for UserInterfaceSizeClass.regular(_:), v18);
  (*(v19 + 16))(v106, v37, v18);
  v38 = v107;
  sub_10079B964();
  (*(v19 + 8))(v37, v18);
  v39 = v35;
  (*(v108 + 32))(&v35[v36], v38, v109);
  v40 = OBJC_IVAR___REChromeStyle__statusBarHeight;
  v138 = 0x4046000000000000;
  v41 = v110;
  sub_10079B964();
  (*(v111 + 32))(&v35[v40], v41, v112);
  v42 = OBJC_IVAR___REChromeStyle__pageBackgroundColor;
  v138 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_10079B964();
  v43 = *(v113 + 32);
  v44 = v114;
  v43(&v39[v42], v15, v114);
  v45 = OBJC_IVAR___REChromeStyle__pageTextColor;
  v138 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_10079B964();
  v43(&v39[v45], v15, v44);
  v46 = OBJC_IVAR___REChromeStyle__themeSeparatorColor;
  v138 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  sub_10079B964();
  v43(&v39[v46], v15, v44);
  v47 = OBJC_IVAR___REChromeStyle__themeSecondaryLabel;
  v138 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  sub_10079B964();
  v43(&v39[v47], v15, v44);
  v48 = OBJC_IVAR___REChromeStyle__secondaryButtonLabelColor;
  v138 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_10079B964();
  v43(&v39[v48], v15, v44);
  v49 = OBJC_IVAR___REChromeStyle__secondaryButtonFillColor;
  v138 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  sub_10079B964();
  v43(&v39[v49], v15, v44);
  v113 = OBJC_IVAR___REChromeStyle__buttonStyle;
  v50 = v115;
  _s5Books11ChromeStyleC015_buttonDisabledC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV06ButtonC0VGvpfi_0();
  v51 = v133;
  v52 = *(v133 + 16);
  v53 = v116;
  v54 = v117;
  v52(v116, v50, v117);
  v112 = v52;
  v55 = v118;
  sub_10079B964();
  v114 = *(v51 + 8);
  (v114)(v50, v54);
  v133 = v51 + 8;
  v111 = *(v134 + 32);
  v134 += 32;
  v56 = v55;
  v57 = v55;
  v58 = v132;
  (v111)(&v39[v113], v56, v132);
  v113 = OBJC_IVAR___REChromeStyle__buttonDisabledStyle;
  _s5Books11ChromeStyleC015_buttonDisabledC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV06ButtonC0VGvpfi_0();
  v52(v53, v50, v54);
  sub_10079B964();
  v59 = v114;
  (v114)(v50, v54);
  v60 = v58;
  v61 = v111;
  (v111)(&v39[v113], v57, v60);
  v62 = OBJC_IVAR___REChromeStyle__secondaryButtonStyle;
  _s5Books11ChromeStyleC015_buttonDisabledC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV06ButtonC0VGvpfi_0();
  v112(v53, v50, v54);
  sub_10079B964();
  v59(v50, v54);
  v61(&v39[v62], v57, v132);
  v63 = OBJC_IVAR___REChromeStyle__downloadProgressStyle;
  v64 = v119;
  _s5Books11ChromeStyleC016_downloadSpinnerC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV08ProgressC0VGvpfi_0();
  v65 = v135;
  v134 = *(v135 + 16);
  v66 = v120;
  v67 = v121;
  (v134)(v120, v64, v121);
  v68 = v122;
  sub_10079B964();
  v69 = *(v65 + 8);
  v135 = v65 + 8;
  v69(v64, v67);
  v70 = *(v136 + 32);
  v136 += 32;
  v71 = v131;
  v72 = &v131[v63];
  v73 = v68;
  v74 = v68;
  v75 = v123;
  v70(v72, v73, v123);
  v76 = OBJC_IVAR___REChromeStyle__downloadSpinnerStyle;
  _s5Books11ChromeStyleC016_downloadSpinnerC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV08ProgressC0VGvpfi_0();
  (v134)(v66, v64, v67);
  sub_10079B964();
  v69(v64, v67);
  v70(&v71[v76], v74, v75);
  v77 = OBJC_IVAR___REChromeStyle__isLeftMenu;
  LOBYTE(v138) = 0;
  v78 = v124;
  sub_10079B964();
  v79 = *(v125 + 32);
  v80 = &v71[v77];
  v81 = v71;
  v82 = v126;
  v79(v80, v78, v126);
  v83 = OBJC_IVAR___REChromeStyle__isDarkTheme;
  LOBYTE(v138) = 0;
  sub_10079B964();
  v79(&v81[v83], v78, v82);
  v84 = OBJC_IVAR___REChromeStyle__themeHasDarkBackground;
  LOBYTE(v138) = 0;
  sub_10079B964();
  v79(&v81[v84], v78, v82);
  *&v81[OBJC_IVAR___REChromeStyle_menuPositionObserver] = 0;
  v136 = OBJC_IVAR___REChromeStyle_controlFont;
  v85 = v127;
  v86 = v128;
  v135 = *(v128 + 104);
  v87 = v129;
  (v135)(v127, enum case for Font.TextStyle.body(_:), v129);
  v88 = sub_10079D3A4();
  v134 = *(*(v88 - 8) + 56);
  v89 = v130;
  (v134)(v130, 1, 1, v88);
  v90 = sub_10079D434();
  sub_100007840(v89, &unk_100AD1FC0);
  v91 = *(v86 + 8);
  v91(v85, v87);
  *&v81[v136] = v90;
  v92 = OBJC_IVAR___REChromeStyle_controlSubtitleFont;
  (v135)(v85, enum case for Font.TextStyle.caption(_:), v87);
  (v134)(v89, 1, 1, v88);
  v93 = sub_10079D434();
  sub_100007840(v89, &unk_100AD1FC0);
  v91(v85, v87);
  *&v81[v92] = v93;
  v94 = type metadata accessor for ChromeStyle();
  v137.receiver = v81;
  v137.super_class = v94;
  v95 = objc_msgSendSuper2(&v137, "init");
  sub_10000A7C4(0, &qword_100ADC810);
  v96 = v95;
  v97 = sub_1007A2A04();
  LOBYTE(v86) = [v97 BKMenuOnLeft];

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v138) = v86;
  v98 = v96;
  sub_10079B9B4();
  v99 = sub_1007A2A04();
  v138 = v99;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = sub_100796894();

  v101 = *&v98[OBJC_IVAR___REChromeStyle_menuPositionObserver];
  *&v98[OBJC_IVAR___REChromeStyle_menuPositionObserver] = v100;

  return v98;
}

uint64_t type metadata accessor for ChromeStyle()
{
  result = qword_100AE3DD8;
  if (!qword_100AE3DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044A328()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001F1160(&qword_100AEF300);
    sub_100796884();
    if (v2 == 2)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9B4();
    }
  }
}

uint64_t sub_10044A40C(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v3 = sub_10079EDE4();
  v86 = *(v3 - 8);
  v87 = v3;
  __chkstk_darwin(v3);
  v85 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = v76 - v6;
  v82 = sub_10079ED74();
  v89 = *(v82 - 8);
  __chkstk_darwin(v82);
  v83 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = v76 - v9;
  v10 = sub_10079CEE4();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v80 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = v76 - v13;
  v14 = sub_10079BC44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v76 - v19;
  swift_getKeyPath();
  v76[2] = OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
  v91 = a2;
  v76[1] = sub_10044DB90();
  sub_100797A14();

  v21 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v20, a2 + v21, v14);
  swift_getKeyPath();
  swift_getKeyPath();
  v22(v17, v20, v14);
  v23 = v76[3];
  sub_10079B9B4();
  (*(v15 + 8))(v20, v14);
  swift_getKeyPath();
  v90 = a2;
  sub_100797A14();

  v24 = *(a2 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
  v25 = sub_10079DEA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = v25;
  v26 = v23;
  sub_10079B9B4();
  swift_getKeyPath();
  v90 = a2;
  sub_100797A14();

  v27 = *(a2 + OBJC_IVAR____TtC5Books19BookReaderViewModel__textColor);
  v28 = sub_10079DEA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = v28;
  v29 = v26;
  sub_10079B9B4();
  v30 = [objc_opt_self() currentTraitCollection];
  v31 = [v30 verticalSizeClass];

  v33 = v77;
  v32 = v78;
  v34 = &enum case for UserInterfaceSizeClass.regular(_:);
  if (v31 != 2)
  {
    v34 = &enum case for UserInterfaceSizeClass.compact(_:);
  }

  v35 = v79;
  (*(v78 + 104))(v77, *v34, v79);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v32;
  v37 = *(v32 + 16);
  v38 = v35;
  v37(v80, v33, v35);
  v39 = v29;
  sub_10079B9B4();
  (*(v36 + 8))(v33, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v40 = v90;
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = v40;
  v41 = v39;
  sub_10079B9B4();
  v42 = sub_10079EE94();
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = v42;
  v43 = v41;
  sub_10079B9B4();
  v44 = sub_10079EE04();
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = v44;
  v45 = v43;
  sub_10079B9B4();
  v46 = v81;
  sub_10079EEC4();
  v47 = sub_10079ED64();
  v48 = v89;
  v49 = *(v89 + 8);
  v50 = v82;
  v49(v46, v82);
  v80 = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = v47;
  v51 = v45;
  sub_10079B9B4();
  sub_10079EEC4();
  v52 = sub_10079ED54();
  v49(v46, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = v52;
  v53 = v51;
  sub_10079B9B4();
  sub_10079ED84();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v48 + 16;
  v55 = *(v48 + 16);
  v89 = v54;
  v56 = v83;
  v55(v83, v46, v50);
  v57 = v53;
  sub_10079B9B4();
  v58 = v80;
  (v80)(v46, v50);
  sub_10079EE84();
  swift_getKeyPath();
  swift_getKeyPath();
  v55(v56, v46, v50);
  v59 = v57;
  sub_10079B9B4();
  v58(v46, v50);
  sub_10079EEC4();
  swift_getKeyPath();
  swift_getKeyPath();
  v55(v56, v46, v50);
  v60 = v59;
  sub_10079B9B4();
  v58(v46, v50);
  v61 = v84;
  sub_10079EED4();
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = v85;
  v62 = v86;
  v89 = *(v86 + 16);
  v64 = v87;
  (v89)(v85, v61, v87);
  v65 = v60;
  sub_10079B9B4();
  v66 = *(v62 + 8);
  v66(v61, v64);
  sub_10079EEB4();
  swift_getKeyPath();
  swift_getKeyPath();
  (v89)(v63, v61, v64);
  v67 = v65;
  sub_10079B9B4();
  v66(v61, v64);
  LOBYTE(v49) = sub_10079EE44();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v90) = v49 & 1;
  v68 = v67;
  sub_10079B9B4();
  sub_10079EF04();
  v69 = sub_10079EF74();
  v71 = v70;
  v72 = 1;
  if (v69 != sub_10079EF74() || v71 != v73)
  {
    v72 = sub_1007A3AB4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v90) = v72 & 1;
  v74 = v68;
  return sub_10079B9B4();
}

uint64_t ChromeStyle.accentColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.dark(_:), v0);
  v7 = sub_10079BC34();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v10 = [objc_opt_self() bc_booksKeyColor];
  return sub_10079DEA4();
}

BOOL ChromeStyle.isRightMenu.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return (v1 & 1) == 0;
}

double ChromeStyle.menuBottomInset.getter()
{
  v0 = sub_10079CEE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for UserInterfaceSizeClass.compact(_:), v0);
  v7 = sub_10079CED4();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  result = 20.0;
  if (v7)
  {
    return 17.0;
  }

  return result;
}

double ChromeStyle.floatingButtonTapMargin(targetSize:)(double a1)
{
  if (qword_100AD17D0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = (a1 - *&static REConstants.floatingButtonHeight) * 0.5;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t ChromeStyle.secondaryLabelColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  v7 = sub_10079BC34();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v9 = sub_10079DE24();

  return v9;
}

uint64_t ChromeStyle.labelBlendMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
  v9 = sub_10079BC34();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = sub_10079E534();
  v12 = &enum case for BlendMode.plusDarker(_:);
  if ((v9 & 1) == 0)
  {
    v12 = &enum case for BlendMode.plusLighter(_:);
  }

  return (*(*(v11 - 8) + 104))(a1, *v12, v11);
}

uint64_t ChromeStyle.controlBackgroundColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t ChromeStyle.disabledMaskColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t ChromeStyle.controlContrastForegroundColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t sub_10044BDD0(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v5 + 104))(v7, enum case for ColorScheme.light(_:), v4);
  v11 = sub_10079BC34();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = (v12)(v10, v4);
  if (v11)
  {
    return a1(v13);
  }

  else
  {
    return a2(v13);
  }
}

uint64_t ChromeStyle.contentFloatingSecondaryTextColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t ChromeStyle.controlContrastBackgroundColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t ChromeStyle.orientationLockHintForegroundColor(locked:)(char a1)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  if (a1)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
    v9 = sub_10079BC34();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    if (v9)
    {
      return _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }
  }

  return _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
}

uint64_t ChromeStyle.orientationLockHintBackgroundColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t sub_10044C604(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_10079DEA4();
}

uint64_t ChromeStyle.materialColor(primary:)(char a1)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  if ((a1 & 1) == 0)
  {
    return sub_10079DDC4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
  v9 = sub_10079BC34();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    return sub_10079DDC4();
  }

  _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v11 = sub_10079DE24();

  return v11;
}

uint64_t sub_10044C804(char a1)
{
  v2 = sub_1001F1160(&qword_100AE3E18);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_10079BC44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v10 = *(v3 + 56);
  (*(v7 + 32))(v5, v9, v6);
  v5[v10] = a1;
  v11 = (*(v7 + 88))(v5, v6);
  if (v11 == enum case for ColorScheme.light(_:))
  {
    (*(v7 + 8))(v5, v6);
    if (a1)
    {
      return 12;
    }

    else
    {
      return 17;
    }
  }

  else if (v11 == enum case for ColorScheme.dark(_:))
  {
    (*(v7 + 8))(v5, v6);
    if (a1)
    {
      return 17;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    if (qword_100AD1650 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AE3CD8);
    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "unknown material environment", v16, 2u);
    }

    sub_100007840(v5, &qword_100AE3E18);
    return 7;
  }
}

uint64_t ChromeStyle.formElementColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  v7 = sub_10079BC34();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    return sub_10079DE54();
  }
}

uint64_t ChromeStyle.checkmarkIconColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

id ChromeStyle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeStyle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10044D210@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChromeStyle();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t sub_10044D250@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10044D2D0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

void sub_10044D398()
{
  sub_10044D654(319, &qword_100AE3DE8, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10044D654(319, &qword_100AE3DF0, &type metadata accessor for UserInterfaceSizeClass);
    if (v1 <= 0x3F)
    {
      sub_100205C6C(319, &qword_100AE3DF8);
      if (v2 <= 0x3F)
      {
        sub_100205C6C(319, &qword_100AE3E00);
        if (v3 <= 0x3F)
        {
          sub_10044D654(319, &qword_100AE3E08, &type metadata accessor for BookThemeEntity.ButtonStyle);
          if (v4 <= 0x3F)
          {
            sub_10044D654(319, &qword_100AE3E10, &type metadata accessor for BookThemeEntity.ProgressStyle);
            if (v5 <= 0x3F)
            {
              sub_100205C6C(319, &qword_100AEB4D0);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10044D654(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10079B9D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_10044D6A8@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10044D728(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10044D840(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_10079B9B4();
}

uint64_t sub_10044D980()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_10044DA20(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = *(v8 + 16);
  v14(&v18 - v12, a1, v7);
  v15 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v14(v11, v13, v7);
  v16 = v15;
  sub_10079B9B4();
  return (*(v8 + 8))(v13, v7);
}

unint64_t sub_10044DB90()
{
  result = qword_100AF2550;
  if (!qword_100AF2550)
  {
    type metadata accessor for BookReaderViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2550);
  }

  return result;
}

uint64_t type metadata accessor for ReadingSettingsView()
{
  result = qword_100AE3ED0;
  if (!qword_100AE3ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044DC6C()
{
  sub_10044DFB4();
  if (v0 <= 0x3F)
  {
    sub_10044E0FC(319, &qword_100AE3EE8, &type metadata accessor for ReadingSettingsViewModel, &type metadata accessor for Bindable);
    if (v1 <= 0x3F)
    {
      sub_10044E018();
      if (v2 <= 0x3F)
      {
        type metadata accessor for REActionMenuState(319);
        if (v3 <= 0x3F)
        {
          sub_10044E0FC(319, &qword_100ADB690, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100247C8C();
            if (v5 <= 0x3F)
            {
              sub_10024BB20(319, &qword_100AD6F10, &unk_100ADB6B0, &unk_100816980, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_10044E0AC(319, &qword_100AD8BE0, &type metadata for Bool, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_10044E0AC(319, &qword_100AE3F00, &type metadata for Bool, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_10044E0AC(319, &qword_100AD6F30, &type metadata for CGFloat, &type metadata accessor for State);
                    if (v9 <= 0x3F)
                    {
                      sub_10044E0FC(319, &qword_100AE3F10, type metadata accessor for UIDeviceOrientation, &type metadata accessor for State);
                      if (v10 <= 0x3F)
                      {
                        sub_10044E0FC(319, &unk_100AE3F18, type metadata accessor for BrightnessController, &type metadata accessor for Bindable);
                        if (v11 <= 0x3F)
                        {
                          sub_10024BBD0();
                          if (v12 <= 0x3F)
                          {
                            sub_10024BB20(319, &qword_100AE3F28, &unk_100AE3F30, &unk_100826870, &type metadata accessor for State);
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10044DFB4()
{
  result = qword_100AE3EE0;
  if (!qword_100AE3EE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AE3EE0);
  }

  return result;
}

void sub_10044E018()
{
  if (!qword_100AE3EF0)
  {
    type metadata accessor for OrientationLockHintViewModel();
    sub_100460EB4(&qword_100AD8CC8, type metadata accessor for OrientationLockHintViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE3EF0);
    }
  }
}

void sub_10044E0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10044E0FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10044E17C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a4;
  v7 = sub_100796CF4();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = sub_1007A21D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = sub_1001F1160(&qword_100AE4570);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v35 - v21;
  sub_1000077D8(v4, &v35 - v21, &qword_100AE4528);
  v22[*(v20 + 44)] = a1;
  if (a3)
  {
    v23 = a3;
    v24 = v40;
  }

  else
  {
    sub_1007A2154();
    v35 = v11;
    sub_100796C94();
    v25 = *(v13 + 16);
    v36 = v12;
    v25(v15, v18, v12);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v28 = v38;
    v29 = v11;
    v30 = v39;
    (*(v38 + 16))(v37, v29, v39);
    v24 = sub_1007A22D4();
    v23 = v31;
    (*(v28 + 8))(v35, v30);
    (*(v13 + 8))(v18, v36);
  }

  v32 = v41;
  sub_10020B3C8(v22, v41, &qword_100AE4570);
  v33 = v32 + *(sub_1001F1160(&qword_100AE4530) + 36);
  *v33 = (a1 & 1) == 0;
  *(v33 + 8) = v24;
  *(v33 + 16) = v23;
}

uint64_t sub_10044E4EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007A0444();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10044E544()
{
  v0 = sub_10079C3D4();
  sub_100009A38(v0, qword_100AE3E20);
  v1 = sub_100008B98(v0, qword_100AE3E20);
  if (qword_100AD1648 != -1)
  {
    swift_once();
  }

  v2 = qword_100B23378;
  v3 = *(v0 + 20);
  v4 = enum case for RoundedCornerStyle.continuous(_:);
  v5 = sub_10079C9E4();
  result = (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  *v1 = v2;
  *(v1 + 1) = v2;
  return result;
}

uint64_t sub_10044E630@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB730);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReadingSettingsView();
  sub_1000077D8(v1 + *(v10 + 44), v9, &unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10044E838@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ReadingSettingsView();
  sub_1000077D8(v1 + *(v10 + 52), v9, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10044EA20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ReadingSettingsView();
  sub_1000077D8(v1 + *(v10 + 56), v9, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10044EC08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v118 = sub_1001F1160(&unk_100AE3FB0);
  __chkstk_darwin(v118);
  v117 = v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v115 = v101 - v5;
  v6 = sub_10079C0E4();
  v133 = *(v6 - 8);
  v134 = v6;
  __chkstk_darwin(v6);
  v132 = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = v101 - v9;
  v102 = sub_1001F1160(&qword_100AD53B0);
  __chkstk_darwin(v102);
  v116 = v101 - v10;
  v11 = sub_10079D074();
  v129 = *(v11 - 8);
  v130 = v11;
  __chkstk_darwin(v11);
  v128 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReadingSettingsView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v123 = sub_1001F1160(&qword_100AE3FC0);
  v16 = *(v123 - 1);
  __chkstk_darwin(v123);
  v18 = v101 - v17;
  v122 = (sub_1001F1160(&qword_100AE3FC8) - 8);
  __chkstk_darwin(v122);
  v121 = v101 - v19;
  v137 = sub_1001F1160(&qword_100AE3FD0);
  __chkstk_darwin(v137);
  v138 = v101 - v20;
  v127 = sub_1001F1160(&qword_100AE3FD8);
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v139 = v101 - v21;
  v136 = sub_1001F1160(&qword_100AE3FE0);
  v126 = *(v136 - 8);
  __chkstk_darwin(v136);
  v125 = v101 - v22;
  v105 = sub_1001F1160(&qword_100AE3FE8);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v135 = v101 - v23;
  v109 = sub_1001F1160(&qword_100AE3FF0);
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v103 = v101 - v24;
  v108 = sub_1001F1160(&qword_100AE3FF8);
  __chkstk_darwin(v108);
  v106 = v101 - v25;
  v26 = sub_1001F1160(&qword_100AE4000);
  __chkstk_darwin(v26 - 8);
  v111 = v101 - v27;
  v110 = sub_1001F1160(&qword_100AE4008);
  __chkstk_darwin(v110);
  v114 = v101 - v28;
  v112 = sub_1001F1160(&qword_100AE4010);
  __chkstk_darwin(v112);
  v113 = v101 - v29;
  v119 = v13;
  v30 = *(v13 + 96);
  v31 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = (v1 + v30);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = v32[2];
  *&v142 = v33;
  BYTE8(v142) = v34;
  *&v143 = v35;
  v101[2] = sub_1001F1160(&qword_100AE4018);
  sub_10079DFF4();
  v36 = v140;
  if (v141)
  {
    v36 = 320.0;
  }

  sub_10044FD4C(v18, fmin(v36, 768.0));
  sub_10045FFF4(v1, v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
  v37 = *(v14 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = swift_allocObject();
  sub_100460DB0(v31, v39 + v38, type metadata accessor for ReadingSettingsView);
  v40 = *(v16 + 32);
  v41 = v121;
  v40(v121, v18, v123);
  v42 = (v41 + *(v122 + 11));
  *v42 = sub_1004588E4;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  sub_10045FFF4(v1, v31, type metadata accessor for ReadingSettingsView);
  v43 = swift_allocObject();
  sub_100460DB0(v31, v43 + v38, type metadata accessor for ReadingSettingsView);
  v44 = v41;
  v45 = v138;
  sub_10020B3C8(v44, v138, &qword_100AE3FC8);
  v46 = (v45 + *(v137 + 36));
  *v46 = 0;
  v46[1] = 0;
  v46[2] = sub_1004588FC;
  v46[3] = v43;
  LOBYTE(v45) = sub_10079D254();
  sub_10079D264();
  sub_10079D264();
  if (sub_10079D264() != v45)
  {
    sub_10079D264();
  }

  v123 = type metadata accessor for ReadingSettingsView;
  sub_10045FFF4(v2, v31, type metadata accessor for ReadingSettingsView);
  v47 = swift_allocObject();
  v122 = type metadata accessor for ReadingSettingsView;
  sub_100460DB0(v31, v47 + v38, type metadata accessor for ReadingSettingsView);
  sub_10079E474();
  v48 = v2;
  v49 = v38 + v15;
  v50 = sub_100458994();
  v51 = (v37 + 16) & ~v37;
  v52 = v137;
  v53 = v138;
  sub_10079D9E4();

  sub_100007840(v53, &qword_100AE3FD0);
  type metadata accessor for CGSize(0);
  v55 = v54;
  v138 = v48;
  sub_10045FFF4(v48, v31, v123);
  v123 = v37;
  v101[1] = v49;
  v56 = swift_allocObject();
  v121 = v31;
  sub_100460DB0(v31, v56 + v38, v122);
  *&v142 = v52;
  *(&v142 + 1) = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = sub_100460EB4(&unk_100AE40C0, type metadata accessor for CGSize);
  v58 = v125;
  v59 = v127;
  v60 = v139;
  sub_10079D884();

  (*(v124 + 8))(v60, v59);
  v61 = v128;
  sub_10079D064();
  *&v142 = v59;
  *(&v142 + 1) = v55;
  *&v143 = OpaqueTypeConformance2;
  *(&v143 + 1) = v100;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v136;
  v139 = v62;
  sub_10079D9A4();
  (*(v129 + 8))(v61, v130);
  (*(v126 + 8))(v58, v63);
  v65 = v133;
  v64 = v134;
  v66 = *(v133 + 104);
  v67 = v131;
  v66(v131, enum case for DynamicTypeSize.xSmall(_:), v134);
  v68 = v132;
  v66(v132, enum case for DynamicTypeSize.xxxLarge(_:), v64);
  sub_100460EB4(&qword_100AD6D58, &type metadata accessor for DynamicTypeSize);
  result = sub_1007A20F4();
  if (result)
  {
    v70 = *(v65 + 32);
    v71 = v115;
    v70(v115, v67, v64);
    v72 = v118;
    v70((v71 + *(v118 + 48)), v68, v64);
    v137 = v51;
    v73 = v117;
    sub_1000077D8(v71, v117, &unk_100AE3FB0);
    v74 = *(v72 + 48);
    v75 = v116;
    v70(v116, v73, v64);
    v76 = *(v65 + 8);
    v76(v73 + v74, v64);
    sub_10020B3C8(v71, v73, &unk_100AE3FB0);
    v70((v75 + *(v102 + 36)), (v73 + *(v72 + 48)), v64);
    v76(v73, v64);
    *&v142 = v136;
    *(&v142 + 1) = v139;
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0);
    v77 = v103;
    v78 = v105;
    v79 = v135;
    sub_10079D7E4();
    sub_100007840(v75, &qword_100AD53B0);
    (*(v104 + 8))(v79, v78);
    v80 = v138;
    v81 = v121;
    sub_10045FFF4(v138, v121, type metadata accessor for ReadingSettingsView);
    v82 = swift_allocObject();
    sub_100460DB0(v81, v82 + v137, type metadata accessor for ReadingSettingsView);
    v83 = v106;
    (*(v107 + 32))(v106, v77, v109);
    v84 = (v83 + *(v108 + 36));
    *v84 = sub_100458E34;
    v84[1] = v82;
    sub_100458EA4();
    v85 = v111;
    sub_10079DA54();
    sub_100007840(v83, &qword_100AE3FF8);
    v86 = v119;
    v87 = v80 + *(v119 + 100);
    v88 = *v87;
    v89 = *(v87 + 8);
    v90 = *(v87 + 16);
    *&v142 = v88;
    BYTE8(v142) = v89;
    *&v143 = v90;
    sub_10079DFF4();
    sub_10079E474();
    sub_10079BE54();
    v91 = v85;
    v92 = v114;
    sub_10020B3C8(v91, v114, &qword_100AE4000);
    v93 = (v92 + *(v110 + 36));
    v94 = v143;
    *v93 = v142;
    v93[1] = v94;
    v93[2] = v144;
    if (*(v80 + *(v86 + 28)))
    {
      v95 = 0x4028000000000000;
    }

    else
    {
      v95 = 0;
    }

    v96 = sub_10079D294();
    v97 = v113;
    sub_10020B3C8(v92, v113, &qword_100AE4008);
    v98 = v97 + *(v112 + 36);
    *v98 = v96;
    *(v98 + 8) = 0;
    *(v98 + 16) = v95;
    *(v98 + 24) = v95;
    *(v98 + 32) = v95;
    *(v98 + 40) = 0;
    v99 = v120;
    sub_10020B3C8(v97, v120, &qword_100AE4010);
    result = sub_1001F1160(&qword_100AE40E8);
    *(v99 + *(result + 36)) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10044FD4C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v265 = a1;
  v264 = sub_1001F1160(&qword_100AE4100);
  __chkstk_darwin(v264);
  v263 = &v217 - v5;
  v278 = sub_1001F1160(&unk_100AE3E50);
  v262 = *(v278 - 8);
  __chkstk_darwin(v278);
  v261 = &v217 - v6;
  v7 = sub_10079D074();
  v259 = *(v7 - 8);
  v260 = v7;
  __chkstk_darwin(v7);
  v258 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10079CF24();
  v256 = *(v9 - 8);
  v257 = v9;
  __chkstk_darwin(v9);
  v255 = &v217 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_10079E234();
  __chkstk_darwin(v254);
  v253 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_10079BC44();
  v281 = *(v276 - 8);
  __chkstk_darwin(v276);
  v275 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v274 = &v217 - v14;
  v236 = sub_10079E534();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v230 = &v217 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1001F1160(&qword_100AE4108);
  __chkstk_darwin(v228);
  v233 = &v217 - v16;
  v231 = sub_1001F1160(&qword_100AE4110);
  __chkstk_darwin(v231);
  v237 = &v217 - v17;
  v235 = sub_1001F1160(&qword_100AE4118);
  __chkstk_darwin(v235);
  v239 = &v217 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v232 = &v217 - v20;
  __chkstk_darwin(v21);
  v238 = &v217 - v22;
  v23 = sub_1001F1160(&qword_100AE4120);
  __chkstk_darwin(v23 - 8);
  v240 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v279 = (&v217 - v26);
  v27 = sub_1001F1160(&qword_100AE4128);
  __chkstk_darwin(v27 - 8);
  v280 = (&v217 - v28);
  v242 = sub_1001F1160(&qword_100AE4130);
  __chkstk_darwin(v242);
  v246 = &v217 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v241 = &v217 - v31;
  __chkstk_darwin(v32);
  v245 = &v217 - v33;
  v269 = sub_1001F1160(&qword_100AE4138);
  v229 = *(v269 - 8);
  __chkstk_darwin(v269);
  v223 = &v217 - v34;
  v35 = sub_1001F1160(&qword_100AE4140);
  __chkstk_darwin(v35 - 8);
  v244 = &v217 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v217 - v38;
  v40 = sub_1001F1160(&qword_100AE4148);
  __chkstk_darwin(v40 - 8);
  v243 = &v217 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v217 - v43;
  v45 = sub_1001F1160(&unk_100AE4150);
  __chkstk_darwin(v45 - 8);
  v273 = &v217 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v217 - v48;
  v247 = sub_1001F1160(&qword_100AE4050);
  __chkstk_darwin(v247);
  v51 = &v217 - v50;
  v249 = sub_1001F1160(&qword_100AE4038);
  __chkstk_darwin(v249);
  v248 = &v217 - v52;
  v53 = sub_1001F1160(&qword_100AE4030);
  v251 = *(v53 - 8);
  v252 = v53;
  __chkstk_darwin(v53);
  v250 = &v217 - v54;
  v55 = type metadata accessor for ReadingSettingsView();
  v267 = *(v55 - 8);
  __chkstk_darwin(v55);
  v266 = v56;
  v282 = &v217 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v57 - 8);
  v59 = &v217 - v58;
  v60 = *(v2 + *(v55 + 28));
  v61 = sub_1004522D4();
  v62 = 3.0;
  if (v61)
  {
    v62 = 6.0;
  }

  LODWORD(v227) = v60;
  if (v60)
  {
    v63 = 10.0;
  }

  else
  {
    v63 = 16.0;
  }

  v64 = 40.0;
  if (v60)
  {
    v64 = 24.0;
  }

  v225 = a2 - v64;
  v226 = v63;
  v65 = floor((a2 - v64 - (v62 + -1.0) * 10.0) / v62);
  v66 = 12.0;
  if (!v60)
  {
    v66 = 16.0;
  }

  v270 = v55;
  v67 = (v2 + *(v55 + 76));
  v68 = *v67;
  v69 = *(v67 + 1);
  v224 = v65;
  v70 = v65 - v66;
  v297 = v68;
  v298 = v69;
  sub_1001F1160(&qword_100AD7168);
  sub_10079DFF4();
  v283 = v2;
  v277 = v51;
  v268 = v39;
  if (*&v286 != v70)
  {
    v71 = sub_1007A2744();
    (*(*(v71 - 8) + 56))(v59, 1, 1, v71);
    v72 = v282;
    sub_10045FFF4(v2, v282, type metadata accessor for ReadingSettingsView);
    sub_1007A26F4();
    v73 = sub_1007A26E4();
    v74 = (*(v267 + 80) + 32) & ~*(v267 + 80);
    v75 = (v266 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = v73;
    *(v76 + 24) = &protocol witness table for MainActor;
    v77 = v76 + v74;
    v3 = v283;
    v78 = v72;
    v39 = v268;
    sub_100460DB0(v78, v77, type metadata accessor for ReadingSettingsView);
    *(v76 + v75) = v70;
    v79 = v76;
    v51 = v277;
    sub_1003457A0(0, 0, v59, &unk_100826A20, v79);
  }

  *v51 = sub_10079CB24();
  *(v51 + 1) = 0;
  v51[16] = 0;
  sub_100453250();
  *v44 = sub_10079CB24();
  *(v44 + 1) = 0x4028000000000000;
  v44[16] = 0;
  v80 = sub_1001F1160(&unk_100AE4160);
  sub_1004535B0(v3, &v44[*(v80 + 44)]);
  v81 = sub_100452C7C();
  v271 = v49;
  v272 = v44;
  if (v81)
  {
    v82 = v223;
    sub_10079E244();
    v83 = sub_10079D2B4();
    sub_10079BBA4();
    v84 = v269;
    v85 = v82 + *(v269 + 36);
    *v85 = v83;
    *(v85 + 8) = v86;
    *(v85 + 16) = v87;
    *(v85 + 24) = v88;
    *(v85 + 32) = v89;
    *(v85 + 40) = 0;
    sub_10020B3C8(v82, v39, &qword_100AE4138);
    v90 = 0;
  }

  else
  {
    v90 = 1;
    v84 = v269;
  }

  (*(v229 + 56))(v39, v90, 1, v84);
  v91 = sub_10079CB24();
  v92 = v280;
  *v280 = v91;
  v92[1] = 0;
  *(v92 + 16) = 0;
  v93 = v227;
  if (v227)
  {
    sub_10079E474();
    sub_10079BE54();
    LOBYTE(v337[0]) = 1;
    LOBYTE(v316) = v328;
    LOBYTE(v311) = v330;
    LOBYTE(v286) = 0;
    v297 = 0;
    LOBYTE(v298) = 1;
    v299 = v327;
    LOBYTE(v300) = v328;
    v301 = v329;
    LOBYTE(v302) = v330;
    v303 = v331;
    v304 = 0;
  }

  else
  {
    sub_10079E474();
    sub_10079BE54();
    LOBYTE(v337[0]) = 1;
    LOBYTE(v316) = v328;
    LOBYTE(v311) = v330;
    LOBYTE(v286) = 1;
    v297 = 0;
    LOBYTE(v298) = 1;
    v299 = v327;
    LOBYTE(v300) = v328;
    v301 = v329;
    LOBYTE(v302) = v330;
    v303 = v331;
    v304 = 1;
  }

  sub_1001F1160(&qword_100AD4988);
  sub_1001FA380();
  sub_10079CCA4();
  v94 = sub_10079CB24();
  v95 = v279;
  *v279 = v94;
  v95[1] = 0;
  *(v95 + 16) = 0;
  v229 = *(v270 + 20);
  v96 = v283;
  sub_10079E304();
  v269 = sub_1007A14D4();

  v97 = v282;
  sub_10045FFF4(v96, v282, type metadata accessor for ReadingSettingsView);
  v98 = *(v267 + 80);
  v99 = (v98 + 16) & ~v98;
  v100 = v99 + v266;
  v223 = swift_allocObject();
  sub_100460DB0(v97, &v223[v99], type metadata accessor for ReadingSettingsView);
  v222 = sub_10079D284();
  sub_10079BBA4();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  LOBYTE(v297) = 0;
  sub_10079E474();
  sub_10079BE54();
  LOBYTE(v337[0]) = 1;
  LOBYTE(v311) = v333;
  LOBYTE(v292) = v335;
  if (v93)
  {
    LOBYTE(v286) = 0;
    v297 = 0;
    LOBYTE(v298) = 1;
    v299 = v332;
    LOBYTE(v300) = v333;
    v301 = v334;
    LOBYTE(v302) = v335;
    v303 = v336;
    v304 = 0;
  }

  else
  {
    LOBYTE(v286) = 1;
    v297 = 0;
    LOBYTE(v298) = 1;
    v299 = v332;
    LOBYTE(v300) = v333;
    v301 = v334;
    LOBYTE(v302) = v335;
    v303 = v336;
    v304 = 1;
  }

  sub_1001F1160(&qword_100AD4988);
  sub_1001FA380();
  sub_10079CCA4();
  v109 = v274;
  v110 = v275;
  v111 = v282;
  sub_10045FFF4(v283, v282, type metadata accessor for ReadingSettingsView);
  v266 = v98;
  v227 = v100;
  v112 = swift_allocObject();
  v267 = (v98 + 16) & ~v98;
  sub_100460DB0(v111, v112 + v99, type metadata accessor for ReadingSettingsView);
  sub_1006DA238(sub_10045E4F0, v112, v337);
  sub_10044E630(v109);
  v113 = v281;
  v114 = v276;
  v219 = *(v281 + 104);
  v220 = v281 + 104;
  v219(v110, enum case for ColorScheme.dark(_:), v276);
  LOBYTE(v112) = sub_10079BC34();
  v115 = *(v113 + 8);
  v281 = v113 + 8;
  v115(v110, v114);
  v221 = v115;
  v115(v109, v114);
  v116 = v234;
  v117 = &enum case for BlendMode.plusLighter(_:);
  if ((v112 & 1) == 0)
  {
    v117 = &enum case for BlendMode.plusDarker(_:);
  }

  v118 = v230;
  v119 = v236;
  (*(v234 + 104))(v230, *v117, v236);
  v120 = sub_1001F1160(&qword_100AE4178);
  v218 = v280 + *(v120 + 44);
  v121 = sub_1001F1160(&qword_100AE4180);
  v122 = v279 + *(v121 + 44);
  v123 = v233;
  (*(v116 + 32))(&v233[*(v228 + 36)], v118, v119);
  v124 = v337[1];
  v125 = v337[3];
  v123[2] = v337[2];
  v123[3] = v125;
  v123[4] = v337[4];
  *v123 = v337[0];
  v123[1] = v124;
  LOBYTE(v119) = sub_10079D284();
  sub_10079BBA4();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v237;
  sub_10020B3C8(v123, v237, &qword_100AE4108);
  v135 = v134 + *(v231 + 36);
  *v135 = v119;
  *(v135 + 8) = v127;
  *(v135 + 16) = v129;
  *(v135 + 24) = v131;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  LOBYTE(v119) = sub_10079D2B4();
  sub_10079BBA4();
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v144 = v134;
  v145 = v232;
  sub_10020B3C8(v144, v232, &qword_100AE4110);
  v146 = v145 + *(v235 + 36);
  *v146 = v119;
  *(v146 + 8) = v137;
  *(v146 + 16) = v139;
  *(v146 + 24) = v141;
  *(v146 + 32) = v143;
  *(v146 + 40) = 0;
  v147 = v145;
  v148 = v238;
  sub_10020B3C8(v147, v238, &qword_100AE4118);
  v294 = v318;
  v295 = v319;
  v296 = v320;
  v292 = v316;
  v293 = v317;
  v149 = v239;
  sub_1000077D8(v148, v239, &qword_100AE4118);
  *&v286 = v269;
  v151 = v224;
  v150 = v225;
  *(&v286 + 1) = v225;
  *&v287 = v224;
  *(&v287 + 1) = 0x4024000000000000;
  v152 = v226;
  *&v288 = v226;
  *(&v288 + 1) = sub_10045E470;
  v153 = v223;
  *&v289 = v223;
  *(&v289 + 1) = 2;
  LOBYTE(v119) = v222;
  LOBYTE(v290) = v222;
  *(&v290 + 1) = *v321;
  DWORD1(v290) = *&v321[3];
  *(&v290 + 1) = v102;
  *&v291[0] = v104;
  *(&v291[0] + 1) = v106;
  *&v291[1] = v108;
  BYTE8(v291[1]) = 0;
  v154 = v287;
  *v122 = v286;
  *(v122 + 1) = v154;
  *(v122 + 89) = *(v291 + 9);
  v155 = v289;
  *(v122 + 2) = v288;
  *(v122 + 3) = v155;
  v156 = v291[0];
  *(v122 + 4) = v290;
  *(v122 + 5) = v156;
  v157 = v292;
  v158 = v293;
  v159 = v294;
  v160 = v295;
  v122[176] = v296;
  *(v122 + 9) = v159;
  *(v122 + 10) = v160;
  *(v122 + 7) = v157;
  *(v122 + 8) = v158;
  v161 = sub_1001F1160(&qword_100AE4188);
  sub_1000077D8(v149, &v122[*(v161 + 64)], &qword_100AE4118);
  sub_1000077D8(&v286, &v297, &qword_100AE4190);
  sub_100007840(v148, &qword_100AE4118);
  sub_100007840(v149, &qword_100AE4118);
  v297 = v269;
  v298 = v150;
  v299 = v151;
  v300 = 0x4024000000000000;
  v301 = v152;
  v302 = sub_10045E470;
  *&v303 = v153;
  *(&v303 + 1) = 2;
  v304 = v119;
  *v305 = *v321;
  *&v305[3] = *&v321[3];
  v306 = v102;
  v307 = v104;
  v308 = v106;
  v309 = v108;
  v310 = 0;
  sub_100007840(&v297, &qword_100AE4190);
  v313 = v324;
  v314 = v325;
  v315 = v326;
  v311 = v322;
  v312 = v323;
  v162 = v279;
  v163 = v240;
  sub_1000077D8(v279, v240, &qword_100AE4120);
  v164 = v314;
  v165 = v218;
  *(v218 + 2) = v313;
  *(v165 + 3) = v164;
  v165[64] = v315;
  v166 = v312;
  *v165 = v311;
  *(v165 + 1) = v166;
  v167 = v165;
  v168 = sub_1001F1160(&qword_100AE4198);
  sub_1000077D8(v163, &v167[*(v168 + 48)], &qword_100AE4120);
  sub_100007840(v162, &qword_100AE4120);
  sub_100007840(v163, &qword_100AE4120);
  v169 = *(v283 + *(v270 + 48));
  if (v169)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v170 = v169;
    v171 = v274;
    sub_10079B9A4();

    v172 = v275;
    v173 = v276;
    v219(v275, enum case for ColorScheme.light(_:), v276);
    sub_10079BC34();
    v174 = v172;
    v175 = v221;
    v221(v174, v173);
    v175(v171, v173);
    sub_10079DE54();

    v176 = sub_1001F1160(&qword_100AE41A0);
    v177 = &v277[*(v176 + 44)];
    v178 = sub_10079DE24();

    v179 = sub_10079D294();
    v180 = v241;
    sub_10020B3C8(v280, v241, &qword_100AE4128);
    v181 = v180 + *(v242 + 36);
    *v181 = v178;
    *(v181 + 8) = v179;
    v182 = v245;
    sub_10020B3C8(v180, v245, &qword_100AE4130);
    v183 = v273;
    sub_1000077D8(v271, v273, &unk_100AE4150);
    v184 = v243;
    sub_1000077D8(v272, v243, &qword_100AE4148);
    v185 = v268;
    v186 = v244;
    sub_1000077D8(v268, v244, &qword_100AE4140);
    v187 = v246;
    sub_1000077D8(v182, v246, &qword_100AE4130);
    sub_1000077D8(v183, v177, &unk_100AE4150);
    v188 = sub_1001F1160(&qword_100AE41A8);
    sub_1000077D8(v184, v177 + v188[12], &qword_100AE4148);
    sub_1000077D8(v186, v177 + v188[16], &qword_100AE4140);
    sub_1000077D8(v187, v177 + v188[20], &qword_100AE4130);
    sub_100007840(v182, &qword_100AE4130);
    sub_100007840(v185, &qword_100AE4140);
    sub_100007840(v272, &qword_100AE4148);
    sub_100007840(v271, &unk_100AE4150);
    sub_100007840(v187, &qword_100AE4130);
    sub_100007840(v186, &qword_100AE4140);
    sub_100007840(v184, &qword_100AE4148);
    sub_100007840(v273, &unk_100AE4150);
    KeyPath = swift_getKeyPath();
    v190 = enum case for RoundedCornerStyle.continuous(_:);
    v191 = sub_10079C9E4();
    (*(*(v191 - 8) + 104))(v253, v190, v191);
    sub_100460EB4(&qword_100AE41B0, &type metadata accessor for Capsule);
    v192 = v277;
    v193 = sub_10079E2F4();
    v194 = (v192 + *(sub_1001F1160(&qword_100AE4070) + 36));
    *v194 = KeyPath;
    v194[1] = v193;
    v195 = swift_getKeyPath();
    if (qword_100AD1660 != -1)
    {
      swift_once();
    }

    v196 = qword_100AE3E38;
    v197 = (v192 + *(sub_1001F1160(&qword_100AE4060) + 36));
    *v197 = v195;
    v197[1] = v196;

    v198 = sub_10079DDC4();
    v199 = sub_10079D294();
    v200 = v192 + *(v247 + 36);
    *v200 = v198;
    *(v200 + 8) = v199;
    v201 = v192;
    v202 = v255;
    sub_10079CF04();
    v203 = v283;
    v204 = v282;
    sub_10045FFF4(v283, v282, type metadata accessor for ReadingSettingsView);
    v205 = swift_allocObject();
    sub_100460DB0(v204, v205 + v267, type metadata accessor for ReadingSettingsView);
    sub_100458B60();
    v206 = v248;
    sub_10079D934();

    (*(v256 + 8))(v202, v257);
    sub_100007840(v201, &qword_100AE4050);
    v207 = v258;
    sub_10079D064();
    v208 = sub_1004605A8(&qword_100AE4040, &qword_100AE4038, &unk_100826940, sub_100458B60);
    v210 = v249;
    v209 = v250;
    sub_10079D9A4();
    (*(v259 + 8))(v207, v260);
    sub_100007840(v206, &qword_100AE4038);
    v211 = v261;
    v212 = v278;
    sub_10079E314();
    swift_getKeyPath();
    v213 = v263;
    sub_10079E334();

    (*(v262 + 8))(v211, v212);
    swift_getKeyPath();
    sub_10079E1E4();

    v214 = sub_100007840(v213, &qword_100AE4100);
    __chkstk_darwin(v214);
    *(&v217 - 2) = v203;
    v284 = v210;
    v285 = v208;
    swift_getOpaqueTypeConformance2();
    v215 = v252;
    sub_10079DAF4();

    return (*(v251 + 8))(v209, v215);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

double sub_100451AC4(double a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReadingSettingsView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = 768.0;
  if (a1 <= 768.0)
  {
    v13 = a1;
  }

  v14 = v13 + -20.0;
  v15 = a3 + *(v6 + 104);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v27 = v16;
  v28 = v17;
  v29 = v18;
  sub_1001F1160(&qword_100AE4018);
  sub_10079DFF4();
  if ((v26 & 1) != 0 || v14 != v25[1])
  {
    v19 = sub_1007A2744();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    sub_10045FFF4(a3, v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
    sub_1007A26F4();
    v20 = sub_1007A26E4();
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = &protocol witness table for MainActor;
    sub_100460DB0(v9, v23 + v21, type metadata accessor for ReadingSettingsView);
    *(v23 + v22) = v14;
    sub_1003457A0(0, 0, v12, &unk_1008269B0, v23);
  }

  return v14;
}

uint64_t sub_100451D38(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a1;
  *(v5 + 56) = a5;
  sub_1007A26F4();
  *(v5 + 72) = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_100451DD4, v7, v6);
}

uint64_t sub_100451DD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = (v2 + *(type metadata accessor for ReadingSettingsView() + 96));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = v3[2];
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  sub_1001F1160(&qword_100AE4018);
  sub_10079E004();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100451E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReadingSettingsView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  v13 = floor(*(a2 + 8));
  v14 = a3 + *(v6 + 108);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  sub_1001F1160(&qword_100AE4018);
  result = sub_10079DFF4();
  if ((v25 & 1) != 0 || v13 != v24[1])
  {
    v19 = sub_1007A2744();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    sub_10045FFF4(a3, v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
    sub_1007A26F4();
    v20 = sub_1007A26E4();
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = &protocol witness table for MainActor;
    sub_100460DB0(v9, v23 + v21, type metadata accessor for ReadingSettingsView);
    *(v23 + v22) = v13;
    sub_1003457A0(0, 0, v12, &unk_1008269A0, v23);
  }

  return result;
}

uint64_t sub_100452104(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a1;
  *(v5 + 56) = a5;
  sub_1007A26F4();
  *(v5 + 72) = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1004521A0, v7, v6);
}

uint64_t sub_1004521A0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = (v2 + *(type metadata accessor for ReadingSettingsView() + 100));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = v3[2];
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  sub_1001F1160(&qword_100AE4018);
  sub_10079E004();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100452268()
{
  sub_10045DB44();
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&unk_100AE40F0);
  return sub_10079E004();
}

uint64_t sub_1004522D4()
{
  v1 = sub_10079CEE4();
  v73 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1001F1160(&unk_100ADBB30);
  __chkstk_darwin(v72);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  __chkstk_darwin(v15);
  v70 = &v58 - v16;
  __chkstk_darwin(v17);
  v71 = &v58 - v18;
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  __chkstk_darwin(v22);
  v24 = &v58 - v23;
  v25 = type metadata accessor for ReadingSettingsView();
  v26 = *(v25 + 28);
  v74 = v0;
  if (*(v0 + v26) & 1) != 0 || (v29 = v25, v69 = v14, v63 = v11, v30 = [objc_opt_self() currentDevice], v31 = objc_msgSend(v30, "userInterfaceIdiom"), v30, (v68 = v31) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(), , , (v76))
  {
LABEL_2:
    v27 = 0;
    return v27 & 1;
  }

  v62 = v3;
  v32 = (v74 + *(v29 + 80));
  v33 = *v32;
  v34 = v32[1];
  v76 = *v32;
  v77 = v34;
  sub_1001F1160(&unk_100AE40F0);
  sub_10079DFF4();
  v67 = v5;
  if (v75 == 3)
  {
    v35 = 1;
  }

  else
  {
    v76 = v33;
    v77 = v34;
    sub_10079DFF4();
    v35 = v75 == 4;
  }

  v61 = v35;
  v36 = (v74 + *(v29 + 84));
  v37 = *v36;
  v38 = v36[1];
  v76 = *v36;
  v77 = v38;
  sub_10079DFF4();
  if (v75 == 3)
  {
    v39 = 1;
  }

  else
  {
    v76 = v37;
    v77 = v38;
    sub_10079DFF4();
    v39 = v75 == 4;
  }

  v60 = v39;
  v76 = v33;
  v77 = v34;
  sub_10079DFF4();
  if (v75 == 5)
  {
    v40 = 1;
  }

  else
  {
    v76 = v33;
    v77 = v34;
    sub_10079DFF4();
    v40 = v75 == 6;
  }

  v59 = v40;
  sub_10044E838(v24);
  v41 = v73;
  v65 = *(v73 + 104);
  v65(v21, enum case for UserInterfaceSizeClass.regular(_:), v1);
  v64 = *(v41 + 56);
  v64(v21, 0, 1, v1);
  v42 = *(v72 + 48);
  sub_1000077D8(v24, v8, &unk_100ADB6B0);
  sub_1000077D8(v21, &v8[v42], &unk_100ADB6B0);
  v43 = *(v41 + 48);
  v44 = v43(v8, 1, v1);
  v66 = v43;
  if (v44 == 1)
  {
    sub_100007840(v21, &unk_100ADB6B0);
    sub_100007840(v24, &unk_100ADB6B0);
    if (v43(&v8[v42], 1, v1) == 1)
    {
      v45 = v8;
LABEL_24:
      sub_100007840(v45, &unk_100ADB6B0);
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_20;
  }

  v46 = v71;
  sub_1000077D8(v8, v71, &unk_100ADB6B0);
  if (v43(&v8[v42], 1, v1) == 1)
  {
    sub_100007840(v21, &unk_100ADB6B0);
    sub_100007840(v24, &unk_100ADB6B0);
    (*(v73 + 8))(v46, v1);
LABEL_20:
    sub_100007840(v8, &unk_100ADBB30);
    goto LABEL_21;
  }

  v53 = v62;
  (*(v73 + 32))(v62, &v8[v42], v1);
  sub_100460EB4(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
  v58 = sub_1007A2124();
  v54 = *(v73 + 8);
  v54(v53, v1);
  sub_100007840(v21, &unk_100ADB6B0);
  sub_100007840(v24, &unk_100ADB6B0);
  v54(v71, v1);
  sub_100007840(v8, &unk_100ADB6B0);
  if (v58)
  {
    v27 = 1;
    return v27 & 1;
  }

LABEL_21:
  v47 = v70;
  sub_10044EA20(v70);
  v48 = v69;
  v65(v69, enum case for UserInterfaceSizeClass.compact(_:), v1);
  v64(v48, 0, 1, v1);
  v49 = *(v72 + 48);
  v50 = v67;
  sub_1000077D8(v47, v67, &unk_100ADB6B0);
  sub_1000077D8(v48, v50 + v49, &unk_100ADB6B0);
  v51 = v66;
  if (v66(v50, 1, v1) == 1)
  {
    sub_100007840(v48, &unk_100ADB6B0);
    sub_100007840(v47, &unk_100ADB6B0);
    if (v51(v50 + v49, 1, v1) == 1)
    {
      v45 = v50;
      goto LABEL_24;
    }

LABEL_27:
    sub_100007840(v50, &unk_100ADBB30);
    if (!v68)
    {
LABEL_33:
      v27 = v61 || v60 && v59;
      return v27 & 1;
    }

    goto LABEL_2;
  }

  v52 = v63;
  sub_1000077D8(v50, v63, &unk_100ADB6B0);
  if (v51(v50 + v49, 1, v1) == 1)
  {
    sub_100007840(v69, &unk_100ADB6B0);
    sub_100007840(v47, &unk_100ADB6B0);
    (*(v73 + 8))(v52, v1);
    goto LABEL_27;
  }

  v55 = v73;
  v56 = v62;
  (*(v73 + 32))(v62, v50 + v49, v1);
  sub_100460EB4(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
  v27 = sub_1007A2124();
  v57 = *(v55 + 8);
  v57(v56, v1);
  sub_100007840(v69, &unk_100ADB6B0);
  sub_100007840(v47, &unk_100ADB6B0);
  v57(v52, v1);
  sub_100007840(v50, &unk_100ADB6B0);
  if (!v68 && (v27 & 1) == 0)
  {
    goto LABEL_33;
  }

  return v27 & 1;
}

uint64_t sub_100452C7C()
{
  v0 = sub_10079CEE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F1160(&unk_100ADBB30);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v7 - 8);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&qword_100AE3E68);
  sub_10079E304();

  sub_10044EA20(v14);
  (*(v1 + 104))(v11, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_1000077D8(v14, v6, &unk_100ADB6B0);
  sub_1000077D8(v11, &v6[v15], &unk_100ADB6B0);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_1000077D8(v6, v24, &unk_100ADB6B0);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = v23;
      (*(v1 + 32))(v23, &v6[v15], v0);
      sub_100460EB4(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass);
      v19 = v24;
      v17 = sub_1007A2124();
      v20 = *(v1 + 8);
      v20(v18, v0);
      sub_100007840(v11, &unk_100ADB6B0);
      sub_100007840(v14, &unk_100ADB6B0);
      v20(v19, v0);
      sub_100007840(v6, &unk_100ADB6B0);
      return v17 & 1;
    }

    sub_100007840(v11, &unk_100ADB6B0);
    sub_100007840(v14, &unk_100ADB6B0);
    (*(v1 + 8))(v24, v0);
    goto LABEL_6;
  }

  sub_100007840(v11, &unk_100ADB6B0);
  sub_100007840(v14, &unk_100ADB6B0);
  if (v16(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_100007840(v6, &unk_100ADBB30);
    v17 = 0;
    return v17 & 1;
  }

  sub_100007840(v6, &unk_100ADB6B0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1004530F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a1;
  *(v5 + 40) = a5;
  sub_1007A26F4();
  *(v5 + 56) = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_100453194, v7, v6);
}

uint64_t sub_100453194()
{
  v1 = v0[6];
  v2 = v0[5];

  v3 = (v2 + *(type metadata accessor for ReadingSettingsView() + 76));
  v4 = *v3;
  v5 = v3[1];
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v1;
  sub_1001F1160(&qword_100AD7168);
  sub_10079E004();
  v6 = v0[1];

  return v6();
}

uint64_t sub_100453250()
{
  v1 = sub_1001F1160(&qword_100AE43D0);
  __chkstk_darwin(v1);
  v3 = v37 - v2;
  v4 = sub_1001F1160(&qword_100AE43D8);
  __chkstk_darwin(v4);
  v6 = v37 - v5;
  v7 = sub_1001F1160(&qword_100AE43E0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = sub_1004552A8();
  v12 = v11;
  if (*(v0 + *(type metadata accessor for ReadingSettingsView() + 28)) == 1)
  {
    v37[0] = v10;
    v37[1] = v12;
    sub_1003F2178();
    sub_10079D944();

    v13 = sub_10079D2B4();
    sub_10079BBA4();
    v14 = &v9[*(v7 + 36)];
    *v14 = v13;
    *(v14 + 1) = v15;
    *(v14 + 2) = v16;
    *(v14 + 3) = v17;
    *(v14 + 4) = v18;
    v14[40] = 0;
    sub_1000077D8(v9, v6, &qword_100AE43E0);
    swift_storeEnumTagMultiPayload();
    sub_10045F3E0();
    sub_10045F498();
    sub_10079CCA4();
    return sub_100007840(v9, &qword_100AE43E0);
  }

  else
  {
    *v3 = sub_10079C8F4();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v20 = sub_1001F1160(&qword_100AE43E8);
    sub_100455524(v10, v12, v0, &v3[*(v20 + 44)]);

    v21 = sub_10079D2A4();
    sub_10079BBA4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = &v3[*(sub_1001F1160(&qword_100AE43F0) + 36)];
    *v30 = v21;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    v31 = sub_10079D2B4();
    sub_10079BBA4();
    v32 = &v3[*(v1 + 36)];
    *v32 = v31;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    sub_1000077D8(v3, v6, &qword_100AE43D0);
    swift_storeEnumTagMultiPayload();
    sub_10045F3E0();
    sub_10045F498();
    sub_10079CCA4();
    return sub_100007840(v3, &qword_100AE43D0);
  }
}

uint64_t sub_1004535B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = sub_1001F1160(&qword_100AE41D8);
  v114 = *(v3 - 8);
  v115 = v3;
  __chkstk_darwin(v3);
  v121 = &v100 - v4;
  v108 = sub_1001F1160(&qword_100AE41E0);
  __chkstk_darwin(v108);
  v112 = &v100 - v5;
  v109 = sub_1001F1160(&qword_100AE41E8);
  __chkstk_darwin(v109);
  v113 = &v100 - v6;
  v7 = sub_1001F1160(&qword_100AE41F0);
  v8 = *(v7 - 8);
  v122 = v7;
  v123 = v8;
  __chkstk_darwin(v7);
  v111 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v100 - v11;
  v12 = sub_1001F1160(&qword_100AE41F8);
  __chkstk_darwin(v12 - 8);
  v124 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v100 - v15;
  v127 = sub_10079BC44();
  v16 = *(v127 - 8);
  __chkstk_darwin(v127);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v100 - v20;
  v126 = sub_10079E534();
  v118 = *(v126 - 8);
  __chkstk_darwin(v126);
  v104 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v117 = &v100 - v24;
  v25 = sub_1001F1160(&qword_100AE4200);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v100 - v27;
  v116 = sub_1001F1160(&qword_100AE4208) - 8;
  __chkstk_darwin(v116);
  v119 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v100 - v31;
  __chkstk_darwin(v33);
  v128 = &v100 - v34;
  *v28 = sub_10079C8F4();
  *(v28 + 1) = 0x4024000000000000;
  v28[16] = 0;
  v35 = sub_1001F1160(&qword_100AE4210);
  sub_100455E98(a1, &v28[*(v35 + 44)]);
  v36 = sub_10079D284();
  sub_10079BBA4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v28[*(sub_1001F1160(&qword_100AE4218) + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  *&v28[*(v26 + 44)] = 256;
  sub_10044E630(v21);
  v46 = *(v16 + 104);
  v47 = v18;
  v48 = v18;
  v102 = enum case for ColorScheme.dark(_:);
  v49 = v127;
  v101 = v46;
  v46(v48);
  LOBYTE(v26) = sub_10079BC34();
  v50 = *(v16 + 8);
  v106 = v47;
  v50(v47, v49);
  v105 = v21;
  v107 = v16 + 8;
  v103 = v50;
  v50(v21, v49);
  v51 = v118;
  v52 = *(v118 + 104);
  v53 = &enum case for BlendMode.plusLighter(_:);
  if ((v26 & 1) == 0)
  {
    v53 = &enum case for BlendMode.plusDarker(_:);
  }

  v54 = v117;
  v55 = v126;
  v52(v117, *v53, v126);
  v56 = *(v51 + 32);
  v56(&v32[*(v116 + 44)], v54, v55);
  sub_10020B3C8(v28, v32, &qword_100AE4200);
  sub_10020B3C8(v32, v128, &qword_100AE4208);
  if (sub_100452C7C())
  {
    sub_100453F9C();
    v57 = v105;
    sub_10044E630(v105);
    v58 = v106;
    v59 = v127;
    v101(v106, v102, v127);
    v60 = sub_10079BC34();
    v61 = v52;
    v62 = v103;
    v103(v58, v59);
    v62(v57, v59);
    v63 = &enum case for BlendMode.plusLighter(_:);
    if ((v60 & 1) == 0)
    {
      v63 = &enum case for BlendMode.plusDarker(_:);
    }

    v64 = v104;
    v65 = v126;
    v61(v104, *v63, v126);
    v66 = v112;
    v56(&v112[*(v108 + 36)], v64, v65);
    (*(v114 + 32))(v66, v121, v115);
    LOBYTE(v65) = sub_10079D284();
    sub_10079BBA4();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v66;
    v76 = v113;
    sub_10020B3C8(v75, v113, &qword_100AE41E0);
    v77 = v76 + *(v109 + 36);
    *v77 = v65;
    *(v77 + 8) = v68;
    *(v77 + 16) = v70;
    *(v77 + 24) = v72;
    *(v77 + 32) = v74;
    *(v77 + 40) = 0;
    LOBYTE(v65) = sub_10079D2B4();
    sub_10079BBA4();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = v111;
    sub_10020B3C8(v76, v111, &qword_100AE41E8);
    v87 = v122;
    v88 = v86 + *(v122 + 36);
    *v88 = v65;
    *(v88 + 8) = v79;
    *(v88 + 16) = v81;
    *(v88 + 24) = v83;
    *(v88 + 32) = v85;
    *(v88 + 40) = 0;
    v89 = v86;
    v90 = v110;
    sub_10020B3C8(v89, v110, &qword_100AE41F0);
    v91 = v120;
    sub_10020B3C8(v90, v120, &qword_100AE41F0);
    v92 = 0;
    v93 = v87;
  }

  else
  {
    v92 = 1;
    v93 = v122;
    v91 = v120;
  }

  (*(v123 + 56))(v91, v92, 1, v93);
  v94 = v128;
  v95 = v119;
  sub_1000077D8(v128, v119, &qword_100AE4208);
  v96 = v124;
  sub_1000077D8(v91, v124, &qword_100AE41F8);
  v97 = v125;
  sub_1000077D8(v95, v125, &qword_100AE4208);
  v98 = sub_1001F1160(&unk_100AE4220);
  sub_1000077D8(v96, v97 + *(v98 + 48), &qword_100AE41F8);
  sub_100007840(v91, &qword_100AE41F8);
  sub_100007840(v94, &qword_100AE4208);
  sub_100007840(v96, &qword_100AE41F8);
  return sub_100007840(v95, &qword_100AE4208);
}

uint64_t sub_100453F9C()
{
  v1 = type metadata accessor for ReadingSettingsView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = sub_1001F1160(&qword_100AE3E68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  sub_10079E314();
  swift_getKeyPath();
  sub_10079E334();

  (*(v5 + 8))(v7, v4);
  v8 = v19;
  v9 = v20;
  v10 = v21;
  sub_10045FFF4(v0, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_100460DB0(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ReadingSettingsView);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v15 = xmmword_10081BC80;
  v14[1] = sub_10079DF24();
  v14[0] = sub_10079DF24();
  sub_1002582C8();
  return sub_10079E124();
}

double sub_100454284@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ReadingSettingsView();
  sub_100454310(v5, *(a2 + *(v6 + 24)), *(a2 + *(v6 + 24) + 8), v11);
  v7 = v15;
  *(a3 + 64) = v14;
  *(a3 + 80) = v7;
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  v8 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a3 + 32) = v12;
  *(a3 + 48) = v10;
  return result;
}

uint64_t sub_100454310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v37 = a2;
  v38 = a3;
  v8 = type metadata accessor for ReadingSettingsView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  v17 = sub_1007A1424();

  v39 = a1;
  if (v17)
  {
    v34 = v9;
    v18 = sub_10079F214();
    v20 = v19;

    v21 = sub_10079F214();
    if (v20)
    {
      if (v18 == v21 && v20 == v22)
      {

        v35 = 1;
      }

      else
      {
        v35 = sub_1007A3AB4();
      }
    }

    else
    {
      v35 = 0;
    }

    v9 = v34;
  }

  else
  {
    sub_10079F214();
    v35 = 0;
  }

  LODWORD(v34) = *(v5 + *(v8 + 28));
  sub_10045FFF4(v5, v16, type metadata accessor for ReadingSettingsView);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  sub_100460DB0(v16, v24 + v23, type metadata accessor for ReadingSettingsView);
  sub_10045FFF4(v5, v13, type metadata accessor for ReadingSettingsView);
  v25 = swift_allocObject();
  sub_100460DB0(v13, v25 + v23, type metadata accessor for ReadingSettingsView);
  v26 = v5;
  v27 = v36;
  sub_10045FFF4(v26, v36, type metadata accessor for ReadingSettingsView);
  v28 = swift_allocObject();
  sub_100460DB0(v27, v28 + v23, type metadata accessor for ReadingSettingsView);
  KeyPath = swift_getKeyPath();
  v40 = 0;
  v30 = v35 & 1;
  *a4 = v34;
  v32 = v37;
  v31 = v38;
  *(a4 + 8) = v39;
  *(a4 + 16) = v32;
  *(a4 + 24) = v31;
  *(a4 + 32) = v30;
  *(a4 + 40) = sub_10045E65C;
  *(a4 + 48) = v24;
  *(a4 + 56) = sub_10045E674;
  *(a4 + 64) = v25;
  *(a4 + 72) = sub_10045E68C;
  *(a4 + 80) = v28;
  *(a4 + 88) = KeyPath;
  *(a4 + 96) = 0;
  *(a4 + 104) = xmmword_100826810;
}

uint64_t sub_10045467C(void *a1)
{
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  v2 = sub_1007A1424();

  if (v2)
  {
    sub_10000E3E8(a1, a1[3]);
    sub_1007A1964();
  }

  return result;
}

uint64_t sub_1004547A4(void (*a1)(void))
{
  a1();
  sub_10079C834();
  return v2;
}

uint64_t sub_10045480C@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_10079C834();
  *a2 = v4;
  return result;
}

uint64_t sub_100454888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();

  return sub_10079C844();
}

uint64_t sub_1004548EC(uint64_t a1)
{
  v2 = sub_1007A0514();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1007A1464();
}

uint64_t sub_1004549B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_1001F1160(&qword_100ADB800);
  __chkstk_darwin(v3 - 8);
  v100 = &v83 - v4;
  v5 = type metadata accessor for ReadingSettingsView();
  v6 = v5 - 8;
  v97 = *(v5 - 8);
  __chkstk_darwin(v5);
  v102 = v7;
  v103 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079DD14();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v96 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v83 - v11;
  v12 = sub_1007A0514();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 28);
  v17 = a1;
  v18 = sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  sub_1007A1454();

  LOBYTE(v6) = sub_1007A04D4();
  v19 = *(v13 + 8);
  v19(v15, v12);
  if (v6)
  {
    v84 = a1;
    sub_10079E304();
    sub_1007A1454();

    v20 = sub_1007A0464();
    v22 = v21;
    v19(v15, v12);
    v105 = v20;
    v106 = v22;
    v100 = sub_100206ECC();
    v23 = sub_10079D5D4();
    v98 = v24;
    v99 = v23;
    LODWORD(v94) = v25;
    v95 = v26;
    v89 = v16;
    v88 = v18;
    sub_10079E304();
    sub_1007A1454();

    v27 = sub_1007A0494();
    v29 = v28;
    v19(v15, v12);
    v87 = v19;
    v105 = v27;
    v106 = v29;
    v30 = sub_10079D5D4();
    v92 = v31;
    v93 = v30;
    v91 = v32;
    v90 = v33 & 1;
    sub_10079E304();
    sub_1007A1454();

    v34 = sub_1007A04E4();
    v36 = v35;
    v19(v15, v12);
    v105 = v34;
    v106 = v36;
    v37 = sub_10079D5D4();
    v85 = v12;
    v38 = v37;
    v39 = v103;
    v41 = v40;
    v43 = v42;
    v83 = v44;
    v86 = type metadata accessor for ReadingSettingsView;
    sub_10045FFF4(v17, v103, type metadata accessor for ReadingSettingsView);
    v45 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v46 = swift_allocObject();
    v97 = type metadata accessor for ReadingSettingsView;
    sub_100460DB0(v39, v46 + v45, type metadata accessor for ReadingSettingsView);
    sub_10079DCF4();
    sub_10020B430(v38, v41, v43 & 1);

    v47 = v84;
    sub_10079E304();
    sub_1007A1454();

    v48 = sub_1007A04B4();
    v50 = v49;
    v87(v15, v85);
    v105 = v48;
    v106 = v50;
    v51 = sub_10079D5D4();
    v53 = v52;
    v55 = v54;
    v56 = v47;
    v57 = v103;
    sub_10045FFF4(v56, v103, v86);
    v58 = swift_allocObject();
    sub_100460DB0(v57, v58 + v45, v97);
    sub_10079DD04();
    sub_10020B430(v51, v53, v55 & 1);

    return sub_10079DCE4();
  }

  else
  {
    sub_10079E304();
    sub_1007A1454();

    v60 = sub_1007A0464();
    v62 = v61;
    v19(v15, v12);
    v105 = v60;
    v106 = v62;
    sub_100206ECC();
    v63 = sub_10079D5D4();
    v102 = v64;
    v103 = v63;
    LODWORD(v97) = v65;
    v101 = v66;
    sub_10079E304();
    sub_1007A1454();

    v67 = sub_1007A0494();
    v69 = v68;
    v19(v15, v12);
    v105 = v67;
    v106 = v69;
    v70 = sub_10079D5D4();
    v95 = v71;
    v96 = v70;
    v93 = v72 & 1;
    v94 = v73;
    sub_10079E304();
    sub_1007A1454();

    v74 = sub_1007A04A4();
    v76 = v75;
    v19(v15, v12);
    v105 = v74;
    v106 = v76;
    v77 = sub_10079D5D4();
    v79 = v78;
    v81 = v80;
    v82 = v100;
    sub_10079DD04();
    sub_10020B430(v77, v79, v81 & 1);

    (*(v98 + 56))(v82, 0, 1, v99);
    return sub_10079DCD4();
  }
}

uint64_t sub_1004551E4(void *a1)
{
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  v2 = sub_1007A1444();
  sub_1007A04F4();
  v2(v4, 0);

  sub_10000E3E8(a1, a1[3]);
  return sub_1007A1984();
}

uint64_t sub_1004552A8()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_100455524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v66 = a3;
  v74 = a4;
  v6 = sub_1001F1160(&qword_100AE4438);
  __chkstk_darwin(v6 - 8);
  v73 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v57 - v9;
  v10 = type metadata accessor for ReadingSettingsView();
  v11 = *(v10 - 8);
  v62 = v10 - 8;
  v67 = v11;
  v65 = v11[8];
  __chkstk_darwin(v10 - 8);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10079CA64();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1001F1160(&qword_100AE4440);
  __chkstk_darwin(v59);
  v57 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v58 = &v57 - v17;
  v63 = sub_1001F1160(&qword_100AE4448) - 8;
  __chkstk_darwin(v63);
  v72 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v57 - v20;
  sub_10079E474();
  sub_10079BE54();
  v71 = v77;
  v70 = v79;
  v69 = v81;
  v68 = v82;
  v91 = 1;
  v90 = v78;
  v89 = v80;
  v83 = a1;
  v84 = a2;
  sub_100206ECC();

  v21 = sub_10079D5D4();
  v23 = v22;
  v25 = v24;
  sub_10079D444();
  sub_10079D3F4();
  sub_10079D464();

  v26 = sub_10079D5A4();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10020B430(v21, v23, v25 & 1);

  v83 = v26;
  v84 = v28;
  LOBYTE(v85) = v30 & 1;
  v86 = v32;
  sub_10079CA54();
  v33 = v57;
  sub_10079D9D4();
  (*(v60 + 8))(v14, v61);
  sub_10020B430(v26, v28, v30 & 1);

  v34 = v58;
  sub_10079C294();
  sub_100007840(v33, &qword_100AE4440);
  sub_1001F1160(&qword_100AE3E70);
  v35 = v66;
  sub_10079CF44();
  sub_10045F5DC();
  v36 = v75;
  sub_10079D9B4();

  sub_100007840(v34, &qword_100AE4440);
  v37 = v64;
  sub_10045FFF4(v35, v64, type metadata accessor for ReadingSettingsView);
  v38 = (v67[80] + 16) & ~v67[80];
  v39 = swift_allocObject();
  sub_100460DB0(v37, v39 + v38, type metadata accessor for ReadingSettingsView);
  v40 = (v36 + *(v63 + 44));
  *v40 = sub_10045F698;
  v40[1] = v39;
  v40[2] = 0;
  v40[3] = 0;
  sub_10045FFF4(v35, v37, type metadata accessor for ReadingSettingsView);
  v41 = swift_allocObject();
  sub_100460DB0(v37, v41 + v38, type metadata accessor for ReadingSettingsView);
  type metadata accessor for ChromeStyle();
  sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v42 = sub_10079C484();
  v44 = v43;
  KeyPath = swift_getKeyPath();
  v83 = v42;
  v84 = v44;
  v85 = KeyPath;
  LOBYTE(v86) = 0;
  v87 = sub_10045FB4C;
  v88 = v41;
  sub_10045FBE8();
  v46 = v76;
  sub_10079DA04();

  sub_10079E474();
  sub_10079BE54();
  v67 = v83;
  v66 = v85;
  v65 = v87;
  v64 = v88;
  v94 = 1;
  v93 = v84;
  v92 = v86;
  LOBYTE(v41) = v91;
  LOBYTE(v38) = v90;
  LOBYTE(v23) = v89;
  v47 = v72;
  sub_1000077D8(v36, v72, &qword_100AE4448);
  v48 = v73;
  sub_1000077D8(v46, v73, &qword_100AE4438);
  LOBYTE(v46) = v94;
  LOBYTE(v34) = v93;
  LODWORD(v63) = v92;
  v49 = v74;
  *v74 = 0;
  *(v49 + 8) = v41;
  v49[2] = v71;
  *(v49 + 24) = v38;
  v49[4] = v70;
  *(v49 + 40) = v23;
  v50 = v68;
  v49[6] = v69;
  v49[7] = v50;
  v51 = v49;
  v52 = sub_1001F1160(qword_100AE4460);
  sub_1000077D8(v47, v51 + v52[12], &qword_100AE4448);
  v53 = v51 + v52[16];
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_1000077D8(v48, v51 + v52[20], &qword_100AE4438);
  v54 = v51 + v52[24];
  *v54 = 0;
  *(v54 + 8) = v46;
  *(v54 + 16) = v67;
  *(v54 + 24) = v34;
  *(v54 + 32) = v66;
  *(v54 + 40) = v63;
  v55 = v64;
  *(v54 + 48) = v65;
  *(v54 + 56) = v55;
  sub_100007840(v76, &qword_100AE4438);
  sub_100007840(v75, &qword_100AE4448);
  sub_100007840(v48, &qword_100AE4438);
  return sub_100007840(v47, &qword_100AE4448);
}

uint64_t sub_100455E38()
{
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&qword_100AE3E70);
  return sub_10079CF34();
}

uint64_t sub_100455E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1001F1160(&qword_100AE4238);
  __chkstk_darwin(v3 - 8);
  v69 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v49 - v6;
  v67 = sub_100796CF4();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v49 - v9;
  v62 = sub_1007A21D4();
  v71 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v49 - v12;
  v13 = type metadata accessor for ReadingSettingsView();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v63 = sub_1001F1160(&qword_100AE4240) - 8;
  __chkstk_darwin(v63);
  v66 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v49 - v24;
  sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  v59 = sub_1007A1484();

  sub_10079E304();
  v57 = sub_1007A1494();

  v26 = [objc_opt_self() tertiaryLabelColor];
  sub_10079DEA4();
  v58 = sub_10079DE24();

  sub_10045FFF4(a1, v21, type metadata accessor for ReadingSettingsView);
  v27 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v56 = swift_allocObject();
  sub_100460DB0(v21, v56 + v27, type metadata accessor for ReadingSettingsView);
  v52 = a1;
  sub_10045FFF4(a1, v18, type metadata accessor for ReadingSettingsView);
  v55 = swift_allocObject();
  sub_100460DB0(v18, v55 + v27, type metadata accessor for ReadingSettingsView);
  sub_10045FFF4(a1, v15, type metadata accessor for ReadingSettingsView);
  v53 = swift_allocObject();
  sub_100460DB0(v15, v53 + v27, type metadata accessor for ReadingSettingsView);
  KeyPath = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v28 = v54;
  sub_1007A2154();
  v29 = v61;
  sub_100796C94();
  v30 = v62;
  (*(v71 + 16))(v60, v28, v62);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v33 = v65;
  v34 = v67;
  (*(v65 + 16))(v64, v29, v67);
  v35 = sub_1007A22D4();
  v37 = v36;
  (*(v33 + 8))(v29, v34);
  (*(v71 + 8))(v28, v30);
  v77 = 0;
  v76 = 0;
  LOBYTE(v30) = (v59 & 1) == 0;
  LOBYTE(v33) = (v57 & 1) == 0;
  v38 = sub_10079E464();
  v40 = v39;
  v41 = &v25[*(v63 + 44)];
  sub_1004567A0(v41);
  v42 = (v41 + *(sub_1001F1160(&qword_100AE4248) + 36));
  *v42 = v38;
  v42[1] = v40;
  *v25 = KeyPath;
  v25[8] = v77;
  *(v25 + 3) = *(&v72 + 3);
  *(v25 + 9) = v72;
  *(v25 + 2) = v51;
  v25[24] = v76;
  *(v25 + 7) = *&v75[3];
  *(v25 + 25) = *v75;
  *(v25 + 4) = v35;
  *(v25 + 5) = v37;
  v25[48] = v30;
  v25[49] = v33;
  *(v25 + 50) = v73;
  *(v25 + 27) = v74;
  *(v25 + 7) = v58;
  *(v25 + 8) = sub_10045E7BC;
  *(v25 + 9) = v56;
  *(v25 + 10) = sub_10045E838;
  *(v25 + 11) = v55;
  *(v25 + 12) = sub_10045E850;
  *(v25 + 13) = v53;
  v43 = v68;
  sub_100457208(v68);
  v44 = v66;
  sub_1000077D8(v25, v66, &qword_100AE4240);
  v45 = v69;
  sub_1000077D8(v43, v69, &qword_100AE4238);
  v46 = v70;
  sub_1000077D8(v44, v70, &qword_100AE4240);
  v47 = sub_1001F1160(&qword_100AE4250);
  sub_1000077D8(v45, v46 + *(v47 + 48), &qword_100AE4238);
  sub_100007840(v43, &qword_100AE4238);
  sub_100007840(v25, &qword_100AE4240);
  sub_100007840(v45, &qword_100AE4238);
  return sub_100007840(v44, &qword_100AE4240);
}

uint64_t sub_1004566C8(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E3E8(a1, v3);
  a2(v3, v4);
  type metadata accessor for ReadingSettingsView();

  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  sub_10079E004();
}

uint64_t sub_1004567A0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_10079C894();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AE42F0);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_1001F1160(&qword_100AE42F8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  v13 = sub_1007A14B4();

  if (v13)
  {
    sub_100456B58(v12);
    *&v12[*(sub_1001F1160(&unk_100AE4300) + 36)] = xmmword_100826820;
    sub_10079C884();
    sub_10079E524();
    v14 = sub_100460EB4(&qword_100AD7C28, &type metadata accessor for OpacityTransition);
    sub_10079BC14();

    (*(v22 + 8))(v3, v1);
    v15 = v23;
    (*(v23 + 16))(v21, v8, v4);
    v25 = v1;
    v26 = v14;
    swift_getOpaqueTypeConformance2();
    v16 = sub_10079BE84();
    (*(v15 + 8))(v8, v4);
    *&v12[*(v9 + 36)] = v16;
    v17 = v24;
    sub_10020B3C8(v12, v24, &qword_100AE42F8);
    v18 = 0;
    v19 = v17;
  }

  else
  {
    v18 = 1;
    v19 = v24;
  }

  return (*(v10 + 56))(v19, v18, 1, v9);
}

uint64_t sub_100456B58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for ReadingSettingsView();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v47 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE4310);
  __chkstk_darwin(v5 - 8);
  v7 = &KeyPath - v6;
  v48 = sub_1001F1160(&qword_100AE4318);
  __chkstk_darwin(v48);
  v50 = &KeyPath - v8;
  v9 = *(v1 + *(v3 + 48));
  if (v9)
  {
    v10 = v3;
    v11 = v9;
    v49 = ChromeStyle.accentColor.getter();

    v12 = [objc_opt_self() quaternaryLabelColor];
    __chkstk_darwin(v12);
    v42 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10045F254;
    *(v13 + 24) = &v40;
    *&v57 = sub_10040EEA8;
    *(&v57 + 1) = v13;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v56 = sub_100457B70;
    *(&v56 + 1) = &unk_100A1C750;
    v14 = _Block_copy(&aBlock);
    v15 = objc_opt_self();

    v16 = [v15 traitCollectionWithTraits:v14];
    _Block_release(v14);

    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      v17 = [v12 resolvedColorWithTraitCollection:v16];

      v18 = sub_10079DEA4();
      *v7 = sub_10079C8F4();
      *(v7 + 1) = 0x4018000000000000;
      v7[16] = 0;
      sub_1001F1160(&unk_100AE4380);
      sub_1001F1160(&unk_100AE3E50);
      sub_10079E304();
      v19 = sub_1007A14C4();

      if ((v19 & 0x8000000000000000) == 0)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = v19;
        KeyPath = swift_getKeyPath();
        v20 = v18;
        v21 = v47;
        sub_10045FFF4(v2, v47, type metadata accessor for ReadingSettingsView);
        v22 = *(v46 + 80);
        v46 = v10;
        v23 = (v22 + 16) & ~v22;
        v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
        v45 = v2;
        v26 = swift_allocObject();
        sub_100460DB0(v21, v26 + v23, type metadata accessor for ReadingSettingsView);
        *(v26 + v24) = v49;
        *(v26 + v25) = v20;
        *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0x4010000000000000;

        sub_1001F1160(&qword_100AD71E8);
        sub_1001F1160(&unk_100AE4390);
        sub_100258384();
        v42 = sub_10045F328();
        sub_10079E264();
        v42 = sub_10079E474();
        v43 = v27;
        v41 = 0;
        v40 = 0x4010000000000000;
        sub_10079C414();
        v28 = v50;
        sub_10020B3C8(v7, v50, &qword_100AE4310);
        v29 = (v28 + *(v48 + 36));
        v30 = v60;
        v29[4] = v59;
        v29[5] = v30;
        v29[6] = v61;
        v31 = v56;
        *v29 = aBlock;
        v29[1] = v31;
        v32 = v58;
        v29[2] = v57;
        v29[3] = v32;
        v33 = sub_10079E524();
        v34 = v45 + *(v46 + 72);
        v35 = *v34;
        v36 = *(v34 + 8);
        v53 = v35;
        v54 = v36;
        sub_1001F1160(&qword_100ADB850);
        sub_10079DFF4();

        LOBYTE(v20) = v52;
        v37 = v51;
        sub_10020B3C8(v28, v51, &qword_100AE4318);
        result = sub_1001F1160(&qword_100AE43C8);
        v39 = v37 + *(result + 36);
        *v39 = v33;
        *(v39 + 8) = v20;
        return result;
      }
    }

    __break(1u);
  }

  type metadata accessor for ChromeStyle();
  sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_100457208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_10079D074();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AE4258);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v30 = &v26 - v7;
  v27 = sub_1001F1160(&qword_100AE4260);
  __chkstk_darwin(v27);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ReadingSettingsView();
  v26 = sub_10079C8F4();
  v37 = 0;
  sub_100457E38(v2, v35);
  v46 = v35[8];
  v47 = v35[9];
  v48 = v35[10];
  v42 = v35[4];
  v43 = v35[5];
  v44 = v35[6];
  v45 = v35[7];
  v38 = v35[0];
  v39 = v35[1];
  v40 = v35[2];
  v41 = v35[3];
  v50[8] = v35[8];
  v50[9] = v35[9];
  v50[10] = v35[10];
  v50[4] = v35[4];
  v50[5] = v35[5];
  v50[6] = v35[6];
  v50[7] = v35[7];
  v50[0] = v35[0];
  v50[1] = v35[1];
  v49 = v35[11];
  v51 = v35[11];
  v50[2] = v35[2];
  v50[3] = v35[3];
  sub_1000077D8(&v38, v34, &qword_100AE4268);
  sub_100007840(v50, &qword_100AE4268);
  *&v36[55] = v41;
  *&v36[39] = v40;
  *&v36[119] = v45;
  *&v36[103] = v44;
  *&v36[87] = v43;
  *&v36[71] = v42;
  *&v36[167] = v48;
  *&v36[151] = v47;
  *&v36[135] = v46;
  *&v36[7] = v38;
  v36[183] = v49;
  *&v36[23] = v39;
  v11 = *(v2 + *(v10 + 48));
  if (v11)
  {
    v12 = v37;
    type metadata accessor for ChromeStyle();
    sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    v13 = v11;
    v14 = sub_10079B8A4();
    sub_1004587F0();
    sub_10079E474();
    sub_10079BE54();
    if (qword_100AD17D0 != -1)
    {
      swift_once();
    }

    sub_10079E474();
    sub_10079BE54();
    if (qword_100AD1660 != -1)
    {
      swift_once();
    }

    v15 = qword_100AE3E38;
    v16 = sub_10079D294();
    v34[0] = v26;
    LOBYTE(v34[1]) = v12;
    *(&v34[9] + 1) = *&v36[128];
    *(&v34[10] + 1) = *&v36[144];
    *(&v34[11] + 1) = *&v36[160];
    *(&v34[12] + 1) = *&v36[176];
    *(&v34[5] + 1) = *&v36[64];
    *(&v34[6] + 1) = *&v36[80];
    *(&v34[7] + 1) = *&v36[96];
    *(&v34[8] + 1) = *&v36[112];
    *(&v34[1] + 1) = *v36;
    *(&v34[2] + 1) = *&v36[16];
    *(&v34[3] + 1) = *&v36[32];
    *(&v34[4] + 1) = *&v36[48];
    *&v34[13] = v14;
    *(&v34[13] + 1) = v11;
    v34[14] = v34[21];
    v34[15] = v34[22];
    v34[16] = v34[23];
    v34[17] = v34[24];
    v34[18] = v34[25];
    v34[19] = v34[26];
    *&v34[20] = v15;
    BYTE8(v34[20]) = v16;

    sub_10079D064();
    sub_1001F1160(&qword_100AE4270);
    sub_10045E868();
    v17 = v30;
    sub_10079D9A4();
    (*(v28 + 8))(v5, v29);
    memcpy(v35, v34, 0x149uLL);
    sub_100007840(v35, &qword_100AE4270);
    v18 = &v9[*(v27 + 36)];
    v19 = enum case for RoundedCornerStyle.continuous(_:);
    v20 = sub_10079C9E4();
    v21 = *(*(v20 - 8) + 104);
    v21(v18, v19, v20);
    *&v18[*(sub_1001F1160(&unk_100AE42C0) + 36)] = 256;
    (*(v31 + 32))(v9, v17, v32);
    v22 = sub_1001F1160(&qword_100AE4238);
    v23 = v33;
    v24 = v33 + *(v22 + 36);
    v21(v24, v19, v20);
    *(v24 + *(sub_1001F1160(&qword_100AD84E8) + 36)) = 0;
    return sub_10020B3C8(v9, v23, &qword_100AE4260);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

double sub_1004578AC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100460EB4(&qword_100AE4230, type metadata accessor for BrightnessController);
  sub_100797A14();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_10045797C@<X0>(uint64_t a1@<X8>)
{
  sub_10079C984();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  result = sub_10079D5B4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

id sub_100457A5C(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for ReadingSettingsView() + 48));
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_10079B9A4();

    if (v7)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    return [a1 setUserInterfaceStyle:v5];
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100457B70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100457BC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  v8 = sub_1007A14A4();
  v10 = v9;

  if (v8 >= v7)
  {
    v11 = a2;
  }

  else
  {
    v11 = a3;
  }

  if (v7 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = a2;
  }

  if (v10)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  sub_10079E474();
  sub_10079BE54();
  *&v15[6] = v16;
  *&v15[22] = v17;
  *&v15[38] = v18;
  *(a4 + 10) = *v15;
  *a4 = v13;
  *(a4 + 8) = 256;
  *(a4 + 26) = *&v15[16];
  *(a4 + 42) = *&v15[32];
  *(a4 + 56) = *(&v18 + 1);
}

uint64_t sub_100457CE8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  v2 = sub_1007A1474();

  *a1 = v2;
  return result;
}

uint64_t sub_100457D60@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&unk_100AE3E50);
  sub_10079E304();
  sub_1007A1474();

  v2 = sub_1007A0A14();
  v4 = v3;
  if (v2 == sub_1007A0A14() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1007A3AB4();
  }

  *a1 = v7 & 1;
  return result;
}

uint64_t sub_100457E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100796CF4();
  *&v74 = *(v4 - 8);
  __chkstk_darwin(v4);
  *&v72 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  *&v73 = &v57 - v7;
  v8 = sub_1007A21D4();
  *&v71 = *(v8 - 8);
  __chkstk_darwin(v8);
  *&v69 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  *&v70 = &v57 - v11;
  v12 = type metadata accessor for ReadingSettingsView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v16 + 28)))
  {
    v67 = 0;
    v68 = 0;
    v73 = 0u;
    v74 = 0u;
    v17 = 16711680;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
  }

  else
  {
    if (sub_1007A2B24())
    {
      *&v74 = type metadata accessor for ReadingSettingsView;
      sub_10045FFF4(a1, &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
      *&v73 = sub_1007A26F4();
      v18 = sub_1007A26E4();
      v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = &protocol witness table for MainActor;
      *&v72 = type metadata accessor for ReadingSettingsView;
      sub_100460DB0(&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ReadingSettingsView);
      sub_10045FFF4(a1, &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v74);
      v21 = sub_1007A26E4();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = &protocol witness table for MainActor;
      sub_100460DB0(v15, v22 + v19, v72);
      sub_10079E204();
      v23 = v77;
      v24 = v78;
      sub_1001F1160(&unk_100AE3E50);
      sub_10079E304();
      v25 = sub_1007A1434();

      sub_10042FF84(v23, *(&v23 + 1), v24, v25 & 1, &v84);
      LOBYTE(v75[0]) = 0;
      v93 = 0;
    }

    else
    {
      v66 = type metadata accessor for ReadingSettingsView;
      sub_10045FFF4(a1, &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
      v65 = sub_1007A26F4();
      v67 = v4;
      v26 = sub_1007A26E4();
      v68 = v8;
      v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = &protocol witness table for MainActor;
      v64 = type metadata accessor for ReadingSettingsView;
      sub_100460DB0(&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ReadingSettingsView);
      sub_10045FFF4(a1, &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v66);
      v29 = sub_1007A26E4();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = &protocol witness table for MainActor;
      sub_100460DB0(v15, v30 + v27, v64);
      sub_10079E204();
      v65 = *(&v77 + 1);
      v66 = v77;
      LODWORD(v64) = v78;
      sub_1001F1160(&unk_100AE3E50);
      sub_10079E304();
      v63 = sub_1007A1434();

      type metadata accessor for ChromeStyle();
      sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
      v31 = sub_10079C484();
      v61 = v32;
      v62 = v31;
      KeyPath = swift_getKeyPath();
      v59 = swift_getKeyPath();
      v58 = swift_getKeyPath();
      v57 = swift_getKeyPath();
      v33 = v70;
      sub_1007A2154();
      v34 = v73;
      sub_100796C94();
      v35 = v71;
      (*(v71 + 16))(v69, v33, v68);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v37 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v38 = v74;
      v39 = v67;
      (*(v74 + 16))(v72, v34, v67);
      v40 = sub_1007A22D4();
      v42 = v41;
      (*(v38 + 8))(v34, v39);
      (*(v35 + 8))(v33, v68);
      v97 = 0;
      v96 = 0;
      v95 = 0;
      v94 = 0;
      LOBYTE(v75[0]) = 1;
      *&v84 = v62;
      *(&v84 + 1) = v61;
      *&v85 = KeyPath;
      BYTE8(v85) = 0;
      *&v86 = v59;
      BYTE8(v86) = 0;
      *&v87 = v58;
      BYTE8(v87) = 0;
      *&v88 = v57;
      BYTE8(v88) = 0;
      *&v89 = v40;
      *(&v89 + 1) = v42;
      v90 = v66;
      v91 = v65;
      LOBYTE(v92) = v64;
      HIBYTE(v92) = v63 & 1;
      v93 = 1;
    }

    sub_10045EC18();
    sub_10045EC6C();
    sub_10079CCA4();
    v73 = v78;
    v74 = v77;
    v71 = v82;
    v72 = v79;
    v69 = v81;
    v70 = v80;
    v67 = *(&v83[0] + 1);
    v68 = *&v83[0];
    v17 = LOWORD(v83[1]) | (BYTE2(v83[1]) << 16);
  }

  sub_1007A1024();
  sub_1007A1014();
  type metadata accessor for ChromeStyle();
  sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  v43 = sub_10079C484();
  v66 = v44;
  v45 = swift_getKeyPath();
  v46 = swift_getKeyPath();
  sub_100460EB4(&qword_100AE42E0, &type metadata accessor for ThemeAppearanceManager);
  v47 = sub_10079C024();
  v75[0] = v74;
  v75[1] = v73;
  v75[2] = v72;
  v75[3] = v70;
  v75[4] = v69;
  v75[5] = v71;
  v48 = v67;
  v49 = v68;
  *v76 = v68;
  *&v76[8] = v67;
  v76[18] = BYTE2(v17);
  *&v76[16] = v17;
  v82 = v71;
  v83[0] = *v76;
  *(v83 + 15) = *&v76[15];
  v77 = v74;
  v78 = v73;
  v79 = v72;
  v80 = v70;
  v81 = v69;
  v50 = v73;
  v51 = v70;
  v52 = v69;
  *(a2 + 32) = v72;
  *(a2 + 48) = v51;
  *a2 = v77;
  *(a2 + 16) = v50;
  v53 = v83[0];
  *(a2 + 80) = v82;
  *(a2 + 96) = v53;
  v97 = 0;
  v96 = 0;
  v54 = *&v83[1];
  *(a2 + 64) = v52;
  *(a2 + 112) = v54;
  *(a2 + 120) = v43;
  *(a2 + 128) = v66;
  *(a2 + 136) = v47;
  *(a2 + 144) = v55;
  *(a2 + 152) = v45;
  *(a2 + 160) = 0;
  *(a2 + 168) = v46;
  *(a2 + 176) = 0;
  sub_1000077D8(v75, &v84, &qword_100AE42E8);
  v84 = v74;
  v85 = v73;
  v86 = v72;
  v87 = v70;
  v88 = v69;
  v89 = v71;
  v90 = v49;
  v91 = v48;
  v93 = BYTE2(v17);
  v92 = v17;
  return sub_100007840(&v84, &qword_100AE42E8);
}

uint64_t sub_1004587F0()
{
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&qword_100AD7168);
  return sub_10079DFF4();
}

double sub_100458914(char a1, double a2)
{
  v5 = *(type metadata accessor for ReadingSettingsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100451AC4(a2, a1 & 1, v6);
}

unint64_t sub_100458994()
{
  result = qword_100AE4020;
  if (!qword_100AE4020)
  {
    sub_1001F1234(&qword_100AE3FD0);
    sub_100458A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4020);
  }

  return result;
}

unint64_t sub_100458A20()
{
  result = qword_100AE4028;
  if (!qword_100AE4028)
  {
    sub_1001F1234(&qword_100AE3FC8);
    sub_1001F1234(&qword_100AE4030);
    sub_1001F1234(&qword_100AE4038);
    sub_1004605A8(&qword_100AE4040, &qword_100AE4038, &unk_100826940, sub_100458B60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4028);
  }

  return result;
}

unint64_t sub_100458B60()
{
  result = qword_100AE4048;
  if (!qword_100AE4048)
  {
    sub_1001F1234(&qword_100AE4050);
    sub_100458C18();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4048);
  }

  return result;
}

unint64_t sub_100458C18()
{
  result = qword_100AE4058;
  if (!qword_100AE4058)
  {
    sub_1001F1234(&qword_100AE4060);
    sub_100458CD0();
    sub_100005920(&qword_100AE4098, &unk_100AE40A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4058);
  }

  return result;
}

unint64_t sub_100458CD0()
{
  result = qword_100AE4068;
  if (!qword_100AE4068)
  {
    sub_1001F1234(&qword_100AE4070);
    sub_100005920(&qword_100AE4078, &qword_100AE4080);
    sub_100005920(&qword_100AE4088, &qword_100AE4090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4068);
  }

  return result;
}

uint64_t sub_100458DB4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ReadingSettingsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100451E9C(a1, a2, v6);
}

uint64_t sub_100458E34()
{
  type metadata accessor for ReadingSettingsView();

  return sub_100452268();
}

unint64_t sub_100458EA4()
{
  result = qword_100AE40D8;
  if (!qword_100AE40D8)
  {
    sub_1001F1234(&qword_100AE3FF8);
    sub_1001F1234(&qword_100AE3FE8);
    sub_1001F1234(&qword_100AD53B0);
    sub_1001F1234(&qword_100AE3FE0);
    sub_1001F1234(&qword_100AE3FD8);
    type metadata accessor for CGSize(255);
    sub_1001F1234(&qword_100AE3FD0);
    sub_100458994();
    swift_getOpaqueTypeConformance2();
    sub_100460EB4(&unk_100AE40C0, type metadata accessor for CGSize);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0);
    swift_getOpaqueTypeConformance2();
    sub_1004590D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE40D8);
  }

  return result;
}

unint64_t sub_1004590D8()
{
  result = qword_100AE40E0;
  if (!qword_100AE40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE40E0);
  }

  return result;
}

double sub_10045912C()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 3.0;
  if ((*(v0 + 32) & 1) == 0)
  {
    v12 = *(v0 + 96);
    v7 = *(v0 + 88);
    v11 = v7;
    if (v12 == 1)
    {
      return v7;
    }

    else
    {
      v8 = v3;

      sub_1007A29C4();
      v9 = sub_10079D244();
      sub_10079AB44();

      sub_10079C814();
      swift_getAtKeyPath();
      sub_100007840(&v11, &qword_100AE4718);
      (*(v2 + 8))(v5, v8);
      return *&v10[1];
    }
  }

  return result;
}

uint64_t sub_10045929C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v141 = a1;
  v139 = sub_10079CF24();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_10079CA64();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10079D074();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v104 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1001F1160(&qword_100AE4518);
  __chkstk_darwin(v107);
  v97 = (&v97 - v6);
  v115 = sub_1001F1160(&qword_100AE4520);
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v101 = &v97 - v7;
  v117 = sub_1001F1160(&qword_100AE4528);
  __chkstk_darwin(v117);
  v105 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v97 - v10;
  v126 = sub_1001F1160(&qword_100AE4530);
  __chkstk_darwin(v126);
  v111 = &v97 - v11;
  v131 = sub_1001F1160(&qword_100AE4538);
  __chkstk_darwin(v131);
  v112 = &v97 - v12;
  v132 = sub_1001F1160(&qword_100AE4540);
  __chkstk_darwin(v132);
  v142 = &v97 - v13;
  v140 = sub_1001F1160(&qword_100AE4548);
  __chkstk_darwin(v140);
  v137 = &v97 - v14;
  v15 = sub_100796CF4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v97 - v20;
  v22 = sub_1007A21D4();
  v143 = *(v22 - 8);
  v23 = v143;
  __chkstk_darwin(v22);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v97 - v27;
  sub_1007A2154();
  sub_100796C94();
  v29 = *(v23 + 16);
  v129 = v23 + 16;
  v130 = v29;
  v114 = v25;
  v106 = v28;
  v30 = v22;
  v108 = v22;
  v29(v25, v28, v22);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v128 = ObjCClassFromMetadata;
  v127 = objc_opt_self();
  v32 = [v127 bundleForClass:ObjCClassFromMetadata];
  v124 = *(v16 + 16);
  v125 = v16 + 16;
  v120 = v18;
  v109 = v21;
  v116 = v15;
  v124(v18, v21, v15);
  v33 = sub_1007A22D4();
  v99 = v33;
  v35 = v34;
  v98 = v34;
  v36 = *(v16 + 8);
  v122 = v16 + 8;
  v123 = v36;
  v36(v21, v15);
  v37 = *(v143 + 8);
  v143 += 8;
  v121 = v37;
  v37(v28, v30);
  v38 = swift_allocObject();
  v39 = *(v2 + 80);
  *(v38 + 80) = *(v2 + 64);
  *(v38 + 96) = v39;
  *(v38 + 112) = *(v2 + 96);
  *(v38 + 128) = *(v2 + 112);
  v40 = *(v2 + 16);
  *(v38 + 16) = *v2;
  *(v38 + 32) = v40;
  v41 = *(v2 + 48);
  *(v38 + 48) = *(v2 + 32);
  *(v38 + 64) = v41;
  v42 = swift_allocObject();
  v43 = *(v2 + 80);
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = v43;
  *(v42 + 112) = *(v2 + 96);
  *(v42 + 128) = *(v2 + 112);
  v44 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v44;
  v45 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v45;
  v102 = v42;
  sub_1004600BC(v2, &v146);
  sub_1004600BC(v2, &v146);
  v46 = sub_10079CB24();
  v47 = v97;
  *v97 = v46;
  *(v47 + 8) = 0;
  *(v47 + 16) = 1;
  v48 = *(sub_1001F1160(&qword_100AE4550) + 44);
  v100 = sub_10046005C;
  v103 = sub_10046008C;
  sub_10045A22C(v2, sub_10046005C, v38, v33, v35, sub_10046008C, v42, v47 + v48);
  v49 = v104;
  sub_10079D054();
  v50 = sub_100005920(&qword_100AE4558, &qword_100AE4518);
  v51 = v101;
  v52 = v107;
  sub_10079D9A4();
  (*(v113 + 8))(v49, v118);
  sub_100007840(v47, &qword_100AE4518);
  v146 = sub_10079F214();
  v147 = v53;
  v144 = v52;
  v145 = v50;
  swift_getOpaqueTypeConformance2();
  v54 = sub_100206ECC();
  v55 = v105;
  v56 = v115;
  sub_10079D8E4();

  (*(v119 + 8))(v51, v56);
  v146 = sub_10079F1F4();
  v147 = v57;
  v58 = v110;
  v118 = v54;
  sub_10079C1E4();

  sub_100007840(v55, &qword_100AE4528);
  LOBYTE(v15) = *(v2 + 32);
  v59 = sub_10079F1B4();
  v60 = v111;
  sub_10044E17C(v15, v59, v61, v111);

  sub_100007840(v58, &qword_100AE4528);
  v62 = v133;
  sub_10079CA44();
  sub_1004600F4();
  v63 = v112;
  sub_10079D9D4();
  (*(v134 + 8))(v62, v135);
  sub_100007840(v60, &qword_100AE4530);
  v64 = v136;
  sub_10079CF14();
  v65 = swift_allocObject();
  v66 = *(v2 + 80);
  *(v65 + 80) = *(v2 + 64);
  *(v65 + 96) = v66;
  *(v65 + 112) = *(v2 + 96);
  *(v65 + 128) = *(v2 + 112);
  v67 = *(v2 + 16);
  *(v65 + 16) = *v2;
  *(v65 + 32) = v67;
  v68 = *(v2 + 48);
  *(v65 + 48) = *(v2 + 32);
  *(v65 + 64) = v68;
  sub_1004600BC(v2, &v146);
  v69 = v142;
  sub_10079C214();

  (*(v138 + 8))(v64, v139);
  sub_100007840(v63, &qword_100AE4538);
  v70 = swift_allocObject();
  v71 = *(v2 + 80);
  *(v70 + 80) = *(v2 + 64);
  *(v70 + 96) = v71;
  *(v70 + 112) = *(v2 + 96);
  *(v70 + 128) = *(v2 + 112);
  v72 = *(v2 + 16);
  *(v70 + 16) = *v2;
  *(v70 + 32) = v72;
  v73 = *(v2 + 48);
  *(v70 + 48) = *(v2 + 32);
  *(v70 + 64) = v73;
  v144 = v99;
  v145 = v98;
  sub_1004600BC(v2, &v146);
  v74 = sub_10079D5D4();
  v148 = v75 & 1;
  v76 = &v69[*(v132 + 36)];
  *v76 = sub_100460410;
  *(v76 + 1) = v70;
  *(v76 + 2) = v74;
  *(v76 + 3) = v77;
  v76[32] = v75 & 1;
  *(v76 + 33) = v144;
  *(v76 + 9) = *(&v144 + 3);
  v78 = v100;
  *(v76 + 5) = v79;
  *(v76 + 6) = v78;
  *(v76 + 7) = v38;

  v80 = v106;
  sub_1007A2154();
  v81 = v109;
  sub_100796C94();
  v82 = v108;
  v130(v114, v80, v108);
  v83 = [v127 bundleForClass:v128];
  v84 = v81;
  v85 = v81;
  v86 = v116;
  v124(v120, v84, v116);
  v87 = sub_1007A22D4();
  v89 = v88;
  v123(v85, v86);
  v121(v80, v82);
  v146 = v87;
  v147 = v89;
  sub_100460438();
  v90 = v137;
  v91 = v142;
  sub_10079D924();

  sub_100007840(v91, &qword_100AE4540);
  v92 = swift_allocObject();
  v93 = *(v2 + 80);
  *(v92 + 80) = *(v2 + 64);
  *(v92 + 96) = v93;
  *(v92 + 112) = *(v2 + 96);
  *(v92 + 128) = *(v2 + 112);
  v94 = *(v2 + 16);
  *(v92 + 16) = *v2;
  *(v92 + 32) = v94;
  v95 = *(v2 + 48);
  *(v92 + 48) = *(v2 + 32);
  *(v92 + 64) = v95;
  sub_1004600BC(v2, &v146);
  sub_1004605A8(&qword_100AE45A8, &qword_100AE4548, &unk_1008270E8, sub_100460438);
  sub_10079D764();

  return sub_100007840(v90, &qword_100AE4548);
}

uint64_t sub_10045A22C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v170 = a6;
  v171 = a7;
  v168 = a4;
  v169 = a5;
  v166 = a2;
  v167 = a3;
  v172 = a8;
  v164 = sub_1001F1160(&qword_100AE45B0);
  __chkstk_darwin(v164);
  v165 = &v140 - v9;
  v10 = sub_10079D4D4();
  v159 = *(v10 - 8);
  v160 = v10;
  __chkstk_darwin(v10);
  v158 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for ThemeStateOverlayView();
  __chkstk_darwin(v155);
  v157 = (&v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v156 = &v140 - v14;
  v15 = sub_1001F1160(&qword_100AE45B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v140 - v16;
  v141 = sub_1001F1160(&qword_100AE45C0);
  __chkstk_darwin(v141);
  v19 = &v140 - v18;
  v142 = sub_1001F1160(&qword_100AE45C8);
  __chkstk_darwin(v142);
  v21 = &v140 - v20;
  v143 = sub_1001F1160(&qword_100AE45D0);
  __chkstk_darwin(v143);
  v23 = &v140 - v22;
  v144 = sub_1001F1160(&qword_100AE45D8);
  __chkstk_darwin(v144);
  v146 = &v140 - v24;
  v145 = sub_1001F1160(&qword_100AE45E0);
  __chkstk_darwin(v145);
  v148 = &v140 - v25;
  v147 = sub_1001F1160(&qword_100AE45E8);
  __chkstk_darwin(v147);
  v151 = &v140 - v26;
  v150 = sub_1001F1160(&qword_100AE45F0);
  __chkstk_darwin(v150);
  v173 = &v140 - v27;
  v149 = sub_1001F1160(&qword_100AE45F8);
  __chkstk_darwin(v149);
  v174 = &v140 - v28;
  v152 = sub_1001F1160(&qword_100AE4600);
  __chkstk_darwin(v152);
  v154 = &v140 - v29;
  v153 = sub_1001F1160(&qword_100AE4608);
  __chkstk_darwin(v153);
  v161 = &v140 - v30;
  v163 = sub_1001F1160(&qword_100AE4610);
  __chkstk_darwin(v163);
  v162 = &v140 - v31;
  *v17 = sub_10079CB24();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v32 = sub_1001F1160(&qword_100AE4618);
  v33 = a1;
  sub_10045B0B4(a1, &v17[*(v32 + 44)]);
  sub_1001F1160(&qword_100AE17F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  v35 = sub_10079D2C4();
  *(inited + 32) = v35;
  v36 = sub_10079D2E4();
  *(inited + 33) = v36;
  v37 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v35)
  {
    v37 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v36)
  {
    v37 = sub_10079D2D4();
  }

  if (*v33)
  {
    v38 = 6.0;
  }

  else
  {
    v38 = 8.0;
  }

  if (*v33)
  {
    v39 = 4.0;
  }

  else
  {
    v39 = 6.0;
  }

  sub_10079BBA4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_10020B3C8(v17, v19, &qword_100AE45B8);
  v48 = &v19[*(v141 + 36)];
  *v48 = v37;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_10079D2A4();
  sub_10079BBA4();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_10020B3C8(v19, v21, &qword_100AE45C0);
  v58 = &v21[*(v142 + 36)];
  *v58 = v49;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  v59 = sub_10079D2B4();
  sub_10079BBA4();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_10020B3C8(v21, v23, &qword_100AE45C8);
  v68 = &v23[*(v143 + 36)];
  *v68 = v59;
  *(v68 + 1) = v61;
  *(v68 + 2) = v63;
  *(v68 + 3) = v65;
  *(v68 + 4) = v67;
  v68[40] = 0;
  v69 = sub_10079E474();
  v71 = v70;
  v72 = v146;
  sub_10020B3C8(v23, v146, &qword_100AE45D0);
  v73 = (v72 + *(v144 + 36));
  *v73 = sub_1002581A4;
  v73[1] = 0;
  v73[2] = v69;
  v73[3] = v71;
  v134 = 0;
  LOBYTE(v135) = 1;
  v136 = 0;
  LOBYTE(v137) = 1;
  v138 = sub_10079E474();
  v139 = v74;
  sub_10079C414();
  v75 = v148;
  sub_10020B3C8(v72, v148, &qword_100AE45D8);
  v76 = (v75 + *(v145 + 36));
  v77 = v180;
  v76[4] = v179;
  v76[5] = v77;
  v76[6] = v181;
  v78 = v176;
  *v76 = v175;
  v76[1] = v78;
  v79 = v178;
  v76[2] = v177;
  v76[3] = v79;
  v134 = 0;
  LOBYTE(v135) = 1;
  v136 = 0x7FF0000000000000;
  LOBYTE(v137) = 0;
  v138 = sub_10079E474();
  v139 = v80;
  sub_10079C414();
  v81 = v151;
  sub_10020B3C8(v75, v151, &qword_100AE45E0);
  v82 = (v81 + *(v147 + 36));
  v83 = v187;
  v82[4] = v186;
  v82[5] = v83;
  v82[6] = v188;
  v84 = v183;
  *v82 = v182;
  v82[1] = v84;
  v85 = v185;
  v82[2] = v184;
  v82[3] = v85;
  v148 = v33;
  v86 = *(v33 + 8);

  sub_10079F1A4();
  v87 = sub_10079DEA4();
  LOBYTE(v71) = sub_10079D294();
  v88 = v81;
  v89 = v173;
  sub_10020B3C8(v88, v173, &qword_100AE45E8);
  v90 = v89 + *(v150 + 36);
  *v90 = v87;
  *(v90 + 8) = v71;
  v91 = sub_10079E474();
  v150 = v92;
  v151 = v91;
  v149 = &v174[*(v149 + 9)];
  v94 = v157;
  v93 = v158;
  *v157 = v86;
  *(v94 + 8) = v39;
  *(v94 + 16) = v38;
  *&v189 = 0x402C000000000000;
  v95 = enum case for Font.TextStyle.caption(_:);
  v96 = v160;
  v97 = *(v159 + 104);
  v97(v93, enum case for Font.TextStyle.caption(_:), v160);
  sub_100247DCC();
  sub_10079BDD4();
  *&v189 = 0x4032000000000000;
  v97(v93, v95, v96);
  v98 = v174;
  sub_10079BDD4();
  v99 = v156;
  sub_100460DB0(v94, v156, type metadata accessor for ThemeStateOverlayView);
  v100 = v99;
  v101 = v149;
  sub_100460DB0(v100, v149, type metadata accessor for ThemeStateOverlayView);
  v102 = (v101 + *(sub_1001F1160(&unk_100AE4620) + 36));
  v103 = v150;
  *v102 = v151;
  v102[1] = v103;
  sub_10020B3C8(v173, v98, &qword_100AE45F0);
  if (qword_100AD1658 != -1)
  {
    swift_once();
  }

  v104 = sub_10079C3D4();
  v105 = sub_100008B98(v104, qword_100AE3E20);
  v106 = v154;
  v107 = &v154[*(v152 + 36)];
  sub_10045FFF4(v105, v107, &type metadata accessor for RoundedRectangle);
  *(v107 + *(sub_1001F1160(&qword_100AD97F8) + 36)) = 256;
  sub_10020B3C8(v98, v106, &qword_100AE45F8);
  v108 = v161;
  v109 = &v161[*(v153 + 36)];
  sub_10045FFF4(v105, v109, &type metadata accessor for RoundedRectangle);
  *(v109 + *(sub_1001F1160(&qword_100AE4630) + 36)) = 0;
  sub_10020B3C8(v106, v108, &qword_100AE4600);
  v110 = v148;
  LOBYTE(v106) = *(v148 + 32);
  v111 = objc_opt_self();
  v112 = &selRef_labelColor;
  if ((v106 & 1) == 0)
  {
    v112 = &selRef_quaternaryLabelColor;
  }

  v113 = [v111 *v112];
  v114 = sub_10079DEA4();
  sub_10045912C();
  sub_10079BCF4();
  v115 = v165;
  sub_10045FFF4(v105, v165, &type metadata accessor for RoundedRectangle);
  v116 = *&v189 * 0.5;
  v117 = v115 + *(v164 + 68);
  sub_10045FFF4(v105, v117, &type metadata accessor for RoundedRectangle);
  *(v117 + *(sub_10079C3C4() + 20)) = v116;
  v118 = v117 + *(sub_1001F1160(&qword_100AE4638) + 36);
  v119 = v190;
  *v118 = v189;
  *(v118 + 16) = v119;
  *(v118 + 32) = v191;
  v120 = sub_1001F1160(&qword_100AE4640);
  *(v117 + *(v120 + 52)) = v114;
  *(v117 + *(v120 + 56)) = 256;
  v121 = sub_10079E474();
  v123 = v122;
  v124 = (v117 + *(sub_1001F1160(&qword_100AE4648) + 36));
  *v124 = v121;
  v124[1] = v123;
  v125 = sub_10079E474();
  v127 = v126;
  v128 = v162;
  v129 = &v162[*(v163 + 36)];
  sub_10020B3C8(v115, v129, &qword_100AE45B0);
  v130 = (v129 + *(sub_1001F1160(&qword_100AE4650) + 36));
  *v130 = v125;
  v130[1] = v127;
  v131 = sub_10020B3C8(v108, v128, &qword_100AE4608);
  __chkstk_darwin(v131);
  v132 = v166;
  *(&v140 - 8) = v110;
  *(&v140 - 7) = v132;
  sub_1001F1160(&qword_100AE4658);
  sub_100460670();
  sub_100005920(&unk_100AE46F0, &qword_100AE4658);
  sub_10079D6C4();
  return sub_100007840(v128, &qword_100AE4610);
}

uint64_t sub_10045B0B4@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v128 = a2;
  v110 = sub_1001F1160(&qword_100AE4720);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = v99 - v3;
  v121 = sub_1001F1160(&qword_100AE4728);
  v118 = *(v121 - 8);
  __chkstk_darwin(v121);
  v116 = v99 - v4;
  v115 = sub_1001F1160(&qword_100AE4730);
  __chkstk_darwin(v115);
  v125 = v99 - v5;
  v123 = sub_1001F1160(&qword_100AE4738);
  __chkstk_darwin(v123);
  v126 = v99 - v6;
  v124 = sub_1001F1160(&unk_100AE4740);
  __chkstk_darwin(v124);
  v127 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v119 = v99 - v9;
  __chkstk_darwin(v10);
  v132 = v99 - v11;
  v103 = sub_10079D4D4();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v13 - 8);
  v15 = v99 - v14;
  v16 = type metadata accessor for TextFormatSizeLabel();
  __chkstk_darwin(v16);
  v18 = (v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_1001F1160(&qword_100AE4750);
  __chkstk_darwin(v107);
  v20 = v99 - v19;
  v21 = sub_1001F1160(&qword_100AE4758);
  __chkstk_darwin(v21);
  v23 = v99 - v22;
  v122 = sub_1001F1160(&unk_100AE4760);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v135 = v99 - v26;
  v27 = *a1;
  sub_10079E474();
  LODWORD(v133) = v27;
  sub_10079BE54();
  v114 = v145;
  v113 = v147;
  v112 = v149;
  v111 = v150;
  v144 = 1;
  v143 = v146;
  v142 = v148;
  v134 = a1;
  v28 = sub_10079F204();
  v29 = sub_10079F184();
  v30 = sub_10079D3A4();
  v100 = *(v30 - 8);
  v31 = *(v100 + 56);
  v131 = v30;
  v130 = v100 + 56;
  v129 = v31;
  (v31)(v15, 1, 1);
  v32 = sub_10079D424();
  sub_100007840(v15, &unk_100AD1FC0);
  if (v28)
  {
    LODWORD(v106) = v29;

    v33 = sub_1007A0824();
    if (v33 > 1)
    {
      if (v33 != 2)
      {
        v37 = v21;
        v38 = v131;
        (*(v100 + 104))(v15, enum case for Font.Design.serif (_:), v131);
        v39 = v38;
        v21 = v37;
        v129(v15, 0, 1, v39);
        v40 = sub_10079D424();

        sub_100007840(v15, &unk_100AD1FC0);
        v32 = v40;
        goto LABEL_8;
      }
    }

    else if (v33)
    {
      v104 = sub_1007A07F4();
      v99[1] = v34;
      v35 = *(v102 + 104);
      v36 = v101;
      v105 = v21;
      v35(v101, enum case for Font.TextStyle.body(_:), v103);
      v104 = sub_10079D404();

      v21 = v105;
      (*(v102 + 8))(v36, v103);
      v32 = v104;
LABEL_8:
      LOBYTE(v29) = v106;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  if (v29)
  {
    v41 = sub_10079D384();

    v32 = v41;
  }

  v43 = *(v134 + 2);
  v42 = *(v134 + 3);
  *v18 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADBC10);
  swift_storeEnumTagMultiPayload();
  *(v18 + *(v16 + 20)) = v32;
  v44 = (v18 + *(v16 + 24));
  *v44 = v43;
  v44[1] = v42;

  sub_10079F234();
  sub_10079DEA4();
  sub_10079F224();
  v45 = sub_10079DE24();

  KeyPath = swift_getKeyPath();
  sub_100460DB0(v18, v20, type metadata accessor for TextFormatSizeLabel);
  v47 = &v20[*(v107 + 36)];
  *v47 = KeyPath;
  v47[1] = v45;
  sub_10020B3C8(v20, v23, &qword_100AE4750);
  *&v23[*(v21 + 36)] = 257;
  sub_100460E18();
  sub_10079DC94();
  sub_100007840(v23, &qword_100AE4758);
  sub_10079E474();
  sub_10079BE54();
  v107 = v151;
  v106 = v153;
  v105 = v155;
  v104 = v156;
  v141 = 1;
  v140 = v152;
  v139 = v154;
  v157 = sub_10079F214();
  v158 = v48;
  sub_100206ECC();
  v49 = sub_10079D5D4();
  v51 = v50;
  v157 = v49;
  v158 = v50;
  v53 = v52 & 1;
  LOBYTE(v159) = v52 & 1;
  v160 = v54;
  v55 = v108;
  sub_10079DC94();
  sub_10020B430(v49, v51, v53);

  v157 = &type metadata for Text;
  v158 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v56 = v116;
  v57 = v110;
  sub_10079D8A4();
  (*(v109 + 8))(v55, v57);
  v58 = sub_10079F204();
  v59 = sub_10079F184();
  v129(v15, 1, 1, v131);
  v60 = sub_10079D424();
  sub_100007840(v15, &unk_100AD1FC0);
  if (v58)
  {

    v61 = sub_1007A0824();
    if (v61 > 1)
    {
      if (v61 != 2)
      {
        v97 = v131;
        (*(v100 + 104))(v15, enum case for Font.Design.serif (_:), v131);
        v129(v15, 0, 1, v97);
        v98 = sub_10079D424();

        sub_100007840(v15, &unk_100AD1FC0);
        v60 = v98;
        if ((v59 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if (v61)
    {
      sub_1007A07F4();
      v62 = v102;
      v63 = v101;
      v64 = v103;
      (*(v102 + 104))(v101, enum case for Font.TextStyle.body(_:), v103);
      v65 = sub_10079D404();

      (*(v62 + 8))(v63, v64);
      v60 = v65;
      if ((v59 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  if (v59)
  {
LABEL_19:
    v66 = sub_10079D384();

    v60 = v66;
  }

LABEL_20:

  v67 = swift_getKeyPath();
  v68 = v125;
  (*(v118 + 32))(v125, v56, v121);
  v69 = &v68[*(v115 + 36)];
  *v69 = v67;
  v69[1] = v60;
  sub_10079F234();
  sub_10079DEA4();
  sub_10079F224();
  v70 = sub_10079DE24();

  v71 = swift_getKeyPath();
  v72 = v68;
  v73 = v126;
  sub_10020B3C8(v72, v126, &qword_100AE4730);
  v74 = (v73 + *(v123 + 36));
  *v74 = v71;
  v74[1] = v70;
  v75 = *(v134 + 14) / *(v134 + 13);
  v76 = swift_getKeyPath();
  v77 = v119;
  sub_10020B3C8(v73, v119, &qword_100AE4738);
  v78 = v77 + *(v124 + 36);
  *v78 = v76;
  *(v78 + 8) = v75;
  v79 = v132;
  sub_10020B3C8(v77, v132, &unk_100AE4740);
  sub_10079E474();
  sub_10079BE54();
  v134 = v157;
  v133 = v159;
  v131 = v161;
  v130 = v162;
  v138 = 1;
  v137 = v158;
  v136 = v160;
  LOBYTE(v73) = v144;
  v80 = v143;
  v81 = v142;
  v82 = v120;
  v83 = *(v120 + 16);
  v84 = v117;
  v85 = v122;
  v83(v117, v135, v122);
  LODWORD(v121) = v141;
  LODWORD(v123) = v140;
  LODWORD(v124) = v139;
  v86 = v79;
  v87 = v127;
  sub_1000077D8(v86, v127, &unk_100AE4740);
  LODWORD(v125) = v138;
  LODWORD(v126) = v137;
  LODWORD(v129) = v136;
  v88 = v128;
  *v128 = 0;
  *(v88 + 8) = v73;
  v88[2] = v114;
  *(v88 + 24) = v80;
  v88[4] = v113;
  *(v88 + 40) = v81;
  v89 = v111;
  v88[6] = v112;
  v88[7] = v89;
  v90 = sub_1001F1160(&qword_100AE4778);
  v83(v88 + v90[12], v84, v85);
  v91 = v88 + v90[16];
  *v91 = 0;
  v91[8] = v121;
  *(v91 + 2) = v107;
  v91[24] = v123;
  *(v91 + 4) = v106;
  v91[40] = v124;
  v92 = v104;
  *(v91 + 6) = v105;
  *(v91 + 7) = v92;
  sub_1000077D8(v87, v88 + v90[20], &unk_100AE4740);
  v93 = v88 + v90[24];
  *v93 = 0;
  v93[8] = v125;
  *(v93 + 2) = v134;
  v93[24] = v126;
  *(v93 + 4) = v133;
  v93[40] = v129;
  v94 = v130;
  *(v93 + 6) = v131;
  *(v93 + 7) = v94;
  sub_100007840(v132, &unk_100AE4740);
  v95 = *(v82 + 8);
  v95(v135, v85);
  sub_100007840(v87, &unk_100AE4740);
  return (v95)(v84, v85);
}

uint64_t sub_10045C2D4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a4;
  v6 = sub_1001F1160(&qword_100ADB858);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_1001F1160(&qword_100AE4700);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = sub_1001F1160(&qword_100AE4708);
  __chkstk_darwin(v15 - 8);
  v37 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = &v36 - v18;
  if (sub_10079F154())
  {
    sub_10079BB44();
    v19 = sub_10079BB84();
    v20 = (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v36 = &v36;
    __chkstk_darwin(v20);
    *(&v36 - 2) = a1;
    *(&v36 - 1) = a2;

    sub_1001F1160(&qword_100AD1D70);
    sub_100005920(&qword_100ADBBB0, &qword_100AD1D70);
    sub_10079E044();
    v21 = v41;
    (*(v10 + 32))(v41, v14, v9);
    v22 = v10;
    v23 = *(v10 + 56);
    v24 = v21;
    v25 = 0;
  }

  else
  {
    v22 = v10;
    v23 = *(v10 + 56);
    v24 = v41;
    v25 = 1;
  }

  v26 = v9;
  v23(v24, v25, 1, v9);

  sub_1001F1160(&qword_100AD1D70);
  sub_100005920(&qword_100ADBBB0, &qword_100AD1D70);
  sub_10079E054();
  v27 = v41;
  v28 = v37;
  sub_1000077D8(v41, v37, &qword_100AE4708);
  v29 = v22;
  v30 = *(v22 + 16);
  v31 = v38;
  v30(v38, v14, v26);
  v32 = v40;
  sub_1000077D8(v28, v40, &qword_100AE4708);
  v33 = sub_1001F1160(&qword_100AE4710);
  v30((v32 + *(v33 + 48)), v31, v26);
  v34 = *(v29 + 8);
  v34(v14, v26);
  sub_100007840(v27, &qword_100AE4708);
  v34(v31, v26);
  return sub_100007840(v28, &qword_100AE4708);
}

uint64_t sub_10045C794()
{
  sub_100206ECC();

  return sub_10079DFD4();
}

uint64_t sub_10045C80C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  __chkstk_darwin(v2);
  v4 = v18 - v3;
  v5 = sub_1007A21D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  sub_1007A2154();
  sub_100796C94();
  (*(v6 + 16))(v8, v11, v5);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_100796C94();
  v14 = sub_1007A22B4();
  v16 = v15;
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v11, v5);
  v18[1] = v14;
  v18[2] = v16;
  sub_100206ECC();
  return sub_10079DFD4();
}

void sub_10045CB14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = sub_10079CE14();
  __chkstk_darwin(v5 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = sub_1007A2654();
  v10 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = a1[2];
  WitnessTable = swift_getWitnessTable();
  v50 = v10;
  v44 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v55 = v9;
  *(&v55 + 1) = AssociatedTypeWitness;
  v49 = v12;
  *&v56 = v12;
  *(&v56 + 1) = WitnessTable;
  v57 = AssociatedConformanceWitness;
  v15 = sub_10079E284();
  v45 = a1[4];
  v54 = v45;
  v46 = swift_getWitnessTable();
  v16 = sub_10079E564();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v47 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v48 = v41 - v20;
  v21 = sub_10079E374();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_10079E384();
  __chkstk_darwin(v25 - 8);
  v27 = v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (*(v3 + 8) + *(v3 + 24)) / (*(v3 + 24) + *(v3 + 16));
  if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v42 = v21;
  v43 = v7;
  if (v28 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  if ((v29 * *(v3 + 56)) >> 64 == (v29 * *(v3 + 56)) >> 63)
  {
    *&v52 = *v3;

    swift_getWitnessTable();
    v41[1] = v15;
    sub_1007A28E4();
    v52 = v55;
    v53 = v56;
    v30 = v44;
    sub_1007A3524();
    swift_getWitnessTable();
    sub_1007A2664();
    *v24 = xmmword_100826830;
    (*(v22 + 104))(v24, enum case for GridItem.Size.flexible(_:), v42);
    sub_10079E394();
    v31 = sub_10045D0C0(v27, v29);
    v42 = v41;
    __chkstk_darwin(v31);
    *&v32 = v49;
    *(&v32 + 1) = v30;
    *&v33 = v45;
    *(&v33 + 1) = v50;
    *&v41[-6] = v32;
    *&v41[-4] = v33;
    v40 = v3;
    sub_10079CB24();
    v34 = v46;
    sub_10045D624();
    v39 = v34;
    v35 = v47;
    sub_10079E554();

    v36 = swift_getWitnessTable();
    v37 = v48;
    sub_10039232C(v35, v16, v36);
    v38 = *(v17 + 8);
    v38(v35, v16);
    sub_10039232C(v37, v16, v36);
    v38(v37, v16);
    return;
  }

LABEL_12:
  __break(1u);
}

char *sub_10045D0C0(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_10079E384();
      v5 = sub_1007A2634();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = sub_10079E384();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_10045D21C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a5;
  v32 = a7;
  v31 = sub_1007A2654();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v34 = v31;
  v35 = AssociatedTypeWitness;
  v36 = a3;
  v37 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_10079E284();
  v28 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v39 = a1;
  v18 = swift_allocObject();
  v19 = a3;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v20 = v27;
  *(v18 + 32) = v27;
  *(v18 + 40) = a6;
  v21 = a2[1];
  *(v18 + 48) = *a2;
  *(v18 + 64) = v21;
  v22 = a2[3];
  *(v18 + 80) = a2[2];
  *(v18 + 96) = v22;

  v34 = v19;
  v35 = a4;
  v36 = v20;
  v37 = a6;
  v23 = type metadata accessor for Grid();
  (*(*(v23 - 8) + 16))(&v34, a2, v23);
  sub_10079E274();
  v33 = v20;
  v24 = swift_getWitnessTable();
  sub_10039232C(v14, v12, v24);
  v25 = *(v28 + 8);
  v25(v14, v12);
  sub_10039232C(v17, v12, v24);
  return (v25)(v17, v12);
}

uint64_t sub_10045D4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v17 - v12;
  (*(v14 + 40))(v11);
  sub_10039232C(v10, a3, a5);
  v15 = *(v7 + 8);
  v15(v10, a3);
  sub_10039232C(v13, a3, a5);
  return (v15)(v13, a3);
}

uint64_t sub_10045D624()
{
  sub_10079CE14();
  sub_100460EB4(&unk_100AE4780, &type metadata accessor for PinnedScrollableViews);
  return sub_1007A3D24();
}

uint64_t sub_10045D6E0()
{
  v0 = sub_10079C3D4();
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD1658 != -1)
  {
    swift_once();
  }

  v3 = sub_100008B98(v0, qword_100AE3E20);
  sub_10045FFF4(v3, v2, &type metadata accessor for RoundedRectangle);
  sub_100460EB4(&qword_100AE4510, &type metadata accessor for RoundedRectangle);
  result = sub_10079E2F4();
  qword_100AE3E40 = result;
  return result;
}

uint64_t sub_10045D828(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_opt_self() tertiarySystemFillColor];
  result = sub_10079DEA4();
  *a2 = result;
  return result;
}

uint64_t sub_10045D894@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t sub_10045D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10045FFA0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10045D994@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10045DA24(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10045DA90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C704();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10045DAC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C734();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10045DAF0@<X0>(void *a1@<X8>)
{
  result = sub_10079C614();
  *a1 = v3;
  return result;
}

uint64_t sub_10045DB44()
{
  type metadata accessor for ReadingSettingsView();
  sub_1001F1160(&qword_100AE4018);
  sub_10079E004();
  sub_10079E004();
  sub_1001F1160(&unk_100AE40F0);
  sub_10079DFF4();
  return sub_10079E004();
}

uint64_t sub_10045DC60(uint64_t a1)
{
  v4 = *(type metadata accessor for ReadingSettingsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_100452104(v8, a1, v6, v7, v1 + v5);
}

uint64_t sub_10045DD80(uint64_t a1)
{
  v4 = *(type metadata accessor for ReadingSettingsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_100451D38(v8, a1, v6, v7, v1 + v5);
}

uint64_t sub_10045DEA0()
{
  v1 = type metadata accessor for ReadingSettingsView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1000074E0(v0 + v2);
  v4 = v1[5];
  v5 = sub_1001F1160(&unk_100AE3E50);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = v1[11];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079BC44();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[13];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CEE4();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CEE4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  sub_10002AEBC(*(v3 + v1[15]), *(v3 + v1[15] + 8));
  sub_10002AEBC(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  sub_10002AEBC(*(v3 + v1[17]), *(v3 + v1[17] + 8));

  v14 = v1[22];
  v15 = sub_1001F1160(&qword_100AE3E68);
  (*(*(v15 - 8) + 8))(v3 + v14, v15);
  v16 = v3 + v1[23];
  v17 = sub_10079D024();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_1001F1160(&qword_100AE3E70);

  return swift_deallocObject();
}

uint64_t sub_10045E350(uint64_t a1)
{
  v4 = *(type metadata accessor for ReadingSettingsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1004530F8(v8, a1, v6, v7, v1 + v5);
}

double sub_10045E470@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReadingSettingsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100454284(a1, v6, a2);
}

uint64_t sub_10045E528(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ReadingSettingsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10045E5B4()
{
  result = qword_100AE41B8;
  if (!qword_100AE41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE41B8);
  }

  return result;
}

unint64_t sub_10045E608()
{
  result = qword_100AE41C0;
  if (!qword_100AE41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE41C0);
  }

  return result;
}

uint64_t sub_10045E6A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for ReadingSettingsView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  v7 = v6[3];
  v8 = v6[4];
  sub_10000E3E8(v6, v7);
  return a2(a1, v7, v8);
}

uint64_t sub_10045E738()
{
  v1 = *(type metadata accessor for ReadingSettingsView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  sub_10000E3E8(v2, v2[3]);
  return sub_1007A1954();
}

unint64_t sub_10045E868()
{
  result = qword_100AE4278;
  if (!qword_100AE4278)
  {
    sub_1001F1234(&qword_100AE4270);
    sub_10045E920();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4278);
  }

  return result;
}

unint64_t sub_10045E920()
{
  result = qword_100AE4280;
  if (!qword_100AE4280)
  {
    sub_1001F1234(&qword_100AE4288);
    sub_10045E9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4280);
  }

  return result;
}

unint64_t sub_10045E9AC()
{
  result = qword_100AE4290;
  if (!qword_100AE4290)
  {
    sub_1001F1234(&qword_100AE4298);
    sub_10045EA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4290);
  }

  return result;
}

unint64_t sub_10045EA38()
{
  result = qword_100AE42A0;
  if (!qword_100AE42A0)
  {
    sub_1001F1234(&qword_100AE42A8);
    sub_100005920(&qword_100AE42B0, &qword_100AE42B8);
    sub_100005920(&qword_100AD1D60, &unk_100ADB260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE42A0);
  }

  return result;
}

uint64_t sub_10045EB1C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ReadingSettingsView();

  return sub_100457CE8(a1);
}

uint64_t sub_10045EB90()
{
  v1 = *(type metadata accessor for ReadingSettingsView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  sub_10000E3E8(v2, v2[3]);
  return sub_1007A1994();
}

unint64_t sub_10045EC18()
{
  result = qword_100AE42D0;
  if (!qword_100AE42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE42D0);
  }

  return result;
}

unint64_t sub_10045EC6C()
{
  result = qword_100AE42D8;
  if (!qword_100AE42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE42D8);
  }

  return result;
}

uint64_t sub_10045ECC0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ReadingSettingsView();

  return sub_100457D60(a1);
}

uint64_t sub_10045ED34()
{
  v1 = type metadata accessor for ReadingSettingsView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1000074E0(v0 + v2);
  v4 = v1[5];
  v5 = sub_1001F1160(&unk_100AE3E50);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = v1[11];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079BC44();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[13];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CEE4();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CEE4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  sub_10002AEBC(*(v3 + v1[15]), *(v3 + v1[15] + 8));
  sub_10002AEBC(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  sub_10002AEBC(*(v3 + v1[17]), *(v3 + v1[17] + 8));

  v14 = v1[22];
  v15 = sub_1001F1160(&qword_100AE3E68);
  (*(*(v15 - 8) + 8))(v3 + v14, v15);
  v16 = v3 + v1[23];
  v17 = sub_10079D024();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_1001F1160(&qword_100AE3E70);

  return swift_deallocObject();
}

uint64_t sub_10045F1D8()
{
  v1 = *(type metadata accessor for ReadingSettingsView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  sub_10000E3E8(v2, v2[3]);
  return sub_1007A1974();
}

uint64_t sub_10045F264@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReadingSettingsView() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100457BC4(a1, v7, v8, a2);
}

unint64_t sub_10045F328()
{
  result = qword_100AE43A8;
  if (!qword_100AE43A8)
  {
    sub_1001F1234(&unk_100AE4390);
    sub_100005920(&qword_100AE43B0, &unk_100AE43B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE43A8);
  }

  return result;
}

unint64_t sub_10045F3E0()
{
  result = qword_100AE43F8;
  if (!qword_100AE43F8)
  {
    sub_1001F1234(&qword_100AE43E0);
    sub_1004605A8(&qword_100AE4400, &qword_100AE4408, &unk_100826DE0, sub_1003F2178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE43F8);
  }

  return result;
}

unint64_t sub_10045F498()
{
  result = qword_100AE4418;
  if (!qword_100AE4418)
  {
    sub_1001F1234(&qword_100AE43D0);
    sub_10045F524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4418);
  }

  return result;
}

unint64_t sub_10045F524()
{
  result = qword_100AE4420;
  if (!qword_100AE4420)
  {
    sub_1001F1234(&qword_100AE43F0);
    sub_100005920(&qword_100AE4428, &qword_100AE4430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4420);
  }

  return result;
}

unint64_t sub_10045F5DC()
{
  result = qword_100AE4450;
  if (!qword_100AE4450)
  {
    sub_1001F1234(&qword_100AE4440);
    sub_100460EB4(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4450);
  }

  return result;
}

uint64_t sub_10045F6B0()
{
  v1 = type metadata accessor for ReadingSettingsView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000074E0(v2);
  v3 = v1[5];
  v4 = sub_1001F1160(&unk_100AE3E50);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[11];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10079BC44();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[13];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10079CEE4();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CEE4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  sub_10002AEBC(*(v2 + v1[15]), *(v2 + v1[15] + 8));
  sub_10002AEBC(*(v2 + v1[16]), *(v2 + v1[16] + 8));
  sub_10002AEBC(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  v13 = v1[22];
  v14 = sub_1001F1160(&qword_100AE3E68);
  (*(*(v14 - 8) + 8))(v2 + v13, v14);
  v15 = v2 + v1[23];
  v16 = sub_10079D024();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  sub_1001F1160(&qword_100AE3E70);

  return swift_deallocObject();
}

uint64_t sub_10045FB64(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for ReadingSettingsView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = v4[3];
  v6 = v4[4];
  sub_10000E3E8(v4, v5);
  return a1(v5, v6);
}

unint64_t sub_10045FBE8()
{
  result = qword_100AE4458;
  if (!qword_100AE4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4458);
  }

  return result;
}

uint64_t sub_10045FC68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10045FCB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10045FD1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_10045FD70()
{
  result = qword_100AE44E8;
  if (!qword_100AE44E8)
  {
    sub_1001F1234(&qword_100AE40E8);
    sub_10045FDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE44E8);
  }

  return result;
}

unint64_t sub_10045FDFC()
{
  result = qword_100AE44F0;
  if (!qword_100AE44F0)
  {
    sub_1001F1234(&qword_100AE4010);
    sub_10045FE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE44F0);
  }

  return result;
}

unint64_t sub_10045FE88()
{
  result = qword_100AE44F8;
  if (!qword_100AE44F8)
  {
    sub_1001F1234(&qword_100AE4008);
    sub_1004605A8(&qword_100AE4500, &qword_100AE4000, &unk_100826918, sub_100458EA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE44F8);
  }

  return result;
}

unint64_t sub_10045FFA0()
{
  result = qword_100AE4508;
  if (!qword_100AE4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4508);
  }

  return result;
}

uint64_t sub_10045FFF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1004600F4()
{
  result = qword_100AE4560;
  if (!qword_100AE4560)
  {
    sub_1001F1234(&qword_100AE4530);
    sub_100460180();
    sub_10046038C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4560);
  }

  return result;
}

unint64_t sub_100460180()
{
  result = qword_100AE4568;
  if (!qword_100AE4568)
  {
    sub_1001F1234(&qword_100AE4570);
    sub_10046020C();
    sub_100460338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4568);
  }

  return result;
}

unint64_t sub_10046020C()
{
  result = qword_100AE4578;
  if (!qword_100AE4578)
  {
    sub_1001F1234(&qword_100AE4528);
    sub_1001F1234(&qword_100AE4518);
    sub_100005920(&qword_100AE4558, &qword_100AE4518);
    swift_getOpaqueTypeConformance2();
    sub_100460EB4(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4578);
  }

  return result;
}

unint64_t sub_100460338()
{
  result = qword_100AE4580;
  if (!qword_100AE4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4580);
  }

  return result;
}

unint64_t sub_10046038C()
{
  result = qword_100AE4588;
  if (!qword_100AE4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4588);
  }

  return result;
}

unint64_t sub_100460438()
{
  result = qword_100AE4590;
  if (!qword_100AE4590)
  {
    sub_1001F1234(&qword_100AE4540);
    sub_1004605A8(&qword_100AE4598, &qword_100AE4538, &unk_1008270D8, sub_1004600F4);
    sub_1004604F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4590);
  }

  return result;
}

unint64_t sub_1004604F0()
{
  result = qword_100AE45A0;
  if (!qword_100AE45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE45A0);
  }

  return result;
}

uint64_t sub_100460544()
{

  sub_10002AEBC(*(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_1004605A8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    a4();
    sub_100460EB4(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100460670()
{
  result = qword_100AE4660;
  if (!qword_100AE4660)
  {
    sub_1001F1234(&qword_100AE4610);
    sub_100460728();
    sub_100005920(&qword_100AE46E8, &qword_100AE4650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4660);
  }

  return result;
}

unint64_t sub_100460728()
{
  result = qword_100AE4668;
  if (!qword_100AE4668)
  {
    sub_1001F1234(&qword_100AE4608);
    sub_1004607E0();
    sub_100005920(&qword_100AE46E0, &qword_100AE4630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4668);
  }

  return result;
}

unint64_t sub_1004607E0()
{
  result = qword_100AE4670;
  if (!qword_100AE4670)
  {
    sub_1001F1234(&qword_100AE4600);
    sub_100460898();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4670);
  }

  return result;
}

unint64_t sub_100460898()
{
  result = qword_100AE4678;
  if (!qword_100AE4678)
  {
    sub_1001F1234(&qword_100AE45F8);
    sub_100460950();
    sub_100005920(&unk_100AE46D0, &unk_100AE4620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4678);
  }

  return result;
}

unint64_t sub_100460950()
{
  result = qword_100AE4680;
  if (!qword_100AE4680)
  {
    sub_1001F1234(&qword_100AE45F0);
    sub_100460A08();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4680);
  }

  return result;
}

unint64_t sub_100460A08()
{
  result = qword_100AE4688;
  if (!qword_100AE4688)
  {
    sub_1001F1234(&qword_100AE45E8);
    sub_100460A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4688);
  }

  return result;
}

unint64_t sub_100460A94()
{
  result = qword_100AE4690;
  if (!qword_100AE4690)
  {
    sub_1001F1234(&qword_100AE45E0);
    sub_100460B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4690);
  }

  return result;
}

unint64_t sub_100460B20()
{
  result = qword_100AE4698;
  if (!qword_100AE4698)
  {
    sub_1001F1234(&qword_100AE45D8);
    sub_100460BD8();
    sub_100005920(&qword_100AE46C0, &qword_100AE46C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4698);
  }

  return result;
}

unint64_t sub_100460BD8()
{
  result = qword_100AE46A0;
  if (!qword_100AE46A0)
  {
    sub_1001F1234(&qword_100AE45D0);
    sub_100460C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE46A0);
  }

  return result;
}

unint64_t sub_100460C64()
{
  result = qword_100AE46A8;
  if (!qword_100AE46A8)
  {
    sub_1001F1234(&qword_100AE45C8);
    sub_100460CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE46A8);
  }

  return result;
}

unint64_t sub_100460CF0()
{
  result = qword_100AE46B0;
  if (!qword_100AE46B0)
  {
    sub_1001F1234(&qword_100AE45C0);
    sub_100005920(&qword_100AE46B8, &qword_100AE45B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE46B0);
  }

  return result;
}

uint64_t sub_100460DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100460E18()
{
  result = qword_100AE4770;
  if (!qword_100AE4770)
  {
    sub_1001F1234(&qword_100AE4758);
    sub_10024A698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4770);
  }

  return result;
}

uint64_t sub_100460EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100460F14()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE4790);
  sub_100008B98(v0, qword_100AE4790);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_100460F88()
{
  v1 = v0;
  v2 = type metadata accessor for OverlayViewModel.Search(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OverlayViewModel.Overlay(0);
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004621E4(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1001F1160(&qword_100AE4A10);
      sub_1004622AC();
      v11 = sub_1007A3764();

      return v11;
    }

    type metadata accessor for BookmarkNotesModule();
    v9 = &unk_100AE4A20;
    v10 = type metadata accessor for BookmarkNotesModule;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      type metadata accessor for ShareModule();
      v9 = &unk_100AE4A08;
      v10 = type metadata accessor for ShareModule;
    }

    else
    {
      type metadata accessor for TOCModule();
      v9 = &unk_100AE4A00;
      v10 = type metadata accessor for TOCModule;
    }

LABEL_9:
    sub_100462310(v9, v10);
    v11 = sub_1007A3764();

    return v11;
  }

  sub_100462248(v7, v4);
  sub_1001F1160(&qword_100ADB388);
  v11 = sub_10079FD64();
  sub_1003039C8(v4, type metadata accessor for OverlayViewModel.Search);
  return v11;
}

uint64_t sub_1004611E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100460F88();
  *a1 = result;
  return result;
}

uint64_t sub_100461258@<X0>(uint64_t *a1@<X8>)
{
  sub_1001F1160(&qword_100AE4A10);
  sub_1004622AC();
  result = sub_1007A3764();
  *a1 = result;
  return result;
}

uint64_t sub_1004612B0@<X0>(uint64_t *a1@<X8>)
{
  sub_1001F1160(&qword_100ADB388);
  result = sub_10079FD64();
  *a1 = result;
  return result;
}