uint64_t sub_10039FAB8()
{
  v0 = sub_10077015C();
  v4 = sub_10039FB38(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10039FB38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1007711BC();
    if (!v9 || (v10 = v9, v11 = sub_10039FC90(v9, 0), v12 = sub_10039FD04(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_10077007C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10077007C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1007714BC();
LABEL_4:

  return sub_10077007C();
}

void *sub_10039FC90(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_100955068);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10039FD04(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10039FF24(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1007700FC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1007714BC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10039FF24(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1007700DC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10039FF24(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10077010C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1007700EC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10039FFD0()
{
  result = qword_100955060;
  if (!qword_100955060)
  {
    sub_10000CE78(&unk_10094CE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955060);
  }

  return result;
}

unint64_t sub_1003A0048()
{
  result = qword_100955070;
  if (!qword_100955070)
  {
    sub_10076935C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955070);
  }

  return result;
}

uint64_t sub_1003A00A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34[-1] - v4;
  v6 = sub_10076933C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A5D4(&qword_100942C70);
  v10 = sub_10076FCEC();
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v11 = v34[0];
  sub_10076934C();
  v12 = (*(v7 + 88))(v9, v6);
  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.messages(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = *v9;
    v14 = v9[1];
    v15 = sub_10076FCEC();
    sub_10075F6CC();
    v16 = sub_100016F40(0, &qword_1009471F0);
    v17 = sub_10077068C();
    v35 = v16;
    v36 = &protocol witness table for OS_dispatch_queue;
    v34[0] = v17;
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = a2;

    sub_10075F67C();

    sub_10000CD74(v34);
    sub_10076FC4C();

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.player(_:))
  {
    (*(v7 + 96))(v9, v6);
    v19 = *v9;
    v20 = v9[1];
    v21 = sub_1007702EC();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v20;
    v22[6] = v11;
    v22[7] = v10;

    v23 = &unk_10079F5C0;
LABEL_7:
    sub_10016FE40(0, 0, v5, v23, v22);

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.contact(_:))
  {
    (*(v7 + 96))(v9, v6);
    v33 = *v9;
    v24 = v9[2];
    v25 = v9[3];
    v26 = sub_1007702EC();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + 2) = v33;
    v22[6] = v24;
    v22[7] = v25;
    v22[8] = v11;
    v22[9] = v10;

    v23 = &unk_10079F5B0;
    goto LABEL_7;
  }

  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v27 = sub_10076FD4C();
  *&v33 = sub_10000A61C(v27, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  v28 = sub_10076FCEC();
  sub_10075F6CC();
  v29 = sub_100016F40(0, &qword_1009471F0);
  v30 = sub_10077068C();
  v35 = v29;
  v36 = &protocol witness table for OS_dispatch_queue;
  v34[0] = v30;
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = a2;

  sub_10075F67C();

  sub_10000CD74(v34);
  sub_10076FC4C();

  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_1003A06B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_10076F50C();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_10075F69C();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003A07D0, 0, 0);
}

uint64_t sub_1003A07D0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  sub_10075F6CC();
  *v1 = v5;
  v1[1] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.player(_:), v3);

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1003A08CC;
  v7 = v0[19];
  v8 = v0[12];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v7, v8);
}

uint64_t sub_1003A08CC()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003A0B00;
  }

  else
  {
    v5 = sub_1003A0A3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A0A3C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_10076FCBC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A0B00()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000DB7C(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_10076F32C();
  sub_1000258C0((v0 + 2));
  sub_10076FBEC();

  sub_10076FCAC();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A0D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = sub_10076F50C();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_10075F69C();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003A0E54, 0, 0);
}

uint64_t sub_1003A0E54()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  sub_10075F6CC();
  *v1 = v7;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.contact(_:), v3);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_1003A0F68;
  v9 = v0[21];
  v10 = v0[14];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v9, v10);
}

uint64_t sub_1003A0F68()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003A119C;
  }

  else
  {
    v5 = sub_1003A10D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A10D8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_10076FCBC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A119C()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000DB7C(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_10076F32C();
  sub_1000258C0((v0 + 2));
  sub_10076FBEC();

  sub_10076FCAC();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A13C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_10075F6CC();
    v8 = a1;
    sub_10075F6AC();
    v9 = swift_allocObject();
    *(v9 + 16) = a5;
    *(v9 + 24) = a2;
    v10 = sub_100016F40(0, &qword_1009471F0);
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_10077068C();
    sub_10076FC6C();

    return sub_10000CD74(v13);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_1003A1F80();
    swift_allocError();
    sub_10076FCAC();
  }
}

uint64_t sub_1003A1674(void **a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = sub_10075F65C();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100765F6C();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100766EDC();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076F4FC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_10076C15C();
  __chkstk_darwin(v19);
  v21 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  (*(v22 + 104))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.viewController(_:));
  v23 = sub_10075DB7C();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = sub_10076096C();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v35 = sub_100016F40(0, &qword_1009453B0);
  v34 = v21;
  v25 = v21;
  sub_10076F4DC();
  (*(v9 + 104))(v11, enum case for FlowPresentationContext.infer(_:), v28);
  (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v29);
  (*(v4 + 104))(v30, enum case for FlowOrigin.inapp(_:), v31);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v26 = sub_10075F5EC();
  sub_100563FF8(v26, 1, v32);
  sub_10076FC4C();
}

uint64_t sub_1003A1B60()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1003A1CD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1003A1D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000257CC;

  return sub_1003A0D28(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1003A1E14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A1E64(uint64_t a1)
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
  v10[1] = sub_100025A64;

  return sub_1003A06B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1003A1F38()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1003A1F80()
{
  result = qword_100955078;
  if (!qword_100955078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955078);
  }

  return result;
}

uint64_t sub_1003A1FD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003A2038()
{
  result = qword_100955080;
  if (!qword_100955080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955080);
  }

  return result;
}

id sub_1003A2094()
{
  sub_10000A5D4(&qword_100955088);
  inited = swift_initStackObject();
  v2 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 16) = xmmword_100784500;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 0;
  *(inited + 48) = v3;
  *(inited + 56) = 6;
  v4 = v2;
  v5 = v3;
  v6 = sub_1000FE1FC(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100955090);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_10000A5D4(&qword_100955098);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_100783DD0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_10000A5D4(&qword_1009550A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_10000A5D4(&qword_1009550A8);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_1000FE2E8(v8);
  swift_setDeallocating();
  sub_1003A22E4(v8 + 32);
  type metadata accessor for AttributeName(0);
  sub_1003A234C();
  isa = sub_10076FE3C().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  [v0 pointSize];
  v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

  return v14;
}

uint64_t sub_1003A22E4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003A234C()
{
  result = qword_100941C98;
  if (!qword_100941C98)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941C98);
  }

  return result;
}

unint64_t sub_1003A23B8()
{
  result = qword_1009550B0;
  if (!qword_1009550B0)
  {
    sub_1007650DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009550B0);
  }

  return result;
}

uint64_t sub_1003A2418(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_10075F65C();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100765F6C();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766EDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_10076C15C();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reportAConcern(_:));
  v21 = sub_10075DB7C();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_10076096C();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_1007650DC();
  v32 = v28;

  sub_10076F4DC();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.presentModalFormSheet(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v23 = sub_10075F5EC();
  v24 = sub_100563FF8(v23, 1, v31);

  return v24;
}

id sub_1003A28E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_100955118);
  __chkstk_darwin(v10);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViewCount] = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_10076D4CC();
  sub_1003A59A0();
  sub_10076E18C();
  swift_weakInit();
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_todayCardStyle;
  v13 = enum case for TodayCard.Style.light(_:);
  v14 = sub_10076C7EC();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_wantsCardConsistentMargins] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_10000A5D4(&unk_100945BF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100783DD0;
  *(v17 + 32) = sub_10076E88C();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v19[3] = ObjectType;
  v19[0] = v16;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v19);
  return v16;
}

void sub_1003A2BD0()
{
  v1 = v0;
  v2 = sub_10076C7EC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded] & 1) != 0 || v0[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory] != 6 || (v7 = [v0 traitCollection], v8 = sub_10077071C(), v7, (v8))
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_todayCardStyle;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v1[v9], v2);
    v10 = sub_100312114(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
  }

  [v1 setBackgroundColor:v10];
}

int64_t sub_1003A2D70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v8 = v6;
  v93 = a6;
  v85 = a2;
  v12 = a5;
  v13 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v13 - 8);
  v96 = v81 - v14;
  v15 = sub_10076BF6C();
  __chkstk_darwin(v15 - 8);
  v92 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076BEDC();
  v17 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076C7EC();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory);
  *(v8 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory) = a5;
  if (v12 == 7)
  {
    if (v24 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v8 setNeedsLayout];
    goto LABEL_6;
  }

  if (v24 == 7)
  {
    goto LABEL_5;
  }

  switch(v12)
  {
    case 6:
      if (v24 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v24 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v24 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v24 - 7) > 0xFFFFFFFC || v24 != v12)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  (*(v20 + 16))(v23, a4, v19, v21);
  v25 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_todayCardStyle;
  swift_beginAccess();
  (*(v20 + 24))(v8 + v25, v23, v19);
  swift_endAccess();
  sub_1003A2BD0();
  (*(v20 + 8))(v23, v19);
  v26 = a1;
  v27 = sub_100768A9C();
  v28 = v27;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  v30 = v27 >> 62;
  if (v27 >> 62)
  {
    while (1)
    {
      if (v28 < 0)
      {
        v26 = v28;
      }

      else
      {
        v26 = v29;
      }

      v79 = sub_10077158C();
      if (sub_10077158C() < 0)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v79 >= 6)
      {
        v80 = 6;
      }

      else
      {
        v80 = v79;
      }

      if (v79 >= 0)
      {
        v7 = v80;
      }

      else
      {
        v7 = 6;
      }

      result = sub_10077158C();
      if (result < v7)
      {
        goto LABEL_130;
      }

LABEL_11:
      if ((v28 & 0xC000000000000001) != 0 && v7)
      {
        v26 = sub_10076BC0C();

        sub_10077147C(0);
        if (v7 != 1)
        {
          sub_10077147C(1);
          if (v7 != 2)
          {
            sub_10077147C(2);
            if (v7 != 3)
            {
              sub_10077147C(3);
              if (v7 != 4)
              {
                sub_10077147C(4);
                if (v7 != 5)
                {
                  sub_10077147C(5);
                }
              }
            }
          }
        }
      }

      else
      {
      }

      v95 = v17;

      if (v30)
      {
        v17 = sub_10077159C();
        v97 = v32;
        v30 = v33;
        v26 = v34;

        v7 = v26 >> 1;
      }

      else
      {
        v17 = v28 & 0xFFFFFFFFFFFFFF8;
        v97 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      if (__OFSUB__(v7, v30))
      {
        goto LABEL_114;
      }

      sub_1003A3BF4(v7 - v30, v93);
      *(v8 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViewCount) = v7 - v30;
      v26 = [v8 traitCollection];
      [v8 bounds];
      Width = CGRectGetWidth(v100);
      if ((sub_10077071C() & 1) == 0)
      {
        v41 = ASKDeviceTypeGetCurrent();
        v42 = sub_10076FF9C();
        v44 = v43;
        if (v42 != sub_10076FF9C() || v44 != v45)
        {
          sub_10077167C();
        }

        if (sub_10077071C())
        {
          v46 = v30;
          v47 = [v26 preferredContentSizeCategory];
          v30 = UIContentSizeCategoryAccessibilityExtraLarge;
          v48 = UIContentSizeCategoryAccessibilityMedium;
          v49 = UIContentSizeCategoryAccessibilityExtraLarge;
          if (sub_10077088C())
          {
            v30 = v46;
            if (sub_10077087C())
            {
              v50 = sub_10077088C();

              if (v50)
              {
                goto LABEL_62;
              }
            }

            else
            {
            }

            if (qword_100941428 == -1)
            {
LABEL_61:
              floor(sub_100587DD0(v26, &xmmword_1009A2D20, 1));
LABEL_62:
              v82 = sub_1000FC7A8(&off_100882440);

              goto LABEL_71;
            }

LABEL_122:
            swift_once();
            goto LABEL_61;
          }

LABEL_118:
          __break(1u);
        }

        else if (qword_100941428 == -1)
        {
          goto LABEL_62;
        }

        swift_once();
        goto LABEL_62;
      }

      v98 = v30;
      v30 = &off_100911000;
      v36 = [v26 preferredContentSizeCategory];
      v37 = UIContentSizeCategoryAccessibilityMedium;
      v38 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_10077088C() & 1) == 0)
      {
        goto LABEL_115;
      }

      if (sub_10077087C())
      {
        v39 = sub_10077088C();

        v40 = 20.0;
        if (v39)
        {
          if (Width <= 405.0)
          {
            v40 = 10.0;
          }

          else
          {
            v40 = 16.0;
          }
        }
      }

      else
      {

        v40 = 20.0;
      }

      v51 = [v26 preferredContentSizeCategory];
      v52 = v37;
      v53 = v38;
      if ((sub_10077088C() & 1) == 0)
      {
        goto LABEL_116;
      }

      if (sub_10077087C())
      {
        v54 = sub_10077088C();

        if (v54)
        {
          v55 = 1;
          if ((sub_10077071C() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }
      }

      else
      {
      }

      v55 = 2;
      if ((sub_10077071C() & 1) == 0)
      {
LABEL_51:
        if (qword_100941428 != -1)
        {
          swift_once();
        }

        goto LABEL_67;
      }

LABEL_55:
      v56 = [v26 preferredContentSizeCategory];
      v57 = v52;
      v58 = v53;
      if ((sub_10077088C() & 1) == 0)
      {
        __break(1u);
        goto LABEL_122;
      }

      if (sub_10077087C())
      {
        v59 = sub_10077088C();

        if (v59)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      if (qword_100941428 != -1)
      {
        swift_once();
      }

      floor((sub_100587DD0(v26, &xmmword_1009A2D20, 1) - v40 * (v55 - 1)) / v55);
LABEL_67:
      v60 = [v26 preferredContentSizeCategory];
      v30 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      v61 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v62 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if ((sub_10077088C() & 1) == 0)
      {
        goto LABEL_117;
      }

      if (sub_10077087C())
      {
        sub_10077088C();
      }

      v82 = sub_1000FC7A8(_swiftEmptyArrayStorage);

      v30 = v98;
LABEL_71:
      v28 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews;
      swift_beginAccess();
      v84 = v8;
      v63 = *(v8 + v28);

      v83 = v17;
      swift_unknownObjectRetain();
      if (v30 == v7)
      {
LABEL_72:

        swift_unknownObjectRelease();
        v64 = v84;
        sub_1003A2BD0();
        [v64 setNeedsLayout];
        return swift_unknownObjectRelease();
      }

      v65 = 0;
      v8 = (v63 & 0xFFFFFFFFFFFFFF8);
      if (v63 < 0)
      {
        v66 = v63;
      }

      else
      {
        v66 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      v81[1] = v66;
      v86 = v7;
      v87 = (v95 + 8);
      v29 = v63 >> 62;
      v94 = v63 & 0xC000000000000001;
      v95 = v63 >> 62;
      v88 = v63 & 0xFFFFFFFFFFFFFF8;
      v89 = v63;
      while (v30 < v7)
      {
        v17 = *(v97 + 8 * v30);
        if (v95)
        {
          if (v65 == sub_10077158C())
          {
            goto LABEL_72;
          }
        }

        else if (v65 == v8[2])
        {
          goto LABEL_72;
        }

        if (v94)
        {

          v67 = sub_10077149C();
        }

        else
        {
          v29 = v8[2];
          if (v65 >= v29)
          {
            goto LABEL_108;
          }

          v28 = *(v63 + 8 * v65 + 32);

          v67 = v28;
        }

        v68 = v67;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_107;
        }

        v69 = sub_10076BB5C();
        if (v69)
        {
          v28 = v69;
          v98 = v30;
          v70 = sub_10076B9FC();
          v71 = v90;
          sub_10076BEEC();
          sub_10076BE9C();
          (*v87)(v71, v91);
          sub_10076BFCC();
          v72 = *&v68[OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView];
          sub_10076BF7C();
          sub_10075FCCC();
          [v72 setContentMode:sub_10076BDBC()];
          sub_100764ADC();
          sub_10075FD0C();
          if (!sub_10076BE1C())
          {
            sub_1000325F0();
            sub_100770D5C();
          }

          sub_10075FB8C();
          sub_10075FD2C();
          sub_1003A6730(&qword_100941820, &type metadata accessor for ArtworkView);
          sub_100760B8C();
          if (v70)
          {
            v99 = v70;
            sub_10076B90C();
            sub_10076F64C();
            sub_1003A6730(&qword_100956710, &type metadata accessor for Action);

            v73 = v96;
            sub_10076F56C();

            v74 = 0;
            v7 = v86;
            v30 = v98;
          }

          else
          {

            v74 = 1;
            v7 = v86;
            v30 = v98;
            v73 = v96;
          }

          v75 = sub_10000A5D4(&qword_100955BD0);
          (*(*(v75 - 8) + 56))(v73, v74, 1, v75);
          v76 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_clickAction;
          swift_beginAccess();
          sub_1002F0390(v73, &v68[v76]);
          swift_endAccess();
          v77 = v68;
          sub_10076BB6C();
          v8 = v88;
          if (v78)
          {
            v68 = sub_10076FF6C();
          }

          else
          {
            v68 = 0;
          }

          [v77 setAccessibilityLabel:v68];

          v63 = v89;
        }

        else
        {
        }

        ++v30;

        ++v65;
        if (v7 == v30)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
    }
  }

  result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = result;
  }

  if (result >= v7)
  {
    goto LABEL_11;
  }

LABEL_130:
  __break(1u);
  return result;
}

void sub_1003A3BF4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    if (sub_10077158C() == a1)
    {
      return;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == a1)
  {
    return;
  }

  v8 = *&v3[v6];
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v10 = *&v3[v6];
  v11 = v10 >> 62;
  if (v9 >= a1)
  {
    if (!v11)
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 - a1;
      if (!__OFSUB__(v15, a1))
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    if (v11)
    {
      v23 = sub_10077158C();
      v13 = a1 - v23;
      if (!__OFSUB__(a1, v23))
      {
LABEL_10:
        if ((v13 & 0x8000000000000000) == 0)
        {
          for (; v13; --v13)
          {
            swift_beginAccess();
            sub_10000A5D4(&qword_100955218);
            sub_10076E15C();
            swift_endAccess();
            [v3 addSubview:v25];
            swift_beginAccess();
            v14 = v25;
            sub_10077019C();
            if (*((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
            swift_endAccess();
          }

          return;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = a1 - v12;
      if (!__OFSUB__(a1, v12))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v24 = sub_10077158C();
  v16 = v24 - a1;
  if (__OFSUB__(v24, a1))
  {
    goto LABEL_39;
  }

LABEL_18:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    return;
  }

  for (; v16; --v16)
  {
    swift_beginAccess();
    a1 = *&v3[v6];
    if (a1 >> 62)
    {
      if (!sub_10077158C())
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v9 = sub_10077158C();
        goto LABEL_7;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v3[v6] = a1;
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_1004BE250(a1);
    }

    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18 - 1;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 0x20);
    *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v19;
    *&v3[v6] = a1;
    swift_endAccess();
    if (a2)
    {
      v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView];
      sub_10075FD2C();
      sub_1003A6730(&qword_100941820, &type metadata accessor for ArtworkView);
      v22 = v21;
      sub_100760BFC();
    }

    [v20 removeFromSuperview];
    v25 = v20;
    swift_beginAccess();
    sub_10000A5D4(&qword_100955218);
    sub_10076E17C();
    swift_endAccess();
  }
}

id sub_1003A3FBC@<X0>(void *a1@<X8>)
{
  type metadata accessor for TodayCardChinLockupListIconView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1003A3FFC()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_10076D1FC();
  v63 = *(v4 - 8);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v59.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69[0].receiver = v2;
  v69[0].super_class = ObjectType;
  [(objc_super *)v69 layoutSubviews];
  v8 = [v2 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v72);
  v62 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory;
  v10 = v2[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory];
  v61 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded;
  v11 = v2[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded];
  v12 = sub_10077071C();
  v64 = v4;
  if (v12)
  {
    v11 = &off_100911000;
    v13 = [v8 preferredContentSizeCategory];
    LOBYTE(v10) = UIContentSizeCategoryAccessibilityExtraLarge;
    v14 = UIContentSizeCategoryAccessibilityMedium;
    v15 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_10077088C())
    {
      if (sub_10077087C())
      {
        v16 = sub_10077088C();

        v17 = 20.0;
        v18 = 10.0;
        if (Width > 405.0)
        {
          v18 = 16.0;
        }

        if (v16)
        {
          v1 = v18;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v31 = [v8 preferredContentSizeCategory];
      v32 = v14;
      v33 = v15;
      if (sub_10077088C())
      {
        if (sub_10077087C())
        {
          v34 = sub_10077088C();

          if (v34)
          {
            v10 = 1;
            if ((sub_10077071C() & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_33:
            v35 = [v8 preferredContentSizeCategory];
            v36 = v32;
            v37 = v33;
            if (sub_10077088C())
            {
              if (sub_10077087C())
              {
                v38 = sub_10077088C();

                if (v38)
                {
                  if (Width <= 405.0)
                  {
                    v24 = 68.0;
                  }

                  else
                  {
                    v24 = 120.0;
                  }

LABEL_54:
                  v25 = v24;
LABEL_55:
                  v47 = [v8 v11[224]];
                  v48 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v49 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_10077088C())
                  {
                    if (sub_10077087C())
                    {
                      v50 = sub_10077088C();

                      if (v50)
                      {
                        v44 = 1;
LABEL_61:
                        v43 = sub_1000FC7A8(_swiftEmptyArrayStorage);

                        v46 = v1;
                        v45 = v1;
                        v59 = xmmword_10079F760;
                        v60 = xmmword_10079F760;
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                    }

                    v44 = 0;
                    goto LABEL_61;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
              }

              if (qword_100941428 != -1)
              {
                swift_once();
              }

              v24 = floor((sub_100587DD0(v8, &xmmword_1009A2D20, 1) - v1 * (v10 - 1)) / v10);
              goto LABEL_54;
            }

            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
        }

        v10 = 2;
        if ((sub_10077071C() & 1) == 0)
        {
LABEL_29:
          if (qword_100941428 == -1)
          {
LABEL_30:
            v25 = *(&xmmword_1009A2D20 + 1);
            v24 = *&xmmword_1009A2D20;
            goto LABEL_55;
          }

LABEL_70:
          swift_once();
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = ASKDeviceTypeGetCurrent();
  v20 = sub_10076FF9C();
  v22 = v21;
  if (v20 == sub_10076FF9C() && v22 == v23)
  {

    v1 = 16.0;
    if ((sub_10077071C() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v27 = [v8 preferredContentSizeCategory];
    v28 = UIContentSizeCategoryAccessibilityMedium;
    v29 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_10077088C() & 1) == 0)
    {
      __break(1u);
      goto LABEL_70;
    }

    if (sub_10077087C())
    {
      v30 = sub_10077088C();

      if (v30)
      {
        if (Width <= 405.0)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 120.0;
        }

        goto LABEL_42;
      }
    }

    else
    {
    }

    if (qword_100941428 == -1)
    {
LABEL_41:
      v24 = floor(sub_100587DD0(v8, &xmmword_1009A2D20, 1));
LABEL_42:
      v25 = v24;
      goto LABEL_43;
    }

LABEL_72:
    swift_once();
    goto LABEL_41;
  }

  v26 = sub_10077167C();

  if (v26)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (sub_10077071C())
  {
    goto LABEL_18;
  }

LABEL_12:
  if (qword_100941428 != -1)
  {
LABEL_68:
    swift_once();
  }

  v25 = *(&xmmword_1009A2D20 + 1);
  v24 = *&xmmword_1009A2D20;
LABEL_43:
  if (v10 == 6)
  {
    v39 = v11;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  v41 = vdupq_n_s64(v40);
  v42 = vbslq_s8(v41, xmmword_10079F750, *&UIEdgeInsetsZero.top);
  v59 = vbslq_s8(v41, xmmword_10079F750, *&UIEdgeInsetsZero.bottom);
  v60 = v42;
  v43 = sub_1000FC7A8(&off_100883358);

  v44 = 0;
  v45 = 22.0;
  v46 = 8.0;
  v10 = 1;
LABEL_62:
  swift_beginAccess();

  v52 = sub_10016E7D8(v51);

  v53 = v2[v62];
  v54 = v2[v61];
  *&v65.receiver = v24;
  *&v65.super_class = v25;
  *&v66.receiver = v1;
  *&v66.super_class = v46;
  *&v67.receiver = v45;
  v67.super_class = v10;
  LOBYTE(v68[0]) = v44;
  *(v68 + 1) = v71[0];
  DWORD1(v68[0]) = *(v71 + 3);
  *(&v68[1] + 8) = v59;
  *(v68 + 8) = v60;
  *(&v68[2] + 1) = v43;
  *&v68[3] = v52;
  BYTE8(v68[3]) = v53;
  BYTE9(v68[3]) = v54;
  v69[5] = v68[1];
  v70[0] = v68[2];
  v69[1] = v65;
  v69[2] = v66;
  v69[3] = v67;
  v69[4] = v68[0];
  *(v70 + 10) = *(&v68[2] + 10);
  [v2 bounds];
  sub_1005CCCB8(v2);
  sub_1003A68AC(&v65);
  (*(v63 + 8))(v7, v64);
  v55 = &v2[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v57 = *v55;
  if (*v55)
  {

    v57(v58);
    return sub_1000167E0(v57);
  }

  return result;
}

double sub_1003A4884()
{
  v2 = v0;
  v3 = [v0 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v71);
  v5 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory;
  v6 = v2[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory];
  v7 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded;
  v8 = v2[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded];
  if (sub_10077071C())
  {
    v6 = &off_100911000;
    v9 = [v3 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryAccessibilityMedium;
    v11 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_10077088C())
    {
      if (sub_10077087C())
      {
        v12 = sub_10077088C();

        v13 = 20.0;
        v14 = 10.0;
        if (Width > 405.0)
        {
          v14 = 16.0;
        }

        if (v12)
        {
          v1 = v14;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v28 = [v3 preferredContentSizeCategory];
      v29 = v10;
      v30 = v11;
      if (sub_10077088C())
      {
        if (sub_10077087C())
        {
          v31 = sub_10077088C();

          if (v31)
          {
            v8 = 1;
            if ((sub_10077071C() & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_35:
            v32 = [v3 preferredContentSizeCategory];
            v33 = v29;
            v34 = v30;
            if (sub_10077088C())
            {
              if (sub_10077087C())
              {
                v35 = sub_10077088C();

                if (v35)
                {
                  if (Width <= 405.0)
                  {
                    v22 = 68.0;
                  }

                  else
                  {
                    v22 = 120.0;
                  }

LABEL_56:
                  v23 = v22;
LABEL_57:
                  v43 = [v3 v6[224]];
                  v44 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v45 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_10077088C())
                  {
                    if (sub_10077087C())
                    {
                      v46 = sub_10077088C();

                      if (v46)
                      {
                        v40 = 1;
LABEL_63:
                        v39 = sub_1000FC7A8(_swiftEmptyArrayStorage);

                        v42 = v1;
                        v41 = v1;
                        v62 = xmmword_10079F760;
                        v63 = xmmword_10079F760;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                    }

                    v40 = 0;
                    goto LABEL_63;
                  }

                  goto LABEL_73;
                }
              }

              else
              {
              }

              if (qword_100941428 != -1)
              {
                swift_once();
              }

              v22 = floor((sub_100587DD0(v3, &xmmword_1009A2D20, 1) - v1 * (v8 - 1)) / v8);
              goto LABEL_56;
            }

            __break(1u);
            goto LABEL_78;
          }
        }

        else
        {
        }

        v8 = 2;
        if ((sub_10077071C() & 1) == 0)
        {
LABEL_31:
          if (qword_100941428 == -1)
          {
LABEL_32:
            v23 = *(&xmmword_1009A2D20 + 1);
            v22 = *&xmmword_1009A2D20;
            goto LABEL_57;
          }

LABEL_76:
          swift_once();
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v15 = ASKDeviceTypeGetCurrent();
  v16 = sub_10076FF9C();
  v18 = v17;
  if (v16 == sub_10076FF9C() && v18 == v19)
  {

    v1 = 16.0;
    if ((sub_10077071C() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v24 = [v3 preferredContentSizeCategory];
    v25 = UIContentSizeCategoryAccessibilityMedium;
    v26 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_10077088C() & 1) == 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    if (sub_10077087C())
    {
      v27 = sub_10077088C();

      if (v27)
      {
        if (Width <= 405.0)
        {
          v22 = 68.0;
        }

        else
        {
          v22 = 120.0;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (qword_100941428 == -1)
    {
LABEL_43:
      v22 = floor(sub_100587DD0(v3, &xmmword_1009A2D20, 1));
LABEL_44:
      v23 = v22;
      goto LABEL_45;
    }

LABEL_78:
    swift_once();
    goto LABEL_43;
  }

  v21 = sub_10077167C();

  if (v21)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (sub_10077071C())
  {
    goto LABEL_20;
  }

LABEL_17:
  if (qword_100941428 != -1)
  {
LABEL_74:
    swift_once();
  }

  v23 = *(&xmmword_1009A2D20 + 1);
  v22 = *&xmmword_1009A2D20;
LABEL_45:
  if (v6 == 6)
  {
    v36 = v8;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  v38 = vdupq_n_s64(v37);
  v62 = vbslq_s8(v38, xmmword_10079F750, *&UIEdgeInsetsZero.bottom);
  v63 = vbslq_s8(v38, xmmword_10079F750, *&UIEdgeInsetsZero.top);
  v39 = sub_1000FC7A8(&off_1008833F0);

  v40 = 0;
  v41 = 22.0;
  v42 = 8.0;
  v8 = 1;
LABEL_64:
  swift_beginAccess();

  v48 = sub_10016E7D8(v47);

  v49 = v2[v5];
  v50 = v2[v7];
  *&v64 = v22;
  *(&v64 + 1) = v23;
  *&v65 = v1;
  *(&v65 + 1) = v42;
  *&v66 = v41;
  *(&v66 + 1) = v8;
  v67[0] = v40;
  *&v67[1] = v70[0];
  *&v67[4] = *(v70 + 3);
  *&v67[24] = v62;
  *&v67[8] = v63;
  *&v67[40] = v39;
  *&v67[48] = v48;
  v67[56] = v49;
  v67[57] = v50;
  v68[4] = *&v67[16];
  v69[0] = *&v67[32];
  v68[0] = v64;
  v68[1] = v65;
  v68[2] = v66;
  v68[3] = *v67;
  *(v69 + 10) = *&v67[42];
  v51 = [v2 traitCollection];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_100587DD0(v51, &xmmword_1009A2D20, 1);
  sub_10077071C();
  sub_1007704EC();
  sub_10077071C();
  sub_1007704EC();

  v52 = [v2 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1007841E0;
  *(v53 + 32) = v52;
  v54 = v52;
  v55 = sub_10076DEEC();
  sub_1003A6550(v55, v68);
  v57 = v56;
  sub_1003A68AC(&v64);

  if (v2[v7] & 1) != 0 || v2[v5] != 6 || (v58 = [v2 traitCollection], v59 = sub_10077071C(), v58, (v59))
  {
    v60 = [v2 traitCollection];
    sub_100587DD0(v60, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    sub_10077071C();
    sub_1007704EC();
  }

  return v57;
}

uint64_t sub_1003A51F0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_10077158C();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView];
      sub_10075FD2C();
      sub_1003A6730(&qword_100941820, &type metadata accessor for ArtworkView);
      v9 = v8;
      sub_100760BFC();
    }

    while (v4 != v5);
  }

  return result;
}

void sub_1003A5358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {

    return;
  }

  v14 = v13;
  sub_10000A570(a3, v27);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C84C();
  if ((swift_dynamicCast() & 1) == 0 || (v15 = sub_10076C83C(), , !v15))
  {

LABEL_18:

    return;
  }

  sub_100768AAC();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_18;
  }

  v16 = sub_100768A9C();
  v17 = v16;
  if (v16 >> 62)
  {
    v21 = v16;
    v18 = sub_10077158C();
    v17 = v21;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_24:

    goto LABEL_18;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_8:
  v22[1] = v15;
  v25 = v14;
  if (v18 >= 1)
  {
    v19 = 0;
    v26 = v17 & 0xC000000000000001;
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    do
    {
      v20 = v18;
      if (v26)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_10076BACC();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_10000CFBC(v6, &qword_1009492E0);
      }

      else
      {
        (*v24)(v10, v6, v7);
        [v12 frame];
        sub_1007660EC();

        (*v23)(v10, v7);
      }

      ++v19;
      v18 = v20;
    }

    while (v20 != v19);
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1003A5820()
{
  sub_1003A5930();
  if (v0 <= 0x3F)
  {
    sub_10076C7EC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003A5930()
{
  if (!qword_100955110)
  {
    sub_10000CE78(&qword_100955118);
    sub_1003A59A0();
    v0 = sub_10076E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_100955110);
    }
  }
}

unint64_t sub_1003A59A0()
{
  result = qword_100955120;
  if (!qword_100955120)
  {
    sub_10000CE78(&qword_100955118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955120);
  }

  return result;
}

uint64_t sub_1003A5A2C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4);
}

uint64_t sub_1003A5A98()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1003A5AF8(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1003A5B90()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1003A5BEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_1003A5CAC(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_1003A6830;
}

char *sub_1003A5D74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView;
  sub_10075FD2C();
  *&v4[v11] = sub_10075FB3C();
  v12 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_clickAction;
  v13 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView;
  v16 = *&v14[OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = *&v14[v15];
  sub_10075FC1C();

  [*&v14[v15] setUserInteractionEnabled:0];
  v19 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v17 action:"handleTap"];
  [v19 setDelaysTouchesBegan:1];
  [v17 addGestureRecognizer:v19];

  return v17;
}

uint64_t sub_1003A6084()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10000A5D4(&qword_100955BD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_clickAction;
  swift_beginAccess();
  sub_1003A683C(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_100952650;
    v13 = v6;
    return sub_10000CFBC(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_100761FDC();
  v14 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100943200;
    v13 = v3;
    return sub_10000CFBC(v13, v12);
  }

  sub_100761FEC();
  v17 = sub_100761FDC();
  sub_100263BF0(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

void sub_1003A6468()
{
  sub_1001D92E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003A6550(void *a1, uint64_t a2)
{
  v4 = [a1 traitCollection];
  sub_1005CCFFC();

  sub_100770ACC();
  v6 = v5;
  v8 = v7;
  v9 = [a1 traitCollection];
  LOBYTE(v4) = sub_10077071C();

  if (v4)
  {
    sub_1005CD158(0, v12, 0.0, 0.0, v6, v8);
  }

  else
  {
    sub_1005CD9E8(0, v12, 0.0, 0.0, v6, v8);
  }

  sub_1003A6900(v12);
  sub_100770AEC();
  v10 = [a1 traitCollection];
  v11 = v10;
  if ((*(a2 + 105) & 1) == 0 && *(a2 + 104) == 6)
  {
    sub_10077071C();
  }

  else
  {
  }
}

uint64_t sub_1003A6730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003A6778()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003A67B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003A67E8()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1003A683C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100952650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003A6954()
{
  v1 = sub_10000A5D4(&qword_100955118);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViewCount) = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_10076D4CC();
  sub_1003A59A0();
  sub_10076E18C();
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_todayCardStyle;
  v4 = enum case for TodayCard.Style.light(_:);
  v5 = sub_10076C7EC();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  v6 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_wantsCardConsistentMargins) = 0;
  sub_10077156C();
  __break(1u);
}

__n128 sub_1003A6B10(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1003A6B44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A6B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
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
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003A6C08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A6C50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1003A6CAC(double a1)
{
  v2 = v1;
  sub_10000CF78((v1 + 56), *(v1 + 80));
  sub_10076E0FC();
  sub_10000CF78(v2 + 12, v2[15]);
  sub_10076E0FC();
  sub_10000CF78(v2 + 17, v2[20]);
  sub_10076E0FC();
  sub_10008325C(v1, v5);
  sub_10000CF78(v5, v5[3]);
  sub_10076D41C();
  sub_10000CD74(v5);
  return a1;
}

uint64_t sub_1003A6E18(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_10000CF78((v4 + 56), *(v4 + 80));
  sub_10076E0FC();
  v11 = v10 + 4.0;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v12 = CGRectGetWidth(v31) - v11 - *(v4 + 40);
  sub_10000CF78(v5 + 12, v5[15]);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetHeight(v32);
  sub_10076E0FC();
  v28 = v13;
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetHeight(v33);
  v29 = *(v4 + 48);
  sub_10000CF78(v5 + 17, v5[20]);
  sub_10076E0FC();
  v27 = v14;
  v16 = v15;
  v25 = v15;
  v26 = v17;
  v18 = v17;
  sub_10008325C(v4, v30);
  sub_10000CF78(v30, v30[3]);
  sub_10076D41C();
  v20 = v19;
  sub_10000CD74(v30);
  if (v20 <= v28 + v29 + v16 - v18)
  {
    v20 = v28 + v29 + v16 - v18;
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetMinX(v34);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  CGRectGetMinY(v35);
  if (v27 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v27;
  }

  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v22 = CGRectGetWidth(v36) - v21;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v23 = v26 + v20 + CGRectGetMinY(v37) - v25;
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetWidth(v38);
  v39.origin.x = v22;
  v39.origin.y = v23;
  v39.size.width = v27;
  v39.size.height = v25;
  CGRectGetMinY(v39);
  sub_10000CF78((v4 + 56), *(v4 + 80));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v4 + 136), *(v4 + 160));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v4 + 96), *(v4 + 120));
  sub_1007709CC();
  return sub_10076E0EC();
}

uint64_t sub_1003A71AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000832B8();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1003A7204()
{
  result = qword_100955220;
  if (!qword_100955220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955220);
  }

  return result;
}

unint64_t sub_1003A725C()
{
  result = qword_100955228;
  if (!qword_100955228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955228);
  }

  return result;
}

double sub_1003A730C(uint64_t a1)
{
  v2 = sub_10076063C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  (*(v7 + 8))(v9, v6);
  sub_100455D90(a1, v5);
  sub_10076462C();
  sub_1007605DC();
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v11;
}

double sub_1003A7524()
{
  v0 = sub_10076469C();
  v45 = *(v0 - 8);
  v46 = v0;
  __chkstk_darwin(v0);
  v2 = &v41[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10076063C();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v47 = &v41[-v6];
  __chkstk_darwin(v7);
  v9 = &v41[-v8];
  v10 = sub_10076C38C();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&unk_100946720);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41[-v15];
  sub_10076B90C();
  sub_1003A7C34(&qword_100956710, &type metadata accessor for Action);
  sub_10076332C();
  if (!v52)
  {
    return 0.0;
  }

  v51 = v52;

  sub_10000A5D4(&unk_1009520F0);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v52, *(&v53 + 1));
    v42 = sub_10076968C();
    sub_10000CD74(&v52);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    sub_1001E5E88(&v52);
    v42 = 0;
  }

  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v14 + 8))(v16, v13);
  if (v52 == 1)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v43 + 8))(v12, v44);
    sub_1007632FC();
    sub_100455D90(v2, v9);
    (*(v45 + 8))(v2, v46);
    v18 = sub_100630CB4();
    swift_getObjectType();
    sub_100293A18(v9, v18);
    v17 = v19;

    swift_unknownObjectRelease();
    (*(v49 + 8))(v9, v50);
  }

  else
  {
    v20 = ASKDeviceTypeGetCurrent();
    v21 = sub_10076FF9C();
    v23 = v22;
    v24 = sub_10076FF9C();
    v26 = v49;
    if (v21 != v24 || v23 != v25)
    {
      sub_10077167C();
    }

    sub_1007632FC();
    v27 = v47;
    sub_100455D90(v2, v47);
    (*(v45 + 8))(v2, v46);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v43 + 8))(v12, v44);
    v28 = v50;
    (*(v26 + 16))(v48, v27, v50);
    v29 = sub_100630CB4();
    v30 = sub_10076B8EC();
    v32 = v31;
    v33 = sub_10076B8FC();
    if (v33)
    {
    }

    v34 = v33 != 0;
    swift_getObjectType();
    v35 = sub_100630CB4();
    swift_getObjectType();
    v36 = sub_10045B094(v35);
    swift_unknownObjectRelease();
    v37 = v48;
    sub_100293124(v48, v29, v30, v32, v34, v36, v42 & 1);
    v17 = v38;

    swift_unknownObjectRelease();

    v39 = *(v26 + 8);
    v39(v37, v28);
    v39(v47, v28);
  }

  return v17;
}

uint64_t sub_1003A7C34(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1003A7C8C(char a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_isCollapsing) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_isCollapsing) = a1;
  *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing) = a1;
  [*(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton) setAlpha:0.0];
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView);

  return [v3 setAlpha:0.0];
}

void sub_1003A7D38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_isCollapsing] = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v10 = sub_10076F4FC();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_objectGraph] = a2;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_presenter] = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_artworkLoader] = v25;

  sub_100760C5C();

  sub_100760C0C();

  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver];
  *(v12 + 3) = sub_10075F11C();
  *(v12 + 4) = &protocol witness table for BasePresenter;
  *v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageView());

  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView] = sub_100502A08(a2);
  v14 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate());
  v15 = a3;
  v16 = sub_100215438(a3);

  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_containerTransitioningDelegate] = v16;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_100767D5C();
  v18 = v17;
  sub_10076FC1C();
  v19 = v25;
  v20 = v18;
  sub_100767D2C();

  sub_1003ABBD8(&qword_1009552C8, type metadata accessor for AppPromotionDetailPageViewController);
  sub_10075F10C();
  v21 = [v20 view];

  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = [v20 view];
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v22 setClipsToBounds:0];

  v23 = [v20 view];
  if (v23)
  {
    [v23 addSubview:*&v20[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1003A8204()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView] + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_delegate + 8) = &off_1008932D8;
  swift_unknownObjectWeakAssign();
  return sub_100760C9C();
}

void sub_1003A83D0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1003ABBD8(&qword_100942810, type metadata accessor for VideoView);
  }

  sub_1003ABBD8(&qword_10095B3F0, type metadata accessor for AppPromotionDetailPageView);
  sub_100767D3C();
}

void sub_1003A8690(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  if (sub_100760C6C())
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v6 + 8))(v8, v5);
    sub_10076367C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v14 = v15[1];
  sub_100767CDC();
  sub_1005055B8();
}

uint64_t sub_1003A89D0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076FAAC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&unk_100946A10);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_10075F2AC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1, v14);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_10075F2BC();
  (*(v13 + 8))(v16, v12);
  if (sub_100760C6C())
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v19 + 8))(v7, v20);
    sub_10076369C();
    v17 = sub_1007636AC();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_10076368C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

void sub_1003A8DA0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  sub_1006D6E18();
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1003ABBD8(&qword_100942810, type metadata accessor for VideoView);
  }

  sub_1003ABBD8(&qword_10095B3F0, type metadata accessor for AppPromotionDetailPageView);
  sub_100767CFC();
}

uint64_t sub_1003A9114()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

uint64_t sub_1003A9314()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

void sub_1003A9530(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10000CF78(&v7[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v15 = v16[1];
  a3(v14);
}

id sub_1003A9748()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_1005A5D54([v1 setFrame:{v5, v7, v9, v11}]);
    v13 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_10077070C();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003A98CC(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_10077071C() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_10077071C();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_10075F0FC();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_10076FF9C();
  v12 = v11;
  if (v10 == sub_10076FF9C() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_10077167C();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003A9B70()
{
  v1 = sub_10075F2AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78((v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_10075F2BC();
  (*(v2 + 8))(v4, v1);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v5 = v6[1];
  sub_100767CBC();
}

id sub_1003A9E64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  sub_100767F7C();
  if (swift_dynamicCastClass())
  {

    sub_100767F1C();
    v7 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1003ABB68(v6, &v1[v7]);
    swift_endAccess();
    sub_100767F2C();
    v8 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1003ABB68(v6, &v1[v8]);
    swift_endAccess();
    sub_100767F4C();
  }

  else
  {
    sub_100764E1C();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_6;
    }

    sub_100764DBC();
    v9 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1003ABB68(v6, &v1[v9]);
    swift_endAccess();
    sub_100764DCC();
    v10 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1003ABB68(v6, &v1[v10]);
    swift_endAccess();
    sub_100764DEC();
  }

  v11 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_1003ABB68(v6, &v2[v11]);
  swift_endAccess();
LABEL_6:
  v12 = [v2 traitCollection];
  if (v12)
  {
    v13 = v12;
    if (sub_1007706EC())
    {
      sub_10077071C();
    }
  }

  result = [v2 view];
  if (result)
  {
    v15 = result;
    [result bounds];

    v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_artworkLoader];
    v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_objectGraph];

    sub_1006D7D00(a1, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003AA128(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_objectGraph;
  v7 = sub_10000A5D4(&unk_1009428E0);

  sub_10076F5AC();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200);
  }

  v10 = *(v1 + v6);

  sub_100263BF0(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_1003AA2B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F3C();

  sub_100761F8C();

  sub_100761F4C();

  v6 = sub_10075F0EC();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_objectGraph;
    v9 = sub_10000A5D4(&unk_1009428E0);

    sub_10076F5AC();

    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_10000CFBC(v5, &unk_100943200);
    }

    else
    {
      v12 = *(a2 + v8);

      sub_100263BF0(v7, 1, v12, v5);

      (*(v10 + 8))(v5, v9);
    }

    sub_100761F8C();
    sub_100761F4C();
  }

  else
  {
  }
}

uint64_t sub_1003AA508()
{
  v0 = sub_10076F1BC();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076FA1C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v16 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_10000A5D4(&qword_1009552D8);

  sub_10076F63C();

  v14 = v22;
  v15 = v21;
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F3C();

  sub_100761F8C();
  v13[3] = sub_100761F9C();

  sub_100761F8C();
  sub_100761F7C();

  v9 = sub_100769A9C();

  sub_10076F63C();

  if (v19[0])
  {
    v10 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[3] = v9;
  v19[4] = v10;
  sub_100761F8C();
  sub_100761F2C();

  sub_10000A5D4(&qword_1009552E0);

  sub_10076F63C();

  sub_10076FA0C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10000CFBC(v20, &qword_1009538F8);
  sub_10000CFBC(v19, &qword_1009538F0);
  (*(v4 + 16))(v16, v8, v3);

  sub_10076F19C();
  v11 = sub_10076F60C();

  (*(v17 + 8))(v2, v18);
  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t type metadata accessor for AppPromotionDetailPageViewController()
{
  result = qword_1009552A8;
  if (!qword_1009552A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003AABD4()
{
  sub_1003AACA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003AACA0()
{
  if (!qword_1009552B8)
  {
    sub_10076F4FC();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1009552B8);
    }
  }
}

CGFloat sub_1003AAD6C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_1003AADD4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView) + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

uint64_t sub_1003AAE18()
{
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();
}

id sub_1003AAE8C()
{
  v1 = sub_10075F2AC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v1, v3);
  sub_10075F11C();
  sub_1003ABBD8(&qword_1009552D0, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_1007657FC();
  (*(v2 + 8))(v5, v1);
  return [v0 dismissViewControllerAnimated:1 completion:0];
}

void sub_1003AB038()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100761FAC();
  sub_100761F8C();
  v6 = sub_100761F3C();

  (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_10075F11C();
  sub_1003ABBD8(&qword_1009552D0, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_1007657FC();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v0;
  aBlock[4] = sub_1003ABB48;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100893398;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_1003AB260()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_10076F4FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_1003AB714(v1 + v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000CFBC(v10, &qword_100956730);
  }

  else
  {
    v26 = v3;
    (*(v12 + 32))(v17, v10, v11);
    v19 = sub_10000A5D4(&unk_1009428E0);

    sub_10076F5AC();

    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_10000CFBC(v7, &unk_100943200);
    }

    else
    {
      sub_10075FD5C();
      (*(v12 + 16))(v14, v17, v11);
      v21 = sub_10075FD3C();
      v22 = sub_1003AA508();
      sub_100263FC8(v21, 1, v22, v7);
      v25 = v2;

      v2 = v25;

      (*(v12 + 8))(v17, v11);
      (*(v20 + 8))(v7, v19);
    }

    v3 = v26;
  }

  v23 = v27;
  (*(v3 + 104))(v27, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_10075F11C();
  sub_1003ABBD8(&qword_1009552D0, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_1007657FC();
  (*(v3 + 8))(v23, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1003AB714(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100956730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AB79C(uint64_t *a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_10000A5D4(&qword_100956730);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_10076F4FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_1003AB714(v1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = &qword_100956730;
    v18 = v8;
    return sub_10000CFBC(v18, v17);
  }

  (*(v10 + 32))(v15, v8, v9);
  v19 = sub_10000A5D4(&unk_1009428E0);

  sub_10076F5AC();

  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    (*(v10 + 8))(v15, v9);
    v17 = &unk_100943200;
    v18 = v5;
    return sub_10000CFBC(v18, v17);
  }

  sub_10075FD5C();
  (*(v10 + 16))(v12, v15, v9);
  v22 = sub_10075FD3C();
  v23 = sub_1003AA508();
  sub_100263FC8(v22, 1, v23, v5);

  (*(v10 + 8))(v15, v9);
  return (*(v20 + 8))(v5, v19);
}

uint64_t sub_1003ABB08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003ABB50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003ABB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100956730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ABBD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003ABC24@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v60 = sub_100763BBC();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v2 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  v7 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v7 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v47 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v47 - v15;
  __chkstk_darwin(v16);
  v18 = (&v47 - v17);
  v19 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v19 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v47 - v23;
  v25 = sub_10076034C();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = sub_100763BAC();
  v54 = *(v27 - 8);
  v55 = v27;
  (*(v54 + 56))(v6, 1, 1);
  v50 = v24;
  sub_100016E2C(v24, v21, &unk_10094BB80);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10000CFBC(v21, &unk_10094BB80);
    v28 = 0;
  }

  else
  {
    v28 = sub_1007602EC();
    (*(v26 + 8))(v21, v25);
  }

  v29 = v18;
  sub_100286F40(v28, v18);

  if (qword_10093FC50 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v11, qword_10099DFA0);
  v31 = v51;
  (*(v12 + 56))(v51, 1, 1, v11);
  v32 = v49;
  sub_10011BA50(v29, v49);
  v33 = v52;
  sub_10011BA50(v30, v52);
  v47 = v29;
  v34 = v53;
  sub_100016E2C(v31, v53, &qword_100949718);
  v35 = v6;
  v36 = v6;
  v37 = v57;
  sub_100016E2C(v36, v57, &qword_100949710);
  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v58 + 104))(v59, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v60);
  sub_1000325F0();
  v48 = sub_100770CDC();
  sub_10000CFBC(v35, &qword_100949710);
  sub_10000CFBC(v31, &qword_100949718);
  sub_10011BAB4(v47);
  sub_10000CFBC(v50, &unk_10094BB80);
  v41 = type metadata accessor for TitleHeaderView.Style(0);
  v42 = v41[8];
  v43 = v56;
  sub_10013B084(v32, v56);
  sub_10013B084(v33, v43 + v41[5]);
  sub_10013B0E8(v34, v43 + v41[6]);
  *(v43 + v41[7]) = 0;
  *(v43 + v42) = 1;
  *(v43 + v41[9]) = 0;
  *(v43 + v41[14]) = 0x4030000000000000;
  *(v43 + v41[12]) = 0;
  *(v43 + v41[13]) = v48;
  (*(v39 + 32))(v43 + v41[11], v38, v40);
  v45 = v54;
  v44 = v55;
  if ((*(v54 + 48))(v37, 1, v55) != 1)
  {
    return (*(v45 + 32))(v43 + v41[10], v37, v44);
  }

  sub_10000CFBC(v37, &qword_100949710);
  return (*(v45 + 104))(v43 + v41[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v44);
}

uint64_t sub_1003AC354(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940240 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_100955470);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003AC55C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009554D0);
  sub_10000A61C(v4, qword_1009554D0);
  if (qword_100940258 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009554B8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003AC730()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009554E8);
  sub_10000A61C(v4, qword_1009554E8);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_1003AC8C8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1003AC920(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1003AC990(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for DetailCollectionViewCell();
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1003ACA44(a5);
}

id sub_1003AC990(char a1)
{
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

id sub_1003ACA44(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if (!v2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

char *sub_1003ACB04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v85 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v85);
  v86 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v81 - v15;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_previousTitleTextColor] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_previousSubtitleTextColor] = 0;
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight];
  *v17 = 0;
  v17[8] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider;
  v21 = type metadata accessor for DividerView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider] = 0;
  v23 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider] = 0;
  v25 = &v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940240 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D3DC();
  v29 = sub_10000A61C(v28, qword_100955470);
  v30 = *(v28 - 8);
  v84 = *(v30 + 16);
  v84(v16, v29, v28);
  v83 = *(v30 + 56);
  v83(v16, 0, 1, v28);
  v31 = enum case for DirectionalTextAlignment.none(_:);
  v82 = *(v12 + 104);
  v82(v87, enum case for DirectionalTextAlignment.none(_:), v11);
  v32 = sub_1007626BC();
  v81 = v11;
  v33 = v32;
  v34 = objc_allocWithZone(v32);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940258 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v28, qword_1009554B8);
  v84(v16, v35, v28);
  v83(v16, 0, 1, v28);
  v82(v87, v31, v81);
  v36 = objc_allocWithZone(v33);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v37 = type metadata accessor for DetailCollectionViewCell();
  v88.receiver = v5;
  v88.super_class = v37;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = [v42 contentView];
  v44 = objc_opt_self();
  v45 = [v44 whiteColor];
  [v43 setBackgroundColor:v45];

  v46 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageView;
  v47 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageView];
  v48 = [v42 backgroundColor];

  sub_10075FB8C();
  [*&v42[v46] setContentMode:1];
  v49 = [v42 contentView];
  [v49 addSubview:*&v42[v46]];

  v50 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel;
  [*&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v51 = [v42 contentView];
  [v51 addSubview:*&v42[v50]];

  v52 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel;
  v53 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel];
  v54 = [v44 systemGrayColor];
  [v53 setTextColor:v54];

  v55 = [v42 contentView];
  [v55 addSubview:*&v42[v52]];

  v56 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider;
  v57 = qword_100940950;
  v58 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_10000A61C(v85, qword_1009A0A20);
  v60 = v86;
  sub_100206DD0(v59, v86);
  v61 = &v58[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v60, v61);
  swift_endAccess();
  v62 = &v58[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v63 = *(v61 + 1);
  *v62 = *v61;
  *(v62 + 1) = v63;
  [v58 setNeedsLayout];
  [v58 setNeedsLayout];

  sub_100206E98(v60);
  v64 = *&v42[v56];
  sub_100016F40(0, &qword_100942F10);
  v65 = v64;
  v66 = sub_100770CDC();
  [v65 setBackgroundColor:v66];

  [*&v42[v56] setHidden:1];
  v67 = [v42 contentView];
  [v67 addSubview:*&v42[v56]];

  v68 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider;
  v69 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider];
  sub_100206DD0(v59, v60);
  v70 = &v69[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  v71 = v69;
  sub_100206E34(v60, v70);
  swift_endAccess();
  v72 = &v71[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v73 = *(v70 + 1);
  *v72 = *v70;
  *(v72 + 1) = v73;
  [v71 setNeedsLayout];
  [v71 setNeedsLayout];

  sub_100206E98(v60);
  v74 = *&v42[v68];
  v75 = sub_100770CDC();
  [v74 setBackgroundColor:v75];

  [*&v42[v68] setHidden:1];
  v76 = [v42 contentView];
  [v76 addSubview:*&v42[v68]];

  v77 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_backgroundSelectionView;
  v78 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_backgroundSelectionView];
  v79 = sub_100770DCC();
  [v78 setBackgroundColor:v79];

  [*&v42[v77] setOpaque:0];
  [*&v42[v77] setUserInteractionEnabled:0];
  if (v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_isSelectable] == 1)
  {
    [v42 setSelectedBackgroundView:*&v42[v77]];
  }

  return v42;
}

void sub_1003AD61C()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailCollectionViewCell();
  v101.receiver = v0;
  v101.super_class = v6;
  objc_msgSendSuper2(&v101, "layoutSubviews");
  sub_10076422C();
  v8 = v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryView;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryView];
  if (v10)
  {
    v11 = [v10 isHidden] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_10075FC9C();
  v13 = v12;
  if (v12)
  {
  }

  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel];
  v15 = [v14 text];
  v16 = v15;
  if (v15)
  {
  }

  v17 = v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight + 8];
  v98 = v16;
  if (v17)
  {
    v18 = 8.0;
    if (v13)
    {
LABEL_10:
      v19 = sub_10075FC9C();
      if (!v19)
      {
        __break(1u);
        goto LABEL_53;
      }

      v20 = v19;
      [v19 size];
      v22 = v21;
      v24 = v23;

      sub_10076422C();
      MinX = CGRectGetMinX(v102);
      sub_10076422C();
      v26 = CGRectGetMidY(v103) + v24 * -0.5;
      sub_10075FC8C();
      v104.origin.x = MinX;
      v104.origin.y = v26;
      v104.size.width = v22;
      v104.size.height = v24;
      v8 = v8 - (v18 + CGRectGetWidth(v104));
      v27 = &qword_100940000;
      if (!v11)
      {
        goto LABEL_25;
      }

LABEL_15:
      v28 = *&v1[v9];
      if (v28)
      {
        v29 = v28;
        sub_10076422C();
        [v29 sizeThatFits:{v30, v31}];
        v33 = v32;
        v35 = v34;

        v36 = *&v1[v9];
        if (v36)
        {
          [v36 lastBaselineFromBottom];
          v38 = v37;
          sub_10076422C();
          v39 = CGRectGetMaxX(v105) - v33;
          if (v98)
          {
            [v1 bounds];
            x = v106.origin.x;
            y = v106.origin.y;
            width = v106.size.width;
            v97 = v33;
            v43 = v35;
            v44 = v8;
            v45 = v39;
            v46 = v18;
            height = v106.size.height;
            CGRectGetMidX(v106);
            v107.origin.x = x;
            v107.origin.y = y;
            v107.size.width = width;
            v107.size.height = height;
            v18 = v46;
            v39 = v45;
            v8 = v44;
            v35 = v43;
            v33 = v97;
            v48 = CGRectGetMidY(v107) + v35 * -0.5;
          }

          else
          {
            sub_10076422C();
            MinY = CGRectGetMinY(v108);
            if (v27[73] != -1)
            {
              swift_once();
            }

            v50 = sub_10076D9AC();
            sub_10000A61C(v50, qword_100955488);
            sub_10076D17C();
            sub_10076D40C();
            v52 = v51;
            (*(v100 + 8))(v5, v99);
            v48 = MinY + v52 - (v35 - v38);
          }

          sub_10076422C();
          v53 = CGRectGetWidth(v109);
          if (v33 >= v53)
          {
            v33 = v53;
          }

          [*&v1[v9] setFrame:{v39, v48, v33, v35}];
          v110.origin.x = v39;
          v110.origin.y = v48;
          v110.size.width = v33;
          v110.size.height = v35;
          v8 = v8 - (CGRectGetWidth(v110) + 16.0);
          goto LABEL_25;
        }

LABEL_54:
        __break(1u);
        return;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  sub_10075FC8C();
  v27 = &qword_100940000;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (v27[73] != -1)
  {
    swift_once();
  }

  v54 = sub_10076D9AC();
  sub_10000A61C(v54, qword_100955488);
  v55 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel];
  sub_10076D17C();
  v56 = [v55 traitCollection];
  sub_10076D97C();
  v58 = v57;

  [v55 firstBaselineFromTop];
  v60 = v59;
  v61 = *(v100 + 8);
  v100 += 8;
  v61(v5, v99);
  v62 = v58 - v60;
  sub_10076422C();
  [v55 sizeThatFits:{v8, CGRectGetHeight(v111)}];
  v65 = v64;
  if (v63 >= v8)
  {
    v66 = v8;
  }

  else
  {
    v66 = v63;
  }

  if (v13)
  {
    sub_10075FC7C();
    v67 = v18 + CGRectGetMaxX(v112);
  }

  else
  {
    sub_10076422C();
    v67 = CGRectGetMinX(v113);
  }

  sub_10076422C();
  [v55 setFrame:{v67, v62 + CGRectGetMinY(v114), v66, v65}];
  if (v98)
  {
    [v14 setHidden:0];
    if (qword_100940260 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v54, qword_1009554D0);
    sub_10076D17C();
    v68 = [v14 traitCollection];
    sub_10076D97C();
    v70 = v69;

    [v14 firstBaselineFromTop];
    v72 = v71;
    v61(v5, v99);
    v73 = v70 - v72;
    sub_10076422C();
    [v14 sizeThatFits:{v8, CGRectGetHeight(v115)}];
    v75 = v74;
    v77 = v76;
    [v55 frame];
    v78 = CGRectGetMinX(v116);
    [v55 lastBaselineMaxY];
    [v14 setFrame:{v78, v73 + v79, v75, v77}];
  }

  else
  {
    [v14 setFrame:{0.0, 0.0, 0.0, 0.0}];
    [v14 setHidden:1];
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider] == 1)
  {
    sub_10076422C();
    v80 = CGRectGetMinX(v117);
    [v1 bounds];
    v81 = CGRectGetMinY(v118);
    sub_10076422C();
    v82 = CGRectGetWidth(v119);
    if (qword_100940940 != -1)
    {
      swift_once();
    }

    v83 = *&qword_1009A0A00;
    v84 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets];
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets + 32] & 1) == 0)
    {
      v85 = v84[3];
      v80 = v84[1];
      [v1 bounds];
      v82 = v86 - v80 - v85;
    }

    [*&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider] setFrame:{v80, v81, v82, v83}];
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider] == 1)
  {
    sub_10076422C();
    v87 = CGRectGetMinX(v120);
    [v1 bounds];
    MaxY = CGRectGetMaxY(v121);
    if (qword_100940940 != -1)
    {
      v96 = MaxY;
      swift_once();
      MaxY = v96;
    }

    v89 = *&qword_1009A0A00;
    v90 = MaxY - *&qword_1009A0A00;
    sub_10076422C();
    v91 = CGRectGetWidth(v122);
    v92 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets];
    if (v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets + 32])
    {
      v93 = v91;
    }

    else
    {
      v94 = v92[3];
      v87 = v92[1];
      [v1 bounds];
      v93 = v95 - v87 - v94;
    }

    [*&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider] setFrame:{v87, v90, v93, v89}];
  }
}

double sub_1003ADF28(double a1)
{
  v2 = v1;
  v4 = sub_10076D9AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10077164C();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_10000A5D4(&qword_100943220);
  __chkstk_darwin(v13 - 8);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_10075FC9C();
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel];
  v20 = [v19 text];
  if (v20)
  {
    v21 = v5;
    v22 = v20;
    v54 = sub_10076FF9C();
    v65 = v23;

    v5 = v21;
  }

  else
  {
    v54 = 0;
    v65 = 0;
  }

  v60 = v5;
  (*(v5 + 56))(v17, 1, 1, v4);
  v66 = [v19 attributedText];
  v24 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel] text];
  if (v24)
  {
    v25 = v24;
    sub_10076FF9C();
    v64 = v26;
  }

  else
  {
    v64 = 0;
  }

  v27 = v18;
  v28 = v2[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider];
  v58 = v2[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider];
  v59 = v28;
  [v2 layoutMargins];
  if (v18)
  {
    v29 = v18;
    [v29 size];
    [v29 size];
  }

  v30 = [v2 traitCollection];
  v31 = qword_100940240;
  v57 = v30;
  if (v66)
  {
    v32 = v17;
    v33 = v66;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = sub_10076D3DC();
    v35 = sub_10000A61C(v34, qword_100955470);
    v36 = *(v34 - 8);
    (*(v36 + 16))(v12, v35, v34);
    (*(v36 + 56))(v12, 0, 1, v34);
    v37 = sub_10076C04C();
    v68 = v37;
    v69 = sub_10004C7BC();
    v38 = sub_10000DB7C(v67);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);
    sub_10076C90C();
    sub_10000CD74(v67);
    sub_10076990C();

    sub_10000CFBC(v12, &unk_100943250);
    v17 = v32;
    v27 = v18;
    v39 = v62;
    v40 = v60;
    v41 = v57;
  }

  else
  {
    v41 = v30;
    if (qword_100940240 != -1)
    {
      swift_once();
    }

    v42 = sub_10076D3DC();
    sub_10000A61C(v42, qword_100955470);
    v43 = sub_10076C04C();
    v68 = v43;
    v69 = sub_10004C7BC();
    v44 = sub_10000DB7C(v67);
    (*(*(v43 - 8) + 104))(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v43);
    sub_10076C90C();
    sub_10000CD74(v67);
    sub_10076991C();
    v39 = v62;
    v40 = v60;
  }

  v56 = v27;
  v45 = v61;
  v46 = v63;
  if (qword_100940248 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v4, qword_100955488);
  sub_10076D42C();
  if (v64)
  {
    if (qword_100940260 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v4, qword_1009554D0);
    sub_10076D17C();
    sub_10076D97C();
    v47 = *(v45 + 8);
    v47(v9, v39);
    if (qword_100940268 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v4, qword_1009554E8);
    sub_10076D17C();
    sub_10076D97C();
    v47(v9, v39);
  }

  else
  {
    sub_1003AF06C(v17, v46);
    v48 = *(v40 + 48);
    if (v48(v46, 1, v4) == 1)
    {
      v49 = v55;
      if (qword_100940250 != -1)
      {
        swift_once();
      }

      v50 = sub_10000A61C(v4, qword_1009554A0);
      (*(v40 + 16))(v49, v50, v4);
      v51 = v63;
      if (v48(v63, 1, v4) != 1)
      {
        sub_10000CFBC(v51, &qword_100943220);
      }
    }

    else
    {
      v49 = v55;
      (*(v40 + 32))(v55, v46, v4);
    }

    sub_10076D17C();
    v41 = v57;
    sub_10076D97C();
    (*(v45 + 8))(v9, v39);
    (*(v40 + 8))(v49, v4);
  }

  v52 = v56;
  if (v58)
  {
    if (qword_100940940 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v59 && qword_100940940 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_36:

  sub_10000CFBC(v17, &qword_100943220);
  return a1;
}

double sub_1003AEA88()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DetailCollectionViewCell();
  v20.receiver = v0;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, "prepareForReuse");
  sub_10075FCAC();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel];
  [v8 setText:0];
  v9 = type metadata accessor for Accessory();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_100199B50(v4, &v1[v10]);
  swift_endAccess();
  v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction];
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_1000167E0(v12);
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  [v7 setTextColor:v14];

  v15 = [v13 systemGrayColor];
  [v8 setTextColor:v15];

  v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider] setHidden:1];
  v16 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets];
  result = 0.0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  return result;
}

id sub_1003AED84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DetailCollectionViewCell()
{
  result = qword_100955578;
  if (!qword_100955578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003AEF24()
{
  sub_1003AF014();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003AF014()
{
  if (!qword_10094B950)
  {
    type metadata accessor for Accessory();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10094B950);
    }
  }
}

uint64_t sub_1003AF06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100943220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003AF0DC()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_previousTitleTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_previousSubtitleTextColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider;
  v5 = type metadata accessor for DividerView(0);
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider) = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider) = 0;
  v9 = (v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v10) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_disabled) = 0;
  v11 = (v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_selectionHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003AF2E8()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v12[2] = v12 - v1;
  v2 = sub_10076C2DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v10 = sub_10076C20C();
  sub_10000DB18(v10, qword_10099F340);
  v12[1] = sub_10000A61C(v10, qword_10099F340);
  v13 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v13 = 0x4041000000000000;
  sub_10076C29C();
  v13 = 0x4041000000000000;
  sub_10076C29C();
  *v5 = vdupq_n_s64(0x4041000000000000uLL);
  (*(v3 + 104))(v5, enum case for PageGrid.HorizontalMargins.dynamicCenter(_:), v2);
  LOBYTE(v13) = 0;
  sub_10076C29C();
  v13 = 0;
  sub_10076C29C();
  return sub_10076C1CC();
}

uint64_t sub_1003AF600()
{
  v0 = sub_10076C2DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_10076C20C();
  sub_10000DB18(v7, qword_10099F358);
  sub_10000A61C(v7, qword_10099F358);
  v10 = 0x4074F00000000000;
  sub_10001E290();
  sub_10076C29C();
  v10 = 0x404A000000000000;
  sub_10076C29C();
  v10 = 0x404A000000000000;
  sub_10076C29C();
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (*(v1 + 104))(v3, enum case for PageGrid.HorizontalMargins.absolute(_:), v0);
  return sub_10076C1DC();
}

uint64_t sub_1003AF844()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v38 = v31 - v1;
  v44 = sub_10076C2DC();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v5 - 8);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  sub_10000A5D4(&qword_100942910);
  v37 = sub_10076C20C();
  v10 = *(*(v37 - 8) + 72);
  v43 = *(v37 - 8);
  v11 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v40 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100783DE0;
  v35 = v12;
  v42 = v12 + v11;
  v45 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v45 = 0x4030000000000000;
  sub_10076C29C();
  v45 = 0x4030000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v36 = enum case for PageGrid.HorizontalMargins.dynamicCenter(_:);
  v18 = *(v2 + 104);
  v39 = v2 + 104;
  v18(v4);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v45 = 0x3FF0000000000000;
  sub_10076C29C();
  v45 = 0x4030000000000000;
  sub_10076C29C();
  v45 = 0x4030000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v41 = v18;
  (v18)(v4, v36, v44);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  v20 = v40;
  sub_10076C29C();
  v21 = v42;
  sub_10076C1CC();
  v22 = v21 + 2 * v20;
  if (qword_100940270 != -1)
  {
    swift_once();
  }

  v23 = v37;
  v24 = sub_10000A61C(v37, qword_10099F340);
  v25 = *(v43 + 16);
  v43 += 16;
  v34 = v25;
  v25(v22, v24, v23);
  v31[1] = 3 * v20;
  v45 = 0x4000000000000000;
  sub_10076C29C();
  v45 = 0x4041000000000000;
  sub_10076C29C();
  v45 = 0x4041000000000000;
  sub_10076C29C();
  v32 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v32;
  v36 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v41(v4);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v45 = 0x4074F00000000000;
  sub_10076C29C();
  v45 = 0x4041000000000000;
  sub_10076C29C();
  v45 = 0x4041000000000000;
  sub_10076C29C();
  *v4 = v32;
  (v41)(v4, v36, v44);
  v26 = v42;
  sub_10076C1DC();
  v45 = 0x4074F00000000000;
  sub_10076C29C();
  v45 = 0x404A000000000000;
  sub_10076C29C();
  v45 = 0x404A000000000000;
  sub_10076C29C();
  *v4 = vdupq_n_s64(0x404A000000000000uLL);
  (v41)(v4, v36, v44);
  sub_10076C1DC();
  if (qword_100940278 != -1)
  {
    swift_once();
  }

  v27 = v26 + 6 * v40;
  v28 = v37;
  v29 = sub_10000A61C(v37, qword_10099F358);
  result = v34(v27, v29, v28);
  qword_100955588 = v35;
  return result;
}

id sub_1003B03B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArtworkCollectionViewCell()
{
  result = qword_1009555C0;
  if (!qword_1009555C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B04CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2908(a1, a2, a3, WitnessTable);
}

void sub_1003B0538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

unint64_t sub_1003B05A4(uint64_t a1)
{
  result = sub_1003B05CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003B05CC()
{
  result = qword_1009555D0;
  if (!qword_1009555D0)
  {
    type metadata accessor for ArtworkCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009555D0);
  }

  return result;
}

char *sub_1003B0624(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  if (qword_10093F770 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, qword_10099CFD0);
  sub_10033ECF0(v16, v13);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v5[OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_content] = sub_1000F1E60(v13);
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = [v22 contentView];
  [v24 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_content]];

  return v22;
}

uint64_t type metadata accessor for SearchResultsContextCardCollectionViewCell()
{
  result = qword_100955608;
  if (!qword_100955608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003B0B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1003B0F58(&qword_100950B08, type metadata accessor for SearchResultsContextCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_1003B0BC4(uint64_t a1, uint64_t a2)
{
  sub_100767BCC();
  sub_1003B0F58(&qword_100955618, &type metadata accessor for SearchResultsContextCard);
  sub_10076332C();
  if (v10)
  {
    v3 = sub_100767BBC();
    v4 = sub_100767BAC();
    if (v4)
    {
      v5 = v4;
      sub_10076B8EC();
      v6 = sub_10076B8FC();
      if (v6)
      {
        v7 = v6;
        if (sub_10076BE0C())
        {
          sub_10076044C();
        }

        else if (sub_10076BDFC())
        {
          sub_1005A6008(v7, 0);
        }
      }

      sub_100259F48();
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = v5;

      v8 = sub_100770F1C();
    }

    else
    {
      v8 = 0;
    }

    sub_1000F2654(v3, v8);
  }
}

uint64_t sub_1003B0DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1003B0E0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1003B0ECC()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_content];
  sub_100244488();
  v2 = *(v1 + qword_100948710);
  *(v1 + qword_100948710) = 0;
  sub_1000F238C(v2);
}

uint64_t sub_1003B0F58(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1003B0FA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767BCC();
  sub_1003B0F58(&qword_100955618, &type metadata accessor for SearchResultsContextCard);
  sub_10076332C();
  if (!v21)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  v7 = v21;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v4 + 8))(v6, v3);
  v8 = sub_100767BBC();
  v9 = sub_100767BAC();
  if (v9)
  {
    v10 = v9;
    sub_10076B8EC();
    v11 = sub_10076B8FC();
    if (v11)
    {
      v12 = v11;
      if (sub_10076BE0C())
      {
        sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        sub_1005A6008(v12, 0);
      }
    }

    sub_100259F48();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v10;

    v14 = sub_100770F1C();
  }

  else
  {
    v14 = 0;
  }

  if (qword_10093F770 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v17 = sub_10000A61C(v16, qword_10099CFD0);
  sub_1000F3380(v7, v8, v14, v17);
  v13 = v18;

  return v13;
}

uint64_t sub_1003B12F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36[-1] - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  if ((v36[0] & 1) == 0)
  {
    sub_10076460C();
    sub_10076C21C();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 <= 1.0)
    {
      return sub_1004C4110(a1);
    }

    sub_1003B1E30(v36);
    v15 = v36[0];
    v16 = v36[1];
    v17 = *&v36[2];
    if (v37)
    {
      v18 = 0;
    }

    else
    {
      v21 = v36[3];
      v20 = v36[4];
      v22 = *&v36[5];
      swift_beginAccess();
      v23 = *(v1 + 16);
      if (*(v23 + 16) && (v24 = sub_100610120(v21, v20, v22), (v25 & 1) != 0))
      {
        v18 = *(*(v23 + 56) + 8 * v24);
      }

      else
      {
        v18 = 0;
      }

      swift_endAccess();
    }

    swift_beginAccess();
    v26 = *(v2 + 16);
    if (*(v26 + 16) && (v27 = sub_100610120(v15, v16, v17), (v28 & 1) != 0))
    {
      v19 = *(*(v26 + 56) + 8 * v27);
      swift_endAccess();

      if (!v18)
      {
LABEL_16:

        goto LABEL_23;
      }
    }

    else
    {
      swift_endAccess();
      v19 = sub_1004C4110(a1);
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v29 = *(v18 + 16);
    if (v29)
    {
      v30 = *(v18 + 8 * v29 + 24);

      if (*(v19 + 16))
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_23:
    v30 = 0;
    if (*(v19 + 16))
    {
LABEL_24:
      v31 = *(v19 + 32);

      if (v30)
      {
        if (!v31)
        {
          goto LABEL_31;
        }

        v32 = sub_1000CCB4C(v30, v31);

        if ((v32 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v31)
      {
LABEL_31:

LABEL_32:
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_10024A170(v19, v15, v16, isUniquelyReferenced_nonNull_native, v17);
        *(v2 + 16) = v35;
        swift_endAccess();
        return v19;
      }

LABEL_30:
      v19 = sub_1004C1FE4(v19);
      goto LABEL_31;
    }

LABEL_20:

    if (v30)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return sub_1004C4320(a1);
}

uint64_t sub_1003B1704()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007633CC();
  sub_1007632FC();
  v5 = sub_1003B12F0(v3);
  v6 = sub_1003B1A8C(v5);

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v4 % v8;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = *(v6 + v9 + 32);

      (*(v1 + 8))(v3, v0);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003B182C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_10077175C();
  sub_10077176C(v1);
  sub_10077176C(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_10077178C(*&v4);
  return sub_1007717AC();
}

void sub_1003B18AC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_10077176C(*v0);
  sub_10077176C(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_10077178C(*&v3);
}

Swift::Int sub_1003B1908()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_10077175C();
  sub_10077176C(v1);
  sub_10077176C(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_10077178C(*&v4);
  return sub_1007717AC();
}

uint64_t getEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t result, int a2, int a3)
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

unint64_t sub_1003B1A38()
{
  result = qword_1009556C0;
  if (!qword_1009556C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009556C0);
  }

  return result;
}

uint64_t sub_1003B1A8C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_25;
        }

        if (v3 >= v10)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + v11 + 32);
        if (!v2)
        {
          v13 = *(v5 + 3);
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v26 = *(v9 + v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          sub_10000A5D4(&qword_10094E578);
          v16 = swift_allocObject();
          v17 = 2 * j__malloc_size(v16) - 64;
          *(v16 + 2) = v15;
          *(v16 + 3) = v17;
          v18 = v16 + 32;
          v19 = *(v5 + 3) >> 1;
          if (*(v5 + 2))
          {
            v20 = v5 + 32;
            if (v16 != v5 || v18 >= &v20[v19])
            {
              v21 = v17;
              memmove(v16 + 32, v20, v19);
              v17 = v21;
            }

            *(v5 + 2) = 0;
          }

          v6 = &v18[v19];
          v2 = (v17 >> 1) - v19;

          v5 = v16;
          v12 = v26;
        }

        v22 = __OFSUB__(v2--, 1);
        if (v22)
        {
          goto LABEL_31;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v23 = *(v5 + 3);
  if (v23 < 2)
  {
    return v5;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v2);
  v25 = v24 - v2;
  if (!v22)
  {
    *(v5 + 2) = v25;
    return v5;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1003B1C78(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      *&v21[0] = v3;
      result = sub_10000CD08(v5, v21 + 8);
      v23 = v21[0];
      v24 = v21[1];
      v25 = v22;
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_10000A5D4(&qword_1009556C8);
        v10 = swift_allocObject();
        v11 = (j__malloc_size(v10) - 32) / 40;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[5 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 40 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 40 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v23;
      v17 = v24;
      v6[4] = v25;
      *v6 = v16;
      *(v6 + 1) = v17;
      v6 += 5;
      v5 += 32;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003B1E30@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v1 - 8);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v29 - v4;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946720);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v34 = sub_10076467C();
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v30 = *(v10 + 8);
  v30(v14, v9);
  v32 = *(v38 + 16);

  sub_10076460C();
  sub_10076C24C();
  v16 = v15;
  v17 = *(v6 + 8);
  v31 = v5;
  v29 = v17;
  v17(v8, v5);
  v18 = v36;
  v19 = v37;
  sub_10076463C();
  sub_1003B2204(v19);
  v20 = (*(v10 + 48))(v18, 1, v9);
  if (v20 == 1)
  {
    result = sub_1003B2204(v18);
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_5:
    v27 = v35;
    v28 = v32;
    *v35 = v34;
    v27[1] = v28;
    v27[2] = v16;
    v27[3] = v22;
    v27[4] = v23;
    v27[5] = v24;
    *(v27 + 48) = v20 == 1;
    return result;
  }

  (*(v10 + 32))(v33, v18, v9);
  result = sub_10076467C();
  v22 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    swift_getKeyPath();
    v25 = v33;
    sub_10076F49C();

    v23 = *(v38 + 16);

    sub_10076460C();
    sub_10076C24C();
    v24 = v26;
    v29(v8, v31);
    result = (v30)(v25, v9);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B2204(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009499A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1003B226C()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F380 = 10329570;
  *(&xmmword_10099F380 + 1) = 0xA300000000000000;
  *&xmmword_10099F390 = 10395106;
  *(&xmmword_10099F390 + 1) = 0xA300000000000000;
  *&xmmword_10099F3A0 = v4;
  *(&xmmword_10099F3A0 + 8) = xmmword_1007A0170;
  *(&xmmword_10099F3B0 + 8) = xmmword_1007A0180;
  result = 5.0;
  unk_10099F3C8 = xmmword_1007905C0;
  return result;
}

double sub_1003B237C()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F3D8 = 10395106;
  *(&xmmword_10099F3D8 + 1) = 0xA300000000000000;
  *&xmmword_10099F3E8 = 10395106;
  *(&xmmword_10099F3E8 + 1) = 0xA300000000000000;
  *&xmmword_10099F3F8 = v4;
  *(&xmmword_10099F3F8 + 8) = xmmword_1007A0170;
  *(&xmmword_10099F408 + 8) = xmmword_1007A0180;
  result = 5.0;
  unk_10099F420 = xmmword_1007905C0;
  return result;
}

double sub_1003B2488()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F430 = 10387682;
  *(&xmmword_10099F430 + 1) = 0xA300000000000000;
  *&xmmword_10099F440 = 10256610;
  *(&xmmword_10099F440 + 1) = 0xA300000000000000;
  *&xmmword_10099F450 = v4;
  *(&xmmword_10099F450 + 8) = xmmword_1007A0190;
  __asm { FMOV            V0.2D, #8.0 }

  *(&xmmword_10099F460 + 8) = _Q0;
  result = 7.0;
  *&algn_10099F470[8] = xmmword_1007A01A0;
  return result;
}

double sub_1003B2594()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F488 = 43970;
  *(&xmmword_10099F488 + 1) = 0xA200000000000000;
  *&xmmword_10099F498 = 48066;
  *(&xmmword_10099F498 + 1) = 0xA200000000000000;
  *&xmmword_10099F4A8 = v4;
  *(&xmmword_10099F4A8 + 8) = xmmword_1007A01B0;
  *(&xmmword_10099F4B8 + 8) = xmmword_1007A01C0;
  result = 7.0;
  unk_10099F4D0 = xmmword_1007A01A0;
  return result;
}

double sub_1003B26A0()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F4E0 = 9208035;
  *(&xmmword_10099F4E0 + 1) = 0xA300000000000000;
  *&xmmword_10099F4F0 = 9273571;
  *(&xmmword_10099F4F0 + 1) = 0xA300000000000000;
  *&xmmword_10099F500 = v4;
  *(&xmmword_10099F500 + 8) = xmmword_1007A01D0;
  *(&xmmword_10099F510 + 8) = xmmword_1007A01E0;
  result = 9.0;
  unk_10099F528 = xmmword_1007A01F0;
  return result;
}

id sub_1003B27D8(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  *a3 = result;
  return result;
}

id sub_1003B2838()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
  qword_1009556E0 = result;
  return result;
}

uint64_t sub_1003B2A28(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_10099F538);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003B2C14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_1009402D0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_10099F550);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003B2E00()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099F5C8);
  sub_10000A61C(v4, qword_10099F5C8);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_1003B2F6C(uint64_t a1, id a2)
{
  v3 = v2;
  sub_100764D2C();

  sub_100764CDC();
  sub_100764CCC();
  v5 = sub_100764D4C();
  v6 = &selRef_initWithTabBarSystemItem_tag_;
  v60 = v5;
  if (v5)
  {
    v7 = sub_100764CFC();
    v8 = v7;
    v9 = &v2[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
    if (v7 != *&v2[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 32])
    {
      v58 = a2;
      *(v9 + 4) = v7;
      v55 = *&v9[16 * (v7 == 1)];
      v56 = *&v2[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote];

      sub_10000A5D4(&unk_10094E7E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100784500;
      *(inited + 32) = NSFontAttributeName;
      v11 = qword_1009402B0;
      v12 = NSFontAttributeName;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = qword_1009556D0;
      v14 = sub_100016F40(0, &qword_100942F00);
      *(inited + 40) = v13;
      *(inited + 64) = v14;
      *(inited + 72) = NSForegroundColorAttributeName;
      v15 = qword_1009402C0;
      v16 = v13;
      v17 = NSForegroundColorAttributeName;
      if (v15 != -1)
      {
        swift_once();
      }

      v18 = qword_1009556E0;
      *(inited + 104) = sub_100016F40(0, &qword_100942F10);
      *(inited + 80) = v18;
      v19 = v18;
      sub_1000FC5F4(inited);
      swift_setDeallocating();
      sub_10000A5D4(&unk_100948B10);
      swift_arrayDestroy();
      v20 = objc_allocWithZone(NSAttributedString);
      v21 = sub_10076FF6C();

      type metadata accessor for Key(0);
      sub_1001E4F38();
      isa = sub_10076FE3C().super.isa;

      v23 = [v20 initWithString:v21 attributes:isa];

      v6 = &selRef_initWithTabBarSystemItem_tag_;
      [v56 setAttributedText:v23];

      v24 = *(v9 + 3);
      v62[2] = *(v9 + 2);
      v62[3] = v24;
      v62[4] = *(v9 + 4);
      v63 = *(v9 + 10);
      v25 = *(v9 + 1);
      v62[0] = *v9;
      v62[1] = v25;
      v26 = objc_allocWithZone(type metadata accessor for QuotesLabel());
      sub_100375BC0(v62, v61);
      v27 = [v26 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v28 = sub_1003B52DC(v62);

      sub_100375C20(v62);
      v29 = *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote];
      *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote] = v28;

      a2 = v58;
    }
  }

  else
  {
    v8 = -1;
  }

  v30 = *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel];
  v31 = sub_100016F40(0, &qword_100942F00);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  sub_10000A61C(v32, qword_10099F538);
  v33 = [v3 traitCollection];
  v34 = sub_100770B3C();

  if (a2)
  {
    v57 = v30;
    v35 = *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote];
    v36 = *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 72];
    sub_10000A5D4(&unk_10094E7E0);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_100784500;
    *(v37 + 32) = NSParagraphStyleAttributeName;
    v38 = qword_10093F680;
    v39 = NSParagraphStyleAttributeName;
    v59 = v35;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = [qword_10099CDD8 paragraphStyleWithBaseWritingDirection:{v8, v55}];
    v41 = sub_100016F40(0, &qword_10094D748);
    *(v37 + 40) = v40;
    *(v37 + 64) = v41;
    *(v37 + 72) = NSFontAttributeName;
    *(v37 + 104) = v31;
    *(v37 + 80) = v34;
    v42 = NSFontAttributeName;
    v34 = v34;
    sub_1000FC5F4(v37);
    swift_setDeallocating();
    sub_10000A5D4(&unk_100948B10);
    swift_arrayDestroy();
    v43 = objc_allocWithZone(NSMutableAttributedString);
    v44 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_1001E4F38();
    v45 = sub_10076FE3C().super.isa;

    a2 = [v43 initWithString:v44 attributes:v45];

    if (v35)
    {
      v46 = v59;
      sub_1000FC5F4(_swiftEmptyArrayStorage);
      v47 = objc_allocWithZone(NSAttributedString);
      v48 = sub_10076FF6C();
      v49 = sub_10076FE3C().super.isa;

      v50 = [v47 initWithString:v48 attributes:v49];

      [a2 appendAttributedString:v50];
      v51 = [objc_allocWithZone(NSTextAttachment) init];
      [v51 setImage:v46];
      [v46 size];
      [v51 setBounds:{0.0, -v36, v52, v53}];
      v54 = [objc_opt_self() attributedStringWithAttachment:v51];
      [a2 appendAttributedString:v54];

      v34 = v46;
    }

    else
    {
    }

    v5 = v60;
    v6 = &selRef_initWithTabBarSystemItem_tag_;
    v30 = v57;
  }

  [v30 v6[192]];
}

void sub_1003B36E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel;
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v36 = v6;
  v16 = a1;
  v17 = v15;
  v18 = sub_10076FF9C();
  v20 = v19;

  if (!a2)
  {

    v6 = v36;
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_12:
    v24 = v2;
    if (qword_1009402D0 != -1)
    {
      swift_once();
    }

    v25 = sub_10076D3DC();
    v26 = sub_10000A61C(v25, qword_10099F550);
    v27 = *(v25 - 8);
    (*(v27 + 16))(v12, v26, v25);
    (*(v27 + 56))(v12, 0, 1, v25);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v28 = objc_allocWithZone(sub_1007626BC());
    v29 = sub_1007626AC();
    v2 = v24;
    v30 = *&v24[v13];
    *&v24[v13] = v29;
    v31 = v29;

    v32 = [objc_opt_self() systemGrayColor];
    [v31 setTextColor:v32];

    if (!*&v24[v13])
    {
      __break(1u);
      return;
    }

    [v24 addSubview:?];
    v23 = *&v24[v13];
    if (!v23)
    {

LABEL_22:
      [v2 setNeedsLayout];
      return;
    }

LABEL_18:
    v33 = v23;
    if (a2)
    {
      v34 = sub_10076FF6C();
    }

    else
    {
      v34 = 0;
    }

    [v33 setText:v34];

    goto LABEL_22;
  }

  if (v18 != v16 || v20 != a2)
  {
    v22 = sub_10077167C();

    v6 = v36;
    if (v22)
    {
      goto LABEL_25;
    }

LABEL_11:
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_25:
}

id sub_1003B3AD0()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkHasRoundedCorners] = v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] ^ 1;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView];
  (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2, v4);
  v8 = v7;
  sub_10075FD1C();

  (*(v3 + 8))(v6, v2);
  return [v1 setNeedsLayout];
}

char *sub_1003B3C18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = v77 - v15;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel] = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
  v18 = sub_10076D39C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkHasRoundedCorners] = 0;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote] = v19;
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_10099F538);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v16, v21, v20);
  (*(v22 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v86._object = 0x80000001007E1440;
  v86._countAndFlagsBits = 0xD000000000000010;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v24 = sub_1007622EC(v86, v87);
  v26 = sub_1003B5290(v24, v25);
  if (v26 > 2)
  {
    if (v26 - 3 < 2)
    {
      if (qword_1009402A0 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_10099F488;
      goto LABEL_23;
    }

    if (v26 == 5)
    {
      if (qword_1009402A8 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_10099F4E0;
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (!v26)
  {
LABEL_17:
    if (qword_100940288 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10099F380;
    goto LABEL_23;
  }

  if (v26 == 1)
  {
    if (qword_100940290 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10099F3D8;
  }

  else
  {
    if (qword_100940298 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10099F430;
  }

LABEL_23:
  v28 = v27[4];
  *&v84[16] = v27[3];
  *&v84[32] = v28;
  v85 = *(v27 + 10);
  v29 = v27[2];
  v83 = v27[1];
  *v84 = v29;
  v82 = *v27;
  v30 = *&v84[40];
  v31 = v85;
  v78 = *&v84[8];
  v79 = *&v84[24];
  v33 = *(&v83 + 1);
  v32 = v29;
  v35 = *(&v82 + 1);
  v34 = v83;
  v36 = v82;
  sub_100375BC0(&v82, v81);
  v37 = &v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
  *v37 = v36;
  *(v37 + 1) = v35;
  *(v37 + 2) = v34;
  *(v37 + 3) = v33;
  *(v37 + 4) = v32;
  v38 = v78;
  *(v37 + 56) = v79;
  *(v37 + 40) = v38;
  *(v37 + 9) = v30;
  *(v37 + 10) = v31;
  v39 = type metadata accessor for QuoteView();
  v80.receiver = v5;
  v80.super_class = v39;
  v40 = objc_msgSendSuper2(&v80, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v44 = v40;
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v45 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView;
  v46 = *&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView];
  sub_10075FB7C();

  v47 = *&v44[v45];
  sub_10075FBAC();
  sub_1007638EC();

  v48 = *&v44[v45];
  sub_10075FB9C();
  sub_1007638DC();

  [*&v44[v45] setHidden:1];
  v49 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote;
  [*&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote] setClipsToBounds:0];
  v50 = *&v44[v49];
  v51 = &v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
  v77[1] = *&v44[16 * (*&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 32] == 1) + OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
  *&v78 = v49;

  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSFontAttributeName;
  v53 = qword_1009402B0;
  *&v79 = v50;
  v54 = NSFontAttributeName;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_1009556D0;
  v56 = sub_100016F40(0, &qword_100942F00);
  *(inited + 40) = v55;
  *(inited + 64) = v56;
  *(inited + 72) = NSForegroundColorAttributeName;
  v57 = qword_1009402C0;
  v58 = v55;
  v59 = NSForegroundColorAttributeName;
  if (v57 != -1)
  {
    swift_once();
  }

  v60 = qword_1009556E0;
  *(inited + 104) = sub_100016F40(0, &qword_100942F10);
  *(inited + 80) = v60;
  v61 = v60;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  v62 = objc_allocWithZone(NSAttributedString);
  v63 = sub_10076FF6C();

  type metadata accessor for Key(0);
  sub_1001E4F38();
  isa = sub_10076FE3C().super.isa;

  v65 = [v62 initWithString:v63 attributes:isa];

  v66 = v79;
  [v79 setAttributedText:v65];

  [v44 addSubview:*&v44[v78]];
  v67 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel;
  [*&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel] setTextAlignment:4];
  [v44 addSubview:*&v44[v67]];
  [v44 addSubview:*&v44[v45]];
  v68 = *(v51 + 1);
  v82 = *v51;
  v83 = v68;
  v69 = *(v51 + 2);
  v70 = *(v51 + 3);
  v71 = *(v51 + 4);
  v85 = *(v51 + 10);
  *&v84[16] = v70;
  *&v84[32] = v71;
  *v84 = v69;
  v72 = objc_allocWithZone(type metadata accessor for QuotesLabel());
  sub_100375BC0(&v82, v81);
  v73 = [v72 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v74 = sub_1003B52DC(&v82);

  sub_100375C20(&v82);
  v75 = *&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote];
  *&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote] = v74;

  return v44;
}

void sub_1003B463C()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v4 - 8);
  v94 = &v93 - v5;
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for QuoteView();
  v100.receiver = v0;
  v100.super_class = v10;
  objc_msgSendSuper2(&v100, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote];
  [v11 sizeToFit];
  sub_10076422C();
  MinY = CGRectGetMinY(v101);
  if (qword_1009402D8 != -1)
  {
    swift_once();
  }

  v97 = sub_10076D9AC();
  sub_10000A61C(v97, qword_10099F568);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel];
  sub_10076D17C();
  v14 = [v13 traitCollection];
  sub_10076D97C();
  v16 = v15;

  [v13 firstBaselineFromTop];
  v18 = v17;
  v98 = *(v7 + 8);
  v99 = v6;
  v98(v9, v6);
  v19 = MinY + v16 - v18;
  [v11 frame];
  Width = CGRectGetWidth(v102);
  v21 = &v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
  v22 = Width + *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 56] + *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 40];
  sub_10076422C();
  v24 = v23 - v22;
  [v13 sizeThatFits:{v23 - v22, 1.79769313e308}];
  v26 = v25;
  v28 = v27;
  v29 = *(v21 + 4);
  sub_10076422C();
  if (v29 == 1)
  {
    [v13 setFrame:{CGRectGetMaxX(*&v30) - v26 - v22, v19, v26, v28}];
    sub_10076422C();
    v34 = CGRectGetMaxX(v103) - *(v21 + 5);
    [v11 frame];
    v35 = v34 - CGRectGetWidth(v104);
  }

  else
  {
    [v13 setFrame:{v22 + CGRectGetMinX(*&v30), v19, v26, v28}];
    sub_10076422C();
    v35 = v36 + *(v21 + 5);
  }

  [v13 frame];
  v38 = v37 + *(v21 + 6);
  [v11 frame];
  [v11 setFrame:{v35, v38}];
  [v13 frame];
  MaxY = CGRectGetMaxY(v105);
  if (qword_1009402E0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v97, qword_10099F580);
  sub_10076D17C();
  v40 = [v13 traitCollection];
  sub_10076D97C();
  v42 = v41;

  [v13 lastBaselineFromBottom];
  v44 = v43;
  v98(v9, v99);
  v45 = MaxY + v42 - v44;
  v46 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel];
  if (v46)
  {
    v47 = v46;
    [v47 sizeThatFits:{v24, 1.79769313e308}];
    v49 = v48;
    v51 = v50;
    v52 = *(v21 + 4);
    [v13 frame];
    if (v52 == 1)
    {
      MinX = CGRectGetMaxX(*&v53) - v49;
    }

    else
    {
      MinX = CGRectGetMinX(*&v53);
    }

    v58 = v97;
    v60 = v99;
    v59 = &selRef_initWithTabBarSystemItem_tag_;
    v97 = v10;
    if (qword_1009402E8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v58, qword_10099F598);
    sub_10076D17C();
    v61 = [v47 traitCollection];
    sub_10076D97C();
    v63 = v62;

    [v47 firstBaselineFromTop];
    v65 = v64;
    v66 = v98;
    v98(v9, v60);
    [v47 setFrame:{MinX, v45 + v63 - v65, v49, v51}];

    [v47 frame];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v106.origin.x = v68;
    v106.origin.y = v70;
    v106.size.width = v72;
    v106.size.height = v74;
    CGRectGetMaxY(v106);
    if (qword_1009402F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v58, qword_10099F5B0);
    sub_10076D17C();
    v75 = [v47 traitCollection];
    sub_10076D97C();

    [v47 lastBaselineFromBottom];
    v66(v9, v60);
  }

  else
  {
    v58 = v97;
    v59 = &selRef_initWithTabBarSystemItem_tag_;
  }

  v76 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView;
  if (([*&v1[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] isHidden] & 1) == 0)
  {
    v77 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] == 1)
    {
      [v1 frame];
    }

    else
    {
      sub_10076422C();
    }

    CGRectGetMinX(*&v78);
    if (qword_1009402F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v58, qword_10099F5C8);
    v82 = [v1 v59[274]];
    sub_10076D17C();
    sub_10076D97C();

    v98(v9, v99);
    if (v1[v77] == 1)
    {
      [v1 frame];
    }

    else
    {
      sub_10076422C();
    }

    v88 = v95;
    v87 = v96;
    v89 = v94;
    CGRectGetWidth(*&v83);
    v90 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1003911F0(&v1[v90], v89);
    if ((*(v88 + 48))(v89, 1, v87))
    {
      sub_10023DEE4(v89);
      sub_10076422C();
      CGRectGetHeight(v107);
    }

    else
    {
      v91 = v93;
      (*(v88 + 16))(v93, v89, v87);
      sub_10023DEE4(v89);
      sub_10076D36C();
      (*(v88 + 8))(v91, v87);
    }

    v92 = *&v1[v76];
    sub_10075FC8C();
  }
}

id sub_1003B4F88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for QuoteView()
{
  result = qword_100955760;
  if (!qword_100955760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B50C8()
{
  sub_1003B518C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003B518C()
{
  if (!qword_100955770)
  {
    sub_10076D39C();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100955770);
    }
  }
}

uint64_t sub_1003B51E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1003B522C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003B5290(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100882228;
  v6._object = a2;
  v4 = sub_10077160C(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

UIImage *sub_1003B52DC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSFontAttributeName;
  v4 = qword_1009402B8;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1009556D8;
  v7 = sub_100016F40(0, &qword_100942F00);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = qword_1009402C0;
  v9 = v6;
  v10 = NSForegroundColorAttributeName;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_1009556E0;
  *(inited + 104) = sub_100016F40(0, &qword_100942F10);
  *(inited + 80) = v11;
  v12 = v11;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  v13 = *(a1 + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_1001E4F38();
  isa = sub_10076FE3C().super.isa;

  v17 = [v14 initWithString:v15 attributes:isa];

  [v2 setAttributedText:v17];
  v18 = v2;
  [v18 sizeToFit];
  [v18 frame];
  v19 = CGRectGetWidth(v32) + *(a1 + 64);
  if (v13 == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *(a1 + 64);
  }

  [v18 frame];
  Height = CGRectGetHeight(v33);
  v22 = [objc_opt_self() mainScreen];
  [v22 scale];
  v24 = v23;

  v31.width = v19;
  v31.height = Height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v24);
  [v18 frame];
  v26 = v25;
  v28 = v27;

  [v18 drawTextInRect:{v20, 0.0, v26, v28}];
  v29 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v29;
}

id sub_1003B5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

void *sub_1003B5688()
{
  v1 = v0;
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
  }

  v17 = [v1 layoutAttributesForElementsInRect:{v10, v12, v14, v16}];
  if (v17)
  {
    v18 = v17;
    sub_1000DE4D0();
    v19 = sub_1007701BC();

    if (v19 >> 62)
    {
LABEL_26:
      v20 = sub_10077158C();
      if (v20)
      {
LABEL_7:
        v32 = v2;
        v2 = 0;
        v31 = (v3 + 8);
        v3 = _swiftEmptyArrayStorage;
        do
        {
          v21 = v2;
          while (1)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = sub_10077149C();
            }

            else
            {
              if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v22 = *(v19 + 8 * v21 + 32);
            }

            v23 = v22;
            v2 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            if (![v22 representedElementCategory])
            {
              break;
            }

            ++v21;
            if (v2 == v20)
            {
              goto LABEL_28;
            }
          }

          v24 = [v23 indexPath];
          sub_10075E06C();

          v30 = sub_10075E0AC();
          (*v31)(v6, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_10049E22C(0, *(v3 + 2) + 1, 1, v3);
          }

          v26 = *(v3 + 2);
          v25 = *(v3 + 3);
          if (v26 >= v25 >> 1)
          {
            v3 = sub_10049E22C((v25 > 1), v26 + 1, 1, v3);
          }

          *(v3 + 2) = v26 + 1;
          *&v3[8 * v26 + 32] = v30;
        }

        while (v2 != v20);
        goto LABEL_28;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_7;
      }
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_28:

    v27 = sub_100223D40(v3);

    return v27;
  }

  return &_swiftEmptySetSingleton;
}

char *sub_1003B59A0(void *a1)
{
  v24 = a1;
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding];

  v7 = [v24 indexPath];
  sub_10075E06C();

  LOBYTE(v7) = sub_100693374(v5, v6);

  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for BaseCollectionViewLayoutAttributes();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = v24;
        v13 = v9;
        [v13 contentOffset];
        v15 = v14;
        v16 = -v14;
        if (v14 > 0.0)
        {
          v16 = 0.0;
        }

        *&v11[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance] = v16;
        v17 = v12;
        [v11 frame];
        [v11 setFrame:?];
        [v11 frame];
        [v11 setFrame:?];
        v11[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding] = v15 < 0.0;
        if (v15 <= 0.0)
        {

          *&v11[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY] = 0;
        }

        else
        {
          [v13 contentOffset];
          v19 = v18;

          v20 = v19 * 0.28;
          if (v19 * 0.28 < 0.0)
          {
            v20 = 0.0;
          }

          *&v11[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY] = v20;
        }

        return v11;
      }
    }
  }

  v21 = v24;

  return v21;
}

_OWORD *sub_1003B5C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v9.receiver = v2;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "copyWithZone:", a1);
  sub_10077123C();
  swift_unknownObjectRelease();
  sub_10000CD08(v10, v8);
  if (!swift_dynamicCast())
  {
    return sub_10000CD64(v10, a2);
  }

  *(v7 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY) = *&v2[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY];
  *(v7 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = *&v2[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  *(v7 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding) = v2[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding];
  *(a2 + 24) = v5;
  *a2 = v7;
  return sub_10000CD74(v10);
}

BOOL sub_1003B5D94(uint64_t a1)
{
  sub_10003F0D4(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = sub_10000CF78(v18, v19);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_10077165C();
    (*(v5 + 8))(v8, v3);
    sub_10000CD74(v18);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    return 0;
  }

  sub_10003F0D4(a1, v18);
  if (!v19)
  {
    sub_1000258C0(v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY] != *&v16[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY] || v1[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding] != v16[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding])
  {

    return 0;
  }

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  v14 = *&v16[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];

  return v13 == v14;
}

id sub_1003B60D4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = &_swiftEmptySetSingleton;
  v5 = &v3[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  *v5 = 0;
  *(v5 + 1) = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BAFEC;
  aBlock[3] = &unk_100893578;
  v6 = _Block_copy(aBlock);

  v39.receiver = v3;
  v39.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = objc_msgSendSuper2(&v39, "initWithSectionProvider:configuration:", v6, a3);
  _Block_release(v6);
  type metadata accessor for GradientSectionBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  sub_1007708EC();
  v10 = sub_10076FF6C();

  [v9 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

  type metadata accessor for MaterialGradientSectionBackgroundView();
  v11 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v12 = sub_10076FF6C();

  [v9 registerClass:v11 forDecorationViewOfKind:v12];

  type metadata accessor for ArtworkSectionBackgroundView();
  v13 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v14 = sub_10076FF6C();

  [v9 registerClass:v13 forDecorationViewOfKind:v14];

  type metadata accessor for InteractiveSectionBackgroundView();
  v15 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v16 = sub_10076FF6C();

  [v9 registerClass:v15 forDecorationViewOfKind:v16];

  type metadata accessor for EditorsChoiceBackgroundView();
  v17 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v18 = sub_10076FF6C();

  [v9 registerClass:v17 forDecorationViewOfKind:v18];

  v19 = ASKBuildTypeGetCurrent();
  v20 = sub_10076FF9C();
  v22 = v21;
  if (v20 == sub_10076FF9C() && v22 == v23)
  {
    goto LABEL_3;
  }

  v24 = sub_10077167C();

  if (v24)
  {
    goto LABEL_5;
  }

  v28 = sub_10076FF9C();
  v30 = v29;
  if (v28 == sub_10076FF9C() && v30 == v31)
  {
LABEL_3:

    goto LABEL_6;
  }

  v32 = sub_10077167C();

  if (v32)
  {
LABEL_5:

    goto LABEL_6;
  }

  v33 = sub_10076FF9C();
  v35 = v34;
  if (v33 == sub_10076FF9C() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_10077167C();

    if ((v37 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  sub_10076F73C();
  sub_10076F72C();
  if (qword_1009414D0 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A5D4(&unk_100955860);
  sub_10000A61C(v38, qword_1009A3248);
  sub_10076F41C();

  if (LOBYTE(aBlock[0]) == 2 || (aBlock[0] & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_6:
  type metadata accessor for TodayDebugSectionBackgroundView();
  v25 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v26 = sub_10076FF6C();

  [v9 registerClass:v25 forDecorationViewOfKind:v26];

LABEL_7:

LABEL_8:

  return v9;
}

void *sub_1003B66AC(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  result = objc_msgSendSuper2(&v18, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v10 = result;
    sub_1000DE4D0();
    v11 = sub_1007701BC();

    if (v11 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      v17 = _swiftEmptyArrayStorage;
      v13 = v4;
      v4 = &v17;
      result = sub_1007714EC();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v14 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = sub_10077149C();
          goto LABEL_7;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v15 = *(v11 + 8 * v14 + 32);
LABEL_7:
        v16 = v15;
        ++v14;
        sub_1003B59A0(v15);

        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        v4 = &v17;
        sub_1007714DC();
        if (i == v14)
        {

          return v17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1003B6A84(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v12 = a3;
  v13 = a1;
  isa = sub_10075E02C().super.isa;
  v15 = type metadata accessor for BaseCollectionCompositionalLayout();
  v19.receiver = v13;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, *a5, v12, isa);

  if (v16)
  {
    v17 = sub_1003B59A0(v16);

    v13 = v16;
  }

  else
  {
    v17 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v17;
}

uint64_t sub_1003B6C9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [v4 collectionView];
  if (!v10)
  {
    v30.receiver = v4;
    v30.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    return objc_msgSendSuper2(&v30, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = &_swiftEmptySetSingleton;

  if ([v11 delegate])
  {
    ObjectType = swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = (*(v14 + 8))(v11, ObjectType, v14);
      v16 = v11;
      v17 = sub_1003B7984(v15, v16);
      swift_unknownObjectRelease();

      *&v4[v12] = v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v19 = [v4 collectionView];
  if (v19)
  {
    v20 = v19;
    [v19 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;

    if (v24 != a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0.0;
    v26 = 0.0;
    if (a3 != 0.0)
    {
      goto LABEL_18;
    }
  }

  if (v26 == a4 && (!*(*&v5[v12] + 16) || v22 == a2))
  {
    v29.receiver = v5;
    v29.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    v28 = objc_msgSendSuper2(&v29, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);

    return v28;
  }

LABEL_18:

  return 1;
}

id sub_1003B6F34(double a1, double a2, double a3, double a4)
{
  v9 = [v4 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  if (v12 == a3 && v14 == a4)
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
    if (*(*(v4 + OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding) + 16))
    {
      v17 = [objc_allocWithZone(UICollectionViewLayoutInvalidationContext) init];
      v18 = *(v4 + v16);
      v19 = *(v18 + 16);
      if (!v19 || (v4 = sub_10049EF00(*(v18 + 16), 0), v20 = *(sub_10075E11C() - 8), sub_10061F108(&v27, v4 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, v18), v22 = v21, , sub_100178640(), v22 == v19))
      {
        sub_10075E11C();
        isa = sub_1007701AC().super.isa;

        [v17 invalidateItemsAtIndexPaths:isa];

        return v17;
      }

      __break(1u);
    }
  }

  v23 = type metadata accessor for BaseCollectionCompositionalLayout();
  v28.receiver = v4;
  v28.super_class = v23;
  v24 = objc_msgSendSuper2(&v28, "invalidationContextForBoundsChange:", a1, a2, a3, a4);

  return v24;
}

id sub_1003B72C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t *sub_1003B7370(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1003B7700(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_1003B7408(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_10075E11C();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000A5D4(&qword_10094B0E8);
  result = sub_10077144C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1003B7D2C();
    result = sub_10076FEAC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1003B7700(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v30 = a1;
  v6 = sub_10075E11C();
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v11 = 0;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v36 = v7;
  v34 = (v7 + 8);
  v35 = v7 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = v17 | (v11 << 6);
    v21 = *(a3 + 48);
    v22 = *(v36 + 72);
    v33 = v20;
    (*(v36 + 16))(v10, v21 + v22 * v20, v6, v8);
    v23 = [a4 numberOfSections];
    if (sub_10075E0AC() >= v23)
    {
      (*v34)(v10, v6);
    }

    else
    {
      v32 = [a4 numberOfItemsInSection:sub_10075E0AC()];
      v24 = a4;
      v25 = a3;
      v26 = sub_10075E09C();
      (*v34)(v10, v6);
      v27 = v26 < v32;
      a3 = v25;
      a4 = v24;
      if (v27)
      {
        *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_18:

          sub_1003B7408(v30, v29, v31, a3);
          return;
        }
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_18;
    }

    v19 = *(v12 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003B7984(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = sub_10075E11C();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  LOBYTE(v7) = *(a1 + 32);
  LODWORD(a1) = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = a2;
  if (a1 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v11;
    v30 = v9;
    v31 = v3;
    v29 = &v29;
    __chkstk_darwin(v11);
    v32 = &v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v10 = 0;
    v12 = v38;
    v3 = v39 + 56;
    v13 = 1 << *(v39 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v39 + 56);
    v9 = (v13 + 63) >> 6;
    v35 = v6 + 16;
    v36 = v6;
    v33 = 0;
    v34 = (v6 + 8);
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v6 = v16 | (v10 << 6);
      (*(v36 + 16))(v8, *(v39 + 48) + *(v36 + 72) * v6, v12);
      v19 = v37;
      v20 = [v37 numberOfSections];
      if (sub_10075E0AC() >= v20)
      {
        v11 = (*v34)(v8, v12);
      }

      else
      {
        v21 = [v19 numberOfItemsInSection:sub_10075E0AC()];
        v22 = sub_10075E09C();
        v11 = (*v34)(v8, v38);
        v12 = v38;
        if (v22 < v21)
        {
          *&v32[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_18:
            v24 = sub_1003B7408(v32, v30, v33, v39);

            return v24;
          }
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_18;
      }

      v18 = *(v3 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v26 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v26;
  }

  v27 = swift_slowAlloc();
  v28 = v26;
  v24 = sub_1003B7370(v27, v9, v39, v28);

  return v24;
}

unint64_t sub_1003B7D2C()
{
  result = qword_10094E860;
  if (!qword_10094E860)
  {
    sub_10075E11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094E860);
  }

  return result;
}

uint64_t sub_1003B7D84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1003B7DBC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1003B7DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003B7E14(void *a1)
{
  v2 = sub_10076E12C();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100955A10);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_10076D4EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  sub_10076D58C();
  sub_1003BB74C(&qword_100955A38, &type metadata accessor for DisjointStack);
  v30 = a1;
  sub_10076D91C();
  v24 = v17;
  v25 = v9;
  (*(v9 + 16))(v11, v17, v8);
  sub_1003BB74C(&qword_100955A40, &type metadata accessor for DisjointStack.Placements);
  sub_10077016C();
  sub_1003BB74C(&qword_100955A48, &type metadata accessor for DisjointStack.Placements);
  sub_1007711CC();
  v18 = v31;
  v19 = v31 + 48;
  v20 = *(v31 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    v21 = *(v18 + 32);
    v31 = v18 + 32;
    v26 = (v18 + 8);
    v27 = v21;
    v28 = v7;
    v29 = v19;
    do
    {
      v27(v4, v7, v2);
      sub_10076E10C();
      sub_10000CF78(v32, v32[3]);
      sub_10076E11C();
      [v30 layoutDirection];
      sub_100770A5C();
      v7 = v28;
      sub_10076E0EC();
      (*v26)(v4, v2);
      sub_10000CD74(v32);
      sub_1007711CC();
    }

    while (v20(v7, 1, v2) != 1);
  }

  v22 = *(v25 + 8);
  v22(v14, v8);
  return (v22)(v24, v8);
}

uint64_t sub_1003B82BC(void *a1)
{
  v2 = sub_10076E12C();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100955A10);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_10076D59C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  sub_10076D65C();
  sub_1003BB74C(&qword_100955A18, &type metadata accessor for VerticalStack);
  v30 = a1;
  sub_10076D91C();
  v24 = v17;
  v25 = v9;
  (*(v9 + 16))(v11, v17, v8);
  sub_1003BB74C(&qword_100955A20, &type metadata accessor for VerticalStack.Placements);
  sub_10077016C();
  sub_1003BB74C(&qword_100955A28, &type metadata accessor for VerticalStack.Placements);
  sub_1007711CC();
  v18 = v31;
  v19 = v31 + 48;
  v20 = *(v31 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    v21 = *(v18 + 32);
    v31 = v18 + 32;
    v26 = (v18 + 8);
    v27 = v21;
    v28 = v7;
    v29 = v19;
    do
    {
      v27(v4, v7, v2);
      sub_10076E10C();
      sub_10000CF78(v32, v32[3]);
      sub_10076E11C();
      [v30 layoutDirection];
      sub_100770A5C();
      v7 = v28;
      sub_10076E0EC();
      (*v26)(v4, v2);
      sub_10000CD74(v32);
      sub_1007711CC();
    }

    while (v20(v7, 1, v2) != 1);
  }

  v22 = *(v25 + 8);
  v22(v14, v8);
  return (v22)(v24, v8);
}

uint64_t sub_1003B8764()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100955870);
  sub_10000A61C(v4, qword_100955870);
  if (qword_100941110 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2128);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B893C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100955888);
  sub_10000A61C(v4, qword_100955888);
  if (qword_100941118 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2140);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B8B10()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009558A0);
  sub_10000A61C(v4, qword_1009558A0);
  if (qword_100941128 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2170);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B8CE4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009558B8);
  sub_10000A61C(v4, qword_1009558B8);
  if (qword_100941128 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2170);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_1003B8EB8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v12 = sub_100766FCC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10076702C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100766F4C();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_100766FBC();
  sub_100766F5C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_10076FF6C();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v89.receiver = v4;
    v89.super_class = v33;
    v34 = objc_msgSendSuper2(&v89, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v86 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_materialBackground];
    sub_1003E4478(26.0);

    v40 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
    v41 = qword_100941110;
    v42 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_10076D3DC();
    v44 = sub_10000A61C(v43, qword_1009A2128);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v47 = *(v45 + 56);
    v47(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v40] setNumberOfLines:1];
    v48 = *&v38[v40];
    v49 = objc_opt_self();
    v50 = v48;
    v88 = v49;
    v51 = [v49 secondaryLabelColor];
    v52 = v40;
    v53 = v51;
    [v50 setTextColor:v51];

    v87 = v52;
    v54 = [*&v38[v52] layer];
    v85 = kCAFilterPlusL;
    [v54 setCompositingFilter:?];

    v55 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
    v56 = qword_100941118;
    v57 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_10000A61C(v43, qword_1009A2140);
    v46(v11, v58, v43);
    v47(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v55] setNumberOfLines:1];
    v59 = *&v38[v55];
    v60 = [v88 labelColor];
    [v59 setTextColor:v60];

    v61 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
    v62 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
    v84 = v55;
    v63 = qword_100941128;
    v64 = v62;
    if (v63 != -1)
    {
      swift_once();
    }

    v65 = sub_10000A61C(v43, qword_1009A2170);
    v46(v11, v65, v43);
    v47(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v61] setNumberOfLines:1];
    v66 = *&v38[v61];
    v67 = v88;
    v68 = [v88 secondaryLabelColor];
    [v66 setTextColor:v68];

    v69 = [*&v38[v61] layer];
    v70 = v85;
    [v69 setCompositingFilter:v85];

    v71 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView;
    v72 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView];
    v73 = objc_opt_self();
    v74 = v72;
    v75 = [v73 configurationWithTextStyle:UIFontTextStyleBody];
    [v74 setPreferredSymbolConfiguration:v75];

    v76 = *&v38[v71];
    v77 = [v67 secondaryLabelColor];
    [v76 setTintColor:v77];

    v78 = [*&v38[v71] layer];
    [v78 setCompositingFilter:v70];

    v79 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer] setEnabled:0];
    v80 = *&v38[v79];
    v81 = v38;
    [v80 addTarget:v81 action:"handleSelection:"];
    v82 = *&v38[v79];
    [v82 setDelegate:v81];

    [v81 addGestureRecognizer:*&v38[v79]];
    [v81 addSubview:*&v38[v86]];
    [v81 addSubview:*&v81[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork]];
    [v81 addSubview:*&v38[v87]];
    [v81 addSubview:*&v38[v84]];
    [v81 addSubview:*&v38[v61]];
    [v81 addSubview:*&v38[v71]];
    sub_1003BA380();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B9A70@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v77 = a2;
  v68 = sub_10076DDFC();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v61 - v6;
  v73 = sub_10076DE2C();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10076D8DC();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v61 - v10;
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v13 = sub_10076D65C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  __chkstk_darwin(v23);
  v25 = &v61 - v24;
  sub_10076D63C();
  v26 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel);
  v27 = sub_1007626BC();
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v26;
  v28 = v26;
  sub_10076D64C();
  v74 = v14;
  v29 = *(v14 + 8);
  v29(v16, v13);
  sub_10000CD74(&v91);
  v30 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v30;
  v31 = v30;
  sub_10076D64C();
  v29(v19, v13);
  sub_10000CD74(&v91);
  v32 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v32;
  v33 = v32;
  v78 = v25;
  sub_10076D64C();
  v34 = v13;
  v76 = v29;
  v29(v22, v13);
  sub_10000CD74(&v91);
  if (v75)
  {
    v35 = v62;
    sub_10076D8AC();
    v36 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v92 = type metadata accessor for CollectionLockupArtwork();
    v93 = sub_1003BB74C(&qword_100955A68, type metadata accessor for CollectionLockupArtwork);
    v91 = v36;
    v37 = v36;
    v38 = v63;
    sub_10076D8BC();
    v39 = *(v65 + 8);
    v40 = v66;
    v39(v35, v66);
    sub_10000CD74(&v91);
    v92 = v13;
    v93 = &protocol witness table for VerticalStack;
    v41 = sub_10000DB7C(&v91);
    (*(v74 + 16))(v41, v78, v13);
    v42 = v64;
    sub_10076D8BC();
    v39(v38, v40);
    sub_10000CD74(&v91);
    v43 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView);
    v89 = sub_10007E008();
    v90 = &protocol witness table for UIImageView;
    v88 = v43;
    v92 = v40;
    v93 = &protocol witness table for HorizontalStack;
    sub_10000DB7C(&v91);
    v44 = v43;
    sub_10076D8BC();
    v39(v42, v40);
    sub_10000CD74(&v88);
  }

  else
  {
    v45 = v74;
    (*(v74 + 16))(v22, v78, v13);
    v46 = type metadata accessor for TextLayout(0);
    v47 = swift_allocObject();
    (*(v45 + 32))(v47 + OBJC_IVAR____TtC20ProductPageExtensionP33_37948684BD19837A3AF46FC5B97A3E1B10TextLayout_textStack, v22, v13);
    v92 = v46;
    v93 = sub_1003BB74C(&unk_100955A50, type metadata accessor for TextLayout);
    v91 = v47;
    v48 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v49 = type metadata accessor for CollectionLockupArtwork();
    v90 = &protocol witness table for UIView;
    v89 = v49;
    v88 = v48;
    v86 = &type metadata for CGFloat;
    v87 = &protocol witness table for CGFloat;
    v85 = 0x4024000000000000;
    v50 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v51 = *(v67 + 104);
    v52 = v68;
    v51(v69, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v68);
    v53 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView);
    v83 = sub_10007E008();
    v84 = &protocol witness table for UIView;
    v81 = &protocol witness table for CGFloat;
    v82 = v53;
    v80 = &type metadata for CGFloat;
    v79 = 0x4038000000000000;
    v51(v71, v50, v52);
    v54 = v48;
    v55 = v53;
    v56 = v70;
    sub_10076DE1C();
    sub_1003BB74C(&qword_100955A60, &type metadata accessor for FlankedHorizontalLayout);
    v57 = v73;
    sub_10076D2DC();
    (*(v72 + 8))(v56, v57);
  }

  sub_10000A570(&v91, &v88);
  v58 = sub_10076E04C();
  v59 = v77;
  v77[3] = v58;
  v59[4] = &protocol witness table for Margins;
  sub_10000DB7C(v59);
  sub_10076E03C();
  v76(v78, v34);
  return sub_10000CD74(&v91);
}

id sub_1003BA380()
{
  v1 = v0;
  v2 = sub_100766FCC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_10076703C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v34 - v19;
  v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
  v21 = *(v12 + 16);
  v42 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_displayOptions;
  v43 = v21;
  (v21)(&v34 - v19, &v1[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_displayOptions], v11, v18);
  sub_100766FDC();
  v36 = *(v12 + 8);
  v36(v20, v11);
  v22 = sub_100766F9C();
  v23 = *(v3 + 8);
  v39 = v3 + 8;
  v40 = v2;
  v41 = v23;
  v23(v10, v2);
  if (!v22)
  {
    v22 = [objc_opt_self() secondaryLabelColor];
  }

  [v35 setTextColor:v22];

  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
  v43(v16, &v1[v42], v11);
  sub_100766FDC();
  v25 = v16;
  v26 = v36;
  v36(v25, v11);
  v27 = sub_100766FAC();
  v28 = v40;
  v41(v7, v40);
  if (!v27)
  {
    v27 = [objc_opt_self() labelColor];
  }

  [v24 setTextColor:v27];

  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
  v30 = v37;
  v43(v37, &v1[v42], v11);
  v31 = v38;
  sub_100766FDC();
  v26(v30, v11);
  v32 = sub_100766F7C();
  v41(v31, v28);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v32];

  return [v1 setNeedsLayout];
}

id sub_1003BA83C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003BA98C()
{
  result = sub_10076703C();
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

uint64_t sub_1003BAA40(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001CE50(a1);
  sub_10001CE50(a1);
  sub_1000167E0(v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000167E0(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000167E0(a1);
}

uint64_t sub_1003BAAF4(uint64_t a1, char *a2)
{
  v3 = sub_10076705C();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1004D5164(v4, a2);
}

uint64_t sub_1003BAB64()
{
  sub_10075FD2C();
  sub_1003BB74C(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  sub_100760BFC();
  sub_100760BFC();
  return sub_100760BFC();
}

uint64_t sub_1003BAC5C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtensionP33_37948684BD19837A3AF46FC5B97A3E1B10TextLayout_textStack;
  v2 = sub_10076D65C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003BAD20()
{
  result = sub_10076D65C();
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

uint64_t sub_1003BADB0(void *a1)
{
  v1 = [a1 traitCollection];
  sub_1003B82BC(v1);

  return sub_10076D1BC();
}

double sub_1003BAE5C(void *a1)
{
  v2 = sub_10076D59C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_10076DDEC();
  sub_10076D65C();
  sub_1003BB74C(&qword_100955A18, &type metadata accessor for VerticalStack);
  sub_10076D91C();
  sub_1003BB74C(&qword_100955A30, &type metadata accessor for VerticalStack.Placements);
  sub_10076DAFC();
  v9 = v8;

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_1003BB09C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10076D5EC();
  v5 = sub_10076D60C();
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v5)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D9AC();
  v7 = sub_10000A61C(v6, a3);
  v10[3] = v6;
  v10[4] = &protocol witness table for StaticDimension;
  v8 = sub_10000DB7C(v10);
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  return sub_10076D5BC();
}

uint64_t sub_1003BB1A4()
{
  sub_10076D5EC();
  sub_10000A5D4(&qword_100955A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  v1 = sub_10076D60C();
  *(inited + 32) = v1;
  v2 = sub_10076D61C();
  *(inited + 40) = v2;
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v1)
  {
    sub_10076D62C();
  }

  sub_10076D62C();
  if (sub_10076D62C() != v2)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (qword_100940310 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D9AC();
  v4 = sub_10000A61C(v3, qword_1009558A0);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v5 = sub_10000DB7C(v10);
  v6 = *(*(v3 - 8) + 16);
  v6(v5, v4, v3);
  sub_10076D5BC();
  if (qword_100940318 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v3, qword_1009558B8);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v8 = sub_10000DB7C(v10);
  v6(v8, v7, v3);
  return sub_10076D5CC();
}

id sub_1003BB3D8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
  sub_1007670AC();
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
  sub_1007670BC();
  if (v6)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
  sub_10076706C();
  if (v9)
  {
    v10 = sub_10076FF6C();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText:v10];

  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork];
  v12 = sub_10076705C();
  if (!v12)
  {
    i = 0;
    goto LABEL_15;
  }

  if (v12 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

LABEL_15:
    v14 = 4;
    if (i < 4)
    {
      v14 = i;
    }

    v15 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount;
    v16 = *&v11[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount];
    *&v11[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount] = v14;
    v17 = &off_100911000;
    if (v14 == v16)
    {
      break;
    }

    sub_10000A5D4(&unk_100942870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100786040;
    v19 = *&v11[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1];
    *(inited + 32) = v19;
    v20 = *&v11[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2];
    *(inited + 40) = v20;
    v21 = *&v11[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon3];
    *(inited + 48) = v21;
    v22 = *&v11[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon4];
    *(inited + 56) = v22;
    v23 = inited & 0xC000000000000001;
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    if ((inited & 0xC000000000000001) != 0)
    {
      v28 = sub_10077149C();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v28 = v24;
    }

    v29 = v28;
    [v28 setHidden:*&v11[v15] < 1];

    if (v23)
    {
      v30 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_32;
      }

      v30 = *(inited + 40);
    }

    v31 = v30;
    [v30 setHidden:*&v11[v15] < 2];

    if (v23)
    {
      v32 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_32;
      }

      v32 = *(inited + 48);
    }

    v33 = v32;
    [v32 setHidden:*&v11[v15] < 3];

    if (v23)
    {
      v34 = sub_10077149C();
      goto LABEL_30;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v34 = *(inited + 56);
LABEL_30:
      v35 = v34;
      [v34 setHidden:*&v11[v15] < 4];

      swift_setDeallocating();
      swift_arrayDestroy();
      v17 = &off_100911000;
      [v11 setNeedsLayout];
      return [v1 v17[194]];
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return [v1 v17[194]];
}

uint64_t sub_1003BB74C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003BB794()
{
  v1 = sub_100766FCC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076702C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766F4C();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_100766FBC();
  sub_100766F5C();
  v10 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = sub_10076FF6C();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1003BBB08(uint64_t a1)
{
  v57 = a1;
  v1 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v1 - 8);
  v56 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = v45 - v4;
  v5 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v5 - 8);
  v54 = v45 - v6;
  v7 = sub_1007611EC();
  __chkstk_darwin(v7 - 8);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v45 - v10;
  v11 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v11 - 8);
  v48 = v45 - v12;
  v13 = sub_10076121C();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076481C();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076B21C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  v24 = sub_10076B27C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B28C();
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v28 == enum case for Uber.AssetType.video(_:))
    {
      if (sub_10076B25C())
      {
        sub_100762F0C();
        sub_10076F5CC();
        v45[1] = v60[0];
        (*(v46 + 104))(v47, enum case for VideoFillMode.scaleAspectFill(_:), v13);
        sub_10076B84C();
        sub_10076BEFC();
        v31 = v48;
        sub_10076D3AC();

        v32 = sub_10076D39C();
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        sub_10076B7EC();
        sub_10076B82C();
        sub_10076B7FC();
        sub_10076B7DC();
        sub_10076B83C();
        v33 = v51;
        sub_1007647FC();
        sub_10076B7CC();
        v34 = v54;
        sub_10076B85C();
        v35 = sub_10075DB7C();
        (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        v36 = v55;
        sub_10076B81C();
        v37 = v56;
        sub_10076B80C();
        type metadata accessor for VideoView();
        sub_1003BC460(&qword_100942810, type metadata accessor for VideoView);
        v38 = sub_100762EEC();
        sub_10000CFBC(v37, &unk_10094C030);
        sub_10000CFBC(v36, &unk_10094C030);
        sub_10000CFBC(v34, &unk_1009435D0);
        sub_10000CFBC(v60, &qword_100943310);
        if (v38)
        {
          v39 = v38;
          sub_10076B84C();
          v40 = sub_10076BE1C();

          [v39 setBackgroundColor:v40];

          (*(v52 + 8))(v33, v53);
        }

        else
        {
          (*(v52 + 8))(v33, v53);
        }

        return v38;
      }
    }

    else if (v28 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v25 + 8))(v27, v24);
    }

    return 0;
  }

  v29 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10076B23C();
  (*(v18 + 104))(v20, enum case for Uber.Style.inline(_:), v17);
  sub_1003BC460(&qword_10094DC28, &type metadata accessor for Uber.Style);
  sub_10077018C();
  sub_10077018C();
  if (v60[0] == v58 && v60[1] == v59)
  {
    v30 = *(v18 + 8);
    v30(v20, v17);
    v30(v23, v17);
  }

  else
  {
    v41 = sub_10077167C();
    v42 = *(v18 + 8);
    v42(v20, v17);
    v42(v23, v17);

    if ((v41 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [v29 setContentMode:2];
LABEL_11:
  v38 = v29;
  if (!sub_10076B26C() || (v43 = sub_10076BE1C(), , !v43))
  {
    if (sub_10076B20C())
    {
      v43 = sub_10076BE1C();
    }

    else
    {
      v43 = 0;
    }
  }

  [v38 setBackgroundColor:v43];

  return v38;
}