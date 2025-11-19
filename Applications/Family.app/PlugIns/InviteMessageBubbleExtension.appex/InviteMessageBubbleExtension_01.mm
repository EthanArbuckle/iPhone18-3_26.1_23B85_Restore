uint64_t sub_10001D404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a3;
  v4[41] = a4;
  v4[38] = a1;
  v4[39] = a2;
  v5 = sub_100027BEC();
  v4[42] = v5;
  v6 = *(v5 - 8);
  v4[43] = v6;
  v7 = *(v6 + 64) + 15;
  v4[44] = swift_task_alloc();
  v8 = sub_100027D5C();
  v4[45] = v8;
  v9 = *(v8 - 8);
  v4[46] = v9;
  v10 = *(v9 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();

  return _swift_task_switch(sub_10001D530, 0, 0);
}

uint64_t sub_10001D530()
{
  v34 = v0;
  v1 = v0[48];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = v0[38];
  sub_100027CCC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_100027D4C();
  v7 = sub_10002850C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[48];
  v11 = v0[45];
  v10 = v0[46];
  v13 = v0[43];
  v12 = v0[44];
  v14 = v0[42];
  if (v8)
  {
    v32 = v0[45];
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = sub_100027BAC();
    v31 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100006B88(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v30, "Loading url for updateFamilyStatus %s", v15, 0xCu);
    sub_100007038(v16);

    v21 = *(v10 + 8);
    v21(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[49] = v21;
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = sub_1000283EC();
    v26 = v25;
  }

  else
  {
    v26 = 0x800000010002A940;
    v24 = 0xD00000000000002DLL;
  }

  v0[50] = v24;
  v0[51] = v26;
  v0[52] = objc_opt_self();
  sub_1000284AC();
  v0[53] = sub_10002849C();
  v28 = sub_10002848C();

  return _swift_task_switch(sub_10001D7E8, v28, v27);
}

uint64_t sub_10001D7E8()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);

  *(v0 + 449) = [v2 canSendText];

  return _swift_task_switch(sub_10001D864, 0, 0);
}

uint64_t sub_10001D864()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  if (*(v0 + 449))
  {
    v6 = 49;
  }

  else
  {
    v6 = 48;
  }

  sub_100001DFC(&qword_100034E98, &qword_10002A260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002A210;
  *(inited + 32) = sub_1000283EC();
  *(inited + 40) = v8;
  *(inited + 48) = 0x6E65726566657250;
  *(inited + 56) = 0xEB00000000736563;
  *(inited + 64) = sub_1000283EC();
  *(inited + 72) = v9;
  *(inited + 80) = v2;
  *(inited + 88) = v1;
  *(inited + 96) = sub_1000283EC();
  *(inited + 104) = v10;
  *(inited + 112) = v6;
  *(inited + 120) = 0xE100000000000000;
  v11 = sub_10001FFF0(inited);
  swift_setDeallocating();
  sub_100001DFC(&qword_100034EA0, &qword_10002A268);
  swift_arrayDestroy();
  sub_10001DF1C(v11);

  v12 = objc_allocWithZone(FAUpdateFamilyInviteStatusRequest);
  v13 = sub_1000283DC();
  isa = sub_10002836C().super.isa;

  v15 = [v12 initWithInviteCode:v13 inviteStatus:v4 responseFormat:1 additionalRequestParameters:isa];
  *(v0 + 432) = v15;

  if (v15)
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_10001DB70;
    v16 = swift_continuation_init();
    *(v0 + 264) = sub_100001DFC(&qword_100034EA8, &qword_10002A270);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10001E1E4;
    *(v0 + 232) = &unk_100031858;
    *(v0 + 240) = v16;
    [v15 startRequestWithCompletionHandler:v0 + 208];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v18 = *(v0 + 376);
    v17 = *(v0 + 384);
    v19 = *(v0 + 352);

    v20 = *(v0 + 8);

    return v20(0, 0);
  }
}

uint64_t sub_10001DB70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_10001DD14;
  }

  else
  {
    v3 = sub_10001DC80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001DC80()
{
  v1 = *(v0 + 432);

  v2 = *(v0 + 448);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 352);

  v6 = *(v0 + 8);

  return v6(v2, 0);
}

uint64_t sub_10001DD14()
{
  v31 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 376);
  swift_willThrow();

  sub_100027CCC();
  swift_errorRetain();
  v4 = sub_100027D4C();
  v5 = sub_1000284EC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 432);
    v6 = *(v0 + 440);
    v8 = *(v0 + 368);
    v28 = *(v0 + 376);
    v29 = *(v0 + 392);
    v9 = *(v0 + 360);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v14 = *(v0 + 288);
    v15 = sub_10002866C();
    v17 = sub_100006B88(v15, v16, &v30);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error updaing family invite status %s", v10, 0xCu);
    sub_100007038(v11);

    v29(v28, v9);
  }

  else
  {
    v18 = *(v0 + 392);
    v20 = *(v0 + 368);
    v19 = *(v0 + 376);
    v21 = *(v0 + 360);

    v18(v19, v21);
  }

  v22 = *(v0 + 440);
  v24 = *(v0 + 376);
  v23 = *(v0 + 384);
  v25 = *(v0 + 352);

  v26 = *(v0 + 8);

  return v26(v22, 1);
}

uint64_t sub_10001DF1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001DFC(&qword_100034FC0, &qword_10002A408);
    v2 = sub_10002860C();
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
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100007FF4(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100007FF4(v33, v34);
    result = sub_10002857C(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_100007FF4(v34, (v2[7] + 32 * v10));
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

uint64_t sub_10001E1E4(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100008754((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001DFC(&qword_100034CF0, qword_10002A0D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10001E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a3;
  v4[36] = a4;
  v4[33] = a1;
  v4[34] = a2;
  v5 = sub_100027D5C();
  v4[37] = v5;
  v6 = *(v5 - 8);
  v4[38] = v6;
  v7 = *(v6 + 64) + 15;
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_10001E374, 0, 0);
}

uint64_t sub_10001E374()
{
  v1 = v0[33];
  v2 = [objc_allocWithZone(FACircleContext) initWithEventType:FACircleEventTypeAcceptInvitationFromMessages];
  v0[40] = v2;
  v3 = objc_allocWithZone(NSURLComponents);
  sub_100027BBC(v4);
  v6 = v5;
  v7 = [v3 initWithURL:v5 resolvingAgainstBaseURL:1];

  if (v7)
  {
    v9 = v0[35];
    v8 = v0[36];
    v10 = [v7 fa_queryItemsDictionary];
    v11 = sub_10002837C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F938(v9, v8, 0xD000000000000013, 0x800000010002A9B0, isUniquelyReferenced_nonNull_native);
    sub_100001DFC(&qword_100034810, &qword_100029740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10002A220;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000010002A9D0;
    *(inited + 72) = sub_100001DFC(&qword_100034EB8, &unk_10002A290);
    *(inited + 48) = v11;
    sub_1000079CC(inited);
    swift_setDeallocating();
    sub_100008800(inited + 32, &qword_100034818, &qword_100029748);
    isa = sub_10002836C().super.isa;

    [v2 setAdditionalParameters:isa];
  }

  v15 = v0[34];
  v16 = sub_1000283DC();
  [v2 setClientName:v16];

  v17 = [objc_allocWithZone(FACircleStateController) initWithPresenter:v15];
  v0[41] = v17;
  [v17 setPresentationType:3];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_10001E6EC;
  v18 = swift_continuation_init();
  v0[27] = sub_100001DFC(&qword_100034EB0, &unk_10002A280);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_10001E9DC;
  v0[23] = &unk_100031880;
  v0[24] = v18;
  [v17 performWithContext:v2 completion:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001E6EC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001E7CC, 0, 0);
}

uint64_t sub_10001E7CC()
{
  v30 = v0;
  v1 = *(v0 + 248);
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 312);
    sub_100027CCC();
    v5 = v3;
    v6 = sub_100027D4C();
    v7 = sub_1000284EC();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 320);
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 296);
    if (v8)
    {
      v27 = *(v0 + 328);
      v28 = *(v0 + 320);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v26 = v10;
      v16 = *(v0 + 224);
      v15 = *(v0 + 232);
      v17 = *(v0 + 240);
      v18 = sub_10002866C();
      v25 = v12;
      v20 = sub_100006B88(v18, v19, &v29);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error loading stateController: %s", v13, 0xCu);
      sub_100007038(v14);

      (*(v11 + 8))(v26, v25);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    v21 = *(v0 + 320);
  }

  v22 = *(v0 + 312);

  v23 = *(v0 + 8);

  return v23(v1);
}

uint64_t sub_10001E9DC(uint64_t a1, void *a2)
{
  v3 = sub_100008754((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10001EA40()
{
  v0 = sub_100027D5C();
  v55 = *(v0 - 8);
  v56 = v0;
  v1 = *(v55 + 64);
  __chkstk_darwin(v0);
  v57 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100027B3C();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = sub_100027C1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v46 - v17;
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  v21 = sub_100027C8C();
  v49 = *(v21 - 8);
  v50 = v21;
  v22 = *(v49 + 64);
  __chkstk_darwin(v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027C6C();
  sub_100027C4C();
  sub_100027C0C();
  sub_100027C4C();
  v25 = *(v11 + 8);
  v53 = v11 + 8;
  v54 = v10;
  v48 = v25;
  v25(v15, v10);
  sub_100001DFC(&qword_100034EC0, &qword_10002A2A0);
  v26 = sub_100027C7C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10002A220;
  (*(v27 + 104))(v30 + v29, enum case for Calendar.Component.day(_:), v26);
  sub_10001FCF8(v30);
  swift_setDeallocating();
  (*(v27 + 8))(v30 + v29, v26);
  swift_deallocClassInstance();
  v51 = v20;
  v52 = v18;
  sub_100027C5C();

  sub_100027CBC();
  v31 = v46;
  v32 = v47;
  (*(v46 + 16))(v7, v9);
  v33 = sub_100027D4C();
  v34 = sub_10002850C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = sub_100027B2C();
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36;
    }

    v39 = *(v31 + 8);
    v39(v7, v32);
    *(v35 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v33, v34, "Invite date is %ld days old", v35, 0xCu);
  }

  else
  {
    v39 = *(v31 + 8);
    v39(v7, v32);
  }

  (*(v55 + 8))(v57, v56);
  v40 = sub_100027B2C();
  v42 = v41;
  v39(v9, v32);
  v43 = v54;
  v44 = v48;
  v48(v52, v54);
  v44(v51, v43);
  (*(v49 + 8))(v24, v50);
  return (v40 > 89) & ~v42;
}

uint64_t sub_10001EFE0(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000202EC;

  return v8(a1);
}

uint64_t sub_10001F104()
{
  v2 = *(**v0 + 88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000202EC;

  return v6();
}

uint64_t sub_10001F218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10001F35C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_10001F35C(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_10001F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 128);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000063B4;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_10001F678(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001DFC(&qword_100034FB8, &unk_10002A3F8);
  v40 = a2;
  result = sub_1000285FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_10002867C();
      sub_10002841C();
      result = sub_10002868C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10001F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100007814(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10001F678(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100007814(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_10002865C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10001FAC0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_10001FAC0()
{
  v1 = v0;
  sub_100001DFC(&qword_100034FB8, &unk_10002A3F8);
  v2 = *v0;
  v3 = sub_1000285EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_10001FC38(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100031770;
  v6._object = a2;
  v4 = sub_10002861C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001FC9C(uint64_t a1)
{
  v2 = type metadata accessor for InviteMessageDetails();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10001FCF8(uint64_t a1)
{
  v2 = sub_100027C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100001DFC(&qword_100034FA0, &unk_10002A3E8);
    v10 = sub_10002858C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100020298(&qword_100034FA8);
      v18 = sub_10002839C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100020298(&qword_100034FB0);
          v25 = sub_1000283AC();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10001FFF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DFC(&qword_100034FB8, &unk_10002A3F8);
    v3 = sub_10002860C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100007814(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t getEnumTagSinglePayload for FamilyInviteStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FamilyInviteStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100020298(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100027C7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000202F4(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x536567617373656DLL;
      break;
    case 2:
    case 18:
    case 29:
    case 36:
      result = 0xD000000000000013;
      break;
    case 3:
    case 6:
    case 10:
    case 23:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x7255657469766E69;
      break;
    case 8:
    case 25:
    case 37:
      result = 0xD000000000000017;
      break;
    case 9:
    case 20:
    case 31:
      result = 0xD000000000000018;
      break;
    case 11:
    case 28:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7265766965636572;
      break;
    case 13:
      result = 0x61487265646E6573;
      break;
    case 14:
      result = 0x54676E69646E6570;
      break;
    case 15:
      result = 0x53676E69646E6570;
      break;
    case 16:
      result = 0x49676E69646E6570;
      break;
    case 17:
      result = 0x6E49747065636361;
      break;
    case 19:
    case 26:
    case 30:
      result = 0xD000000000000015;
      break;
    case 21:
    case 32:
      result = 0xD000000000000016;
      break;
    case 22:
      v3 = 0x747065636361;
      goto LABEL_24;
    case 24:
      result = 0xD000000000000014;
      break;
    case 27:
      result = 0x4964657269707865;
      break;
    case 33:
      v3 = 0x6E696C636564;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 34:
      result = 0xD000000000000011;
      break;
    case 35:
      result = 0xD000000000000011;
      break;
    case 38:
      result = 0xD00000000000001DLL;
      break;
    case 39:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002073C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000202F4(*a1);
  v5 = v4;
  if (v3 == sub_1000202F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002863C();
  }

  return v8 & 1;
}

Swift::Int sub_1000207C4()
{
  v1 = *v0;
  sub_10002867C();
  sub_1000202F4(v1);
  sub_10002841C();

  return sub_10002868C();
}

uint64_t sub_100020828()
{
  sub_1000202F4(*v0);
  sub_10002841C();
}

Swift::Int sub_10002087C()
{
  v1 = *v0;
  sub_10002867C();
  sub_1000202F4(v1);
  sub_10002841C();

  return sub_10002868C();
}

uint64_t sub_1000208DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100026F4C();
  *a2 = result;
  return result;
}

uint64_t sub_10002090C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000202F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100020950()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100020980(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1000209B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1000209E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_100020A40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_100020A98()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_100020AC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_100020B20()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_100020B50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_100020BA8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_100020BD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_100020C30()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_100020C60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_100020CB8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_100020CE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_100020D40()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_100020D70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_100020DC8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t sub_100020DF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_100020E50()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t sub_100020E80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_100020ED8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t sub_100020F08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 184);

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t sub_100020F60()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t sub_100020F90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 200);

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t sub_100020FE8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t sub_100021018(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 216);

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

uint64_t sub_100021084(uint64_t a1)
{
  v3 = *(v1 + 224);

  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_100021168()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t sub_100021198(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 248);

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t sub_1000211F0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t sub_100021220(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 264);

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t sub_100021458@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1000215C8(char a1)
{
  result = type metadata accessor for InviteMessageDetails();
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t sub_100021640@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xE000000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0xE000000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0xE000000000000000;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0xE000000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0xE000000000000000;
  *(a1 + 224) = &_swiftEmptyArrayStorage;
  *(a1 + 232) = 4;
  *(a1 + 234) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0xE000000000000000;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0xE000000000000000;
  v2 = type metadata accessor for InviteMessageDetails();
  v3 = v2[24];
  v4 = sub_100027BEC();
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[25], 1, 1, v4);
  v6 = v2[26];
  v7 = sub_100027C1C();
  result = (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v2[27]) = 0;
  return result;
}

uint64_t sub_100021790(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 776) = a7;
  *(v7 + 768) = a6;
  *(v7 + 760) = a5;
  *(v7 + 752) = a4;
  *(v7 + 1437) = a3;
  *(v7 + 744) = a2;
  *(v7 + 736) = a1;
  v8 = *(*(sub_100001DFC(&qword_1000347A0, &unk_100029620) - 8) + 64) + 15;
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  v9 = sub_100027C1C();
  *(v7 + 800) = v9;
  v10 = *(v9 - 8);
  *(v7 + 808) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 816) = swift_task_alloc();
  v12 = *(*(sub_100001DFC(&qword_1000348A8, &unk_10002A420) - 8) + 64) + 15;
  *(v7 + 824) = swift_task_alloc();
  v13 = type metadata accessor for InviteMessageDetails();
  *(v7 + 832) = v13;
  v14 = *(v13 - 8);
  *(v7 + 840) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 848) = swift_task_alloc();
  v16 = sub_100027D5C();
  *(v7 + 856) = v16;
  v17 = *(v16 - 8);
  *(v7 + 864) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  *(v7 + 904) = swift_task_alloc();
  *(v7 + 912) = swift_task_alloc();
  *(v7 + 920) = swift_task_alloc();
  *(v7 + 928) = swift_task_alloc();
  *(v7 + 936) = swift_task_alloc();
  *(v7 + 944) = swift_task_alloc();
  v19 = sub_100027AEC();
  *(v7 + 952) = v19;
  v20 = *(v19 - 8);
  *(v7 + 960) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 968) = swift_task_alloc();

  return _swift_task_switch(sub_100021A64, 0, 0);
}

void *sub_100021A64()
{
  v195 = v0;
  v1 = *(v0 + 744);
  v2 = sub_100027AFC();
  v182 = v0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0 + 960);
      v5 = *(v4 + 16);
      v4 += 16;
      v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v184 = *(v4 + 56);
      v186 = v5;
      v191 = v4;
      v7 = (v4 - 8);
      v8 = &_swiftEmptyDictionarySingleton;
      v5(*(v0 + 968), v6, *(v0 + 952));
      while (1)
      {
        sub_100027ACC();
        v11 = sub_100026F4C();
        v12 = v11 == 40 ? 39 : v11;
        v13 = sub_100027ADC();
        if (v14)
        {
          break;
        }

        v27 = sub_100026800(v12);
        if (v28)
        {
          v29 = v27;
          v194[0] = v8;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_100026DE4();
            v8 = v194[0];
          }

          v30 = *(v8[7] + 16 * v29 + 8);

          sub_100026C3C(v29, v8);
        }

LABEL_6:
        (*v7)(*(v0 + 968), *(v0 + 952));
        v6 += v184;
        if (!--v3)
        {

          goto LABEL_30;
        }

        v186(*(v0 + 968), v6, *(v0 + 952));
      }

      v15 = v13;
      v16 = v14;
      v17 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v194[0] = v17;
      v19 = sub_100026800(v12);
      v21 = *(v17 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v25 = v20;
      if (*(v17 + 24) < v24)
      {
        sub_100026980(v24, isUniquelyReferenced_nonNull_native);
        v8 = v194[0];
        v19 = sub_100026800(v12);
        if ((v25 & 1) != (v26 & 1))
        {

          return sub_10002865C();
        }

        if ((v25 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_4:
        v9 = (v8[7] + 16 * v19);
        v10 = v9[1];
        *v9 = v15;
        v9[1] = v16;

LABEL_5:
        v0 = v182;
        goto LABEL_6;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v17;
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v34 = v19;
        sub_100026DE4();
        v19 = v34;
        v8 = v194[0];
        if (v25)
        {
          goto LABEL_4;
        }
      }

LABEL_23:
      v8[(v19 >> 6) + 8] |= 1 << v19;
      *(v8[6] + v19) = v12;
      v31 = (v8[7] + 16 * v19);
      *v31 = v15;
      v31[1] = v16;
      v32 = v8[2];
      v23 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v23)
      {
        goto LABEL_37;
      }

      v8[2] = v33;
      goto LABEL_5;
    }

    v8 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v8 = sub_100026FEC(&_swiftEmptyArrayStorage);
  }

LABEL_30:
  v191 = v8;
  *(v0 + 976) = v8;
  v35 = *(v0 + 944);
  sub_100027CCC();
  v36 = sub_100027D4C();
  v37 = sub_10002850C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Building message..", v38, 2u);
  }

  v39 = *(v0 + 944);
  v40 = *(v0 + 864);
  v41 = *(v0 + 856);
  v15 = *(v0 + 848);
  v42 = *(v0 + 832);
  v43 = *(v0 + 808);
  v187 = *(v0 + 800);

  (*(v40 + 8))(v39, v41);
  *v15 = 0;
  *(v15 + 8) = 0xE000000000000000;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0xE000000000000000;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0xE000000000000000;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0xE000000000000000;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0xE000000000000000;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0xE000000000000000;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0xE000000000000000;
  *(v15 + 144) = 0;
  *(v15 + 152) = 0xE000000000000000;
  *(v15 + 160) = 0;
  *(v15 + 168) = 0xE000000000000000;
  *(v15 + 176) = 0;
  *(v15 + 184) = 0xE000000000000000;
  *(v15 + 192) = 0;
  *(v15 + 200) = 0xE000000000000000;
  *(v15 + 208) = 0;
  *(v15 + 216) = 0xE000000000000000;
  *(v15 + 224) = &_swiftEmptyArrayStorage;
  *(v15 + 232) = 4;
  *(v15 + 234) = 1;
  *(v15 + 240) = 0;
  *(v15 + 248) = 0xE000000000000000;
  *(v15 + 256) = 0;
  *(v15 + 264) = 0xE000000000000000;
  v44 = v42[24];
  v45 = sub_100027BEC();
  v46 = *(*(v45 - 8) + 56);
  v184 = v44;
  v46(v15 + v44, 1, 1, v45);
  v47 = v42[25];
  v46(&v47[v15], 1, 1, v45);
  v48 = v42[26];
  v49 = *(v43 + 56);
  v49(v15 + v48, 1, 1, v187);
  *(v15 + v42[27]) = 0;
  *(v0 + 1435) = 0;
  sub_1000270E4();
  sub_10002838C();
  v186 = v47;
  v178 = v49;
  v179 = v48;
  v177 = v42;
  v50 = *(v0 + 712);
  **(v0 + 848) = *(v0 + 704);
  *(v15 + 8) = v50;
  *(v0 + 1409) = 1;
  sub_10002838C();
  v51 = *(v0 + 672);
  v52 = *(v0 + 680);
  *(v0 + 984) = v52;
  *(v15 + 16) = v51;
  *(v15 + 24) = v52;
  *(v0 + 1432) = 4;
  sub_10002838C();
  v53 = *(v0 + 232);
  *(v15 + 32) = *(v0 + 224);
  *(v15 + 40) = v53;
  *(v0 + 1431) = 7;
  sub_10002838C();
  v54 = *(v0 + 264);
  *(v15 + 96) = *(v0 + 256);
  *(v15 + 104) = v54;
  *(v0 + 1430) = 8;
  sub_10002838C();
  v55 = *(v0 + 296);
  *(v15 + 176) = *(v0 + 288);
  *(v15 + 184) = v55;
  *(v0 + 1429) = 10;
  sub_10002838C();
  v56 = *(v0 + 328);
  *(v15 + 192) = *(v0 + 320);
  *(v15 + 200) = v56;
  *(v0 + 1427) = 3;
  sub_10002838C();
LABEL_38:
  v58 = *(v0 + 360);
  *(v15 + 48) = *(v0 + 352);
  *(v15 + 56) = v58;
  *(v0 + 1425) = 17;
  sub_10002838C();
  v71 = *(v0 + 824);
  v72 = *(v0 + 384);
  v73 = *(v0 + 392);
  sub_100027BDC();

  sub_100002064(v71, v15 + v184, &qword_1000348A8, &unk_10002A420);
  *(v0 + 1423) = 28;
  sub_10002838C();
  v74 = *(v0 + 824);
  v75 = *(v0 + 416);
  v76 = *(v0 + 424);
  sub_100027BDC();

  sub_100002064(v74, v186 + v15, &qword_1000348A8, &unk_10002A420);
  *(v0 + 1421) = 13;
  sub_10002838C();
  v77 = *(v0 + 808);
  v78 = *(v0 + 800);
  v79 = *(v0 + 792);
  v80 = *(v0 + 776);
  v81 = *(v0 + 448);
  v82 = *(v0 + 456);
  *(v0 + 992) = v81;
  *(v0 + 1000) = v82;
  *(v15 + 256) = v81;
  *(v15 + 264) = v82;
  sub_100008798(v80, v79, &qword_1000347A0, &unk_100029620);
  v83 = (*(v77 + 48))(v79, 1, v78);
  v176 = v15;
  if (v83 == 1)
  {
    sub_100027138(*(v0 + 792));
    if (v191[2])
    {
      v84 = sub_100026800(34);
      if (v85)
      {
        v86 = (v191[7] + 16 * v84);
        v87 = *v86;
        v88 = v86[1];
        v89 = objc_allocWithZone(NSDateFormatter);

        v90 = [v89 init];
        v91 = sub_1000283DC();
        [v90 setDateFormat:v91];

        v92 = sub_1000283DC();

        v93 = [v90 dateFromString:v92];

        if (v93)
        {
          v94 = *(v182 + 784);
          sub_100027BFC();

          v95 = 0;
        }

        else
        {
          v95 = 1;
        }

        v110 = *(v182 + 928);
        v111 = *(v182 + 784);
        v178(v111, v95, 1, *(v182 + 800));
        sub_100002064(v111, v15 + v179, &qword_1000347A0, &unk_100029620);
        sub_100027CBC();
        v112 = sub_100027D4C();
        v113 = sub_1000284DC();
        v114 = os_log_type_enabled(v112, v113);
        v115 = *(v182 + 928);
        v116 = *(v182 + 864);
        v117 = *(v182 + 856);
        if (v114)
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&_mh_execute_header, v112, v113, "got date from message url", v118, 2u);
        }

        (*(v116 + 8))(v115, v117);
      }
    }
  }

  else
  {
    v96 = *(v0 + 936);
    v97 = *(v0 + 816);
    v98 = *(v0 + 808);
    v99 = *(v0 + 800);
    (*(v98 + 32))(v97, *(v0 + 792), v99);
    sub_100027138(v15 + v179);
    (*(v98 + 16))(v15 + v179, v97, v99);
    v178(v15 + v179, 0, 1, v99);
    sub_100027CBC();
    v100 = sub_100027D4C();
    v101 = sub_1000284DC();
    v102 = os_log_type_enabled(v100, v101);
    v103 = *(v0 + 936);
    v104 = *(v0 + 864);
    v105 = *(v0 + 856);
    v106 = *(v0 + 816);
    v107 = *(v0 + 808);
    v108 = *(v0 + 800);
    if (v102)
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "got date from msmessage", v109, 2u);
    }

    (*(v104 + 8))(v103, v105);
    (*(v107 + 8))(v106, v108);
  }

  *(v182 + 1419) = 11;
  sub_10002838C();
  v119 = *(v182 + 480);
  v120 = *(v182 + 488);
  *(v182 + 1417) = 14;
  sub_10002838C();
  *(v182 + 1008) = *(v182 + 512);
  *(v182 + 1016) = *(v182 + 520);
  *(v182 + 1415) = 15;
  sub_10002838C();
  *(v182 + 1024) = *(v182 + 544);
  *(v182 + 1032) = *(v182 + 552);
  *(v182 + 1413) = 16;
  sub_10002838C();
  *(v182 + 1040) = *(v182 + 576);
  *(v182 + 1048) = *(v182 + 584);
  *(v182 + 1411) = 18;
  sub_10002838C();
  *(v182 + 1056) = *(v182 + 608);
  *(v182 + 1064) = *(v182 + 616);
  *(v182 + 1436) = 19;
  sub_10002838C();
  *(v182 + 1072) = *(v182 + 640);
  *(v182 + 1080) = *(v182 + 648);
  *(v182 + 1434) = 20;
  sub_10002838C();
  v121 = *(v182 + 200);
  *(v182 + 1088) = *(v182 + 192);
  *(v182 + 1096) = v121;
  *(v182 + 1408) = 21;
  sub_10002838C();
  v122 = *(v182 + 216);
  *(v182 + 1104) = *(v182 + 208);
  *(v182 + 1112) = v122;
  *(v182 + 1433) = 22;
  sub_10002838C();
  *(v182 + 1120) = *(v182 + 688);
  *(v182 + 1128) = *(v182 + 696);
  *(v182 + 1410) = 23;
  sub_10002838C();
  *(v182 + 1136) = *(v182 + 656);
  *(v182 + 1144) = *(v182 + 664);
  *(v182 + 1412) = 24;
  sub_10002838C();
  *(v182 + 1152) = *(v182 + 624);
  *(v182 + 1160) = *(v182 + 632);
  *(v182 + 1414) = 25;
  sub_10002838C();
  *(v182 + 1168) = *(v182 + 592);
  *(v182 + 1176) = *(v182 + 600);
  *(v182 + 1416) = 26;
  sub_10002838C();
  *(v182 + 1184) = *(v182 + 560);
  *(v182 + 1192) = *(v182 + 568);
  *(v182 + 1418) = 27;
  sub_10002838C();
  *(v182 + 1200) = *(v182 + 528);
  *(v182 + 1208) = *(v182 + 536);
  *(v182 + 1420) = 29;
  sub_10002838C();
  v123 = *(v182 + 504);
  *(v182 + 1216) = *(v182 + 496);
  *(v182 + 1224) = v123;
  *(v182 + 1422) = 30;
  sub_10002838C();
  v124 = *(v182 + 472);
  *(v182 + 1232) = *(v182 + 464);
  *(v182 + 1240) = v124;
  *(v182 + 1424) = 31;
  sub_10002838C();
  v125 = *(v182 + 440);
  *(v182 + 1248) = *(v182 + 432);
  *(v182 + 1256) = v125;
  *(v182 + 1426) = 32;
  sub_10002838C();
  v126 = *(v182 + 408);
  *(v182 + 1264) = *(v182 + 400);
  *(v182 + 1272) = v126;
  *(v182 + 1428) = 33;
  sub_10002838C();
  v127 = *(v182 + 376);
  *(v182 + 1280) = *(v182 + 368);
  *(v182 + 1288) = v127;
  if (v191[2] && (v128 = sub_100026800(12), (v129 & 1) != 0))
  {
    v130 = (v191[7] + 16 * v128);
    v131 = v130[1];
    v170 = *v130;
    v176[30] = *v130;
    v176[31] = v131;
  }

  else
  {
    v131 = *(v182 + 760);
    if (v131)
    {
      v176[30] = *(v182 + 752);
      v176[31] = v131;

      v170 = *(v182 + 752);
    }

    else
    {
      v170 = 0;
      v131 = 0xE000000000000000;
    }
  }

  v132 = *(v182 + 920);
  sub_100027CCC();
  v133 = sub_100027D4C();
  v171 = sub_10002850C();
  v189 = v133;
  v134 = os_log_type_enabled(v133, v171);
  v135 = *(v182 + 864);
  v172 = *(v182 + 856);
  v174 = *(v182 + 920);
  if (v134)
  {
    v136 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v194[0] = v168;
    *v136 = 136315138;

    v137 = sub_100006B88(v170, v131, v194);

    *(v136 + 4) = v137;
    _os_log_impl(&_mh_execute_header, v189, v171, "recipient handle is %s", v136, 0xCu);
    sub_100007038(v168);
  }

  else
  {
  }

  v169 = *(v135 + 8);
  v169(v174, v172);
  *(v182 + 1296) = v169;
  *(v182 + 336) = v119;
  *(v182 + 344) = v120;
  *(v182 + 304) = 44;
  *(v182 + 312) = 0xE100000000000000;
  sub_100017000();
  v138 = sub_10002854C();

  v139 = *(v138 + 16);
  if (v139)
  {
    v140 = (v138 + 40);
    v190 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v141 = *v140;
      *(v182 + 272) = *(v140 - 1);
      *(v182 + 280) = v141;
      *(v182 + 240) = 58;
      *(v182 + 248) = 0xE100000000000000;
      result = sub_10002854C();
      v142 = result[2];
      if (!v142)
      {
        break;
      }

      if (v142 == 1)
      {
        goto LABEL_82;
      }

      v143 = result[5];
      v144 = result[7];
      v173 = result[6];
      v175 = result[4];

      v145 = v144;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v190 = sub_1000266F4(0, *(v190 + 2) + 1, 1, v190);
      }

      v147 = *(v190 + 2);
      v146 = *(v190 + 3);
      if (v147 >= v146 >> 1)
      {
        v190 = sub_1000266F4((v146 > 1), v147 + 1, 1, v190);
      }

      *(v190 + 2) = v147 + 1;
      v148 = &v190[32 * v147];
      *(v148 + 4) = v175;
      *(v148 + 5) = v143;
      *(v148 + 6) = v173;
      *(v148 + 7) = v145;
      v140 += 2;
      if (!--v139)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
  }

  else
  {
    v190 = &_swiftEmptyArrayStorage;
LABEL_74:
    *(v182 + 1304) = v190;
    v149 = *(v182 + 848);
    v150 = *(v182 + 1437);

    swift_beginAccess();
    v176[28] = v190;
    *(v149 + v177[27]) = v150;

    if (v150 == 1)
    {
      v151 = *(v182 + 912);

      sub_100027CCC();
      v152 = sub_100027D4C();
      v153 = sub_10002850C();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        *v154 = 0;
        _os_log_impl(&_mh_execute_header, v152, v153, "Message is in compose screen, return message with minimal details", v154, 2u);
      }

      v155 = *(v182 + 912);
      v156 = *(v182 + 864);
      v157 = *(v182 + 856);
      v158 = *(v182 + 848);
      v159 = *(v182 + 840);
      v160 = *(v182 + 832);
      v161 = *(v182 + 736);

      v169(v155, v157);
      sub_100002A28(v158, v161);
      (*(v159 + 56))(v161, 0, 1, v160);
      sub_10001FC9C(v158);
      v59 = *(v182 + 968);
      v60 = *(v182 + 944);
      v61 = *(v182 + 936);
      v62 = *(v182 + 928);
      v63 = *(v182 + 920);
      v64 = *(v182 + 912);
      v65 = v182;
      v66 = *(v182 + 904);
      v67 = *(v182 + 896);
      v68 = *(v182 + 888);
      v69 = *(v182 + 880);
      v180 = *(v182 + 872);
      v181 = *(v182 + 848);
      v183 = *(v182 + 824);
      v185 = v65[102];
      v188 = v65[99];
      v192 = v65[98];

      v70 = v65[1];

      return v70();
    }

    else
    {
      v162 = *(v182 + 768);
      v163 = v162[3];
      *(v182 + 1312) = v163;
      v164 = v162[4];
      *(v182 + 1320) = v164;
      *(v182 + 1328) = sub_100008754(v162, v163);
      v165 = *(v164 + 8);
      *(v182 + 1336) = v165;
      *(v182 + 1344) = (v164 + 8) & 0xFFFFFFFFFFFFLL | 0xB81F000000000000;
      v193 = (v165 + *v165);
      v166 = v165[1];
      v167 = swift_task_alloc();
      *(v182 + 1352) = v167;
      *v167 = v182;
      v167[1] = sub_100023994;

      return v193(1, v163, v164);
    }
  }

  return result;
}

uint64_t sub_100023994(uint64_t a1)
{
  v2 = *(*v1 + 1352);
  v4 = *v1;
  *(*v1 + 1360) = a1;

  return _swift_task_switch(sub_100023A94, 0, 0);
}

uint64_t sub_100023A94()
{
  v216 = v0;
  v1 = *(v0 + 1360);
  v2 = *(v0 + 848);
  v3 = *(v0 + 768);
  v4 = v3[3];
  v5 = v3[4];
  sub_100008754(v3, v4);
  v6 = *(v5 + 40);
  v7 = v1;
  v8 = v6(v2, v1, v4, v5);

  if (sub_10001A7B0(4u, 4u))
  {
    v9 = *(v0 + 904);
    sub_100027CCC();
    v10 = sub_100027D4C();
    v11 = sub_10002850C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invite status is unknown, fetch family again from server", v12, 2u);
    }

    v13 = *(v0 + 1344);
    v14 = *(v0 + 1336);
    v15 = *(v0 + 1296);
    v16 = *(v0 + 904);
    v17 = *(v0 + 864);
    v18 = *(v0 + 856);

    v15(v16, v18);
    v210 = (v14 + *v14);
    v19 = v14[1];
    v20 = swift_task_alloc();
    *(v0 + 1368) = v20;
    *v20 = v0;
    v20[1] = sub_100024894;
    v21 = *(v0 + 1344);
    v22 = *(v0 + 1328);
    v23 = *(v0 + 1320);
    v24 = *(v0 + 1312);

    return v210(2, v24, v23);
  }

  *(v0 + 1384) = *(v0 + 1360);
  *(v0 + 1438) = v8;
  v26 = *(v0 + 896);
  *(*(v0 + 848) + 232) = v8;
  sub_100027CCC();
  v27 = sub_100027D4C();
  v28 = sub_10002850C();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 1304);
  v31 = *(v0 + 1296);
  v32 = *(v0 + 896);
  v33 = *(v0 + 864);
  v34 = *(v0 + 856);
  if (v29)
  {
    v211 = *(v0 + 1296);
    v35 = swift_slowAlloc();
    v202 = v32;
    v36 = swift_slowAlloc();
    v215 = v36;
    *v35 = 136315138;
    v37 = sub_10001A708(v8);
    v39 = sub_100006B88(v37, v38, &v215);

    *(v35 + 4) = v39;

    _os_log_impl(&_mh_execute_header, v27, v28, "invite status %s", v35, 0xCu);
    sub_100007038(v36);

    v211(v202, v34);
  }

  else
  {

    v31(v32, v34);
  }

  v40 = [objc_opt_self() defaultStore];
  *(v0 + 1392) = v40;
  if (v40)
  {
    v41 = v40;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 728;
    *(v0 + 24) = sub_100025610;
    v42 = swift_continuation_init();
    *(v0 + 136) = sub_100001DFC(&qword_100034FD0, &qword_10002A438);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000265F0;
    *(v0 + 104) = &unk_100031D80;
    *(v0 + 112) = v42;
    [v41 aa_primaryAppleAccountWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  v43 = *(v0 + 1384);
  v44 = *(v0 + 768);
  v45 = v44[3];
  v46 = v44[4];
  sub_100008754(v44, v45);
  v47 = *(v46 + 32);
  v48 = v43;
  LOBYTE(v43) = v47(v43, v45, v46);

  if ((v43 & 1) == 0)
  {
  }

  v49 = *(v0 + 1000);
  v50 = *(v0 + 992);
  v203 = *(v0 + 888);
  v212 = *(v0 + 1384);
  v51 = *(v0 + 848);
  v52 = *(v0 + 768);
  *(v51 + 233) = 0;
  v54 = v52[3];
  v53 = v52[4];
  sub_100008754(v52, v54);
  v55 = *(v53 + 48);
  v56 = v48;

  LOBYTE(v50) = v55(v212, v50, v49, v54, v53);

  v213 = v56;

  *(v51 + 234) = v50 & 1;
  sub_100027CCC();
  v57 = sub_100027D4C();
  v58 = sub_10002850C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = *(v0 + 1384);
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    if (v59)
    {
      v61 = [v213 ageCategory];
    }

    else
    {
      v61 = 9;
    }

    *(v60 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v57, v58, "Age category: %ld", v60, 0xCu);
  }

  v62 = *(v0 + 1384);
  v63 = *(v0 + 1296);
  v64 = *(v0 + 888);
  v65 = *(v0 + 864);
  v66 = *(v0 + 856);

  v63(v64, v66);
  if (!v62)
  {
    goto LABEL_27;
  }

  if ([v213 ageCategory] != 1 || !*(*(v0 + 976) + 16))
  {
    goto LABEL_28;
  }

  v67 = sub_100026800(2);
  if (v68)
  {
    v69 = *(v0 + 984);
    v70 = *(v0 + 848);
    v71 = (*(*(v0 + 976) + 56) + 16 * v67);
    v73 = *v71;
    v72 = v71[1];

    *(v70 + 16) = v73;
    *(v70 + 24) = v72;
  }

  else
  {
LABEL_27:
    v74 = *(v0 + 976);
  }

LABEL_28:

  v75 = *(v0 + 1438);
  if (v75 <= 1)
  {
    if (*(v0 + 1438))
    {
      v122 = *(v0 + 1392);
      v200 = *(v0 + 1280);
      v208 = *(v0 + 1288);
      v188 = *(v0 + 1264);
      v194 = *(v0 + 1248);
      v182 = *(v0 + 1232);
      v123 = *(v0 + 1224);
      v177 = *(v0 + 1208);
      v172 = *(v0 + 1192);
      v162 = *(v0 + 1160);
      v167 = *(v0 + 1176);
      v152 = *(v0 + 1128);
      v157 = *(v0 + 1144);
      v124 = *(v0 + 1112);
      v125 = *(v0 + 1096);
      v126 = *(v0 + 1080);
      v127 = *(v0 + 1064);
      v128 = *(v0 + 1048);
      v129 = *(v0 + 1032);
      v130 = *(v0 + 1016);
      v131 = *(v0 + 848);

      *(v131 + 112) = v182;
      *(v131 + 128) = v188;
      *(v131 + 160) = v200;
      *(v131 + 168) = v208;
      *(v131 + 144) = v194;
    }

    else
    {
      v86 = *(v0 + 1392);
      v205 = *(v0 + 1288);
      v191 = *(v0 + 1272);
      v169 = *(v0 + 1256);
      v154 = *(v0 + 1224);
      v159 = *(v0 + 1240);
      v150 = *(v0 + 1208);
      v87 = *(v0 + 1192);
      v88 = *(v0 + 1176);
      v89 = *(v0 + 1160);
      v90 = *(v0 + 1144);
      v197 = *(v0 + 1128);
      v185 = *(v0 + 1120);
      v174 = *(v0 + 1104);
      v179 = *(v0 + 1088);
      v164 = *(v0 + 1072);
      v91 = *(v0 + 1064);
      v92 = *(v0 + 1048);
      v93 = *(v0 + 1032);
      v94 = *(v0 + 1016);
      v95 = *(v0 + 848);

      *(v95 + 112) = v164;
      *(v95 + 128) = v174;
      *(v95 + 160) = v185;
      *(v95 + 168) = v197;
      *(v95 + 144) = v179;
    }
  }

  else if (v75 == 2)
  {
    v198 = *(v0 + 1272);
    v206 = *(v0 + 1288);
    v180 = *(v0 + 1256);
    v175 = *(v0 + 1240);
    v155 = *(v0 + 1208);
    v160 = *(v0 + 1224);
    v148 = *(v0 + 1176);
    v151 = *(v0 + 1192);
    v147 = *(v0 + 1160);
    v96 = *(v0 + 1144);
    v97 = *(v0 + 1128);
    v98 = *(v0 + 1112);
    v99 = *(v0 + 1096);
    v100 = *(v0 + 1080);
    v101 = *(v0 + 1064);
    v192 = *(v0 + 1048);
    v186 = *(v0 + 1040);
    v102 = *(v0 + 1032);
    v103 = *(v0 + 1024);
    v170 = *(v0 + 1016);
    v165 = *(v0 + 1008);
    v104 = *(v0 + 848);

    v104[14] = v165;
    v104[15] = v170;
    v104[16] = v103;
    v104[17] = v102;
    v104[20] = v186;
    v104[21] = v192;
    v104[18] = v103;
    v104[19] = v102;
  }

  else if (v75 == 3)
  {
    v76 = *(v0 + 1392);
    v196 = *(v0 + 1288);
    v173 = *(v0 + 1272);
    v158 = *(v0 + 1240);
    v163 = *(v0 + 1256);
    v153 = *(v0 + 1224);
    v204 = *(v0 + 1208);
    v190 = *(v0 + 1200);
    v178 = *(v0 + 1184);
    v184 = *(v0 + 1168);
    v168 = *(v0 + 1152);
    v77 = *(v0 + 1144);
    v149 = *(v0 + 1128);
    v78 = *(v0 + 1112);
    v79 = *(v0 + 1096);
    v80 = *(v0 + 1080);
    v81 = *(v0 + 1064);
    v82 = *(v0 + 1048);
    v83 = *(v0 + 1032);
    v84 = *(v0 + 1016);
    v85 = *(v0 + 848);

    *(v85 + 112) = v168;
    *(v85 + 128) = v178;
    *(v85 + 160) = v190;
    *(v85 + 168) = v204;
    *(v85 + 144) = v184;
  }

  else
  {
    v176 = *(v0 + 1288);
    v181 = *(v0 + 1272);
    v161 = *(v0 + 1256);
    v105 = *(v0 + 1240);
    v106 = *(v0 + 1224);
    v199 = *(v0 + 1208);
    v207 = *(v0 + 1192);
    v187 = *(v0 + 1176);
    v107 = *(v0 + 1160);
    v108 = *(v0 + 1144);
    v109 = *(v0 + 1128);
    v110 = *(v0 + 1112);
    v111 = *(v0 + 1096);
    v112 = *(v0 + 1080);
    v113 = *(v0 + 1064);
    v156 = *(v0 + 1048);
    v166 = *(v0 + 1032);
    v171 = *(v0 + 1016);
    v193 = *(v0 + 880);

    sub_100027CCC();
    v114 = sub_100027D4C();
    v115 = sub_1000284EC();
    v116 = os_log_type_enabled(v114, v115);
    v117 = *(v0 + 1392);
    v118 = *(v0 + 1296);
    v119 = *(v0 + 880);
    v120 = *(v0 + 856);
    if (v116)
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "Invite status unknown", v121, 2u);
    }

    else
    {
    }

    v118(v119, v120);
  }

  v132 = *(v0 + 848);
  v133 = *(v0 + 840);
  v134 = *(v0 + 832);
  v135 = *(v0 + 736);
  sub_100002A28(v132, v135);
  (*(v133 + 56))(v135, 0, 1, v134);

  sub_10001FC9C(v132);
  v136 = *(v0 + 968);
  v137 = *(v0 + 944);
  v138 = *(v0 + 936);
  v139 = *(v0 + 928);
  v140 = *(v0 + 920);
  v141 = *(v0 + 912);
  v142 = *(v0 + 904);
  v143 = *(v0 + 896);
  v144 = *(v0 + 888);
  v145 = *(v0 + 880);
  v183 = *(v0 + 872);
  v189 = *(v0 + 848);
  v195 = *(v0 + 824);
  v201 = *(v0 + 816);
  v209 = *(v0 + 792);
  v214 = *(v0 + 784);

  v146 = *(v0 + 8);

  return v146();
}

uint64_t sub_100024894(uint64_t a1)
{
  v2 = *(*v1 + 1368);
  v4 = *v1;
  *(*v1 + 1376) = a1;

  return _swift_task_switch(sub_100024994, 0, 0);
}

uint64_t sub_100024994()
{
  v199 = v0;
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 848);
  v4 = *(v0 + 768);
  v5 = v1;

  v6 = v4[3];
  v7 = v4[4];
  sub_100008754(v4, v6);
  v8 = (*(v7 + 40))(v3, v1, v6, v7);

  *(v0 + 1384) = *(v0 + 1376);
  *(v0 + 1438) = v8;
  v9 = *(v0 + 896);
  *(*(v0 + 848) + 232) = v8;
  sub_100027CCC();
  v10 = sub_100027D4C();
  v11 = sub_10002850C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 1304);
  v14 = *(v0 + 1296);
  v15 = *(v0 + 896);
  v16 = *(v0 + 864);
  v17 = *(v0 + 856);
  if (v12)
  {
    v194 = *(v0 + 1296);
    v18 = swift_slowAlloc();
    v186 = v15;
    v19 = swift_slowAlloc();
    v198 = v19;
    *v18 = 136315138;
    v20 = sub_10001A708(v8);
    v22 = sub_100006B88(v20, v21, &v198);

    *(v18 + 4) = v22;

    _os_log_impl(&_mh_execute_header, v10, v11, "invite status %s", v18, 0xCu);
    sub_100007038(v19);

    v194(v186, v17);
  }

  else
  {

    v14(v15, v17);
  }

  v23 = [objc_opt_self() defaultStore];
  *(v0 + 1392) = v23;
  if (v23)
  {
    v24 = v23;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 728;
    *(v0 + 24) = sub_100025610;
    v25 = swift_continuation_init();
    *(v0 + 136) = sub_100001DFC(&qword_100034FD0, &qword_10002A438);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000265F0;
    *(v0 + 104) = &unk_100031D80;
    *(v0 + 112) = v25;
    [v24 aa_primaryAppleAccountWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  v26 = *(v0 + 1384);
  v27 = *(v0 + 768);
  v28 = v27[3];
  v29 = v27[4];
  sub_100008754(v27, v28);
  v30 = *(v29 + 32);
  v31 = v26;
  LOBYTE(v26) = v30(v26, v28, v29);

  if ((v26 & 1) == 0)
  {
  }

  v32 = *(v0 + 1000);
  v33 = *(v0 + 992);
  v187 = *(v0 + 888);
  v195 = *(v0 + 1384);
  v34 = *(v0 + 848);
  v35 = *(v0 + 768);
  *(v34 + 233) = 0;
  v37 = v35[3];
  v36 = v35[4];
  sub_100008754(v35, v37);
  v38 = *(v36 + 48);
  v39 = v31;

  LOBYTE(v33) = v38(v195, v33, v32, v37, v36);

  v196 = v39;

  *(v34 + 234) = v33 & 1;
  sub_100027CCC();
  v40 = sub_100027D4C();
  v41 = sub_10002850C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 1384);
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    if (v42)
    {
      v44 = [v196 ageCategory];
    }

    else
    {
      v44 = 9;
    }

    *(v43 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v40, v41, "Age category: %ld", v43, 0xCu);
  }

  v45 = *(v0 + 1384);
  v46 = *(v0 + 1296);
  v47 = *(v0 + 888);
  v48 = *(v0 + 864);
  v49 = *(v0 + 856);

  v46(v47, v49);
  if (!v45)
  {
    goto LABEL_21;
  }

  if ([v196 ageCategory] != 1 || !*(*(v0 + 976) + 16))
  {
    goto LABEL_22;
  }

  v50 = sub_100026800(2);
  if (v51)
  {
    v52 = *(v0 + 984);
    v53 = *(v0 + 848);
    v54 = (*(*(v0 + 976) + 56) + 16 * v50);
    v56 = *v54;
    v55 = v54[1];

    *(v53 + 16) = v56;
    *(v53 + 24) = v55;
  }

  else
  {
LABEL_21:
    v57 = *(v0 + 976);
  }

LABEL_22:

  v58 = *(v0 + 1438);
  if (v58 <= 1)
  {
    if (*(v0 + 1438))
    {
      v105 = *(v0 + 1392);
      v184 = *(v0 + 1280);
      v192 = *(v0 + 1288);
      v172 = *(v0 + 1264);
      v178 = *(v0 + 1248);
      v166 = *(v0 + 1232);
      v106 = *(v0 + 1224);
      v161 = *(v0 + 1208);
      v156 = *(v0 + 1192);
      v146 = *(v0 + 1160);
      v151 = *(v0 + 1176);
      v136 = *(v0 + 1128);
      v141 = *(v0 + 1144);
      v107 = *(v0 + 1112);
      v108 = *(v0 + 1096);
      v109 = *(v0 + 1080);
      v110 = *(v0 + 1064);
      v111 = *(v0 + 1048);
      v112 = *(v0 + 1032);
      v113 = *(v0 + 1016);
      v114 = *(v0 + 848);

      *(v114 + 112) = v166;
      *(v114 + 128) = v172;
      *(v114 + 160) = v184;
      *(v114 + 168) = v192;
      *(v114 + 144) = v178;
    }

    else
    {
      v69 = *(v0 + 1392);
      v189 = *(v0 + 1288);
      v175 = *(v0 + 1272);
      v153 = *(v0 + 1256);
      v138 = *(v0 + 1224);
      v143 = *(v0 + 1240);
      v134 = *(v0 + 1208);
      v70 = *(v0 + 1192);
      v71 = *(v0 + 1176);
      v72 = *(v0 + 1160);
      v73 = *(v0 + 1144);
      v181 = *(v0 + 1128);
      v169 = *(v0 + 1120);
      v158 = *(v0 + 1104);
      v163 = *(v0 + 1088);
      v148 = *(v0 + 1072);
      v74 = *(v0 + 1064);
      v75 = *(v0 + 1048);
      v76 = *(v0 + 1032);
      v77 = *(v0 + 1016);
      v78 = *(v0 + 848);

      *(v78 + 112) = v148;
      *(v78 + 128) = v158;
      *(v78 + 160) = v169;
      *(v78 + 168) = v181;
      *(v78 + 144) = v163;
    }
  }

  else if (v58 == 2)
  {
    v182 = *(v0 + 1272);
    v190 = *(v0 + 1288);
    v164 = *(v0 + 1256);
    v159 = *(v0 + 1240);
    v139 = *(v0 + 1208);
    v144 = *(v0 + 1224);
    v132 = *(v0 + 1176);
    v135 = *(v0 + 1192);
    v131 = *(v0 + 1160);
    v79 = *(v0 + 1144);
    v80 = *(v0 + 1128);
    v81 = *(v0 + 1112);
    v82 = *(v0 + 1096);
    v83 = *(v0 + 1080);
    v84 = *(v0 + 1064);
    v176 = *(v0 + 1048);
    v170 = *(v0 + 1040);
    v85 = *(v0 + 1032);
    v86 = *(v0 + 1024);
    v154 = *(v0 + 1016);
    v149 = *(v0 + 1008);
    v87 = *(v0 + 848);

    v87[14] = v149;
    v87[15] = v154;
    v87[16] = v86;
    v87[17] = v85;
    v87[20] = v170;
    v87[21] = v176;
    v87[18] = v86;
    v87[19] = v85;
  }

  else if (v58 == 3)
  {
    v59 = *(v0 + 1392);
    v180 = *(v0 + 1288);
    v157 = *(v0 + 1272);
    v142 = *(v0 + 1240);
    v147 = *(v0 + 1256);
    v137 = *(v0 + 1224);
    v188 = *(v0 + 1208);
    v174 = *(v0 + 1200);
    v162 = *(v0 + 1184);
    v168 = *(v0 + 1168);
    v152 = *(v0 + 1152);
    v60 = *(v0 + 1144);
    v133 = *(v0 + 1128);
    v61 = *(v0 + 1112);
    v62 = *(v0 + 1096);
    v63 = *(v0 + 1080);
    v64 = *(v0 + 1064);
    v65 = *(v0 + 1048);
    v66 = *(v0 + 1032);
    v67 = *(v0 + 1016);
    v68 = *(v0 + 848);

    *(v68 + 112) = v152;
    *(v68 + 128) = v162;
    *(v68 + 160) = v174;
    *(v68 + 168) = v188;
    *(v68 + 144) = v168;
  }

  else
  {
    v160 = *(v0 + 1288);
    v165 = *(v0 + 1272);
    v145 = *(v0 + 1256);
    v88 = *(v0 + 1240);
    v89 = *(v0 + 1224);
    v183 = *(v0 + 1208);
    v191 = *(v0 + 1192);
    v171 = *(v0 + 1176);
    v90 = *(v0 + 1160);
    v91 = *(v0 + 1144);
    v92 = *(v0 + 1128);
    v93 = *(v0 + 1112);
    v94 = *(v0 + 1096);
    v95 = *(v0 + 1080);
    v96 = *(v0 + 1064);
    v140 = *(v0 + 1048);
    v150 = *(v0 + 1032);
    v155 = *(v0 + 1016);
    v177 = *(v0 + 880);

    sub_100027CCC();
    v97 = sub_100027D4C();
    v98 = sub_1000284EC();
    v99 = os_log_type_enabled(v97, v98);
    v100 = *(v0 + 1392);
    v101 = *(v0 + 1296);
    v102 = *(v0 + 880);
    v103 = *(v0 + 856);
    if (v99)
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Invite status unknown", v104, 2u);
    }

    else
    {
    }

    v101(v102, v103);
  }

  v115 = *(v0 + 848);
  v116 = *(v0 + 840);
  v117 = *(v0 + 832);
  v118 = *(v0 + 736);
  sub_100002A28(v115, v118);
  (*(v116 + 56))(v118, 0, 1, v117);

  sub_10001FC9C(v115);
  v119 = *(v0 + 968);
  v120 = *(v0 + 944);
  v121 = *(v0 + 936);
  v122 = *(v0 + 928);
  v123 = *(v0 + 920);
  v124 = *(v0 + 912);
  v125 = *(v0 + 904);
  v126 = *(v0 + 896);
  v127 = *(v0 + 888);
  v128 = *(v0 + 880);
  v167 = *(v0 + 872);
  v173 = *(v0 + 848);
  v179 = *(v0 + 824);
  v185 = *(v0 + 816);
  v193 = *(v0 + 792);
  v197 = *(v0 + 784);

  v129 = *(v0 + 8);

  return v129();
}

uint64_t sub_100025610()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1400) = v3;
  if (v3)
  {
    v23 = v1[159];
    v24 = v1[161];
    v21 = v1[155];
    v22 = v1[157];
    v19 = v1[151];
    v20 = v1[153];
    v17 = v1[147];
    v18 = v1[149];
    v16 = v1[145];
    v4 = v1[143];
    v5 = v1[141];
    v6 = v1[139];
    v7 = v1[137];
    v8 = v1[135];
    v9 = v1[133];
    v10 = v1[131];
    v11 = v1[129];
    v12 = v1[127];
    v13 = v1[122];

    v14 = sub_100026308;
  }

  else
  {
    v14 = sub_100025834;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_100025834()
{
  v1 = *(v0 + 728);
  if (v1 && (v2 = [*(v0 + 728) aa_primaryEmail], v1, v2))
  {
    v3 = sub_1000283EC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 1384);
  v7 = *(v0 + 768);
  v8 = v7[3];
  v9 = v7[4];
  sub_100008754(v7, v8);
  v10 = *(v9 + 32);
  v11 = v6;
  v12 = v9;
  v13 = v11;
  LOBYTE(v6) = v10(v6, v8, v12);

  if ((v6 & 1) == 0)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if (*(v0 + 992) == v3 && v5 == *(v0 + 1000))
  {

    v14 = 1;
  }

  else
  {
    v14 = sub_10002863C();
  }

LABEL_12:
  v15 = *(v0 + 1000);
  v16 = *(v0 + 992);
  v179 = *(v0 + 888);
  v186 = *(v0 + 1384);
  v17 = *(v0 + 848);
  v18 = *(v0 + 768);
  v172 = v14;
  *(v17 + 233) = v14 & 1;
  v20 = v18[3];
  v19 = v18[4];
  sub_100008754(v18, v20);
  v21 = *(v19 + 48);
  v22 = v13;

  LOBYTE(v16) = v21(v186, v16, v15, v20, v19);

  v187 = v22;

  *(v17 + 234) = v16 & 1;
  sub_100027CCC();
  v23 = sub_100027D4C();
  v24 = sub_10002850C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 1384);
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    if (v25)
    {
      v27 = [v22 ageCategory];
    }

    else
    {
      v27 = 9;
    }

    *(v26 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Age category: %ld", v26, 0xCu);
  }

  v28 = *(v0 + 1384);
  v29 = *(v0 + 1296);
  v30 = *(v0 + 888);
  v31 = *(v0 + 864);
  v32 = *(v0 + 856);

  v29(v30, v32);
  if (!v28)
  {
    goto LABEL_23;
  }

  if ([v187 ageCategory] == 1 && *(*(v0 + 976) + 16))
  {
    v33 = sub_100026800(2);
    if (v34)
    {
      v35 = *(v0 + 984);
      v36 = *(v0 + 848);
      v37 = (*(*(v0 + 976) + 56) + 16 * v33);
      v38 = *v37;
      v39 = v37[1];

      *(v36 + 16) = v38;
      *(v36 + 24) = v39;
      goto LABEL_24;
    }

LABEL_23:
    v40 = *(v0 + 976);
  }

LABEL_24:

  v41 = *(v0 + 1438);
  if (v41 <= 1)
  {
    if (*(v0 + 1438))
    {
      v184 = *(v0 + 1288);
      v158 = *(v0 + 1280);
      v92 = *(v0 + 1248);
      v164 = v92;
      v170 = *(v0 + 1264);
      v93 = *(v0 + 1240);
      v94 = (v0 + 1232);
      v148 = *(v0 + 1192);
      v153 = *(v0 + 1208);
      v143 = *(v0 + 1176);
      v128 = *(v0 + 1144);
      v133 = *(v0 + 1160);
      v124 = *(v0 + 1128);
      v95 = *(v0 + 1112);
      v96 = *(v0 + 1096);
      v97 = *(v0 + 1080);
      v98 = *(v0 + 1064);
      v99 = *(v0 + 1048);
      v100 = *(v0 + 1032);
      v101 = *(v0 + 1016);
      v102 = *(v0 + 848);
      v103 = v172;
      if (v172)
      {
        v94 = (v0 + 1216);
      }

      v177 = *v94;
      if (v103)
      {
        v93 = *(v0 + 1224);
      }

      v138 = v93;

      *(v102 + 112) = v177;
      *(v102 + 120) = v138;
      *(v102 + 160) = v158;
      *(v102 + 168) = v184;
      *(v102 + 128) = v170;
      *(v102 + 144) = v164;
    }

    else
    {
      v167 = *(v0 + 1288);
      v140 = *(v0 + 1256);
      v145 = *(v0 + 1272);
      v135 = *(v0 + 1240);
      v122 = *(v0 + 1208);
      v126 = *(v0 + 1224);
      v54 = *(v0 + 1192);
      v55 = *(v0 + 1176);
      v56 = *(v0 + 1160);
      v57 = *(v0 + 1144);
      v181 = *(v0 + 1128);
      v150 = *(v0 + 1120);
      v58 = *(v0 + 1088);
      v155 = v58;
      v161 = *(v0 + 1104);
      v59 = *(v0 + 1080);
      v60 = (v0 + 1072);
      v61 = *(v0 + 1048);
      v62 = *(v0 + 1032);
      v63 = *(v0 + 1016);
      v64 = *(v0 + 848);
      v65 = v172;
      if (v172)
      {
        v60 = (v0 + 1056);
      }

      v174 = *v60;
      if (v65)
      {
        v59 = *(v0 + 1064);
      }

      v130 = v59;

      *(v64 + 112) = v174;
      *(v64 + 120) = v130;
      *(v64 + 160) = v150;
      *(v64 + 168) = v181;
      *(v64 + 128) = v161;
      *(v64 + 144) = v155;
    }
  }

  else if (v41 == 2)
  {
    v175 = *(v0 + 1272);
    v182 = *(v0 + 1288);
    v151 = *(v0 + 1240);
    v156 = *(v0 + 1256);
    v131 = *(v0 + 1208);
    v136 = *(v0 + 1224);
    v123 = *(v0 + 1176);
    v127 = *(v0 + 1192);
    v120 = *(v0 + 1160);
    v66 = *(v0 + 1144);
    v67 = *(v0 + 1128);
    v68 = *(v0 + 1112);
    v69 = *(v0 + 1096);
    v70 = *(v0 + 1080);
    v71 = *(v0 + 1064);
    v168 = *(v0 + 1048);
    v162 = *(v0 + 1040);
    v72 = *(v0 + 1032);
    v73 = *(v0 + 1024);
    v141 = *(v0 + 1008);
    v146 = *(v0 + 1016);
    v74 = *(v0 + 848);

    v74[14] = v141;
    v74[15] = v146;
    v74[16] = v73;
    v74[17] = v72;
    v74[20] = v162;
    v74[21] = v168;
    v74[18] = v73;
    v74[19] = v72;
  }

  else if (v41 == 3)
  {
    v144 = *(v0 + 1272);
    v149 = *(v0 + 1288);
    v134 = *(v0 + 1240);
    v139 = *(v0 + 1256);
    v125 = *(v0 + 1224);
    v180 = *(v0 + 1208);
    v154 = *(v0 + 1200);
    v42 = *(v0 + 1168);
    v160 = v42;
    v166 = *(v0 + 1184);
    v43 = *(v0 + 1160);
    v44 = (v0 + 1152);
    v121 = *(v0 + 1128);
    v45 = *(v0 + 1112);
    v46 = *(v0 + 1096);
    v47 = *(v0 + 1080);
    v48 = *(v0 + 1064);
    v49 = *(v0 + 1048);
    v50 = *(v0 + 1032);
    v51 = *(v0 + 1016);
    v52 = *(v0 + 848);
    v53 = v172;
    if (v172)
    {
      v44 = (v0 + 1136);
    }

    v173 = *v44;
    if (v53)
    {
      v43 = *(v0 + 1144);
    }

    v129 = v43;

    *(v52 + 112) = v173;
    *(v52 + 120) = v129;
    *(v52 + 160) = v154;
    *(v52 + 168) = v180;
    *(v52 + 128) = v166;
    *(v52 + 144) = v160;
  }

  else
  {
    v152 = *(v0 + 1288);
    v157 = *(v0 + 1272);
    v137 = *(v0 + 1256);
    v75 = *(v0 + 1240);
    v76 = *(v0 + 1224);
    v176 = *(v0 + 1208);
    v183 = *(v0 + 1192);
    v163 = *(v0 + 1176);
    v77 = *(v0 + 1160);
    v78 = *(v0 + 1144);
    v79 = *(v0 + 1128);
    v80 = *(v0 + 1112);
    v81 = *(v0 + 1096);
    v82 = *(v0 + 1080);
    v83 = *(v0 + 1064);
    v132 = *(v0 + 1048);
    v142 = *(v0 + 1032);
    v147 = *(v0 + 1016);
    v169 = *(v0 + 880);

    sub_100027CCC();
    v84 = sub_100027D4C();
    v85 = sub_1000284EC();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1392);
    v88 = *(v0 + 1296);
    v89 = *(v0 + 880);
    v90 = *(v0 + 856);
    if (v86)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Invite status unknown", v91, 2u);
    }

    else
    {
    }

    v88(v89, v90);
  }

  v104 = *(v0 + 848);
  v105 = *(v0 + 840);
  v106 = *(v0 + 832);
  v107 = *(v0 + 736);
  sub_100002A28(v104, v107);
  (*(v105 + 56))(v107, 0, 1, v106);

  sub_10001FC9C(v104);
  v108 = *(v0 + 968);
  v109 = *(v0 + 944);
  v110 = *(v0 + 936);
  v111 = *(v0 + 928);
  v112 = *(v0 + 920);
  v113 = *(v0 + 912);
  v114 = *(v0 + 904);
  v115 = *(v0 + 896);
  v116 = *(v0 + 888);
  v117 = *(v0 + 880);
  v159 = *(v0 + 872);
  v165 = *(v0 + 848);
  v171 = *(v0 + 824);
  v178 = *(v0 + 816);
  v185 = *(v0 + 792);
  v188 = *(v0 + 784);

  v118 = *(v0 + 8);

  return v118();
}

uint64_t sub_100026308()
{
  v42 = v0;
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[106];
  swift_willThrow();

  sub_10001FC9C(v4);
  v5 = v0[175];
  v6 = v0[109];
  sub_100027CCC();
  swift_errorRetain();
  v7 = sub_100027D4C();
  v8 = sub_1000284EC();

  if (os_log_type_enabled(v7, v8))
  {
    v39 = v0[109];
    v9 = v0[108];
    v10 = v0[107];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[23];
    v16 = sub_10002866C();
    v18 = sub_100006B88(v16, v17, &v41);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v11, 0xCu);
    sub_100007038(v12);

    (*(v9 + 8))(v39, v10);
  }

  else
  {
    v19 = v0[109];
    v20 = v0[108];
    v21 = v0[107];

    (*(v20 + 8))(v19, v21);
  }

  (*(v0[105] + 56))(v0[92], 1, 1, v0[104]);
  v22 = v0[121];
  v23 = v0[118];
  v24 = v0[117];
  v25 = v0[116];
  v26 = v0[115];
  v27 = v0[114];
  v28 = v0[113];
  v29 = v0[112];
  v30 = v0[111];
  v31 = v0[110];
  v34 = v0[109];
  v35 = v0[106];
  v36 = v0[103];
  v37 = v0[102];
  v38 = v0[99];
  v40 = v0[98];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1000265F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100008754((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001DFC(&qword_100034CF0, qword_10002A0D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

char *sub_1000266F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DFC(&qword_100034C20, &qword_100029FA0);
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

unint64_t sub_100026800(char a1)
{
  v3 = *(v1 + 40);
  sub_10002867C();
  sub_1000202F4(a1);
  sub_10002841C();

  v4 = sub_10002868C();

  return sub_100026888(a1, v4);
}

unint64_t sub_100026888(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = sub_1000202F4(a1);
    v8 = v7;
    while (sub_1000202F4(*(*(v2 + 48) + v4)) != v6 || v9 != v8)
    {
      v11 = sub_10002863C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100026980(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001DFC(&qword_1000350D0, "H#");
  v35 = a2;
  result = sub_1000285FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = v23[1];
      v36 = *v23;
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_10002867C();
      sub_1000202F4(v22);
      sub_10002841C();

      result = sub_10002868C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v36;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

Swift::Int sub_100026C3C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10002856C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_10002867C();
      sub_1000202F4(v10);
      sub_10002841C();

      result = sub_10002868C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100026DE4()
{
  v1 = v0;
  sub_100001DFC(&qword_1000350D0, "H#");
  v2 = *v0;
  v3 = sub_1000285EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_100026F4C()
{
  v0 = sub_10002864C();

  if (v0 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for InviteMessageDetails()
{
  result = qword_100035B70;
  if (!qword_100035B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100026FEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DFC(&qword_1000350D0, "H#");
    v3 = sub_10002860C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_100026800(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000270E4()
{
  result = qword_100034FC8;
  if (!qword_100034FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034FC8);
  }

  return result;
}

uint64_t sub_100027138(uint64_t a1)
{
  v2 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000271BC()
{
  result = qword_100034FD8;
  if (!qword_100034FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InviteQueryItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InviteQueryItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100027374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 96);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 104);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000274C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 96);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 104);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100027600()
{
  sub_10002772C();
  if (v0 <= 0x3F)
  {
    sub_10002777C(319, &qword_100035040, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      sub_10002777C(319, &unk_100035048, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002772C()
{
  if (!qword_100035038)
  {
    v0 = sub_10002847C();
    if (!v1)
    {
      atomic_store(v0, &qword_100035038);
    }
  }
}

void sub_10002777C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10002853C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1000277E4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100035B88 = result;
  return result;
}

uint64_t sub_100027838()
{
  v0 = sub_100027D2C();
  sub_100027A48(v0, qword_100035BB8);
  sub_100027944(v0, qword_100035BB8);
  if (qword_100035B80 != -1)
  {
    swift_once();
  }

  v1 = qword_100035B88;
  return sub_100027D1C();
}

uint64_t sub_1000278E0()
{
  if (qword_100035B90 != -1)
  {
    swift_once();
  }

  v0 = sub_100027D2C();

  return sub_100027944(v0, qword_100035BB8);
}

uint64_t sub_100027944(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10002797C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100035B90 != -1)
  {
    swift_once();
  }

  v2 = sub_100027D2C();
  v3 = sub_100027944(v2, qword_100035BB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_100027A48(uint64_t a1, uint64_t *a2)
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