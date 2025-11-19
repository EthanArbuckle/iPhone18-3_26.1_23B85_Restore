uint64_t sub_3DFCC()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_3E110, v3, v2);
}

uint64_t sub_3E110()
{

  sub_3F084(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3E1A0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_3F160, v3, v2);
}

uint64_t sub_3E2E4()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_3F160, v3, v2);
}

uint64_t sub_3E428()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_3F160, v3, v2);
}

uint64_t sub_3E6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_BB170();
  v5[4] = sub_BB160();
  v7 = sub_BB140();

  return _swift_task_switch(sub_3E790, v7, v6);
}

uint64_t sub_3E790()
{
  v1 = *(v0 + 24);
  result = sub_3D428();
  if (v1)
  {
    v3.super.super.super.isa = *(v0 + 24);

    LiveSpeechCoordinator.addSceneForExternalDisplay(_:)(v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3E8A4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = v4;
  v8 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_B9A10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B95F0();
  v15 = sub_B9A00();
  v16 = sub_BB320();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, a2, v17, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v18 = sub_BB1A0();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_BB170();
  v19 = a1;
  v20 = v6;
  v21 = sub_BB160();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  v22[5] = a1;
  sub_6A2B8(0, 0, v10, v25, v22);
}

uint64_t sub_3EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_BB170();
  v5[4] = sub_BB160();
  v7 = sub_BB140();

  return _swift_task_switch(sub_3EB78, v7, v6);
}

uint64_t sub_3EB78()
{
  v1 = *(v0 + 24);
  result = sub_3D428();
  if (v1)
  {
    v3.super.super.super.isa = *(v0 + 24);

    LiveSpeechCoordinator.removeSceneForExternalDisplay(_:)(v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3ED10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B84;

  return sub_3EAE0(a1, v4, v5, v7, v6);
}

uint64_t sub_3EDD0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_4C9C(_swiftEmptyArrayStorage);
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t sub_3EE40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3EE88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B84;

  return sub_3E6F8(a1, v4, v5, v7, v6);
}

uint64_t sub_3EF48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_3EF98(uint64_t a1)
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
  v11[1] = sub_CA7C;

  return sub_3D954(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_3F084(uint64_t a1)
{
  v2 = sub_2E50(qword_F9ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3F0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(qword_F9ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LiveSpeechCoordinator.__allocating_init(withService:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_getObjectType();
  v3 = sub_3EDD0(a1, v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t LiveSpeechCoordinator.startLiveSpeech()()
{
  v1[15] = v0;
  v2 = sub_B9A10();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_BB170();
  v1[22] = sub_BB160();
  v4 = sub_BB140();
  v1[23] = v4;
  v1[24] = v3;

  return _swift_task_switch(sub_3F2D8, v4, v3);
}

uint64_t sub_3F2D8()
{
  sub_B95C0();

  v1 = sub_B9A00();
  v2 = sub_BB2E0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 24);

    _os_log_impl(&dword_0, v1, v2, "Coordinator asked to start LiveSpeech. isRunning=%{BOOL}d", v5, 8u);
  }

  else
  {
  }

  v6 = v0[21];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  v10 = *(v8 + 8);
  v0[25] = v10;
  v0[26] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if (*(v9 + 24))
  {

    v11 = v0[1];

    return v11();
  }

  else
  {
    *(v9 + 24) = 1;
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_3F4BC;

    return sub_42688(0, 1);
  }
}

uint64_t sub_3F4BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = v2;

  v6 = v4[24];
  v7 = v4[23];
  if (v2)
  {
    v8 = sub_3FE18;
  }

  else
  {
    v8 = sub_3F604;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_3F604()
{
  sub_B95C0();
  v1 = sub_B9A00();
  v2 = sub_BB2E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Coordinator did show LiveSpeech UI on main screen", v3, 2u);
  }

  v4 = v0[25];
  v5 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v23 = *(v0 + 14);

  v4(v5, v6);
  v0[31] = sub_259FC;
  v0[32] = &off_F02E8 & 0xFFFFFFFFFFFFLL | 0x1DD3000000000000;
  v0[33] = type metadata accessor for LiveSpeechRootViewController_iOS(0);
  sub_259FC();
  v8 = *(v7 + 56);
  *(v7 + 56) = v23;
  v9 = v23;

  swift_beginAccess();
  v10 = *(v7 + 48);
  v0[34] = v10;
  if (v10 >> 62)
  {
    v11 = sub_BB650();
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  }

  v0[35] = v11;

  v13 = v0[34];
  if (v11)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_BB590();
    }

    else
    {
      if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;
    v0[36] = v14;
    v0[37] = 1;
    v16 = v14;
    v17 = swift_task_alloc();
    v0[38] = v17;
    *v17 = v0;
    v17[1] = sub_3F980;

    return sub_42688(v15, 0);
  }

  else
  {
    v18 = v0[15];

    if (*(v18 + 24) == 1)
    {
      v19 = v0[28];
      if (*(v0[15] + 25))
      {
        v20 = sub_BAFA0();
        v0[6] = sub_447A0;
        v0[7] = 0;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_44870;
        v0[5] = &unk_F0C88;
        v21 = _Block_copy(v0 + 2);
        AnalyticsSendEventLazy();

        _Block_release(v21);
        v19 = v20;
      }
    }

    else
    {
      v19 = v0[28];
    }

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_3F980(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[39] = a1;
  v4[40] = v1;

  v5 = v3[36];
  if (v1)
  {

    v6 = v4[23];
    v7 = v4[24];
    v8 = sub_40004;
  }

  else
  {

    v6 = v4[23];
    v7 = v4[24];
    v8 = sub_3FAC8;
  }

  return _swift_task_switch(v8, v6, v7);
}

id sub_3FAC8()
{
  (v0[31])(v0[33], &off_F02D8);
  sub_B95C0();

  v1 = sub_B9A00();
  v2 = sub_BB2E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[36];
    v4 = v0[15];
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 24);

    _os_log_impl(&dword_0, v1, v2, "Coordinator did show LiveSpeech UI on external screen (isRunning=%{BOOL}d)", v5, 8u);
  }

  else
  {

    v1 = v0[36];
  }

  v6 = v0[39];
  v7 = v0[37];
  v8 = v0[35];
  v9 = v0[25];
  v10 = v0[19];
  v11 = v0[16];

  result = v9(v10, v11);
  if (v7 == v8)
  {
    v13 = v0[15];

    if (*(v13 + 24) == 1)
    {
      v14 = v0[28];
      if (*(v0[15] + 25))
      {
        v15 = sub_BAFA0();
        v0[6] = sub_447A0;
        v0[7] = 0;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_44870;
        v0[5] = &unk_F0C88;
        v16 = _Block_copy(v0 + 2);
        AnalyticsSendEventLazy();

        _Block_release(v16);
        v14 = v15;
      }
    }

    else
    {
      v14 = v0[28];
    }

    v22 = v0[1];

    return v22();
  }

  v17 = v0[37];
  v18 = v0[34];
  if ((v18 & 0xC000000000000001) != 0)
  {
    result = sub_BB590();
  }

  else
  {
    if (v17 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_21:
      __break(1u);
      return result;
    }

    result = *(v18 + 8 * v17 + 32);
  }

  v0[36] = result;
  v0[37] = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v19 = result;
  v20 = result;
  v21 = swift_task_alloc();
  v0[38] = v21;
  *v21 = v0;
  v21[1] = sub_3F980;

  return sub_42688(v19, 0);
}

uint64_t sub_3FE18()
{
  v17 = v0;

  sub_B95C0();
  swift_errorRetain();
  v1 = sub_B9A00();
  v2 = sub_BB300();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[25];
    v3 = v0[18];
    v4 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_BB770();
    v9 = sub_7A1D8(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "Coordinator could not start LiveSpeech: %s", v5, 0xCu);
    sub_28020(v6);

    v15(v3, v4);
  }

  else
  {
    v10 = v0[25];
    v11 = v0[18];
    v12 = v0[16];

    v10(v11, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_40004()
{
  v19 = v0;
  v1 = v0[36];
  v2 = v0[28];

  sub_B95C0();
  swift_errorRetain();
  v3 = sub_B9A00();
  v4 = sub_BB300();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[25];
    v5 = v0[18];
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_BB770();
    v11 = sub_7A1D8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "Coordinator could not start LiveSpeech: %s", v7, 0xCu);
    sub_28020(v8);

    v17(v5, v6);
  }

  else
  {
    v12 = v0[25];
    v13 = v0[18];
    v14 = v0[16];

    v12(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t LiveSpeechCoordinator.stopLiveSpeech()()
{
  v1[9] = v0;
  v2 = sub_B9A10();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_BB170();
  v1[16] = sub_BB160();
  v4 = sub_BB140();
  v1[17] = v4;
  v1[18] = v3;

  return _swift_task_switch(sub_40318, v4, v3);
}

uint64_t sub_40318()
{
  sub_B95C0();

  v1 = sub_B9A00();
  v2 = sub_BB320();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[9];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 24);

    _os_log_impl(&dword_0, v1, v2, "Coordinator asked to stop LiveSpeech. isRunning=%{BOOL}d", v5, 8u);
  }

  else
  {
  }

  v6 = v0[15];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  v10 = *(v8 + 8);
  v0[19] = v10;
  v0[20] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if (*(v9 + 24) == 1)
  {
    v11 = v0[9];
    *(v9 + 24) = 0;
    v12 = *(v11 + 56);
    v0[21] = v12;
    if (v12)
    {
      v13 = type metadata accessor for LiveSpeechRootViewController_iOS(0);
      v12;
      v14 = swift_task_alloc();
      v0[22] = v14;
      *v14 = v0;
      v14[1] = sub_40624;

      return (sub_25AA0)(v13, &off_F02D8);
    }

    else
    {
      v17 = swift_task_alloc();
      v0[23] = v17;
      *v17 = v0;
      v17[1] = sub_40784;

      return sub_42DBC(0, 1);
    }
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_40624()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 184) = v4;
  *v4 = v3;
  v4[1] = sub_40784;

  return sub_42DBC(0, 1);
}

uint64_t sub_40784(void *a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_40EA0;
  }

  else
  {

    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_408AC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_408AC()
{
  sub_B95C0();

  v1 = sub_B9A00();
  v2 = sub_BB320();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 72);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 24);

    _os_log_impl(&dword_0, v1, v2, "Coordinator did hide LiveSpeech UI on main screen (isRunning=%{BOOL}d)", v5, 8u);
  }

  else
  {
  }

  v6 = *(v0 + 72);
  (*(v0 + 152))(*(v0 + 112), *(v0 + 80));
  v7 = v6[7];
  v6[7] = 0;
  v6[8] = 0;

  swift_beginAccess();
  v8 = v6[6];
  *(v0 + 200) = v8;
  if (v8 >> 62)
  {
    v9 = sub_BB650();
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  *(v0 + 208) = v9;

  v11 = *(v0 + 200);
  if (v9)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = sub_BB590();
    }

    else
    {
      if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v12 = *(v11 + 32);
    }

    v13 = v12;
    *(v0 + 216) = v12;
    *(v0 + 224) = 1;
    v14 = v12;
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v15[1] = sub_40B20;

    return sub_42DBC(v13, 0);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_40B20(void *a1)
{
  v4 = *v2;
  v4[30] = v1;

  v5 = v4[27];
  if (v1)
  {

    v6 = v4[17];
    v7 = v4[18];
    v8 = sub_4108C;
  }

  else
  {

    v6 = v4[17];
    v7 = v4[18];
    v8 = sub_40C70;
  }

  return _swift_task_switch(v8, v6, v7);
}

id sub_40C70()
{
  sub_B95C0();
  v1 = sub_B9A00();
  v2 = sub_BB320();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Coordinator did hide LiveSpeech UI on external screen", v3, 2u);

    v4 = v0[27];
  }

  else
  {
    v4 = v1;
    v1 = v0[27];
  }

  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[19];
  v8 = v0[13];
  v9 = v0[10];

  result = v7(v8, v9);
  if (v5 == v6)
  {

    v11 = v0[1];

    return v11();
  }

  v12 = v0[28];
  v13 = v0[25];
  if ((v13 & 0xC000000000000001) != 0)
  {
    result = sub_BB590();
  }

  else
  {
    if (v12 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    result = *(v13 + 8 * v12 + 32);
  }

  v0[27] = result;
  v0[28] = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = result;
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = sub_40B20;

  return sub_42DBC(v14, 0);
}

uint64_t sub_40EA0()
{
  v17 = v0;

  sub_B95C0();
  swift_errorRetain();
  v1 = sub_B9A00();
  v2 = sub_BB300();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[19];
    v3 = v0[12];
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_BB770();
    v9 = sub_7A1D8(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "Coordinator could not stop LiveSpeech: %s", v5, 0xCu);
    sub_28020(v6);

    v15(v3, v4);
  }

  else
  {
    v10 = v0[19];
    v11 = v0[12];
    v12 = v0[10];

    v10(v11, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_4108C()
{
  v18 = v0;
  v1 = v0[27];

  sub_B95C0();
  swift_errorRetain();
  v2 = sub_B9A00();
  v3 = sub_BB300();

  if (os_log_type_enabled(v2, v3))
  {
    v16 = v0[19];
    v4 = v0[12];
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_BB770();
    v10 = sub_7A1D8(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Coordinator could not stop LiveSpeech: %s", v6, 0xCu);
    sub_28020(v7);

    v16(v4, v5);
  }

  else
  {
    v11 = v0[19];
    v12 = v0[12];
    v13 = v0[10];

    v11(v12, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t LiveSpeechCoordinator.startLiveCaptions()()
{
  v1[12] = v0;
  v2 = sub_B9A10();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_BB170();
  v1[18] = sub_BB160();
  v4 = sub_BB140();
  v1[19] = v4;
  v1[20] = v3;

  return _swift_task_switch(sub_4138C, v4, v3);
}

uint64_t sub_4138C()
{
  sub_B95D0();

  v1 = sub_B9A00();
  v2 = sub_BB320();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 25);

    _os_log_impl(&dword_0, v1, v2, "Coordinator asked to start LiveCaptions. isRunning=%{BOOL}d", v5, 8u);
  }

  else
  {
  }

  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  v10 = *(v8 + 8);
  v0[21] = v10;
  v0[22] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if (*(v9 + 25))
  {

    v11 = v0[1];

    return v11();
  }

  else
  {
    *(v9 + 25) = 1;
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_41568;

    return sub_43658(0, 1);
  }
}

uint64_t sub_41568(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = v2;

  v6 = v4[20];
  v7 = v4[19];
  if (v2)
  {
    v8 = sub_418BC;
  }

  else
  {
    v8 = sub_416B0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_416B0()
{

  sub_B95D0();
  v1 = sub_B9A00();
  v2 = sub_BB2E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Coordinator did show LiveCaptions UI on main screen", v3, 2u);
  }

  v4 = v0[21];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v15 = *(v0 + 12);

  v4(v5, v6);
  v8 = *(v7 + 72);
  *(v7 + 72) = v15;
  v9 = v15;

  if (*(v7 + 24) == 1)
  {
    v10 = v0[24];
    if (*(v0[12] + 25))
    {
      v11 = sub_BAFA0();
      v0[6] = sub_447A0;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_44870;
      v0[5] = &unk_F0CB0;
      v12 = _Block_copy(v0 + 2);
      AnalyticsSendEventLazy();

      _Block_release(v12);
      v10 = v11;
    }
  }

  else
  {
    v10 = v0[24];
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_418BC()
{
  v17 = v0;

  sub_B95D0();
  swift_errorRetain();
  v1 = sub_B9A00();
  v2 = sub_BB300();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[21];
    v3 = v0[15];
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_BB770();
    v9 = sub_7A1D8(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "Coordinator could not start LiveCaptions: %s", v5, 0xCu);
    sub_28020(v6);

    v15(v3, v4);
  }

  else
  {
    v10 = v0[21];
    v11 = v0[15];
    v12 = v0[13];

    v10(v11, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t LiveSpeechCoordinator.stopLiveCaptions()()
{
  v1[6] = v0;
  v2 = sub_B9A10();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_BB170();
  v1[12] = sub_BB160();
  v4 = sub_BB140();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_41BB0, v4, v3);
}

uint64_t sub_41BB0()
{
  sub_B95D0();

  v1 = sub_B9A00();
  v2 = sub_BB320();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 25);

    _os_log_impl(&dword_0, v1, v2, "Coordinator asked to stop LiveCaptions. isRunning=%{BOOL}d", v5, 8u);
  }

  else
  {
  }

  v6 = v0[11];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[6];
  v10 = *(v8 + 8);
  v0[15] = v10;
  v0[16] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if (*(v9 + 25) == 1)
  {
    *(v9 + 25) = 0;
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_41D88;

    return sub_45548(1);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_41D88(void *a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = *(v4 + 104);
    v6 = *(v4 + 112);
    v7 = sub_42048;
  }

  else
  {

    v5 = *(v4 + 104);
    v6 = *(v4 + 112);
    v7 = sub_41EB0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_41EB0()
{
  sub_B95D0();

  v1 = sub_B9A00();
  v2 = sub_BB320();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 25);

    _os_log_impl(&dword_0, v1, v2, "Coordinator did hide LiveCaptions UI on main screen (isRunning=%{BOOL}d)", v5, 8u);
  }

  else
  {
  }

  v6 = *(v0 + 48);
  (*(v0 + 120))(*(v0 + 80), *(v0 + 56));
  v8 = *(v6 + 72);
  v7 = v6 + 72;
  if (v8)
  {
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    AXLTCaptionsProvider.activate(_:)(0);
  }

  v9 = *v7;
  *v7 = 0;
  *(v7 + 8) = 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_42048()
{
  v17 = v0;

  sub_B95D0();
  swift_errorRetain();
  v1 = sub_B9A00();
  v2 = sub_BB300();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[15];
    v3 = v0[9];
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_BB770();
    v9 = sub_7A1D8(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "Coordinator could not stop LiveCaptions: %s", v5, 0xCu);
    sub_28020(v6);

    v15(v3, v4);
  }

  else
  {
    v10 = v0[15];
    v11 = v0[9];
    v12 = v0[7];

    v10(v11, v12);
  }

  v13 = v0[1];

  return v13();
}

Swift::Void __swiftcall LiveSpeechCoordinator.addSceneForExternalDisplay(_:)(UIWindowScene a1)
{
  v2 = v1;
  v4 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  v7 = a1.super.super.super.isa;
  sub_BB0D0();
  if (*(&dword_10 + (*(v2 + 48) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_BB110();
  }

  sub_BB130();
  swift_endAccess();
  if (*(v2 + 24) == 1)
  {
    v8 = sub_BB1A0();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_BB170();
    v9 = v7;

    v10 = sub_BB160();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v2;
    v11[5] = v9;
    sub_6A2B8(0, 0, v6, &unk_C0080, v11);
  }
}

Swift::Void __swiftcall LiveSpeechCoordinator.removeSceneForExternalDisplay(_:)(UIWindowScene a1)
{
  v2 = v1;
  v4 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  swift_beginAccess();
  v7 = a1.super.super.super.isa;
  v8 = sub_45BDC((v2 + 48), v7);

  v9 = *(v2 + 48);
  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10 >= v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    swift_endAccess();
    __break(1u);
    return;
  }

  v10 = sub_BB650();
  if (v10 < v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_7E9F4(v8, v10);
  swift_endAccess();
  if (*(v2 + 24) == 1)
  {
    v11 = sub_BB1A0();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_BB170();
    v12 = v7;

    v13 = sub_BB160();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v2;
    v14[5] = v12;
    sub_6A2B8(0, 0, v6, &unk_C0090, v14);
  }
}

id sub_425C8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v4 = *(v0 + 32);
    *(v0 + 32) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t LiveSpeechCoordinator.init(withService:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_3EDD0(a1, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_42688(uint64_t a1, char a2)
{
  *(v3 + 329) = a2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v2;
  sub_BB170();
  *(v3 + 264) = sub_BB160();
  v5 = sub_BB140();
  *(v3 + 272) = v5;
  *(v3 + 280) = v4;

  return _swift_task_switch(sub_42724, v5, v4);
}

uint64_t sub_42724()
{
  v1 = objc_allocWithZone(type metadata accessor for LiveSpeechRootViewController_iOS(0));
  *&v1[qword_F9490] = 0;
  v2 = &v1[qword_F9488];
  *v2 = 1852399949;
  *(v2 + 1) = 0xE400000000000000;
  v3 = objc_allocWithZone(type metadata accessor for LiveSpeechStore(0));
  *&v1[qword_F9480] = LiveSpeechStore.init(identifier:)(1852399949, 0xE400000000000000);
  v4 = objc_allocWithZone(type metadata accessor for PassThroughView(0));
  *(v0 + 240) = 0;
  *(v0 + 232) = 0;
  sub_B9E10();
  v5 = sub_BA360();
  *(v0 + 144) = 0u;
  *(v0 + 288) = v5;
  *(v0 + 160) = 0u;
  v6 = sub_425C8();
  *(v0 + 296) = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 304) = Strong;
  v17 = v5;
  v8 = sub_BAFA0();
  *(v0 + 312) = v8;
  sub_45FB0(v0 + 144, v0 + 176);
  v9 = *(v0 + 200);
  if (v9)
  {
    v10 = sub_45F6C((v0 + 176), *(v0 + 200));
    v11 = *(v9 - 8);
    v12 = swift_task_alloc();
    (*(v11 + 16))(v12, v10, v9);
    v13 = sub_BB6F0();
    (*(v11 + 8))(v12, v9);

    sub_28020(v0 + 176);
  }

  else
  {
    v13 = 0;
  }

  *(v0 + 320) = v13;
  v14 = *(v0 + 248);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 328;
  *(v0 + 24) = sub_42A40;
  v15 = swift_continuation_init();
  *(v0 + 136) = sub_2E50(&qword_F9FC0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_44744;
  *(v0 + 104) = &unk_F0DC8;
  *(v0 + 112) = v15;
  [v6 addContentViewController:v17 withUserInteractionEnabled:1 forService:Strong forSceneClientIdentifier:v8 context:0 userInterfaceStyle:2 forWindowScene:v14 spatialConfiguration:v13 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_42A40()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return _swift_task_switch(sub_42B48, v2, v1);
}

void sub_42B48()
{
  v19 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 328);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v3 == 1)
  {
    if (*(v0 + 329) == 1)
    {
      v4 = *(v0 + 288);
      v5 = *(v0 + 256);
      sub_C5E8(v0 + 144, &qword_F9FD8);

      v6 = *(v5 + 56);
      *(v5 + 56) = v4;
      *(v5 + 64) = &off_F02D8;
      v7 = v4;
    }

    else
    {
      v10 = *(v0 + 248);
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = *(v0 + 288);
      v12 = *(v0 + 256);
      v13 = v10;

      swift_beginAccess();
      v14 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v12 + 40);
      *(v12 + 40) = 0x8000000000000000;
      sub_453B8(v14, v13, isUniquelyReferenced_nonNull_native, &v18);

      *(v12 + 40) = v18;
      swift_endAccess();
      sub_C5E8(v0 + 144, &qword_F9FD8);
    }

    v16 = *(v0 + 8);
    v17 = *(v0 + 288);

    v16(v17, &off_F02D8);
  }

  else
  {
    v8 = *(v0 + 288);

    sub_B9910();
    sub_46020(&qword_F9FE0, &type metadata accessor for LiveSpeechError);
    swift_allocError();
    sub_B9920();
    swift_willThrow();

    sub_C5E8(v0 + 144, &qword_F9FD8);
    v9 = *(v0 + 8);

    v9();
  }
}

uint64_t sub_42DBC(uint64_t a1, char a2)
{
  *(v3 + 313) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  sub_BB170();
  *(v3 + 224) = sub_BB160();
  v5 = sub_BB140();
  *(v3 + 232) = v5;
  *(v3 + 240) = v4;

  return _swift_task_switch(sub_42E58, v5, v4);
}

uint64_t sub_42E58(uint64_t Strong)
{
  v2 = v1 + 312;
  if (*(v1 + 313) == 1)
  {
    v3 = *(v1 + 216);
    v4 = *(v3 + 56);
    *(v1 + 248) = v4;
    *(v1 + 256) = *(v3 + 64);
    if (v4)
    {
      v5 = v4;
      v6 = sub_425C8();
      *(v1 + 264) = v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v1 + 272) = Strong;
      if (Strong)
      {
        v7 = Strong;
        v8 = v1 + 80;
        *(v1 + 80) = v1;
        *(v1 + 120) = v2;
        *(v1 + 88) = sub_43190;
        v9 = swift_continuation_init();
        *(v1 + 200) = sub_2E50(&qword_F9FC0);
        *(v1 + 144) = _NSConcreteStackBlock;
        *(v1 + 152) = 1107296256;
        *(v1 + 160) = sub_44744;
        *(v1 + 168) = &unk_F0DA0;
        *(v1 + 176) = v9;
        [v6 removeContentViewController:v5 withUserInteractionEnabled:1 forService:v7 context:0 completion:v1 + 144];
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!*(v1 + 208))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = *(v1 + 216);
    swift_beginAccess();
    v11 = *(v10 + 40);
    if (*(v11 + 16))
    {
      v12 = sub_7D09C(*(v1 + 208));
      if (v13)
      {
        v14 = *(v11 + 56) + 16 * v12;
        v15 = *v14;
        *(v1 + 280) = *v14;
        *(v1 + 288) = *(v14 + 8);
        swift_endAccess();
        v16 = v15;
        v17 = sub_425C8();
        *(v1 + 296) = v17;
        Strong = swift_unknownObjectWeakLoadStrong();
        *(v1 + 304) = Strong;
        if (Strong)
        {
          v18 = Strong;
          v8 = v1 + 16;
          *(v1 + 16) = v1;
          *(v1 + 56) = v2;
          *(v1 + 24) = sub_433F4;
          v19 = swift_continuation_init();
          *(v1 + 200) = sub_2E50(&qword_F9FC0);
          *(v1 + 144) = _NSConcreteStackBlock;
          *(v1 + 152) = 1107296256;
          *(v1 + 160) = sub_44744;
          *(v1 + 168) = &unk_F0D78;
          *(v1 + 176) = v19;
          [v17 removeContentViewController:v16 withUserInteractionEnabled:1 forService:v18 context:0 completion:v1 + 144];
LABEL_10:
          Strong = v8;

          return _swift_continuation_await(Strong);
        }

LABEL_19:
        __break(1u);
        return _swift_continuation_await(Strong);
      }
    }

    swift_endAccess();
  }

  v20 = *(v1 + 8);

  return v20(0, 0);
}

uint64_t sub_43190()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return _swift_task_switch(sub_43298, v2, v1);
}

uint64_t sub_43298()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);

  v3 = *(v0 + 312);

  swift_unknownObjectRelease();
  if (v3 == 1)
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 8);

    return v6(v4, v5);
  }

  else
  {
    v8 = *(v0 + 248);
    sub_B9910();
    sub_46020(&qword_F9FE0, &type metadata accessor for LiveSpeechError);
    swift_allocError();
    sub_B9920();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_433F4()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return _swift_task_switch(sub_434FC, v2, v1);
}

uint64_t sub_434FC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  v3 = *(v0 + 312);

  swift_unknownObjectRelease();
  if (v3 == 1)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    v6 = *(v0 + 8);

    return v6(v4, v5);
  }

  else
  {
    v8 = *(v0 + 280);
    sub_B9910();
    sub_46020(&qword_F9FE0, &type metadata accessor for LiveSpeechError);
    swift_allocError();
    sub_B9920();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_43658(uint64_t a1, char a2)
{
  *(v3 + 297) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  sub_2E50(&qword_F9FD0);
  *(v3 + 224) = swift_task_alloc();
  sub_BB170();
  *(v3 + 232) = sub_BB160();
  v5 = sub_BB140();
  *(v3 + 240) = v5;
  *(v3 + 248) = v4;

  return _swift_task_switch(sub_4372C, v5, v4);
}

uint64_t sub_4372C()
{
  v1 = *(v0 + 224);
  v2 = objc_allocWithZone(type metadata accessor for LiveCaptionsRootViewController());
  *&v2[qword_FA990] = sub_6349C;
  v3 = type metadata accessor for LiveCaptionsRootView();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = sub_BA370();
  *(v0 + 144) = 0u;
  *(v0 + 256) = v4;
  *(v0 + 160) = 0u;
  v5 = sub_425C8();
  *(v0 + 264) = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 272) = Strong;
  v16 = v4;
  v7 = sub_BAFA0();
  *(v0 + 280) = v7;
  sub_45FB0(v0 + 144, v0 + 176);
  v8 = *(v0 + 200);
  if (v8)
  {
    v9 = sub_45F6C((v0 + 176), *(v0 + 200));
    v10 = *(v8 - 8);
    v11 = swift_task_alloc();
    (*(v10 + 16))(v11, v9, v8);
    v12 = sub_BB6F0();
    (*(v10 + 8))(v11, v8);

    sub_28020(v0 + 176);
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 288) = v12;
  v13 = *(v0 + 208);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 296;
  *(v0 + 24) = sub_43A30;
  v14 = swift_continuation_init();
  *(v0 + 136) = sub_2E50(&qword_F9FC0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_44744;
  *(v0 + 104) = &unk_F0D50;
  *(v0 + 112) = v14;
  [v5 addContentViewController:v16 withUserInteractionEnabled:1 forService:Strong forSceneClientIdentifier:v7 context:0 userInterfaceStyle:2 forWindowScene:v13 spatialConfiguration:v12 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_43A30()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return _swift_task_switch(sub_43B38, v2, v1);
}

uint64_t sub_43B38()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);

  v4 = *(v0 + 296);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v4 == 1)
  {
    v5 = *(v0 + 297);
    sub_C5E8(v0 + 144, &qword_F9FD8);
    if (v5 == 1)
    {
      v6 = *(v0 + 256);
      v7 = *(v0 + 216);
      v8 = *(v7 + 72);
      *(v7 + 72) = v6;
      *(v7 + 80) = &off_F1888;
      v9 = v6;
    }

    v10 = *(v0 + 8);
    v11 = *(v0 + 256);

    return v10(v11, &off_F1888);
  }

  else
  {
    v13 = *(v0 + 256);
    sub_B9910();
    sub_46020(&qword_F9FE0, &type metadata accessor for LiveSpeechError);
    swift_allocError();
    sub_B9920();
    swift_willThrow();

    sub_C5E8(v0 + 144, &qword_F9FD8);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_43D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v7 = sub_B9A10();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = sub_BB170();
  v5[8] = sub_BB160();
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_43E58;

  return sub_42688(a5, 0);
}

uint64_t sub_43E58(void *a1)
{
  *(*v2 + 80) = v1;

  if (v1)
  {
    v4 = sub_BB140();
    v6 = v5;
    v7 = sub_44120;
  }

  else
  {

    v4 = sub_BB140();
    v6 = v8;
    v7 = sub_43FE0;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_43FE0()
{

  sub_B95C0();

  v1 = sub_B9A00();
  v2 = sub_BB2E0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[2];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 24);

    _os_log_impl(&dword_0, v1, v2, "Did show LiveSpeech UI on external screen (isRunning=%{BOOL}d)", v5, 8u);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[6], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_44120()
{

  sub_B95C0();
  v1 = sub_B9A00();
  v2 = sub_BB300();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Cannot attach LiveSpeech view controller for external display", v3, 2u);
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_44238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v7 = sub_B9A10();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = sub_BB170();
  v5[8] = sub_BB160();
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_44364;

  return sub_42DBC(a5, 0);
}

uint64_t sub_44364(void *a1)
{
  *(*v2 + 80) = v1;

  if (v1)
  {
    v4 = sub_BB140();
    v6 = v5;
    v7 = sub_4462C;
  }

  else
  {

    v4 = sub_BB140();
    v6 = v8;
    v7 = sub_444EC;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_444EC()
{

  sub_B95C0();

  v1 = sub_B9A00();
  v2 = sub_BB2E0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[2];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v4 + 24);

    _os_log_impl(&dword_0, v1, v2, "Did hide LiveSpeech UI on external screen (isRunning=%{BOOL}d)", v5, 8u);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[6], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_4462C()
{

  sub_B95C0();
  v1 = sub_B9A00();
  v2 = sub_BB300();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Cannot detach LiveSpeech view controller for external display", v3, 2u);
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_44744(uint64_t a1, char a2)
{
  **(*(*sub_45F6C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

unint64_t sub_447A0()
{
  sub_2E50(&unk_F9FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C0020;
  *(inited + 32) = 0x646568636E75616CLL;
  *(inited + 40) = 0xE800000000000000;
  sub_35DD4(0, &unk_F9A50);
  *(inited + 48) = sub_BB460(1);
  v1 = sub_5244(inited);
  swift_setDeallocating();
  sub_C5E8(inited + 32, &qword_FA000);
  return v1;
}

Class sub_44870(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_35DD4(0, &qword_F9FE8);
    v4.super.isa = sub_BAF30().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id *LiveSpeechCoordinator.deinit()
{
  sub_45F08((v0 + 2));

  return v0;
}

uint64_t LiveSpeechCoordinator.__deallocating_deinit()
{
  sub_45F08((v0 + 2));

  return swift_deallocClassInstance();
}

uint64_t sub_449B4(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_B9250();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2E50(&qword_FA018);
  v42 = a2;
  result = sub_BB680();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_BB790();
      sub_BB030();
      result = sub_BB7D0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_44D34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2E50(&qword_F8510);
  result = sub_BB680();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
        v22 = v32;
      }

      result = sub_BB480(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

char *sub_44FA8()
{
  v1 = v0;
  v35 = sub_B9250();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E50(&qword_FA018);
  v3 = *v0;
  v4 = sub_BB670();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_45228()
{
  v1 = v0;
  sub_2E50(&qword_F8510);
  v2 = *v0;
  v3 = sub_BB670();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v20;
        v19 = v18;
        result = v20;
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

uint64_t sub_453A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_453B8(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = *a4;
  v8 = sub_7D09C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_44D34(v13, a3 & 1);
      v8 = sub_7D09C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_35DD4(0, &qword_FA008);
        sub_BB730();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_45228();
      v8 = v16;
    }
  }

  v18 = *a4;
  if (v14)
  {
    v19 = v18[7] + 16 * v8;
    v20 = *v19;
    *v19 = a1;
    *(v19 + 8) = &off_F02D8;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  v21 = (v18[7] + 16 * v8);
  *v21 = a1;
  v21[1] = &off_F02D8;
  v22 = v18[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v23;

  v24 = a2;
}

uint64_t sub_45548(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 209) = a1;
  sub_BB170();
  *(v2 + 152) = sub_BB160();
  v4 = sub_BB140();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return _swift_task_switch(sub_455E4, v4, v3);
}

uint64_t sub_455E4()
{
  if (*(v0 + 209) == 1 && (v1 = *(v0 + 144), v2 = *(v1 + 72), *(v0 + 176) = v2, *(v0 + 184) = *(v1 + 80), v2))
  {
    v3 = v2;
    v4 = sub_425C8();
    *(v0 + 192) = v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 200) = Strong;
    if (Strong)
    {
      v6 = Strong;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 208;
      *(v0 + 24) = sub_457B0;
      v7 = swift_continuation_init();
      *(v0 + 136) = sub_2E50(&qword_F9FC0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_44744;
      *(v0 + 104) = &unk_F0D28;
      *(v0 + 112) = v7;
      [v4 removeContentViewController:v3 withUserInteractionEnabled:1 forService:v6 context:0 completion:v0 + 80];
      Strong = v0 + 16;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(Strong);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8(0, 0);
  }
}

uint64_t sub_457B0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_458B8, v2, v1);
}

uint64_t sub_458B8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);

  v3 = *(v0 + 208);

  swift_unknownObjectRelease();
  if (v3 == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v6 = *(v0 + 8);

    return v6(v4, v5);
  }

  else
  {
    v8 = *(v0 + 176);
    sub_B98F0();
    sub_46020(&qword_F9FC8, &type metadata accessor for LiveCaptionsError);
    swift_allocError();
    sub_B9900();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_45A18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_CA7C;

  return sub_43D2C(a1, v4, v5, v7, v6);
}

unint64_t sub_45AD8(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_BB650();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = sub_BB590();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_45BDC(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_45AD8(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_BB650();
    }

    return *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_BB650())
      {
        return v10;
      }
    }

    else if (v11 == *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = sub_BB590();
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = sub_BB590();
        v17 = sub_BB590();
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_80E5C(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *(&stru_20.cmd + 8 * v10 + (v7 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * v10 + (v7 & 0xFFFFFFFFFFFFFF8)) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_80E5C(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_BB650();
}

uint64_t sub_45E00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_45E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B84;

  return sub_44238(a1, v4, v5, v7, v6);
}

void *sub_45F6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_45FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_F9FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_46020(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall LiveSpeechScreenLockManager.registerForScreenEvents()()
{
  v1 = v0;
  v2 = sub_B9A10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 16) <= 0)
  {
    sub_5470();
    v6 = sub_BB390();
    aBlock[4] = sub_46444;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_466D8;
    aBlock[3] = &unk_F0DF0;
    v7 = _Block_copy(aBlock);
    swift_beginAccess();
    v8 = notify_register_dispatch("com.apple.springboard.lockstate", (v1 + 16), v6, v7);
    swift_endAccess();
    _Block_release(v7);

    sub_B95C0();
    v9 = sub_B9A00();
    v10 = sub_BB2E0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v8;
      _os_log_impl(&dword_0, v9, v10, "registerForScreenEvents result=%u", v11, 8u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall LiveSpeechScreenLockManager.unregisterForScreenEvents()()
{
  v1 = v0;
  v2 = sub_B9A10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v1 + 16);
  if (v6 >= 1)
  {
    v7 = notify_cancel(v6);
    sub_B95C0();
    v8 = sub_B9A00();
    v9 = sub_BB2E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v7;
      _os_log_impl(&dword_0, v8, v9, "unregisterForScreenEvents result=%u", v10, 8u);
    }

    (*(v3 + 8))(v5, v2);
    *(v1 + 16) = -1;
  }
}

uint64_t sub_46444(int a1)
{
  v2 = sub_B9A10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &state64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &state64 - v7;
  result = _AXSLiveSpeechEnabled();
  if (result)
  {
    state64 = 0;
    state = notify_get_state(a1, &state64);
    sub_B95C0();
    v11 = sub_B9A00();
    v12 = sub_BB2E0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      swift_beginAccess();
      *(v13 + 4) = state64;
      *(v13 + 12) = 1024;
      *(v13 + 14) = state;
      _os_log_impl(&dword_0, v11, v12, "Screen lock event occurred. lockStatus=%llu notifyGetStateResult=%u", v13, 0x12u);
    }

    v14 = *(v3 + 8);
    result = v14(v8, v2);
    if (!state)
    {
      result = swift_beginAccess();
      if (state64 == 1)
      {
        sub_B95C0();
        v15 = sub_B9A00();
        v16 = sub_BB320();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_0, v15, v16, "Screen did lock. Turning off live speech", v17, 2u);
        }

        v14(v5, v2);
        return _AXSLiveSpeechSetEnabled();
      }
    }
  }

  return result;
}

uint64_t sub_466D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_4672C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for ButtonType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ButtonType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_468E0()
{
  result = qword_FA0C0;
  if (!qword_FA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA0C0);
  }

  return result;
}

__n128 sub_46934(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_46958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_469A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_46A1C()
{
  result = sub_BB2F0();
  byte_100C38 = result;
  return result;
}

id sub_46A3C()
{
  result = AXLogLiveTranscription();
  if (result)
  {
    qword_100C40 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_46A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AXLTTextScrollView();
  __chkstk_darwin(v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_FA0C8);
  __chkstk_darwin(v7);
  v9 = &v73 - v8;
  v10 = sub_BA2D0();
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin(v10);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_B90F0();
  __chkstk_darwin(v12 - 8);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2E50(&qword_FA0D0);
  __chkstk_darwin(v82);
  v88 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v73 - v17;
  v86 = sub_2E50(&qword_FA0D8);
  __chkstk_darwin(v86);
  v87 = &v73 - v19;
  v20 = sub_2E50(&qword_FA0E0);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v24 = *a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    v89 = *(a1 + 16);
    v90 = *(a1 + 32);
    v34 = v24;
    sub_2E50(&qword_F9C90);
    sub_BACA0();
    sub_477B0(v34, v95, v96, v6, v97);
    sub_47A20(v6, v9);
    swift_storeEnumTagMultiPayload();
    sub_D150(&qword_FA0E8, &qword_FA0E0);
    sub_4B814(&qword_FA0F0, type metadata accessor for AXLTTextScrollView);
    sub_BA430();
    return sub_47A84(v6);
  }

  v74 = v18;
  v75 = v23;
  v76 = &v73 - v22;
  v77 = v20;
  v78 = v7;
  v80 = v4;
  v81 = a2;
  sub_5FC8C(v24, v14);
  v25 = sub_BA7F0();
  v27 = v26;
  v29 = v28;
  v89 = *(a1 + 40);
  sub_2E50(&qword_FA0F8);
  sub_BABD0();
  v30 = sub_B9700();
  v32 = v31;
  if (v30 == sub_B97B0() && v32 == v33)
  {

LABEL_7:
    *&v89 = 0x3FF0000000000000;
    if (qword_F8380 != -1)
    {
      swift_once();
    }

    [qword_100DC0 getRed:0 green:0 blue:0 alpha:&v89];
    goto LABEL_10;
  }

  v36 = sub_BB700();

  if (v36)
  {
    goto LABEL_7;
  }

LABEL_10:
  v79 = v9;
  sub_BAB10();

  v37 = sub_BA770();
  v39 = v38;
  v41 = v40;

  sub_C004(v25, v27, v29 & 1);

  v89 = *(a1 + 56);
  sub_2E50(&qword_F9710);
  sub_BABD0();
  v42 = sub_BA790();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  sub_C004(v37, v39, v41 & 1);

  KeyPath = swift_getKeyPath();
  *&v89 = v42;
  *(&v89 + 1) = v44;
  LOBYTE(v90) = v46 & 1;
  v91 = v48;
  v92 = KeyPath;
  v93 = 0;
  v94 = 1;
  sub_2E50(&qword_FA100);
  sub_4A5A4();
  sub_BA880();
  sub_C004(v42, v44, v46 & 1);

  LOBYTE(v48) = *(a1 + 9);
  sub_2E50(&qword_F8E08);
  v50 = v84;
  if (v48)
  {
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_BDB40;
    sub_BA2A0();
  }

  else
  {
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_C0020;
  }

  sub_BA290();
  *&v89 = v51;
  sub_4B814(&qword_F8E10, &type metadata accessor for AccessibilityTraits);
  sub_2E50(&qword_F8E18);
  sub_D150(&qword_F8E20, &qword_F8E18);
  v52 = v83;
  v53 = v85;
  sub_BB510();
  v54 = v79;
  v55 = v77;
  v57 = v87;
  v56 = v88;
  v58 = v74;
  sub_B9EB0();
  (*(v50 + 8))(v52, v53);
  sub_C5E8(v56, &qword_FA0D0);
  v59 = objc_opt_self();
  v60 = [v59 defaultCenter];
  if (qword_F82C0 != -1)
  {
    swift_once();
  }

  v61 = v86;
  sub_BB400();

  v62 = swift_allocObject();
  v63 = *(a1 + 48);
  *(v62 + 48) = *(a1 + 32);
  *(v62 + 64) = v63;
  *(v62 + 80) = *(a1 + 64);
  v64 = *(a1 + 16);
  *(v62 + 16) = *a1;
  *(v62 + 32) = v64;
  sub_66B8(v58, v57, &qword_FA0D0);
  v65 = (v57 + *(v61 + 56));
  *v65 = sub_4A660;
  v65[1] = v62;
  sub_4A668(a1, &v89);
  v66 = [v59 defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  v67 = v75;
  sub_BB400();

  v68 = swift_allocObject();
  v69 = *(a1 + 48);
  *(v68 + 48) = *(a1 + 32);
  *(v68 + 64) = v69;
  *(v68 + 80) = *(a1 + 64);
  v70 = *(a1 + 16);
  *(v68 + 16) = *a1;
  *(v68 + 32) = v70;
  sub_66B8(v57, v67, &qword_FA0D8);
  v71 = (v67 + *(v55 + 56));
  *v71 = sub_4A708;
  v71[1] = v68;
  v72 = v76;
  sub_66B8(v67, v76, &qword_FA0E0);
  sub_57A0(v72, v54, &qword_FA0E0);
  swift_storeEnumTagMultiPayload();
  sub_4A668(a1, &v89);
  sub_D150(&qword_FA0E8, &qword_FA0E0);
  sub_4B814(&qword_FA0F0, type metadata accessor for AXLTTextScrollView);
  sub_BA430();
  return sub_C5E8(v72, &qword_FA0E0);
}

uint64_t sub_475A8(uint64_t a1, uint64_t a2)
{
  result = sub_B8FE0();
  if (result)
  {
    v4 = result;
    v7 = sub_B9840();
    sub_BB550();
    if (*(v4 + 16) && (v5 = sub_7D058(v8), (v6 & 1) != 0))
    {
      sub_3ADF4(*(v4 + 56) + 32 * v5, v9);
      sub_3ADA0(v8);

      result = swift_dynamicCast();
      if (result)
      {
        v8[0] = *(a2 + 40);
        v9[0] = v7;
        sub_2E50(&qword_FA0F8);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v8);
    }
  }

  return result;
}

uint64_t sub_476A8()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v0 = textFontStyle;
  v1 = AXLTSettingsManager.contentCategory.getter();
  sub_64E70(v0, UIFontWeightBold);

  sub_BA720();
  sub_2E50(&qword_F9710);
  return sub_BABE0();
}

double sub_477B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *&v12 = sub_B9820();
  sub_BABC0();
  *(a4 + 32) = v13;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_BABC0();
  *(a4 + 48) = v12;
  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v6 = textFontStyle;
  v7 = AXLTSettingsManager.contentCategory.getter();
  sub_64E70(v6, UIFontWeightBold);

  sub_BA720();
  sub_BABC0();
  *(a4 + 64) = v12;
  v8 = type metadata accessor for AXLTTextScrollView();
  v9 = *(v8 + 36);
  *(a4 + v9) = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 40);
  sub_2E50(&qword_F9020);
  sub_BABC0();
  result = *&v12;
  *(a4 + v10) = v12;
  return result;
}

uint64_t sub_47998@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  return sub_46A6C(v5, a1);
}

uint64_t type metadata accessor for AXLTTextScrollView()
{
  result = qword_FA178;
  if (!qword_FA178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_47A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTextScrollView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47A84(uint64_t a1)
{
  v2 = type metadata accessor for AXLTTextScrollView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_47AE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for AXLTTextScrollView();
  v51 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v4;
  v47 = sub_BA2D0();
  v43 = *(v47 - 8);
  v44 = v43;
  __chkstk_darwin(v47);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_FA210);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v45 = sub_2E50(&qword_FA218);
  __chkstk_darwin(v45);
  v11 = &v42 - v10;
  *v9 = sub_BA1A0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = &v9[*(sub_2E50(&qword_FA220) + 44)];
  *v12 = sub_BA1B0();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = sub_2E50(&qword_FA228);
  sub_48284(a1, &v12[*(v13 + 44)]);
  sub_B9D20();
  sub_B9D20();
  sub_BADB0();
  sub_B9CF0();
  v14 = &v12[*(sub_2E50(&qword_FA230) + 36)];
  v15 = v60;
  *v14 = v59;
  *(v14 + 1) = v15;
  *(v14 + 2) = v61;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v54 = a1;
  v18 = *(a1 + 24);
  v50 = v16;
  *&v62 = v16;
  *(&v62 + 1) = v17;
  v49 = v17;
  *&v63 = v18;
  v48 = sub_2E50(&qword_F9C90);
  sub_BAC80();
  v19 = v56;
  v20 = &v12[*(sub_2E50(&qword_FA238) + 36)];
  *v20 = 0;
  *(v20 + 1) = v19;
  sub_B9D20();
  sub_B9D20();
  sub_BADE0();
  sub_B9CF0();
  v21 = &v9[*(sub_2E50(&qword_FA240) + 36)];
  v22 = v63;
  *v21 = v62;
  *(v21 + 1) = v22;
  *(v21 + 2) = v64;
  *&v9[*(v7 + 36)] = 0;
  sub_4AEB4();
  sub_BA880();
  sub_C5E8(v9, &qword_FA210);
  sub_2E50(&qword_F8E08);
  v23 = v46;
  v24 = v44;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_BDB40;
  sub_BA2A0();
  sub_BA290();
  v56 = v25;
  sub_4B814(&qword_F8E10, &type metadata accessor for AccessibilityTraits);
  sub_2E50(&qword_F8E18);
  sub_D150(&qword_F8E20, &qword_F8E18);
  v26 = v47;
  sub_BB510();
  sub_B9EB0();
  (*(v24 + 8))(v6, v26);
  sub_C5E8(v11, &qword_FA218);
  v27 = objc_opt_self();
  v28 = [v27 defaultCenter];
  if (qword_F82C0 != -1)
  {
    swift_once();
  }

  v29 = sub_2E50(&qword_FA278);
  sub_BB400();

  v30 = v54;
  v31 = v52;
  sub_47A20(v54, v52);
  v32 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v33 = swift_allocObject();
  sub_4AC70(v31, v33 + v32);
  v34 = (v23 + *(v29 + 56));
  *v34 = sub_4B024;
  v34[1] = v33;
  v35 = [v27 defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  v36 = sub_2E50(&qword_FA280);
  sub_BB400();

  sub_47A20(v30, v31);
  v37 = swift_allocObject();
  sub_4AC70(v31, v37 + v32);
  v38 = (v23 + *(v36 + 56));
  *v38 = sub_4B03C;
  v38[1] = v37;
  v56 = v50;
  v57 = v49;
  v58 = v18;
  sub_BAC80();
  v39 = v55;
  result = sub_2E50(&qword_FA288);
  v41 = (v23 + *(result + 36));
  *v41 = 0;
  v41[1] = v39;
  return result;
}

uint64_t sub_48284@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for AXLTTextScrollView();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = v5;
  v7 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4884C(v62);
  v31 = v62[1];
  v32 = v62[0];
  v8 = LOBYTE(v62[2]);
  v30 = v62[3];
  v9 = a1[9];
  *&v39[0] = a1[8];
  *(&v39[0] + 1) = v9;
  sub_2E50(&qword_F9710);
  sub_BABD0();
  v29 = v61[0];
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v33 = v8;
  v64 = v8;
  v63 = 1;
  sub_B9D20();
  sub_BADA0();
  v35 = v7;
  v25 = a1;
  sub_B9F70();
  *(&v65[3] + 7) = *(&v65[10] + 8);
  *(&v65[4] + 7) = *(&v65[11] + 8);
  *(&v65[5] + 7) = *(&v65[12] + 8);
  *(&v65[6] + 7) = *(&v65[13] + 8);
  *(v65 + 7) = *(&v65[7] + 8);
  *(&v65[1] + 7) = *(&v65[8] + 8);
  *(&v65[2] + 7) = *(&v65[9] + 8);
  sub_B9D20();
  sub_BADA0();
  sub_B9CF0();
  sub_47A20(a1, v7);
  v10 = *(v4 + 80);
  v27 = v6;
  v28 = v10;
  v11 = (v10 + 16) & ~v10;
  v26 = v11;
  v12 = swift_allocObject();
  sub_4AC70(v7, v12 + v11);
  v13 = sub_BADE0();
  v23 = v14;
  v15 = swift_allocObject();
  *(&v40[16] + 1) = v65[4];
  *(&v40[18] + 1) = v65[5];
  *(&v40[20] + 1) = v65[6];
  *(&v40[8] + 1) = v65[0];
  *(&v40[10] + 1) = v65[1];
  *(&v40[12] + 1) = v65[2];
  *(&v40[14] + 1) = v65[3];
  *&v40[27] = v39[2];
  v16 = v39[0];
  *&v40[25] = v39[1];
  v24 = v15;
  *(v15 + 16) = sub_4B0E0;
  *(v15 + 24) = v12;
  v40[0] = v32;
  v40[1] = v31;
  LOBYTE(v40[2]) = v33;
  v40[3] = v30;
  v40[4] = KeyPath;
  v40[5] = v29;
  v40[6] = v36;
  v40[7] = 0;
  LOBYTE(v40[8]) = 1;
  v40[22] = *(&v65[6] + 15);
  *&v40[23] = v16;
  LOWORD(v40[29]) = 256;
  v40[30] = sub_B58B8;
  v40[31] = 0;
  v40[32] = v13;
  v40[33] = v23;
  memcpy(v61, v40, sizeof(v61));
  v53 = v65[4];
  v54 = v65[5];
  *v55 = v65[6];
  v49 = v65[0];
  v50 = v65[1];
  v51 = v65[2];
  v52 = v65[3];
  *&v55[55] = v39[2];
  *&v55[39] = v39[1];
  v41[0] = v32;
  v41[1] = v31;
  v42 = v33;
  v43 = v30;
  v44 = KeyPath;
  v45 = v29;
  v46 = v36;
  v47 = 0;
  v48 = 1;
  *&v55[15] = *(&v65[6] + 15);
  *&v55[23] = v39[0];
  v56 = 256;
  v57 = sub_B58B8;
  v58 = 0;
  v59 = v13;
  v60 = v23;
  sub_57A0(v40, v62, &qword_FA290);
  sub_C5E8(v41, &qword_FA290);
  memcpy(v39, v61, 0x110uLL);
  *&v39[17] = sub_4B190;
  *(&v39[17] + 1) = v24;
  v38 = *v25;
  v17 = v38;
  v18 = v35;
  sub_47A20(v25, v35);
  v19 = v26;
  v20 = swift_allocObject();
  sub_4AC70(v18, v20 + v19);
  v21 = v17;
  sub_2E50(&qword_FA298);
  sub_B9750();
  sub_4B390();
  sub_4B814(&qword_FA320, &type metadata accessor for AXLTCaption);
  sub_BAA00();

  memcpy(v62, v39, sizeof(v62));
  return sub_C5E8(v62, &qword_FA298);
}

uint64_t sub_4884C@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v2 = sub_BA240();
  __chkstk_darwin(v2 - 8);
  v63 = &v58[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for AXLTTextScrollView();
  __chkstk_darwin(v4 - 8);
  v64 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v58[-v7];
  v9 = sub_B90F0();
  __chkstk_darwin(v9 - 8);
  v11 = *v1;
  sub_5FC8C(*v1, &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = sub_BA7F0();
  v14 = v13;
  v16 = v15;
  v17 = v1[6];
  v61 = v1[7];
  v62 = v17;
  v69 = v17;
  v70 = v61;
  v60 = sub_2E50(&qword_FA0F8);
  sub_BABD0();
  v66 = v11;
  v18 = sub_B9700();
  v20 = v19;
  if (v18 == sub_B97B0() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_BB700();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v69 = 0x3FF0000000000000;
  if (qword_F8380 != -1)
  {
    swift_once();
  }

  [qword_100DC0 getRed:0 green:0 blue:0 alpha:&v69];
LABEL_8:
  sub_BAB10();

  v65 = sub_BA770();
  v68 = v23;
  v25 = v24;
  v27 = v26;

  sub_C004(v12, v14, v16 & 1);

  if (qword_F8288 != -1)
  {
    swift_once();
  }

  v28 = byte_100C38;
  if (qword_F8290 != -1)
  {
    swift_once();
  }

  v29 = qword_100C40;
  sub_47A20(v1, v8);
  v30 = v64;
  sub_47A20(v1, v64);
  v31 = v25;
  if (os_log_type_enabled(v29, v28))
  {
    v32 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = sub_B9660();
    v35 = v34;
    sub_47A84(v8);
    v36 = sub_7A1D8(v33, v35, &v69);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = sub_B96D0();
    v39 = v38;
    sub_47A84(v30);
    v40 = sub_7A1D8(v37, v39, &v69);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_0, v29, v28, "TextScrollView caption: %s\n %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_47A84(v8);
    sub_47A84(v30);
  }

  sub_B9660();
  v41 = sub_BB040();

  if (v41 < 1)
  {
    v54 = v31;
    v50 = v65;
    v52 = v68;
  }

  else
  {
    sub_BA230();
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    sub_BA220(v71);
    v59 = v31;
    v43 = v27;
    v44 = v65;
    v64 = v43;
    sub_BA200();
    v72._countAndFlagsBits = 10;
    v72._object = 0xE100000000000000;
    sub_BA220(v72);
    v73._countAndFlagsBits = sub_B9660();
    sub_BA210(v73);

    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    sub_BA220(v74);
    sub_BA260();
    v45 = sub_BA7E0();
    v47 = v46;
    v49 = v48;
    v69 = v62;
    v70 = v61;
    sub_BABD0();
    v69 = 0x3FF0000000000000;
    if (qword_F8380 != -1)
    {
      swift_once();
    }

    [qword_100DC0 getRed:0 green:0 blue:0 alpha:&v69];
    sub_BAB10();

    v50 = sub_BA770();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_C004(v44, v68, v59 & 1);

    sub_C004(v45, v47, v49 & 1);

    v27 = v56;
  }

  v57 = v67;
  *v67 = v50;
  v57[1] = v52;
  *(v57 + 16) = v54 & 1;
  v57[3] = v27;
  return result;
}

uint64_t sub_48EFC(double a1, double a2)
{
  if (qword_F8288 != -1)
  {
    swift_once();
  }

  v3 = byte_100C38;
  if (qword_F8290 != -1)
  {
    swift_once();
  }

  v4 = qword_100C40;
  if (os_log_type_enabled(qword_100C40, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a2;
    _os_log_impl(&dword_0, v4, v3, "TextScrollView text layout: readSize caption height: %f", v5, 0xCu);
  }

  return sub_4B85C(a2);
}

uint64_t sub_4900C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AXLTTextScrollView();
  __chkstk_darwin(v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_F8288 != -1)
  {
    swift_once();
  }

  v7 = byte_100C38;
  if (qword_F8290 != -1)
  {
    swift_once();
  }

  v8 = qword_100C40;
  sub_47A20(a3, v6);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = *v6;
    v12 = [v11 description];
    v13 = sub_BAFD0();
    v15 = v14;

    sub_47A84(v6);
    v16 = sub_7A1D8(v13, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v8, v7, "TextScrollView text layout: onChange caption: %s", v9, 0xCu);
    sub_28020(v10);
  }

  else
  {
    sub_47A84(v6);
  }

  return sub_49210();
}

uint64_t sub_49210()
{
  v1 = v0;
  v2 = type metadata accessor for AXLTTextScrollView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v10 = (v0 + *(v9 + 40));
  v11 = *v10;
  v12 = v10[1];
  v28 = v9;
  *&aBlock = v11;
  *(&aBlock + 1) = v12;
  sub_2E50(&qword_F9C88);
  sub_BABD0();
  v13 = v34;
  [v34 invalidate];

  *&aBlock = v11;
  *(&aBlock + 1) = v12;
  v34 = 0;
  sub_BABE0();
  v14 = objc_opt_self();
  sub_B98D0();
  v16 = v15;
  sub_47A20(v1, v8);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_4AC70(v8, v18 + v17);
  v32 = sub_4AE10;
  v33 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v30 = sub_4E790;
  v31 = &unk_F1028;
  v19 = _Block_copy(&aBlock);

  v20 = [v14 scheduledTimerWithTimeInterval:0 repeats:v19 block:v16];
  _Block_release(v19);
  *&aBlock = v11;
  *(&aBlock + 1) = v12;
  v34 = v20;
  sub_BABE0();
  if (qword_F8288 != -1)
  {
    swift_once();
  }

  v21 = byte_100C38;
  if (qword_F8290 != -1)
  {
    swift_once();
  }

  v22 = qword_100C40;
  sub_47A20(v1, v5);
  if (!os_log_type_enabled(v22, v21))
  {
    return sub_47A84(v5);
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  *v23 = 138412290;
  aBlock = *&v5[*(v28 + 40)];
  sub_BABD0();
  v25 = v34;
  *(v23 + 4) = v34;
  *v24 = v25;
  sub_47A84(v5);
  _os_log_impl(&dword_0, v22, v21, "TextScrollView text layout: timer %@", v23, 0xCu);
  sub_C5E8(v24, &qword_FA570);
}

uint64_t sub_495B4(uint64_t a1, uint64_t a2)
{
  result = sub_B8FE0();
  if (result)
  {
    v4 = result;
    v8 = sub_B9840();
    sub_BB550();
    if (*(v4 + 16) && (v5 = sub_7D058(v9), (v6 & 1) != 0))
    {
      sub_3ADF4(*(v4 + 56) + 32 * v5, v10);
      sub_3ADA0(v9);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = *(a2 + 56);
        v9[0] = *(a2 + 48);
        v9[1] = v7;
        v10[0] = v8;
        sub_2E50(&qword_FA0F8);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v9);
    }
  }

  return result;
}

uint64_t sub_496B4()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v0 = textFontStyle;
  v1 = AXLTSettingsManager.contentCategory.getter();
  sub_64E70(v0, UIFontWeightBold);

  sub_BA720();
  sub_2E50(&qword_F9710);
  return sub_BABE0();
}

uint64_t sub_497BC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AXLTTextScrollView() + 40));
  v3 = *v1;
  v4 = v1[1];
  sub_2E50(&qword_F9C88);
  sub_BABD0();
  [v5 invalidate];

  sub_BABE0();
  sub_2E50(&qword_F9C90);
  return sub_BAC90();
}

id sub_49900(void *a1, NSObject *a2)
{
  v4 = sub_B9E30();
  isa = v4[-1].isa;
  __chkstk_darwin(v4);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_FA200);
  __chkstk_darwin(v7 - 8);
  *&v75 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v70 - v10;
  v11 = type metadata accessor for AXLTTextScrollView();
  __chkstk_darwin(v11);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v70 - v14;
  __chkstk_darwin(v16);
  v73 = &v70 - v17;
  __chkstk_darwin(v18);
  v20 = &v70 - v19;
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  if (qword_F8288 != -1)
  {
    swift_once();
  }

  v24 = byte_100C38;
  if (qword_F8290 != -1)
  {
    swift_once();
  }

  v25 = qword_100C40;
  sub_47A20(a2, v23);
  v26 = os_log_type_enabled(v25, v24);
  v74 = v15;
  v77 = v24;
  v72 = v20;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v70 = v4;
    v28 = v27;
    v29 = a2;
    v30 = isa;
    v31 = swift_slowAlloc();
    *v28 = 138412546;
    *(v28 + 4) = a1;
    *v31 = a1;
    *(v28 + 12) = 2112;
    v81 = *&v23[*(v11 + 40)];
    v32 = a1;
    sub_2E50(&qword_F9C88);
    sub_BABD0();
    v33 = v80;
    *(v28 + 14) = v80;
    v31[1] = v33;
    sub_47A84(v23);
    _os_log_impl(&dword_0, v25, v24, "TextScrollView text layout: timer %@ %@", v28, 0x16u);
    sub_2E50(&qword_FA570);
    swift_arrayDestroy();
    isa = v30;
    a2 = v29;

    v4 = v70;
  }

  else
  {
    sub_47A84(v23);
  }

  result = [a1 isValid];
  if (result)
  {
    v70 = v25;
    v35 = a2[2].isa;
    v36 = a2[3].isa;
    *&v81 = a2[1];
    *(&v81 + 1) = v35;
    v82 = v36;
    v37 = sub_2E50(&qword_F9C90);
    sub_BAC80();
    textLinesCountFromTextHeight(_:)(v80);
    v39 = v38;
    v40 = v76;
    sub_B5BE0(v76);
    (*(isa + 7))(v40, 0, 1, v4);
    v41 = *&v75;
    sub_57A0(v40, *&v75, &qword_FA200);
    if ((*(isa + 6))(v41, 1, v4) != 1)
    {
      v42 = v71;
      (*(isa + 4))(v71, v41, v4);
      if (qword_F8330 != -1)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    v42 = &unk_C0DD0;
    sub_C5E8(v40, &qword_FA200);
    sub_C5E8(v41, &qword_FA200);
LABEL_13:
    for (*&v44 = COERCE_DOUBLE(sub_B9810()); ; *&v44 = COERCE_DOUBLE(sub_B98E0()))
    {
      v45 = v44 >= v39 ? *&v39 : *&v44;
      v40 = a2[5].isa;
      *&v81 = a2[4];
      isa = v81;
      *(&v81 + 1) = v40;
      v80 = v45;

      sub_2E50(&qword_FA208);
      sub_BABE0();
      *&v81 = isa;
      *(&v81 + 1) = v40;
      sub_BABD0();
      v46 = *&v80 - 1;
      if (!__OFSUB__(*&v80, 1))
      {
        break;
      }

      __break(1u);
LABEL_29:
      swift_once();
LABEL_12:
      sub_3CB8(v4, accessibilityLayoutTextSize);
      sub_4B814(&qword_F9250, &type metadata accessor for DynamicTypeSize);
      v43 = sub_BAF80();
      (*(isa + 1))(v42, v4);
      sub_C5E8(v40, &qword_FA200);
      if (v43)
      {
        goto LABEL_13;
      }
    }

    v76 = v37;
    *&v47 = COERCE_DOUBLE(sub_B9820());
    if (v47 <= v46)
    {
      v48 = *&v46;
    }

    else
    {
      v48 = *&v47;
    }

    *&v81 = isa;
    *(&v81 + 1) = v40;
    v80 = v48;
    sub_BABE0();

    __chkstk_darwin(v49);
    *(&v70 - 2) = a2;
    sub_BAE30();
    sub_B9D80();

    v50 = v72;
    sub_47A20(a2, v72);
    v51 = v73;
    sub_47A20(a2, v73);
    v52 = v74;
    sub_47A20(a2, v74);
    sub_47A20(a2, v78);
    v53 = v70;
    if (os_log_type_enabled(v70, v77))
    {
      v54 = swift_slowAlloc();
      v75 = COERCE_DOUBLE(swift_slowAlloc());
      v80 = v75;
      *v54 = 134219010;
      *(v54 + 4) = *&v39;
      *(v54 + 12) = 2048;
      v81 = *(v50 + 32);
      v55 = v51;
      v56 = v52;
      sub_BABD0();
      v57 = v79;
      sub_47A84(v50);
      *(v54 + 14) = v57;
      *(v54 + 22) = 2048;
      v58 = v55[2];
      v59 = v55[3];
      *&v81 = v55[1];
      *(&v81 + 1) = v58;
      v82 = v59;
      sub_BAC80();
      v60 = v79;
      sub_47A84(v55);
      *(v54 + 24) = v60;
      *(v54 + 32) = 2080;
      v61 = sub_B96D0();
      v63 = v62;
      sub_47A84(v56);
      v64 = sub_7A1D8(v61, v63, &v80);

      *(v54 + 34) = v64;
      *(v54 + 42) = 2080;
      v65 = v78;
      v66 = sub_B9660();
      v68 = v67;
      sub_47A84(v65);
      v69 = sub_7A1D8(v66, v68, &v80);

      *(v54 + 44) = v69;
      _os_log_impl(&dword_0, v53, v77, "TextScrollView text layout: moving timer fired, linesCount: %ld, linesCountVisible: %ld, textHeight: %f\n%s\n%s", v54, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      sub_47A84(v50);
      sub_47A84(v51);
      sub_47A84(v52);
      sub_47A84(v78);
    }

    *&v81 = isa;
    *(&v81 + 1) = v40;
    result = sub_BABD0();
    if (*&v80 >= 2)
    {
      return sub_49210(result);
    }
  }

  return result;
}

uint64_t sub_4A1E0(uint64_t a1)
{
  v5 = *(a1 + 32);
  sub_2E50(&qword_FA208);
  sub_BABD0();
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v1 = textFontStyle;
  v2 = AXLTSettingsManager.contentCategory.getter();
  v3 = sub_64E70(v1, UIFontWeightBold);

  [v3 lineHeight];
  sub_B9820();
  sub_2E50(&qword_F9C90);
  return sub_BAC90();
}

double sub_4A358@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_47A20(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_4AC70(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_47A20(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_4AC70(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  sub_47A20(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  sub_4AC70(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  *a2 = sub_4ACD4;
  *(a2 + 8) = v7;
  *(a2 + 16) = sub_4AD54;
  *(a2 + 24) = v8;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = sub_4ADB0;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_4A4DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_BA150();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_4A510@<X0>(uint64_t a1@<X8>)
{
  result = sub_BA150();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_4A5A4()
{
  result = qword_FA108;
  if (!qword_FA108)
  {
    sub_5520(&qword_FA100);
    sub_D150(&qword_FA110, &qword_FA118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA108);
  }

  return result;
}

uint64_t sub_4A6A0()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_4A72C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2E50(&qword_F8810);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_4A7FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2E50(&qword_F8810);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4A8AC()
{
  sub_B9750();
  if (v0 <= 0x3F)
  {
    sub_4AA38(319, &qword_F9B30, &type metadata for CGFloat, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_4AA38(319, &qword_FA188, &type metadata for Int, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_4AA38(319, &qword_FA190, &type metadata for Color, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_4AA38(319, &unk_FA198, &type metadata for Font, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_4AA88();
            if (v5 <= 0x3F)
            {
              sub_362D4();
              if (v6 <= 0x3F)
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

void sub_4AA38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_4AA88()
{
  if (!qword_F8898)
  {
    sub_B9E30();
    v0 = sub_B9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_F8898);
    }
  }
}

unint64_t sub_4AAE4()
{
  result = qword_FA1E0;
  if (!qword_FA1E0)
  {
    sub_5520(&qword_FA1E8);
    sub_4AB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA1E0);
  }

  return result;
}

unint64_t sub_4AB68()
{
  result = qword_FA1F0;
  if (!qword_FA1F0)
  {
    sub_5520(&qword_FA1F8);
    sub_D150(&qword_FA0E8, &qword_FA0E0);
    sub_4B814(&qword_FA0F0, type metadata accessor for AXLTTextScrollView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA1F0);
  }

  return result;
}

uint64_t sub_4AC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTextScrollView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4ACD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_47AE0(v4, a1);
}

uint64_t sub_4ADB0()
{
  v1 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_497BC(v2);
}

id sub_4AE10(void *a1)
{
  v3 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_49900(a1, v4);
}

uint64_t sub_4AE80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4AEB4()
{
  result = qword_FA248;
  if (!qword_FA248)
  {
    sub_5520(&qword_FA210);
    sub_4AF6C();
    sub_D150(&qword_FA268, &qword_FA270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA248);
  }

  return result;
}

unint64_t sub_4AF6C()
{
  result = qword_FA250;
  if (!qword_FA250)
  {
    sub_5520(&qword_FA240);
    sub_D150(&qword_FA258, &qword_FA260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA250);
  }

  return result;
}

uint64_t sub_4B054(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_4B0E0(double a1, double a2)
{
  type metadata accessor for AXLTTextScrollView();

  return sub_48EFC(a1, a2);
}

uint64_t sub_4B158()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4B198()
{
  v1 = type metadata accessor for AXLTTextScrollView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 36);
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_B9E30();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4B310(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_4900C(a1, a2, v6);
}

unint64_t sub_4B390()
{
  result = qword_FA2A0;
  if (!qword_FA2A0)
  {
    sub_5520(&qword_FA298);
    sub_4B448();
    sub_D150(&qword_FA310, &qword_FA318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA2A0);
  }

  return result;
}

unint64_t sub_4B448()
{
  result = qword_FA2A8;
  if (!qword_FA2A8)
  {
    sub_5520(&qword_FA290);
    sub_4B500();
    sub_D150(&qword_FA300, &qword_FA308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA2A8);
  }

  return result;
}

unint64_t sub_4B500()
{
  result = qword_FA2B0;
  if (!qword_FA2B0)
  {
    sub_5520(&qword_FA2B8);
    sub_4B58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA2B0);
  }

  return result;
}

unint64_t sub_4B58C()
{
  result = qword_FA2C0;
  if (!qword_FA2C0)
  {
    sub_5520(&qword_FA2C8);
    sub_4B618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA2C0);
  }

  return result;
}

unint64_t sub_4B618()
{
  result = qword_FA2D0;
  if (!qword_FA2D0)
  {
    sub_5520(&qword_FA2D8);
    sub_4B6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA2D0);
  }

  return result;
}

unint64_t sub_4B6A4()
{
  result = qword_FA2E0;
  if (!qword_FA2E0)
  {
    sub_5520(&qword_FA2E8);
    sub_4B75C();
    sub_D150(&qword_FA110, &qword_FA118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA2E0);
  }

  return result;
}

unint64_t sub_4B75C()
{
  result = qword_FA2F0;
  if (!qword_FA2F0)
  {
    sub_5520(&qword_FA2F8);
    sub_D150(&qword_F87F8, &qword_F8800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA2F0);
  }

  return result;
}

uint64_t sub_4B814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4B85C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for AXLTTextScrollView();
  __chkstk_darwin(v4);
  v6 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v58 = &v58 - v8;
  v9 = sub_B9E30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2E50(&qword_FA200);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  textLinesCountFromTextHeight(_:)(a1);
  v59 = v19;
  sub_B5BE0(v18);
  (*(v10 + 56))(v18, 0, 1, v9);
  sub_57A0(v18, v15, &qword_FA200);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_C5E8(v18, &qword_FA200);
    sub_C5E8(v15, &qword_FA200);
LABEL_6:
    v21 = sub_B9810();
    goto LABEL_8;
  }

  (*(v10 + 32))(v12, v15, v9);
  if (qword_F8330 != -1)
  {
    swift_once();
  }

  sub_3CB8(v9, accessibilityLayoutTextSize);
  sub_4B814(&qword_F9250, &type metadata accessor for DynamicTypeSize);
  v20 = sub_BAF80();
  (*(v10 + 8))(v12, v9);
  sub_C5E8(v18, &qword_FA200);
  if (v20)
  {
    goto LABEL_6;
  }

  v21 = sub_B98E0();
LABEL_8:
  v22 = v21;
  v23 = v59;
  if (v21 < v59)
  {
    v23 = v21;
  }

  v25 = *(v2 + 5);
  *&v61 = *(v2 + 4);
  v24 = v61;
  *(&v61 + 1) = v25;
  v63 = *&v23;

  sub_2E50(&qword_FA208);
  sub_BABE0();
  *&v61 = v24;
  *(&v61 + 1) = v25;
  sub_BABD0();
  v26 = *&v63;
  v27 = sub_B9820();
  if (v27 <= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  *&v61 = v24;
  *(&v61 + 1) = v25;
  v63 = *&v28;
  sub_BABE0();

  *&v61 = v24;
  *(&v61 + 1) = v25;
  sub_BABD0();
  v29 = *&v63;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v30 = textFontStyle;
  v31 = AXLTSettingsManager.contentCategory.getter();
  v32 = sub_64E70(v30, UIFontWeightBold);

  [v32 lineHeight];
  v34 = v33;

  v35 = sub_B9820();
  if (v35 <= v29)
  {
    v36 = v29;
  }

  else
  {
    v36 = v35;
  }

  v37 = v34 * v36;
  v63 = v37;
  v38 = AXLTSettingsManager.contentCategory.getter();
  v39 = sub_64E70(v30, UIFontWeightBold);

  [v39 lineHeight];
  v41 = v40;

  v42 = sub_B9820();
  if (v42 <= v22)
  {
    v43 = v22;
  }

  else
  {
    v43 = v42;
  }

  v44 = *(v2 + 1);
  v45 = *(v2 + 2);
  v46 = *(v2 + 3);
  *&v61 = v44;
  *(&v61 + 1) = v45;
  v62 = v46;
  sub_2E50(&qword_F9C90);
  v47 = sub_BAC80();
  if (v37 < v60)
  {
    v48 = v41 * v43;
    if (v37 < v48)
    {
      *&v61 = v44;
      *(&v61 + 1) = v45;
      v62 = v46;
      v47 = sub_BAC80();
      if (v60 >= v48)
      {
        v63 = v48;
      }

      else
      {
        *&v61 = v44;
        *(&v61 + 1) = v45;
        v62 = v46;
        v47 = sub_BAC80();
      }
    }
  }

  __chkstk_darwin(v47);
  *(&v58 - 2) = v2;
  *(&v58 - 1) = &v63;
  sub_BAE30();
  sub_B9D80();

  if (qword_F8288 != -1)
  {
    swift_once();
  }

  v49 = byte_100C38;
  v50 = v58;
  if (qword_F8290 != -1)
  {
    swift_once();
  }

  v51 = qword_100C40;
  sub_47A20(v2, v50);
  sub_47A20(v2, v6);
  if (os_log_type_enabled(v51, v49))
  {
    v52 = swift_slowAlloc();
    *v52 = 134218496;
    *(v52 + 4) = v59;
    *(v52 + 12) = 2048;
    v61 = *(v50 + 32);
    sub_BABD0();
    v53 = v60;
    sub_47A84(v50);
    *(v52 + 14) = v53;
    *(v52 + 22) = 2048;
    v54 = v6[2];
    v55 = v6[3];
    *&v61 = v6[1];
    *(&v61 + 1) = v54;
    v62 = v55;
    sub_BAC80();
    v56 = v60;
    sub_47A84(v6);
    *(v52 + 24) = v56;
    _os_log_impl(&dword_0, v51, v49, "TextScrollView text layout: text rendered, linesCount: %ld, linesCountVisible: %ld, textHeight: %f", v52, 0x20u);
  }

  else
  {
    sub_47A84(v50);
    return sub_47A84(v6);
  }
}

unint64_t sub_4BFF0()
{
  result = qword_FA328;
  if (!qword_FA328)
  {
    sub_5520(&qword_FA330);
    sub_4C07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA328);
  }

  return result;
}

unint64_t sub_4C07C()
{
  result = qword_FA338;
  if (!qword_FA338)
  {
    sub_5520(&qword_FA340);
    sub_D150(&qword_FA348, &unk_FA350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA338);
  }

  return result;
}

uint64_t *AXLTCaptionsProvider.shared.unsafeMutableAddressor()
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  return &static AXLTCaptionsProvider.shared;
}

uint64_t AXLTCaptionsProvider.captions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t sub_4C268@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_4C2E8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_B9B20();
}

uint64_t AXLTCaptionsProvider.captions.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_B9B20();
}

void (*AXLTCaptionsProvider.captions.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_4C470;
}

void sub_4C470(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t AXLTCaptionsProvider.$captions.getter()
{
  swift_beginAccess();
  sub_2E50(&qword_FA378);
  sub_B9AE0();
  return swift_endAccess();
}

uint64_t AXLTCaptionsProvider.$captions.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FA380);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FA378);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AXLTCaptionsProvider.$captions.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FA380);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___AXLTCaptionsProvider__captions;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FA378);
  sub_B9AE0();
  swift_endAccess();
  return sub_4C7F4;
}

void sub_4C7F4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_B9AF0();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_B9AF0();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t AXLTCaptionsProvider.isTranscribing.getter()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTCaptionsProvider.isTranscribing.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_4CA54()
{
  result = getpid();
  dword_FA360 = result;
  return result;
}

id sub_4CA74()
{
  result = [objc_allocWithZone(type metadata accessor for AXLTCaptionsProvider()) init];
  static AXLTCaptionsProvider.shared = result;
  return result;
}

id static AXLTCaptionsProvider.shared.getter()
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  v1 = static AXLTCaptionsProvider.shared;

  return v1;
}

Swift::Void __swiftcall AXLTCaptionsProvider.activate(_:)(Swift::Bool a1)
{
  v3 = sub_BB320();
  v4 = AXLogLiveTranscription();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, v3))
    {
      v6 = v1;
      v7 = swift_slowAlloc();
      *v7 = 67109376;
      *(v7 + 4) = v6[OBJC_IVAR___AXLTCaptionsProvider_isActive];

      *(v7 + 8) = 1024;
      *(v7 + 10) = a1;
      _os_log_impl(&dword_0, v5, v3, "CaptionsProvider activate isActive: %{BOOL}d, new: %{BOOL}d", v7, 0xEu);
    }

    if (*(v1 + OBJC_IVAR___AXLTCaptionsProvider_isActive) != a1)
    {
      *(v1 + OBJC_IVAR___AXLTCaptionsProvider_isActive) = a1;
      if (a1)
      {

        sub_4F8F8();
      }

      else
      {

        sub_4FE48();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL AXLTCaptionsProvider.isActiveSourceTypeMic.getter()
{
  v1 = *(v0 + OBJC_IVAR___AXLTCaptionsProvider_activeRequestType);
  if (qword_F82A8 != -1)
  {
    swift_once();
  }

  if (byte_FA364 == 1)
  {
    v2 = sub_B98B0();
    return v2 == sub_B98B0();
  }

  else
  {
    return v1 == 0;
  }
}

uint64_t sub_4CDA4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (qword_F82A8 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  if (byte_FA364 == 1)
  {

    return a1();
  }

  else
  {

    return a2();
  }
}

void sub_4CE3C()
{
  v1 = sub_BB320();
  v2 = AXLogLiveTranscription();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(v2, v1))
    {
      v4 = v0;
      v5 = swift_slowAlloc();
      *v5 = 67109376;
      *(v5 + 4) = v4[OBJC_IVAR___AXLTCaptionsProvider_isActive];

      *(v5 + 8) = 1024;
      if (qword_F8320 != -1)
      {
        swift_once();
      }

      v6 = static AXLTSettingsManager.shared;
      v7 = OBJC_IVAR___AXLTSettingsManager_isPaused;
      swift_beginAccess();
      *(v5 + 10) = *(v6 + v7);
      _os_log_impl(&dword_0, v3, v1, "CaptionsProvider start isActive: %{BOOL}d isPaused: %{BOOL}d", v5, 0xEu);
    }

    if (*(v0 + OBJC_IVAR___AXLTCaptionsProvider_isActive) == 1)
    {
      if (qword_F8320 != -1)
      {
        swift_once();
      }

      v8 = static AXLTSettingsManager.shared;
      v9 = OBJC_IVAR___AXLTSettingsManager_isPaused;
      swift_beginAccess();
      if ((*(v8 + v9) & 1) == 0)
      {
        if (sub_59F30())
        {
          v10 = 2;
        }

        else
        {
          v11 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
          swift_beginAccess();
          v10 = ~*(v8 + v11) & 1;
        }

        sub_4D028(v10);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_4D028(uint64_t a1)
{
  sub_2E50(&qword_FA5A0);
  __chkstk_darwin();
  v4 = v23 - v3;
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  if (*(static AXLTCaptionsProvider.shared + OBJC_IVAR___AXLTCaptionsProvider_blockAudioTranscriptionForOneness) == 1)
  {
    v5 = sub_B98B0();
    if (v5 == sub_B98B0())
    {
      sub_BB320();
      v6 = AXLogLiveTranscription();
      if (v6)
      {
        v23[0] = v6;
        sub_B99F0();
        v7 = v23[0];

        return;
      }

LABEL_16:
      __break(1u);
      return;
    }
  }

  v8 = sub_BB320();
  v9 = AXLogLiveTranscription();
  if (!v9)
  {
    __break(1u);
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  if (os_log_type_enabled(v9, v8))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315138;
    v23[1] = a1;
    v13 = sub_BAFF0();
    v15 = sub_7A1D8(v13, v14, v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v10, v8, "CaptionsProvider start for sourceType: %s", v11, 0xCu);
    sub_28020(v12);
  }

  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v16 = static AXLTSettingsManager.shared;
  v17 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  sub_57A0(v16 + v17, v4, &qword_FA5A0);
  *(swift_allocObject() + 16) = v1;
  v18 = v1;
  sub_B97D0();
  sub_C5E8(v4, &qword_FA5A0);

  *&v18[OBJC_IVAR___AXLTCaptionsProvider_sourceType] = a1;
  *&v18[OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount] = 0;
  v19 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  v18[v19] = 1;
  v20 = [objc_allocWithZone(NSNumber) initWithInt:1057];
  v21 = [v20 unsignedIntValue];

  v22 = [objc_opt_self() sharedApplication];
  UIAccessibilityPostNotification(v21, v22);
}

uint64_t sub_4D508(void *a1, void *a2)
{
  v4 = sub_BAEC0();
  v17 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BAEF0();
  v7 = *(v16 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35DD4(0, &qword_F83E0);
  v10 = sub_BB390();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_5B304;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257F4;
  aBlock[3] = &unk_F1488;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = a2;

  sub_BAED0();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_5B03C(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
  sub_2E50(&qword_F9540);
  sub_D150(&qword_FA530, &qword_F9540);
  sub_BB510();
  sub_BB3B0();
  _Block_release(v12);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

void sub_4D804(void *a1)
{
  v2 = sub_BB2F0();
  v3 = AXLogLiveTranscription();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    if (os_log_type_enabled(v4, v2))
    {
      v6 = v5;
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315650;
      v9 = sub_B9790();
      v11 = sub_7A1D8(v9, v10, &v18);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      sub_B9780();
      v12 = sub_B9880();

      *(v7 + 14) = v12;
      *(v7 + 22) = 2048;
      v13 = sub_B9770();

      *(v7 + 24) = v13;
      _os_log_impl(&dword_0, v4, v2, "CaptionsProvider liveCaption: '%s', resultType: %ld assetState: %ld", v7, 0x20u);
      sub_28020(v8);
    }

    else
    {
    }

    sub_58894();
    sub_B9780();
    v14 = sub_B9880();
    if (v14 == sub_B9880())
    {
      v15 = sub_B9770();
      sub_517AC(v15);
    }

    else
    {
      objc_allocWithZone(sub_B9750());
      v16 = v5;
      v17 = sub_B96A0();
      sub_50450(v17);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_4DA28()
{
  v1 = v0;
  v2 = sub_BB2F0();
  v3 = AXLogLiveTranscription();
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, v2))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 136315138;
      v13 = v6;
      v7 = sub_BAFF0();
      v9 = sub_7A1D8(v7, v8, &v13);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_0, v4, v2, "CaptionsProvider stop for sourceType: %s", v5, 0xCu);
      sub_28020(v6);
    }

    v10 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
    if (*(v1 + OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed) == 1)
    {
      v11 = [objc_opt_self() defaultCenter];
      v12 = [objc_opt_self() sharedInstance];
      [v11 removeObserver:v1 name:AVAudioSessionMediaServicesWereResetNotification object:v12];

      *(v1 + v10) = 0;
    }

    sub_B97C0();
    sub_50388();
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

void sub_4DC5C()
{
  v1 = sub_BB320();
  v2 = AXLogLiveTranscription();
  if (!v2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v3 = v2;
  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0;
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = v4[OBJC_IVAR___AXLTCaptionsProvider_isActive];

    *(v5 + 8) = 1024;
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    v6 = static AXLTSettingsManager.shared;
    v7 = OBJC_IVAR___AXLTSettingsManager_isPaused;
    swift_beginAccess();
    *(v5 + 10) = *(v6 + v7);
    _os_log_impl(&dword_0, v3, v1, "CaptionsProvider startTranscribing isActive: %{BOOL}d isPaused: %{BOOL}d", v5, 0xEu);
  }

  if (v0[OBJC_IVAR___AXLTCaptionsProvider_isActive] == 1)
  {
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    v8 = static AXLTSettingsManager.shared;
    v9 = OBJC_IVAR___AXLTSettingsManager_isPaused;
    swift_beginAccess();
    if ((*(v8 + v9) & 1) == 0)
    {
      v10 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
      swift_beginAccess();
      v11 = *(v8 + v10);
      v12 = sub_59F30();
      v13 = (v12 | v11 ^ 1) & 1;
      if (v12)
      {
        v14 = -2;
      }

      else
      {
        v14 = -1;
      }

      *&v0[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType] = v13;
      *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid] = v14;
      if (v0[OBJC_IVAR___AXLTCaptionsProvider_blockAudioTranscriptionForOneness] == 1 && ((v12 | v11 ^ 1) & 1) != 0)
      {
        sub_BB320();
        v15 = AXLogLiveTranscription();
        if (v15)
        {
          v16 = v15;
          sub_B99F0();

          return;
        }

        goto LABEL_20;
      }

      sub_4DED4(v13, v14);
    }
  }
}

void sub_4DED4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  v6 = v2[v5];
  v7 = sub_BB320();
  v8 = AXLogLiveTranscription();
  v9 = v8;
  if (v6 != 1)
  {
    if (v8)
    {
      if (os_log_type_enabled(v8, v7))
      {
        v11 = swift_slowAlloc();
        *v11 = 134218240;
        *(v11 + 4) = a1;
        *(v11 + 12) = 2048;
        *(v11 + 14) = a2;
        _os_log_impl(&dword_0, v9, v7, "StartTranscribing for type: %ld, pid: %ld", v11, 0x16u);
      }

      *&v2[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType] = a1;
      *&v2[OBJC_IVAR___AXLTCaptionsProvider_activePid] = a2;
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        v12 = *&v2[OBJC_IVAR___AXLTCaptionsProvider_transcription];
        v13 = swift_allocObject();
        *(v13 + 16) = v2;
        v30 = sub_5B2B4;
        v31 = v13;
        aBlock = _NSConcreteStackBlock;
        v27 = 1107296256;
        v28 = sub_5B424;
        v29 = &unk_F13E8;
        v14 = _Block_copy(&aBlock);
        v15 = v2;

        v30 = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
        v31 = 0;
        aBlock = _NSConcreteStackBlock;
        v27 = 1107296256;
        v28 = sub_5B424;
        v29 = &unk_F1410;
        v16 = _Block_copy(&aBlock);
        aBlock = 0;
        v17 = [v12 startTranscribing:a1 targetPID:a2 callbackBlock:v14 audioInfoBlock:v16 error:&aBlock];
        _Block_release(v16);
        _Block_release(v14);
        v18 = aBlock;
        if (v17)
        {
          *&v15[OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount] = 0;
          v2[v5] = 1;
          v19 = objc_allocWithZone(NSNumber);
          v20 = v18;
          v21 = [v19 initWithInt:1057];
          LODWORD(v19) = [v21 unsignedIntValue];

          v22 = [objc_opt_self() sharedApplication];
          UIAccessibilityPostNotification(v19, v22);
        }

        else
        {
          v23 = aBlock;
          v24 = sub_B9170();

          swift_willThrow();
          aBlock = v24;
          sub_2E50(&unk_F9820);
          sub_35DD4(0, &qword_FA590);
          swift_dynamicCast();
          sub_4E9D4(v25);
        }

        return;
      }

      __break(1u);
    }

LABEL_17:
    __break(1u);
    return;
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (os_log_type_enabled(v8, v7))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a2;
    _os_log_impl(&dword_0, v9, v7, "StartTranscribing skip isTranscribing: TRUE, for type: %ld, pid: %ld", v10, 0x16u);
  }
}

void sub_4E310(void *a1, uint64_t a2)
{
  v4 = sub_B9210();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BB2F0();
  v9 = AXLogLiveTranscription();
  if (!v9)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = os_log_type_enabled(v9, v8);
  v35 = v5;
  v36 = v4;
  v37 = a2;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315138;
    v14 = [a1 transcribedText];
    v15 = sub_BAFD0();
    v17 = v16;

    v18 = sub_7A1D8(v15, v17, &v38);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_0, v10, v8, "Transcribed data: %s", v12, 0xCu);
    sub_28020(v13);

    a2 = v37;
  }

  sub_58894();
  v19 = [a1 transcribedText];
  sub_BAFD0();

  v20 = sub_BB040();

  if (v20)
  {
    v34[1] = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_captionsID);
    v21 = [a1 appID];
    sub_BAFD0();

    v22 = [a1 appName];
    sub_BAFD0();

    v23 = objc_opt_self();
    v24 = [a1 timestamp];
    sub_B91F0();

    isa = sub_B91E0().super.isa;
    (*(v35 + 8))(v7, v36);
    v26 = [v23 dateToString:isa];

    sub_BAFD0();
    v27 = [a1 transcribedText];
    sub_BAFD0();

    v28 = [a1 transcription];
    v29 = [v28 segments];

    sub_35DD4(0, &qword_FA598);
    sub_BB0F0();

    v30 = objc_allocWithZone(sub_B9750());
    v31 = sub_B96B0();
    sub_50450(v31);

    return;
  }

  *(a2 + OBJC_IVAR___AXLTCaptionsProvider_newCaption) = 1;
  sub_BB2F0();
  v32 = AXLogLiveTranscription();
  if (!v32)
  {
    goto LABEL_10;
  }

  v33 = v32;
  sub_B99F0();

  sub_517AC([a1 assetState]);
}

void sub_4E790(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_4E7F8()
{
  v1 = sub_BB2F0();
  v2 = AXLogLiveTranscription();
  if (!v2)
  {
LABEL_13:
    __break(1u);
  }

  v3 = v2;
  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0;
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *&v4[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType];

    _os_log_impl(&dword_0, v3, v1, "stopTranscribing for type = %ld", v5, 0xCu);
  }

  v6 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid];
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ([*&v0[OBJC_IVAR___AXLTCaptionsProvider_transcription] stopTranscribing:*&v0[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType] targetPID:? error:?])
  {
    v7 = 0;
LABEL_10:
    sub_50388();
    return;
  }

  v8 = 0;
  sub_B9170();

  swift_willThrow();
  sub_BB300();
  v9 = AXLogLiveTranscription();
  if (v9)
  {
    v10 = v9;
    sub_B99F0();

    goto LABEL_10;
  }

  __break(1u);
}

NSObject *sub_4E9D4(void *a1)
{
  v2 = sub_BAEC0();
  v41 = *(v2 - 8);
  v42 = v2;
  (__chkstk_darwin)();
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BAEF0();
  v39 = *(v5 - 8);
  v40 = v5;
  (__chkstk_darwin)();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BAF10();
  v9 = *(v8 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = sub_BB300();
  result = AXLogLiveTranscription();
  if (!result)
  {
    goto LABEL_11;
  }

  v17 = result;
  if (os_log_type_enabled(result, v15))
  {
    v18 = swift_slowAlloc();
    v38 = v9;
    v19 = v7;
    v20 = v4;
    v21 = v8;
    v22 = v18;
    v23 = v14;
    v24 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = a1;
    *v24 = a1;
    v25 = a1;
    _os_log_impl(&dword_0, v17, v15, "CaptionsProvider StartTranscribing error %@", v22, 0xCu);
    sub_C5E8(v24, &qword_FA570);
    v14 = v23;

    v8 = v21;
    v4 = v20;
    v7 = v19;
    v9 = v38;
  }

  result = [a1 code];
  if (result == (&dword_C + 1))
  {
    v26 = OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount;
    v27 = *&v43[OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      *&v43[OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount] = v29;
      if (v29 <= 20)
      {
        sub_35DD4(0, &qword_F83E0);
        v30 = v43;
        v31 = sub_BB390();
        sub_BAF00();
        sub_BAF20();
        v38 = *(v9 + 1);
        v38(v12, v8);
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        aBlock[4] = sub_5B2AC;
        aBlock[5] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_257F4;
        aBlock[3] = &unk_F1398;
        v33 = _Block_copy(aBlock);
        v37 = v8;
        v34 = v30;

        sub_BAED0();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_5B03C(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
        sub_2E50(&qword_F9540);
        sub_D150(&qword_FA530, &qword_F9540);
        v35 = v42;
        sub_BB510();
        sub_BB370();
        _Block_release(v33);

        (*(v41 + 8))(v4, v35);
        (*(v39 + 8))(v7, v40);
        return (v38)(v14, v37);
      }

      else
      {
        *&v43[v26] = 0;
      }

      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_4EEF0(void *a1)
{
  v2 = sub_BB320();
  v3 = AXLogLiveTranscription();
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  if (os_log_type_enabled(v3, v2))
  {
    v5 = a1;
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *&v5[OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount];

    _os_log_impl(&dword_0, v4, v2, "CaptionsProvider StartTranscribing attempt restart %ld", v6, 0xCu);
  }

  v7 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if ((*(a1 + v7) & 1) == 0)
  {
    sub_BB320();
    v8 = AXLogLiveTranscription();
    if (v8)
    {
      v9 = v8;
      sub_B99F0();

      if (qword_F82A8 != -1)
      {
        swift_once();
      }

      if (byte_FA364 == 1)
      {
        sub_4DA28();
        sub_4CE3C();
      }

      else
      {
        sub_4E7F8();
        sub_4DC5C();
      }

      return;
    }

LABEL_13:
    __break(1u);
  }
}

char *sub_4F08C()
{
  v1 = sub_2E50(&qword_FA378);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v5 = OBJC_IVAR___AXLTCaptionsProvider__captions;
  v24 = _swiftEmptyArrayStorage;
  sub_2E50(&qword_FA368);
  sub_B9AD0();
  (*(v2 + 32))(&v0[v5], v4, v1);
  v0[OBJC_IVAR___AXLTCaptionsProvider_isTranscribing] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid] = -4;
  v0[OBJC_IVAR___AXLTCaptionsProvider_micInterruptedByAudio] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_restartAttemptLimit] = 20;
  v0[OBJC_IVAR___AXLTCaptionsProvider_blockAudioTranscriptionForOneness] = 0;
  v6 = OBJC_IVAR___AXLTCaptionsProvider_transcription;
  *&v0[v6] = [objc_allocWithZone(AXLTLiveTranscription) init];
  v7 = OBJC_IVAR___AXLTCaptionsProvider_liveCaptions;
  *&v0[v7] = [objc_allocWithZone(sub_B97E0()) init];
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_sourceType] = 0;
  v0[OBJC_IVAR___AXLTCaptionsProvider_newCaption] = 1;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_currentCaption] = 0;
  v8 = OBJC_IVAR___AXLTCaptionsProvider_dateFormatter;
  *&v0[v8] = [objc_allocWithZone(NSDateFormatter) init];
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_clearHistoryTimer] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_deactivationTimer] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_deactivationTime] = 0x4072C00000000000;
  v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] = 0;
  v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] = 0;
  v9 = OBJC_IVAR___AXLTCaptionsProvider_lockScreenObserver;
  *&v0[v9] = [objc_allocWithZone(AXLTLockScreenObserver) init];
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_captionsID] = 0;
  v10 = OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked;
  v0[v10] = AXDeviceIsUnlocked() ^ 1;
  v0[OBJC_IVAR___AXLTCaptionsProvider_isActive] = 0;
  v0[OBJC_IVAR___AXLTCaptionsProvider__canClearCaptions] = 0;
  v0[OBJC_IVAR___AXLTCaptionsProvider__canCopyCaptions] = 0;
  v11 = &v0[OBJC_IVAR___AXLTCaptionsProvider____lazy_storage___overriddenHistoryTimeInterval];
  *v11 = 0;
  *(v11 + 4) = 256;
  v0[OBJC_IVAR___AXLTCaptionsProvider__canMakeScreenshot] = 1;
  v0[OBJC_IVAR___AXLTCaptionsProvider_rttCallUIVisibleProcessed] = 0;
  v12 = type metadata accessor for AXLTCaptionsProvider();
  v23.receiver = v0;
  v23.super_class = v12;
  v13 = objc_msgSendSuper2(&v23, "init");
  v14 = *&v13[OBJC_IVAR___AXLTCaptionsProvider_dateFormatter];
  v15 = v13;
  v16 = v14;
  v17 = sub_BAFA0();
  [v16 setDateFormat:v17];

  [*&v15[OBJC_IVAR___AXLTCaptionsProvider_lockScreenObserver] setDelegate:v15];
  v18 = objc_opt_self();
  sub_B98C0();
  v19 = [v18 scheduledTimerWithTimeInterval:v15 target:"clearOldCaptionsIfNeeded" selector:0 userInfo:1 repeats:?];

  v20 = *&v15[OBJC_IVAR___AXLTCaptionsProvider_clearHistoryTimer];
  *&v15[OBJC_IVAR___AXLTCaptionsProvider_clearHistoryTimer] = v19;

  if (qword_F8270 != -1)
  {
    swift_once();
  }

  return v15;
}

id AXLTCaptionsProvider.__deallocating_deinit()
{
  v1 = v0;
  if (qword_F8360 != -1)
  {
    swift_once();
  }

  v2 = static LiveSpeechCaptionsCallManager.shared;
  v3 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers;
  v4 = *(static LiveSpeechCaptionsCallManager.shared + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers);
  v5 = v1;
  [v4 removeObject:v5];
  [*(v2 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers) removeObject:v5];
  if (![*(v2 + v3) count])
  {
    sub_B6CE8();
  }

  if (qword_F82A8 != -1)
  {
    swift_once();
  }

  if (byte_FA364 == 1)
  {
    sub_4DA28();
  }

  else
  {
    sub_4E7F8();
  }

  v6 = OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer;
  [*&v5[OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer] invalidate];
  v7 = *&v5[v6];
  *&v5[v6] = 0;

  v8 = *&v5[OBJC_IVAR___AXLTCaptionsProvider_clearHistoryTimer];
  if (v8)
  {
    [v8 invalidate];
  }

  v9 = *&v5[OBJC_IVAR___AXLTCaptionsProvider_deactivationTimer];
  if (v9)
  {
    [v9 invalidate];
  }

  v10 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
  if (v5[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] == 1)
  {
    v11 = [objc_opt_self() defaultCenter];
    v12 = [objc_opt_self() sharedInstance];
    [v11 removeObserver:v5 name:AVAudioSessionMediaServicesWereResetNotification object:v12];

    v5[v10] = 0;
  }

  v13 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
  if (v5[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] != 1)
  {
    goto LABEL_19;
  }

  sub_BB320();
  result = AXLogLiveTranscription();
  if (result)
  {
    v15 = result;
    sub_B99F0();

    v16 = [objc_opt_self() defaultCenter];
    v17 = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
    v18 = [objc_opt_self() sharedInstance];
    [v16 removeObserver:v5 name:v17 object:v18];

    v5[v13] = 0;
LABEL_19:
    v19.receiver = v5;
    v19.super_class = type metadata accessor for AXLTCaptionsProvider();
    return objc_msgSendSuper2(&v19, "dealloc");
  }

  __break(1u);
  return result;
}

void sub_4F8F8()
{
  v1 = v0;
  v2 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  if (qword_F8360 != -1)
  {
    swift_once();
  }

  sub_80E8C(v0, static LiveSpeechCaptionsCallManager.shared);
  v5 = sub_59F30();
  v6 = sub_5725C();
  v7 = sub_BB320();
  v8 = AXLogLiveTranscription();
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  if (os_log_type_enabled(v8, v7))
  {
    v10 = v1;
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = sub_59F30();

    *(v11 + 8) = 1024;
    *(v11 + 10) = v6 & 1;
    _os_log_impl(&dword_0, v9, v7, "CaptionsProvider Setup isCallActive %{BOOL}d isMediaPlaying: %{BOOL}d", v11, 0xEu);
  }

  sub_55294();
  sub_5209C(0, 0);
  if (v5)
  {
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    v12 = static AXLTSettingsManager.shared;
    v13 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
    swift_beginAccess();
    if (*(v12 + v13) == 1)
    {
      if (qword_F8230 != -1)
      {
        swift_once();
      }

      v14 = static LiveCaptionsCallDisclosureProvider.shared;
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      v16 = sub_BB1A0();
      (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = sub_5B31C;
      v17[6] = v15;
      v18 = v1;
      v19 = v14;

      sub_2DB84(0, 0, v4, &unk_C07A8, v17);

      sub_C5E8(v4, &qword_F9770);
      goto LABEL_23;
    }

LABEL_18:
    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    if (byte_FA364 == 1)
    {
      sub_4CE3C();
    }

    else
    {
      sub_4DC5C();
    }

    goto LABEL_23;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v20 = static AXLTSettingsManager.shared;
  v21 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  if (*(v20 + v21) != 1)
  {
    goto LABEL_18;
  }

  v1[OBJC_IVAR___AXLTCaptionsProvider_micInterruptedByAudio] = 1;
  sub_6643C(0, 0);
LABEL_23:
  v22 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
  if ((v1[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] & 1) == 0)
  {
    v23 = [objc_opt_self() defaultCenter];
    v24 = [objc_opt_self() sharedInstance];
    [v23 addObserver:v1 selector:"handleAudioSessionResetWithNotification:" name:AVAudioSessionMediaServicesWereResetNotification object:v24];

    v1[v22] = 1;
  }

  sub_55540();
  v25 = OBJC_IVAR___AXLTCaptionsProvider_deactivationTimer;
  [*&v1[OBJC_IVAR___AXLTCaptionsProvider_deactivationTimer] invalidate];
  v26 = *&v1[v25];
  *&v1[v25] = 0;
}

void sub_4FDDC()
{
  if (qword_F82A8 != -1)
  {
    swift_once();
  }

  if (byte_FA364 == 1)
  {
    sub_4CE3C();
  }

  else
  {
    sub_4DC5C();
  }
}

void sub_4FE48()
{
  v1 = v0;
  if (qword_F8360 != -1)
  {
    swift_once();
  }

  v2 = static LiveSpeechCaptionsCallManager.shared;
  v3 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers;
  [*(static LiveSpeechCaptionsCallManager.shared + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers) removeObject:v1];
  [*(v2 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers) removeObject:v1];
  if (![*(v2 + v3) count])
  {
    sub_B6CE8();
  }

  v4 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
  if (*(v1 + OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed) == 1)
  {
    v5 = [objc_opt_self() defaultCenter];
    v6 = [objc_opt_self() sharedInstance];
    [v5 removeObserver:v1 name:AVAudioSessionMediaServicesWereResetNotification object:v6];

    *(v1 + v4) = 0;
  }

  v7 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
  if (*(v1 + OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed) == 1)
  {
    sub_BB320();
    v8 = AXLogLiveTranscription();
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    sub_B99F0();

    v10 = [objc_opt_self() defaultCenter];
    v11 = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
    v12 = [objc_opt_self() sharedInstance];
    [v10 removeObserver:v1 name:v11 object:v12];

    *(v1 + v7) = 0;
  }

  if (qword_F82A8 != -1)
  {
    swift_once();
  }

  if (byte_FA364 == 1)
  {
    sub_4DA28();
  }

  else
  {
    sub_4E7F8();
  }

  *(v1 + OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount) = 0;
  *(v1 + OBJC_IVAR___AXLTCaptionsProvider_rttCallUIVisibleProcessed) = 0;
  v13 = OBJC_IVAR___AXLTCaptionsProvider_micInterruptedByAudio;
  if (*(v1 + OBJC_IVAR___AXLTCaptionsProvider_micInterruptedByAudio) == 1)
  {
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    sub_6643C(1, 0);
    *(v1 + v13) = 0;
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19[4] = sub_5B3B0;
  v19[5] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_4E790;
  v19[3] = &unk_F1528;
  v16 = _Block_copy(v19);

  v17 = [v14 scheduledTimerWithTimeInterval:0 repeats:v16 block:300.0];
  _Block_release(v16);
  v18 = *(v1 + OBJC_IVAR___AXLTCaptionsProvider_deactivationTimer);
  *(v1 + OBJC_IVAR___AXLTCaptionsProvider_deactivationTimer) = v17;
}

void sub_5022C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_BB320();
    v2 = AXLogLiveTranscription();
    if (v2)
    {
      v3 = v2;
      sub_B99F0();

      swift_getKeyPath();
      swift_getKeyPath();
      v4 = sub_B9B00();
      *v5 = _swiftEmptyArrayStorage;

      v4(v7, 0);

      v6 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
      swift_beginAccess();
      *&v1[v6] = _swiftEmptyArrayStorage;

      sub_5209C(0, 0);
      sub_53C5C();
      sub_549A0();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_50388()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  *(v0 + v1) = 0;
  v2 = *(v0 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption);
  *(v0 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption) = 0;

  v3 = *(v0 + OBJC_IVAR___AXLTCaptionsProvider_currentCaption);
  *(v0 + OBJC_IVAR___AXLTCaptionsProvider_currentCaption) = 0;

  *(v0 + OBJC_IVAR___AXLTCaptionsProvider_newCaption) = 1;
  sub_58894();
  v4 = [objc_allocWithZone(NSNumber) initWithInt:1057];
  v5 = [v4 unsignedIntValue];

  UIAccessibilityPostNotification(v5, 0);
}

void sub_50450(void *a1)
{
  v5 = v1;
  sub_B90F0();
  __chkstk_darwin();
  v8 = (&v112[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (v5[v9] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v114 >> 62)
    {
      v10 = sub_BB650();
    }

    else
    {
      v10 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
    }

    if (v10 < 1)
    {
      goto LABEL_24;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v114 >> 62)
    {
      v11 = sub_BB650();
    }

    else
    {
      v11 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
    }

    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      sub_B9B10();

      v15 = v114;
      if ((v114 & 0xC000000000000001) == 0)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v13 < *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)))
        {
          v16 = *(v114 + 8 * v13 + 32);
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_44;
      }
    }

    v16 = sub_BB590();
LABEL_12:
    v17 = v16;

    v18 = sub_B9700();
    v20 = v19;

    if (v18 == sub_B97B0() && v20 == v21)
    {
    }

    else
    {
      v17 = sub_BB700();

      if ((v17 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    swift_getKeyPath();
    v30 = swift_getKeyPath();
    sub_B9B10();

    if (v114 >> 62)
    {
      v30 = v114;
      v31 = sub_BB650();
    }

    else
    {
      v31 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
    }

    v12 = __OFSUB__(v31, 1);
    v32 = (v31 - 1);
    if (v12)
    {
      __break(1u);
      goto LABEL_90;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v2 = sub_B9B00();

    (v2)(&v114, 0);

LABEL_24:
    v33 = sub_BB2F0();
    v34 = AXLogLiveTranscription();
    if (!v34)
    {
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    v35 = v34;
    if (os_log_type_enabled(v34, v33))
    {
      v36 = a1;
      v2 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v114 = v37;
      *v2 = 67109378;
      sub_B9640();
      v38 = sub_B9880();
      *(v2 + 4) = v38 == sub_B9880();

      *(v2 + 8) = 2080;
      v39 = sub_B96D0();
      v41 = sub_7A1D8(v39, v40, &v114);

      *(v2 + 10) = v41;
      _os_log_impl(&dword_0, v35, v33, "CaptionsProvider: received caption, final: %{BOOL}d,\n text:\n%s", v2, 0x12u);
      sub_28020(v37);
    }

    KeyPath = sub_BB2F0();
    v42 = AXLogLiveTranscription();
    if (!v42)
    {
      goto LABEL_167;
    }

    v15 = v42;
    if (!os_log_type_enabled(v42, KeyPath))
    {
LABEL_58:

      v60 = sub_B9700();
      v62 = v61;
      if (v60 == sub_BAFD0() && v62 == v63)
      {
      }

      else
      {
        KeyPath = sub_BB700();

        if ((KeyPath & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      if (qword_F8320 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_B9630();
LABEL_65:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      if (v114 >> 62)
      {
        v64 = sub_BB650();
      }

      else
      {
        v64 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
      }

      v3 = &unk_FA000;
      if (!v64 || (v5[OBJC_IVAR___AXLTCaptionsProvider_newCaption] & 1) != 0)
      {
LABEL_77:
        v71 = *&v5[OBJC_IVAR___AXLTCaptionsProvider_captionsID];
        v12 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v12)
        {
          __break(1u);
        }

        else
        {
          *&v5[OBJC_IVAR___AXLTCaptionsProvider_captionsID] = v72;
          swift_getKeyPath();
          swift_getKeyPath();
          KeyPath = sub_B9B00();
          v74 = v73;
          v75 = a1;
          sub_BB0D0();
          if (*(&dword_10 + (*v74 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            goto LABEL_79;
          }
        }

        sub_BB110();
LABEL_79:
        sub_BB130();
        (KeyPath)(&v114, 0);

        v5[v3[131]] = 0;
        v76 = *&v5[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption];
        *&v5[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption] = 0;

        LOBYTE(v8) = sub_BB2F0();
        v77 = AXLogLiveTranscription();
        if (v77)
        {
          v32 = v77;
          if (!os_log_type_enabled(v77, v8))
          {
LABEL_84:

            sub_52CB0();
LABEL_151:
            v109 = *&v5[OBJC_IVAR___AXLTCaptionsProvider_currentCaption];
            *&v5[OBJC_IVAR___AXLTCaptionsProvider_currentCaption] = a1;
            v110 = a1;

            sub_53C5C();
            sub_549A0();
            return;
          }

          v17 = v5;
          v30 = swift_slowAlloc();
          *v30 = 134217984;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_B9B10();

          if (!(v114 >> 62))
          {
            v78 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
LABEL_83:

            *(v30 + 4) = v78;

            _os_log_impl(&dword_0, v32, v8, "CaptionsProvider: Added new caption: %ld", v30, 0xCu);

            goto LABEL_84;
          }

LABEL_90:
          v78 = sub_BB650();
          goto LABEL_83;
        }

        goto LABEL_168;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v65 = v114;
      if (v114 >> 62)
      {
        v66 = sub_BB650();
        if (v66)
        {
LABEL_71:
          v12 = __OFSUB__(v66, 1);
          v67 = v66 - 1;
          if (!v12)
          {
            if ((v65 & 0xC000000000000001) == 0)
            {
              if ((v67 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v67 < *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
              {
                v68 = *(v65 + 8 * v67 + 32);
                goto LABEL_76;
              }

              __break(1u);
              goto LABEL_143;
            }

LABEL_140:
            v68 = sub_BB590();
LABEL_76:
            v69 = v68;

            sub_B9640();

            v70 = sub_B9880();
            if (v70 == sub_B9880())
            {
              goto LABEL_77;
            }

LABEL_95:
            v79 = *&v5[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption];
            if (v79)
            {
              swift_getKeyPath();
              v80 = swift_getKeyPath();
              v65 = v79;
              sub_B9B10();

              LOBYTE(v67) = v114;
              if (!(v114 >> 62))
              {
                v8 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
                goto LABEL_98;
              }

LABEL_143:
              v80 = v67;
              v8 = sub_BB650();
LABEL_98:

              v81 = &v8[-1].isa + 7;
              if (__OFSUB__(v8, 1))
              {
                __break(1u);
              }

              else
              {
                KeyPath = sub_B97A0();
                v8 = swift_getKeyPath();
                v80 = swift_getKeyPath();
                v2 = sub_B9B00();
                v83 = v82;
                v84 = *v82;
                isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                *v83 = v84;
                if (!isUniquelyReferenced_nonNull_bridgeObject || v84 < 0 || (v84 & 0x4000000000000000) != 0)
                {
                  v84 = sub_80E5C(v84);
                  *v83 = v84;
                }

                if ((v81 & 0x8000000000000000) == 0)
                {
                  if (v81 < *(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
                  {
                    v86 = *(&stru_20.cmd + 8 * v81 + (v84 & 0xFFFFFFFFFFFFFF8));
                    *(&stru_20.cmd + 8 * v81 + (v84 & 0xFFFFFFFFFFFFFF8)) = KeyPath;

                    (v2)(&v114, 0);
                    goto LABEL_123;
                  }

LABEL_146:
                  __break(1u);
                  goto LABEL_147;
                }
              }

              __break(1u);
              goto LABEL_146;
            }

            swift_getKeyPath();
            v80 = swift_getKeyPath();
            sub_B9B10();

            if (v114 >> 62)
            {
              v80 = v114;
              v87 = sub_BB650();
            }

            else
            {
              v87 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
            }

            v12 = __OFSUB__(v87, 1);
            v88 = v87 - 1;
            if (v12)
            {
              __break(1u);
            }

            else
            {
              swift_getKeyPath();
              KeyPath = swift_getKeyPath();
              sub_B9B10();

              v80 = v114;
              if ((v114 & 0xC000000000000001) == 0)
              {
                if ((v88 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                  goto LABEL_156;
                }

                if (v88 >= *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_158;
                }

                v90 = *(v114 + 8 * v88 + 32);
LABEL_113:

                v91 = objc_allocWithZone(sub_B9750());
                KeyPath = sub_B9720();
                sub_B96D0();
                sub_B96E0();
                sub_B9680();
                sub_B9690();
                sub_B9730();
                sub_B9740();
                sub_B9640();
                sub_B9650();
                sub_B9620();
                sub_B9630();
                swift_getKeyPath();
                v8 = swift_getKeyPath();
                sub_B9B10();

                v89 = v114;
                if (!(v114 >> 62))
                {
                  v92 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
LABEL_115:

                  v93 = v92 - 1;
                  if (!__OFSUB__(v92, 1))
                  {
                    v8 = swift_getKeyPath();
                    v80 = swift_getKeyPath();
                    v65 = KeyPath;
                    KeyPath = sub_B9B00();
                    v95 = v94;
                    v2 = *v94;
                    v96 = swift_isUniquelyReferenced_nonNull_bridgeObject();
                    *v95 = v2;
                    if (!v96 || v2 < 0 || (v2 & 0x4000000000000000) != 0)
                    {
                      v2 = sub_80E5C(v2);
                      *v95 = v2;
                    }

                    if ((v93 & 0x8000000000000000) == 0)
                    {
                      if (v93 < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
                      {
                        v97 = *(&stru_20.cmd + 8 * v93 + (v2 & 0xFFFFFFFFFFFFFF8));
                        *(&stru_20.cmd + 8 * v93 + (v2 & 0xFFFFFFFFFFFFFF8)) = v65;

                        (KeyPath)(&v114, 0);
LABEL_123:

                        v80 = sub_BB2F0();
                        v98 = AXLogLiveTranscription();
                        if (!v98)
                        {
LABEL_169:
                          __break(1u);
                          return;
                        }

                        v8 = v98;
                        if (!os_log_type_enabled(v98, v80))
                        {
LABEL_150:

                          goto LABEL_151;
                        }

                        KeyPath = swift_slowAlloc();
                        v2 = swift_slowAlloc();
                        v113 = v2;
                        *KeyPath = 136315138;
                        swift_getKeyPath();
                        swift_getKeyPath();
                        sub_B9B10();

                        v65 = v114;
                        if (!(v114 >> 62))
                        {
                          v99 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
                          if (v99)
                          {
                            goto LABEL_127;
                          }

                          goto LABEL_148;
                        }

LABEL_147:
                        v99 = sub_BB650();
                        if (v99)
                        {
LABEL_127:
                          v12 = __OFSUB__(v99, 1);
                          v100 = v99 - 1;
                          if (!v12)
                          {
                            if ((v65 & 0xC000000000000001) == 0)
                            {
                              if ((v100 & 0x8000000000000000) != 0)
                              {
                                __break(1u);
                              }

                              else if (v100 < *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
                              {
                                v101 = *(v65 + 8 * v100 + 32);
LABEL_132:
                                v102 = v101;

                                v103 = sub_B96D0();
                                v105 = v104;

LABEL_149:
                                v114 = v103;
                                v115 = v105;
                                sub_2E50(&qword_F86B0);
                                v106 = sub_BAFF0();
                                v108 = sub_7A1D8(v106, v107, &v113);

                                *(KeyPath + 4) = v108;
                                _os_log_impl(&dword_0, v8, v80, "CaptionsProvider: Updated last caption: \n%s", KeyPath, 0xCu);
                                sub_28020(v2);

                                goto LABEL_150;
                              }

                              __break(1u);
                              goto LABEL_165;
                            }

LABEL_162:
                            v101 = sub_BB590();
                            goto LABEL_132;
                          }

LABEL_161:
                          __break(1u);
                          goto LABEL_162;
                        }

LABEL_148:

                        v103 = 0;
                        v105 = 0;
                        goto LABEL_149;
                      }

LABEL_160:
                      __break(1u);
                      goto LABEL_161;
                    }

LABEL_159:
                    __break(1u);
                    goto LABEL_160;
                  }

                  __break(1u);
LABEL_158:
                  __break(1u);
                  goto LABEL_159;
                }

LABEL_156:
                v8 = v89;
                v92 = sub_BB650();
                goto LABEL_115;
              }
            }

            sub_BB590();
            goto LABEL_113;
          }

LABEL_139:
          __break(1u);
          goto LABEL_140;
        }
      }

      else
      {
        v66 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
        if (v66)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_95;
    }

    v4 = v5;
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v112[0] = v3;
    *v2 = 67109378;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v13 = v114;
    if (!(v114 >> 62))
    {
      v43 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
      if (v43)
      {
        goto LABEL_31;
      }

      goto LABEL_45;
    }

LABEL_44:
    v43 = sub_BB650();
    if (v43)
    {
LABEL_31:
      v12 = __OFSUB__(v43, 1);
      v44 = v43 - 1;
      if (v12)
      {
        __break(1u);
      }

      else if ((v13 & 0xC000000000000001) == 0)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_134;
        }

        if (v44 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_137;
        }

        v45 = *(v13 + 8 * v44 + 32);
LABEL_36:
        v46 = v45;

        sub_B9640();

        v47 = sub_B9880();
        if (v47 == sub_B9880())
        {
          v48 = 1;
          goto LABEL_47;
        }

LABEL_46:
        v48 = 0;
LABEL_47:
        *(v2 + 4) = v48;

        *(v2 + 8) = 2080;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_B9B10();

        v49 = v114;
        if (v114 >> 62)
        {
          v50 = sub_BB650();
          if (v50)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v50 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
          if (v50)
          {
LABEL_49:
            v12 = __OFSUB__(v50, 1);
            v51 = v50 - 1;
            if (!v12)
            {
              if ((v49 & 0xC000000000000001) == 0)
              {
                if ((v51 & 0x8000000000000000) == 0)
                {
                  if (v51 < *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)))
                  {
                    v52 = *(v49 + 8 * v51 + 32);
LABEL_54:
                    v53 = v52;

                    v54 = sub_B96D0();
                    v56 = v55;

LABEL_57:
                    v114 = v54;
                    v115 = v56;
                    sub_2E50(&qword_F86B0);
                    v57 = sub_BAFF0();
                    v59 = sub_7A1D8(v57, v58, v112);

                    *(v2 + 10) = v59;
                    _os_log_impl(&dword_0, v15, KeyPath, "CaptionsProvider: last caption, final: %{BOOL}d,\n text:\n%s", v2, 0x12u);
                    sub_28020(v3);

                    goto LABEL_58;
                  }

LABEL_138:
                  __break(1u);
                  goto LABEL_139;
                }

LABEL_137:
                __break(1u);
                goto LABEL_138;
              }

LABEL_135:
              v52 = sub_BB590();
              goto LABEL_54;
            }

            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }
        }

        v54 = 0;
        v56 = 0;
        goto LABEL_57;
      }

      v45 = sub_BB590();
      goto LABEL_36;
    }

LABEL_45:

    goto LABEL_46;
  }

  v22 = sub_BB2F0();
  v23 = AXLogLiveTranscription();
  if (!v23)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v24 = v23;
  if (os_log_type_enabled(v23, v22))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v114 = v26;
    *v25 = 136315138;
    v27 = sub_B96D0();
    v29 = sub_7A1D8(v27, v28, &v114);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v24, v22, "CaptionsProvider: received caption, ignoring because transcribing is stopped text:\n%s", v25, 0xCu);
    sub_28020(v26);
  }
}

NSObject *sub_517AC(NSObject *result)
{
  if (result == -2)
  {
    return result;
  }

  v2 = result;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  if (v2 == &stru_20.flags)
  {
    *(v3 + 16) = sub_B9760();
    *(v3 + 24) = v6;

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v3;
    aBlock[4] = sub_5B2A4;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_4E790;
    aBlock[3] = &unk_F1348;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    v11 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:2.0];
    _Block_release(v9);

    v12 = sub_BB2F0();
    result = AXLogLiveTranscription();
    if (!result)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v13 = result;
    if (os_log_type_enabled(result, v12))
    {
      v14 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v14 = 136315138;
      v15 = [objc_opt_self() currentThread];
      v16 = [v15 description];
      v17 = sub_BAFD0();
      v19 = v18;

      v20 = sub_7A1D8(v17, v19, aBlock);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_0, v13, v12, "Timer: %s", v14, 0xCu);
      sub_28020(v35);
    }
  }

  else
  {
    if (v2 == -1)
    {
      v4 = sub_B9760();
    }

    else
    {
      sub_2E50(&qword_FA578);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_BDB40;
      v22 = sub_B9760();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      v25 = sub_5B210();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      *(v21 + 96) = &type metadata for Int;
      *(v21 + 104) = &protocol witness table for Int;
      *(v21 + 64) = v25;
      *(v21 + 72) = v2;
      v4 = sub_BAFE0();
    }

    *(v3 + 16) = v4;
    *(v3 + 24) = v5;
  }

  v26 = sub_BB2F0();
  result = AXLogLiveTranscription();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v27 = result;
  if (os_log_type_enabled(result, v26))
  {

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    swift_beginAccess();
    v30 = *(v3 + 16);
    v31 = *(v3 + 24);

    v32 = sub_7A1D8(v30, v31, aBlock);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_0, v27, v26, "Asset State: %s", v28, 0xCu);
    sub_28020(v29);
  }

  swift_beginAccess();
  v33 = *(v3 + 16);
  v34 = *(v3 + 24);

  sub_5209C(v33, v34);
}

void sub_51C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_BB2F0();
  v4 = AXLogLiveTranscription();
  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = v4;
  sub_B99F0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v25 >> 62)
  {
    v6 = sub_BB650();
  }

  else
  {
    v6 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  }

  if (v6 < 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v25 >> 62)
  {
    v7 = sub_BB650();
  }

  else
  {
    v7 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  }

  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if ((v25 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v10 = sub_BB590();
    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v9 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = *(v25 + 8 * v9 + 32);
LABEL_12:
  v11 = v10;

  v12 = sub_B9700();
  v14 = v13;

  if (v12 == sub_B97B0() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_BB700();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (!(v25 >> 62))
  {
    v17 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_18;
  }

LABEL_35:
  v17 = sub_BB650();
LABEL_18:

  v8 = __OFSUB__(v17, 1);
  v18 = v17 - 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if ((v25 & 0xC000000000000001) == 0)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v18 < *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
      {
        v19 = *(v25 + 8 * v18 + 32);
        goto LABEL_23;
      }

      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }
  }

  v19 = sub_BB590();
LABEL_23:
  v20 = v19;

  v21 = sub_B96D0();
  v23 = v22;

  swift_beginAccess();
  if (v21 == *(a3 + 16) && v23 == *(a3 + 24))
  {
  }

  else
  {
    v24 = sub_BB700();

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  sub_5209C(0, 0);
}

void sub_5209C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v6 = static AXLTSettingsManager.shared;
  v7 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    v72 = sub_B9800();
    v9 = v8;
  }

  else
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 name];

    v72 = sub_BAFD0();
    v9 = v12;
  }

  v13 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  v69 = v13;
  if (*(v6 + v13) == 1)
  {
    v14 = sub_B9850();
    v70 = v6;
    v71 = a2;
    if (!a2)
    {
LABEL_8:
      v16 = v15;
      a1 = v14;
      goto LABEL_15;
    }
  }

  else
  {
    v14 = sub_B97F0();
    v70 = v6;
    v71 = a2;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if (sub_B9760() == a1 && v17 == a2)
  {
  }

  else
  {
    sub_BB700();
  }

  v16 = a2;
LABEL_15:
  v18 = OBJC_IVAR___AXLTCaptionsProvider_captionsID;
  v19 = sub_B97B0();
  objc_allocWithZone(sub_B9750());

  v20 = v72;
  v21 = sub_B96B0();
  v22 = *&v3[v18];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v19 = v21;
    *&v3[v18] = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (!(v73[0] >> 62))
    {
      v25 = *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8));

      if (v25)
      {
        goto LABEL_18;
      }

LABEL_77:

      sub_2E50(&unk_FA5C0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_C0580;
      *(v66 + 32) = v19;
      swift_getKeyPath();
      swift_getKeyPath();
      v73[0] = v66;
      v67 = v19;
      v68 = v3;
      sub_B9B20();

      goto LABEL_78;
    }
  }

  v65 = sub_BB650();
  v20 = v72;

  if (!v65)
  {
    goto LABEL_77;
  }

LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v73[0] >> 62)
  {
    v26 = sub_BB650();
    v20 = v72;
  }

  else
  {
    v26 = *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8));
  }

  v23 = __OFSUB__(v26, 1);
  v27 = v26 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_81;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if ((v73[0] & 0xC000000000000001) != 0)
  {
LABEL_81:
    v28 = sub_BB590();
    goto LABEL_25;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_83;
  }

  if (v27 >= *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v28 = *(v73[0] + 8 * v27 + 32);
LABEL_25:
  v29 = v28;

  v30 = sub_B9700();
  v32 = v31;

  if (v30 == sub_B97B0() && v32 == v33)
  {
  }

  else
  {
    v34 = sub_BB700();

    if ((v34 & 1) == 0)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v19 = v19;
      v3 = sub_B9B00();
      v52 = v51;
      sub_BB0D0();
      if (*(&dword_10 + (*v52 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*v52 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
LABEL_53:
        sub_BB130();
        (v3)(v73, 0);

LABEL_74:

        return;
      }

LABEL_98:
      sub_BB110();
      goto LABEL_53;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (!(v73[0] >> 62))
  {
    v35 = *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8));
    goto LABEL_31;
  }

LABEL_84:
  v35 = sub_BB650();
  v20 = v72;
LABEL_31:

  v23 = __OFSUB__(v35, 1);
  v36 = v35 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_86;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if ((v73[0] & 0xC000000000000001) != 0)
  {
LABEL_86:
    v37 = sub_BB590();
    goto LABEL_36;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  if (v36 >= *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v37 = *(v73[0] + 8 * v36 + 32);
LABEL_36:
  v38 = v37;

  v39 = sub_B9710();
  v41 = v40;

  if (v39 == v20 && v41 == v9)
  {
  }

  else
  {
    v42 = sub_BB700();

    if ((v42 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (!(v73[0] >> 62))
  {
    v43 = *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8));
    goto LABEL_42;
  }

LABEL_89:
  v43 = sub_BB650();
LABEL_42:

  v23 = __OFSUB__(v43, 1);
  v44 = v43 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_91;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if ((v73[0] & 0xC000000000000001) != 0)
  {
LABEL_91:
    v45 = sub_BB590();
    goto LABEL_47;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_93;
  }

  if (v44 >= *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v45 = *(v73[0] + 8 * v44 + 32);
LABEL_47:
  v46 = v45;

  v47 = sub_B96D0();
  v49 = v48;

  if (v47 == a1 && v49 == v16)
  {

LABEL_78:

    return;
  }

  v50 = sub_BB700();

  if (v50)
  {
LABEL_51:

    return;
  }

  if (v71 || (*(v70 + v69) & 1) != 0)
  {
LABEL_64:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (!(v73[0] >> 62))
    {
      v58 = *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8));
      goto LABEL_66;
    }

LABEL_94:
    v58 = sub_BB650();
LABEL_66:

    v59 = v58 - 1;
    if (__OFSUB__(v58, 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = v19;
      v3 = sub_B9B00();
      v61 = v60;
      v62 = *v60;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v61 = v62;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v62 < 0 || (v62 & 0x4000000000000000) != 0)
      {
        v62 = sub_80E5C(v62);
        *v61 = v62;
      }

      if ((v59 & 0x8000000000000000) == 0)
      {
        if (v59 < *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
        {
          v64 = *(&stru_20.cmd + 8 * v59 + (v62 & 0xFFFFFFFFFFFFFF8));
          *(&stru_20.cmd + 8 * v59 + (v62 & 0xFFFFFFFFFFFFFF8)) = v19;

          (v3)(v73, 0);

          goto LABEL_74;
        }

        goto LABEL_97;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v73[0] >> 62)
  {
    v53 = sub_BB650();
  }

  else
  {
    v53 = *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8));
  }

  v23 = __OFSUB__(v53, 1);
  v54 = v53 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_101;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if ((v73[0] & 0xC000000000000001) != 0)
  {
LABEL_101:
    v55 = sub_BB590();
LABEL_63:
    v56 = v55;

    sub_B9600();

    v57 = sub_B9860();
    if (v57 == sub_B9860())
    {
      goto LABEL_51;
    }

    goto LABEL_64;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v54 < *(&dword_10 + (v73[0] & 0xFFFFFFFFFFFFFF8)))
  {
    v55 = *(v73[0] + 8 * v54 + 32);
    goto LABEL_63;
  }

  __break(1u);
}

uint64_t sub_52CB0()
{
  v4 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v48[0] >> 62)
  {
    v5 = sub_BB650();
  }

  else
  {
    v5 = *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8));
  }

  v7 = v5 - 2;
  if (v5 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if ((v48[0] & 0xC000000000000001) != 0)
    {
      v8 = sub_BB590();
    }

    else
    {
      if (v7 >= *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_51;
      }

      v8 = *(v48[0] + 8 * v7 + 32);
    }

    v9 = v8;

    sub_B9600();

    v10 = sub_B9860();
    result = sub_B9860();
    if (v10 == result)
    {
      return result;
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_B9B10();

    if ((v48[0] & 0xC000000000000001) == 0)
    {
      if (v7 >= *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = *(v48[0] + 8 * v7 + 32);
LABEL_11:
      v13 = v12;

      v14 = sub_B9700();
      v1 = v15;

      if (v14 == sub_BAFD0() && v1 == v16)
      {

        sub_B9890();
      }

      else
      {
        v18 = sub_BB700();

        if (v18)
        {
          sub_B9890();
        }

        else
        {
          sub_B9830();
        }
      }

      v3 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      if ((v48[0] & 0xC000000000000001) != 0)
      {
        v19 = sub_BB590();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_56;
        }

        v19 = *(v48[0] + 8 * v7 + 32);
      }

      v20 = v19;

      sub_B96F0();

      v2 = sub_BAFA0();

      KeyPath = v5 - 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v47 = v14;
      if ((v48[0] & 0xC000000000000001) == 0)
      {
        if (v5 <= *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
        {
          v14 = v5 - 1;
          v21 = *(v48[0] + 8 * KeyPath + 32);
          goto LABEL_23;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_54:
      v14 = KeyPath;
      v21 = sub_BB590();
LABEL_23:
      v22 = v21;

      v23 = objc_opt_self();
      sub_B96F0();

      v24 = sub_BAFA0();

      [v23 timeDifferenceDateStringOld:v2 dateStringNew:v24];
      v26 = v25;

      if (v26 >= v3)
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      if ((v48[0] & 0xC000000000000001) == 0)
      {
        if (v5 > *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_59;
        }

        v23 = v14;
        v27 = *(v48[0] + 8 * v14 + 32);
LABEL_27:
        v28 = v27;

        v29 = sub_B9700();
        v31 = v30;

        if (v47 == v29 && v1 == v31)
        {
        }

        else
        {
          v32 = sub_BB700();

          if ((v32 & 1) == 0)
          {
            return result;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_B9B10();

        v33 = v48[0];
        if ((v48[0] & 0xC000000000000001) == 0)
        {
          if (v7 >= *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_62;
          }

          v34 = *(v48[0] + 8 * v7 + 32);
LABEL_35:
          v35 = v34;

          v36 = *(v4 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption);
          *(v4 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption) = v35;

          swift_getKeyPath();
          swift_getKeyPath();
          sub_B9B10();

          if ((v48[0] & 0xC000000000000001) != 0)
          {
            v37 = sub_BB590();
          }

          else
          {
            if (v7 >= *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v37 = *(v48[0] + 8 * v7 + 32);
          }

          v33 = v37;

          swift_getKeyPath();
          swift_getKeyPath();
          sub_B9B10();

          if ((v48[0] & 0xC000000000000001) == 0)
          {
            if (v5 > *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
            {
LABEL_65:
              __break(1u);
              return result;
            }

            v38 = *(v48[0] + 8 * v23 + 32);
            goto LABEL_41;
          }

LABEL_62:
          v38 = sub_BB590();
LABEL_41:
          v39 = v38;

          v40 = sub_B97A0();

          swift_getKeyPath();
          swift_getKeyPath();
          v41 = sub_B9B00();
          v43 = v42;
          v44 = *v42;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v43 = v44;
          if (!result || v44 < 0 || (v44 & 0x4000000000000000) != 0)
          {
            result = sub_80E5C(v44);
            v44 = result;
            *v43 = result;
          }

          if (v7 < *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
          {
            v45 = *(&stru_20.cmd + 8 * v7 + (v44 & 0xFFFFFFFFFFFFFF8));
            *(&stru_20.cmd + 8 * v7 + (v44 & 0xFFFFFFFFFFFFFF8)) = v40;

            v41(v48, 0);

            swift_getKeyPath();
            swift_getKeyPath();
            v46 = sub_B9B00();

            v46(v48, 0);
          }

          goto LABEL_64;
        }

LABEL_59:
        v34 = sub_BB590();
        goto LABEL_35;
      }

LABEL_57:
      v23 = v14;
      v27 = sub_BB590();
      goto LABEL_27;
    }

LABEL_51:
    v12 = sub_BB590();
    goto LABEL_11;
  }

  return result;
}

unint64_t AXLTCaptionsProvider.canClearCaptions.getter()
{
  if (*(v0 + OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked))
  {
    goto LABEL_2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v17 >> 62)
  {
    v2 = sub_BB650();
  }

  else
  {
    v2 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2 > 1)
  {
    v1 = 1;
    return v1 & 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v3 = v17 >> 62 ? sub_BB650() : *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));

  if (v3 != 1)
  {
    goto LABEL_2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (!(v17 >> 62))
  {
    v4 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_27:

    sub_B97B0();
    goto LABEL_28;
  }

  v4 = sub_BB650();
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_12:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_32;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v7 = v0;
    v8 = sub_BB590();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = v0;
    v8 = *(v17 + 8 * result + 32);
LABEL_17:
    v9 = v8;

    v10 = sub_B9700();
    v12 = v11;

    v13 = sub_B97B0();
    if (v12)
    {
      v0 = v7;
      if (v10 == v13 && v12 == v14)
      {

        v1 = 0;
        return v1 & 1;
      }

      v15 = sub_BB700();

      if ((v15 & 1) == 0)
      {
LABEL_29:
        v16 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
        swift_beginAccess();
        v1 = *(v0 + v16) ^ 1;
        return v1 & 1;
      }

LABEL_2:
      v1 = 0;
      return v1 & 1;
    }

    v0 = v7;
LABEL_28:

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall AXLTCaptionsProvider.clearCaptions()()
{
  v3 = v0;
  v4 = sub_BB320();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    KeyPath = v5;
    if (!os_log_type_enabled(v5, v4))
    {
      goto LABEL_6;
    }

    v2 = v3;
    v1 = swift_slowAlloc();
    *v1 = 134217984;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v27[0] >> 62)
    {
      goto LABEL_31;
    }

    for (i = *(&dword_10 + (v27[0] & 0xFFFFFFFFFFFFFF8)); ; i = sub_BB650())
    {

      *(v1 + 4) = i;

      _os_log_impl(&dword_0, KeyPath, v4, "CaptionsProvider: clear captions %ld", v1, 0xCu);

LABEL_6:

      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v4 = v27[0];
      if (v27[0] >> 62)
      {
        v8 = sub_BB650();
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v8 = *(&dword_10 + (v27[0] & 0xFFFFFFFFFFFFFF8));
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (v9)
      {
        break;
      }

      if ((v27[0] & 0xC000000000000001) != 0)
      {
        goto LABEL_28;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *(&dword_10 + (v27[0] & 0xFFFFFFFFFFFFFF8)))
      {
        v11 = *(v27[0] + 8 * v10 + 32);
        goto LABEL_13;
      }

      __break(1u);
LABEL_31:
      ;
    }

    __break(1u);
LABEL_28:
    v11 = sub_BB590();
LABEL_13:
    v12 = v11;

    v13 = sub_B9700();
    v15 = v14;
    if (v13 == sub_B97B0() && v15 == v16)
    {

LABEL_16:

LABEL_23:
      swift_getKeyPath();
      swift_getKeyPath();
      v25 = sub_B9B00();
      *v26 = &_swiftEmptyArrayStorage;

      v25(v27, 0);

      sub_5209C(0, 0);
      goto LABEL_24;
    }

    v17 = sub_BB700();

    if ((v17 & 1) != 0 || (v18 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing, swift_beginAccess(), (*(v3 + v18) & 1) == 0))
    {

      goto LABEL_23;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = sub_B9B00();
    *v20 = &_swiftEmptyArrayStorage;

    v19(v27, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v12;
    v22 = sub_B9B00();
    v24 = v23;
    sub_BB0D0();
    if (*(&dword_10 + (*v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_BB110();
    }

    sub_BB130();
    v22(v27, 0);

LABEL_24:
    sub_53C5C();
    sub_549A0();
  }

  else
  {
    __break(1u);
  }
}

void sub_53C5C()
{
  v1 = AXLTCaptionsProvider.canClearCaptions.getter();
  v2 = OBJC_IVAR___AXLTCaptionsProvider__canClearCaptions;
  if ((v1 & 1) != v0[OBJC_IVAR___AXLTCaptionsProvider__canClearCaptions])
  {
    v0[OBJC_IVAR___AXLTCaptionsProvider__canClearCaptions] = v1 & 1;
    v3 = sub_BB320();
    v4 = AXLogLiveTranscription();
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v4, v3))
      {
        v6 = v0;
        v7 = swift_slowAlloc();
        *v7 = 67109120;
        *(v7 + 4) = v0[v2];

        _os_log_impl(&dword_0, v5, v3, "CaptionsProvider: canClearCaptions updated %{BOOL}d", v7, 8u);
      }

      v8 = [objc_opt_self() defaultCenter];
      v9 = v8;
      if (qword_F82E0 != -1)
      {
        swift_once();
        v8 = v9;
      }

      [v8 postNotificationName:canClearCaptionsChangedNotification object:0 userInfo:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_53DE8()
{
  sub_BB320();
  v1 = AXLogLiveTranscription();
  if (v1)
  {
    v2 = v1;
    sub_B99F0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    sub_53FF8(v9);

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    sub_B9B20();
    sub_BB320();
    v4 = AXLogLiveTranscription();
    if (v4)
    {
      v5 = v4;
      sub_B99F0();

      v6 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
      swift_beginAccess();

      v8 = sub_53FF8(v7);

      *&v3[v6] = v8;

      sub_5209C(0, 0);
      sub_53C5C();
      sub_549A0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

NSObject *sub_53FF8(unint64_t a1)
{
  v50 = sub_B9210();
  isa = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;

  *&v4 = COERCE_DOUBLE(sub_551AC());
  if (v6)
  {
    sub_B9870();
    v7 = *&v5;
  }

  else
  {
    v7 = *&v4;
  }

  if (a1 >> 62)
  {
LABEL_44:
    v8 = sub_BB650();
    if (v8)
    {
      goto LABEL_6;
    }

    return v52;
  }

  v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v8)
  {
    return v52;
  }

LABEL_6:
  v9 = 0;
  v51 = a1 & 0xFFFFFFFFFFFFFF8;
  v48 = (isa + 8);
  v47 = AXLTCallID;
  *&v5 = 134217984;
  v46 = v5;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = sub_BB590();
    }

    else
    {
      if (v9 >= *(v51 + 16))
      {
        goto LABEL_43;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13 = sub_B96F0();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = sub_B9700();
      v19 = v18;
      if (v17 == sub_B97B0() && v19 == v20)
      {

        goto LABEL_9;
      }

      v21 = sub_BB700();

      if ((v21 & 1) == 0)
      {
        break;
      }
    }

LABEL_8:

LABEL_9:
    ++v9;
    if (v12 == v8)
    {
      return v52;
    }
  }

  v22 = objc_opt_self();
  sub_B96F0();
  v23 = sub_BAFA0();

  v24 = [v22 now];
  v25 = v49;
  sub_B91F0();

  isa = sub_B91E0().super.isa;
  (*v48)(v25, v50);
  v26 = [v22 dateToString:isa];

  if (!v26)
  {
    sub_BAFD0();
    isa = v27;
    v26 = sub_BAFA0();
  }

  [v22 timeDifferenceDateStringOld:v23 dateStringNew:{v26, v46, v47}];
  v29 = v28;

  v30 = sub_B9700();
  v32 = v31;
  if (v30 == sub_BAFD0() && v32 == v33)
  {
  }

  else
  {
    isa = sub_BB700();

    if ((isa & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if ((sub_B9620() & 1) != 0 && v29 > 60.0)
  {
    v34 = sub_54508(v11, v52);
    if (v35)
    {
      goto LABEL_8;
    }

    v36 = sub_BB2F0();
    result = AXLogLiveTranscription();
    if (!result)
    {
      goto LABEL_47;
    }

    v38 = result;
    if (os_log_type_enabled(result, v36))
    {
      v39 = v11;
      isa = swift_slowAlloc();
      *isa = v46;
      *(isa + 4) = sub_B96C0();

      v40 = v36;
      v41 = v38;
      v42 = "CaptionsProvider: Removing old call caption: %ld";
LABEL_39:
      _os_log_impl(&dword_0, v41, v40, v42, isa, 0xCu);

      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_34:
  if (v7 >= v29)
  {

    return v52;
  }

  v43 = sub_54508(v11, v52);
  if (v44)
  {
    goto LABEL_8;
  }

  v45 = sub_BB2F0();
  result = AXLogLiveTranscription();
  if (result)
  {
    v38 = result;
    if (os_log_type_enabled(result, v45))
    {
      v39 = v11;
      isa = swift_slowAlloc();
      *isa = v46;
      *(isa + 4) = sub_B96C0();

      v40 = v45;
      v41 = v38;
      v42 = "CaptionsProvider: Removing old caption: %ld";
      goto LABEL_39;
    }

LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_54508(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_BB650();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_BB590();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_B9750();
    v8 = sub_BB490();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

Swift::Void __swiftcall AXLTCaptionsProvider.clearCaptionsForGuidedAccess()()
{
  sub_BB320();
  v0 = AXLogLiveTranscription();
  if (v0)
  {
    v1 = v0;
    sub_B99F0();

    swift_getKeyPath();
    swift_getKeyPath();
    v2 = sub_B9B00();
    *v3 = _swiftEmptyArrayStorage;

    v2(&v4, 0);

    sub_5209C(0, 0);
    sub_53C5C();
    sub_549A0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t AXLTCaptionsProvider.canCopyCaptions.getter()
{
  if (*(v0 + OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v20 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)); i; i = sub_BB650())
  {
    v3 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v4 = sub_BB590();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v4 = *(v20 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = sub_B9700();
      v9 = v8;
      if (v7 == sub_B97B0() && v9 == v10)
      {
      }

      else
      {
        v11 = sub_BB700();

        if (v11)
        {
        }

        else
        {
          v12 = sub_B9700();
          v14 = v13;
          if (v12 == sub_BAFD0() && v14 == v15)
          {
          }

          else
          {
            v16 = sub_BB700();

            if ((v16 & 1) == 0)
            {

LABEL_26:
              v1 = 1;
              goto LABEL_31;
            }
          }

          if (qword_F8320 != -1)
          {
            swift_once();
          }

          v17 = static AXLTSettingsManager.shared;

          v18 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
          swift_beginAccess();
          if (*(v17 + v18))
          {
            goto LABEL_26;
          }
        }
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
  v1 = 0;
LABEL_31:

  return v1;
}

void sub_549A0()
{
  if ((v0[OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v26 = v0;
    if (v27 >> 62)
    {
LABEL_29:
      v1 = sub_BB650();
      if (v1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
      if (v1)
      {
LABEL_4:
        v2 = 0;
        do
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v3 = sub_BB590();
          }

          else
          {
            if (v2 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_28;
            }

            v3 = *(v27 + 8 * v2 + 32);
          }

          v4 = v3;
          v5 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v6 = sub_B9700();
          v8 = v7;
          if (v6 == sub_B97B0() && v8 == v9)
          {
          }

          else
          {
            v10 = sub_BB700();

            if (v10)
            {
            }

            else
            {
              v11 = sub_B9700();
              v13 = v12;
              if (v11 == sub_BAFD0() && v13 == v14)
              {
              }

              else
              {
                v15 = sub_BB700();

                if ((v15 & 1) == 0)
                {

LABEL_25:

                  v0 = v26;
                  v18 = &v26[OBJC_IVAR___AXLTCaptionsProvider__canCopyCaptions];
                  if (v26[OBJC_IVAR___AXLTCaptionsProvider__canCopyCaptions])
                  {
                    return;
                  }

                  v19 = 1;
LABEL_33:
                  *v18 = v19;
                  v20 = sub_BB320();
                  v21 = AXLogLiveTranscription();
                  if (v21)
                  {
                    v22 = v21;
                    if (os_log_type_enabled(v21, v20))
                    {
                      v23 = v0;
                      v24 = swift_slowAlloc();
                      *v24 = 67109120;
                      *(v24 + 4) = *v18;

                      _os_log_impl(&dword_0, v22, v20, "CaptionsProvider: canCopyCaptions updated %{BOOL}d", v24, 8u);
                    }

                    v25 = [objc_opt_self() defaultCenter];
                    if (qword_F82E8 != -1)
                    {
                      swift_once();
                    }

                    [v25 postNotificationName:canCopyCaptionsChangedNotification object:0 userInfo:0];
                  }

                  else
                  {
                    __break(1u);
                  }

                  return;
                }
              }

              if (qword_F8320 != -1)
              {
                swift_once();
              }

              v16 = static AXLTSettingsManager.shared;

              v17 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
              swift_beginAccess();
              if (*(v16 + v17))
              {
                goto LABEL_25;
              }
            }
          }

          ++v2;
        }

        while (v5 != v1);
      }
    }

    v0 = v26;
  }

  v18 = &v0[OBJC_IVAR___AXLTCaptionsProvider__canCopyCaptions];
  if (v0[OBJC_IVAR___AXLTCaptionsProvider__canCopyCaptions])
  {
    v19 = 0;
    goto LABEL_33;
  }
}