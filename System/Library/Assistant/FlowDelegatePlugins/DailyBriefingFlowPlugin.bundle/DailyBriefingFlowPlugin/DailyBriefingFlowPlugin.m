unint64_t sub_20A8(char a1)
{
  v2._countAndFlagsBits = sub_2104(a1);
  sub_A46D4(v2);

  return 0xD000000000000012;
}

unint64_t sub_2104(char a1)
{
  result = 0xD00000000000001FLL;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000022;
      break;
    case 2:
    case 4:
    case 5:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CE980;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2254@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21E4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_2284@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2104(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22E4()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A43A4();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_2398, v0, 0);
}

uint64_t sub_2398()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = *(v0 + 40);

    v4 = sub_595C();

    return v5(v4);
  }

  else
  {
    if (qword_DA9A8 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v7 = *(v0 + 40);
    v8 = *algn_E0B08;
    *(v0 + 56) = qword_E0B00;
    *(v0 + 64) = v8;
    *(v0 + 104) = byte_E0B10;
    v9 = qword_E0B18;
    *(v0 + 72) = qword_E0B18;
    v10 = v9;
    sub_A4384();
    sub_A49B4();
    sub_59A0();
    *(v0 + 80) = *(v1 + 120);

    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_2518;

    return sub_30DC();
  }
}

uint64_t sub_2518()
{
  sub_5950();
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_5930();
  *v5 = v4;
  *(v7 + 96) = v6;
  *(v7 + 105) = v8;

  return _swift_task_switch(sub_2644, v3, 0);
}

uint64_t sub_2644()
{
  sub_59C4();
  v1 = *(v0 + 105);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 104);
  sub_A49A4();
  sub_A4364();
  if (v1)
  {
    v7 = *(v0 + 96);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    sub_A4544();
    sub_5068(v7, 1);
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    v15 = *(v13 + 112);
    *(v13 + 112) = *(v0 + 96);

    (*(v12 + 8))(v11, v14);
  }

  v17 = *(v0 + 40);
  v16 = *(v0 + 48);

  v18 = sub_595C();

  return v19(v18);
}

uint64_t sub_27AC(char a1)
{
  v3 = sub_A43D4();
  v4 = sub_591C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 112);
  if (v11)
  {
    v12 = *(v1 + 112);

    v13 = sub_20A8(a1);
    sub_9C7E4(v13, v14, v11, &v17);

    if (v18)
    {
      if (swift_dynamicCast())
      {
        return v16;
      }
    }

    else
    {
      sub_5000(&v17);
    }
  }

  else
  {
    (*(v6 + 16))(v10, v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger, v3);
    sub_81094(0xD000000000000019, 0x80000000000AD9A0, 0xD00000000000002ELL, 0x80000000000AD740, 0x65756C6156746567, 0xEE00293A726F6628);
    (*(v6 + 8))(v10, v3);
  }

  return 0;
}

uint64_t sub_2970()
{
  sub_5950();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_A43D4();
  v1[5] = v4;
  sub_5940(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_2A28, v0, 0);
}

uint64_t sub_2A28()
{
  sub_59C4();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2[17];
  if (v3 && v1)
  {
    if (v2[16] == v0[2] && v3 == v1)
    {
LABEL_9:
      v9 = v0[6];
      v8 = v0[7];
      v10 = v0[5];
      (*(v9 + 16))(v8, v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger, v10);
      sub_596C(0xD000000000000050, "getRefreshedState(requestId:)");
      (*(v9 + 8))(v8, v10);
      if (v2[14])
      {
        v11 = v2[14];
      }

      else
      {
        sub_A4544();
      }

      v23 = v0[7];

      sub_595C();
      sub_59E4();

      __asm { BRAA            X2, X16 }
    }

    v5 = v0[3];
    v6 = sub_A4E44();
    v7 = v0[4];
    if (v6)
    {
      v2 = v0[4];
      goto LABEL_9;
    }

    v12 = v0[3];
  }

  else
  {
    v12 = v0[3];
    v7 = v0[4];
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  v16 = v0[2];
  (*(v14 + 16))(v13, v7 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger, v15);
  sub_596C(0xD000000000000022, "hing CKJsonObject. Error: ");
  (*(v14 + 8))(v13, v15);
  v17 = *(v7 + 112);
  *(v7 + 112) = 0;

  v18 = v2[17];
  v2[16] = v16;
  v2[17] = v12;

  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v19[1] = sub_2CA4;
  v20 = v0[4];
  sub_59E4();

  return sub_22E4();
}

uint64_t sub_2CA4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;
  sub_5930();
  *v6 = v5;

  v7 = *(v3 + 56);

  v8 = *(v5 + 8);

  return v8(a1);
}

char *sub_2DBC()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 17);

  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger;
  v5 = sub_A43D4();
  sub_5908(v5);
  (*(v6 + 8))(&v0[v4]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2E30()
{
  sub_2DBC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_2E84()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_2F40()
{
  swift_defaultActor_initialize();
  *(v0 + 14) = 0;
  if (qword_DA838 != -1)
  {
    swift_once();
  }

  v1 = qword_E0608;
  *(v0 + 16) = 0;
  *(v0 + 17) = 0;
  *(v0 + 15) = v1;
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger;
  v3 = qword_DA9D0;

  if (v3 != -1)
  {
    sub_58D8();
  }

  v4 = sub_A43D4();
  v5 = sub_48A4(v4, qword_E0BA0);
  (*(*(v4 - 8) + 16))(&v0[v2], v5, v4);
  return v0;
}

uint64_t sub_3088(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = a3();
  *a4 = v9;
  return result;
}

uint64_t sub_30F0()
{
  sub_5950();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = sub_4BF0(&qword_DADC0, &qword_A5CA0);
  *v2 = v0;
  v2[1] = sub_31D4;
  v4 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD000000000000011, 0x80000000000AD800, sub_4E90, v4, v3);
}

uint64_t sub_31D4()
{
  sub_5950();
  v2 = *(*v1 + 72);
  v3 = *v1;
  sub_5930();
  *v4 = v3;
  *(v5 + 80) = v0;

  if (v0)
  {
    v6 = sub_32F8;
  }

  else
  {
    v6 = sub_32DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_32F8()
{
  sub_59C4();
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v1 = v0[10];
  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0BA0);
  sub_A4B54(39);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000025;
  v8._object = 0x80000000000AD820;
  sub_A46D4(v8);
  v0[5] = 0;
  v0[4] = 0;
  sub_A4C44();
  sub_81094(v0[2], v0[3], 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000011, 0x80000000000AD800);

  sub_4E98();
  v3 = swift_allocError();
  *v4 = 0;
  v4[1] = 0;

  v5 = v0[1];

  return v5(v3, 1);
}

void sub_348C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&unk_DADD0, &qword_A5CA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  v10 = objc_allocWithZone(sub_A4034());
  v11 = sub_A4044();
  (*(v5 + 16))(v8, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v8, v4);
  aBlock[4] = sub_4F74;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3918;
  aBlock[3] = &unk_D01D0;
  v14 = _Block_copy(aBlock);

  [v9 dictionaryRepresentationForKeysMatching:v11 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_3680(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v1 = sub_A43D4();
    sub_48A4(v1, qword_E0BA0);
    sub_A4B54(44);

    swift_getErrorValue();
    v4._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v4);

    sub_81094(0xD00000000000002ALL, 0x80000000000AD8C0, 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000011, 0x80000000000AD800);

    sub_4BF0(&unk_DADD0, &qword_A5CA8);
    return sub_A47D4();
  }

  else
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v3 = sub_A43D4();
    sub_48A4(v3, qword_E0BA0);
    sub_A4B54(29);

    v5._countAndFlagsBits = sub_A4554();
    sub_A46D4(v5);

    sub_810AC(0xD00000000000001BLL, 0x80000000000AD8A0, 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000011, 0x80000000000AD800);

    sub_4BF0(&unk_DADD0, &qword_A5CA8);
    return sub_A47E4();
  }
}

uint64_t sub_3918(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_A4524();

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_39B8()
{
  sub_5950();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  v5 = sub_A43A4();
  *(v1 + 40) = v5;
  sub_5940(v5);
  *(v1 + 48) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_3A74, 0, 0);
}

uint64_t sub_3A74()
{
  sub_59C4();
  if (qword_DA9B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 88);
  v5 = *(v0 + 16);
  v6 = qword_E0B38;
  sub_A4384();
  sub_A49B4();
  sub_59A0();
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v1;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_3BEC;
  sub_59E4();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_3BEC()
{
  sub_5950();
  v3 = *(*v1 + 72);
  v2 = *v1;
  sub_5930();
  *v4 = v2;
  *(v2 + 80) = v0;

  if (v0)
  {
    v5 = sub_3D68;
  }

  else
  {
    v6 = *(v2 + 64);

    v5 = sub_3CFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3CFC()
{
  sub_5950();
  v1 = sub_59D0();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_3D68()
{
  v10 = *(v0 + 80);
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 88);

  sub_A4B54(40);

  v12._countAndFlagsBits = v4;
  v12._object = v2;
  sub_A46D4(v12);
  v13._countAndFlagsBits = 0x20726F6620;
  v13._object = 0xE500000000000000;
  sub_A46D4(v13);
  v14._countAndFlagsBits = sub_2104(v5);
  sub_A46D4(v14);

  v15._countAndFlagsBits = 0x3A726F727245202ELL;
  v15._object = 0xE900000000000020;
  sub_A46D4(v15);
  v16._object = 0x80000000000AD6F0;
  v16._countAndFlagsBits = 0xD00000000000002ELL;
  sub_A46D4(v16);
  sub_81094(0xD000000000000014, 0x80000000000AD720, 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000010, 0x80000000000AD6D0);

  v6 = sub_59D0();
  v7(v6);

  v8 = *(v0 + 8);

  return v8();
}

void sub_3F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v31 = a6;
  v32 = a1;
  v6 = a5;
  v28 = a5;
  v34 = a4;
  v29 = a2;
  v30 = sub_4BF0(&qword_DADB8, &qword_A5C98);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30);
  v11 = &v26 - v10;
  v27 = &v26 - v10;
  v12 = sub_A43A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a2 + 16);
  v34 = sub_A45C4();
  sub_20A8(v6);
  v33 = sub_A45C4();

  (*(v13 + 16))(v15, v31, v12);
  v16 = v11;
  v17 = v30;
  (*(v8 + 16))(v16, v32, v30);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v8 + 80) + v19 + 9) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v18, v15, v12);
  v22 = v21 + v19;
  *v22 = v29;
  *(v22 + 8) = v28;
  (*(v8 + 32))(v21 + v20, v27, v17);
  aBlock[4] = sub_4D88;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_66E30;
  aBlock[3] = &unk_D0180;
  v23 = _Block_copy(aBlock);

  v24 = v34;
  v25 = v33;
  [v35 setValue:v34 forKey:v33 completionHandler:v23];
  _Block_release(v23);
}

uint64_t sub_4238(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_DA9B0 != -1)
  {
    swift_once();
  }

  sub_A49A4();
  sub_A4364();
  if (a1)
  {
    swift_errorRetain();
    sub_A4B54(37);

    v7._countAndFlagsBits = sub_20A8(a4);
    sub_A46D4(v7);

    v8._countAndFlagsBits = 8250;
    v8._object = 0xE200000000000000;
    sub_A46D4(v8);
    swift_getErrorValue();
    v9._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v9);

    sub_81094(0xD00000000000001FLL, 0x80000000000AD7C0, 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000010, 0x80000000000AD6D0);

    sub_4BF0(&qword_DADB8, &qword_A5C98);
    return sub_A47D4();
  }

  else
  {
    sub_4BF0(&qword_DADB8, &qword_A5C98);
    return sub_A47E4();
  }
}

unint64_t sub_4454(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xD00000000000002ELL;
  }

  sub_A4B54(44);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_A46D4(v5);
  return 0xD00000000000002ALL;
}

uint64_t sub_4504()
{
  sub_5950();
  if (qword_DA830 != -1)
  {
    swift_once();
  }

  v1 = qword_E0600;
  *(v0 + 16) = qword_E0600;

  return _swift_task_switch(sub_45A8, v1, 0);
}

uint64_t sub_45A8()
{
  v1 = *(v0 + 16);
  v2 = sub_27AC(*(v0 + 24));
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_462C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16DBKnowledgeStore_logger;
  v2 = sub_A43D4();
  sub_5908(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_46EC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4724()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_47C4()
{
  v1 = v0;
  sub_A4024();
  *(v0 + 16) = sub_A4014();
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16DBKnowledgeStore_logger;
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v3 = sub_A43D4();
  v4 = sub_48A4(v3, qword_E0BA0);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  return v1;
}

uint64_t sub_48A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

NSString sub_48EC@<X0>(void *a1@<X8>)
{
  result = sub_5858();
  *a1 = result;
  return result;
}

void sub_4914(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_4948();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_4950()
{
  v1 = sub_5994();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_499C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_64F70();
  *a1 = result;
  return result;
}

uint64_t sub_49C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_64F78(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_4A18@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_4A4C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_4A68@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_4AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_A45C4();

  *a2 = v5;
  return result;
}

uint64_t sub_4AE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_787B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_4B14(uint64_t a1)
{
  v2 = sub_54B8(&qword_DAE38, type metadata accessor for Name);
  v3 = sub_54B8(&unk_DAE40, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_4BF0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4C38()
{
  v1 = sub_A43A4();
  sub_591C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_4BF0(&qword_DADB8, &qword_A5C98);
  sub_591C(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 9) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  v17 = *(v0 + v7);

  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_4D88(uint64_t a1)
{
  v3 = sub_A43A4();
  sub_5940(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_4BF0(&qword_DADB8, &qword_A5C98) - 8);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);
  v11 = v1 + ((v7 + *(v8 + 80) + 9) & ~*(v8 + 80));

  return sub_4238(a1, v1 + v5, v9, v10);
}

uint64_t sub_4E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4E98()
{
  result = qword_DADC8;
  if (!qword_DADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DADC8);
  }

  return result;
}

uint64_t sub_4EEC()
{
  v1 = sub_4BF0(&unk_DADD0, &qword_A5CA8);
  sub_5908(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_4F74(uint64_t a1)
{
  v2 = *(*(sub_4BF0(&unk_DADD0, &qword_A5CA8) - 8) + 80);

  return sub_3680(a1);
}

uint64_t sub_5000(uint64_t a1)
{
  v2 = sub_4BF0(&unk_DB870, &qword_A5CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5068(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

__n128 sub_5074(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_5080(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_50D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_5124(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_5140(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnowledgeStoreKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KnowledgeStoreKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x52D4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_5358(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5378(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_53DC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_54B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5560(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_5610();
}

unint64_t sub_55B8()
{
  result = qword_DAE30;
  if (!qword_DAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DAE30);
  }

  return result;
}

uint64_t sub_5610()
{
  v0 = sub_A45F4();
  v2 = v1;
  if (v0 == sub_A45F4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_A4E44();
  }

  return v5 & 1;
}

uint64_t sub_5694()
{
  sub_A45F4();
  sub_A46A4();
}

Swift::Int sub_56E8()
{
  sub_A45F4();
  sub_A4F14();
  sub_A46A4();
  v0 = sub_A4F44();

  return v0;
}

uint64_t sub_575C(uint64_t a1, id *a2)
{
  result = sub_A45D4();
  *a2 = 0;
  return result;
}

uint64_t sub_57D8(uint64_t a1, id *a2)
{
  v3 = sub_A45E4();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_5858()
{
  sub_A45F4();
  v0 = sub_A45C4();

  return v0;
}

uint64_t sub_5890()
{
  sub_A45F4();
  v0 = sub_A46F4();

  return v0;
}

uint64_t sub_58D8()
{

  return swift_once();
}

void sub_596C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_810AC(a1, a2 | 0x8000000000000000, v4 + 17, v2 | 0x8000000000000000, 0xD00000000000001DLL, v3 | 0x8000000000000000);
}

uint64_t sub_59A0()
{

  return sub_A4374();
}

uint64_t sub_59D0()
{
  v1 = v0[5];
  v2 = *(v0[6] + 8);
  return v0[7];
}

uint64_t MapsSuggestionsEntry.identifier.getter()
{
  v1 = [v0 uniqueIdentifier];
  v2 = sub_A45F4();

  return v2;
}

id MapsSuggestionsEntry.entityBuilder.getter()
{
  v1 = sub_A3F84();
  sub_5D78(v1);
  v2 = sub_A3F74();
  v3 = [v0 geoMapItem];
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  sub_5CDC(v3, &selRef_name);
  if (v5)
  {
    sub_A3F54();
  }

  result = [v4 geoAddress];
  if (result)
  {
    v7 = result;
    v8 = [result structuredAddress];

    if (v8)
    {
      sub_5CDC(v8, &selRef_fullThoroughfare);
      if (v9)
      {
        v10 = sub_5D5C();
        sub_5D78(v10);
        sub_A3FA4();
        sub_5D3C();

        sub_5D90();
        sub_A3F64();
      }

      sub_5CDC(v8, &selRef_locality);
      if (v11)
      {
        v12 = sub_5D5C();
        sub_5D78(v12);
        sub_A3FA4();
        sub_5D3C();

        sub_5D90();
        sub_A3F44();
      }

      sub_5CDC(v8, &selRef_administrativeArea);
      if (v13)
      {
        v14 = sub_5D5C();
        sub_5D78(v14);
        sub_A3FA4();
        sub_5D3C();

        sub_5D90();
        sub_A3F34();
      }

      sub_5CDC(v8, &selRef_postCode);
      if (v15)
      {
        sub_A3F14();
      }

      sub_5CDC(v8, &selRef_country);
      if (v16)
      {
        v17 = sub_5D5C();
        sub_5D78(v17);
        sub_A3FA4();
        sub_5D3C();

        sub_5D90();
        sub_A3F24();
      }
    }

    else
    {
      v8 = v4;
    }

    return v2;
  }

  __break(1u);
  return result;
}

id sub_5CB0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = MapsSuggestionsEntry.entityBuilder.getter();
  *a1 = result;
  return result;
}

uint64_t sub_5CDC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_A45F4();

  return v4;
}

uint64_t sub_5D3C()
{

  return dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)(v1, v0);
}

uint64_t sub_5D5C()
{

  return type metadata accessor for UsoEntityBuilder_common_GeographicArea(0);
}

uint64_t sub_5D78(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

unint64_t sub_5D9C(char a1)
{
  v2 = 0xEE00746E65764574;
  v3._countAndFlagsBits = 0x6E6174726F706D49;
  switch(a1)
  {
    case 1:
      v4 = "UpcomingEventSummary";
      goto LABEL_5;
    case 2:
      v4 = "CalendarEventSummary";
      goto LABEL_5;
    case 3:
      v4 = "TomorrowEventSummary";
LABEL_5:
      v2 = ((v4 - 32) | 0x8000000000000000);
      v3._countAndFlagsBits = 0xD000000000000014;
      break;
    default:
      break;
  }

  v3._object = v2;
  sub_A46D4(v3);

  return 0xD000000000000016;
}

unint64_t sub_5E80(char a1)
{
  result = 0x6E6174726F706D49;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5F1C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEA88;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5F8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5F1C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_5FBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_5E80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CalendarDialogs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarDialogs(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x6144);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_6180()
{
  result = qword_DB230;
  if (!qword_DB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB230);
  }

  return result;
}

uint64_t sub_6200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 16) = 0;
  v17 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentCondition;
  v18 = sub_A42E4();
  sub_7A14(v18);
  (*(v19 + 32))(v8 + v17, a1);
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature) = a2;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature) = a3;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_lowTemperature) = a4;
  v20 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_startTime;
  v21 = sub_A2EA4();
  sub_7A14(v21);
  (*(v22 + 32))(v8 + v20, a5);
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowHighTemperature) = a6;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowLowTemperature) = a7;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowNextDayWeather) = a8;
  return v8;
}

uint64_t sub_6324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 == 0xD000000000000010 && 0x80000000000ACDA0 == a2;
  if (v7 || (sub_79F8() & 1) != 0)
  {
    v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentCondition;
    v9 = sub_A42E4();
    *(a3 + 24) = v9;
    v10 = sub_76B0(a3);
    v11 = *(*(v9 - 8) + 16);

    return v11(v10, v3 + v8, v9);
  }

  v13 = a1 == 0xD000000000000012 && 0x80000000000ACDC0 == a2;
  if (!v13 && (sub_79F8() & 1) == 0)
  {
    result = sub_7A50();
    v16 = a1 == result && a2 == v15;
    if (v16 || (result = sub_79F8(), (result & 1) != 0))
    {
      v14 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature);
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_24:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    result = 0xD000000000000019;
    v17 = a1 == 0xD000000000000019 && 0x80000000000ACE00 == a2;
    if (v17 || (result = sub_79F8(), (result & 1) != 0))
    {
      v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowHighTemperature;
    }

    else
    {
      v20 = a1 == 0xD000000000000018 && 0x80000000000ACE20 == a2;
      if (v20 || (result = sub_79F8(), (result & 1) != 0))
      {
        v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowLowTemperature;
      }

      else
      {
        if (a1 != 0xD000000000000018 || 0x80000000000ACE40 != a2)
        {
          result = sub_79F8();
          if ((result & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowNextDayWeather;
      }
    }

    v19 = *(v3 + v18);
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v19;
    return result;
  }

  v14 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature);
LABEL_15:
  *(a3 + 24) = sub_A4164();
  *a3 = v14;
}

uint64_t sub_6550(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEB08;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_65B8()
{
  result = sub_7A50();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x65706D6554776F6CLL;
      break;
    case 4:
      result = 0x6D69547472617473;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_6708@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6550(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_6738@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_65B8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_6780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_659C();
  *a1 = result;
  return result;
}

uint64_t sub_67B4(uint64_t a1)
{
  v2 = sub_75C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_67F0(uint64_t a1)
{
  v2 = sub_75C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_682C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentCondition;
  v2 = sub_A42E4();
  sub_7A14(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature);

  v5 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature);

  v6 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_lowTemperature);

  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_startTime;
  v8 = sub_A2EA4();
  sub_7A14(v8);
  (*(v9 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_68F4()
{
  sub_682C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WeatherCurrent()
{
  result = qword_DB260;
  if (!qword_DB260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_69A0()
{
  result = sub_A42E4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_A2EA4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_6A94(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DB3A0, &qword_A64D8);
  v6 = sub_591C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  sub_7584(a1, a1[3]);
  sub_75C8();
  sub_A4F64();
  LOBYTE(v25) = 0;
  sub_A42E4();
  sub_7980();
  sub_7668(v14, v15);
  sub_7A24();
  if (!v2)
  {
    v25 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature);
    HIBYTE(v24) = 1;
    sub_A4164();
    sub_7968();
    sub_7668(v16, v17);
    sub_7920();
    sub_A4DF4();
    v25 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature);
    HIBYTE(v24) = 2;
    sub_7920();
    sub_A4DA4();
    v25 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_lowTemperature);
    HIBYTE(v24) = 3;
    sub_7920();
    sub_A4DA4();
    LOBYTE(v25) = 4;
    sub_A2EA4();
    sub_7998();
    sub_7668(v18, v19);
    sub_7A24();
    v20 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowHighTemperature);
    sub_79B0(5);
    v21 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowLowTemperature);
    sub_79B0(6);
    v22 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowNextDayWeather);
    sub_79B0(7);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_6D34(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_6D84(a1);
  return v5;
}

uint64_t sub_6D84(uint64_t *a1)
{
  v3 = sub_A2EA4();
  v4 = sub_591C(v3);
  v42 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_A42E4();
  v11 = sub_591C(v10);
  v43 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_4BF0(&qword_DB378, &qword_A64D0);
  v16 = sub_591C(v45);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  v48 = v1;
  v49 = a1;
  *(v1 + 16) = 0;
  v21 = a1[4];
  sub_7584(a1, a1[3]);
  sub_75C8();
  v46 = v20;
  v22 = v47;
  sub_A4F54();
  if (v22)
  {
    v31 = v48;

    type metadata accessor for WeatherCurrent();
    v27 = *(*v31 + 48);
    v28 = *(*v31 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v9;
    v23 = v43;
    v47 = v3;
    LOBYTE(v51) = 0;
    sub_7980();
    sub_7668(v24, v25);
    v26 = v44;
    sub_A4D74();
    v30 = *(v23 + 32);
    v31 = v48;
    v44 = v10;
    v30(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentCondition, v26, v10);
    sub_A4164();
    v50 = 1;
    sub_7968();
    sub_7668(v32, v33);
    sub_7950();
    sub_A4D74();
    *(v31 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature) = v51;
    v50 = 2;
    sub_7950();
    sub_A4D24();
    *(v31 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature) = v51;
    v50 = 3;
    sub_7950();
    sub_A4D24();
    *(v31 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_lowTemperature) = v51;
    LOBYTE(v51) = 4;
    sub_7998();
    sub_7668(v34, v35);
    v36 = v41;
    v37 = v47;
    sub_A4D74();
    (*(v42 + 32))(v31 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_startTime, v36, v37);
    *(v31 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowHighTemperature) = sub_79D4(5) & 1;
    *(v31 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowLowTemperature) = sub_79D4(6) & 1;
    v38 = sub_79D4(7);
    v39 = sub_7940();
    v40(v39);
    *(v31 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowNextDayWeather) = v38 & 1;
  }

  sub_761C(v49);
  return v31;
}

void *sub_7394()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_73DC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_7428())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_74A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_6D34(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_7584(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_75C8()
{
  result = qword_DB380;
  if (!qword_DB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB380);
  }

  return result;
}

uint64_t sub_761C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_7668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_76B0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for WeatherCurrent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x77DCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_7818()
{
  result = qword_DB3C0;
  if (!qword_DB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB3C0);
  }

  return result;
}

unint64_t sub_7870()
{
  result = qword_DB3C8;
  if (!qword_DB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB3C8);
  }

  return result;
}

unint64_t sub_78C8()
{
  result = qword_DB3D0;
  if (!qword_DB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB3D0);
  }

  return result;
}

uint64_t sub_79B0@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_A4DC4();
}

uint64_t sub_79D4@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 120);

  return sub_A4D44();
}

uint64_t sub_79F8()
{

  return sub_A4E44();
}

uint64_t sub_7A24()
{

  return sub_A4DF4();
}

Swift::Int sub_7AAC(char a1)
{
  sub_A4F14();
  sub_A4F24(a1 & 1);
  return sub_A4F44();
}

Swift::Int sub_7B10()
{
  v1 = *v0;
  sub_A4F14();
  sub_A4F24(v1);
  return sub_A4F44();
}

uint64_t sub_7B5C()
{
  type metadata accessor for DailyBriefingFlow();
  sub_AA74();
  sub_A844(v0, v1);
  return sub_A3334();
}

uint64_t sub_7BDC()
{
  sub_5950();
  v1[49] = v2;
  v1[50] = v0;
  v3 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64) + 15;
  v1[51] = swift_task_alloc();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_7C6C()
{
  v1 = v0[50];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state;
  v0[52] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state;
  if (*(v1 + v2))
  {
    v3 = v0[49];
    sub_90B8();
    v4 = v0[51];

    sub_AA9C();

    return v5();
  }

  else
  {
    v0[53] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_logger;
    sub_A4B54(24);

    sub_AAD0();
    v7 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec);
    v0[54] = v7;
    v8 = *(*v7 + 240);
    v9 = (*v7 + 240) & 0xFFFFFFFFFFFFLL | 0xE1E7000000000000;
    v0[55] = v8;
    v0[56] = v9;
    v8();
    v10 = v0[5];
    v11 = v0[6];
    sub_7584(v0 + 2, v10);
    sub_AAC4(v11);
    v24._countAndFlagsBits = v12(v10, v11);
    sub_A46D4(v24);

    sub_761C(v0 + 2);
    v25._object = 0x80000000000ADC10;
    v25._countAndFlagsBits = 0xD000000000000015;
    sub_A46D4(v25);
    sub_AA40();
    sub_AB34();
    sub_810AC(v13, v14, v15, v16, v17, v18);

    v21 = (*v7 + 280);
    v22 = (*v21 + **v21);
    v19 = (*v21)[1];
    v20 = swift_task_alloc();
    v0[57] = v20;
    *v20 = v0;
    v20[1] = sub_7F2C;

    return v22();
  }
}

uint64_t sub_7F2C()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  v3 = *(v1 + 456);
  v10 = *v0;
  *(v2 + 464) = v4;
  *(v2 + 488) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8020()
{
  v1 = *(v0 + 488);
  if ((v1 & 0x100) != 0)
  {
    v22 = *(v0 + 464);
    v23 = *(v0 + 448);
    v25 = *(v0 + 424);
    v24 = *(v0 + 432);
    v26 = *(v0 + 400);
    (*(v0 + 440))();
    v27 = *(v0 + 88);
    sub_7584((v0 + 56), *(v0 + 80));
    v28 = *(v27 + 8);
    sub_A88C(v22, v1, 1);
    v29 = sub_AB00();
    v68._countAndFlagsBits = v28(v29);
    sub_A46D4(v68);

    sub_761C((v0 + 56));
    sub_AAE8();
    sub_A4B54(26);

    swift_getErrorValue();
    v31 = *(v0 + 296);
    v30 = *(v0 + 304);
    v32 = *(v0 + 312);
    v69._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v69);

    v70._countAndFlagsBits = 46;
    v70._object = 0xE100000000000000;
    sub_A46D4(v70);

    v71._countAndFlagsBits = sub_AB00();
    sub_A46D4(v71);

    sub_AA40();
    sub_AB34();
    sub_81094(v33, v34, v35, v36, v37, v38);

    *(v0 + 376) = v22;
    swift_errorRetain();
    sub_4BF0(&qword_DBB90, &qword_A7540);
    v39 = swift_dynamicCast();
    v40 = *(v0 + 488);
    v41 = *(v0 + 464);
    if (v39)
    {
      v42 = *(v0 + 392);
      v43 = *(v0 + 400);
    }

    else
    {
      v45 = *(v0 + 440);
      v44 = *(v0 + 448);
      v46 = *(v0 + 432);
      v47 = *(v0 + 392);
      v48 = sub_7584((*(v0 + 400) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender), *(*(v0 + 400) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender + 24));
      v45();
      swift_getErrorValue();
      v50 = *(v0 + 320);
      v49 = *(v0 + 328);
      v51 = *(v0 + 336);
      v52 = sub_A4EC4();
      v54 = v53;
      v55 = *v48;
      v56 = *(v0 + 120);
      v57 = *(v0 + 128);
      v58 = sub_7584((v0 + 96), v56);
      sub_4DB30(v58, 0x3Bu, v52, v54, v55, v56, v57);

      sub_761C((v0 + 96));
    }

    sub_90B8();
    sub_A744(v41, v40, 1);
    sub_A744(v41, v40, 1);
    v59 = *(v0 + 408);

    sub_AA9C();

    return v60();
  }

  else
  {
    v2 = *(v0 + 464);
    v62 = *(v0 + 448);
    v63 = *(v0 + 440);
    v3 = *(v0 + 432);
    v61 = *(v0 + 424);
    v4 = *(v0 + 400);
    v64 = *(v0 + 408);
    sub_AAD0();
    v5();
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    sub_7584((v0 + 136), v7);
    v8 = *(v6 + 8);
    sub_A89C(v2, v1 & 1);
    v66._countAndFlagsBits = v8(v7, v6);
    sub_A46D4(v66);

    sub_761C((v0 + 136));
    sub_AAE8();

    v67._countAndFlagsBits = 0xD00000000000001ALL;
    v67._object = 0x80000000000ADC50;
    sub_A46D4(v67);

    sub_AA40();
    sub_AB34();
    sub_810AC(v9, v10, v11, v12, v13, v14);

    v15 = sub_7584((v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher), *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher + 24));
    v16 = v63();
    (*(*v3 + 264))(v16);
    v17 = *v15;
    v18 = swift_task_alloc();
    *(v0 + 472) = v18;
    *v18 = v0;
    v18[1] = sub_8510;
    v19 = *(v0 + 464);
    v20 = *(v0 + 408);

    return sub_87A40(v19, v1 & 1, v0 + 176, v20);
  }
}

uint64_t sub_8510()
{
  sub_AB40();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = v5;
  v7 = *(v5 + 472);
  v8 = *(v5 + 408);
  v9 = *v0;
  sub_5930();
  *v10 = v9;

  sub_A8A8(v4, v2 & 1);
  sub_A8B4(v8);
  sub_761C((v6 + 176));
  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_8634()
{
  if (*(v0 + 488))
  {
    v1 = *(v0 + 464);
    v3 = *(v0 + 392);
    v2 = *(v0 + 400);
    v4 = sub_AAB4();
    sub_A88C(v4, v5, v6);

    sub_A3614();

    v7 = sub_AAB4();
    sub_A744(v7, v8, v9);
    v10 = sub_AAB4();
    sub_A744(v10, v11, v12);
    sub_A754(v1, 1);
    v13 = *(v0 + 408);

    sub_AA9C();

    return v14();
  }

  else
  {
    v17 = *(v0 + 440);
    v16 = *(v0 + 448);
    v18 = *(v0 + 424);
    v19 = *(v0 + 432);
    v20 = *(v0 + 400);
    sub_AAD0();
    v17();
    v21 = *(v0 + 240);
    v22 = *(v0 + 248);
    sub_7584((v0 + 216), v21);
    sub_AAC4(v22);
    v43._countAndFlagsBits = v23(v21, v22);
    sub_A46D4(v43);

    sub_761C((v0 + 216));
    sub_AAE8();

    v44._object = 0x80000000000ADC50;
    v44._countAndFlagsBits = 0xD00000000000001ALL;
    sub_A46D4(v44);

    sub_AA40();
    sub_AB34();
    sub_810AC(v24, v25, v26, v27, v28, v29);

    (v17)(v30);
    sub_4BF0(&qword_DB5B0, &unk_A67D0);
    if (swift_dynamicCast())
    {
      v31 = *(v0 + 400);
      v32 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus;
      v33 = *(v0 + 491);
      swift_beginAccess();
      v34 = *(v31 + v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v31 + v32);
      sub_310AC(0, v33, isUniquelyReferenced_nonNull_native);
      *(v31 + v32) = v41;
      swift_endAccess();
    }

    v36 = *(**(v0 + 432) + 304);
    v40 = (v36 + *v36);
    v37 = v36[1];
    v38 = swift_task_alloc();
    *(v0 + 480) = v38;
    *v38 = v0;
    v38[1] = sub_89A4;
    v39 = *(v0 + 432);

    return v40();
  }
}

uint64_t sub_89A4()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 480);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8A88()
{
  sub_AB40();
  v1 = *(v0 + 464);
  v2 = *(v0 + 392);
  v3 = *(v0 + 488);
  *(*(v0 + 400) + *(v0 + 416)) = 1;
  sub_90B8();
  sub_A744(v1, v3, 0);
  sub_A744(v1, v3, 0);
  v4 = *(v0 + 408);

  sub_AA9C();

  return v5();
}

uint64_t sub_8B24(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  if (qword_DAA98 != -1)
  {
    swift_once();
  }

  sub_895A8();
  v6 = sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender + 24));
  v7 = *(**(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) + 240);
  v7(&v26);
  v8 = *v6;
  v9 = v28;
  v10 = v29;
  v11 = sub_7584(&v26, v28);
  sub_4DB30(v11, 1u, 0, 0, v8, v9, v10);
  v12 = sub_761C(&v26);
  (v7)(&v26, v12);
  sub_4BF0(&qword_DB5B0, &unk_A67D0);
  if (swift_dynamicCast())
  {
    v13 = v24;
    v14 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus;
    swift_beginAccess();
    v15 = *(a1 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a1 + v14);
    sub_310AC(0, v13, isUniquelyReferenced_nonNull_native);
    *(a1 + v14) = v24;
    swift_endAccess();
  }

  v17 = sub_A4814();
  sub_A924(v5, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;

  sub_89E10(0, 0, v5, &unk_A67E8, v18);

  *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state) = 1;
  v24 = 91;
  v25 = 0xE100000000000000;
  (v7)(&v26, v19);
  v20 = v28;
  v21 = v29;
  sub_7584(&v26, v28);
  v30._countAndFlagsBits = (*(v21 + 8))(v20, v21);
  sub_A46D4(v30);

  sub_761C(&v26);
  v31._countAndFlagsBits = 8285;
  v31._object = 0xE200000000000000;
  sub_A46D4(v31);
  v26 = v24;
  v27 = v25;

  v32._object = 0x80000000000ADC50;
  v32._countAndFlagsBits = 0xD00000000000001ALL;
  sub_A46D4(v32);

  sub_810AC(v26, v27, 0xD00000000000002FLL, 0x80000000000ADB90, 0x2865747563657865, 0xE900000000000029);
}

uint64_t sub_8EB4()
{
  sub_AB40();
  v1 = *(**(*(v0 + 16) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) + 304);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_8FD8;

  return v5();
}

uint64_t sub_8FD8()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_AA9C();

  return v5();
}

uint64_t sub_90B8()
{
  v1 = v0;
  v2 = sub_9CE4();
  if (v2)
  {
    v3 = v2;
    sub_AAD0();
    *&v138[0] = v4;
    *(&v138[0] + 1) = v5;
    (*(**(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) + 240))(&v139);
    v6 = v141;
    v7 = v142;
    sub_7584(&v139, v141);
    sub_AAC4(v7);
    v148._countAndFlagsBits = v8(v6, v7);
    sub_A46D4(v148);

    sub_761C(&v139);
    sub_AAE8();
    v9 = v138[0];
    *&v139 = 0;
    *(&v139 + 1) = 0xE000000000000000;
    sub_A4B54(18);

    *&v138[0] = 0xD000000000000010;
    *(&v138[0] + 1) = 0x80000000000ADBF0;
    (*(*v3 + 240))(&v139, v10);
    v11 = v142;
    sub_7584(&v139, v141);
    sub_AAC4(v11);
    v12 = sub_AB00();
    v149._countAndFlagsBits = v13(v12);
    sub_A46D4(v149);

    sub_761C(&v139);
    v14 = *&v138[0];
    v139 = v9;

    v150._countAndFlagsBits = sub_AB00();
    sub_A46D4(v150);

    v15 = *(&v139 + 1);
    sub_AB0C();
    sub_810C4(v16, v15, v17, v18, 0xD000000000000023, v19);

    v20 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs);
    sub_A760(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService, v138);
    v21 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus;
    swift_beginAccess();
    v22 = *(v1 + v21);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider, v137);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher, v136);
    v118 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_platformSupportsNews);
    v23 = qword_DA838;
    v119 = v3;

    v117 = v20;

    v116 = v22;

    if (v23 != -1)
    {
      swift_once();
    }

    v115 = qword_E0608;
    v24 = type metadata accessor for DBSiriKitEventSender();
    inited = swift_initStaticObject();
    v141 = v24;
    v142 = &off_D1B20;
    v143 = sub_A844(&qword_DB598, type metadata accessor for DBSiriKitEventSender);
    *&v139 = inited;
    v26 = type metadata accessor for OfflineStateProvider();
    v27 = swift_allocObject();
    sub_A7C4(v137, v137[3]);
    sub_AADC();
    sub_AA64();
    v29 = *(v28 + 64);
    __chkstk_darwin(v30);
    sub_AA54();
    v32 = sub_AB20(v31);
    v33(v32);
    sub_A7C4(v136, v136[3]);
    sub_AADC();
    sub_AA64();
    v35 = *(v34 + 64);
    __chkstk_darwin(v36);
    sub_AA54();
    v39 = (v38 - v37);
    (*(v40 + 16))(v38 - v37);
    v41 = *v14;
    v42 = *v39;
    v43 = type metadata accessor for TemplatingProvider();
    v135[3] = v43;
    v135[4] = &off_D1F98;
    v135[0] = v41;
    v44 = type metadata accessor for DailyBriefingOutputPublisher();
    v133 = v44;
    v134 = &off_D2D00;
    v132[0] = v42;
    v130 = v26;
    v131 = &off_D29E8;
    v129[0] = v27;
    v45 = type metadata accessor for DailyBriefingFlow();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    v48 = swift_allocObject();
    sub_A7C4(v135, v43);
    sub_AADC();
    sub_AA64();
    v50 = *(v49 + 64);
    __chkstk_darwin(v51);
    sub_AA54();
    v53 = sub_AB20(v52);
    v54(v53);
    sub_A7C4(v132, v133);
    sub_AADC();
    sub_AA64();
    v56 = *(v55 + 64);
    __chkstk_darwin(v57);
    sub_AA54();
    v60 = (v59 - v58);
    (*(v61 + 16))(v59 - v58);
    sub_A7C4(v129, v130);
    sub_AADC();
    sub_AA64();
    v63 = *(v62 + 64);
    __chkstk_darwin(v64);
    sub_AA54();
    v67 = (v66 - v65);
    (*(v68 + 16))(v66 - v65);
    v69 = *v14;
    v70 = *v60;
    v71 = *v67;
    v127 = v43;
    v128 = &off_D1F98;
    *&v126 = v69;
    v124 = v44;
    v125 = &off_D2D00;
    *&v123 = v70;
    v121 = v26;
    v122 = &off_D29E8;
    *&v120 = v71;
    v72 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_logger;
    v73 = qword_DA9D0;

    if (v73 != -1)
    {
      swift_once();
    }

    v74 = sub_A43D4();
    v75 = sub_48A4(v74, qword_E0BA0);
    (*(*(v74 - 8) + 16))(v48 + v72, v75, v74);
    *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state) = 0;
    v76 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_dialogService;
    v77 = sub_A3584();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    *(v48 + v76) = sub_A3574();
    *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) = v119;
    *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs) = v117;
    sub_A814(v138, v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService);
    *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_knowledgeStore) = v115;
    *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus) = v116;
    sub_A814(&v126, v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider);
    sub_A814(&v123, v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher);
    sub_A82C(&v139, (v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender));
    sub_A814(&v120, v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_offlineStateProvider);
    *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_platformSupportsNews) = v118;
    sub_761C(v129);
    sub_761C(v132);
    sub_761C(v135);
    sub_761C(v136);
    sub_761C(v137);
    *&v139 = v48;
    sub_AA74();
    sub_A844(v80, v81);
    sub_A3644();
  }

  else
  {
    sub_AAD0();
    *&v138[0] = v82;
    *(&v138[0] + 1) = v83;
    v84 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec);
    (*(*v84 + 240))(&v139);
    v85 = v141;
    v86 = v142;
    sub_7584(&v139, v141);
    sub_AAC4(v86);
    v151._countAndFlagsBits = v87(v85, v86);
    sub_A46D4(v151);

    sub_761C(&v139);
    sub_AAE8();
    v139 = v138[0];

    v152._countAndFlagsBits = 0xD000000000000029;
    v152._object = 0x80000000000ADB60;
    sub_A46D4(v152);

    v88 = *(&v139 + 1);
    sub_AB0C();
    sub_810C4(v89, v88, v90, v91, 0xD000000000000023, v92);

    v93 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus;
    swift_beginAccess();
    v94 = *(v1 + v93);
    v95 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs);
    *&v139 = v94;
    swift_bridgeObjectRetain_n();

    sub_74DEC(v96, v94, &v139);

    v97 = v139;
    v98 = *(v84 + 88);
    v99 = *(v84 + 96);
    v100 = *(v84 + 104);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService, &v141);
    sub_A760(v84 + 112, v144);
    if (qword_DA890 != -1)
    {
      swift_once();
    }

    v101 = qword_E0798;
    v102 = type metadata accessor for AppDetecter();
    v144[9] = &off_D0F20;
    v144[8] = v102;
    v144[5] = v101;
    v103 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_dialogService);
    v104 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_knowledgeStore);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider, v145);
    v105 = qword_DA8C8;

    if (v105 != -1)
    {
      swift_once();
    }

    v106 = qword_E08A0;
    v107 = type metadata accessor for AMSSearchService();
    v145[9] = &off_D1398;
    v145[8] = v107;
    v145[5] = v106;
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher, &v146);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_offlineStateProvider, v147);
    v108 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_platformSupportsNews);
    *&v139 = v98;
    *(&v139 + 1) = v99;
    v140 = v100;
    v144[10] = v103;
    v144[11] = v104;
    v147[40] = v108;
    type metadata accessor for DBSiriKitEventSender();
    v109 = swift_initStaticObject();
    v110 = type metadata accessor for OfflineFlow();
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    v113 = swift_allocObject();

    *&v139 = sub_792F4(v97, &v139, v109, v113);
    sub_A844(&qword_DB590, type metadata accessor for OfflineFlow);
    sub_A3644();
  }
}

uint64_t sub_9CE4()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs;
  v2 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs);
  if (v2 >> 62)
  {
LABEL_38:
    v3 = sub_A4C94();
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec);

  for (i = 0; ; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_A4B74();
      swift_unknownObjectRelease();
      if (v6 == v4)
      {
        break;
      }

      goto LABEL_9;
    }

    if (i >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_36;
    }

    if (*(v2 + 8 * i + 32) == v4)
    {
      break;
    }

LABEL_9:
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v7 == v3)
    {

      return 0;
    }
  }

  v8 = sub_1BF68(*(v0 + v1));
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    sub_A4CA4();
    v14 = v17;
    v2 = v18;
    v20 = v19;

    v10 = v20 >> 1;
    goto LABEL_24;
  }

  if (i >= v8 - 1)
  {
    return 0;
  }

  v0 = *(v0 + v1);
  v9 = sub_1BF68(v0);
  if (v9 <= i)
  {
    goto LABEL_41;
  }

  v10 = v9;
  v2 = i + 1;
  sub_1E064(i + 1, v0);
  result = sub_1E064(v10, v0);
  if ((v0 & 0xC000000000000001) == 0 || v10 - 1 == i)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v2 >= v10)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for BaseFlowSpec();
    swift_bridgeObjectRetain_n();
    v12 = i + 1;
    do
    {
      v13 = v12 + 1;
      sub_A4B64(v12);
      v12 = v13;
    }

    while (v10 != v13);
  }

  if (v0 >> 62)
  {
    goto LABEL_42;
  }

  v14 = (v0 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_24:
  swift_unknownObjectRetain();
  while (1)
  {
    if (v10 == v2)
    {
      swift_unknownObjectRelease_n();
      return 0;
    }

    if (v2 >= v10)
    {
      goto LABEL_37;
    }

    v0 = *(v14 + 8 * v2);

    v15 = sub_82E5C();
    if (HIBYTE(v16) == 255)
    {
      break;
    }

    if ((v16 & 0x100) == 0)
    {
      sub_A72C(v15, v16);
      break;
    }

    sub_A72C(v15, v16);

    ++v2;
  }

  swift_unknownObjectRelease_n();
  return v0;
}

uint64_t sub_9F70()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_dialogService);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService));
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec);

  v5 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_knowledgeStore);

  v6 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs);

  v7 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_offlineStateProvider));
  return v0;
}

uint64_t sub_A070()
{
  sub_9F70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DailyBriefingFlow()
{
  result = qword_DB410;
  if (!qword_DB410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A11C()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DailyBriefingFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DailyBriefingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xA350);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_A398()
{
  result = qword_DB588;
  if (!qword_DB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB588);
  }

  return result;
}

uint64_t sub_A3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_A49C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_A49C()
{
  sub_5950();
  v2 = v1;
  sub_AAA8();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_5930();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_A5AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_7BDC();
}

uint64_t sub_A648()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_AA9C();

  return v5();
}

void sub_A72C(void *a1, __int16 a2)
{
  if (HIBYTE(a2) != 255)
  {
    sub_A744(a1, a2, HIBYTE(a2) & 1);
  }
}

void sub_A744(void *a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_A754(a1, a2 & 1);
  }
}

void sub_A754(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_A760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A7C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_A814(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_A82C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_A844(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_A88C(void *a1, char a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_A89C(a1, a2 & 1);
  }
}

id sub_A89C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_A8A8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_A8B4(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A94C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A98C()
{
  sub_AB40();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_A648;

  return sub_8E94(v3, v4, v5, v6);
}

uint64_t sub_AA9C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_AAE8()
{
  v1._countAndFlagsBits = 8285;
  v1._object = 0xE200000000000000;

  sub_A46D4(v1);
}

void *sub_AB4C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v17 = v2;
  v18 = &_swiftEmptyArrayStorage;
  v16 = a1 + 32;
  while (1)
  {
    v4 = ~v1;
    v5 = v3 + 48 * v1;
    v6 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      sub_B8BC(v5, &v22, &qword_DB5C0, &qword_A67F8);
      v7 = v22;
      v26 = v23;
      v27 = v24;
      v28 = v22;
      v29[0] = v23;
      v29[1] = v24;
      sub_B8BC(v29, &v20, &unk_DB870, &qword_A5CB0);
      if (v21)
      {
        sub_B2E0(&v20, &v22);
        v25 = v7;

        sub_ADD0(&v22, a1, &v26);
        sub_761C(&v22);
      }

      else
      {
        sub_AD70(&v20, &unk_DB870, &qword_A5CB0);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
      }

      sub_AD70(&v28, &qword_DB5C8, &qword_A6800);
      if (*(&v25 + 1))
      {
        break;
      }

      sub_AD70(&v25, &qword_DB5D0, &qword_A6808);
      --v4;
      v5 += 48;
      if (!--v6)
      {
        return sub_B22C(v18);
      }
    }

    v22 = v25;
    v23 = v26;
    v24 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = v18[2];
      sub_54EE4();
      v18 = v13;
    }

    v3 = v16;
    v2 = v17;
    v8 = v18[2];
    if (v8 >= v18[3] >> 1)
    {
      sub_54EE4();
      v18 = v14;
    }

    v1 = -v4;
    v18[2] = v8 + 1;
    v9 = &v18[6 * v8];
    v10 = v22;
    v11 = v24;
    v9[3] = v23;
    v9[4] = v11;
    v9[2] = v10;
  }

  return sub_B22C(v18);
}

uint64_t sub_AD70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4BF0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_ADD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_A42E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v29 - v12;
  sub_B924(a1, v33);
  sub_4BF0(&qword_DB5F0, &qword_A6828);
  if (swift_dynamicCast())
  {
    sub_A814(v32, v29);
    sub_7584(v29, v29[3]);
    v14 = sub_A4324();
    a3[3] = sub_4BF0(&qword_DB600, qword_A6838);
    *a3 = v14;
    sub_761C(v29);
  }

  else
  {
    v15 = sub_4BF0(&qword_DB5F8, &qword_A6830);
    if (swift_dynamicCast())
    {
      v16 = v31;
      v17 = *(v31 + 16);
      if (v17)
      {
        v30 = &_swiftEmptyArrayStorage;
        sub_7AC74(0, v17, 0);
        v18 = v30;
        v19 = v16 + 32;
        do
        {
          sub_B924(v19, v29);
          sub_ADD0(v32, v29, a2);
          sub_761C(v29);
          v30 = v18;
          v21 = v18[2];
          v20 = v18[3];
          if (v21 >= v20 >> 1)
          {
            sub_7AC74((v20 > 1), v21 + 1, 1);
            v18 = v30;
          }

          v18[2] = v21 + 1;
          sub_B2E0(v32, &v18[4 * v21 + 4]);
          v19 += 32;
          --v17;
        }

        while (v17);
      }

      else
      {

        v18 = &_swiftEmptyArrayStorage;
      }

      a3[3] = v15;
      *a3 = v18;
    }

    else if (swift_dynamicCast())
    {
      v22 = *&v32[0];
      a3[3] = &type metadata for Double;
      *a3 = v22;
    }

    else if (swift_dynamicCast())
    {
      v23 = v32[0];
      a3[3] = &type metadata for Bool;
      *a3 = v23;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (qword_DA9D0 != -1)
        {
          swift_once();
        }

        v27 = sub_A43D4();
        sub_48A4(v27, qword_E0BA0);
        *&v32[0] = 0;
        *(&v32[0] + 1) = 0xE000000000000000;
        sub_A4B54(31);
        v34._countAndFlagsBits = 0xD00000000000001DLL;
        v34._object = 0x80000000000ADCD0;
        sub_A46D4(v34);
        sub_A4C44();
        v28 = v32[0];

        sub_810DC(v28, *(&v28 + 1));
      }

      (*(v7 + 32))(v11, v13, v6);
      v25 = sub_A42D4();
      a3[3] = &type metadata for String;
      *a3 = v25;
      a3[1] = v26;
      (*(v7 + 8))(v11, v6);
    }
  }

  return sub_761C(v33);
}

void *sub_B22C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_4BF0(&qword_DB5D8, &qword_A6810);
    v1 = sub_A4CC4();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_B5A4(v2, 1, &v4);

  return v4;
}

_OWORD *sub_B2E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_B2F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_4BF0(&qword_DB5D8, &qword_A6810);
  v36 = a2;
  result = sub_A4CB4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_92BFC(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_B2E0(v23, v37);
    }

    else
    {
      sub_B924(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_A4F14();
    sub_A46A4();
    result = sub_A4F44();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_B2E0(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_B5A4(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_A4EA4();
      __break(1u);
      goto LABEL_22;
    }

    sub_B8BC(i, &v31, &qword_DB5E0, &qword_A6818);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_B2E0(&v33, v28);
    v9 = *a3;
    v11 = sub_A0D78(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_4BF0(&qword_DB5E8, &qword_A6820);
      sub_A4C64();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_B2E0(v28, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {
    }
  }

  sub_B2F0(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_A0D78(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  swift_errorRetain();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_761C(v28);
  }

LABEL_22:
  sub_A4B54(30);
  v35._object = 0x80000000000ADCB0;
  v35._countAndFlagsBits = 0xD00000000000001BLL;
  sub_A46D4(v35);
  sub_A4C44();
  v36._countAndFlagsBits = 39;
  v36._object = 0xE100000000000000;
  sub_A46D4(v36);
  result = sub_A4C74();
  __break(1u);
  return result;
}

uint64_t sub_B8BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4BF0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_B9A4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_title;
  v8 = sub_A42E4();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date) = a2;
  *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_isAllDay) = a3;
  return v3;
}

double sub_BA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_79F8() & 1) != 0)
  {
    v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_title;
    v9 = sub_A42E4();
    *(a3 + 24) = v9;
    v10 = sub_76B0(a3);
    v11 = *(*(v9 - 8) + 16);

    v11(v10, v3 + v8, v9);
    return result;
  }

  v13 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (!v13 && (sub_79F8() & 1) == 0)
  {
    v15 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
    if (v15 || (sub_79F8() & 1) != 0)
    {
      v16 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_isAllDay);
      *(a3 + 24) = &type metadata for Bool;
      *a3 = v16;
      return result;
    }

    goto LABEL_24;
  }

  v14 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date);
  if (!v14)
  {
LABEL_24:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_A41E4();
  *a3 = v14;

  return result;
}

uint64_t sub_BBC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEBE8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BC1C(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 1702125924;
  }

  return 0x7961446C6C417369;
}

uint64_t sub_BC8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BBC8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_BCBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BC1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_BCF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BD24(uint64_t a1)
{
  v2 = sub_C640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BD60(uint64_t a1)
{
  v2 = sub_C640();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_BD9C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_title;
  v2 = sub_A42E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date);

  return v0;
}

uint64_t sub_BE14()
{
  sub_BD9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DBReminder()
{
  result = qword_DB630;
  if (!qword_DB630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BEC0()
{
  result = sub_A42E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_BF68(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DB738, &qword_A6990);
  v6 = sub_591C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_7584(a1, a1[3]);
  sub_C640();
  sub_A4F64();
  v22 = 0;
  sub_A42E4();
  sub_C978();
  sub_C694(v14, v15);
  sub_C9B8();
  sub_A4DF4();
  if (!v2)
  {
    v21 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date);
    v20[15] = 1;
    sub_A41E4();
    sub_C990();
    sub_C694(v16, v17);
    sub_C9B8();
    sub_A4DA4();
    v18 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_isAllDay);
    v20[14] = 2;
    sub_A4DC4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_C160(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_C1B0(a1);
  return v5;
}

id *sub_C1B0(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_A42E4();
  v6 = sub_591C(v5);
  v28 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_4BF0(&qword_DB720, &qword_A6988);
  v12 = sub_591C(v29);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v3[2] = 0;
  v16 = a1[3];
  v15 = a1[4];
  v30 = a1;
  sub_7584(a1, v16);
  sub_C640();
  sub_A4F54();
  if (v2)
  {

    type metadata accessor for DBReminder();
    v20 = *(*v3 + 12);
    v21 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v28;
    v34 = 0;
    sub_C978();
    sub_C694(v18, v19);
    sub_A4D74();
    (*(v17 + 32))(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_title, v11, v5);
    sub_A41E4();
    v33 = 1;
    sub_C990();
    sub_C694(v23, v24);
    sub_A4D24();
    *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date) = v31;
    v32 = 2;
    v25 = sub_A4D44();
    v26 = sub_C9A8();
    v27(v26);
    *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_isAllDay) = v25 & 1;
  }

  sub_761C(v30);
  return v3;
}

uint64_t sub_C560@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_C160(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_C640()
{
  result = qword_DB728;
  if (!qword_DB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB728);
  }

  return result;
}

uint64_t sub_C694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DBReminder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DBReminder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xC830);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_C86C()
{
  result = qword_DB748;
  if (!qword_DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB748);
  }

  return result;
}

unint64_t sub_C8C4()
{
  result = qword_DB750;
  if (!qword_DB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB750);
  }

  return result;
}

unint64_t sub_C91C()
{
  result = qword_DB758;
  if (!qword_DB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB758);
  }

  return result;
}

uint64_t sub_C9A8()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

BOOL sub_C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_D048(a1, a2, a3);
  v8 = sub_591C(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_CFD8();
  v11 = sub_4BF0(&qword_DB760, qword_A6AE8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  v15 = sub_4BF0(&qword_DB768, &unk_A9650);
  v16 = sub_591C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_CFBC();
  __chkstk_darwin(v21);
  sub_CFF0();
  if (sub_CF2C(v14, 1, v15) == 1)
  {
    sub_CF54(v14);
  }

  else
  {
    v22 = objc_opt_self();
    v23 = [v22 fahrenheit];
    sub_D028();

    v24 = *(v18 + 8);
    v24(v14, v15);
    sub_A2B54();
    v26 = v25;
    v24(v5, v15);
    v27 = sub_D014();
    v28(v27);
    v29 = sub_67C20(v3);
    v30 = [v22 fahrenheit];
    sub_D068();

    sub_A2B54();
    v32 = v31;
    v24(v4, v15);
    if (v29 <= 1)
    {
      return v26 - v32 > 1.0;
    }
  }

  return 0;
}

BOOL sub_CC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_D048(a1, a2, a3);
  v8 = sub_591C(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_CFD8();
  v11 = sub_4BF0(&qword_DB760, qword_A6AE8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  v15 = sub_4BF0(&qword_DB768, &unk_A9650);
  v16 = sub_591C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_CFBC();
  __chkstk_darwin(v21);
  sub_CFF0();
  if (sub_CF2C(v14, 1, v15) == 1)
  {
    sub_CF54(v14);
  }

  else
  {
    v22 = objc_opt_self();
    v23 = [v22 fahrenheit];
    sub_D028();

    v24 = *(v18 + 8);
    v24(v14, v15);
    sub_A2B54();
    v26 = v25;
    v24(v5, v15);
    v27 = sub_D014();
    v28(v27);
    v29 = sub_67C20(v3);
    v30 = [v22 fahrenheit];
    sub_D068();

    sub_A2B54();
    v32 = v31;
    v24(v4, v15);
    if (v29 == 1)
    {
      return v32 - v26 > 1.0;
    }
  }

  return 0;
}

uint64_t sub_CEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DB760, qword_A6AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CF54(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DB760, qword_A6AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CFF0()
{

  return sub_CEBC(v1, v0);
}

uint64_t sub_D014()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t sub_D028()
{
  *(v1 - 112) = v0;

  return sub_A2B64();
}

uint64_t sub_D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 104) = a3;

  return sub_A2EA4();
}

uint64_t sub_D068()
{
  v2 = *(v0 - 112);

  return sub_A2B64();
}

id sub_D0F4()
{
  v1 = v0;
  v2 = sub_A43D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_logger, v2);
  sub_810AC(0xD00000000000001CLL, 0x80000000000ADE50, 0xD000000000000033, 0x80000000000ADE70, 0x74696E696564, 0xE600000000000000);
  (*(v3 + 8))(v6, v2);
  v7 = type metadata accessor for DailyBriefingMapsSink();
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for DailyBriefingMapsSink()
{
  result = qword_DB800;
  if (!qword_DB800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_D3C0()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_logger;
  if (qword_DA9F8 != -1)
  {
    swift_once();
  }

  v2 = sub_A43D4();
  v3 = sub_48A4(v2, qword_E0C18);
  (*(*(v2 - 8) + 16))(&v0[v1], v3, v2);
  *&v0[OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_entries] = 0;
  *&v0[OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_topSuggestion] = 0;
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_networkRequester;
  *&v0[v4] = [objc_allocWithZone(MapsSuggestionsRealNetworkRequester) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DailyBriefingMapsSink();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_D4E8()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_D58C()
{
  if (sub_A3504())
  {
    return 0x646F50656D6F48;
  }

  sub_D6D4();
  if (sub_A3464())
  {
    return 0x6B63696B65646953;
  }

  sub_D6D4();
  if (sub_A34C4())
  {
    return 0x656E6F6850;
  }

  sub_D6D4();
  if (sub_A34F4())
  {
    return 0x79616C50726143;
  }

  sub_D6D4();
  if (sub_A34E4())
  {
    return 0x5654656C707041;
  }

  sub_D6D4();
  if (sub_A34B4())
  {
    return 1684099177;
  }

  sub_D6D4();
  if (sub_A34D4())
  {
    return 0x6863746157;
  }

  sub_D6D4();
  if (sub_A34A4())
  {
    return 6512973;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_D6E0(char a1)
{
  v2 = sub_A3834();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_A3824();
  switch(a1)
  {
    case 3:
      sub_A3804();

      sub_A3804();

      goto LABEL_5;
    case 4:
      v5 = 0;
      goto LABEL_7;
    case 5:
      v5 = 1;
LABEL_7:
      sub_4DD48(v5);
      sub_D98C();
      sub_4DD48(0xC1u);
      break;
    default:
      sub_A3804();
      sub_D98C();
LABEL_5:
      sub_A3804();
      break;
  }

  v6 = sub_A3814();

  return v6;
}

uint64_t sub_D98C()
{
}

unint64_t sub_D9A4(uint64_t a1, void *a2)
{
  v2 = 0xD000000000000026;
  if (a2)
  {
    sub_A4B54(41);

    sub_10944();
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    sub_A46D4(v6);
    return 0xD000000000000027;
  }

  return v2;
}

uint64_t sub_DA48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 61) = a3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v6);
  v8 = *(v7 + 64);
  *(v5 + 96) = sub_10AAC();
  v9 = sub_AA8C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_DAD8()
{
  v1 = *(v0 + 64);
  v2 = *v1;
  *(v0 + 104) = *v1;
  if (v2)
  {
    v3 = *(v1 + 10);
    v4 = v3 | (*(v1 + 44) << 32);
    v5 = v1[4];
    v6 = v1[1];
    v7 = *(v1 + 1);
    *(v0 + 16) = v2;
    *(v0 + 24) = v6;
    *(v0 + 32) = v7;
    *(v0 + 48) = v5;
    *(v0 + 56) = v3 & 1;
    v8.i64[0] = 0xFFFFFFFFFFLL;
    v8.i64[1] = 0xFFFFFFFFFFLL;
    v9 = vandq_s8(vdupq_n_s64(v4), v8);
    *v9.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v9, xmmword_A6B70), vshlq_u64(v9, xmmword_A6B60))), 0x1000100010001);
    *(v0 + 57) = vuzp1_s8(*v9.i8, *v9.i8).u32[0];
    if (v3)
    {
      v10 = *(v0 + 96);
      sub_A3744();
      v11 = sub_1092C();
      sub_A924(v11, v12, 1, v13);
      v14 = swift_task_alloc();
      *(v0 + 120) = v14;
      *v14 = v0;
      v14[1] = sub_DE50;
      v16 = *(v0 + 88);
      v15 = *(v0 + 96);
      v17 = *(v0 + 61);
      v19 = *(v0 + 64);
      v18 = *(v0 + 72);

      return sub_DFAC(v19, v0 + 16, v18, v17, v15);
    }

    else
    {
      v26 = *(type metadata accessor for CalendarPreprocessingResult(0) + 20);
      v27 = swift_task_alloc();
      *(v0 + 112) = v27;
      *v27 = v0;
      v27[1] = sub_DD14;
      v28 = *(v0 + 80);
      v29 = *(v0 + 88);
      v30 = *(v0 + 61);
      v31 = *(v0 + 72);

      return sub_F3B4(v0 + 16, v1 + v26, v31, v30, v28);
    }
  }

  else
  {
    sub_10808();
    v21 = swift_allocError();
    *v22 = 0;
    v22[1] = 0;
    v23 = *(v0 + 96);
    v24 = *(v0 + 104) == 0;

    v25 = *(v0 + 8);

    return v25(v21, (v24 << 8));
  }
}

uint64_t sub_DD14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  sub_5930();
  *v6 = v5;

  v7 = *(v3 + 96);
  v8 = *(v3 + 104) == 0;

  v9 = *(v5 + 8);

  return v9(a1, (v8 << 8) | 1u);
}

uint64_t sub_DE50(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  v6 = v3[15];
  v7 = v3[12];
  v8 = *v1;
  *v5 = *v1;

  sub_1085C(v7, &qword_DB5A8, &unk_A67C0);
  v9 = v4[12];
  v10 = v3[13] == 0;

  v11 = v8[1];

  return v11(a1, (v10 << 8) | 1u);
}

uint64_t sub_DFAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 372) = a4;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  *(v6 + 120) = *a3;
  *(v6 + 368) = *(a3 + 24);
  v7 = sub_4BF0(&qword_DB958, qword_A6CE0);
  sub_10A88(v7);
  v9 = *(v8 + 64);
  *(v6 + 128) = sub_10AC4();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  v10 = sub_A2EA4();
  *(v6 + 168) = v10;
  sub_5940(v10);
  *(v6 + 176) = v11;
  v13 = *(v12 + 64);
  *(v6 + 184) = sub_10AAC();
  v14 = sub_A2BB4();
  *(v6 + 192) = v14;
  sub_5940(v14);
  *(v6 + 200) = v15;
  v17 = *(v16 + 64);
  *(v6 + 208) = sub_10AAC();
  v18 = type metadata accessor for CalendarEvent(0);
  *(v6 + 216) = v18;
  sub_5940(v18);
  *(v6 + 224) = v19;
  v21 = *(v20 + 64);
  *(v6 + 232) = sub_10AAC();
  v22 = sub_A42E4();
  *(v6 + 240) = v22;
  sub_5940(v22);
  *(v6 + 248) = v23;
  v25 = *(v24 + 64);
  *(v6 + 256) = sub_10AC4();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v26 = sub_4BF0(&qword_DB960, &unk_A6C00);
  sub_10A88(v26);
  v28 = *(v27 + 64);
  *(v6 + 288) = sub_10AC4();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  v29 = sub_AA8C();

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_E254()
{
  v1 = v0[11];
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v2 = swift_allocObject();
  v0[44] = v2;
  v3 = sub_10980(v2, xmmword_A6B80);
  *(v4 + 48) = v3;
  sub_10944();
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000012;
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v1 + 16);
  sub_10944();
  *(v8 + 120) = v9;
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v1 + 42);
  sub_10944();
  *(v11 + 168) = v12;
  *(v11 + 176) = 0xD000000000000010;
  *(v11 + 184) = v13;
  *(v11 + 192) = *(v1 + 44);
  sub_10944();
  *(v14 + 216) = v15;
  *(v14 + 224) = 0xD000000000000010;
  *(v14 + 232) = v16;
  *(v14 + 240) = *(v1 + 43);
  sub_109B4();
  v17[33] = v19;
  v17[34] = v18 & 0xFFFFFFFFFFFFLL | 0x7469000000000000;
  v17[35] = 0xEB0000000073656CLL;
  v20 = *v1;
  v21 = *(*v1 + 16);
  v248 = v17;
  if (v21)
  {
    v22 = v0[31];
    v23 = v0[28];
    v259 = v0[29];
    v24 = v0[25];
    sub_7AC1C(0, v21, 0);
    sub_10950();
    v26 = v20 + v25;
    sub_10A70();
    v249 = v20;
    v252 = v27;
    do
    {
      v262 = v0[35];
      v28 = v0[29];
      v29 = v0[26];
      v30 = v0[24];
      sub_106FC(v26, v28);
      v31 = *(v259 + 8);
      v0[2] = *v28;
      v0[3] = v31;

      sub_A2B84();
      sub_10760();
      v32 = sub_A4A54();
      v40 = sub_10A60(v32, v33, v34, v35, v36, v37, v38, v39, v236, v238, v241, v244, v246, v248, v249, v252, v255);
      v41(v40, v30);

      sub_10A94();
      sub_108C4();
      sub_107B4(v28, v42);
      v44 = _swiftEmptyArrayStorage[2];
      v43 = _swiftEmptyArrayStorage[3];
      if (v44 >= v43 >> 1)
      {
        v50 = sub_10A50(v43);
        sub_7AC1C(v50, v44 + 1, 1);
      }

      v45 = v0[35];
      v46 = v0[30];
      _swiftEmptyArrayStorage[2] = v44 + 1;
      sub_10970();
      v48 = sub_10960(_swiftEmptyArrayStorage + v47);
      v49(v48);
      v26 += v257;
      --v21;
    }

    while (v21);
    v51 = v248;
  }

  else
  {
    v51 = v17;
  }

  v52 = v0;
  v53 = v0[43];
  v54 = v0[27];
  v55 = sub_4BF0(&qword_DB970, &unk_A6C10);
  *(v51 + 288) = _swiftEmptyArrayStorage;
  sub_109B4();
  *(v51 + 312) = v57;
  *(v51 + 320) = v56 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
  *(v51 + 328) = 0xE900000000000065;
  sub_10B64();
  v58 = sub_1092C();
  LODWORD(v54) = sub_CF2C(v58, v59, v54);
  sub_1085C(v53, &qword_DB960, &unk_A6C00);
  if (v54 == 1)
  {
    *(v51 + 336) = 0u;
    *(v51 + 352) = 0u;
  }

  else
  {
    v60 = v0[42];
    v61 = v0[27];
    sub_10B64();
    result = sub_108F4();
    if (v190)
    {
      __break(1u);
      goto LABEL_56;
    }

    v63 = v0[42];
    v64 = v0[27];
    v66 = *(v52 + 176);
    v65 = *(v52 + 184);
    v67 = *(v52 + 168);
    v68 = sub_A41E4();
    (*(v66 + 16))(v65, v63 + *(v64 + 20), v67);
    sub_108C4();
    sub_107B4(v63, v69);
    v70 = sub_8CD18();
    (*(v66 + 8))(v65, v67);
    *(v51 + 360) = v68;
    *(v51 + 336) = v70;
  }

  v71 = *(v52 + 96);
  sub_109D8();
  *(v51 + 368) = v73;
  *(v51 + 376) = v74;
  if (*(v75 + 16))
  {
    v76 = *(v52 + 120);
    *(v51 + 384) = *(v52 + 368);
    *(v51 + 408) = &type metadata for Double;
    *(v51 + 416) = v72;
    *(v51 + 424) = 0xE300000000000000;
    v77 = v52;
    v78 = sub_A4234();
    v79 = sub_8CD90();
  }

  else
  {
    v79 = 0;
    v77 = v52;
    v78 = 0;
    *(v51 + 384) = 0u;
    *(v51 + 400) = 0u;
    *(v51 + 416) = v72;
    *(v51 + 424) = 0xE300000000000000;
    *(v51 + 440) = 0;
    *(v51 + 448) = 0;
  }

  v80 = *(v77 + 372);
  v81 = *(v77 + 88);
  *(v51 + 432) = v79;
  sub_10B1C();
  *(v51 + 456) = v78;
  *(v51 + 464) = v82;
  sub_10B08();
  *(v51 + 472) = v83;
  *(v51 + 480) = v84;
  *(v51 + 504) = &type metadata for Bool;
  *(v51 + 512) = 0x6E696E6576457369;
  *(v51 + 520) = 0xE900000000000067;
  v86 = *(v85 + 41);
  *(v51 + 552) = &type metadata for Bool;
  *(v51 + 528) = v86;
  sub_10944();
  sub_10AE8();
  *(v51 + 560) = v52 + 2;
  *(v51 + 568) = v87;
  v89 = *(v88 + 32);
  *(v51 + 600) = &type metadata for Double;
  *(v51 + 576) = v89;
  sub_10944();
  *(v51 + 608) = v52 + 3;
  *(v51 + 616) = v90;
  v92 = *(v91 + 8);
  v93 = *(v92 + 16);
  v245 = v55;
  v250 = v92;
  if (v93)
  {
    v94 = *(v77 + 248);
    v95 = *(v77 + 224);
    v260 = *(v77 + 232);
    v96 = *(v77 + 200);
    sub_7AC1C(0, v93, 0);
    sub_10950();
    v98 = v92 + v97;
    sub_10A70();
    v253 = v99;
    v100 = v77;
    do
    {
      v263 = v100[34];
      v101 = v100[29];
      v102 = v100[26];
      v103 = v100[24];
      sub_106FC(v98, v101);
      v104 = *(v260 + 8);
      v100[4] = *v101;
      v100[5] = v104;

      sub_A2B84();
      sub_10760();
      v105 = sub_A4A54();
      v52 = v106;
      v113 = sub_10A60(v105, v106, v107, v108, v109, v110, v111, v112, v236, v238, v241, v245, v246, v248, v250, v253, v255);
      v114(v113, v103);

      sub_10A14();
      sub_108C4();
      sub_107B4(v101, v115);
      v117 = _swiftEmptyArrayStorage[2];
      v116 = _swiftEmptyArrayStorage[3];
      if (v117 >= v116 >> 1)
      {
        v123 = sub_10A50(v116);
        sub_7AC1C(v123, v117 + 1, 1);
      }

      v118 = v100[34];
      v119 = v100[30];
      _swiftEmptyArrayStorage[2] = v117 + 1;
      sub_10970();
      v121 = sub_10960(_swiftEmptyArrayStorage + v120);
      v122(v121);
      v98 += v257;
      --v93;
    }

    while (v93);
    v51 = v248;
    sub_10AE8();
    v55 = v245;
  }

  else
  {
    v100 = v77;
  }

  v124 = v100[41];
  v125 = v100[27];
  *(v51 + 648) = v55;
  *(v51 + 624) = _swiftEmptyArrayStorage;
  sub_10944();
  *(v51 + 656) = v52 + 1;
  *(v51 + 664) = v126;
  sub_589D0(v250, v124);
  v127 = sub_1092C();
  LODWORD(v125) = sub_CF2C(v127, v128, v125);
  sub_1085C(v124, &qword_DB960, &unk_A6C00);
  if (v125 == 1)
  {
    *(v51 + 672) = 0u;
    *(v51 + 688) = 0u;
    goto LABEL_26;
  }

  v129 = v100[27];
  sub_589D0(v250, v100[40]);
  result = sub_108F4();
  if (v190)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v130 = v100[40];
  v131 = sub_10B44();
  v132 = *(v250 + 20);
  v133 = sub_10918();
  v134(v133);
  sub_108C4();
  sub_107B4(v130, v135);
  sub_8CD18();
  v136 = sub_109C4();
  v137(v136);
  *(v51 + 696) = v131;
  *(v51 + 672) = v131;
LABEL_26:
  v138 = v100[20];
  v139 = v100[10];
  sub_10944();
  *(v51 + 704) = v52 + 12;
  *(v51 + 712) = v140;
  v247 = *(type metadata accessor for CalendarPreprocessingResult(0) + 20);
  sub_B8BC(v139 + v247, v138, &qword_DB958, qword_A6CE0);
  v141 = type metadata accessor for ImportantEventInfo(0);
  v142 = sub_1092C();
  v144 = sub_CF2C(v142, v143, v141);
  v251 = v100;
  v145 = v100[20];
  if (v144 == 1)
  {
    sub_1085C(v100[20], &qword_DB958, qword_A6CE0);
    *(v51 + 720) = 0u;
    *(v51 + 736) = 0u;
  }

  else
  {
    v146 = *v145;

    sub_108DC();
    sub_107B4(v145, v147);
    v148 = *(v146 + 16);
    if (v148)
    {
      v239 = v141;
      v242 = v139;
      v149 = v100[31];
      v150 = v100[28];
      v261 = v100[29];
      v151 = v100[25];
      sub_7AC1C(0, v148, 0);
      sub_10950();
      v237 = v146;
      v52 = v146 + v152;
      v256 = (v151 + 8);
      v258 = *(v150 + 72);
      v254 = v149 + 32;
      do
      {
        v264 = v100[33];
        v153 = v100[29];
        v154 = v100[26];
        v155 = v100[24];
        sub_106FC(v52, v153);
        v156 = *(v261 + 8);
        v100[8] = *v153;
        v100[9] = v156;

        sub_A2B84();
        sub_10760();
        v157 = sub_A4A54();
        v165 = sub_10A60(v157, v158, v159, v160, v161, v162, v163, v164, v237, v239, v242, v245, v247, v248, v251, v254, v256);
        v166(v165, v155);

        sub_10A94();
        sub_108C4();
        sub_107B4(v153, v167);
        sub_10AF4();
        if (v169)
        {
          v175 = sub_10A50(v168);
          sub_7AC1C(v175, v154, 1);
        }

        v170 = v100[33];
        v171 = v100[30];
        _swiftEmptyArrayStorage[2] = v154;
        sub_10970();
        v173 = sub_10960(_swiftEmptyArrayStorage + v172);
        v174(v173);
        v52 += v258;
        --v148;
      }

      while (v148);

      v51 = v248;
      sub_10AE8();
      v139 = v242;
      v55 = v245;
      v141 = v239;
    }

    else
    {
    }

    *(v51 + 744) = v55;
    *(v51 + 720) = _swiftEmptyArrayStorage;
  }

  v176 = v247;
  v177 = v100[19];
  sub_10944();
  *(v51 + 752) = v52 + 9;
  *(v51 + 760) = v178;
  sub_B8BC(v139 + v247, v177, &qword_DB958, qword_A6CE0);
  v179 = sub_1092C();
  v181 = sub_CF2C(v179, v180, v141);
  v182 = v100[39];
  v183 = v100[27];
  v184 = v100[19];
  if (v181 == 1)
  {
    sub_1085C(v100[19], &qword_DB958, qword_A6CE0);
    sub_10A34(v182);
LABEL_40:
    v186 = v251;
    sub_1085C(v251[39], &qword_DB960, &unk_A6C00);
    *(v51 + 768) = 0u;
    *(v51 + 784) = 0u;
    goto LABEL_44;
  }

  sub_B8BC(v184 + *(v141 + 20), v100[39], &qword_DB960, &unk_A6C00);
  sub_108DC();
  sub_107B4(v184, v185);
  sub_109FC(v182, 1, v183);
  if (v190)
  {
    goto LABEL_40;
  }

  v186 = v251;
  v187 = v251[18];
  sub_1085C(v251[39], &qword_DB960, &unk_A6C00);
  sub_B8BC(v139 + v247, v187, &qword_DB958, qword_A6CE0);
  v188 = sub_1092C();
  result = sub_109FC(v188, v189, v141);
  if (v190)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v240 = v141;
  v243 = v139;
  v191 = v251[38];
  v192 = v251[27];
  v193 = v251[18];
  sub_10B7C(&qword_DB960, &unk_A6C00, *(v141 + 20));
  sub_108DC();
  sub_107B4(v193, v194);
  result = sub_108F4();
  if (v190)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v195 = v251[38];
  v197 = v251[31];
  v196 = v251[32];
  v198 = v251[30];
  v200 = v251[25];
  v199 = v251[26];
  v201 = v251[24];
  v52 = *v195;
  v202 = v195[1];

  sub_108C4();
  sub_107B4(v195, v203);
  v251[6] = v52;
  v251[7] = v202;
  sub_A2B84();
  sub_10760();
  sub_A4A54();
  v204 = sub_10B30();
  v205(v204, v201);

  sub_10A14();
  v51 = v248;
  *(v248 + 792) = v198;
  v206 = sub_76B0((v248 + 768));
  (*(v197 + 32))(v206, v196, v198);
  sub_10AE8();
  v141 = v240;
  v139 = v243;
  v176 = v247;
LABEL_44:
  v207 = v186[17];
  sub_10944();
  *(v51 + 800) = v52 + 8;
  *(v51 + 808) = v208;
  sub_B8BC(v139 + v176, v207, &qword_DB958, qword_A6CE0);
  v209 = sub_1092C();
  v211 = sub_CF2C(v209, v210, v141);
  v212 = v186[37];
  v213 = v186[27];
  v214 = v186[17];
  if (v211 != 1)
  {
    sub_B8BC(v214 + *(v141 + 20), v186[37], &qword_DB960, &unk_A6C00);
    sub_108DC();
    sub_107B4(v214, v215);
    sub_109FC(v212, 1, v213);
    if (v190)
    {
      goto LABEL_48;
    }

    v217 = v251[16];
    sub_1085C(v251[37], &qword_DB960, &unk_A6C00);
    sub_B8BC(v139 + v176, v217, &qword_DB958, qword_A6CE0);
    v218 = sub_1092C();
    result = sub_109FC(v218, v219, v141);
    if (!v220)
    {
      v221 = v251[36];
      v222 = v251[27];
      v223 = v251[16];
      sub_10B7C(&qword_DB960, &unk_A6C00, *(v141 + 20));
      sub_108DC();
      sub_107B4(v223, v224);
      result = sub_108F4();
      if (!v190)
      {
        v225 = v251[36];
        v226 = sub_10B44();
        v227 = *(v176 + 20);
        v228 = sub_10918();
        v229(v228);
        sub_108C4();
        sub_107B4(v225, v230);
        sub_8CD18();
        v231 = sub_109C4();
        v232(v231);
        *(v51 + 840) = v226;
        *(v51 + 816) = v226;
        v216 = v251;
        goto LABEL_52;
      }

LABEL_60:
      __break(1u);
      return result;
    }

    goto LABEL_58;
  }

  sub_1085C(v186[17], &qword_DB958, qword_A6CE0);
  sub_10A34(v212);
LABEL_48:
  v216 = v251;
  sub_1085C(v251[37], &qword_DB960, &unk_A6C00);
  *(v51 + 816) = 0u;
  *(v51 + 832) = 0u;
LABEL_52:
  v233 = *(v216[14] + 16);
  v234 = swift_task_alloc();
  v216[45] = v234;
  *v234 = v216;
  v234[1] = sub_F050;
  v235 = v216[13];

  return sub_6E228(2, v51, v235, v233);
}

uint64_t sub_F050(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 344);
  v5 = *(*v1 + 336);
  v6 = *(*v1 + 328);
  v7 = *(*v1 + 320);
  v8 = *(*v1 + 312);
  v9 = *(*v1 + 304);
  v10 = *(*v1 + 296);
  v11 = *(*v1 + 288);
  v27 = *(*v1 + 280);
  sub_10938();
  v28 = *(v12 + 272);
  sub_10938();
  v29 = *(v13 + 264);
  sub_10938();
  v30 = *(v14 + 256);
  sub_10938();
  v31 = *(v15 + 232);
  sub_10938();
  v32 = *(v16 + 208);
  sub_10938();
  v33 = *(v17 + 184);
  sub_10938();
  v34 = *(v18 + 160);
  sub_10938();
  v35 = *(v19 + 152);
  sub_10938();
  v36 = *(v20 + 144);
  sub_10938();
  v37 = *(v21 + 136);
  sub_10938();
  v38 = *(v22 + 128);
  v23 = *v1;
  sub_5930();
  *v24 = v23;

  v25 = *(v23 + 8);

  return v25(a1);
}

uint64_t sub_F3B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 332) = a4;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  *(v6 + 104) = *a3;
  *(v6 + 328) = *(a3 + 24);
  v7 = sub_4BF0(&qword_DB958, qword_A6CE0);
  sub_10A88(v7);
  v9 = *(v8 + 64);
  *(v6 + 112) = sub_10AC4();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v10 = sub_A2EA4();
  *(v6 + 152) = v10;
  sub_5940(v10);
  *(v6 + 160) = v11;
  v13 = *(v12 + 64);
  *(v6 + 168) = sub_10AAC();
  v14 = sub_A2BB4();
  *(v6 + 176) = v14;
  sub_5940(v14);
  *(v6 + 184) = v15;
  v17 = *(v16 + 64);
  *(v6 + 192) = sub_10AAC();
  v18 = type metadata accessor for CalendarEvent(0);
  *(v6 + 200) = v18;
  sub_5940(v18);
  *(v6 + 208) = v19;
  v21 = *(v20 + 64);
  *(v6 + 216) = sub_10AAC();
  v22 = sub_A42E4();
  *(v6 + 224) = v22;
  sub_5940(v22);
  *(v6 + 232) = v23;
  v25 = *(v24 + 64);
  *(v6 + 240) = sub_10AC4();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v26 = sub_4BF0(&qword_DB960, &unk_A6C00);
  sub_10A88(v26);
  v28 = *(v27 + 64);
  *(v6 + 264) = sub_10AC4();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v29 = sub_AA8C();

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_F638()
{
  sub_10ADC();
  v2 = *(v0 + 64);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v3 = swift_allocObject();
  *(v0 + 312) = v3;
  v4 = sub_10980(v3, xmmword_A6B90);
  *(v5 + 48) = v4;
  sub_10944();
  *(v6 + 72) = v7;
  *(v6 + 80) = v1 | 2;
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v2 + 32);
  sub_10944();
  *(v9 + 120) = v10;
  *(v9 + 128) = v1 | 1;
  *(v9 + 136) = v11;
  *(v9 + 144) = *(v2 + 42);
  sub_10944();
  *(v12 + 168) = v13;
  *(v12 + 176) = v1;
  *(v12 + 184) = v14;
  *(v12 + 192) = *(v2 + 44);
  sub_109B4();
  v15[27] = v17;
  v15[28] = v16 & 0xFFFFFFFFFFFFLL | 0x7469000000000000;
  v15[29] = 0xEB0000000073656CLL;
  v18 = *(v2 + 8);
  v19 = *(v18 + 16);
  v167 = v15;
  if (v19)
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 208);
    v172 = *(v0 + 216);
    v22 = *(v0 + 184);
    sub_7AC1C(0, v19, 0);
    sub_10950();
    v24 = v18 + v23;
    v168 = (v22 + 8);
    v170 = *(v21 + 72);
    do
    {
      v174 = *(v0 + 256);
      v1 = *(v0 + 216);
      v25 = *(v0 + 192);
      v26 = *(v0 + 176);
      sub_106FC(v24, v1);
      v27 = *(v172 + 8);
      *(v0 + 16) = *v1;
      *(v0 + 24) = v27;

      sub_A2B84();
      sub_10760();
      sub_A4A54();
      (*v168)(v25, v26);

      sub_10A94();
      sub_108C4();
      sub_107B4(v1, v28);
      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_7AC1C(v29 > 1, v30 + 1, 1);
      }

      v31 = *(v0 + 256);
      v32 = *(v0 + 224);
      _swiftEmptyArrayStorage[2] = v30 + 1;
      sub_10970();
      v34 = sub_10960(_swiftEmptyArrayStorage + v33);
      v35(v34);
      v24 += v170;
      --v19;
    }

    while (v19);
    v36 = v167;
    sub_10ADC();
  }

  else
  {
    v36 = v15;
  }

  v37 = *(v0 + 304);
  v38 = *(v0 + 200);
  v39 = sub_4BF0(&qword_DB970, &unk_A6C10);
  *(v36 + 240) = _swiftEmptyArrayStorage;
  sub_109B4();
  *(v36 + 264) = v41;
  *(v36 + 272) = v40 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
  *(v36 + 280) = 0xE900000000000065;
  sub_10B64();
  v42 = sub_1092C();
  LODWORD(v38) = sub_CF2C(v42, v43, v38);
  sub_1085C(v37, &qword_DB960, &unk_A6C00);
  if (v38 == 1)
  {
    *(v36 + 288) = 0u;
    *(v36 + 304) = 0u;
  }

  else
  {
    v44 = *(v0 + 296);
    v45 = *(v0 + 200);
    sub_10B64();
    result = sub_108F4();
    if (v112)
    {
      __break(1u);
      goto LABEL_45;
    }

    v47 = *(v0 + 296);
    v48 = *(v0 + 200);
    v50 = *(v0 + 160);
    v49 = *(v0 + 168);
    v51 = *(v0 + 152);
    v52 = sub_A41E4();
    v53 = *(v48 + 20);
    v54 = sub_10918();
    v55(v54);
    sub_108C4();
    sub_107B4(v47, v56);
    v57 = sub_8CD18();
    (*(v50 + 8))(v49, v51);
    *(v36 + 312) = v52;
    *(v36 + 288) = v57;
  }

  v58 = *(v0 + 80);
  sub_109D8();
  *(v36 + 320) = v60;
  *(v36 + 328) = v61;
  v166 = v39;
  if (*(v62 + 16))
  {
    v63 = *(v0 + 104);
    *(v36 + 336) = *(v0 + 328);
    *(v36 + 360) = &type metadata for Double;
    *(v36 + 368) = v59;
    *(v36 + 376) = 0xE300000000000000;
    v64 = sub_A4234();
    v65 = sub_8CD90();
  }

  else
  {
    v65 = 0;
    v64 = 0;
    *(v36 + 336) = 0u;
    *(v36 + 352) = 0u;
    *(v36 + 368) = v59;
    *(v36 + 376) = 0xE300000000000000;
    *(v36 + 392) = 0;
    *(v36 + 400) = 0;
  }

  v66 = *(v0 + 144);
  v67 = *(v0 + 332);
  v68 = *(v0 + 72);
  *(v36 + 384) = v65;
  sub_10B1C();
  *(v36 + 408) = v64;
  *(v36 + 416) = v69;
  sub_10B08();
  *(v36 + 424) = v70;
  *(v36 + 432) = v71;
  *(v36 + 456) = &type metadata for Bool;
  *(v36 + 464) = v1 + 12;
  *(v36 + 472) = 0x80000000000AE020;
  sub_B8BC(v72, v66, &qword_DB958, qword_A6CE0);
  v73 = type metadata accessor for ImportantEventInfo(0);
  v74 = sub_CF2C(v66, 1, v73);
  v75 = *(v0 + 144);
  if (v74 == 1)
  {
    sub_1085C(*(v0 + 144), &qword_DB958, qword_A6CE0);
    *(v36 + 480) = 0u;
    *(v36 + 496) = 0u;
  }

  else
  {
    v76 = *v75;

    sub_108DC();
    sub_107B4(v75, v77);
    v78 = *(v76 + 16);
    if (v78)
    {
      v164 = v73;
      v79 = *(v0 + 232);
      v80 = *(v0 + 208);
      v173 = *(v0 + 216);
      v81 = *(v0 + 184);
      sub_7AC1C(0, v78, 0);
      sub_10950();
      v83 = v76 + v82;
      v169 = (v81 + 8);
      v171 = *(v80 + 72);
      do
      {
        v175 = *(v0 + 248);
        v84 = *(v0 + 216);
        v85 = *(v0 + 192);
        v86 = *(v0 + 176);
        sub_106FC(v83, v84);
        v87 = *(v173 + 8);
        *(v0 + 48) = *v84;
        *(v0 + 56) = v87;

        sub_A2B84();
        sub_10760();
        sub_A4A54();
        v1 = v88;
        (*v169)(v85, v86);

        sub_10A94();
        sub_108C4();
        sub_107B4(v84, v89);
        sub_10AF4();
        if (v91)
        {
          sub_7AC1C(v90 > 1, v84, 1);
        }

        v92 = *(v0 + 248);
        v93 = *(v0 + 224);
        _swiftEmptyArrayStorage[2] = v84;
        sub_10970();
        v95 = sub_10960(_swiftEmptyArrayStorage + v94);
        v96(v95);
        v83 += v171;
        --v78;
      }

      while (v78);

      v36 = v167;
      sub_10ADC();
      v73 = v164;
    }

    else
    {
    }

    *(v36 + 504) = v166;
    *(v36 + 480) = _swiftEmptyArrayStorage;
  }

  v97 = *(v0 + 136);
  v98 = *(v0 + 72);
  sub_10944();
  *(v36 + 512) = v1 + 9;
  *(v36 + 520) = v99;
  sub_B8BC(v100, v97, &qword_DB958, qword_A6CE0);
  v101 = sub_1092C();
  v103 = sub_CF2C(v101, v102, v73);
  v104 = *(v0 + 288);
  v105 = *(v0 + 200);
  v106 = *(v0 + 136);
  if (v103 == 1)
  {
    sub_1085C(*(v0 + 136), &qword_DB958, qword_A6CE0);
    sub_10A34(v104);
LABEL_29:
    sub_1085C(*(v0 + 288), &qword_DB960, &unk_A6C00);
    *(v36 + 528) = 0u;
    *(v36 + 544) = 0u;
    goto LABEL_33;
  }

  sub_B8BC(v106 + *(v73 + 20), *(v0 + 288), &qword_DB960, &unk_A6C00);
  sub_108DC();
  sub_107B4(v106, v107);
  sub_109FC(v104, 1, v105);
  if (v112)
  {
    goto LABEL_29;
  }

  v108 = *(v0 + 128);
  v109 = *(v0 + 72);
  sub_1085C(*(v0 + 288), &qword_DB960, &unk_A6C00);
  sub_B8BC(v109, v108, &qword_DB958, qword_A6CE0);
  v110 = sub_1092C();
  result = sub_109FC(v110, v111, v73);
  if (v112)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v113 = *(v0 + 280);
  v114 = *(v0 + 200);
  v115 = *(v0 + 128);
  v165 = v73;
  sub_10B7C(&qword_DB960, &unk_A6C00, *(v73 + 20));
  sub_108DC();
  sub_107B4(v115, v116);
  result = sub_108F4();
  if (v112)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v117 = *(v0 + 280);
  v119 = *(v0 + 232);
  v118 = *(v0 + 240);
  v120 = *(v0 + 224);
  v1 = *(v0 + 184);
  v121 = *(v0 + 192);
  v122 = *(v0 + 176);
  v124 = *v117;
  v123 = v117[1];

  sub_108C4();
  sub_107B4(v117, v125);
  *(v0 + 32) = v124;
  *(v0 + 40) = v123;
  sub_A2B84();
  sub_10760();
  sub_A4A54();
  v126 = sub_10B30();
  v127(v126, v122);

  sub_10A14();
  v36 = v167;
  v167[69] = v120;
  v128 = sub_76B0(v167 + 66);
  (*(v119 + 32))(v128, v118, v120);
  sub_10ADC();
  v73 = v165;
LABEL_33:
  v129 = *(v0 + 120);
  v130 = *(v0 + 72);
  sub_10944();
  *(v36 + 560) = v1 + 8;
  *(v36 + 568) = v131;
  sub_B8BC(v132, v129, &qword_DB958, qword_A6CE0);
  v133 = sub_1092C();
  v135 = sub_CF2C(v133, v134, v73);
  v136 = *(v0 + 272);
  v137 = *(v0 + 200);
  v138 = *(v0 + 120);
  if (v135 != 1)
  {
    sub_B8BC(v138 + *(v73 + 20), *(v0 + 272), &qword_DB960, &unk_A6C00);
    sub_108DC();
    sub_107B4(v138, v139);
    sub_109FC(v136, 1, v137);
    if (v112)
    {
      goto LABEL_37;
    }

    v140 = *(v0 + 112);
    v141 = *(v0 + 72);
    sub_1085C(*(v0 + 272), &qword_DB960, &unk_A6C00);
    sub_B8BC(v141, v140, &qword_DB958, qword_A6CE0);
    v142 = sub_1092C();
    result = sub_109FC(v142, v143, v73);
    if (!v144)
    {
      v145 = *(v0 + 264);
      v146 = *(v0 + 200);
      v147 = *(v0 + 112);
      sub_10B7C(&qword_DB960, &unk_A6C00, *(v73 + 20));
      sub_108DC();
      sub_107B4(v147, v148);
      result = sub_108F4();
      if (!v112)
      {
        v149 = *(v0 + 264);
        v150 = *(v0 + 200);
        v152 = *(v0 + 160);
        v151 = *(v0 + 168);
        v153 = *(v0 + 152);
        v154 = sub_A41E4();
        v155 = *(v150 + 20);
        v156 = sub_10918();
        v157(v156);
        sub_108C4();
        sub_107B4(v149, v158);
        sub_8CD18();
        v159 = sub_109C4();
        v160(v159);
        *(v36 + 600) = v154;
        *(v36 + 576) = v154;
        goto LABEL_41;
      }

LABEL_48:
      __break(1u);
      return result;
    }

    goto LABEL_46;
  }

  sub_1085C(*(v0 + 120), &qword_DB958, qword_A6CE0);
  sub_10A34(v136);
LABEL_37:
  sub_1085C(*(v0 + 272), &qword_DB960, &unk_A6C00);
  *(v36 + 576) = 0u;
  *(v36 + 592) = 0u;
LABEL_41:
  v161 = *(*(v0 + 96) + 16);
  v162 = swift_task_alloc();
  *(v0 + 320) = v162;
  *v162 = v0;
  v162[1] = sub_1014C;
  v163 = *(v0 + 88);

  return sub_6E228(3, v36, v163, v161);
}

uint64_t sub_1014C(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 304);
  v5 = *(*v1 + 296);
  v6 = *(*v1 + 288);
  v7 = *(*v1 + 280);
  v8 = *(*v1 + 272);
  v9 = *(*v1 + 264);
  v10 = *(*v1 + 256);
  v11 = *(*v1 + 248);
  v24 = *(*v1 + 240);
  sub_10938();
  v25 = *(v12 + 216);
  sub_10938();
  v26 = *(v13 + 192);
  sub_10938();
  v27 = *(v14 + 168);
  sub_10938();
  v28 = *(v15 + 144);
  sub_10938();
  v29 = *(v16 + 136);
  sub_10938();
  v30 = *(v17 + 128);
  sub_10938();
  v31 = *(v18 + 120);
  sub_10938();
  v32 = *(v19 + 112);
  v20 = *v1;
  sub_5930();
  *v21 = v20;

  v22 = *(v20 + 8);

  return v22(a1);
}

uint64_t sub_1045C(uint64_t *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25CalendarTemplatingService_logger;
  if (qword_DA9E0 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  v7 = sub_48A4(v6, qword_E0BD0);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  sub_761C(a1);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_10524()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25CalendarTemplatingService_logger;
  v2 = sub_A43D4();
  sub_5908(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_10580()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25CalendarTemplatingService_logger;
  v3 = sub_A43D4();
  sub_5908(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for CalendarTemplatingService()
{
  result = qword_DB8B0;
  if (!qword_DB8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1066C()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_106FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10760()
{
  result = qword_DBBA0;
  if (!qword_DBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBA0);
  }

  return result;
}

uint64_t sub_107B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_5908(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_10808()
{
  result = qword_DB978;
  if (!qword_DB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB978);
  }

  return result;
}

uint64_t sub_1085C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4BF0(a2, a3);
  sub_5908(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10960@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v4 = *(v1 + 32);
  return result;
}

double sub_10980(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6576456C61746F74;
  a1[2].n128_u64[1] = 0xEF746E756F43746ELL;
  return *(v2 + 24);
}

uint64_t sub_10A14()
{

  return sub_A42C4();
}

uint64_t sub_10A34(uint64_t a1)
{

  return sub_A924(a1, 1, 1, v1);
}

uint64_t sub_10A94()
{

  return sub_A42C4();
}

uint64_t sub_10AAC()
{

  return swift_task_alloc();
}

uint64_t sub_10AC4()
{

  return swift_task_alloc();
}

uint64_t sub_10B44()
{
  v2 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  return sub_A41E4();
}

uint64_t sub_10B64()
{

  return sub_589D0(v1, v0);
}

uint64_t sub_10B7C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_B8BC(v4 + a3, v3, a1, a2);
}

uint64_t sub_10BA8(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *a1;
    sub_11F4C();
    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_4BF0(&qword_DB958, qword_A6CE0);
    sub_11F80(v9);
    if (*(v10 + 84) == a2)
    {
      v11 = *(a3 + 20);
    }

    else
    {
      type metadata accessor for DBCalendarState();
      v11 = *(a3 + 24);
    }

    v12 = sub_11F40(v11);

    return sub_CF2C(v12, v13, v14);
  }
}

void *sub_10C90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_4BF0(&qword_DB958, qword_A6CE0);
    sub_11F80(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = *(a4 + 20);
    }

    else
    {
      type metadata accessor for DBCalendarState();
      v9 = *(a4 + 24);
    }

    v10 = sub_11F40(v9);

    return sub_A924(v10, v11, a2, v12);
  }

  return result;
}

void sub_10D7C()
{
  sub_10E48();
  if (v0 <= 0x3F)
  {
    sub_1117C(319, &unk_DB9F0, type metadata accessor for ImportantEventInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DBCalendarState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10E48()
{
  if (!qword_DB9E8)
  {
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DB9E8);
    }
  }
}

__n128 sub_10EB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10ECC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 45))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10F80(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *a1;
    sub_11F4C();
    return (v4 + 1);
  }

  else
  {
    sub_4BF0(&qword_DB960, &unk_A6C00);
    v7 = sub_11F40(*(a3 + 20));

    return sub_CF2C(v7, v8, v9);
  }
}

void sub_1101C()
{
  sub_11FA0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_4BF0(&qword_DB960, &unk_A6C00);
    v5 = sub_11F40(*(v4 + 20));

    sub_A924(v5, v6, v0, v7);
  }
}

void sub_11098()
{
  sub_1117C(319, &qword_DBA90, type metadata accessor for CalendarEvent, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1117C(319, &unk_DBA98, type metadata accessor for CalendarEvent, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1117C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_11214(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    sub_11F4C();
    return (v4 + 1);
  }

  else
  {
    v8 = sub_A2EA4();
    sub_11F80(v8);
    if (*(v9 + 84) == a2)
    {
      v10 = *(a3 + 20);
    }

    else
    {
      sub_A2DB4();
      v10 = *(a3 + 24);
    }

    v11 = sub_11F40(v10);

    return sub_CF2C(v11, v12, v13);
  }
}

void sub_112E4()
{
  sub_11FA0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_A2EA4();
    sub_11F80(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 20);
    }

    else
    {
      sub_A2DB4();
      v9 = *(v5 + 24);
    }

    v10 = sub_11F40(v9);

    sub_A924(v10, v11, v0, v12);
  }
}

uint64_t sub_11398()
{
  result = sub_A2EA4();
  if (v1 <= 0x3F)
  {
    result = sub_A2DB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1142C()
{
  sub_11F5C();
  v57 = type metadata accessor for ImportantEventInfo(0);
  v2 = sub_7A14(v57);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v55 = (v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(*(sub_4BF0(&qword_DB958, qword_A6CE0) - 8) + 64);
  sub_11FC0();
  __chkstk_darwin(v7);
  v56 = (v48 - v8);
  v9 = sub_4BF0(&qword_DBB60, &qword_A6E48);
  sub_7A14(v9);
  v11 = *(v10 + 64);
  sub_11FC0();
  v13 = __chkstk_darwin(v12);
  v58 = v48 - v14;
  v15 = *v1;
  v16 = *(v1 + 8);
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = *(v1 + 40) | (*(v1 + 44) << 32);
  v22 = *v0;
  v21 = v0[1];
  v24 = v0[2];
  v23 = v0[3];
  v25 = *(v0 + 10) | (*(v0 + 44) << 32);
  v26 = v0[4];
  if (*v1)
  {
    if (v22)
    {
      v54 = v13;
      v67 = v22;
      v68 = v21;
      v69 = v24;
      v70 = v23;
      v71 = v26;
      v72 = v25;
      v73 = BYTE4(v25);
      v60 = v15;
      v61 = v16;
      v62 = v18;
      v63 = v17;
      v64 = v19;
      v65 = v20;
      v66 = BYTE4(v20);
      v51 = v16;
      v52 = v18;
      v59 = v21;
      sub_11FB4();
      v53 = v27;
      v50 = v20;
      sub_11D58(v28);
      sub_11F68();
      sub_11D58(v29);
      LODWORD(v49) = sub_118E0();
      sub_11F68();
      sub_11D98(v30);
      sub_11D98(v15);
      if ((v49 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_6:
    v58 = *v1;
    v59 = v21;
    v57 = v24;
    sub_11D58(v58);
    sub_11F8C();
    sub_11D58(v31);
    sub_11FB4();
    sub_11D98(v32);
    sub_11F8C();
    sub_11D98(v33);
    goto LABEL_14;
  }

  if (v22)
  {
    goto LABEL_6;
  }

  v54 = v13;
  sub_11FB4();
  v48[1] = v34;
  v49 = v35;
  sub_11D58(v36);
  sub_11D58(0);
  sub_11FB4();
  sub_11D98(v37);
LABEL_8:
  v38 = type metadata accessor for CalendarPreprocessingResult(0);
  v39 = *(v38 + 20);
  v40 = *(v54 + 48);
  v41 = v58;
  sub_11DD8();
  sub_11DD8();
  v42 = v57;
  if (sub_CF2C(v41, 1, v57) == 1)
  {
    if (sub_CF2C(v41 + v40, 1, v42) == 1)
    {
      sub_11E34(v41, &qword_DB958, qword_A6CE0);
LABEL_17:
      v44 = sub_5B6F4(v1 + *(v38 + 24), v0 + *(v38 + 24));
      return v44 & 1;
    }

    goto LABEL_13;
  }

  v43 = v56;
  sub_11DD8();
  if (sub_CF2C(v41 + v40, 1, v42) == 1)
  {
    sub_11E8C(v43, type metadata accessor for ImportantEventInfo);
LABEL_13:
    sub_11E34(v41, &qword_DBB60, &qword_A6E48);
    goto LABEL_14;
  }

  v46 = v55;
  sub_11EE4();
  v47 = sub_119AC(v43, v46);
  sub_11E8C(v46, type metadata accessor for ImportantEventInfo);
  sub_11E8C(v43, type metadata accessor for ImportantEventInfo);
  sub_11E34(v41, &qword_DB958, qword_A6CE0);
  if (v47)
  {
    goto LABEL_17;
  }

LABEL_14:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_118E0()
{
  sub_11F5C();
  if ((sub_1B724(*v2, *v3) & 1) != 0 && (sub_1B724(*(v1 + 8), *(v0 + 8)) & 1) != 0 && *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32) && ((*(v1 + 40) ^ *(v0 + 40)) & 1) == 0 && ((*(v1 + 41) ^ *(v0 + 41)) & 1) == 0 && ((*(v1 + 42) ^ *(v0 + 42)) & 1) == 0 && ((*(v1 + 43) ^ *(v0 + 43)) & 1) == 0)
  {
    v4 = *(v1 + 44) ^ *(v0 + 44) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_119AC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  v5 = sub_7A14(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(sub_4BF0(&qword_DB960, &unk_A6C00) - 8) + 64);
  sub_11FC0();
  __chkstk_darwin(v11);
  v13 = (&v30 - v12);
  v14 = sub_4BF0(&qword_DBB68, &unk_A6E50);
  sub_7A14(v14);
  v16 = *(v15 + 64);
  sub_11FC0();
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  if ((sub_1B724(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v20 = *(type metadata accessor for ImportantEventInfo(0) + 20);
  v21 = *(v14 + 48);
  sub_11DD8();
  sub_11DD8();
  sub_11FCC(v19);
  if (v23)
  {
    sub_11FCC(&v19[v21]);
    if (v23)
    {
      sub_11E34(v19, &qword_DB960, &unk_A6C00);
      return 1;
    }

    goto LABEL_11;
  }

  sub_11DD8();
  sub_11FCC(&v19[v21]);
  if (v23)
  {
    sub_11E8C(v13, type metadata accessor for CalendarEvent);
LABEL_11:
    v24 = &qword_DBB68;
    v25 = &unk_A6E50;
    goto LABEL_21;
  }

  sub_11EE4();
  v26 = *v13 == *v9 && v13[1] == v9[1];
  if (v26 || (sub_A4E44() & 1) != 0)
  {
    v27 = *(v4 + 20);
    if (sub_A2E64())
    {
      v28 = *(v4 + 24);
      v29 = sub_A2D64();
      sub_11E8C(v9, type metadata accessor for CalendarEvent);
      sub_11E8C(v13, type metadata accessor for CalendarEvent);
      sub_11E34(v19, &qword_DB960, &unk_A6C00);
      return (v29 & 1) != 0;
    }
  }

  sub_11E8C(v9, type metadata accessor for CalendarEvent);
  sub_11E8C(v13, type metadata accessor for CalendarEvent);
  v24 = &qword_DB960;
  v25 = &unk_A6C00;
LABEL_21:
  sub_11E34(v19, v24, v25);
  return 0;
}

uint64_t sub_11CAC()
{
  sub_11F5C();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_A4E44() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CalendarEvent(0);
  v5 = *(v4 + 20);
  if ((sub_A2E64() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);

  return sub_A2D64();
}

uint64_t sub_11D58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_11D98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_11DD8()
{
  sub_11F5C();
  v4 = sub_4BF0(v2, v3);
  sub_7A14(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_11E34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4BF0(a2, a3);
  sub_7A14(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_11E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_7A14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_11EE4()
{
  sub_11F5C();
  v3 = v2(0);
  sub_7A14(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_11FEC()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E06D8);
  v1 = sub_48A4(v0, qword_E06D8);
  if (qword_DA9E8 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_120B4(uint64_t a1)
{
  sub_10760();
  v2 = sub_A4AA4();
  sub_12BD4(v2);
  v4 = v3;

  if (v4)
  {
    a1 = sub_A4684();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_12180@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_A3A04();
  v3 = sub_591C(v2);
  v79 = v4;
  v80 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_AA54();
  v78 = v8 - v7;
  v82 = sub_A39A4();
  v9 = sub_591C(v82);
  v77 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_13678();
  v72 = v13;
  __chkstk_darwin(v14);
  v76 = &v68 - v15;
  v81 = sub_A39D4();
  v16 = sub_591C(v81);
  v75 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_13678();
  v71 = v20;
  __chkstk_darwin(v21);
  v74 = &v68 - v22;
  v23 = sub_A3964();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  sub_AA54();
  v85 = sub_A3A34();
  v25 = sub_591C(v85);
  v83 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_13678();
  v70 = v29;
  __chkstk_darwin(v30);
  v32 = &v68 - v31;
  v33 = sub_4BF0(&qword_DBB80, &qword_A6EA8);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v68 - v35;
  sub_A3734();
  sub_1C450(0);
  sub_A36A4();
  sub_1C450(0);
  sub_A36F4();
  sub_4BF0(&qword_DBB88, &unk_A6EB0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_A6E60;
  v86 = sub_1C450(1);
  v87 = v38;
  sub_1369C();
  v88._countAndFlagsBits = sub_A4664();
  sub_A46D4(v88);

  v39 = v87;
  *(v37 + 32) = v86;
  *(v37 + 40) = v39;
  v86 = sub_1C450(1);
  v87 = v40;
  sub_1369C();
  v89._countAndFlagsBits = sub_A4664();
  sub_A46D4(v89);

  v41 = v87;
  *(v37 + 48) = v86;
  *(v37 + 56) = v41;
  v86 = sub_1C450(1);
  v87 = v42;
  sub_1369C();
  v90._countAndFlagsBits = sub_A4664();
  sub_A46D4(v90);

  v43 = v87;
  *(v37 + 64) = v86;
  *(v37 + 72) = v43;
  sub_A3704();
  v44 = swift_allocObject();
  v84 = xmmword_A6E70;
  *(v44 + 16) = xmmword_A6E70;
  v86 = sub_1C450(1);
  v87 = v45;
  sub_1369C();
  v91._countAndFlagsBits = sub_A4664();
  sub_A46D4(v91);

  v46 = v87;
  *(v44 + 32) = v86;
  *(v44 + 40) = v46;
  sub_A36E4();
  v47 = swift_allocObject();
  *(v47 + 16) = v84;
  *(v47 + 32) = sub_1C450(1);
  *(v47 + 40) = v48;
  sub_A3714();
  v73 = a1;
  sub_A36C4();
  v49 = sub_A3FD4();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = sub_A3FC4();
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_A6E80;
  *(v53 + 32) = v52;
  v54 = sub_A3BF4();
  sub_A924(v36, 1, 1, v54);

  v55 = sub_A3B74();

  sub_132A8(v36);
  sub_A3A24();
  sub_A3A54();
  v69 = v32;
  sub_A3A14();
  v56 = v74;
  sub_A39C4();
  v57 = v83;
  (*(v83 + 16))(v70, v32, v85);
  sub_A39B4();
  v58 = v76;
  sub_A3994();
  v70 = v52;
  v59 = v75;
  (*(v75 + 16))(v71, v56, v81);
  sub_A3984();
  v60 = v78;
  sub_A39F4();
  v61 = v77;
  (*(v77 + 16))(v72, v58, v82);
  sub_A39E4();
  sub_4BF0(&qword_DBB98, &qword_A6EC0);
  v72 = v55;
  v62 = v79;
  v63 = *(v79 + 72);
  v64 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = v84;
  v66 = v80;
  (*(v62 + 16))(v65 + v64, v60, v80);
  sub_A36B4();

  (*(v62 + 8))(v60, v66);
  (*(v61 + 8))(v58, v82);
  (*(v59 + 8))(v56, v81);
  return (*(v57 + 8))(v69, v85);
}

id sub_129C8()
{
  v0 = sub_A2ED4();
  v1 = sub_591C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_AA54();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(SASendCommands) init];
  v10 = [objc_allocWithZone(SAStartDirectActionRequest) init];
  v11 = sub_A45F4();
  sub_1323C(v11, v12, v10, &selRef_setDirectAction_);
  sub_1323C(0xD00000000000002BLL, 0x80000000000AE160, v10, &selRef_setUtteranceFromRequestParameters_);
  v13 = v10;
  sub_A2EC4();
  v14 = sub_A2EB4();
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v8, v0);
  sub_1323C(v14, v16, v13, &selRef_setAceId_);

  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_A6E80;
  *(v18 + 32) = v13;
  v19 = v13;
  sub_131B0(v18, v9);
  v20 = v9;
  sub_A2EC4();
  v21 = sub_A2EB4();
  v23 = v22;
  v17(v8, v0);
  sub_1323C(v21, v23, v20, &selRef_setAceId_);

  return v20;
}

uint64_t sub_12BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t sub_12C38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736163646F70 && a2 == 0xE900000000000064;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_A4E44();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_12D10(char a1)
{
  if (a1)
  {
    return 1701669236;
  }

  else
  {
    return 0x4974736163646F70;
  }
}

uint64_t sub_12D44(void *a1)
{
  v3 = sub_4BF0(&qword_DBBB8, &qword_A6F80);
  v4 = sub_591C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_7584(a1, a1[3]);
  sub_13418();
  sub_A4F64();
  v13[15] = 0;
  sub_A4DB4();
  if (!v1)
  {
    v13[14] = 1;
    sub_A4DD4();
  }

  return (*(v6 + 8))(v10, v3);
}

double sub_12EB8(uint64_t *a1)
{
  v4 = sub_4BF0(&qword_DBBA8, &qword_A6F78);
  v5 = sub_591C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = a1[4];
  sub_7584(a1, a1[3]);
  sub_13418();
  sub_A4F54();
  if (!v1)
  {
    sub_A4D34();
    sub_A4D54();
    v2 = v10;
    v11 = sub_1368C();
    v12(v11);
  }

  sub_761C(a1);
  return v2;
}

uint64_t sub_13078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12C38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_130C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_12D08();
  *a1 = result;
  return result;
}

uint64_t sub_130E8(uint64_t a1)
{
  v2 = sub_13418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13124(uint64_t a1)
{
  v2 = sub_13418();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_13160(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_12EB8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_13190(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_12D44(a1);
}

void sub_131B0(uint64_t a1, void *a2)
{
  sub_4BF0(&qword_DBB78, &qword_A6EA0);
  isa = sub_A4754().super.isa;

  [a2 setCommands:isa];
}

void sub_1323C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_A45C4();

  [a3 *a4];
}

uint64_t sub_132A8(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DBB80, &qword_A6EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_13310(uint64_t a1, uint64_t *a2)
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

__n128 sub_13374(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_13388(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_133C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_13418()
{
  result = qword_DBBB0;
  if (!qword_DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PodcastLastInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x13538);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_13574()
{
  result = qword_DBBC0;
  if (!qword_DBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBC0);
  }

  return result;
}

unint64_t sub_135CC()
{
  result = qword_DBBC8;
  if (!qword_DBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBC8);
  }

  return result;
}

unint64_t sub_13624()
{
  result = qword_DBBD0;
  if (!qword_DBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBD0);
  }

  return result;
}

void sub_1369C()
{
  v2._countAndFlagsBits = v0;
  v2._object = 0xE700000000000000;

  sub_A46D4(v2);
}

uint64_t getEnumTagSinglePayload for WeatherConditionCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x13808);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_13840()
{
  v0 = sub_A4E74();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_13894(char a1)
{
  result = 0x6E61636972727568;
  switch(a1)
  {
    case 1:
      return 0x6F64616E726F74;
    case 2:
      return 0x6C616369706F7274;
    case 3:
      return 0x6472617A7A696C62;
    case 4:
      return 1818845544;
    case 5:
      return 0x737265646E756874;
    case 6:
      return 0x7465656C73;
    case 7:
      v3 = 2003791475;
      goto LABEL_21;
    case 8:
      return 0x53676E69776F6C62;
    case 9:
      v3 = 1852399986;
      goto LABEL_21;
    case 10:
      v3 = 1802464627;
      goto LABEL_21;
    case 11:
      return 1953723748;
    case 12:
      v3 = 1684957559;
      goto LABEL_21;
    case 13:
      v3 = 1734831974;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 14:
      result = 1702519144;
      break;
    case 15:
      result = 0x7964756F6C63;
      break;
    case 16:
      result = 0x6C43796C74726170;
      break;
    case 17:
      result = 0x7261656C63;
      break;
    case 18:
      result = 1684828003;
      break;
    case 19:
      result = 7630696;
      break;
    case 20:
      result = 0x6F6C43646578696DLL;
      break;
    case 21:
      result = 0x656C43646578696DLL;
      break;
    case 22:
      result = 0x6C69617641746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_13B44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_13840();
  *a2 = result;
  return result;
}

unint64_t sub_13B74@<X0>(unint64_t *a1@<X8>)
{
  result = sub_13894(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_13BA4()
{
  result = qword_DBBE0;
  if (!qword_DBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBE0);
  }

  return result;
}

uint64_t sub_13BF8(_OWORD *a1)
{
  v173 = a1;
  v168 = sub_A38E4();
  v1 = sub_591C(v168);
  v167 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_AA54();
  v166 = (v6 - v5);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_AA54();
  v11 = v10 - v9;
  v12 = sub_A4004();
  v13 = sub_591C(v12);
  v171 = v14;
  v172 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_13678();
  v170 = v17;
  v19 = __chkstk_darwin(v18);
  v169 = &v162 - v20;
  __chkstk_darwin(v19);
  v22 = &v162 - v21;
  v165 = sub_A3924();
  v23 = sub_591C(v165);
  v164 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_13678();
  v162 = v27;
  __chkstk_darwin(v28);
  v163 = &v162 - v29;
  v30 = sub_A38F4();
  v31 = sub_591C(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  sub_AA54();
  v38 = (v37 - v36);
  if (qword_DA9E8 != -1)
  {
    swift_once();
  }

  v39 = sub_A43D4();
  sub_48A4(v39, qword_E0BE8);
  sub_148B0();
  sub_810C4(v40, v41, v42, v43, v44, v45);
  v181 = 0;
  v179 = 0u;
  v180 = 0u;
  (*(v33 + 16))(v38, v173, v30);
  v46 = (*(v33 + 88))(v38, v30);
  if (v46 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v47 = sub_148D0();
    v48(v47);
    v49 = v171;
    v170 = *(v171 + 32);
    v50 = v38;
    v51 = v172;
    v170(v22, v50, v172);
    sub_148F0();
    sub_148E0();
    v173 = (&v179 + 8);
    sub_148B0();
    sub_810C4(v52, v53, v54, v55, v56, v57);
    v58 = v169;
    (*(v49 + 16))(v169, v22, v51);
    v59 = type metadata accessor for DailyBriefingNLv3Intent();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    v62 = swift_allocObject();
    v170((v62 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent), v58, v51);
    (*(v49 + 8))(v22, v51);
    sub_147EC(&v179);
    *v173 = v176;
    *&v179 = v62;
    *(&v180 + 1) = v59;
    v181 = &off_D2208;
    sub_14900();
    goto LABEL_5;
  }

  v173 = v39;
  if (v46 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v168 = v22;
    v173 = (&v179 + 8);
    v72 = sub_148D0();
    v73(v72);
    v74 = *(v38 + *(sub_4BF0(&qword_DBBF0, &qword_A7188) + 48));

    v76 = v170;
    v75 = v171;
    v77 = v172;
    v167 = *(v171 + 32);
    (v167)(v170, v38, v172);
    sub_148F0();
    sub_148E0();
    v169 = "onfirmation.swift";
    sub_148B0();
    sub_810C4(v78, v79, v80, v81, v82, v83);
    v84 = v11;
    v85 = *(v75 + 16);
    v85(v11, v76, v77);
    if (sub_869F8())
    {
      sub_148F0();
      sub_148E0();
      sub_148B0();
      sub_810C4(v86, v87, v88, v89, v90, v91);
      sub_14854(v11);
      (*(v75 + 8))(v170, v77);
      goto LABEL_12;
    }

    v166 = "n State from parse";
    v112 = v168;
    v113 = v170;
    v85(v168, v170, v77);
    v114 = type metadata accessor for DailyBriefingNLv3Intent();
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    v117 = swift_allocObject();
    (v167)(v117 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent, v112, v77);
    sub_14854(v84);
    (*(v75 + 8))(v113, v77);
    sub_147EC(&v179);
    *v173 = v176;
    *&v179 = v117;
    *(&v180 + 1) = v114;
    v181 = &off_D2208;
    sub_14900();
LABEL_5:
    sub_1477C(&v179, &v174);
    if (v175)
    {
      sub_A814(&v174, &v176);
      v63 = v177;
      v64 = v178;
      sub_7584(&v176, v177);
      v65 = (*(v64 + 64))(v63, v64);
      if (v65 != 3)
      {
        v98 = v65;
        sub_147EC(&v179);
        sub_761C(&v176);
        return v98;
      }

      sub_148C0();
      sub_148B0();
      sub_81094(v66, v67, v68, v69, v70, v71);
      sub_147EC(&v179);
      sub_761C(&v176);
      return 3;
    }

    sub_147EC(&v174);
    sub_148C0();
    sub_148B0();
    sub_81094(v92, v93, v94, v95, v96, v97);
LABEL_12:
    sub_147EC(&v179);
    return 3;
  }

  if (v46 != enum case for Parse.directInvocation(_:))
  {
    if (v46 == enum case for Parse.NLv4IntentOnly(_:))
    {
      v118 = sub_148D0();
      v119(v118);
      v120 = *v38;
      sub_14900();
      sub_148C0();
      sub_148B0();
      sub_810C4(v121, v122, v123, v124, v125, v126);
      v127 = type metadata accessor for DailyBriefingNLv4Intent();
      swift_allocObject();
      v128 = swift_unknownObjectRetain();
      v129 = sub_57024(v128);
      if (v129)
      {
        swift_unknownObjectRelease();
        sub_147EC(&v179);
        v130 = &off_D1E18;
      }

      else
      {
        sub_147EC(&v179);
        swift_unknownObjectRelease();
        v127 = 0;
        v130 = 0;
      }

      *&v180 = 0;
      v179 = v129;
      *(&v180 + 1) = v127;
      v181 = v130;
    }

    else if (v46 == enum case for Parse.uso(_:))
    {
      v137 = sub_148D0();
      v138(v137);
      v139 = v164;
      v140 = v163;
      v141 = v165;
      (*(v164 + 32))(v163, v38, v165);
      sub_14900();
      sub_148C0();
      v173 = (&v179 + 8);
      sub_148B0();
      sub_810C4(v142, v143, v144, v145, v146, v147);
      v148 = type metadata accessor for DailyBriefingNLv4Intent();
      v149 = v162;
      (*(v139 + 16))(v162, v140, v141);
      v150 = sub_56DA0(v149);
      v151 = v150;
      if (v150)
      {
        v152 = &off_D1E18;
      }

      else
      {
        v152 = 0;
      }

      if (!v150)
      {
        v148 = 0;
      }

      (*(v139 + 8))(v140, v141);
      sub_147EC(&v179);
      v153 = v173;
      *v173 = 0;
      *(v153 + 1) = 0;
      *&v179 = v151;
      *(&v180 + 1) = v148;
      v181 = v152;
    }

    else
    {
      sub_148F0();
      sub_148E0();
      sub_148B0();
      sub_81094(v154, v155, v156, v157, v158, v159);
      v160 = *(v33 + 8);
      sub_14900();
      v161();
    }

    goto LABEL_5;
  }

  v100 = sub_148D0();
  v101(v100);
  v102 = v167;
  v103 = v166;
  v104 = v168;
  (*(v167 + 32))(v166, v38, v168);
  *&v176 = 0;
  *(&v176 + 1) = 0xE000000000000000;
  sub_A4B54(29);
  sub_14900();
  v182._countAndFlagsBits = (v38 - 1);
  v182._object = (v105 | 0x8000000000000000);
  sub_A46D4(v182);
  sub_A4C44();
  sub_810C4(v176, *(&v176 + 1), v38 + 14, 0x80000000000AE280, 0xD000000000000023, 0x80000000000AE2C0);

  v106 = sub_20734();
  if (v106 == 2)
  {
    v107 = v173;
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    sub_48A4(v107, qword_E0BA0);
    sub_148C0();
    sub_81094(v108, v109, v110, v111, 0xD000000000000023, 0x80000000000AE2C0);
    (*(v102 + 8))(v103, v104);
    goto LABEL_5;
  }

  v131 = v106;
  v132 = v173;
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  sub_48A4(v132, qword_E0BA0);
  sub_148C0();
  sub_810C4(v133, v134, v135, v136, 0xD000000000000023, 0x80000000000AE2C0);
  (*(v102 + 8))(v103, v104);
  sub_147EC(&v179);
  return v131 & 1;
}

uint64_t sub_1477C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DBBE8, &qword_A7180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_147EC(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DBBE8, &qword_A7180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14854(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayerIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1490C()
{
  v1 = sub_A4444();
  v2 = sub_14CB8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = sub_14C8C(v7, v27);
  v9(v8);
  v10 = *(v4 + 88);
  v11 = sub_14C80();
  LODWORD(result) = v12(v11);
  if (result == enum case for DispatchTimeInterval.seconds(_:))
  {
    v14 = sub_14C70();
    v15(v14);
    result = 1000 * *v0;
    if ((*v0 * 1000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v16 = sub_14C70();
    v17(v16);
    return *v0;
  }

  if (result == enum case for DispatchTimeInterval.microseconds(_:))
  {
    v18 = sub_14C70();
    v19(v18);
    v20 = *v0;
    v21 = 1000;
    return v20 / v21;
  }

  if (result == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    v22 = sub_14C70();
    v23(v22);
    v20 = *v0;
    v21 = 1000000;
    return v20 / v21;
  }

  if (result != enum case for DispatchTimeInterval.never(_:))
  {
    v24 = *(v4 + 8);
    v25 = sub_14C80();
    v26(v25);
  }

  return 0;
}

double sub_14AB4()
{
  v1 = sub_A4444();
  v2 = sub_14CB8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = sub_14C8C(v7, v29);
  v9(v8);
  v10 = *(v4 + 88);
  v11 = sub_14C80();
  v13 = v12(v11);
  if (v13 == enum case for DispatchTimeInterval.seconds(_:))
  {
    v14 = sub_14C70();
    v15(v14);
    return *v0;
  }

  if (v13 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v17 = sub_14C70();
    v18(v17);
    v19 = *v0;
    v20 = 0.001;
    return v19 * v20;
  }

  if (v13 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    v21 = sub_14C70();
    v22(v21);
    v19 = *v0;
    v20 = 0.000001;
    return v19 * v20;
  }

  if (v13 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    v23 = sub_14C70();
    v24(v23);
    v19 = *v0;
    v20 = 0.000000001;
    return v19 * v20;
  }

  v16 = 0.0;
  if (v13 != enum case for DispatchTimeInterval.never(_:))
  {
    v26 = *(v4 + 8);
    v27 = sub_14C80();
    v28(v27);
  }

  return v16;
}

uint64_t sub_14CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  v9 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition;
  v10 = sub_A42E4();
  v11 = *(*(v10 - 8) + 32);
  v11(v4 + v9, a1, v10);
  v11(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition, a2, v10);
  *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart) = a3;
  *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart) = a4;
  return v4;
}

double sub_14DC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1 == sub_15ED8() && a2 == v7;
  if (v8 || (sub_79F8() & 1) != 0)
  {
    v9 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition;
LABEL_7:
    v10 = sub_A42E4();
    *(a3 + 24) = v10;
    v11 = sub_76B0(a3);
    v12 = *(*(v10 - 8) + 16);

    v12(v11, v3 + v9, v10);
    return result;
  }

  v15 = a1 == sub_15EB4() && a2 == v14;
  if (v15 || (sub_79F8() & 1) != 0)
  {
    v9 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition;
    goto LABEL_7;
  }

  v16 = a1 == 0xD000000000000013 && 0x80000000000ACF90 == a2;
  if (v16 || (sub_79F8() & 1) != 0)
  {
    v17 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart;
  }

  else
  {
    v19 = a1 == 0xD000000000000014 && 0x80000000000ACFB0 == a2;
    if (!v19 && (sub_79F8() & 1) == 0)
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v17 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart;
  }

  v18 = *(v3 + v17);
  *(a3 + 24) = sub_A41E4();
  *a3 = v18;

  return result;
}

uint64_t sub_14F58(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEF98;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_14FAC()
{
  result = sub_15ED8();
  switch(v1)
  {
    case 1:
      result = sub_15EB4();
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_15070@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_14F58(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_150A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_14FAC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_150D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_15108(uint64_t a1)
{
  v2 = sub_15BA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15144(uint64_t a1)
{
  v2 = sub_15BA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15180()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition;
  v2 = sub_A42E4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition, v2);
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart);

  v5 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart);

  return v0;
}

uint64_t sub_15238()
{
  sub_15180();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WeatherExpected()
{
  result = qword_DBC20;
  if (!qword_DBC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_152E4()
{
  result = sub_A42E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_15390(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DBD28, &qword_A72F0);
  v6 = sub_591C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  sub_7584(a1, a1[3]);
  sub_15BA0();
  sub_A4F64();
  LOBYTE(v20) = 0;
  sub_A42E4();
  sub_15E8C();
  sub_15BF4(v14, v15);
  sub_15E50();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    sub_15E50();
    v20 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart);
    HIBYTE(v19) = 2;
    sub_A41E4();
    sub_15E74();
    sub_15BF4(v16, v17);
    sub_15E50();
    v20 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart);
    HIBYTE(v19) = 3;
    sub_15E50();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_155A0(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_155F0(a1);
  return v5;
}

uint64_t sub_155F0(uint64_t *a1)
{
  v4 = sub_A42E4();
  v5 = sub_591C(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = v32 - v12;
  v35 = sub_4BF0(&qword_DBD18, &qword_A72E8);
  v13 = sub_591C(v35);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = v32 - v18;
  v37 = v1;
  v38 = a1;
  *(v1 + 16) = 0;
  v20 = a1[4];
  sub_7584(a1, a1[3]);
  sub_15BA0();
  v36 = v19;
  sub_A4F54();
  if (v2)
  {
    v27 = v37;

    type metadata accessor for WeatherExpected();
    v24 = *(*v27 + 48);
    v25 = *(*v27 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32[2] = v15;
    LOBYTE(v40) = 0;
    sub_15E8C();
    sub_15BF4(v21, v22);
    v23 = v34;
    sub_15EFC();
    sub_A4D74();
    v27 = v37;
    v34 = *(v33 + 32);
    (v34)(v37 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition, v23, v4);
    LOBYTE(v40) = 1;
    sub_15EFC();
    sub_A4D74();
    v32[1] = v4;
    (v34)(v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition, v11, v4);
    sub_A41E4();
    v39 = 2;
    sub_15E74();
    sub_15BF4(v28, v29);
    sub_A4D74();
    *(v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart) = v40;
    v39 = 3;
    sub_A4D74();
    v30 = sub_15EA4();
    v31(v30);
    *(v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart) = v40;
  }

  sub_761C(v38);
  return v27;
}

uint64_t sub_15AC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_155A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_15BA0()
{
  result = qword_DBD20;
  if (!qword_DBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBD20);
  }

  return result;
}

uint64_t sub_15BF4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherExpected.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x15D08);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_15D44()
{
  result = qword_DBD30;
  if (!qword_DBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBD30);
  }

  return result;
}

unint64_t sub_15D9C()
{
  result = qword_DBD38;
  if (!qword_DBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBD38);
  }

  return result;
}

unint64_t sub_15DF4()
{
  result = qword_DBD40;
  if (!qword_DBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBD40);
  }

  return result;
}

uint64_t sub_15E50()
{

  return sub_A4DF4();
}

uint64_t sub_15EA4()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t sub_15F10()
{
  v0 = type metadata accessor for ExecutorCallbackState(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_162B8();
  qword_E0710 = v3;
  return result;
}

void sub_15F50(char a1)
{
  v2 = v1;
  sub_A4B54(44);

  sub_10944();
  v9 = v4;
  if (a1)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_A46D4(v5);

  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  sub_A46D4(v11);
  sub_810AC(0xD000000000000029, v9, 0xD000000000000028, 0x80000000000AE620, 0xD000000000000012, 0x80000000000AE8A0);

  *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_didCallback) = a1;
  if (a1)
  {
    v7 = [objc_opt_self() defaultCenter];
    v8 = sub_A45C4();
    [v7 postNotificationName:v8 object:v2];
  }
}

uint64_t sub_16178()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_logger;
  v2 = sub_A43D4();
  sub_18594(v2);
  (*(v3 + 8))(v0 + v1);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_16214()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_162B8()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_logger;
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0BA0);
  sub_18594(v2);
  (*(v3 + 16))(v0 + v1);
  *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_didCallback) = 0;
  return v0;
}

void sub_16364(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_logger;
  if (qword_DA9D0 != -1)
  {
LABEL_21:
    sub_58D8();
  }

  v5 = sub_A43D4();
  sub_48A4(v5, qword_E0BA0);
  sub_18594(v5);
  (*(v6 + 16))(v2 + v4);
  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState;
  if (qword_DA848 != -1)
  {
    swift_once();
  }

  *(v2 + v7) = qword_E0710;
  *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpec) = 0;
  v8 = v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_flowSpecs) = a1;
  v4 = sub_1BF68(a1);

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      if (v4 == v9)
      {

        *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_flowSpecStatuses) = v10;
        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = sub_A4B74();
        v11 = v12;
      }

      else
      {
        if (v9 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if ((*(*v11 + 312))(v12))
      {
        break;
      }

      ++v9;
    }

    v17 = v2;
    sub_4BF0(&qword_DBF90, &qword_A7530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_A6E70;
    *(inited + 32) = v11;
    *(inited + 40) = 0;
    *(inited + 48) = -1;
    v14 = v10[2];
    if (!swift_isUniquelyReferenced_nonNull_native() || (v15 = v10[3] >> 1, v15 <= v14))
    {
      sub_550B0();
      v10 = v16;
      v15 = v16[3] >> 1;
    }

    if (v15 <= v10[2])
    {
      break;
    }

    sub_4BF0(&qword_DBF98, &qword_A7538);
    swift_arrayInitWithCopy();

    ++v10[2];

    ++v9;
    v2 = v17;
  }

  __break(1u);
}

uint64_t sub_16678()
{
  sub_5950();
  v1 = *(v0 + 16);
  sub_AA40();
  sub_AB34();
  sub_810AC(v2, v3, v4, v5, v6, v7);
  v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_16790;
  v10 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_16790()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_16894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v4 = *(*(sub_4BF0(&qword_DB5B8, &qword_AAD60) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_1693C, 0, 0);
}

uint64_t sub_1693C()
{
  v1 = *(*(v0 + 120) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_flowSpecs);
  result = sub_1BF68(v1);
  v3 = 0;
  v36 = v1 & 0xC000000000000001;
  v37 = result;
  v34 = v1 & 0xFFFFFFFFFFFFFF8;
  v35 = v1;
  while (v37 != v3)
  {
    if (v36)
    {
      result = sub_A4B74();
      v4 = result;
    }

    else
    {
      if (v3 >= *(v34 + 16))
      {
        goto LABEL_21;
      }

      v4 = *(v35 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    (*(*v4 + 240))(result);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    sub_7584((v0 + 16), v8);
    sub_AAC4(v9);
    v39._countAndFlagsBits = v10(v8, v9);
    sub_A46D4(v39);

    sub_761C((v0 + 16));
    sub_AA40();
    sub_AB34();
    sub_812F4(v11, v12, v13, v14, v15, v16);

    v17 = sub_A4814();
    sub_A924(v6, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v19 = v18 + 2;
    v18[3] = 0;
    v18[4] = v4;
    v18[5] = v7;
    sub_18380(v6, v5);
    LODWORD(v5) = sub_CF2C(v5, 1, v17);

    v20 = *(v0 + 128);
    if (v5 == 1)
    {
      sub_183F0(*(v0 + 128));
    }

    else
    {
      sub_A4804();
      sub_18594(v17);
      (*(v21 + 8))(v20, v17);
    }

    if (*v19)
    {
      v22 = v18[3];
      v23 = *v19;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = sub_A47C4();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = **(v0 + 112);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_A7568;
    *(v28 + 24) = v18;
    v29 = v26 | v24;
    if (v26 | v24)
    {
      v29 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v24;
      *(v0 + 80) = v26;
    }

    v30 = *(v0 + 136);
    *(v0 + 88) = 1;
    *(v0 + 96) = v29;
    *(v0 + 104) = v27;
    swift_task_create();

    sub_183F0(v30);

    ++v3;
  }

  v32 = *(v0 + 128);
  v31 = *(v0 + 136);

  sub_AA9C();

  return v33();
}

uint64_t sub_16CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return _swift_task_switch(sub_16D0C, 0, 0);
}

uint64_t sub_16D0C()
{
  v1 = v0[13];
  v2 = v0[14];
  type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  v4 = *(*v1 + 240);
  v4();
  v5 = v0[5];
  v6 = v0[6];
  v7 = sub_7584(v0 + 2, v5);
  sub_4DB28(v7, 0x11u, 0, 0, inited, v5, v6);
  sub_761C(v0 + 2);
  v0[15] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_logger;
  sub_A4B54(34);

  sub_10944();
  v4();
  v8 = v0[10];
  v9 = v0[11];
  sub_7584(v0 + 7, v8);
  sub_AAC4(v9);
  v24._countAndFlagsBits = v10(v8, v9);
  sub_A46D4(v24);

  sub_761C(v0 + 7);
  sub_AA40();
  sub_AB34();
  sub_810AC(v11, v12, v13, v14, v15, v16);

  v21 = (*v1 + 272);
  v22 = (*v21 + **v21);
  v17 = (*v21)[1];
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_16FA0;
  v19 = v0[13];

  return v22();
}

uint64_t sub_16FA0()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  v3 = *(v1 + 128);
  v10 = *v0;
  *(v2 + 136) = v4;
  *(v2 + 152) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_17094()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  *(v0 + 96) = v5;
  type metadata accessor for BaseFlowSpec();

  v18._countAndFlagsBits = sub_A4644();
  sub_A46D4(v18);

  sub_AA40();
  sub_AB34();
  sub_812F4(v6, v7, v8, v9, v10, v11);

  sub_17B7C(v5, v2, v1 & 1);
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_171F8;
  v13 = *(v0 + 136);
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);

  return sub_1733C(v14, v13, v1 & 1);
}

uint64_t sub_171F8()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_172DC()
{
  sub_5950();
  sub_A8A8(*(v0 + 136), *(v0 + 152) & 1);
  sub_AA9C();

  return v1();
}

uint64_t sub_1733C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 112) = a3;
  *(v4 + 64) = a1;
  return sub_58F8();
}

uint64_t sub_17358()
{
  sub_5950();
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState;
  v0[11] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState;
  v3 = *(v1 + v2);
  v0[12] = v3;

  return _swift_task_switch(sub_173D8, v3, 0);
}

uint64_t sub_173D8()
{
  sub_5950();
  *(v0 + 113) = *(*(v0 + 96) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_didCallback);

  v1 = sub_AA8C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_17444()
{
  v58 = v0;
  if (*(v0 + 113))
  {
    v1 = *(v0 + 80) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_logger;
    sub_810AC(0xD000000000000023, 0x80000000000AE7A0, 0xD000000000000028, 0x80000000000AE620, 0xD000000000000017, 0x80000000000AE6D0);
  }

  else
  {
    v2 = *(v0 + 80);
    v3 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_flowSpecStatuses;
    swift_beginAccess();
    v4 = 0;
    v5 = 0;
    v6 = *(v2 + v3);
    while (*(v6 + 16) != v5)
    {
      if (*(v4 + v6 + 32) == *(v0 + 64))
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v3) = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_52:
          sub_6DA04(v6);
          v6 = isUniquelyReferenced_nonNull_native;
          *(v2 + v3) = isUniquelyReferenced_nonNull_native;
        }

        if (v5 >= *(v6 + 16))
        {
          __break(1u);
        }

        else
        {
          v17 = *(v0 + 72);
          v18 = v4 + v6;
          v19 = *(v4 + v6 + 40);
          v20 = *(v0 + 112);
          *(v18 + 5) = v17;
          v21 = v18[48];
          v18[48] = v20 & 1;
          sub_181B8(v17, v20 & 1);
          *(v2 + v3) = v6;
          swift_endAccess();
          isUniquelyReferenced_nonNull_native = sub_181C4(v19, v21);
          v22 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex;
          v23 = *(v0 + 80);
          v4 = &qword_E0000;
          if ((v20 & 1) == 0)
          {
            v24 = v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex;
            if ((*(v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex + 8) & 1) != 0 || v5 < *v24)
            {
              v6 = *(v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpec);
              *(v23 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpec) = *(v0 + 64);

              *v24 = v5;
              *(v24 + 8) = 0;
              v22 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex;
              v23 = *(v0 + 80);
            }
          }

          v25 = (v23 + v22);
          if (*(v25 + 8))
          {
            v26 = v5;
          }

          else
          {
            v26 = *v25;
          }

          if ((v26 & 0x8000000000000000) == 0)
          {
            v15 = v26 + 1;
            if (!__OFADD__(v26, 1))
            {
              sub_953EC(0, v15, *(v2 + v3));
              v30 = (v28 + 24 * v29 + 16);
              v31 = v29 - 1;
              while (1)
              {
                v32 = v31 - (v27 >> 1);
                if (v32 == -1)
                {
                  break;
                }

                if (++v31 >= (v27 >> 1))
                {
                  __break(1u);
                  goto LABEL_52;
                }

                v33 = *v30;
                v30 += 24;
                if (v33 == 255)
                {
                  swift_unknownObjectRelease();
                  v34 = 0;
                  goto LABEL_29;
                }
              }

              v35 = *(v0 + 80);
              swift_unknownObjectRelease();
              v34 = *(v35 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpec) != 0;
LABEL_29:
              v36 = *(v2 + v3);
              v37 = (v36 + 48);
              v38 = *(v36 + 16) + 1;
              do
              {
                if (!--v38)
                {
                  v53 = 0xE400000000000000;
                  v54 = 1702195828;
                  goto LABEL_35;
                }

                v39 = *v37;
                v37 += 24;
              }

              while (v39 != 255);
              if (!v34)
              {
                v51 = *(v0 + 80);
                v52 = *(v0 + 64);
                sub_18544();
                sub_A4B54(45);

                strcpy(&v57, "The flowSpec (");
                HIBYTE(v57._object) = -18;
                *(v0 + 40) = v52;
                type metadata accessor for BaseFlowSpec();

                v66._countAndFlagsBits = sub_A4644();
                sub_A46D4(v66);

                v67._countAndFlagsBits = 0xD00000000000001DLL;
                v67._object = 0x80000000000AE6B0;
                sub_A46D4(v67);
                countAndFlagsBits = v57._countAndFlagsBits;
                object = v57._object;
                goto LABEL_8;
              }

              v53 = 0xE500000000000000;
              v54 = 0x65736C6166;
LABEL_35:
              v55 = *(v0 + 80);
              v56 = *(v0 + 88);
              sub_18544();
              sub_A4B54(27);

              sub_10944();
              v57._countAndFlagsBits = 0xD000000000000018;
              v57._object = v40;
              if (v32 == -1)
              {
                v41._countAndFlagsBits = 1702195828;
              }

              else
              {
                v41._countAndFlagsBits = 0x65736C6166;
              }

              if (v32 == -1)
              {
                v42 = 0xE400000000000000;
              }

              else
              {
                v42 = 0xE500000000000000;
              }

              v41._object = v42;
              sub_A46D4(v41);

              v61._countAndFlagsBits = 44;
              v61._object = 0xE100000000000000;
              sub_A46D4(v61);
              v44 = v57._countAndFlagsBits;
              v43 = v57._object;
              sub_18544();
              sub_A4B54(43);

              sub_10944();
              v57._countAndFlagsBits = 0xD000000000000028;
              v57._object = v45;
              if (v34)
              {
                v46._countAndFlagsBits = 1702195828;
              }

              else
              {
                v46._countAndFlagsBits = 0x65736C6166;
              }

              if (v34)
              {
                v47 = 0xE400000000000000;
              }

              else
              {
                v47 = 0xE500000000000000;
              }

              v46._object = v47;
              sub_A46D4(v46);

              v62._countAndFlagsBits = 44;
              v62._object = 0xE100000000000000;
              sub_A46D4(v62);

              sub_A46D4(v57);

              sub_18544();
              sub_A4B54(41);

              sub_10944();
              v57._object = v48;
              v63._countAndFlagsBits = v54;
              v63._object = v53;
              sub_A46D4(v63);

              v64._object = 0x80000000000AE760;
              v64._countAndFlagsBits = 0xD000000000000017;
              sub_A46D4(v64);
              v49 = v57._object;
              v57._countAndFlagsBits = v44;
              v57._object = v43;

              v65._countAndFlagsBits = 0xD000000000000010;
              v65._object = v49;
              sub_A46D4(v65);

              sub_810AC(v44, v43, 0xD000000000000028, 0x80000000000AE620, 0xD000000000000017, 0x80000000000AE6D0);

              v50 = *(v55 + v56);
              *(v0 + 104) = v50;

              isUniquelyReferenced_nonNull_native = sub_17B18;
              v15 = v50;
              v16 = 0;

              return _swift_task_switch(isUniquelyReferenced_nonNull_native, v15, v16);
            }

LABEL_55:
            __break(1u);
            return _swift_task_switch(isUniquelyReferenced_nonNull_native, v15, v16);
          }
        }

        __break(1u);
        goto LABEL_55;
      }

      ++v5;
      v4 += 3;
    }

    v7 = *(v0 + 80);
    v8 = *(v0 + 64);
    sub_18544();
    sub_A4B54(22);

    sub_10944();
    v57._countAndFlagsBits = 0xD000000000000014;
    v57._object = v9;
    *(v0 + 40) = v8;
    type metadata accessor for BaseFlowSpec();

    v60._countAndFlagsBits = sub_A4644();
    sub_A46D4(v60);

    countAndFlagsBits = v57._countAndFlagsBits;
    object = v57._object;
LABEL_8:
    sub_810AC(countAndFlagsBits, object, 0xD000000000000028, 0x80000000000AE620, 0xD000000000000017, 0x80000000000AE6D0);
  }

  sub_AA9C();

  return v12();
}