unint64_t sub_240721DB8()
{
  result = qword_27E4BE260;
  if (!qword_27E4BE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE260);
  }

  return result;
}

unint64_t sub_240721E10()
{
  result = qword_27E4BE268;
  if (!qword_27E4BE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE268);
  }

  return result;
}

unint64_t sub_240721E68()
{
  result = qword_27E4BE270;
  if (!qword_27E4BE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE270);
  }

  return result;
}

unint64_t sub_240721EC0()
{
  result = qword_27E4BE278;
  if (!qword_27E4BE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE278);
  }

  return result;
}

unint64_t sub_240721F18()
{
  result = qword_27E4BE280;
  if (!qword_27E4BE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE280);
  }

  return result;
}

unint64_t sub_240721F70()
{
  result = qword_27E4BE288;
  if (!qword_27E4BE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE288);
  }

  return result;
}

unint64_t sub_240721FC8()
{
  result = qword_27E4BE290;
  if (!qword_27E4BE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE290);
  }

  return result;
}

unint64_t sub_240722020()
{
  result = qword_27E4BE298;
  if (!qword_27E4BE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE298);
  }

  return result;
}

uint64_t sub_240722074()
{
  v0 = sub_24075AA34();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2407220C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEC00000065746163 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E496E676973 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_240722314()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BE2A0);
  __swift_project_value_buffer(v0, qword_27E4BE2A0);
  return sub_240759AD4();
}

uint64_t static AISLogger.routing.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  v3 = __swift_project_value_buffer(v2, qword_27E4BE2A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_240722434()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BE2B8);
  v1 = __swift_project_value_buffer(v0, qword_27E4BE2B8);
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4BE2A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CommandRouter.Role.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t CommandRouter.selfAccountId.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v9 = *(v1 + 152);
  v10 = v3;
  v11 = *(v1 + 184);
  v4 = v11;
  v8[0] = *(v1 + 120);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_2405B044C(v8, &v7, &qword_27E4B6420, &qword_240768F00);
}

uint64_t CommandRouter.v1CommandHandler.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t sub_24072262C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 224);
  v5 = *(v3 + 232);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2406CC46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24057B5BC(v4);
}

uint64_t sub_2407226C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240730B50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 224);
  v9 = *(v7 + 232);
  *(v7 + 224) = v6;
  *(v7 + 232) = v5;
  sub_24057B5BC(v3);
  return sub_24058CA60(v8);
}

uint64_t sub_24072277C()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  sub_24057B5BC(v1);
  return v1;
}

uint64_t sub_2407227CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 224);
  v6 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return sub_24058CA60(v5);
}

uint64_t sub_2407228D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  swift_beginAccess();
  result = sub_2405B044C(v1 + v3, &v13, &qword_27E4BE2D8, &unk_240782408);
  if (*(&v14 + 1))
  {
    v5 = v14;
    *a1 = v13;
    *(a1 + 16) = v5;
    *(a1 + 32) = v15;
  }

  else
  {
    sub_2405B8A50(&v13, &qword_27E4BE2D8, &unk_240782408);
    if (qword_27E4B5FA8 != -1)
    {
      swift_once();
    }

    v6 = sub_240759AE4();
    __swift_project_value_buffer(v6, qword_27E4BE2B8);
    v7 = sub_240759AC4();
    v8 = sub_24075A5D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_240579000, v7, v8, "Throwing error due to missing active transport", v9, 2u);
      MEMORY[0x245CC76B0](v9, -1, -1);
    }

    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
    swift_allocError();
    v11 = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
    (*(*(v12 - 8) + 56))(v11, 1, 5, v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t CommandRouter.__allocating_init(for:selfAccountId:accountIDsByService:signInPreflightHelper:v1CommandHandler:handshakeHandler:)(char *a1, _OWORD *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(v8 + 48);
  v17 = *(v8 + 52);
  v18 = swift_allocObject();
  v19 = *a1;
  v20 = *a4;
  swift_defaultActor_initialize();
  *(v18 + 304) = 0;
  *(v18 + 272) = 0u;
  *(v18 + 288) = 0u;
  *(v18 + 240) = 0u;
  *(v18 + 256) = 0u;
  *(v18 + 224) = 0u;
  v21 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE2F0, &qword_240782418);
  (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
  *(v18 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask) = 0;
  v23 = v18 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  v24 = v18 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_enforceKeepAlive;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  v25 = v18 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper;
  *(v18 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper) = 0;
  v27 = a2[1];
  *(v18 + 120) = *a2;
  v28 = a2[3];
  *(v18 + 184) = a2[4];
  v29 = a2[2];
  *(v18 + 168) = v28;
  *(v18 + 152) = v29;
  *(v18 + 112) = v19;
  *(v18 + 136) = v27;
  *(v18 + 200) = a3;
  *(v18 + 208) = a5;
  *(v18 + 216) = a6;
  if (a7)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = a7;
    *(v30 + 24) = a8;
    v31 = &unk_240782440;
  }

  else
  {
    v31 = &unk_240782420;
    v30 = 0;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  v33 = (v18 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeHandler);
  *v33 = &unk_240782430;
  v33[1] = v32;
  v34 = *(v18 + v26);
  *(v18 + v26) = v20;

  return v18;
}

uint64_t CommandRouter.init(for:selfAccountId:accountIDsByService:signInPreflightHelper:v1CommandHandler:handshakeHandler:)(char *a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v29 = *a4;
  swift_defaultActor_initialize();
  *(v8 + 304) = 0;
  *(v8 + 272) = 0u;
  *(v8 + 288) = 0u;
  *(v8 + 240) = 0u;
  *(v8 + 256) = 0u;
  *(v8 + 224) = 0u;
  v16 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE2F0, &qword_240782418);
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  *(v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask) = 0;
  v18 = v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v19 = v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_enforceKeepAlive;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  *(v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper) = 0;
  v21 = *a2;
  *(v8 + 136) = a2[1];
  v22 = a2[3];
  *(v8 + 152) = a2[2];
  *(v8 + 168) = v22;
  *(v8 + 184) = a2[4];
  *(v8 + 112) = v15;
  *(v8 + 120) = v21;
  *(v8 + 200) = a3;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  if (a7)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a7;
    *(v23 + 24) = a8;
    v24 = &unk_240782450;
  }

  else
  {
    v24 = &unk_240782420;
    v23 = 0;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  v26 = (v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeHandler);
  *v26 = &unk_240782448;
  v26[1] = v25;
  v27 = *(v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper);
  *(v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper) = v29;

  return v8;
}

uint64_t sub_240722F0C(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v7 = *a2;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405DA4B0;

  return v11(a1, v7, a3);
}

uint64_t sub_24072301C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a3 + 144);
  *(v3 + 144) = *(a3 + 128);
  *(v3 + 160) = v6;
  *(v3 + 176) = *(a3 + 160);
  v7 = *(a3 + 80);
  *(v3 + 80) = *(a3 + 64);
  *(v3 + 96) = v7;
  v8 = *(a3 + 112);
  *(v3 + 112) = *(a3 + 96);
  *(v3 + 128) = v8;
  v9 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v9;
  v10 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v10;
  v11 = swift_task_alloc();
  *(v3 + 184) = v11;
  *v11 = v3;
  v11[1] = sub_2407230EC;

  return sub_24072E2A8(a1, v3 + 16);
}

uint64_t sub_2407230EC()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  *(v3 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_240723220, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_240723238(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24072334C;

  return v10(a1, v4 + 16, a3);
}

uint64_t sub_24072334C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t CommandRouter.deinit()
{
  v1 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BE2B8);

  v3 = sub_240759AC4();
  v4 = sub_24075A5C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    type metadata accessor for CommandRouter(0);

    v7 = sub_24075A0E4();
    v9 = sub_2405BBA7C(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_240579000, v3, v4, "CommandRouter is going away: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v10 = *(v1 + 136);
  v11 = *(v1 + 144);
  v12 = *(v1 + 152);
  v13 = *(v1 + 160);
  v14 = *(v1 + 168);
  v15 = *(v1 + 176);
  v25 = *(v1 + 184);
  v26 = *(v1 + 192);
  sub_24072F500(*(v1 + 120), *(v1 + 128));
  v16 = *(v1 + 200);

  v17 = *(v1 + 216);

  v18 = *(v1 + 232);
  sub_24058CA60(*(v1 + 224));
  v19 = *(v1 + 288);
  v20 = *(v1 + 296);
  LOBYTE(v25) = *(v1 + 304);
  sub_24072F570(*(v1 + 240), *(v1 + 248), *(v1 + 256), *(v1 + 264), *(v1 + 272), *(v1 + 280));
  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation, &qword_27E4BE320, &unk_240782458);
  v21 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeHandler + 8);

  v22 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask);

  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport, &qword_27E4BE2D8, &unk_240782408);
  v23 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t CommandRouter.__deallocating_deinit()
{
  CommandRouter.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2407236B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 224);
  v6 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  sub_24057B5BC(a1);
  return sub_24058CA60(v5);
}

uint64_t sub_240723720(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval;
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = 0;
  v6 = a4 & 1;
  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  v8 = v4 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_enforceKeepAlive;
  result = swift_beginAccess();
  *v8 = 0;
  *(v8 + 8) = v7;
  *(v8 + 16) = v6;
  return result;
}

uint64_t sub_240723790@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  if (v2)
  {
    v3 = *(v1 + 240);
    *a1 = v3;
    *(a1 + 8) = v2;
    v4 = *(v1 + 256);
    v5 = *(v1 + 272);
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    v6 = *(v1 + 288);
    *(a1 + 48) = v6;
    v7 = *(v1 + 304);
    *(a1 + 64) = v7;
    v17[0] = v3;
    v17[1] = v2;
    v18 = v4;
    v19 = v5;
    v20 = v6;
    v21 = v7;
    return sub_240619124(v17, &v16);
  }

  else
  {
    if (qword_27E4B5FA8 != -1)
    {
      swift_once();
    }

    v9 = sub_240759AE4();
    __swift_project_value_buffer(v9, qword_27E4BE2B8);
    v10 = sub_240759AC4();
    v11 = sub_24075A5E4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_240579000, v10, v11, "Failed to unwrap handshake device info", v12, 2u);
      MEMORY[0x245CC76B0](v12, -1, -1);
    }

    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
    swift_allocError();
    v14 = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
    (*(*(v15 - 8) + 56))(v14, 3, 5, v15);
    return swift_willThrow();
  }
}

uint64_t sub_240723974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a1;
  v5[11] = a3;
  v6 = *(*(a3 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240723A0C, v4, 0);
}

uint64_t sub_240723A0C()
{
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  __swift_project_value_buffer(v1, qword_27E4BE2B8);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Registering new transport", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];

  v11 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 24))(&unk_240782470, v11, v10, v7);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *(v7 + 32);

  v13(sub_24072FB6C, v12, v10, v7);

  TransportBuilding.buildAny()(v10, v7, v0 + 2);
  v15 = v0[13];
  v16 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  swift_beginAccess();
  sub_240730A18((v0 + 2), v15 + v16, &qword_27E4BE2D8, &unk_240782408);
  swift_endAccess();
  v17 = *(v15 + 112);
  v18 = sub_240759AC4();
  v19 = sub_24075A5D4();
  v20 = os_log_type_enabled(v18, v19);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v20)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_240579000, v18, v19, "Registered server transport, will now wait for handshake from client", v21, 2u);
        MEMORY[0x245CC76B0](v21, -1, -1);
      }

      v22 = v0[13];

      v23 = *(MEMORY[0x277CE4600] + 4);

      v24 = swift_task_alloc();
      v0[17] = v24;
      *v24 = v0;
      v24[1] = sub_240724040;
      v25 = v0[13];
      v26 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2821372C0](v24, 0xA055690D9DB80000, 1, &unk_240782480, v25, v26);
    }

    else
    {
      if (v20)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_240579000, v18, v19, "Registered transport for ids channel", v30, 2u);
        MEMORY[0x245CC76B0](v30, -1, -1);
      }

      v32 = v0[14];
      v31 = v0[15];

      v33 = v0[1];

      return v33();
    }
  }

  else
  {
    if (v20)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_240579000, v18, v19, "Register client transport, will now perform handshake with server", v27, 2u);
      MEMORY[0x245CC76B0](v27, -1, -1);
    }

    v28 = swift_task_alloc();
    v0[16] = v28;
    *v28 = v0;
    v28[1] = sub_240723F0C;
    v29 = v0[13];

    return sub_240724B14(0);
  }
}

uint64_t sub_240723F0C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v7 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_240724040()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_2407241F0;
  }

  else
  {
    v7 = *(v2 + 104);

    v6 = sub_240724184;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240724184()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2407241F0()
{
  v1 = v0[13];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_240724264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240724340, 0, 0);
}

uint64_t sub_240724340()
{
  v30 = v0;
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_2407246BC;
    v4 = v0[5];
    v5 = v0[6];

    return sub_24072C054(v4, v5);
  }

  else
  {
    if (qword_27E4B5FA8 != -1)
    {
      swift_once();
    }

    v7 = v0[11];
    v8 = v0[6];
    v9 = sub_240759AE4();
    __swift_project_value_buffer(v9, qword_27E4BE2B8);
    sub_2405B044C(v8, v7, qword_27E4BA650, &qword_24076ED10);
    v10 = sub_240759AC4();
    v11 = sub_24075A5E4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[11];
    if (v12)
    {
      v14 = v0[10];
      v15 = v0[8];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      sub_2405B044C(v13, v14, qword_27E4BA650, &qword_24076ED10);
      v18 = sub_24075A0E4();
      v20 = v19;
      sub_2405B8A50(v13, qword_27E4BA650, &qword_24076ED10);
      v21 = sub_2405BBA7C(v18, v20, &v29);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_240579000, v10, v11, "Unable to receive message because router is deallocated: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    else
    {

      sub_2405B8A50(v13, qword_27E4BA650, &qword_24076ED10);
    }

    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[8];
    v25 = v0[9];
    v26 = v0[6];
    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
    swift_allocError();
    (*(v25 + 56))(v27, 2, 5, v24);
    swift_willThrow();
    sub_2405B8A50(v26, qword_27E4BA650, &qword_24076ED10);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2407246BC()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407247B8, 0, 0);
}

uint64_t sub_2407247B8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];

  sub_2405B8A50(v4, qword_27E4BA650, &qword_24076ED10);

  v5 = v0[1];

  return v5();
}

void sub_240724854()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F58, &unk_24076DBF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v13 - v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
    v6 = swift_allocError();
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
    (*(*(v9 - 8) + 56))(v8, 5, 5, v9);
    *v3 = v5;
    type metadata accessor for AnyCancellableID();
    swift_storeEnumTagMultiPayload();
    v10 = (v3 + *(v0 + 36));
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F60, &unk_240782830);
    v10[3] = v11;
    v12 = sub_240590128(&qword_27E4B9F68, &qword_27E4B9F60, &unk_240782830);
    v10[4] = v12;
    *v10 = v5;
    v13 = v6;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v12 + 24))(&v13, v11, v12);
    sub_2405B8A50(v3, &qword_27E4B9F58, &unk_24076DBF0);
  }
}

uint64_t sub_240724A84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2405CE450;

  return sub_240728CAC();
}

uint64_t sub_240724B14(char a1)
{
  *(v2 + 2088) = v1;
  *(v2 + 953) = a1;
  return MEMORY[0x2822009F8](sub_240724B38, v1, 0);
}

uint64_t sub_240724B38()
{
  v40 = v0;
  v1 = (v0 + 953);
  v2 = (v0 + 1352);
  if (*(v0 + 953))
  {
    v3 = 0;
    v4 = 1;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    static IdMSAccount.DeviceInfo.current.getter(v38);
    v36 = v38[1];
    v37 = v38[0];
    v34 = v38[3];
    v35 = v38[2];
    v3 = v39;
    v4 = *v1;
  }

  v5 = *(v0 + 2088);
  *v2 = *(v5 + 120);
  v6 = *(v5 + 152);
  v7 = *(v5 + 184);
  v8 = *(v5 + 136);
  *(v0 + 1400) = *(v5 + 168);
  *(v0 + 1416) = v7;
  *(v0 + 1368) = v8;
  *(v0 + 1384) = v6;
  v9 = *(v5 + 200);
  *(v0 + 1576) = 0;
  *(v0 + 1544) = 0u;
  *(v0 + 1560) = 0u;
  *(v0 + 1512) = 0u;
  *(v0 + 1528) = 0u;
  sub_2405B044C(v0 + 1352, v0 + 1432, &qword_27E4B6420, &qword_240768F00);

  sub_2405B8A50(v0 + 1512, &qword_27E4B8B08, &qword_240768590);
  *(v0 + 1272) = 0u;
  *(v0 + 1288) = 0u;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 0u;
  *(v0 + 1336) = 0u;
  sub_2405B8A50(v0 + 1272, &qword_27E4B6420, &qword_240768F00);
  *(v0 + 16) = v4;
  *(v0 + 17) = 257;
  *(v0 + 40) = v36;
  *(v0 + 24) = v37;
  *(v0 + 72) = v34;
  *(v0 + 56) = v35;
  *(v0 + 88) = v3;
  v10 = *(v0 + 1368);
  *(v0 + 96) = *v2;
  *(v0 + 112) = v10;
  v11 = *(v0 + 1400);
  *(v0 + 128) = *(v0 + 1384);
  *(v0 + 144) = v11;
  *(v0 + 160) = *(v0 + 1416);
  *(v0 + 176) = v9;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v12 = sub_240759AE4();
  *(v0 + 2096) = __swift_project_value_buffer(v12, qword_27E4BE2B8);
  sub_2406BD338(v0 + 16, v0 + 184);
  v13 = sub_240759AC4();
  v14 = sub_24075A5C4();
  sub_2406BD370(v0 + 16);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *v1;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v38[0] = v17;
    *v16 = 67109378;
    *(v16 + 4) = v15;
    *(v16 + 8) = 2080;
    v18 = *(v0 + 160);
    *(v0 + 648) = *(v0 + 144);
    *(v0 + 664) = v18;
    *(v0 + 680) = *(v0 + 176);
    v19 = *(v0 + 96);
    *(v0 + 584) = *(v0 + 80);
    *(v0 + 600) = v19;
    v20 = *(v0 + 128);
    *(v0 + 616) = *(v0 + 112);
    *(v0 + 632) = v20;
    v21 = *(v0 + 32);
    *(v0 + 520) = *(v0 + 16);
    *(v0 + 536) = v21;
    v22 = *(v0 + 64);
    *(v0 + 552) = *(v0 + 48);
    *(v0 + 568) = v22;
    sub_2406BD338(v0 + 16, v0 + 688);
    v23 = sub_24075A0E4();
    v25 = sub_2405BBA7C(v23, v24, v38);

    *(v16 + 10) = v25;
    _os_log_impl(&dword_240579000, v13, v14, "Performing handshake (isKeepAlive: %{BOOL}d) with request command: %s", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  v26 = *(v0 + 160);
  *(v0 + 480) = *(v0 + 144);
  *(v0 + 496) = v26;
  *(v0 + 512) = *(v0 + 176);
  v27 = *(v0 + 96);
  *(v0 + 416) = *(v0 + 80);
  *(v0 + 432) = v27;
  v28 = *(v0 + 128);
  *(v0 + 448) = *(v0 + 112);
  *(v0 + 464) = v28;
  v29 = *(v0 + 32);
  *(v0 + 352) = *(v0 + 16);
  *(v0 + 368) = v29;
  v30 = *(v0 + 64);
  *(v0 + 384) = *(v0 + 48);
  *(v0 + 400) = v30;
  v31 = swift_task_alloc();
  *(v0 + 2104) = v31;
  *v31 = v0;
  v31[1] = sub_240724EF0;
  v32 = *(v0 + 2088);

  return sub_2407257B4(v0 + 856, v0 + 352, 0, 4);
}

uint64_t sub_240724EF0()
{
  v2 = *v1;
  v3 = *(*v1 + 2104);
  v8 = *v1;
  *(*v1 + 2112) = v0;

  if (v0)
  {
    v4 = *(v2 + 2088);
    v5 = sub_240725750;
  }

  else
  {
    v6 = *(v2 + 2088);
    sub_2406BD370(v2 + 16);
    v5 = sub_240725018;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240725018()
{
  v63 = v0;
  v1 = (v0 + 960);
  *(v0 + 1056) = *(v0 + 952);
  v2 = *(v0 + 920);
  *(v0 + 1040) = *(v0 + 936);
  v3 = *(v0 + 872);
  *(v0 + 960) = *(v0 + 856);
  *(v0 + 976) = v3;
  v4 = *(v0 + 888);
  *(v0 + 1008) = *(v0 + 904);
  *(v0 + 1024) = v2;
  *(v0 + 992) = v4;
  if (*(v0 + 961) != 1)
  {
    v16 = *(v0 + 2096);
    v17 = sub_240759AC4();
    v18 = sub_24075A5E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_240579000, v17, v18, "Handshake request was not accepted, device wants to be left alone", v19, 2u);
      MEMORY[0x245CC76B0](v19, -1, -1);
    }

    goto LABEL_20;
  }

  if (*(v0 + 953) != 1 || *v1 != 1)
  {
    if ((*(v0 + 985) & 1) != 0 || *(v0 + 984) != 1)
    {
      v39 = *(v0 + 2096);
      v17 = sub_240759AC4();
      v40 = sub_24075A5E4();
      if (os_log_type_enabled(v17, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_240579000, v17, v40, "Incompatible selected version returned", v41, 2u);
        MEMORY[0x245CC76B0](v41, -1, -1);
      }
    }

    else
    {
      v20 = *(v0 + 992);
      v21 = *(v0 + 1000);
      v56 = *(v0 + 952);
      v53 = *(v0 + 904);
      v54 = *(v0 + 920);
      v55 = *(v0 + 936);
      v22 = *(v0 + 2096);
      if (v21)
      {
        *(v0 + 1720) = *(v0 + 952);
        v23 = *(v0 + 936);
        *(v0 + 1688) = *(v0 + 920);
        *(v0 + 1704) = v23;
        v24 = *(v0 + 904);
        *(v0 + 1656) = *(v0 + 888);
        *(v0 + 1672) = v24;
        sub_240619124(v0 + 1656, v0 + 1728);
        sub_2406BFA90(v0 + 960);
        v25 = *(v0 + 1040);
        *(v0 + 1616) = *(v0 + 1024);
        *(v0 + 1632) = v25;
        *(v0 + 1648) = *(v0 + 1056);
        v26 = *(v0 + 1008);
        *(v0 + 1584) = *(v0 + 992);
        *(v0 + 1600) = v26;
        sub_240619124(v0 + 1584, v0 + 1800);
        v27 = sub_240759AC4();
        v28 = sub_24075A5C4();
        sub_2405B8A50(v0 + 992, &qword_27E4B8B08, &qword_240768590);
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v57 = v52;
          *&v58 = v20;
          *v29 = 136315138;
          *(&v58 + 1) = v21;
          v59 = v53;
          v60 = v54;
          v61 = v55;
          v62 = v56;
          v30 = *(v0 + 1040);
          *(v0 + 1976) = *(v0 + 1024);
          *(v0 + 1992) = v30;
          *(v0 + 2008) = *(v0 + 1056);
          v31 = *(v0 + 1008);
          *(v0 + 1944) = *(v0 + 992);
          *(v0 + 1960) = v31;
          sub_240619124(v0 + 1944, v0 + 2016);
          v32 = IdMSAccount.DeviceInfo.description.getter();
          v34 = v33;
          v35 = v61;
          *(v0 + 1904) = v60;
          *(v0 + 1920) = v35;
          *(v0 + 1936) = v62;
          v36 = v59;
          *(v0 + 1872) = v58;
          *(v0 + 1888) = v36;
          sub_240602EAC(v0 + 1872);
          v37 = sub_2405BBA7C(v32, v34, &v57);

          *(v29 + 4) = v37;
          _os_log_impl(&dword_240579000, v27, v28, "Successfully completed handshake! Received device info: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x245CC76B0](v52, -1, -1);
          MEMORY[0x245CC76B0](v29, -1, -1);
        }

        v38 = *(v0 + 2088);
        *&v58 = v20;
        *(&v58 + 1) = v21;
        v59 = v53;
        v60 = v54;
        v61 = v55;
        v62 = v56;
        sub_24072975C(&v58);
        sub_2405B8A50(v0 + 992, &qword_27E4B8B08, &qword_240768590);
        goto LABEL_22;
      }

      v17 = sub_240759AC4();
      v42 = sub_24075A5E4();
      if (os_log_type_enabled(v17, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_240579000, v17, v42, "Did not receive expected device info in handshake response", v43, 2u);
        MEMORY[0x245CC76B0](v43, -1, -1);
      }
    }

LABEL_20:

    type metadata accessor for CommandRouter.HandshakeFailure(0);
    sub_24072FC30(&qword_27E4BE328, type metadata accessor for CommandRouter.HandshakeFailure);
    swift_allocError();
    v45 = *(v0 + 976);
    v44 = *(v0 + 992);
    *v46 = *v1;
    *(v46 + 16) = v45;
    *(v46 + 32) = v44;
    v48 = *(v0 + 1024);
    v47 = *(v0 + 1040);
    v49 = *(v0 + 1008);
    *(v46 + 96) = *(v0 + 1056);
    *(v46 + 64) = v48;
    *(v46 + 80) = v47;
    *(v46 + 48) = v49;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v50 = *(v0 + 8);
    goto LABEL_23;
  }

  v5 = *(v0 + 2096);
  sub_2406BFA58(v0 + 960, v0 + 1064);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  sub_2406BFA90(v0 + 960);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v58 = v9;
    *v8 = 136315138;
    v10 = *(v0 + 1040);
    *(v0 + 1232) = *(v0 + 1024);
    *(v0 + 1248) = v10;
    *(v0 + 1264) = *(v0 + 1056);
    v11 = *(v0 + 976);
    *(v0 + 1168) = *v1;
    *(v0 + 1184) = v11;
    v12 = *(v0 + 1008);
    *(v0 + 1200) = *(v0 + 992);
    *(v0 + 1216) = v12;
    v13 = sub_24075A0E4();
    v15 = sub_2405BBA7C(v13, v14, &v58);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_240579000, v6, v7, "Keep alive response received: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {

    sub_2406BFA90(v0 + 960);
  }

LABEL_22:
  v50 = *(v0 + 8);
LABEL_23:

  return v50();
}

uint64_t sub_240725750()
{
  sub_2406BD370(v0 + 16);
  v1 = *(v0 + 2112);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2407257B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 928) = v4;
  *(v5 + 920) = a4;
  *(v5 + 912) = a3;
  *(v5 + 904) = a1;
  v7 = sub_240759934();
  *(v5 + 936) = v7;
  v8 = *(v7 - 8);
  *(v5 + 944) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 952) = swift_task_alloc();
  *(v5 + 960) = swift_task_alloc();
  v10 = *(a2 + 144);
  *(v5 + 144) = *(a2 + 128);
  *(v5 + 160) = v10;
  *(v5 + 176) = *(a2 + 160);
  v11 = *(a2 + 80);
  *(v5 + 80) = *(a2 + 64);
  *(v5 + 96) = v11;
  v12 = *(a2 + 112);
  *(v5 + 112) = *(a2 + 96);
  *(v5 + 128) = v12;
  v13 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v13;
  v14 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v14;

  return MEMORY[0x2822009F8](sub_2407258C8, v4, 0);
}

uint64_t sub_2407258C8()
{
  v26 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  *(v0 + 968) = __swift_project_value_buffer(v1, qword_27E4BE2B8);
  sub_2406BD338(v0 + 16, v0 + 184);
  v2 = sub_240759AC4();
  v3 = sub_24075A5C4();
  sub_2406BD370(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315138;
    v6 = *(v0 + 160);
    *(v0 + 648) = *(v0 + 144);
    *(v0 + 664) = v6;
    *(v0 + 680) = *(v0 + 176);
    v7 = *(v0 + 96);
    *(v0 + 584) = *(v0 + 80);
    *(v0 + 600) = v7;
    v8 = *(v0 + 128);
    *(v0 + 616) = *(v0 + 112);
    *(v0 + 632) = v8;
    v9 = *(v0 + 32);
    *(v0 + 520) = *(v0 + 16);
    *(v0 + 536) = v9;
    v10 = *(v0 + 64);
    *(v0 + 552) = *(v0 + 48);
    *(v0 + 568) = v10;
    sub_2406BD338(v0 + 16, v0 + 688);
    v11 = sub_24075A0E4();
    v13 = sub_2405BBA7C(v11, v12, &v25);

    *(v4 + 4) = v13;
    _os_log_impl(&dword_240579000, v2, v3, "Sending handshake request command: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CC76B0](v5, -1, -1);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v14 = *(v0 + 928);
  v15 = swift_allocObject();
  v16 = *(v0 + 112);
  *(v15 + 136) = *(v0 + 128);
  v17 = *(v0 + 160);
  *(v15 + 152) = *(v0 + 144);
  *(v15 + 168) = v17;
  v18 = *(v0 + 48);
  *(v15 + 72) = *(v0 + 64);
  v19 = *(v0 + 96);
  *(v15 + 88) = *(v0 + 80);
  *(v15 + 104) = v19;
  *(v15 + 120) = v16;
  v20 = *(v0 + 32);
  *(v15 + 24) = *(v0 + 16);
  *(v15 + 40) = v20;
  *(v0 + 976) = v15;
  *(v15 + 16) = v14;
  *(v15 + 184) = *(v0 + 176);
  *(v15 + 56) = v18;
  sub_2406BD338(v0 + 16, v0 + 352);
  v21 = *(MEMORY[0x277CE4600] + 4);

  v22 = swift_task_alloc();
  *(v0 + 984) = v22;
  *v22 = v0;
  v22[1] = sub_240725B94;
  v23 = *(v0 + 904);

  return MEMORY[0x2821372C0](v23, 0x8AC7230489E80000, 0, &unk_240782808, v15, &type metadata for HandshakeCommand.Response);
}

uint64_t sub_240725B94()
{
  v2 = *(*v1 + 984);
  v3 = *v1;
  v3[124] = v0;

  if (v0)
  {
    v4 = v3[116];

    return MEMORY[0x2822009F8](sub_240725CE8, v4, 0);
  }

  else
  {
    v5 = v3[122];

    v6 = v3[120];
    v7 = v3[119];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_240725CE8()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 976);
  v3 = *(v0 + 960);
  v4 = *(v0 + 936);

  *(v0 + 872) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 992);
  if (v6)
  {
    v8 = *(v0 + 960);
    v9 = *(v0 + 952);
    v10 = *(v0 + 944);
    v11 = *(v0 + 936);

    (*(v10 + 32))(v9, v8, v11);
    sub_24072FC30(&qword_27E4BE3D8, MEMORY[0x277CE4628]);
    v12 = swift_allocError();
    *(v0 + 1000) = v12;
    (*(v10 + 16))(v13, v9, v11);
    v14 = swift_task_alloc();
    *(v0 + 1008) = v14;
    *v14 = v0;
    v15 = sub_2407263DC;
LABEL_3:
    v14[1] = v15;
    v16 = *(v0 + 928);
    v17 = *(v0 + 920);
    v18 = *(v0 + 912);
    v19 = *(v0 + 904);
    v20 = v0 + 16;
    v21 = v12;
LABEL_4:

    return sub_240726A84(v19, v21, v18, v17, v16, v20);
  }

  *(v0 + 880) = v7;
  v23 = v7;
  sub_240730C24();
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 888);
    *(v0 + 1024) = v24;
    v25 = [v24 domain];
    v26 = sub_24075A0B4();
    v28 = v27;

    v29 = *MEMORY[0x277D44250];
    if (v26 == sub_24075A0B4() && v28 == v30)
    {
    }

    else
    {
      v31 = sub_24075ACF4();

      if ((v31 & 1) == 0)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    if ([v24 code] == -6714)
    {
      v32 = *(v0 + 968);

      v33 = sub_240759AC4();
      v34 = sub_24075A5E4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_240579000, v33, v34, "Retrying another handshake, we failed to send request, handler not set up yet", v35, 2u);
        MEMORY[0x245CC76B0](v35, -1, -1);
      }

      v36 = v24;
      v37 = swift_task_alloc();
      *(v0 + 1032) = v37;
      *v37 = v0;
      v37[1] = sub_240726598;
      v16 = *(v0 + 928);
      v17 = *(v0 + 920);
      v18 = *(v0 + 912);
      v19 = *(v0 + 904);
      v20 = v0 + 16;
      v21 = v36;
      goto LABEL_4;
    }

    goto LABEL_16;
  }

LABEL_17:
  v38 = *(v0 + 992);

  *(v0 + 896) = v38;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3C8, &qword_240782810);
  if (swift_dynamicCast())
  {
    v40 = *(v0 + 864);
    if (v40 == 1)
    {
      v41 = *(v0 + 968);

      v42 = sub_240759AC4();
      v43 = sub_24075A5E4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        sub_240590128(&qword_27E4BE3D0, &qword_27E4BE3C8, &qword_240782810);
        swift_allocError();
        *v46 = xmmword_24075D8E0;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_240579000, v42, v43, "Retrying another handshake, we failed to receive a response: %@", v44, 0xCu);
        sub_2405B8A50(v45, &qword_27E4B92A0, &qword_240762400);
        MEMORY[0x245CC76B0](v45, -1, -1);
        MEMORY[0x245CC76B0](v44, -1, -1);
      }

      sub_240590128(&qword_27E4BE3D0, &qword_27E4BE3C8, &qword_240782810);
      v12 = swift_allocError();
      *(v0 + 1048) = v12;
      *v48 = xmmword_24075D8E0;
      v14 = swift_task_alloc();
      *(v0 + 1056) = v14;
      *v14 = v0;
      v15 = sub_240726740;
      goto LABEL_3;
    }

    sub_240730C70(*(v0 + 856), v40);
  }

  v49 = *(v0 + 992);
  v50 = *(v0 + 968);

  v51 = v49;
  v52 = sub_240759AC4();
  v53 = sub_24075A5E4();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 992);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v57 = v54;
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v58;
    *v56 = v58;
    _os_log_impl(&dword_240579000, v52, v53, "Failed to perform handshake: %@", v55, 0xCu);
    sub_2405B8A50(v56, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v56, -1, -1);
    MEMORY[0x245CC76B0](v55, -1, -1);
  }

  v59 = *(v0 + 992);

  swift_willThrow();
  v60 = *(v0 + 992);
  v61 = *(v0 + 960);
  v62 = *(v0 + 952);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_2407263DC()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v8 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v4 = *(v2 + 928);
    v5 = sub_2407268E0;
  }

  else
  {
    v6 = *(v2 + 928);

    v5 = sub_240726504;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240726504()
{
  (*(*(v0 + 944) + 8))(*(v0 + 952), *(v0 + 936));

  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240726598()
{
  v2 = *v1;
  v3 = *(*v1 + 1032);
  v8 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v4 = *(v2 + 928);
    v5 = sub_240726980;
  }

  else
  {
    v6 = *(v2 + 928);

    v5 = sub_2407266C0;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2407266C0()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240726740()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v8 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v4 = *(v2 + 928);
    v5 = sub_240726A04;
  }

  else
  {
    v6 = *(v2 + 928);

    v5 = sub_240726868;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240726868()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2407268E0()
{
  v1 = *(v0 + 1000);
  (*(*(v0 + 944) + 8))(*(v0 + 952), *(v0 + 936));

  v2 = *(v0 + 1016);
  v3 = *(v0 + 960);
  v4 = *(v0 + 952);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240726980()
{
  v1 = *(v0 + 1024);

  v2 = *(v0 + 1040);
  v3 = *(v0 + 960);
  v4 = *(v0 + 952);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240726A04()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_240726A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v8 = sub_24075A974();
  v6[29] = v8;
  v9 = *(v8 - 8);
  v6[30] = v9;
  v10 = *(v9 + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240726B50, a5, 0);
}

uint64_t sub_240726B50()
{
  v29 = v2;
  v3 = v2[25];
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  v2[32] = v5;
  if (v4)
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0)
  {
    v0 = 2000000000000000000 * v5;
    v1 = ((2 * v5) * 0xDE0B6B3A7640000uLL) >> 64;
    if (qword_27E4B5FA8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_4:
  v6 = sub_240759AE4();
  v2[33] = __swift_project_value_buffer(v6, qword_27E4BE2B8);
  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    v11 = sub_24075AF84();
    v13 = sub_2405BBA7C(v11, v12, &v28);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_240579000, v7, v8, "Timed out attempting to send handshake, will retry in %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  if (v2[25] >= v2[26])
  {
    v18 = sub_240759AC4();
    v19 = sub_24075A5E4();
    if (os_log_type_enabled(v18, v19))
    {
      v21 = v2[25];
      v20 = v2[26];
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = v21;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v20;
      _os_log_impl(&dword_240579000, v18, v19, "Timed out for the %lu/%lu and final time", v22, 0x16u);
      MEMORY[0x245CC76B0](v22, -1, -1);
    }

    v23 = v2[24];

    swift_willThrow();
    v24 = v23;
    v25 = v2[24];
    v26 = v2[31];

    v27 = v2[1];

    return v27();
  }

  else
  {
    v14 = v2[31];
    sub_24075ADC4();
    v15 = swift_task_alloc();
    v2[34] = v15;
    *v15 = v2;
    v15[1] = sub_240726E78;
    v16 = v2[31];

    return sub_24072F5E8(v0, v1, 0, 0, 1);
  }
}

uint64_t sub_240726E78()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[29];
  v8 = v2[27];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_24072714C;
  }

  else
  {
    v9 = sub_240726FF4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_240726FF4()
{
  v1 = *(v0 + 264);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Finished sleeping before next handshake attempt", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = *(v0 + 224);

  v6 = *v5;
  v7 = v5[2];
  *(v0 + 32) = v5[1];
  *(v0 + 48) = v7;
  *(v0 + 16) = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[6];
  *(v0 + 96) = v5[5];
  *(v0 + 112) = v10;
  *(v0 + 64) = v8;
  *(v0 + 80) = v9;
  v11 = v5[7];
  v12 = v5[8];
  v13 = v5[9];
  *(v0 + 176) = *(v5 + 20);
  *(v0 + 144) = v12;
  *(v0 + 160) = v13;
  *(v0 + 128) = v11;
  v14 = swift_task_alloc();
  *(v0 + 288) = v14;
  *v14 = v0;
  v14[1] = sub_2407271B0;
  v15 = *(v0 + 256);
  v16 = *(v0 + 216);
  v17 = *(v0 + 184);

  return sub_2407257B4(v17, v0 + 16, v15, 4);
}

uint64_t sub_24072714C()
{
  v1 = v0[35];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2407271B0()
{
  v2 = *(*v1 + 288);
  v3 = *v1;
  v3[37] = v0;

  if (v0)
  {
    v4 = v3[27];

    return MEMORY[0x2822009F8](sub_2407272EC, v4, 0);
  }

  else
  {
    v5 = v3[31];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2407272EC()
{
  v1 = v0[37];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_240727350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2406BD338(a3, v3 + 16);
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  *v6 = v3;
  v6[1] = sub_240727420;

  return sub_240729990(a1, a3);
}

uint64_t sub_240727420()
{
  v1 = *(*v0 + 184);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_240727514()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v16 - v4;
  v6 = (v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval);
  if ((*(v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval + 16) & 1) == 0)
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask;
    if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask))
    {
      v10 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
      sub_24075A4A4();
    }

    sub_24075A3B4();
    v11 = sub_24075A3D4();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    v13[5] = v7;
    v13[6] = v8;
    v14 = sub_240728A40(0, 0, v5, &unk_2407827F0, v13);
    sub_2405B8A50(v5, &unk_27E4B9BF0, &qword_240762710);
    v15 = *(v0 + v9);
    *(v0 + v9) = v14;
  }

  return result;
}

uint64_t sub_2407276D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_24075A964();
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v10 = sub_24075A974();
  v6[24] = v10;
  v11 = *(v10 - 8);
  v6[25] = v11;
  v12 = *(v11 + 64) + 15;
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240727804, 0, 0);
}

uint64_t sub_240727804()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  if ((sub_24075A4C4() & 1) != 0 || (v2 = *(v0 + 136), Strong = swift_weakLoadStrong(), (*(v0 + 216) = Strong) == 0))
  {
    v19 = *(v0 + 208);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v4 = *(v0 + 208);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 144);
    sub_24075ADC4();
    *(v0 + 120) = v11;
    *(v0 + 128) = v9;
    *(v0 + 104) = 0;
    *(v0 + 96) = 0;
    *(v0 + 112) = 1;
    v12 = sub_24072FC30(&qword_27E4BE3B8, MEMORY[0x277D85928]);
    sub_24075ADA4();
    sub_24072FC30(&qword_27E4BE3C0, MEMORY[0x277D858F8]);
    sub_24075A984();
    v13 = *(v8 + 8);
    *(v0 + 224) = v13;
    *(v0 + 232) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v7, v10);
    v14 = *(MEMORY[0x277D85A58] + 4);
    v15 = swift_task_alloc();
    *(v0 + 240) = v15;
    *v15 = v0;
    v15[1] = sub_240727A50;
    v16 = *(v0 + 208);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);

    return MEMORY[0x2822008C8](v18, v0 + 96, v17, v12);
  }
}

uint64_t sub_240727A50()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v10 = *v1;
  *(*v1 + 248) = v0;

  v4 = *(v2 + 232);
  if (v0)
  {
    (*(v2 + 224))(*(v2 + 184), *(v2 + 160));
    v5 = sub_240727CCC;
  }

  else
  {
    v7 = *(v2 + 200);
    v6 = *(v2 + 208);
    v8 = *(v2 + 192);
    (*(v2 + 224))(*(v2 + 184), *(v2 + 160));
    (*(v7 + 8))(v6, v8);
    v5 = sub_240727BA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_240727BA8()
{
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  *(v0 + 256) = __swift_project_value_buffer(v1, qword_27E4BE2B8);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Running keep alive task", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_240727D6C, v5, 0);
}

uint64_t sub_240727CCC()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[31];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240727D6C()
{
  v1 = v0[32];
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Performing keep alive handshake", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_240727E78;
  v6 = v0[27];

  return sub_240724B14(1);
}

uint64_t sub_240727E78()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_2407281C8;
  }

  else
  {
    v3 = sub_240727F8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240727F8C()
{
  v1 = *(v0 + 216);

  if ((sub_24075A4C4() & 1) != 0 || (v2 = *(v0 + 136), Strong = swift_weakLoadStrong(), (*(v0 + 216) = Strong) == 0))
  {
    v19 = *(v0 + 208);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v4 = *(v0 + 208);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 144);
    sub_24075ADC4();
    *(v0 + 120) = v11;
    *(v0 + 128) = v9;
    *(v0 + 104) = 0;
    *(v0 + 96) = 0;
    *(v0 + 112) = 1;
    v12 = sub_24072FC30(&qword_27E4BE3B8, MEMORY[0x277D85928]);
    sub_24075ADA4();
    sub_24072FC30(&qword_27E4BE3C0, MEMORY[0x277D858F8]);
    sub_24075A984();
    v13 = *(v8 + 8);
    *(v0 + 224) = v13;
    *(v0 + 232) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v7, v10);
    v14 = *(MEMORY[0x277D85A58] + 4);
    v15 = swift_task_alloc();
    *(v0 + 240) = v15;
    *v15 = v0;
    v15[1] = sub_240727A50;
    v16 = *(v0 + 208);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);

    return MEMORY[0x2822008C8](v18, v0 + 96, v17, v12);
  }
}

uint64_t sub_2407281C8()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[34];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to perform keep alive: %@", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = v0[32];

  v12 = sub_240759AC4();
  v13 = sub_24075A5D4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_240579000, v12, v13, "Incrementing keep alive failure count", v14, 2u);
    MEMORY[0x245CC76B0](v14, -1, -1);
  }

  v15 = v0[27];

  v16 = sub_240722870();
  if ((*(v17 + 16) & 1) == 0)
  {
    if (__OFADD__(*v17, 1))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v16, v17, v18);
    }

    ++*v17;
  }

  (v16)(v0 + 2, 0);
  v17 = v0[27];
  v16 = sub_2407283D4;
  v18 = 0;

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2407283D4()
{
  v1 = *(v0 + 216) + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_enforceKeepAlive;
  swift_beginAccess();
  *(v0 + 280) = *v1;
  *(v0 + 288) = *(v1 + 8);
  *(v0 + 113) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_240728470, 0, 0);
}

uint64_t sub_240728470()
{
  v1 = *(v0 + 113);
  v2 = *(v0 + 256);
  v3 = sub_240759AC4();
  if (v1)
  {
    v4 = sub_24075A5D4();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 272);
    v7 = *(v0 + 216);
    if (v5)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "Either not enforcing or have not hit count", v8, 2u);
      MEMORY[0x245CC76B0](v8, -1, -1);
    }

    goto LABEL_9;
  }

  v9 = sub_24075A5E4();
  if (os_log_type_enabled(v3, v9))
  {
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v10;
    _os_log_impl(&dword_240579000, v3, v9, "Failed to perform keep alive (for the %ld/%ld time)", v12, 0x16u);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  v14 = *(v0 + 280);
  v13 = *(v0 + 288);

  if (v14 < v13)
  {
    v15 = *(v0 + 216);

LABEL_9:

    if ((sub_24075A4C4() & 1) != 0 || (v16 = *(v0 + 136), Strong = swift_weakLoadStrong(), (*(v0 + 216) = Strong) == 0))
    {
      v33 = *(v0 + 208);
      v34 = *(v0 + 176);
      v35 = *(v0 + 184);

      v36 = *(v0 + 8);

      return v36();
    }

    else
    {
      v18 = *(v0 + 208);
      v20 = *(v0 + 184);
      v19 = *(v0 + 192);
      v22 = *(v0 + 168);
      v21 = *(v0 + 176);
      v23 = *(v0 + 152);
      v24 = *(v0 + 160);
      v25 = *(v0 + 144);
      sub_24075ADC4();
      *(v0 + 120) = v25;
      *(v0 + 128) = v23;
      *(v0 + 104) = 0;
      *(v0 + 96) = 0;
      *(v0 + 112) = 1;
      v26 = sub_24072FC30(&qword_27E4BE3B8, MEMORY[0x277D85928]);
      sub_24075ADA4();
      sub_24072FC30(&qword_27E4BE3C0, MEMORY[0x277D858F8]);
      sub_24075A984();
      v27 = *(v22 + 8);
      *(v0 + 224) = v27;
      *(v0 + 232) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27(v21, v24);
      v28 = *(MEMORY[0x277D85A58] + 4);
      v29 = swift_task_alloc();
      *(v0 + 240) = v29;
      *v29 = v0;
      v29[1] = sub_240727A50;
      v30 = *(v0 + 208);
      v32 = *(v0 + 184);
      v31 = *(v0 + 192);

      return MEMORY[0x2822008C8](v32, v0 + 96, v31, v26);
    }
  }

  v37 = *(v0 + 256);
  v38 = sub_240759AC4();
  v39 = sub_24075A5D4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_240579000, v38, v39, "Invalidating command router to break it all down", v40, 2u);
    MEMORY[0x245CC76B0](v40, -1, -1);
  }

  v41 = *(v0 + 216);

  type metadata accessor for CommandRouter.Failure(0);
  sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
  v42 = swift_allocError();
  v44 = v43;
  *(v0 + 296) = v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  (*(*(v45 - 8) + 56))(v44, 5, 5, v45);

  return MEMORY[0x2822009F8](sub_240728934, v41, 0);
}

uint64_t sub_240728934()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  sub_24072FC78();

  return MEMORY[0x2822009F8](sub_2407289A8, 0, 0);
}

uint64_t sub_2407289A8()
{
  v1 = v0[34];
  swift_willThrow();
  v2 = v0[34];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[22];
  v5 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_240728A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2405B044C(a3, v24 - v10, &unk_27E4B9BF0, &qword_240762710);
  v12 = sub_24075A3D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2405B8A50(v11, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24075A344();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24075A104() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_240728CCC()
{
  v17 = v0;
  v1 = *(v0 + 296);
  sub_2405B8998();
  v2 = swift_allocError();
  *v3 = 1;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0;
  *(v3 + 48) = 6;
  *(v0 + 82) = 1;
  *v16 = v2;
  *&v16[8] = *(v0 + 232);
  *&v16[24] = *(v0 + 248);
  *&v16[40] = *(v0 + 264);
  *&v16[49] = *(v0 + 273);
  v16[65] = 1;
  sub_240729278(v16);
  v4 = *&v16[48];
  *(v0 + 48) = *&v16[32];
  *(v0 + 64) = v4;
  *(v0 + 80) = *&v16[64];
  v5 = *&v16[16];
  *(v0 + 16) = *v16;
  *(v0 + 32) = v5;
  sub_2405B8A50(v0 + 16, &qword_27E4BE3A0, &unk_2407827D0);
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4BE2B8);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_240579000, v7, v8, "Starting to wait for handshake", v9, 2u);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  v10 = *(v0 + 296);

  v11 = sub_24072FC30(&qword_27E4BE348, type metadata accessor for CommandRouter);
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 304) = v13;
  *v13 = v0;
  v13[1] = sub_240728F48;
  v14 = *(v0 + 296);

  return MEMORY[0x2822008A0](v0 + 88, v10, v11, 0xD000000000000012, 0x800000024078A200, sub_240730A80, v14, &type metadata for IdMSAccount.DeviceInfo);
}

uint64_t sub_240728F48()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_240729110;
  }

  else
  {
    v5 = sub_240729060;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240729060()
{
  v10 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 104);
  v3 = *(v0 + 136);
  *(v0 + 192) = *(v0 + 120);
  *(v0 + 208) = v3;
  *(v0 + 224) = *(v0 + 152);
  *(v0 + 160) = *(v0 + 88);
  *(v0 + 176) = v2;
  v4 = *(v0 + 104);
  v5 = *(v0 + 136);
  v8[2] = *(v0 + 120);
  v8[3] = v5;
  v9 = *(v0 + 152);
  v8[0] = *(v0 + 88);
  v8[1] = v4;
  sub_24072975C(v8);
  sub_240602EAC(v0 + 160);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_240729128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE320, &unk_240782458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE2F0, &qword_240782418);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation;
  swift_beginAccess();
  sub_240730A18(v7, a2 + v10, &qword_27E4BE320, &unk_240782458);
  return swift_endAccess();
}

uint64_t sub_240729278(__int128 *a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE320, &unk_240782458);
  v4 = *(*(v35 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v35);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE2F0, &qword_240782418);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = a1[3];
  v47 = a1[2];
  v48 = v14;
  v49 = *(a1 + 32);
  v15 = a1[1];
  v45 = *a1;
  v46 = v15;
  v16 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation;
  swift_beginAccess();
  sub_2405B044C(v2 + v16, v8, &qword_27E4BE320, &unk_240782458);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2405B8A50(v8, &qword_27E4BE320, &unk_240782458);
  }

  v18 = *(v10 + 32);
  v34 = v13;
  v18(v13, v8, v9);
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v19 = sub_240759AE4();
  __swift_project_value_buffer(v19, qword_27E4BE2B8);

  sub_2405B044C(&v45, &v40, &qword_27E4BE3A0, &unk_2407827D0);
  v20 = sub_240759AC4();
  v21 = sub_24075A5D4();

  sub_2405B8A50(&v45, &qword_27E4BE3A0, &unk_2407827D0);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v22 = 136315394;
    sub_2405B044C(v2 + v16, v36, &qword_27E4BE320, &unk_240782458);
    v23 = sub_24075A0E4();
    v25 = sub_2405BBA7C(v23, v24, v39);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v40 = v45;
    v41 = v46;
    sub_2405B044C(&v45, v37, &qword_27E4BE3A0, &unk_2407827D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3A0, &unk_2407827D0);
    v26 = sub_24075A0E4();
    v28 = sub_2405BBA7C(v26, v27, v39);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_240579000, v20, v21, "Resuming handshake continuation: %s with result: %s", v22, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v29, -1, -1);
    MEMORY[0x245CC76B0](v22, -1, -1);
  }

  v30 = v34;
  if ((v49 & 0x100) != 0)
  {
    *&v40 = v45;
    v31 = v45;
    sub_24075A354();
  }

  else
  {
    v37[2] = v47;
    v37[3] = v48;
    v38 = v49;
    v37[0] = v45;
    v37[1] = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v40 = v45;
    v41 = v46;
    sub_240619124(&v40, v39);
    sub_24075A364();
  }

  (*(v10 + 8))(v30, v9);
  v32 = v36;
  (*(v10 + 56))(v36, 1, 1, v9);
  swift_beginAccess();
  sub_240730A18(v32, v2 + v16, &qword_27E4BE320, &unk_240782458);
  return swift_endAccess();
}

uint64_t sub_24072975C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[3];
  v32 = a1[2];
  v33 = v3;
  v34 = *(a1 + 64);
  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BE2B8);
  sub_240619124(&v30, &v25);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  sub_240602EAC(&v30);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v20 = v30;
    v21 = v31;
    sub_240619124(&v30, &v25);
    v10 = IdMSAccount.DeviceInfo.description.getter();
    v12 = v11;
    v28 = v23;
    v29 = v24;
    v26 = v21;
    v27 = v22;
    v25 = v20;
    sub_240602EAC(&v25);
    v13 = sub_2405BBA7C(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_240579000, v6, v7, "Storing received handshake device info: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v14 = *(v2 + 272);
  v28 = *(v2 + 288);
  v29 = *(v2 + 304);
  v15 = *(v2 + 240);
  v26 = *(v2 + 256);
  v27 = v14;
  v25 = v15;
  v16 = v33;
  *(v2 + 272) = v32;
  *(v2 + 288) = v16;
  *(v2 + 304) = v34;
  v17 = v31;
  *(v2 + 240) = v30;
  *(v2 + 256) = v17;
  sub_240619124(&v30, &v20);
  return sub_2405B8A50(&v25, &qword_27E4B8B08, &qword_240768590);
}

uint64_t sub_240729990(uint64_t a1, uint64_t a2)
{
  v3[111] = v2;
  v3[110] = a2;
  v3[109] = a1;
  v4 = type metadata accessor for V1Command(0);
  v3[112] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v6 = sub_240759744();
  v3[115] = v6;
  v7 = *(v6 - 8);
  v3[116] = v7;
  v8 = *(v7 + 64) + 15;
  v3[117] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[118] = v9;
  v10 = *(v9 - 8);
  v3[119] = v10;
  v11 = *(v10 + 64) + 15;
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240729B20, v2, 0);
}

uint64_t sub_240729B20()
{
  v55 = v0;
  v1 = v0[111];
  sub_2407228D0((v0 + 98));
  v2 = v0[123];
  sub_2407597A4();
  v3 = sub_2405BD7B0(MEMORY[0x277D84F90]);
  v4 = sub_2405BB3F4(0);
  if (v5)
  {
    v6 = v4;
    v54 = v3;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v3 = v54;
    }

    sub_24065B728(v6, v3);
  }

  v7 = sub_2405BB3F4(1u);
  if (v8)
  {
    v9 = v7;
    v54 = v3;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v3 = v54;
    }

    sub_24065B728(v9, v3);
  }

  v10 = sub_2405BB3F4(2u);
  if (v11)
  {
    v12 = v10;
    v54 = v3;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v3 = v54;
    }

    sub_24065B728(v12, v3);
  }

  v13 = sub_2405BB3F4(3u);
  if (v14)
  {
    v15 = v13;
    v54 = v3;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v3 = v54;
    }

    sub_24065B728(v15, v3);
  }

  v16 = v0[117];
  v17 = v0[116];
  v18 = v0[115];
  sub_240759724();
  sub_240759704();
  v20 = v19;
  v21 = *(v17 + 8);
  v0[124] = v21;
  v0[125] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v16, v18);
  v22 = v20 * 1000.0;
  if (COERCE__INT64(fabs(v20 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v22 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v22 < 1.84467441e19)
  {
    v23 = v0[123];
    v24 = v0[118];
    v25 = v0[112];
    v26 = v0[110];
    v27 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v3;
    sub_2405BCB30(v27, 0, isUniquelyReferenced_nonNull_native);

    v29 = v23 + v24[11];
    v30 = *v26;
    v31 = v26[2];
    *(v29 + 16) = v26[1];
    *(v29 + 32) = v31;
    *v29 = v30;
    v32 = v26[3];
    v33 = v26[4];
    v34 = v26[6];
    *(v29 + 80) = v26[5];
    *(v29 + 96) = v34;
    *(v29 + 48) = v32;
    *(v29 + 64) = v33;
    v35 = v26[7];
    v36 = v26[8];
    v37 = v26[9];
    *(v29 + 160) = *(v26 + 20);
    *(v29 + 128) = v36;
    *(v29 + 144) = v37;
    *(v29 + 112) = v35;
    type metadata accessor for V1Command.Request(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *(v23 + v24[9]) = 1;
    *(v23 + v24[10]) = v3;
    if (qword_27E4B5FA8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_21:
  v38 = v0[123];
  v39 = v0[122];
  v40 = sub_240759AE4();
  v0[126] = __swift_project_value_buffer(v40, qword_27E4BE2B8);
  sub_2405B044C(v38, v39, qword_27E4BA650, &qword_24076ED10);
  v41 = sub_240759AC4();
  v42 = sub_24075A5D4();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[122];
  if (v43)
  {
    v45 = v0[121];
    v46 = v0[118];
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v47 = 136315138;
    sub_2405B044C(v44, v45, qword_27E4BA650, &qword_24076ED10);
    v49 = sub_24075A0E4();
    v51 = v50;
    sub_2405B8A50(v44, qword_27E4BA650, &qword_24076ED10);
    v52 = sub_2405BBA7C(v49, v51, &v54);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_240579000, v41, v42, "Sending outMessage: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x245CC76B0](v48, -1, -1);
    MEMORY[0x245CC76B0](v47, -1, -1);
  }

  else
  {

    sub_2405B8A50(v44, qword_27E4BA650, &qword_24076ED10);
  }

  return MEMORY[0x2822009F8](sub_24072A088, 0, 0);
}

uint64_t sub_24072A088()
{
  v1 = v0[101];
  v2 = v0[102];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 98, v1);
  v4 = swift_task_alloc();
  v0[127] = v4;
  v5 = sub_240590128(&qword_27E4BE330, qword_27E4BA650, &qword_24076ED10);
  *v4 = v0;
  v4[1] = sub_24072A184;
  v6 = v0[123];
  v7 = v0[120];
  v8 = v0[118];

  return sub_240656A78(v7, v3, v6, v8, v1, v5, v2);
}

uint64_t sub_24072A184()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v4 = *v1;
  *(*v1 + 1024) = v0;

  v5 = *(v2 + 888);
  if (v0)
  {
    v6 = sub_24072AB48;
  }

  else
  {
    v6 = sub_24072A2B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24072A2B0()
{
  v108 = v0;
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 936);
  v4 = *(v0 + 920);
  sub_240759724();
  sub_240759704();
  v6 = v5;
  result = v2(v3, v4);
  v8 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = *(v0 + 1008);
  v10 = *(v0 + 960);
  v11 = v8;
  v12 = *(*(v0 + 944) + 40);
  v13 = *(v10 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v102 = v13;
  sub_2405BCB30(v11, 3u, isUniquelyReferenced_nonNull_native);

  *(v10 + v12) = v13;
  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 968);
    v18 = *(v0 + 960);
    v19 = *(v0 + 944);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v102 = v21;
    *v20 = 136315138;
    swift_beginAccess();
    sub_2405B044C(v18, v17, qword_27E4BA650, &qword_24076ED10);
    v22 = sub_24075A0E4();
    v24 = sub_2405BBA7C(v22, v23, &v102);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_240579000, v15, v16, "Received response inMessage: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x245CC76B0](v21, -1, -1);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  v25 = *(v0 + 960);
  v26 = *(v0 + 944);
  v27 = *(v0 + 912);
  v28 = *(v0 + 896);
  swift_beginAccess();
  v29 = *(v26 + 44);
  v30 = type metadata accessor for V1Command;
  sub_240730948(v25 + v29, v27, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = *(v0 + 912);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v101 = *(v0 + 1008);
      v63 = *(v32 + 16);
      v102 = *v32;
      v103 = v63;
      v64 = *(v32 + 32);
      v65 = *(v32 + 40);
      v66 = *(v32 + 48);
      v67 = *(v32 + 56);
      v68 = *(v32 + 64);
      v69 = *(v32 + 72);
      v71 = *(v32 + 80);
      v70 = *(v32 + 88);
      v72 = *(v32 + 96);
      *(v0 + 712) = 0u;
      *(v0 + 728) = 0u;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0u;
      *(v0 + 776) = 0;
      sub_2405B8A50(v0 + 712, &qword_27E4B8B08, &qword_240768590);
      v73 = v102;
      v74 = v103;
      *(v0 + 120) = v102;
      *(v0 + 136) = v74;
      *(v0 + 152) = v64;
      *(v0 + 160) = v65;
      *(v0 + 168) = v66;
      *(v0 + 176) = v67;
      *(v0 + 184) = v68;
      *(v0 + 192) = v69;
      *(v0 + 200) = v71;
      *(v0 + 208) = v70;
      *(v0 + 216) = v72;
      *(v0 + 16) = v73;
      *(v0 + 32) = v74;
      *(v0 + 48) = v64;
      *(v0 + 56) = v65;
      *(v0 + 64) = v66;
      *(v0 + 72) = v67;
      *(v0 + 80) = v68;
      *(v0 + 88) = v69;
      *(v0 + 96) = v71;
      *(v0 + 104) = v70;
      *(v0 + 112) = v72;
      sub_2406BFA58(v0 + 120, v0 + 224);
      sub_2406BFA90(v0 + 16);
      sub_2406BFA58(v0 + 120, v0 + 328);
      sub_2406BFA58(v0 + 120, v0 + 432);
      v75 = sub_240759AC4();
      v76 = sub_24075A5D4();
      sub_2406BFA90(v0 + 120);
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 984);
      v79 = *(v0 + 960);
      if (v77)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v106[0] = v81;
        *v80 = 136315138;
        v82 = *(v0 + 168);
        v83 = *(v0 + 200);
        *(v0 + 600) = *(v0 + 184);
        *(v0 + 616) = v83;
        *(v0 + 632) = *(v0 + 216);
        v84 = *(v0 + 136);
        *(v0 + 536) = *(v0 + 120);
        *(v0 + 552) = v84;
        *(v0 + 568) = *(v0 + 152);
        *(v0 + 584) = v82;
        v85 = sub_24075A0E4();
        v87 = sub_2405BBA7C(v85, v86, v106);

        *(v80 + 4) = v87;
        _os_log_impl(&dword_240579000, v75, v76, "Received command response: %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x245CC76B0](v81, -1, -1);
        MEMORY[0x245CC76B0](v80, -1, -1);
      }

      else
      {
        sub_2406BFA90(v0 + 120);
      }

      sub_2405B8A50(v78, qword_27E4BA650, &qword_24076ED10);
      sub_2405B8A50(v0 + 784, &qword_27E4BE338, &qword_2407824A8);
      sub_2405B8A50(v79, qword_27E4BA650, &qword_24076ED10);
      v88 = *(v0 + 984);
      v89 = *(v0 + 976);
      v90 = *(v0 + 968);
      v91 = *(v0 + 960);
      v92 = *(v0 + 936);
      v93 = *(v0 + 912);
      v94 = *(v0 + 904);
      v95 = *(v0 + 872);
      v96 = *(v0 + 184);
      v97 = *(v0 + 200);
      v98 = *(v0 + 168);
      *(v95 + 96) = *(v0 + 216);
      *(v95 + 64) = v96;
      *(v95 + 80) = v97;
      *(v95 + 48) = v98;
      v99 = *(v0 + 120);
      v100 = *(v0 + 152);
      *(v95 + 16) = *(v0 + 136);
      *(v95 + 32) = v100;
      *v95 = v99;

      v62 = *(v0 + 8);
      goto LABEL_16;
    }

    v30 = type metadata accessor for V1Command.Response;
  }

  sub_2405F5954(v32, v30);
  v33 = *(v0 + 960);
  v34 = *(v0 + 944);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0;
  sub_2405B8A50(v0 + 640, &qword_27E4B8B08, &qword_240768590);
  sub_240730948(v33 + *(v34 + 44), v35, type metadata accessor for V1Command);
  v37 = swift_getEnumCaseMultiPayload();
  v38 = *(v0 + 904);
  if (v37 != 2)
  {
    sub_2405F5954(v38, type metadata accessor for V1Command);
LABEL_14:
    v49 = *(v0 + 984);
    v50 = *(v0 + 960);
    v51 = *(v0 + 952);
    v52 = *(v0 + 944);
    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
    swift_allocError();
    v54 = v53;
    sub_2405B044C(v50, v53, qword_27E4BA650, &qword_24076ED10);
    (*(v51 + 56))(v54, 0, 5, v52);
    swift_willThrow();
    sub_2405B8A50(v49, qword_27E4BA650, &qword_24076ED10);
    sub_2405B8A50(v0 + 784, &qword_27E4BE338, &qword_2407824A8);
    v48 = v50;
    goto LABEL_15;
  }

  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  v42 = *(v38 + 24);
  v104[0] = *v38;
  v104[1] = v40;
  v104[2] = v41;
  v105 = v42;
  v106[1] = 0;
  v106[2] = 0;
  v106[0] = 4;
  v107 = 2;
  if ((static V1CommandError.== infix(_:_:)(v104, v106) & 1) == 0)
  {
    sub_2406DCA8C(v39, v40, v41, v42);
    goto LABEL_14;
  }

  v43 = *(v0 + 984);
  v44 = *(v0 + 960);
  v45 = *(v0 + 952);
  v46 = *(v0 + 944);
  type metadata accessor for CommandRouter.Failure(0);
  sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
  swift_allocError();
  (*(v45 + 56))(v47, 4, 5, v46);
  swift_willThrow();
  sub_2406DCA8C(v39, v40, v41, v42);
  sub_2405B8A50(v43, qword_27E4BA650, &qword_24076ED10);
  sub_2405B8A50(v0 + 784, &qword_27E4BE338, &qword_2407824A8);
  v48 = v44;
LABEL_15:
  sub_2405B8A50(v48, qword_27E4BA650, &qword_24076ED10);
  v55 = *(v0 + 984);
  v56 = *(v0 + 976);
  v57 = *(v0 + 968);
  v58 = *(v0 + 960);
  v59 = *(v0 + 936);
  v60 = *(v0 + 912);
  v61 = *(v0 + 904);

  v62 = *(v0 + 8);
LABEL_16:

  return v62();
}

uint64_t sub_24072AB48()
{
  sub_2405B8A50(v0[123], qword_27E4BA650, &qword_24076ED10);
  sub_2405B8A50((v0 + 98), &qword_27E4BE338, &qword_2407824A8);
  v1 = v0[128];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[117];
  v7 = v0[114];
  v8 = v0[113];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24072AC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v7 = type metadata accessor for V1Command(0);
  v5[18] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = *(a4 + 8);
  v5[21] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[22] = AssociatedTypeWitness;
  v11 = sub_24075A714();
  v5[23] = v11;
  v12 = *(v11 - 8);
  v5[24] = v12;
  v13 = *(v12 + 64) + 15;
  v5[25] = swift_task_alloc();
  v14 = *(AssociatedTypeWitness - 8);
  v5[26] = v14;
  v15 = *(v14 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v16 = sub_240759744();
  v5[30] = v16;
  v17 = *(v16 - 8);
  v5[31] = v17;
  v18 = *(v17 + 64) + 15;
  v5[32] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v5[33] = v19;
  v20 = *(v19 - 8);
  v5[34] = v20;
  v21 = *(v20 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24072AF20, v4, 0);
}

uint64_t sub_24072AF20()
{
  v48 = v0;
  v1 = v0[17];
  sub_2407228D0((v0 + 2));
  v2 = v0[38];
  sub_2407597A4();
  v3 = sub_2405BD7B0(MEMORY[0x277D84F90]);
  v4 = sub_2405BB3F4(0);
  if (v5)
  {
    v6 = v4;
    v47 = v3;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v3 = v47;
    }

    sub_24065B728(v6, v3);
  }

  v7 = sub_2405BB3F4(1u);
  if (v8)
  {
    v9 = v7;
    v47 = v3;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v3 = v47;
    }

    sub_24065B728(v9, v3);
  }

  v10 = sub_2405BB3F4(2u);
  if (v11)
  {
    v12 = v10;
    v47 = v3;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v3 = v47;
    }

    sub_24065B728(v12, v3);
  }

  v13 = sub_2405BB3F4(3u);
  if (v14)
  {
    v15 = v13;
    v47 = v3;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v3 = v47;
    }

    sub_24065B728(v15, v3);
  }

  v17 = v0[31];
  v16 = v0[32];
  v18 = v0[30];
  sub_240759724();
  sub_240759704();
  v20 = v19;
  v21 = *(v17 + 8);
  v0[39] = v21;
  v0[40] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v16, v18);
  v22 = v20 * 1000.0;
  if (COERCE__INT64(fabs(v20 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v22 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v22 < 1.84467441e19)
  {
    v23 = v0[38];
    v24 = v0[33];
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[14];
    v28 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v3;
    sub_2405BCB30(v28, 0, isUniquelyReferenced_nonNull_native);

    v30 = v23 + v24[11];
    (*(v25 + 24))(v26, v25);
    *(v23 + v24[9]) = 1;
    *(v23 + v24[10]) = v3;
    if (qword_27E4B5FA8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_21:
  v31 = v0[37];
  v32 = v0[38];
  v33 = sub_240759AE4();
  v0[41] = __swift_project_value_buffer(v33, qword_27E4BE2B8);
  sub_2405B044C(v32, v31, qword_27E4BA650, &qword_24076ED10);
  v34 = sub_240759AC4();
  v35 = sub_24075A5D4();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[37];
  if (v36)
  {
    v38 = v0[36];
    v39 = v0[33];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v40 = 136315138;
    sub_2405B044C(v37, v38, qword_27E4BA650, &qword_24076ED10);
    v42 = sub_24075A0E4();
    v44 = v43;
    sub_2405B8A50(v37, qword_27E4BA650, &qword_24076ED10);
    v45 = sub_2405BBA7C(v42, v44, &v47);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_240579000, v34, v35, "Sending outMessage: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x245CC76B0](v41, -1, -1);
    MEMORY[0x245CC76B0](v40, -1, -1);
  }

  else
  {

    sub_2405B8A50(v37, qword_27E4BA650, &qword_24076ED10);
  }

  return MEMORY[0x2822009F8](sub_24072B484, 0, 0);
}

uint64_t sub_24072B484()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[42] = v4;
  v5 = sub_240590128(&qword_27E4BE330, qword_27E4BA650, &qword_24076ED10);
  *v4 = v0;
  v4[1] = sub_24072B57C;
  v6 = v0[38];
  v7 = v0[35];
  v8 = v0[33];

  return sub_240656A78(v7, v3, v6, v8, v2, v5, v1);
}

uint64_t sub_24072B57C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_24072BF30;
  }

  else
  {
    v6 = sub_24072B6A8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24072B6A8()
{
  v105 = v0;
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[32];
  v4 = v0[30];
  sub_240759724();
  sub_240759704();
  v6 = v5;
  result = v2(v3, v4);
  v8 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v8 <= -1.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v9 = v0[41];
  v10 = v0[35];
  v11 = v8;
  v12 = *(v0[33] + 40);
  v13 = *(v10 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103[0] = v13;
  sub_2405BCB30(v11, 3u, isUniquelyReferenced_nonNull_native);

  *(v10 + v12) = v13;
  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[35];
    v17 = v0[36];
    v19 = v0[33];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v103[0] = v21;
    *v20 = 136315138;
    swift_beginAccess();
    sub_2405B044C(v18, v17, qword_27E4BA650, &qword_24076ED10);
    v22 = sub_24075A0E4();
    v24 = sub_2405BBA7C(v22, v23, v103);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_240579000, v15, v16, "Received response inMessage: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x245CC76B0](v21, -1, -1);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  v25 = v0[35];
  v26 = v0[33];
  v27 = v0[25];
  v28 = v0[26];
  v30 = v0[21];
  v29 = v0[22];
  v31 = v0[20];
  v33 = v0[15];
  v32 = v0[16];
  swift_beginAccess();
  sub_240730948(v25 + *(v26 + 44), v31, type metadata accessor for V1Command);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v31, v29, AssociatedConformanceWitness);
  if ((*(v28 + 48))(v27, 1, v29) != 1)
  {
    v50 = v0[41];
    v52 = v0[28];
    v51 = v0[29];
    v53 = v0[26];
    v54 = v0[22];
    v99 = *(v53 + 32);
    v99(v51, v0[25], v54);
    v55 = *(v53 + 16);
    v55(v52, v51, v54);
    v56 = sub_240759AC4();
    v97 = sub_24075A5D4();
    v57 = os_log_type_enabled(v56, v97);
    v58 = v0[38];
    v59 = v0[28];
    if (v57)
    {
      v60 = v0[26];
      v61 = v0[27];
      v62 = v0[22];
      v95 = v0[38];
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v103[0] = v64;
      *v63 = 136315138;
      v55(v61, v59, v62);
      v65 = sub_24075A0E4();
      v67 = v66;
      (*(v60 + 8))(v59, v62);
      v68 = sub_2405BBA7C(v65, v67, v103);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_240579000, v56, v97, "Received command response: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x245CC76B0](v64, -1, -1);
      MEMORY[0x245CC76B0](v63, -1, -1);

      v69 = v95;
    }

    else
    {
      v70 = v0[26];
      v71 = v0[22];

      (*(v70 + 8))(v59, v71);
      v69 = v58;
    }

    sub_2405B8A50(v69, qword_27E4BA650, &qword_24076ED10);
    sub_2405B8A50((v0 + 2), &qword_27E4BE338, &qword_2407824A8);
    v72 = v0[37];
    v73 = v0[38];
    v75 = v0[35];
    v74 = v0[36];
    v76 = v0[32];
    v77 = v0[28];
    v78 = v0[27];
    v79 = v0[25];
    v96 = v0[20];
    v98 = v0[19];
    v99(v0[13], v0[29], v0[22]);
    sub_2405B8A50(v75, qword_27E4BA650, &qword_24076ED10);

    v80 = v0[1];
    goto LABEL_18;
  }

  v35 = v0[35];
  v36 = v0[33];
  v37 = v0[18];
  v38 = v0[19];
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_240730948(v35 + *(v36 + 44), v38, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = v0[19];
  if (EnumCaseMultiPayload != 2)
  {
    sub_2405F5954(v40, type metadata accessor for V1Command);
LABEL_16:
    v45 = v0[38];
    v81 = v0[34];
    v46 = v0[35];
    v82 = v0[33];
    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
    swift_allocError();
    v84 = v83;
    sub_2405B044C(v46, v83, qword_27E4BA650, &qword_24076ED10);
    (*(v81 + 56))(v84, 0, 5, v82);
    swift_willThrow();
    goto LABEL_17;
  }

  v41 = *v40;
  v42 = *(v40 + 8);
  v43 = *(v40 + 16);
  v44 = *(v40 + 24);
  v101[0] = *v40;
  v101[1] = v42;
  v101[2] = v43;
  v102 = v44;
  v103[1] = 0;
  v103[2] = 0;
  v103[0] = 4;
  v104 = 2;
  if ((static V1CommandError.== infix(_:_:)(v101, v103) & 1) == 0)
  {
    sub_2406DCA8C(v41, v42, v43, v44);
    goto LABEL_16;
  }

  v45 = v0[38];
  v47 = v0[34];
  v46 = v0[35];
  v48 = v0[33];
  type metadata accessor for CommandRouter.Failure(0);
  sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure);
  swift_allocError();
  (*(v47 + 56))(v49, 4, 5, v48);
  swift_willThrow();
  sub_2406DCA8C(v41, v42, v43, v44);
LABEL_17:
  sub_2405B8A50(v45, qword_27E4BA650, &qword_24076ED10);
  sub_2405B8A50((v0 + 2), &qword_27E4BE338, &qword_2407824A8);
  sub_2405B8A50(v46, qword_27E4BA650, &qword_24076ED10);
  v86 = v0[37];
  v85 = v0[38];
  v88 = v0[35];
  v87 = v0[36];
  v89 = v0[32];
  v91 = v0[28];
  v90 = v0[29];
  v92 = v0[27];
  v93 = v0[25];
  v94 = v0[20];
  v100 = v0[19];

  v80 = v0[1];
LABEL_18:

  return v80();
}

uint64_t sub_24072BF30()
{
  sub_2405B8A50(v0[38], qword_27E4BA650, &qword_24076ED10);
  sub_2405B8A50((v0 + 2), &qword_27E4BE338, &qword_2407824A8);
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[20];
  v13 = v0[19];
  v14 = v0[43];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24072C054(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for V1Command(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = sub_240759744();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24072C1C0, v2, 0);
}

uint64_t sub_24072C1C0()
{
  v36 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 24);
  v3 = sub_240759AE4();
  *(v0 + 136) = __swift_project_value_buffer(v3, qword_27E4BE2B8);
  sub_2405B044C(v2, v1, qword_27E4BA650, &qword_24076ED10);
  v4 = sub_240759AC4();
  v5 = sub_24075A5D4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315138;
    sub_2405B044C(v7, v8, qword_27E4BA650, &qword_24076ED10);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2405B8A50(v7, qword_27E4BA650, &qword_24076ED10);
    v15 = sub_2405BBA7C(v12, v14, &v35);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "Received inMessage: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    sub_2405B8A50(v7, qword_27E4BA650, &qword_24076ED10);
  }

  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);
  sub_2405B044C(*(v0 + 24), *(v0 + 112), qword_27E4BA650, &qword_24076ED10);
  sub_240759724();
  sub_240759704();
  v20 = v19;
  v21 = *(v17 + 8);
  *(v0 + 144) = v21;
  *(v0 + 152) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v21(v16, v18);
  v23 = v20 * 1000.0;
  if (COERCE__INT64(fabs(v20 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v23 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v23 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v24 = *(v0 + 112);
  v25 = *(v0 + 96);
  v26 = v23;
  v27 = *(v25 + 40);
  *(v0 + 168) = v27;
  v28 = *(v24 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v28;
  sub_2405BCB30(v26, 1u, isUniquelyReferenced_nonNull_native);
  v30 = v35;

  *(v24 + v27) = v30;
  v31 = *(v25 + 44);
  v32 = swift_task_alloc();
  *(v0 + 160) = v32;
  *v32 = v0;
  v32[1] = sub_24072C51C;
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);

  return sub_24072CB10(v33, v24 + v31);
}

uint64_t sub_24072C51C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24072C62C, v2, 0);
}

uint64_t sub_24072C62C()
{
  v61 = v0;
  v1 = *(v0 + 136);
  sub_240730948(*(v0 + 64), *(v0 + 56), type metadata accessor for V1Command);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v60 = v9;
    *v8 = 136315138;
    sub_240730948(v5, v6, type metadata accessor for V1Command);
    v10 = sub_24075A0E4();
    v12 = v11;
    sub_2405F5954(v5, type metadata accessor for V1Command);
    v13 = sub_2405BBA7C(v10, v12, &v60);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_240579000, v2, v3, "Processed request and preparing response: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {

    sub_2405F5954(v5, type metadata accessor for V1Command);
  }

  v14 = *(v0 + 168);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v19 = *(v0 + 72);
  v20 = *(v0 + 16);
  sub_2407597A4();
  v21 = *(v17 + v14);

  sub_240759724();
  sub_240759704();
  v23 = v22;
  result = v16(v18, v19);
  v25 = v23 * 1000.0;
  if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v25 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v25 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = *(v0 + 136);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  v29 = *(v0 + 64);
  v30 = *(v0 + 16);
  v31 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v21;
  sub_2405BCB30(v31, 2u, isUniquelyReferenced_nonNull_native);
  v33 = v60;

  sub_240730948(v29, v30 + v28[11], type metadata accessor for V1Command);
  *(v30 + v28[9]) = 1;
  *(v30 + v28[10]) = v33;
  sub_2405B044C(v30, v27, qword_27E4BA650, &qword_24076ED10);
  v34 = sub_240759AC4();
  v35 = sub_24075A5D4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 120);
    v38 = *(v0 + 96);
    v37 = *(v0 + 104);
    v58 = *(v0 + 64);
    v59 = *(v0 + 112);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v60 = v40;
    *v39 = 136315138;
    sub_2405B044C(v37, v36, qword_27E4BA650, &qword_24076ED10);
    v41 = sub_24075A0E4();
    v43 = v42;
    sub_2405B8A50(v37, qword_27E4BA650, &qword_24076ED10);
    v44 = sub_2405BBA7C(v41, v43, &v60);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_240579000, v34, v35, "Returning outMessage as response: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x245CC76B0](v40, -1, -1);
    MEMORY[0x245CC76B0](v39, -1, -1);

    sub_2405F5954(v58, type metadata accessor for V1Command);
    v45 = v59;
  }

  else
  {
    v47 = *(v0 + 104);
    v46 = *(v0 + 112);
    v48 = *(v0 + 64);

    sub_2405B8A50(v47, qword_27E4BA650, &qword_24076ED10);
    sub_2405F5954(v48, type metadata accessor for V1Command);
    v45 = v46;
  }

  sub_2405B8A50(v45, qword_27E4BA650, &qword_24076ED10);
  v50 = *(v0 + 120);
  v49 = *(v0 + 128);
  v52 = *(v0 + 104);
  v51 = *(v0 + 112);
  v53 = *(v0 + 88);
  v55 = *(v0 + 56);
  v54 = *(v0 + 64);
  v56 = *(v0 + 48);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_24072CB10(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for V1Command.Response(0);
  v3[14] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = *(*(type metadata accessor for V1Command.Request(0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = type metadata accessor for V1Command(0);
  v3[19] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24072CC34, v2, 0);
}

uint64_t sub_24072CC34()
{
  v61 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[12];
  v3 = sub_240759AE4();
  v0[23] = __swift_project_value_buffer(v3, qword_27E4BE2B8);
  sub_240730948(v2, v1, type metadata accessor for V1Command);
  v4 = sub_240759AC4();
  v5 = sub_24075A5D4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = v0[21];
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v60 = v11;
    *v10 = 136315138;
    sub_240730948(v7, v8, type metadata accessor for V1Command);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2405F5954(v7, type metadata accessor for V1Command);
    v15 = sub_2405BBA7C(v12, v14, &v60);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "Received incoming V1 command: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    sub_2405F5954(v7, type metadata accessor for V1Command);
  }

  v16 = v0[19];
  sub_240730948(v0[12], v0[20], type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = v0[20];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v0[16];
      v19 = v0[17];
      sub_2407309B0(v18, v19, type metadata accessor for V1Command.Response);
      sub_240730948(v19, v20, type metadata accessor for V1Command.Response);
      v21 = sub_240759AC4();
      v22 = sub_24075A5E4();
      v23 = os_log_type_enabled(v21, v22);
      v25 = v0[16];
      v24 = v0[17];
      if (v23)
      {
        v27 = v0[14];
        v26 = v0[15];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v60 = v29;
        *v28 = 136315138;
        sub_240730948(v25, v26, type metadata accessor for V1Command.Response);
        v30 = sub_24075A0E4();
        v32 = v31;
        sub_2405F5954(v25, type metadata accessor for V1Command.Response);
        v33 = sub_2405BBA7C(v30, v32, &v60);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_240579000, v21, v22, "Received an unexpected response instead of request: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x245CC76B0](v29, -1, -1);
        MEMORY[0x245CC76B0](v28, -1, -1);
      }

      else
      {

        sub_2405F5954(v25, type metadata accessor for V1Command.Response);
      }

      sub_2405F5954(v24, type metadata accessor for V1Command.Response);
      v49 = 2;
    }

    else
    {
      v39 = *v18;
      v40 = *(v18 + 8);
      v41 = *(v18 + 16);
      v42 = *(v18 + 24);
      sub_2406DC950(*v18, v40, v41, v42);
      v43 = sub_240759AC4();
      v44 = sub_24075A5E4();
      sub_2406DCA8C(v39, v40, v41, v42);
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        sub_2407308F4();
        swift_allocError();
        *v47 = v39;
        *(v47 + 8) = v40;
        *(v47 + 16) = v41;
        *(v47 + 24) = v42;
        sub_2406DC950(v39, v40, v41, v42);
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_240579000, v43, v44, "Received an unexpected failure as a request: %@", v45, 0xCu);
        sub_2405B8A50(v46, &qword_27E4B92A0, &qword_240762400);
        MEMORY[0x245CC76B0](v46, -1, -1);
        MEMORY[0x245CC76B0](v45, -1, -1);
        sub_2406DCA8C(v39, v40, v41, v42);
      }

      else
      {

        sub_2406DCA8C(v39, v40, v41, v42);
      }

      v49 = 3;
    }

    v50 = v0[19];
    v51 = v0[11];
    *(v51 + 8) = 0;
    *(v51 + 16) = 0;
    *v51 = v49;
    *(v51 + 24) = 2;
    swift_storeEnumTagMultiPayload();
    v53 = v0[21];
    v52 = v0[22];
    v54 = v0[20];
    v56 = v0[17];
    v55 = v0[18];
    v58 = v0[15];
    v57 = v0[16];

    v59 = v0[1];

    return v59();
  }

  else
  {
    sub_2407309B0(v18, v0[18], type metadata accessor for V1Command.Request);
    v34 = swift_task_alloc();
    v0[24] = v34;
    *v34 = v0;
    v34[1] = sub_24072D290;
    v35 = v0[18];
    v36 = v0[13];
    v37 = v0[11];

    return sub_24072D904(v37, v35);
  }
}

uint64_t sub_24072D290()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_24072D498;
  }

  else
  {
    v6 = sub_24072D3BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24072D3BC()
{
  v1 = v0[19];
  v2 = v0[11];
  sub_2405F5954(v0[18], type metadata accessor for V1Command.Request);
  swift_storeEnumTagMultiPayload();
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[15];
  v8 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24072D498()
{
  v51 = v0;
  v1 = *(v0 + 200);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  if (v3)
  {

    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    sub_2406DC950(v6, v7, v8, v9);
    v10 = sub_240759AC4();
    v11 = sub_24075A5E4();
    sub_2406DCA8C(v6, v7, v8, v9);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      sub_2407308F4();
      swift_allocError();
      *v14 = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 24) = v9;
      sub_2406DC950(v6, v7, v8, v9);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_240579000, v10, v11, "Failed to receive request with V1 command error: %@", v12, 0xCu);
      sub_2405B8A50(v13, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v13, -1, -1);
      MEMORY[0x245CC76B0](v12, -1, -1);
    }

    v17 = *(v0 + 144);
    v16 = *(v0 + 152);
    v18 = *(v0 + 88);

    sub_2405F5954(v17, type metadata accessor for V1Command.Request);
    *v18 = v6;
    *(v18 + 8) = v7;
    *(v18 + 16) = v8;
    *(v18 + 24) = v9;
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    v19 = v4;
    v20 = sub_240759AC4();
    v21 = sub_24075A5E4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 200);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v22;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_240579000, v20, v21, "Failed to receive request with error: %@", v23, 0xCu);
      sub_2405B8A50(v24, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v24, -1, -1);
      MEMORY[0x245CC76B0](v23, -1, -1);
    }

    v27 = *(v0 + 200);
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v30 = *(v0 + 88);

    swift_getErrorValue();
    v32 = *(v0 + 48);
    v31 = *(v0 + 56);
    v33 = *(v0 + 64);
    v34 = *(v31 - 8);
    v35 = *(v34 + 64) + 15;
    v36 = swift_task_alloc();
    (*(v34 + 16))(v36, v32, v31);
    Error.into()(v31, &v48);

    sub_2405F5954(v29, type metadata accessor for V1Command.Request);

    v37 = v49;
    v38 = v50;
    *v30 = v48;
    *(v30 + 16) = v37;
    *(v30 + 24) = v38;
    swift_storeEnumTagMultiPayload();
  }

  v40 = *(v0 + 168);
  v39 = *(v0 + 176);
  v41 = *(v0 + 160);
  v43 = *(v0 + 136);
  v42 = *(v0 + 144);
  v45 = *(v0 + 120);
  v44 = *(v0 + 128);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_24072D904(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  v4 = type metadata accessor for V1Command.Request(0);
  v3[60] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24072D9B4, v2, 0);
}

uint64_t sub_24072D9B4()
{
  v49 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 464);
  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_27E4BE2B8);
  sub_240730948(v2, v1, type metadata accessor for V1Command.Request);
  v4 = sub_240759AC4();
  v5 = sub_24075A5D4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 504);
  if (v6)
  {
    v8 = *(v0 + 496);
    v9 = *(v0 + 480);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136315138;
    sub_240730948(v7, v8, type metadata accessor for V1Command.Request);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2405F5954(v7, type metadata accessor for V1Command.Request);
    v15 = sub_2405BBA7C(v12, v14, &v48);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "Received incoming V1 request: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    sub_2405F5954(v7, type metadata accessor for V1Command.Request);
  }

  v16 = *(v0 + 480);
  sub_240730948(*(v0 + 464), *(v0 + 488), type metadata accessor for V1Command.Request);
  if (swift_getEnumCaseMultiPayload())
  {
    v17 = *(v0 + 472);
    v18 = *(v17 + 216);
    v47 = (*(v17 + 208) + **(v17 + 208));
    v19 = *(*(v17 + 208) + 4);
    v20 = swift_task_alloc();
    *(v0 + 528) = v20;
    *v20 = v0;
    v20[1] = sub_24072DFC4;
    v22 = *(v0 + 464);
    v21 = *(v0 + 472);
    v23 = *(v0 + 456);
  }

  else
  {
    v24 = *(v0 + 488);
    v25 = *(v0 + 472);
    v27 = *(v24 + 16);
    v26 = *(v24 + 32);
    *(v0 + 16) = *v24;
    *(v0 + 32) = v27;
    *(v0 + 48) = v26;
    v28 = *(v24 + 96);
    v30 = *(v24 + 48);
    v29 = *(v24 + 64);
    *(v0 + 96) = *(v24 + 80);
    *(v0 + 112) = v28;
    *(v0 + 64) = v30;
    *(v0 + 80) = v29;
    v32 = *(v24 + 128);
    v31 = *(v24 + 144);
    v33 = *(v24 + 160);
    v34 = *(v24 + 112);
    *(v0 + 176) = v33;
    *(v0 + 144) = v32;
    *(v0 + 160) = v31;
    *(v0 + 128) = v34;
    v35 = (v25 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeHandler);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v0 + 80);
    v39 = *(v0 + 112);
    v40 = *(v0 + 128);
    *(v0 + 264) = *(v0 + 96);
    *(v0 + 280) = v39;
    *(v0 + 248) = v38;
    v41 = *(v0 + 48);
    *(v0 + 232) = *(v0 + 64);
    *(v0 + 344) = v33;
    v42 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v42;
    *(v0 + 296) = v40;
    v43 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v43;
    *(v0 + 216) = v41;
    v47 = (v36 + *v36);
    v44 = v36[1];
    v45 = swift_task_alloc();
    *(v0 + 512) = v45;
    *v45 = v0;
    v45[1] = sub_24072DDE0;
    v21 = *(v0 + 472);
    v23 = v0 + 352;
    v22 = v0 + 184;
  }

  return v47(v23, v21, v22);
}

uint64_t sub_24072DDE0()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v8 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = *(v2 + 472);
    v5 = sub_24072E184;
  }

  else
  {
    v6 = *(v2 + 472);
    sub_2406BD370(v2 + 16);
    v5 = sub_24072DF08;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24072DF08()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 352);
  v3 = *(v0 + 384);
  *(v1 + 16) = *(v0 + 368);
  *(v1 + 32) = v3;
  *v1 = v2;
  v4 = *(v0 + 400);
  v5 = *(v0 + 416);
  v6 = *(v0 + 432);
  *(v1 + 96) = *(v0 + 448);
  *(v1 + 64) = v5;
  *(v1 + 80) = v6;
  *(v1 + 48) = v4;
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v0 + 496);
  v7 = *(v0 + 504);
  v9 = *(v0 + 488);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24072DFC4()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 472);
  if (v0)
  {
    v6 = sub_24072E20C;
  }

  else
  {
    v6 = sub_24072E0F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24072E0F0()
{
  sub_2405F5954(v0[61], type metadata accessor for V1Command.Request);
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24072E184()
{
  sub_2406BD370((v0 + 2));
  v1 = v0[65];
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[61];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24072E20C()
{
  sub_2405F5954(v0[61], type metadata accessor for V1Command.Request);
  v1 = v0[67];
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[61];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24072E2A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 128);
  v5 = *(a2 + 144);
  v6 = *(a2 + 96);
  *(v3 + 296) = *(a2 + 112);
  *(v3 + 312) = v4;
  *(v3 + 328) = v5;
  v7 = *(a2 + 32);
  *(v3 + 232) = *(a2 + 48);
  v8 = *(a2 + 80);
  *(v3 + 248) = *(a2 + 64);
  *(v3 + 264) = v8;
  *(v3 + 280) = v6;
  v9 = *(a2 + 16);
  *(v3 + 184) = *a2;
  *(v3 + 200) = v9;
  *(v3 + 2720) = v2;
  *(v3 + 2712) = a1;
  *(v3 + 344) = *(a2 + 160);
  *(v3 + 216) = v7;
  return MEMORY[0x2822009F8](sub_24072E30C, v2, 0);
}

uint64_t sub_24072E30C()
{
  v102 = v0;
  v1 = (v0 + 184);
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  *(v0 + 2728) = __swift_project_value_buffer(v2, qword_27E4BE2B8);
  sub_2406BD338(v0 + 184, v0 + 1528);
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  sub_2406BD370(v0 + 184);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v96 = v6;
    *v5 = 136315138;
    v7 = *(v0 + 328);
    *(v0 + 1152) = *(v0 + 312);
    *(v0 + 1168) = v7;
    *(v0 + 1184) = *(v0 + 344);
    v8 = *(v0 + 264);
    *(v0 + 1088) = *(v0 + 248);
    *(v0 + 1104) = v8;
    v9 = *(v0 + 296);
    *(v0 + 1120) = *(v0 + 280);
    *(v0 + 1136) = v9;
    v10 = *(v0 + 200);
    *(v0 + 1024) = *v1;
    *(v0 + 1040) = v10;
    v11 = *(v0 + 232);
    *(v0 + 1056) = *(v0 + 216);
    *(v0 + 1072) = v11;
    sub_2406BD338(v0 + 184, v0 + 16);
    v12 = sub_24075A0E4();
    v14 = sub_2405BBA7C(v12, v13, &v96);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_240579000, v3, v4, "Received handshake request: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v15 = *(v0 + 184);
  *(v0 + 1763) = v15;
  if (v15 == 1 && *(*(v0 + 2720) + 248))
  {
    v16 = sub_240759AC4();
    v17 = sub_24075A5D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_240579000, v16, v17, "Request is a keep alive and handshake has been received before, keeping alive", v18, 2u);
      MEMORY[0x245CC76B0](v18, -1, -1);
    }

    v19 = *(v0 + 2712);

    *v19 = 257;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 256;
    *(v0 + 2448) = 0u;
    *(v0 + 2464) = 0u;
    *(v0 + 2416) = 0u;
    *(v0 + 2432) = 0u;
    *(v0 + 2480) = 0;
    sub_2405B8A50(v0 + 2416, &qword_27E4B8B08, &qword_240768590);
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 80) = 0u;
    *(v19 + 96) = 0;
LABEL_36:
    v91 = *(v0 + 8);

    return v91();
  }

  v20 = (v0 + 192);
  v21 = *(v0 + 192);
  *(v0 + 2736) = v21;
  v22 = *(v0 + 200);
  *(v0 + 2744) = v22;
  v23 = *(v0 + 224);
  *(v0 + 2560) = *(v0 + 208);
  *(v0 + 2576) = v23;
  *(v0 + 2592) = *(v0 + 240);
  *(v0 + 2608) = *(v0 + 256);
  if (!v22)
  {
    sub_2406BD338(v0 + 184, v0 + 352);
    v47 = sub_240759AC4();
    v48 = sub_24075A5E4();
    sub_2406BD370(v0 + 184);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v96 = v50;
      *v49 = 136315138;
      v51 = *(v0 + 328);
      *(v0 + 648) = *(v0 + 312);
      *(v0 + 664) = v51;
      *(v0 + 680) = *(v0 + 344);
      v52 = *(v0 + 264);
      *(v0 + 584) = *(v0 + 248);
      *(v0 + 600) = v52;
      v53 = *(v0 + 296);
      *(v0 + 616) = *(v0 + 280);
      *(v0 + 632) = v53;
      v54 = *(v0 + 200);
      *(v0 + 520) = *v1;
      *(v0 + 536) = v54;
      v55 = *(v0 + 232);
      *(v0 + 552) = *(v0 + 216);
      *(v0 + 568) = v55;
      sub_2406BD338(v0 + 184, v0 + 688);
      v56 = sub_24075A0E4();
      v58 = sub_2405BBA7C(v56, v57, &v96);

      *(v49 + 4) = v58;
      _os_log_impl(&dword_240579000, v47, v48, "REJECTION: Incoming handshake request did not contain expected device info: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x245CC76B0](v50, -1, -1);
      MEMORY[0x245CC76B0](v49, -1, -1);
    }

    v59 = *(v0 + 2712);
    *v59 = 0;
    *(v59 + 8) = 0xD000000000000015;
    *(v59 + 16) = 0x800000024078A1E0;
    *(v59 + 24) = 256;
    *(v0 + 2520) = 0u;
    *(v0 + 2536) = 0u;
    *(v0 + 2488) = 0u;
    *(v0 + 2504) = 0u;
    *(v0 + 2552) = 0;
    sub_2405B8A50(v0 + 2488, &qword_27E4B8B08, &qword_240768590);
    *(v59 + 32) = 0u;
    *(v59 + 48) = 0u;
    *(v59 + 64) = 0u;
    *(v59 + 80) = 0u;
    *(v59 + 96) = 0;
    goto LABEL_36;
  }

  v94 = (v0 + 2560);
  v24 = *(v0 + 240);
  *(v0 + 2160) = *(v0 + 224);
  *(v0 + 2176) = v24;
  *(v0 + 2192) = *(v0 + 256);
  v25 = *(v0 + 208);
  *(v0 + 2128) = *v20;
  *(v0 + 2144) = v25;
  sub_2405B044C(v0 + 192, v0 + 2056, &qword_27E4B8B08, &qword_240768590);
  sub_240619124(v0 + 2128, v0 + 1912);
  v26 = sub_240759AC4();
  v27 = sub_24075A5C4();
  sub_2405B8A50(v0 + 192, &qword_27E4B8B08, &qword_240768590);
  if (os_log_type_enabled(v26, v27))
  {
    log = v26;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v101 = v29;
    *v28 = 136315138;
    *&v96 = v21;
    *(&v96 + 1) = v22;
    v30 = *(v0 + 2576);
    v97 = *v94;
    v98 = v30;
    v99 = *(v0 + 2592);
    LOBYTE(v100) = *(v0 + 2608);
    v31 = *(v0 + 240);
    *(v0 + 2304) = *(v0 + 224);
    *(v0 + 2320) = v31;
    *(v0 + 2336) = *(v0 + 256);
    v32 = *(v0 + 208);
    *(v0 + 2272) = *v20;
    *(v0 + 2288) = v32;
    sub_240619124(v0 + 2272, v0 + 2344);
    v33 = IdMSAccount.DeviceInfo.description.getter();
    v35 = v34;
    v36 = v99;
    *(v0 + 2232) = v98;
    *(v0 + 2248) = v36;
    *(v0 + 2264) = v100;
    v37 = v97;
    *(v0 + 2200) = v96;
    *(v0 + 2216) = v37;
    sub_240602EAC(v0 + 2200);
    v38 = sub_2405BBA7C(v33, v35, &v101);

    *(v28 + 4) = v38;
    v26 = log;
    _os_log_impl(&dword_240579000, log, v27, "Received new initial handshake request from device with info: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x245CC76B0](v29, -1, -1);
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  v39 = *(v0 + 2720);
  sub_2406BD338(v0 + 184, v0 + 856);

  v40 = sub_240759AC4();
  v41 = sub_24075A5D4();

  sub_2406BD370(v0 + 184);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 2720);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v96 = v44;
    *v43 = 136315394;
    if (*(v42 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper))
    {

      sub_2407598E4();
      v45 = *(v0 + 2672);
      if (v45)
      {
        v46 = *(v0 + 2680);
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    *(v0 + 2656) = v45;
    *(v0 + 2664) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3A8, &qword_2407827E0);
    v60 = sub_24075A0E4();
    v62 = sub_2405BBA7C(v60, v61, &v96);

    *(v43 + 4) = v62;
    *(v43 + 12) = 2080;
    v63 = *(v0 + 328);
    *(v0 + 1488) = *(v0 + 312);
    *(v0 + 1504) = v63;
    *(v0 + 1520) = *(v0 + 344);
    v64 = *(v0 + 264);
    *(v0 + 1424) = *(v0 + 248);
    *(v0 + 1440) = v64;
    v65 = *(v0 + 296);
    *(v0 + 1456) = *(v0 + 280);
    *(v0 + 1472) = v65;
    v66 = *(v0 + 200);
    *(v0 + 1360) = *v1;
    *(v0 + 1376) = v66;
    v67 = *(v0 + 232);
    *(v0 + 1392) = *(v0 + 216);
    *(v0 + 1408) = v67;
    sub_2406BD338(v0 + 184, v0 + 1192);
    v68 = sub_24075A0E4();
    v70 = sub_2405BBA7C(v68, v69, &v96);

    *(v43 + 14) = v70;
    _os_log_impl(&dword_240579000, v40, v41, "Calling signInRequestHandler %s, with request: %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v44, -1, -1);
    MEMORY[0x245CC76B0](v43, -1, -1);
  }

  else
  {
  }

  v71 = *(v0 + 2720);
  if (!*(v71 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper) || (v72 = *(v71 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper), , sub_2407598E4(), v73 = *(v0 + 2640), *(v0 + 2752) = v73, *(v0 + 2760) = *(v0 + 2648), , !v73))
  {
    v77 = *(v0 + 2728);
    if (*(v0 + 186) <= 1u)
    {
      v78 = 1;
    }

    else
    {
      v78 = *(v0 + 186);
    }

    v79 = sub_240759AC4();
    v80 = sub_24075A5D4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 16777472;
      v81[4] = v78;
      _os_log_impl(&dword_240579000, v79, v80, "Accepting handshake with compatible version: %hhu", v81, 5u);
      MEMORY[0x245CC76B0](v81, -1, -1);
    }

    v82 = *(v0 + 1763);
    v83 = *(v0 + 2720);
    v84 = *(v0 + 2712);
    *loga = *(v0 + 2736);

    v85 = *v94;
    v86 = *(v0 + 2592);
    v98 = *(v0 + 2576);
    v99 = v86;
    v100 = *(v0 + 2608);
    LOBYTE(v101) = 0;
    v96 = *loga;
    v97 = v85;
    sub_240729278(&v96);
    v87 = v99;
    *(v0 + 1800) = v98;
    *(v0 + 1816) = v87;
    *(v0 + 1832) = v100;
    v88 = v97;
    *(v0 + 1768) = v96;
    *(v0 + 1784) = v88;
    sub_2405B8A50(v0 + 1768, &qword_27E4BE3A0, &unk_2407827D0);
    sub_240727514();
    static IdMSAccount.DeviceInfo.current.getter(&v96);
    *v84 = v82;
    *(v84 + 1) = 1;
    *(v84 + 8) = 0;
    *(v84 + 16) = 0;
    *(v84 + 24) = v78;
    *(v84 + 25) = 0;
    *(v0 + 1904) = 0;
    *(v0 + 1872) = 0u;
    *(v0 + 1888) = 0u;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    sub_2405B8A50(v0 + 1840, &qword_27E4B8B08, &qword_240768590);
    v89 = v99;
    *(v84 + 64) = v98;
    *(v84 + 80) = v89;
    *(v84 + 96) = v100;
    v90 = v97;
    *(v84 + 32) = v96;
    *(v84 + 48) = v90;
    goto LABEL_36;
  }

  *(v0 + 2688) = *(v0 + 344);
  v95 = (v73 + *v73);
  v74 = v73[1];
  v75 = swift_task_alloc();
  *(v0 + 2768) = v75;
  *v75 = v0;
  v75[1] = sub_24072EDC0;

  return v95();
}

uint64_t sub_24072EDC0()
{
  v2 = *v1;
  v3 = *(*v1 + 2768);
  v8 = *v1;
  *(*v1 + 2776) = v0;

  v4 = v2[345];
  if (v0)
  {
    v5 = v2[340];
    sub_24058CA60(v2[344]);
    sub_2405B8A50((v2 + 24), &qword_27E4B8B08, &qword_240768590);
    v6 = sub_24072F0E8;
  }

  else
  {
    v5 = v2[340];
    sub_24058CA60(v2[344]);
    v6 = sub_24072EF0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24072EF0C()
{
  v23 = v0;
  v1 = *(v0 + 2728);
  if (*(v0 + 186) <= 1u)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + 186);
  }

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 16777472;
    v5[4] = v2;
    _os_log_impl(&dword_240579000, v3, v4, "Accepting handshake with compatible version: %hhu", v5, 5u);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v6 = *(v0 + 1763);
  v7 = *(v0 + 2720);
  v8 = *(v0 + 2712);
  v17 = *(v0 + 2736);

  v9 = *(v0 + 2560);
  v10 = *(v0 + 2592);
  v20 = *(v0 + 2576);
  v21 = v10;
  v22 = *(v0 + 2608);
  v18 = v17;
  v19 = v9;
  sub_240729278(&v18);
  v11 = v21;
  *(v0 + 1800) = v20;
  *(v0 + 1816) = v11;
  *(v0 + 1832) = v22;
  v12 = v19;
  *(v0 + 1768) = v18;
  *(v0 + 1784) = v12;
  sub_2405B8A50(v0 + 1768, &qword_27E4BE3A0, &unk_2407827D0);
  sub_240727514();
  static IdMSAccount.DeviceInfo.current.getter(&v18);
  *v8 = v6;
  *(v8 + 1) = 1;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = v2;
  *(v8 + 25) = 0;
  *(v0 + 1904) = 0;
  *(v0 + 1888) = 0u;
  *(v0 + 1872) = 0u;
  *(v0 + 1856) = 0u;
  *(v0 + 1840) = 0u;
  sub_2405B8A50(v0 + 1840, &qword_27E4B8B08, &qword_240768590);
  v13 = v21;
  *(v8 + 64) = v20;
  *(v8 + 80) = v13;
  *(v8 + 96) = v22;
  v14 = v19;
  *(v8 + 32) = v18;
  *(v8 + 48) = v14;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24072F0E8()
{
  v29 = v0;
  v1 = *(v0 + 2776);
  v2 = *(v0 + 2728);
  v3 = *(v0 + 2720);
  *(v0 + 1762) = 1;
  *&v27[0] = v1;
  HIBYTE(v28) = 1;
  v4 = v1;
  sub_240729278(v27);
  v5 = v27[0];
  *(v0 + 1712) = v27[1];
  v6 = v27[3];
  *(v0 + 1728) = v27[2];
  *(v0 + 1744) = v6;
  *(v0 + 1760) = v28;
  *(v0 + 1696) = v5;
  sub_2405B8A50(v0 + 1696, &qword_27E4BE3A0, &unk_2407827D0);
  v7 = v1;
  v8 = sub_240759AC4();
  v9 = sub_24075A5E4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 2776);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v27[0] = v12;
    *v11 = 136315138;
    *(v0 + 2704) = v10;
    v13 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v14 = sub_24075A0E4();
    v16 = sub_2405BBA7C(v14, v15, v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_240579000, v8, v9, "REJECTION: Incoming handshake request failed due to error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CC76B0](v12, -1, -1);
    MEMORY[0x245CC76B0](v11, -1, -1);
  }

  v17 = *(v0 + 2776);
  v18 = *(v0 + 2712);
  swift_getErrorValue();
  v19 = *(v0 + 2616);
  v20 = *(v0 + 2624);
  v21 = *(v0 + 2632);
  v22 = sub_24075AE04();
  v24 = v23;

  *v18 = 0;
  *(v18 + 8) = v22;
  *(v18 + 16) = v24;
  *(v18 + 24) = 256;
  *(v0 + 2032) = 0u;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  *(v0 + 1984) = 0u;
  *(v0 + 2048) = 0;
  sub_2405B8A50(v0 + 1984, &qword_27E4B8B08, &qword_240768590);
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24072F360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return sub_240723238(a1, a2, a3, v9);
}

uint64_t sub_24072F430(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return sub_240722F0C(a1, a2, a3, v9);
}

uint64_t sub_24072F500(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_24072F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_240604C2C(a5, a6);
  }
}

uint64_t sub_24072F5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24075A964();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24072F6E8, 0, 0);
}

uint64_t sub_24072F6E8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24075A974();
  v7 = sub_24072FC30(&qword_27E4BE3B8, MEMORY[0x277D85928]);
  sub_24075ADA4();
  sub_24072FC30(&qword_27E4BE3C0, MEMORY[0x277D858F8]);
  sub_24075A984();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24072F878;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24072F878()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24072FA34, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24072FA34()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_24072FAC0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return sub_240724264(a1, a2, v2);
}

uint64_t sub_24072FB74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2405DA4B0;

  return sub_240724A84();
}

uint64_t sub_24072FC30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24072FC78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  swift_beginAccess();
  sub_2405B044C(v0 + v2, v33, &qword_27E4BE2D8, &unk_240782408);
  if (v34)
  {
    sub_2405B044C(v33, &v28, &qword_27E4BE338, &qword_2407824A8);
    sub_2405B8A50(v33, &qword_27E4BE2D8, &unk_240782408);
    v3 = *(&v29 + 1);
    v4 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    (*(v4 + 40))(v3, v4);
    v5 = &v28;
    v6 = &qword_27E4BE338;
    v7 = &qword_2407824A8;
  }

  else
  {
    v6 = &qword_27E4BE2D8;
    v7 = &unk_240782408;
    v5 = v33;
  }

  sub_2405B8A50(v5, v6, v7);
  *&v30 = 0;
  v28 = 0u;
  v29 = 0u;
  swift_beginAccess();
  sub_240730A18(&v28, v0 + v2, &qword_27E4BE2D8, &unk_240782408);
  swift_endAccess();
  v8 = *(v0 + 288);
  v22[2] = *(v0 + 272);
  v22[3] = v8;
  v23 = *(v0 + 304);
  v9 = *(v0 + 256);
  v22[0] = *(v0 + 240);
  v22[1] = v9;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0;
  sub_2405B8A50(v22, &qword_27E4B8B08, &qword_240768590);
  sub_2405B8998();
  v10 = swift_allocError();
  *v11 = 1;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0;
  *&v21[8] = v25;
  *&v21[24] = v26;
  *(v11 + 48) = 6;
  v24 = 1;
  *v21 = v10;
  *&v21[40] = v27[0];
  *&v21[49] = *(v27 + 9);
  v21[65] = 1;
  sub_240729278(v21);
  v30 = *&v21[32];
  v31 = *&v21[48];
  v32 = *&v21[64];
  v28 = *v21;
  v29 = *&v21[16];
  sub_2405B8A50(&v28, &qword_27E4BE3A0, &unk_2407827D0);
  v12 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask;
  if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask))
  {
    v13 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    sub_24075A4A4();

    v14 = *(v0 + v12);
  }

  *(v0 + v12) = 0;

  swift_beginAccess();
  v15 = *(v0 + 224);
  if (v15)
  {
    v16 = *(v0 + 232);

    v15(v17);
    sub_24058CA60(v15);
    v18 = *(v1 + 224);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v1 + 232);
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  return sub_24058CA60(v18);
}

unint64_t sub_24072FF80()
{
  result = qword_27E4BE340;
  if (!qword_27E4BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE340);
  }

  return result;
}

uint64_t sub_24072FFD4(uint64_t a1)
{
  result = sub_24072FC30(&qword_27E4BE348, type metadata accessor for CommandRouter);
  *(a1 + 16) = result;
  return result;
}

void sub_240730034()
{
  sub_24073068C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CommandRouter.register<A>(_:ownedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 432);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2405DA4B0;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CommandRouter.performHandshake(forKeepingAlive:)(uint64_t a1)
{
  v4 = *(*v1 + 440);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405CE450;

  return v8(a1);
}

uint64_t dispatch thunk of CommandRouter.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 512);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2405DA4B0;

  return v14(a1, a2, a3, a4);
}

void sub_24073068C()
{
  if (!qword_27E4BE360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BE2F0, &qword_240782418);
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4BE360);
    }
  }
}

uint64_t sub_240730728()
{
  sub_240730780();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_240730780()
{
  if (!qword_27E4BE378)
  {
    type metadata accessor for V1Command(255);
    sub_24072FC30(&qword_27E4BE380, type metadata accessor for V1Command);
    v0 = type metadata accessor for Message();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4BE378);
    }
  }
}

void sub_240730814()
{
  sub_240730894();
  if (v0 <= 0x3F)
  {
    type metadata accessor for V1Command(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_240730894()
{
  if (!qword_27E4BE398)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E4BE398);
    }
  }
}

unint64_t sub_2407308F4()
{
  result = qword_27E4BE3B0;
  if (!qword_27E4BE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE3B0);
  }

  return result;
}

uint64_t sub_240730948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2407309B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240730A18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_240730A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2407276D8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_240730B50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_240730B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_240727350(a1, v4, v1 + 24);
}

unint64_t sub_240730C24()
{
  result = qword_27E4B63F0;
  if (!qword_27E4B63F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B63F0);
  }

  return result;
}

uint64_t sub_240730C70(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *SignInPreflightHelper.signInRequestHandler.getter()
{
  v1 = *v0;
  sub_2407598E4();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return &unk_240782898;
}

uint64_t sub_240730D34(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405CE450;

  return v8(v4);
}

uint64_t sub_240730E28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *a2;
    v7 = swift_allocObject();
    v8 = &unk_240782930;
    *(v7 + 16) = &unk_240782930;
    *(v7 + 24) = v5;
  }

  else
  {
    v8 = 0;
    v9 = *a2;
  }

  sub_24057B5BC(v3);

  sub_24057B5BC(v8);
  sub_2407598F4();
  sub_24058CA60(v8);
}

uint64_t sub_240730F20(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24072334C;

  return v6();
}

uint64_t sub_240731018(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240730F20(a1, v5);
}

uint64_t SignInPreflightHelper.signInRequestHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
  }

  sub_24057B5BC(a1);
  sub_2407598F4();
  return sub_24058CA60(a1);
}

uint64_t sub_24073115C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240730D34(a1, a2, v7);
}

void (*SignInPreflightHelper.signInRequestHandler.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = sub_2407598D4();
  v4[7] = v6;
  v7 = *v6;
  v8 = v6[1];
  if (*v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = &unk_2407828C0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v4[4] = v10;
  v4[5] = v9;
  sub_24057B5BC(v7);
  return sub_2407312E8;
}

void sub_2407312E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = v2[5];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = &unk_2407828B0;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v11 = v2[6];
    v10 = v2[7];
    v12 = *v10;
    v13 = v10[1];
    *v10 = v6;
    v10[1] = v5;
    sub_24057B5BC(v3);
    sub_24058CA60(v12);
    v14 = v2[5];
    sub_24058CA60(v2[4]);
    v11(v2, 0);
  }

  else
  {
    if (v3)
    {
      v7 = v2[5];
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v7;
      v9 = &unk_2407828B8;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v16 = v2[6];
    v15 = v2[7];
    v18 = *v15;
    v17 = v15[1];
    *v15 = v9;
    v15[1] = v8;
    sub_24058CA60(v18);
    v16(v2, 0);
  }

  free(v2);
}

uint64_t sub_24073141C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405CE450;

  return sub_240730D34(a1, a2, v7);
}

uint64_t SignInPreflightHelper.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3E0, &qword_2407828C8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2407598C4();
  *a1 = result;
  return result;
}

uint64_t SignInPreflightHelper.onSignInRequest(doExtra:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
  }

  sub_24057B5BC(a1);
  sub_2407598F4();
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void (*sub_2407316C4(uint64_t *a1, uint64_t *a2))(void *, void)
{
  v3 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) + 36));
  sub_2407598E4();
  if (v6[0] == -1)
  {
    v6[0] = 0;
    sub_2407598F4();
  }

  result = sub_2407598D4();
  if (*v5 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*v5;
    result(v6, 0);
    sub_2407598E4();
    return v6[0];
  }

  return result;
}

uint64_t AutomaticSetupModelExchange.init(queue:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_240782940;
  a2[1] = 0;
  a2[2] = &unk_240782948;
  a2[3] = 0;
  a2[4] = &unk_240782950;
  a2[5] = 0;
  a2[6] = &unk_240782958;
  a2[7] = 0;
  a2[8] = &unk_240782960;
  a2[9] = 0;
  a2[10] = &unk_240782968;
  a2[11] = 0;
  a2[12] = &unk_240782970;
  a2[13] = 0;
  a2[14] = &unk_240782978;
  a2[15] = 0;
  a2[16] = &unk_240782980;
  a2[17] = 0;
  a2[18] = &unk_240782988;
  a2[19] = 0;
  a2[21] = &unk_240782990;
  a2[22] = 0;
  a2[23] = &unk_240782998;
  a2[24] = 0;
  a2[25] = &unk_2407829A0;
  a2[26] = 0;
  a2[27] = &unk_2407829A8;
  a2[28] = 0;
  a2[29] = &unk_2407829B0;
  a2[30] = 0;
  a2[31] = &unk_2407829B8;
  a2[32] = 0;
  a2[33] = &unk_2407829C0;
  a2[34] = 0;
  a2[35] = &unk_2407829C8;
  a2[36] = 0;
  a2[37] = &unk_2407829D0;
  a2[38] = 0;
  a2[39] = &unk_2407829D8;
  a2[40] = 0;
  a2[41] = &unk_2407829E0;
  a2[42] = 0;
  a2[43] = &unk_2407829E8;
  a2[44] = 0;
  a2[45] = &unk_2407829F0;
  a2[46] = 0;
  a2[47] = &unk_2407829F8;
  a2[48] = 0;
  a2[49] = &unk_240782A00;
  a2[50] = 0;
  a2[51] = &unk_240782A08;
  a2[52] = 0;
  a2[53] = &unk_240782A10;
  a2[54] = 0;
  a2[55] = &unk_240782A18;
  a2[56] = 0;
  a2[57] = &unk_240782A20;
  a2[58] = 0;
  a2[59] = &unk_240782A28;
  a2[60] = 0;
  a2[61] = &unk_240782A30;
  a2[62] = 0;
  a2[63] = &unk_240782A38;
  a2[64] = 0;
  a2[65] = &unk_240782A40;
  a2[66] = 0;
  a2[67] = &unk_240782A48;
  a2[68] = 0;
  a2[69] = &unk_240782A50;
  a2[70] = 0;
  a2[71] = &unk_240782A58;
  a2[72] = 0;
  a2[73] = &unk_240782A60;
  a2[74] = 0;
  a2[75] = &unk_240782A68;
  a2[76] = 0;
  a2[77] = &unk_240782A70;
  a2[78] = 0;
  a2[79] = &unk_240782A78;
  a2[80] = 0;
  a2[81] = &unk_240782A80;
  a2[82] = 0;
  a2[83] = &unk_240782A88;
  a2[84] = 0;
  a2[85] = &unk_240782A90;
  a2[86] = 0;
  a2[87] = &unk_240782A98;
  a2[88] = 0;
  a2[89] = &unk_240782AA0;
  a2[90] = 0;
  a2[91] = &unk_240782AA8;
  a2[92] = 0;
  a2[93] = &unk_240782AB0;
  a2[94] = 0;
  a2[95] = &unk_240782AB8;
  a2[96] = 0;
  a2[97] = &unk_240782AC0;
  a2[98] = 0;
  a2[99] = &unk_240782AC8;
  a2[100] = 0;
  a2[101] = &unk_240782AD0;
  a2[102] = 0;
  a2[103] = &unk_240782AD8;
  a2[104] = 0;
  a2[105] = &unk_240782AE0;
  a2[106] = 0;
  a2[107] = &unk_240782AE8;
  a2[108] = 0;
  a2[109] = &unk_240782AF0;
  a2[110] = 0;
  a2[111] = &unk_240782AF8;
  a2[112] = 0;
  a2[20] = result;
  return result;
}

uint64_t sub_240731C20(uint64_t a1, uint64_t a2)
{
  *(v3 + 12560) = v2;
  *(v3 + 12552) = a2;
  *(v3 + 12544) = a1;
  v4 = *(*(type metadata accessor for SignInModel() - 8) + 64) + 15;
  *(v3 + 12568) = swift_task_alloc();
  v5 = *(*(type metadata accessor for AuthenticationModel(0) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = v2[1];
  *(v3 + 12584) = *v2;
  *(v3 + 12600) = v7;
  v8 = v2[3];
  *(v3 + 12616) = v2[2];
  *(v3 + 12632) = v8;
  v9 = v2[5];
  *(v3 + 12648) = v2[4];
  *(v3 + 12664) = v9;
  v10 = v2[7];
  *(v3 + 12680) = v2[6];
  *(v3 + 12696) = v10;
  v11 = v2[9];
  *(v3 + 12712) = v2[8];
  *(v3 + 12576) = v6;
  *(v3 + 12728) = v11;

  return MEMORY[0x2822009F8](sub_240731D48, 0, 0);
}

uint64_t sub_240731D48()
{
  v1 = *(v0 + 12552);
  v2 = *(v0 + 12544);
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CA0, &qword_240768DE0);
  sub_240745520(&v1[*(v4 + 28)], v2, type metadata accessor for SetupModel);
  v5 = *(v2 + 40);
  *(v0 + 12744) = v5;
  v6 = *(v2 + 48);
  *(v0 + 12752) = v6;
  v7 = *(v2 + 56);
  *(v0 + 12760) = v7;
  v8 = *(v2 + 64);
  *(v0 + 12768) = v8;
  v9 = *(v2 + 72);
  *(v0 + 12776) = v9;
  v10 = *(v2 + 80);
  *(v0 + 12784) = v10;
  v11 = *(v2 + 88);
  *(v0 + 9361) = v11;
  if (v11 > 252)
  {
    if (v11 == 253)
    {
      v62 = *(v0 + 12736);
      v63 = *(v0 + 12728);
      v64 = *(v0 + 12720);
      v65 = *(v0 + 12712);
      v66 = *(v0 + 12704);
      v67 = *(v0 + 12696);
      v68 = *(v0 + 12688);
      v69 = *(v0 + 12680);
      v70 = *(v0 + 12672);
      v71 = *(v0 + 12664);
      v72 = *(v0 + 12656);
      v73 = *(v0 + 12648);
      v74 = *(v0 + 12640);
      v75 = *(v0 + 12632);
      v76 = *(v0 + 12624);
      v77 = *(v0 + 12616);
      v78 = *(v0 + 12608);
      v79 = *(v0 + 12600);
      v80 = *(v0 + 12592);
      v81 = *(v0 + 12584);
      v82 = *(v0 + 12560);
      v33 = *(v0 + 12544);
      if (v3)
      {
        *(v0 + 5440) = v81;
        *(v0 + 5448) = v80;
        *(v0 + 5456) = v79;
        *(v0 + 5464) = v78;
        *(v0 + 5472) = v77;
        *(v0 + 5480) = v76;
        *(v0 + 5488) = v75;
        *(v0 + 5496) = v74;
        *(v0 + 5504) = v73;
        *(v0 + 5512) = v72;
        *(v0 + 5520) = v71;
        *(v0 + 5528) = v70;
        *(v0 + 5536) = v69;
        *(v0 + 5544) = v68;
        *(v0 + 5552) = v67;
        *(v0 + 5560) = v66;
        *(v0 + 5568) = v65;
        *(v0 + 5576) = v64;
        *(v0 + 5584) = v63;
        *(v0 + 5592) = v62;
        memcpy((v0 + 5600), (v82 + 160), 0x2E8uLL);
        v34 = *(type metadata accessor for SetupModel() + 36);
        *(v0 + 9364) = v34;
        v147 = (v75 + *v75);
        v83 = v75[1];
        v84 = swift_task_alloc();
        *(v0 + 12816) = v84;
        *v84 = v0;
        v84[1] = sub_240733020;
        v85 = *(v0 + 12640);
        v38 = *(v0 + 12576);
        v39 = v0 + 5440;
        goto LABEL_15;
      }

      *(v0 + 4536) = v81;
      *(v0 + 4544) = v80;
      *(v0 + 4552) = v79;
      *(v0 + 4560) = v78;
      *(v0 + 4568) = v77;
      *(v0 + 4576) = v76;
      *(v0 + 4584) = v75;
      *(v0 + 4592) = v74;
      *(v0 + 4600) = v73;
      *(v0 + 4608) = v72;
      *(v0 + 4616) = v71;
      *(v0 + 4624) = v70;
      *(v0 + 4632) = v69;
      *(v0 + 4640) = v68;
      *(v0 + 4648) = v67;
      *(v0 + 4656) = v66;
      *(v0 + 4664) = v65;
      *(v0 + 4672) = v64;
      *(v0 + 4680) = v63;
      *(v0 + 4688) = v62;
      memcpy((v0 + 4696), (v82 + 160), 0x2E8uLL);
      v124 = *(type metadata accessor for SetupModel() + 36);
      v152 = (v77 + *v77);
      v125 = v77[1];
      v126 = swift_task_alloc();
      *(v0 + 12824) = v126;
      *v126 = v0;
      v126[1] = sub_2407331B0;
      v127 = *(v0 + 12624);
      v107 = v0 + 4536;
      v108 = v33 + v124;
      goto LABEL_36;
    }

    if (v11 == 254)
    {
      v114 = *(v0 + 12560);
      v115 = *(v0 + 12544);
      if (v3)
      {
        v153 = *(v0 + 12600);
        *(v0 + 7248) = *(v0 + 12584);
        v116 = *(v0 + 12632);
        *(v0 + 7280) = *(v0 + 12616);
        *(v0 + 7296) = v116;
        v117 = *(v0 + 12664);
        *(v0 + 7312) = *(v0 + 12648);
        *(v0 + 7328) = v117;
        v118 = *(v0 + 12696);
        *(v0 + 7344) = *(v0 + 12680);
        *(v0 + 7360) = v118;
        v119 = *(v0 + 12728);
        *(v0 + 7376) = *(v0 + 12712);
        *(v0 + 7264) = v153;
        *(v0 + 7392) = v119;
        memcpy((v0 + 7408), (v114 + 160), 0x2E8uLL);
        memcpy((v0 + 11240), (v115 + 96), 0x131uLL);
        memcpy((v0 + 11864), (v115 + 96), 0x131uLL);
        sub_240684CD4(v0 + 11240, v0 + 12176);
        v120 = v153;
        v147 = (v153 + *v153);
        v121 = *(v120 + 4);
        v122 = swift_task_alloc();
        *(v0 + 12800) = v122;
        *v122 = v0;
        v122[1] = sub_240732CE8;
        v123 = *(v0 + 12608);
        v38 = v0 + 11552;
        v39 = v0 + 7248;
        v86 = v0 + 11864;
        goto LABEL_26;
      }

      v141 = *(v0 + 12736);
      v142 = *(v0 + 12600);
      v155 = *(v0 + 12584);
      *(v0 + 6344) = v155;
      *(v0 + 6360) = v142;
      *(v0 + 6368) = *(v0 + 12608);
      *(v0 + 6384) = *(v0 + 12624);
      *(v0 + 6400) = *(v0 + 12640);
      *(v0 + 6416) = *(v0 + 12656);
      *(v0 + 6432) = *(v0 + 12672);
      *(v0 + 6448) = *(v0 + 12688);
      *(v0 + 6464) = *(v0 + 12704);
      *(v0 + 6480) = *(v0 + 12720);
      *(v0 + 6496) = v141;
      memcpy((v0 + 6504), (v114 + 160), 0x2E8uLL);
      memcpy((v0 + 9368), (v115 + 96), 0x131uLL);
      memcpy((v0 + 9680), (v115 + 96), 0x131uLL);
      sub_240684CD4(v0 + 9368, v0 + 9992);
      v143 = v155;
      v152 = (v155 + *v155);
      v144 = *(v143 + 4);
      v145 = swift_task_alloc();
      *(v0 + 12808) = v145;
      *v145 = v0;
      v145[1] = sub_240732EC8;
      v146 = *(v0 + 12592);
      v108 = v0 + 9680;
      v107 = v0 + 6344;
      goto LABEL_36;
    }

    if (v3)
    {
      goto LABEL_21;
    }

    v40 = *(v0 + 12736);
    v41 = *(v0 + 12696);
    v42 = *(v0 + 12672);
    v43 = *(v0 + 12560);
    *(v0 + 8152) = *(v0 + 12584);
    *(v0 + 8160) = *(v0 + 12592);
    *(v0 + 8176) = *(v0 + 12608);
    *(v0 + 0x2000) = *(v0 + 12624);
    *(v0 + 8208) = *(v0 + 12640);
    *(v0 + 8224) = *(v0 + 12656);
    *(v0 + 8240) = v42;
    v148 = *(v0 + 12680);
    *(v0 + 8248) = v148;
    *(v0 + 8264) = v41;
    *(v0 + 8272) = *(v0 + 12704);
    *(v0 + 8288) = *(v0 + 12720);
    *(v0 + 8304) = v40;
    memcpy((v0 + 8312), (v43 + 160), 0x2E8uLL);
    v44 = v148;
    v149 = (v148 + *v148);
    v45 = *(v44 + 4);
    v46 = swift_task_alloc();
    *(v0 + 12792) = v46;
    *v46 = v0;
    v46[1] = sub_240732BBC;
    v47 = *(v0 + 12688);
    v48 = v0 + 8152;
  }

  else
  {
    switch(v11)
    {
      case 250:
        if (v3)
        {
LABEL_21:
          v110 = *(v0 + 12576);
          v111 = *(v0 + 12568);

          v112 = *(v0 + 8);

          return v112();
        }

        v49 = *(v0 + 12600);
        *(v0 + 16) = *(v0 + 12584);
        v50 = *(v0 + 12616);
        v51 = *(v0 + 12632);
        *(v0 + 32) = v49;
        *(v0 + 48) = v50;
        v52 = *(v0 + 12648);
        v53 = *(v0 + 12664);
        *(v0 + 64) = v51;
        *(v0 + 80) = v52;
        v54 = *(v0 + 12680);
        v55 = *(v0 + 12696);
        *(v0 + 96) = v53;
        *(v0 + 112) = v54;
        v56 = *(v0 + 12712);
        v150 = *(v0 + 12728);
        *(v0 + 128) = v55;
        *(v0 + 144) = v56;
        v57 = *(v0 + 12560);
        *(v0 + 160) = v150;
        memcpy((v0 + 176), (v57 + 160), 0x2E8uLL);
        v58 = v150;
        v149 = (v150 + *v150);
        v59 = *(v58 + 4);
        v60 = swift_task_alloc();
        *(v0 + 12864) = v60;
        *v60 = v0;
        v60[1] = sub_2407338F0;
        v61 = *(v0 + 12736);
        v48 = v0 + 16;
        break;
      case 251:
        if (v3)
        {
          LOBYTE(v11) = -5;
LABEL_20:
          v109 = *(v0 + 12544);
          sub_240720A38(v5, v6, v7, v8, v9, v10, v11);
          *(v109 + 72) = 0u;
          *(v109 + 56) = 0u;
          *(v109 + 40) = 0u;
          *(v109 + 88) = -6;
          goto LABEL_21;
        }

        v132 = *(v0 + 12600);
        *(v0 + 1824) = *(v0 + 12584);
        *(v0 + 1840) = v132;
        v133 = *(v0 + 12632);
        *(v0 + 1856) = *(v0 + 12616);
        *(v0 + 1872) = v133;
        v134 = *(v0 + 12664);
        *(v0 + 1888) = *(v0 + 12648);
        *(v0 + 1904) = v134;
        v154 = *(v0 + 12696);
        *(v0 + 1920) = *(v0 + 12680);
        v135 = *(v0 + 12728);
        *(v0 + 1952) = *(v0 + 12712);
        v136 = *(v0 + 12560);
        *(v0 + 1936) = v154;
        *(v0 + 1968) = v135;
        memcpy((v0 + 1984), (v136 + 160), 0x2E8uLL);
        v137 = v154;
        v149 = (v154 + *v154);
        v138 = *(v137 + 4);
        v139 = swift_task_alloc();
        *(v0 + 12848) = v139;
        *v139 = v0;
        v139[1] = sub_240733598;
        v140 = *(v0 + 12704);
        v48 = v0 + 1824;
        break;
      case 252:
        v12 = *(v0 + 12736);
        v13 = *(v0 + 12728);
        v14 = *(v0 + 12720);
        v15 = *(v0 + 12712);
        v16 = *(v0 + 12704);
        v17 = *(v0 + 12696);
        v18 = *(v0 + 12688);
        v19 = *(v0 + 12680);
        v20 = *(v0 + 12672);
        v21 = *(v0 + 12664);
        v22 = *(v0 + 12656);
        v23 = *(v0 + 12648);
        v24 = *(v0 + 12640);
        v25 = *(v0 + 12632);
        v26 = *(v0 + 12624);
        v27 = *(v0 + 12616);
        v28 = *(v0 + 12608);
        v29 = *(v0 + 12600);
        v30 = *(v0 + 12592);
        v31 = *(v0 + 12584);
        v32 = *(v0 + 12560);
        v33 = *(v0 + 12544);
        if (v3)
        {
          *(v0 + 3632) = v31;
          *(v0 + 3640) = v30;
          *(v0 + 3648) = v29;
          *(v0 + 3656) = v28;
          *(v0 + 3664) = v27;
          *(v0 + 3672) = v26;
          *(v0 + 3680) = v25;
          *(v0 + 3688) = v24;
          *(v0 + 3696) = v23;
          *(v0 + 3704) = v22;
          *(v0 + 3712) = v21;
          *(v0 + 3720) = v20;
          *(v0 + 3728) = v19;
          *(v0 + 3736) = v18;
          *(v0 + 3744) = v17;
          *(v0 + 3752) = v16;
          *(v0 + 3760) = v15;
          *(v0 + 3768) = v14;
          *(v0 + 3776) = v13;
          *(v0 + 3784) = v12;
          memcpy((v0 + 3792), (v32 + 160), 0x2E8uLL);
          v34 = *(type metadata accessor for SetupModel() + 40);
          *(v0 + 9676) = v34;
          v147 = (v21 + *v21);
          v35 = v21[1];
          v36 = swift_task_alloc();
          *(v0 + 12832) = v36;
          *v36 = v0;
          v36[1] = sub_2407332DC;
          v37 = *(v0 + 12672);
          v38 = *(v0 + 12568);
          v39 = v0 + 3632;
LABEL_15:
          v86 = v33 + v34;
LABEL_26:

          return v147(v38, v39, v86);
        }

        *(v0 + 2728) = v31;
        *(v0 + 2736) = v30;
        *(v0 + 2744) = v29;
        *(v0 + 2752) = v28;
        *(v0 + 2760) = v27;
        *(v0 + 2768) = v26;
        *(v0 + 2776) = v25;
        *(v0 + 2784) = v24;
        *(v0 + 2792) = v23;
        *(v0 + 2800) = v22;
        *(v0 + 2808) = v21;
        *(v0 + 2816) = v20;
        *(v0 + 2824) = v19;
        *(v0 + 2832) = v18;
        *(v0 + 2840) = v17;
        *(v0 + 2848) = v16;
        *(v0 + 2856) = v15;
        *(v0 + 2864) = v14;
        *(v0 + 2872) = v13;
        *(v0 + 2880) = v12;
        memcpy((v0 + 2888), (v32 + 160), 0x2E8uLL);
        v128 = *(type metadata accessor for SetupModel() + 40);
        v152 = (v23 + *v23);
        v129 = v23[1];
        v130 = swift_task_alloc();
        *(v0 + 12840) = v130;
        *v130 = v0;
        v130[1] = sub_24073346C;
        v131 = *(v0 + 12656);
        v107 = v0 + 2728;
        v108 = v33 + v128;
        goto LABEL_36;
      default:
        if ((v3 & 1) == 0)
        {
          v87 = *(v0 + 12736);
          v88 = *(v0 + 12728);
          v89 = *(v0 + 12704);
          v90 = *(v0 + 12560);
          *(v0 + 920) = *(v0 + 12584);
          v91 = *(v0 + 12608);
          *(v0 + 928) = *(v0 + 12592);
          *(v0 + 944) = v91;
          v92 = *(v0 + 12640);
          *(v0 + 960) = *(v0 + 12624);
          *(v0 + 976) = v92;
          v93 = *(v0 + 12672);
          *(v0 + 992) = *(v0 + 12656);
          *(v0 + 1008) = v93;
          *(v0 + 1024) = *(v0 + 12688);
          *(v0 + 1040) = v89;
          v151 = *(v0 + 12712);
          *(v0 + 1048) = v151;
          *(v0 + 1064) = v88;
          *(v0 + 1072) = v87;
          v94 = v5;
          v95 = v6;
          v96 = v7;
          v97 = v8;
          v98 = v9;
          v99 = v10;
          v100 = v11;
          memcpy((v0 + 1080), (v90 + 160), 0x2E8uLL);
          *&v101 = v94;
          *(&v101 + 1) = v95;
          *&v102 = v96;
          *(&v102 + 1) = v97;
          *(v0 + 12488) = v101;
          *(v0 + 12504) = v102;
          *(v0 + 12520) = v98;
          *(v0 + 12528) = v99;
          *(v0 + 12536) = v100;
          sub_2405AF8D8(v94, v95, v96, v97, v98, v99, v100);
          v103 = v151;
          v152 = (v151 + *v151);
          v104 = *(v103 + 4);
          v105 = swift_task_alloc();
          *(v0 + 12856) = v105;
          *v105 = v0;
          v105[1] = sub_240733730;
          v106 = *(v0 + 12720);
          v107 = v0 + 920;
          v108 = v0 + 12488;
LABEL_36:

          return v152(v107, v108);
        }

        goto LABEL_20;
    }
  }

  return v149(v48);
}

uint64_t sub_240732BBC()
{
  v1 = *v0;
  v2 = *(*v0 + 12792);
  v7 = *v0;

  v3 = *(v1 + 12576);
  v4 = *(v1 + 12568);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_240732CE8()
{
  v1 = *v0;
  v2 = *(*v0 + 12800);
  v4 = *v0;

  memcpy((v1 + 10928), (v1 + 11864), 0x131uLL);
  sub_240684D0C(v1 + 10928);

  return MEMORY[0x2822009F8](sub_240732E0C, 0, 0);
}

uint64_t sub_240732E0C()
{
  v1 = v0[1568];
  memcpy(v0 + 1327, v0 + 1444, 0x131uLL);
  memcpy(v0 + 1288, (v1 + 96), 0x131uLL);
  sub_240684D0C((v0 + 1288));
  memcpy((v1 + 96), v0 + 1327, 0x131uLL);
  v2 = v0[1572];
  v3 = v0[1571];

  v4 = v0[1];

  return v4();
}

uint64_t sub_240732EC8()
{
  v1 = *v0;
  v2 = *(*v0 + 12808);
  v3 = *v0;

  memcpy(v1 + 1132, v1 + 1210, 0x131uLL);
  sub_240684D0C((v1 + 1132));
  v4 = v1[1572];
  v5 = v1[1571];

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_240733020()
{
  v1 = *(*v0 + 12816);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073311C, 0, 0);
}

uint64_t sub_24073311C()
{
  sub_2407454B8(*(v0 + 12576), *(v0 + 12544) + *(v0 + 9364), type metadata accessor for AuthenticationModel);
  v1 = *(v0 + 12576);
  v2 = *(v0 + 12568);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2407331B0()
{
  v1 = *v0;
  v2 = *(*v0 + 12824);
  v7 = *v0;

  v3 = *(v1 + 12576);
  v4 = *(v1 + 12568);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2407332DC()
{
  v1 = *(*v0 + 12832);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407333D8, 0, 0);
}

uint64_t sub_2407333D8()
{
  sub_2407454B8(*(v0 + 12568), *(v0 + 12544) + *(v0 + 9676), type metadata accessor for SignInModel);
  v1 = *(v0 + 12576);
  v2 = *(v0 + 12568);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24073346C()
{
  v1 = *v0;
  v2 = *(*v0 + 12840);
  v7 = *v0;

  v3 = *(v1 + 12576);
  v4 = *(v1 + 12568);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_240733598()
{
  v1 = *(*v0 + 12848);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240733694, 0, 0);
}

uint64_t sub_240733694()
{
  v1 = v0[1568];
  sub_240720A38(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 88) = -6;
  v2 = v0[1572];
  v3 = v0[1571];

  v4 = v0[1];

  return v4();
}

uint64_t sub_240733730()
{
  v1 = *(*v0 + 12856);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073382C, 0, 0);
}

uint64_t sub_24073382C()
{
  v1 = *(v0 + 12544);
  sub_240720A38(*(v0 + 12744), *(v0 + 12752), *(v0 + 12760), *(v0 + 12768), *(v0 + 12776), *(v0 + 12784), *(v0 + 9361));
  v2 = *(v0 + 12544);
  sub_240720A38(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 88) = -6;
  v3 = *(v0 + 12576);
  v4 = *(v0 + 12568);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2407338F0()
{
  v1 = *v0;
  v2 = *(*v0 + 12864);
  v7 = *v0;

  v3 = *(v1 + 12576);
  v4 = *(v1 + 12568);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_240733A5C(void *__src, const void *a2)
{
  v2[351] = a2;
  memcpy(v2 + 2, __src, 0x388uLL);
  memcpy(v2 + 234, a2, 0x131uLL);

  return MEMORY[0x2822009F8](sub_240733AE4, 0, 0);
}

uint64_t sub_240733AE4()
{
  v4 = v0;
  memcpy(&__src[7], *(v0 + 2808), 0x131uLL);
  *(v0 + 1240) = 0;
  memcpy((v0 + 1241), __src, 0x138uLL);
  sub_240684CD4(v0 + 1872, v0 + 2496);
  v1 = swift_task_alloc();
  *(v0 + 2816) = v1;
  *v1 = v0;
  v1[1] = sub_240733BBC;

  return static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(v0 + 2184, v0 + 16, (v0 + 1240));
}

uint64_t sub_240733BBC()
{
  v1 = *v0;
  v2 = *(*v0 + 2816);
  v4 = *v0;

  memcpy((v1 + 920), (v1 + 1240), 0x139uLL);
  sub_2405B8A50(v1 + 920, &qword_27E4BE478, &qword_240783178);
  memcpy((v1 + 1560), (v1 + 2184), 0x131uLL);
  sub_240684D0C(v1 + 1560);

  return MEMORY[0x2822009F8](sub_24057D000, 0, 0);
}

uint64_t static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 1912) = a1;
  *(v3 + 1920) = *(a2 + 168);
  *(v3 + 1936) = *(a2 + 184);
  *(v3 + 1952) = *(a2 + 200);
  *(v3 + 1968) = *(a2 + 216);
  *(v3 + 1984) = *(a2 + 232);
  *(v3 + 2000) = *(a2 + 248);
  *(v3 + 2016) = *(a2 + 264);
  *(v3 + 1178) = *a3;
  memcpy((v3 + 16), a3 + 8, 0x131uLL);
  sub_240684CD4(v3 + 16, v3 + 328);

  return MEMORY[0x2822009F8](sub_240733DBC, 0, 0);
}

uint64_t sub_240733DBC()
{
  v1 = *(v0 + 16);
  *(v0 + 1200) = *(v0 + 32);
  v2 = *(v0 + 64);
  *(v0 + 1216) = *(v0 + 48);
  *(v0 + 1232) = v2;
  *(v0 + 1248) = *(v0 + 80);
  *(v0 + 1184) = v1;
  v3 = *(v0 + 88);
  *(v0 + 873) = *(v0 + 89);
  *(v0 + 876) = *(v0 + 92);
  v4 = *(v0 + 96);
  *(v0 + 1179) = v4;
  *(v0 + 2168) = v4;
  v5 = *(v0 + 97);
  *(v0 + 1180) = v5;
  v6 = *(v0 + 98);
  *(v0 + 1181) = v6;
  *(v0 + 1026) = v6;
  *(v0 + 1027) = *(v0 + 99);
  *(v0 + 1031) = *(v0 + 103);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  *(v0 + 2032) = v7;
  *(v0 + 2040) = v8;
  v9 = *(v0 + 120);
  *(v0 + 2048) = v9;
  v10 = *(v0 + 128);
  *(v0 + 1182) = v10;
  v11 = *(v0 + 129);
  v12 = *(v0 + 145);
  v13 = *(v0 + 161);
  *(v0 + 1304) = *(v0 + 177);
  *(v0 + 1272) = v12;
  *(v0 + 1288) = v13;
  *(v0 + 1256) = v11;
  *(v0 + 324) = *(v0 + 188);
  *(v0 + 321) = *(v0 + 185);
  v14 = *(v0 + 192);
  *(v0 + 2056) = v14;
  v15 = *(v0 + 200);
  *(v0 + 1183) = v15;
  *(v0 + 2144) = v15;
  *(v0 + 633) = *(v0 + 201);
  *(v0 + 636) = *(v0 + 204);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  *(v0 + 2064) = v17;
  *(v0 + 2072) = v16;
  v18 = *(v0 + 224);
  *(v0 + 2080) = v18;
  v19 = *(v0 + 232);
  *(v0 + 1361) = v19;
  *(v0 + 2152) = v19;
  v20 = *(v0 + 233);
  *(v0 + 1362) = v20;
  *(v0 + 2160) = v20;
  v21 = *(v0 + 250);
  *(v0 + 786) = *(v0 + 234);
  *(v0 + 802) = v21;
  v22 = *(v0 + 266);
  v23 = *(v0 + 282);
  v24 = *(v0 + 298);
  *(v0 + 865) = *(v0 + 313);
  *(v0 + 834) = v23;
  *(v0 + 850) = v24;
  *(v0 + 818) = v22;
  v25 = *(v0 + 136);
  v26 = *(v0 + 152);
  v27 = *(v0 + 168);
  *(v0 + 1360) = *(v0 + 184);
  *(v0 + 1344) = v27;
  *(v0 + 1328) = v26;
  *(v0 + 1312) = v25;
  if (v3 <= 1)
  {
    if (v3)
    {
      v37 = *(v0 + 1920);
      v38 = *(v0 + 152);
      *(v0 + 1368) = *(v0 + 136);
      *(v0 + 1384) = v38;
      *(v0 + 1400) = *(v0 + 168);
      *(v0 + 1416) = *(v0 + 184);
      sub_2406771A8(v0 + 1312, v0 + 1424);
      v46 = (v37 + *v37);
      v39 = v37[1];
      v40 = swift_task_alloc();
      *(v0 + 2096) = v40;
      *v40 = v0;
      v40[1] = sub_240734504;
      v41 = *(v0 + 1928);
      v32 = v0 + 1368;
    }

    else
    {
      v28 = *(v0 + 1952);
      *(v0 + 1792) = v4 & 1;
      *(v0 + 1793) = v5;
      *(v0 + 1794) = v6 & 1;
      *(v0 + 1800) = v7;
      *(v0 + 1808) = v8;
      *(v0 + 1816) = v9;
      *(v0 + 1824) = v10;
      sub_2406771E0(v7, v8, v9, v10);
      v46 = (v28 + *v28);
      v29 = v28[1];
      v30 = swift_task_alloc();
      *(v0 + 2112) = v30;
      *v30 = v0;
      v30[1] = sub_240734D58;
      v31 = *(v0 + 1960);
      v32 = v0 + 1792;
    }

LABEL_10:

    return v46(v32);
  }

  if (v3 != 2)
  {
    v42 = *(v0 + 2000);
    *(v0 + 1648) = v14;
    *(v0 + 1656) = v15 & 1;
    *(v0 + 1664) = v17;
    *(v0 + 1672) = v16;
    *(v0 + 1680) = v18;
    *(v0 + 1688) = v19 & 1;
    *(v0 + 1689) = v20 & 1;

    sub_24067715C(v17, v16, v18);
    v46 = (v42 + *v42);
    v43 = v42[1];
    v44 = swift_task_alloc();
    *(v0 + 2128) = v44;
    *v44 = v0;
    v44[1] = sub_24073561C;
    v45 = *(v0 + 2008);
    v32 = v0 + 1648;
    goto LABEL_10;
  }

  v47 = (*(v0 + 1984) + **(v0 + 1984));
  v33 = *(*(v0 + 1984) + 4);
  v34 = swift_task_alloc();
  *(v0 + 2088) = v34;
  *v34 = v0;
  v34[1] = sub_2407342D0;
  v35 = *(v0 + 1992);

  return v47();
}

uint64_t sub_2407342D0()
{
  v1 = *(*v0 + 2088);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407343CC, 0, 0);
}

uint64_t sub_2407343CC()
{
  v1 = *(v0 + 1361);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 1183);
  v4 = *(v0 + 2056);
  v5 = *(v0 + 1182);
  v6 = *(v0 + 2048);
  v7 = *(v0 + 1181);
  v8 = *(v0 + 1179);
  v9 = *(v0 + 1912);
  v10 = *(v0 + 2064);
  v11 = *(v0 + 2032);
  v12 = *(v0 + 1200);
  v13 = *(v0 + 1216);
  v14 = *(v0 + 1232);
  *(v9 + 64) = *(v0 + 1248);
  *(v9 + 32) = v13;
  *(v9 + 48) = v14;
  *(v9 + 16) = v12;
  *v9 = *(v0 + 1184);
  *(v9 + 72) = 2;
  v15 = *(v0 + 873);
  *(v9 + 76) = *(v0 + 876);
  *(v9 + 73) = v15;
  *(v9 + 80) = v8;
  *(v9 + 82) = v7;
  v16 = *(v0 + 1027);
  *(v9 + 87) = *(v0 + 1031);
  *(v9 + 83) = v16;
  *(v9 + 88) = v11;
  *(v9 + 104) = v6;
  *(v9 + 112) = v5;
  v17 = *(v0 + 1256);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1288);
  *(v9 + 161) = *(v0 + 1304);
  *(v9 + 145) = v19;
  *(v9 + 129) = v18;
  *(v9 + 113) = v17;
  v20 = *(v0 + 321);
  *(v9 + 172) = *(v0 + 324);
  *(v9 + 169) = v20;
  *(v9 + 176) = v4;
  *(v9 + 184) = v3;
  v21 = *(v0 + 633);
  *(v9 + 188) = *(v0 + 636);
  *(v9 + 185) = v21;
  *(v9 + 192) = v10;
  *(v9 + 208) = v2;
  *(v9 + 216) = v1;
  v22 = *(v0 + 786);
  *(v9 + 234) = *(v0 + 802);
  *(v9 + 218) = v22;
  v23 = *(v0 + 818);
  v24 = *(v0 + 834);
  v25 = *(v0 + 850);
  *(v9 + 297) = *(v0 + 865);
  *(v9 + 266) = v24;
  *(v9 + 282) = v25;
  *(v9 + 250) = v23;
  return (*(v0 + 8))();
}

uint64_t sub_240734504()
{
  v1 = *(*v0 + 2096);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240734600, 0, 0);
}

uint64_t sub_240734600()
{
  v1 = (v0 + 1312);
  if (*(v0 + 1178) == 1)
  {
    v2 = *(v0 + 1936);
    v3 = *(v0 + 1328);
    *(v0 + 1592) = *v1;
    *(v0 + 1608) = v3;
    *(v0 + 1624) = *(v0 + 1344);
    *(v0 + 1640) = *(v0 + 1360);
    v32 = (v2 + *v2);
    v4 = v2[1];
    v5 = swift_task_alloc();
    *(v0 + 2104) = v5;
    *v5 = v0;
    v5[1] = sub_24073489C;
    v6 = *(v0 + 1944);

    return v32(v0 + 1536, v0 + 1592);
  }

  else
  {
    sub_240686258(v1);
    v8 = *(v0 + 1361);
    v9 = *(v0 + 2080);
    v10 = *(v0 + 1183);
    v11 = *(v0 + 2056);
    v12 = *(v0 + 1182);
    v13 = *(v0 + 2048);
    v14 = *(v0 + 1181);
    v15 = *(v0 + 1179);
    v16 = *(v0 + 1912);
    v17 = *(v0 + 2064);
    v18 = *(v0 + 2032);
    *v16 = *(v0 + 1184);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1232);
    v21 = *(v0 + 1216);
    *(v16 + 16) = *(v0 + 1200);
    *(v16 + 32) = v21;
    *(v16 + 48) = v20;
    *(v16 + 64) = v19;
    *(v16 + 72) = 1;
    LODWORD(v19) = *(v0 + 876);
    *(v16 + 73) = *(v0 + 873);
    *(v16 + 76) = v19;
    *(v16 + 80) = v15;
    *(v16 + 82) = v14;
    v22 = *(v0 + 1027);
    *(v16 + 87) = *(v0 + 1031);
    *(v16 + 83) = v22;
    *(v16 + 88) = v18;
    *(v16 + 104) = v13;
    *(v16 + 112) = v12;
    v24 = *(v0 + 1272);
    v23 = *(v0 + 1288);
    v25 = *(v0 + 1304);
    *(v16 + 113) = *(v0 + 1256);
    *(v16 + 161) = v25;
    *(v16 + 145) = v23;
    *(v16 + 129) = v24;
    LODWORD(v25) = *(v0 + 324);
    *(v16 + 169) = *(v0 + 321);
    *(v16 + 172) = v25;
    *(v16 + 176) = v11;
    *(v16 + 184) = v10;
    v26 = *(v0 + 633);
    *(v16 + 188) = *(v0 + 636);
    *(v16 + 185) = v26;
    *(v16 + 192) = v17;
    *(v16 + 208) = v9;
    *(v16 + 216) = v8;
    v27 = *(v0 + 802);
    *(v16 + 218) = *(v0 + 786);
    *(v16 + 234) = v27;
    v29 = *(v0 + 834);
    v28 = *(v0 + 850);
    v30 = *(v0 + 865);
    *(v16 + 250) = *(v0 + 818);
    *(v16 + 297) = v30;
    *(v16 + 266) = v29;
    *(v16 + 282) = v28;
    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_24073489C()
{
  v1 = *(*v0 + 2104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240734998, 0, 0);
}

uint64_t sub_240734998()
{
  v68 = v0;
  v38 = *(v0 + 1361);
  v34 = *(v0 + 2080);
  v32 = *(v0 + 2064);
  v31 = *(v0 + 1183);
  v30 = *(v0 + 2056);
  v1 = *(v0 + 1182);
  v2 = *(v0 + 2048);
  v29 = *(v0 + 2032);
  v3 = *(v0 + 1180);
  v4 = *(v0 + 1552);
  *(v0 + 1480) = *(v0 + 1536);
  *(v0 + 1496) = v4;
  *(v0 + 1512) = *(v0 + 1568);
  v5 = *(v0 + 1584);
  *(v0 + 1528) = v5;
  v6 = *(v0 + 1496);
  v64 = *(v0 + 1480);
  v65 = v6;
  v66 = *(v0 + 1512);
  v67 = v5 & 0xE3 | 8;
  sub_240676624(&v44);
  sub_240686258(v0 + 1312);
  sub_240686258(v0 + 1480);
  v7 = v44;
  v33 = v46;
  v8 = v47;
  v37 = v50;
  v36 = v51;
  v35 = v52;
  v40 = v58;
  v39 = v59;
  v43 = v61;
  v42 = v62;
  v41 = v63;
  *(v0 + 880) = 1;
  *(v0 + 881) = *(v0 + 873);
  *(v0 + 884) = *(v0 + 876);
  *(v0 + 888) = *(v0 + 2168);
  *(v0 + 889) = v3;
  *(v0 + 890) = *(v0 + 1026);
  *(v0 + 891) = *(v0 + 1027);
  *(v0 + 895) = *(v0 + 1031);
  *(v0 + 896) = v29;
  *(v0 + 912) = v2;
  *(v0 + 920) = v1;
  *(v0 + 969) = *(v0 + 1304);
  v9 = *(v0 + 1288);
  *(v0 + 937) = *(v0 + 1272);
  *(v0 + 953) = v9;
  *(v0 + 921) = *(v0 + 1256);
  *(v0 + 980) = *(v0 + 324);
  *(v0 + 977) = *(v0 + 321);
  *(v0 + 984) = v30;
  *(v0 + 992) = v31;
  *(v0 + 996) = *(v0 + 636);
  *(v0 + 993) = *(v0 + 633);
  *(v0 + 1000) = v32;
  *(v0 + 1016) = v34;
  *(v0 + 1024) = v38;
  sub_24067712C(v0 + 880);
  *(v0 + 873) = *v45;
  *(v0 + 876) = *&v45[3];
  *(v0 + 1027) = v48;
  *(v0 + 1031) = v49;
  v10 = v54;
  *(v0 + 1256) = v53;
  *(v0 + 1272) = v10;
  *(v0 + 1288) = v55;
  *(v0 + 1304) = v56;
  v11 = *v57;
  *(v0 + 324) = *&v57[3];
  *(v0 + 321) = v11;
  *(v0 + 636) = *&v60[3];
  *(v0 + 633) = *v60;
  v12 = *(v0 + 1912);
  v13 = *(v0 + 1200);
  v14 = *(v0 + 1216);
  v15 = *(v0 + 1232);
  *(v12 + 64) = *(v0 + 1248);
  *(v12 + 32) = v14;
  *(v12 + 48) = v15;
  *(v12 + 16) = v13;
  *v12 = *(v0 + 1184);
  *(v12 + 72) = v7;
  v16 = *(v0 + 873);
  *(v12 + 76) = *(v0 + 876);
  *(v12 + 73) = v16;
  *(v12 + 80) = v33;
  *(v12 + 82) = v8;
  v17 = *(v0 + 1027);
  *(v12 + 87) = *(v0 + 1031);
  *(v12 + 83) = v17;
  *(v12 + 88) = v37;
  *(v12 + 104) = v36;
  *(v12 + 112) = v35;
  v18 = *(v0 + 1256);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 1288);
  *(v12 + 161) = *(v0 + 1304);
  *(v12 + 145) = v20;
  *(v12 + 129) = v19;
  *(v12 + 113) = v18;
  v21 = *(v0 + 321);
  *(v12 + 172) = *(v0 + 324);
  *(v12 + 169) = v21;
  *(v12 + 176) = v40;
  *(v12 + 184) = v39;
  v22 = *(v0 + 633);
  *(v12 + 188) = *(v0 + 636);
  *(v12 + 185) = v22;
  *(v12 + 192) = v43;
  *(v12 + 208) = v42;
  *(v12 + 216) = v41;
  v23 = *(v0 + 786);
  *(v12 + 234) = *(v0 + 802);
  *(v12 + 218) = v23;
  v24 = *(v0 + 818);
  v25 = *(v0 + 834);
  v26 = *(v0 + 850);
  *(v12 + 297) = *(v0 + 865);
  *(v12 + 266) = v25;
  *(v12 + 282) = v26;
  *(v12 + 250) = v24;
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_240734D58()
{
  v1 = *(*v0 + 2112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240734E54, 0, 0);
}

uint64_t sub_240734E54()
{
  if (*(v0 + 1178) == 1)
  {
    v1 = *(v0 + 1182);
    v2 = *(v0 + 2048);
    v3 = *(v0 + 1180);
    v4 = *(v0 + 1968);
    v5 = *(v0 + 1181) & 1;
    *(v0 + 1872) = *(v0 + 1179) & 1;
    *(v0 + 1873) = v3;
    *(v0 + 1874) = v5;
    *(v0 + 1880) = *(v0 + 2032);
    *(v0 + 1896) = v2;
    *(v0 + 1904) = v1;
    v36 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 2120) = v7;
    *v7 = v0;
    v7[1] = sub_24073511C;
    v8 = *(v0 + 1976);

    return v36(v0 + 1832, v0 + 1872);
  }

  else
  {
    sub_240604AE0(*(v0 + 2032), *(v0 + 2040), *(v0 + 2048), *(v0 + 1182));
    v10 = *(v0 + 1361);
    v11 = *(v0 + 2080);
    v12 = *(v0 + 1183);
    v13 = *(v0 + 2056);
    v14 = *(v0 + 1182);
    v15 = *(v0 + 2048);
    v16 = *(v0 + 1181);
    v17 = *(v0 + 1179);
    v18 = *(v0 + 1912);
    v19 = *(v0 + 2064);
    v20 = *(v0 + 2032);
    v21 = *(v0 + 1200);
    v22 = *(v0 + 1216);
    v23 = *(v0 + 1232);
    *(v18 + 64) = *(v0 + 1248);
    *(v18 + 32) = v22;
    *(v18 + 48) = v23;
    *(v18 + 16) = v21;
    *v18 = *(v0 + 1184);
    *(v18 + 72) = 0;
    v24 = *(v0 + 873);
    *(v18 + 76) = *(v0 + 876);
    *(v18 + 73) = v24;
    *(v18 + 80) = v17;
    *(v18 + 82) = v16;
    v25 = *(v0 + 1027);
    *(v18 + 87) = *(v0 + 1031);
    *(v18 + 83) = v25;
    *(v18 + 88) = v20;
    *(v18 + 104) = v15;
    *(v18 + 112) = v14;
    v26 = *(v0 + 1256);
    v27 = *(v0 + 1272);
    v28 = *(v0 + 1288);
    *(v18 + 161) = *(v0 + 1304);
    *(v18 + 145) = v28;
    *(v18 + 129) = v27;
    *(v18 + 113) = v26;
    v29 = *(v0 + 321);
    *(v18 + 172) = *(v0 + 324);
    *(v18 + 169) = v29;
    *(v18 + 176) = v13;
    *(v18 + 184) = v12;
    v30 = *(v0 + 633);
    *(v18 + 188) = *(v0 + 636);
    *(v18 + 185) = v30;
    *(v18 + 192) = v19;
    *(v18 + 208) = v11;
    *(v18 + 216) = v10;
    v31 = *(v0 + 786);
    *(v18 + 234) = *(v0 + 802);
    *(v18 + 218) = v31;
    v32 = *(v0 + 818);
    v33 = *(v0 + 834);
    v34 = *(v0 + 850);
    *(v18 + 297) = *(v0 + 865);
    *(v18 + 266) = v33;
    *(v18 + 282) = v34;
    *(v18 + 250) = v32;
    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_24073511C()
{
  v1 = *(*v0 + 2120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240735218, 0, 0);
}

uint64_t sub_240735218()
{
  v79 = v0;
  v47 = *(v0 + 1361);
  v44 = *(v0 + 2080);
  v1 = (v0 + 1256);
  v43 = *(v0 + 2064);
  v42 = (v0 + 633);
  v34 = (v0 + 873);
  v38 = *(v0 + 1183);
  v35 = (v0 + 1027);
  v36 = *(v0 + 2056);
  v37 = (v0 + 321);
  v51 = *(v0 + 2048);
  v2 = *(v0 + 2040);
  v3 = *(v0 + 2032);
  v33 = *(v0 + 1180);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1848);
  v6 = *(v0 + 1856);
  v7 = 0x10000;
  if (!*(v0 + 1834))
  {
    v7 = 0;
  }

  v8 = *(v0 + 1864);
  v9 = *(v0 + 1182);
  v72 = *(v0 + 1832) | (*(v0 + 1833) << 8) | v7;
  v73 = v4;
  v74 = v5;
  v75 = v6;
  v76 = v8;
  v77 = 0;
  v78 = 0;
  sub_240676624(&v52);
  sub_240604AE0(v3, v2, v51, v9);
  sub_240604AE0(v4, v5, v6, v8);
  v10 = v52;
  v32 = v54;
  v11 = v55;
  v41 = v58;
  v40 = v59;
  v39 = v60;
  v46 = v66;
  v45 = v67;
  v50 = v69;
  v49 = v70;
  v48 = v71;
  *(v0 + 640) = 0;
  *(v0 + 641) = *v34;
  *(v0 + 644) = *(v0 + 876);
  *(v0 + 648) = *(v0 + 2168);
  *(v0 + 649) = v33;
  *(v0 + 650) = *(v0 + 1026);
  *(v0 + 655) = *(v0 + 1031);
  *(v0 + 651) = *v35;
  *(v0 + 656) = v3;
  *(v0 + 664) = v2;
  *(v0 + 672) = v51;
  *(v0 + 680) = v9;
  v12 = *(v0 + 1272);
  *(v0 + 681) = *v1;
  *(v0 + 697) = v12;
  *(v0 + 713) = *(v0 + 1288);
  *(v0 + 729) = *(v0 + 1304);
  *(v0 + 737) = *v37;
  *(v0 + 740) = *(v0 + 324);
  *(v0 + 744) = v36;
  *(v0 + 752) = v38;
  *(v0 + 753) = *v42;
  *(v0 + 756) = *(v0 + 636);
  *(v0 + 760) = v43;
  *(v0 + 776) = v44;
  *(v0 + 784) = v47;
  sub_24067712C(v0 + 640);
  *v34 = *v53;
  *(v0 + 876) = *&v53[3];
  *v35 = v56;
  *(v0 + 1031) = v57;
  v13 = v62;
  *v1 = v61;
  *(v0 + 1272) = v13;
  *(v0 + 1288) = v63;
  *(v0 + 1304) = v64;
  v14 = *v65;
  *(v0 + 324) = *&v65[3];
  *v37 = v14;
  *(v0 + 636) = *&v68[3];
  *v42 = *v68;
  v15 = *(v0 + 1912);
  v16 = *(v0 + 1200);
  v17 = *(v0 + 1216);
  v18 = *(v0 + 1232);
  *(v15 + 64) = *(v0 + 1248);
  *(v15 + 32) = v17;
  *(v15 + 48) = v18;
  *(v15 + 16) = v16;
  *v15 = *(v0 + 1184);
  *(v15 + 72) = v10;
  v19 = *v34;
  *(v15 + 76) = *(v0 + 876);
  *(v15 + 73) = v19;
  *(v15 + 80) = v32;
  *(v15 + 82) = v11;
  v20 = *v35;
  *(v15 + 87) = *(v0 + 1031);
  *(v15 + 83) = v20;
  *(v15 + 88) = v41;
  *(v15 + 104) = v40;
  *(v15 + 112) = v39;
  v21 = *v1;
  v22 = *(v0 + 1272);
  v23 = *(v0 + 1288);
  *(v15 + 161) = *(v0 + 1304);
  *(v15 + 145) = v23;
  *(v15 + 129) = v22;
  *(v15 + 113) = v21;
  v24 = *v37;
  *(v15 + 172) = *(v0 + 324);
  *(v15 + 169) = v24;
  *(v15 + 176) = v46;
  *(v15 + 184) = v45;
  v25 = *v42;
  *(v15 + 188) = *(v0 + 636);
  *(v15 + 185) = v25;
  *(v15 + 192) = v50;
  *(v15 + 208) = v49;
  *(v15 + 216) = v48;
  v26 = *(v0 + 786);
  *(v15 + 234) = *(v0 + 802);
  *(v15 + 218) = v26;
  v27 = *(v0 + 818);
  v28 = *(v0 + 834);
  v29 = *(v0 + 850);
  *(v15 + 297) = *(v0 + 865);
  *(v15 + 266) = v28;
  *(v15 + 282) = v29;
  *(v15 + 250) = v27;
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24073561C()
{
  v1 = *(*v0 + 2128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240735718, 0, 0);
}

uint64_t sub_240735718()
{
  if (*(v0 + 1178) == 1)
  {
    v1 = *(v0 + 2080);
    v2 = *(v0 + 2016);
    v3 = *(v0 + 1362) & 1;
    v4 = *(v0 + 1361) & 1;
    v5 = *(v0 + 1183) & 1;
    *(v0 + 1744) = *(v0 + 2056);
    *(v0 + 1752) = v5;
    *(v0 + 1760) = *(v0 + 2064);
    *(v0 + 1776) = v1;
    *(v0 + 1784) = v4;
    *(v0 + 1785) = v3;
    v40 = (v2 + *v2);
    v6 = v2[1];
    v7 = swift_task_alloc();
    *(v0 + 2136) = v7;
    *v7 = v0;
    v7[1] = sub_240735A00;
    v8 = *(v0 + 2024);

    return v40(v0 + 1696, v0 + 1744);
  }

  else
  {
    v10 = *(v0 + 2080);
    v11 = *(v0 + 2072);
    v12 = *(v0 + 2064);
    v13 = *(v0 + 2056);

    sub_2406769C4(v12, v11, v10);
    v14 = *(v0 + 1361);
    v15 = *(v0 + 2080);
    v16 = *(v0 + 1183);
    v17 = *(v0 + 2056);
    v18 = *(v0 + 1182);
    v19 = *(v0 + 2048);
    v20 = *(v0 + 1181);
    v21 = *(v0 + 1179);
    v22 = *(v0 + 1912);
    v23 = *(v0 + 2064);
    v24 = *(v0 + 2032);
    v25 = *(v0 + 1200);
    v26 = *(v0 + 1216);
    v27 = *(v0 + 1232);
    *(v22 + 64) = *(v0 + 1248);
    *(v22 + 32) = v26;
    *(v22 + 48) = v27;
    *(v22 + 16) = v25;
    *v22 = *(v0 + 1184);
    *(v22 + 72) = 3;
    v28 = *(v0 + 873);
    *(v22 + 76) = *(v0 + 876);
    *(v22 + 73) = v28;
    *(v22 + 80) = v21;
    *(v22 + 82) = v20;
    v29 = *(v0 + 1027);
    *(v22 + 87) = *(v0 + 1031);
    *(v22 + 83) = v29;
    *(v22 + 88) = v24;
    *(v22 + 104) = v19;
    *(v22 + 112) = v18;
    v30 = *(v0 + 1256);
    v31 = *(v0 + 1272);
    v32 = *(v0 + 1288);
    *(v22 + 161) = *(v0 + 1304);
    *(v22 + 145) = v32;
    *(v22 + 129) = v31;
    *(v22 + 113) = v30;
    v33 = *(v0 + 321);
    *(v22 + 172) = *(v0 + 324);
    *(v22 + 169) = v33;
    *(v22 + 176) = v17;
    *(v22 + 184) = v16;
    v34 = *(v0 + 633);
    *(v22 + 188) = *(v0 + 636);
    *(v22 + 185) = v34;
    *(v22 + 192) = v23;
    *(v22 + 208) = v15;
    *(v22 + 216) = v14;
    v35 = *(v0 + 786);
    *(v22 + 234) = *(v0 + 802);
    *(v22 + 218) = v35;
    v36 = *(v0 + 818);
    v37 = *(v0 + 834);
    v38 = *(v0 + 850);
    *(v22 + 297) = *(v0 + 865);
    *(v22 + 266) = v37;
    *(v22 + 282) = v38;
    *(v22 + 250) = v36;
    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_240735A00()
{
  v1 = *(*v0 + 2136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240735AFC, 0, 0);
}

uint64_t sub_240735AFC()
{
  v79 = v0;
  v51 = *(v0 + 2080);
  v1 = (v0 + 1256);
  v2 = *(v0 + 2072);
  v40 = (v0 + 321);
  v45 = (v0 + 633);
  v3 = *(v0 + 2064);
  v34 = (v0 + 873);
  v36 = (v0 + 1027);
  v4 = *(v0 + 2056);
  v39 = *(v0 + 1182);
  v38 = *(v0 + 2048);
  v37 = *(v0 + 2032);
  v35 = *(v0 + 1180);
  v5 = *(v0 + 1704);
  v6 = *(v0 + 1712);
  v7 = *(v0 + 1720);
  v8 = *(v0 + 1728);
  v9 = *(v0 + 1736);
  v10 = 256;
  if (!*(v0 + 1737))
  {
    v10 = 0;
  }

  v72 = *(v0 + 1696);
  v73 = v5;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v77 = v10 | v9;
  v78 = 16;
  sub_240676624(&v52);

  sub_2406769C4(v3, v2, v51);

  sub_2406769C4(v6, v7, v8);
  v11 = v52;
  v12 = v55;
  v44 = v58;
  v43 = v59;
  v41 = v54;
  v42 = v60;
  v47 = v66;
  v46 = v67;
  v50 = v69;
  v49 = v70;
  v48 = v71;
  *(v0 + 1032) = 3;
  *(v0 + 1033) = *v34;
  *(v0 + 1036) = *(v0 + 876);
  *(v0 + 1040) = *(v0 + 2168);
  *(v0 + 1041) = v35;
  *(v0 + 1042) = *(v0 + 1026);
  *(v0 + 1043) = *v36;
  *(v0 + 1047) = *(v0 + 1031);
  *(v0 + 1048) = v37;
  *(v0 + 1064) = v38;
  *(v0 + 1072) = v39;
  v13 = *(v0 + 1272);
  *(v0 + 1073) = *v1;
  *(v0 + 1089) = v13;
  *(v0 + 1105) = *(v0 + 1288);
  *(v0 + 1121) = *(v0 + 1304);
  v14 = *v40;
  *(v0 + 1132) = *(v0 + 324);
  *(v0 + 1129) = v14;
  *(v0 + 1136) = v4;
  *(v0 + 1144) = *(v0 + 2144);
  *(v0 + 1148) = *(v0 + 636);
  *(v0 + 1145) = *v45;
  *(v0 + 1152) = v3;
  *(v0 + 1160) = v2;
  *(v0 + 1168) = v51;
  *(v0 + 1176) = *(v0 + 2152);
  *(v0 + 1177) = *(v0 + 2160);
  sub_24067712C(v0 + 1032);
  *v34 = *v53;
  *(v0 + 876) = *&v53[3];
  *v36 = v56;
  *(v0 + 1031) = v57;
  v15 = v62;
  *v1 = v61;
  *(v0 + 1272) = v15;
  *(v0 + 1288) = v63;
  *(v0 + 1304) = v64;
  v16 = *v65;
  *(v0 + 324) = *&v65[3];
  *v40 = v16;
  *(v0 + 636) = *&v68[3];
  *v45 = *v68;
  v17 = *(v0 + 1912);
  v18 = *(v0 + 1200);
  v19 = *(v0 + 1216);
  v20 = *(v0 + 1232);
  *(v17 + 64) = *(v0 + 1248);
  *(v17 + 32) = v19;
  *(v17 + 48) = v20;
  *(v17 + 16) = v18;
  *v17 = *(v0 + 1184);
  *(v17 + 72) = v11;
  v21 = *v34;
  *(v17 + 76) = *(v0 + 876);
  *(v17 + 73) = v21;
  *(v17 + 80) = v41;
  *(v17 + 82) = v12;
  v22 = *v36;
  *(v17 + 87) = *(v0 + 1031);
  *(v17 + 83) = v22;
  *(v17 + 88) = v44;
  *(v17 + 104) = v43;
  *(v17 + 112) = v42;
  v23 = *v1;
  v24 = *(v0 + 1272);
  v25 = *(v0 + 1288);
  *(v17 + 161) = *(v0 + 1304);
  *(v17 + 145) = v25;
  *(v17 + 129) = v24;
  *(v17 + 113) = v23;
  v26 = *v40;
  *(v17 + 172) = *(v0 + 324);
  *(v17 + 169) = v26;
  *(v17 + 176) = v47;
  *(v17 + 184) = v46;
  v27 = *v45;
  *(v17 + 188) = *(v0 + 636);
  *(v17 + 185) = v27;
  *(v17 + 192) = v50;
  *(v17 + 208) = v49;
  *(v17 + 216) = v48;
  v28 = *(v0 + 786);
  *(v17 + 234) = *(v0 + 802);
  *(v17 + 218) = v28;
  v29 = *(v0 + 818);
  v30 = *(v0 + 834);
  v31 = *(v0 + 850);
  *(v17 + 297) = *(v0 + 865);
  *(v17 + 266) = v30;
  *(v17 + 282) = v31;
  *(v17 + 250) = v29;
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_240735F04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a2, a3);
}

uint64_t sub_240736004(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = a2[1];

  *a2 = &unk_240783148;
  a2[1] = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryModel.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2407360FC(uint64_t a1, const void *a2, const void *a3)
{
  v3[274] = a3;
  v3[273] = a1;
  memcpy(v3 + 2, a2, 0x388uLL);
  memcpy(v3 + 195, a3, 0x131uLL);

  return MEMORY[0x2822009F8](sub_240736184, 0, 0);
}

uint64_t sub_240736184()
{
  v5 = v0;
  memcpy(&__src[7], *(v0 + 2192), 0x131uLL);
  *(v0 + 1240) = 1;
  memcpy((v0 + 1241), __src, 0x138uLL);
  sub_240684CD4(v0 + 1560, v0 + 1872);
  v1 = swift_task_alloc();
  *(v0 + 2200) = v1;
  *v1 = v0;
  v1[1] = sub_240736260;
  v2 = *(v0 + 2184);

  return static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(v2, v0 + 16, (v0 + 1240));
}

uint64_t sub_240736260()
{
  v1 = *v0;
  v2 = *(*v0 + 2200);
  v5 = *v0;

  memcpy((v1 + 920), (v1 + 1240), 0x139uLL);
  sub_2405B8A50(v1 + 920, &qword_27E4BE478, &qword_240783178);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t AutomaticSetupModelExchange.processDiscoveryModel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processDiscoveryModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_240736404(const void *a1, uint64_t a2)
{
  v2[115] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3E8, &unk_240782B10);
  v2[116] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[117] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AuthenticationModel(0) - 8) + 64) + 15;
  v2[118] = swift_task_alloc();
  memcpy(v2 + 2, a1, 0x388uLL);

  return MEMORY[0x2822009F8](sub_2407364E4, 0, 0);
}

uint64_t sub_2407364E4()
{
  v1 = v0[117];
  sub_240745520(v0[115], &v1[*(v0[116] + 28)], type metadata accessor for AuthenticationModel);
  *v1 = 0;
  v2 = swift_task_alloc();
  v0[119] = v2;
  *v2 = v0;
  v2[1] = sub_2407365B0;
  v3 = v0[118];
  v4 = v0[117];

  return static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(v3, (v0 + 2), v4);
}

uint64_t sub_2407365B0()
{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 944);
  v3 = *(*v0 + 936);
  v5 = *v0;

  sub_2405B8A50(v3, &qword_27E4BE3E8, &unk_240782B10);
  sub_240745588(v2, type metadata accessor for AuthenticationModel);

  return MEMORY[0x2822009F8](sub_2407455F0, 0, 0);
}

uint64_t static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 280);
  *(v3 + 1928) = a3;
  *(v3 + 1920) = a1;
  v5 = *(*(type metadata accessor for AuthenticationModel.PreflightRepair(0) - 8) + 64) + 15;
  *(v3 + 1936) = swift_task_alloc();
  v6 = type metadata accessor for AuthenticationModel.State(0);
  *(v3 + 1944) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 1952) = swift_task_alloc();
  *(v3 + 1960) = swift_task_alloc();
  *(v3 + 1968) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = v4[1];
  *(v3 + 1984) = *v4;
  *(v3 + 2000) = v9;
  v10 = v4[3];
  *(v3 + 2016) = v4[2];
  *(v3 + 2032) = v10;
  v11 = v4[5];
  *(v3 + 2048) = v4[4];
  *(v3 + 2064) = v11;
  v12 = v4[7];
  *(v3 + 2080) = v4[6];
  *(v3 + 2096) = v12;
  v13 = v4[9];
  *(v3 + 2112) = v4[8];
  *(v3 + 2128) = v13;
  v14 = v4[11];
  *(v3 + 2144) = v4[10];
  *(v3 + 2160) = v14;
  v15 = v4[13];
  *(v3 + 2176) = v4[12];
  *(v3 + 2192) = v15;
  v16 = v4[15];
  *(v3 + 2208) = v4[14];
  *(v3 + 2224) = v16;
  v17 = v4[17];
  *(v3 + 2240) = v4[16];
  *(v3 + 2256) = v17;
  v18 = v4[19];
  *(v3 + 2272) = v4[18];
  *(v3 + 2288) = v18;
  v19 = v4[21];
  *(v3 + 2304) = v4[20];
  *(v3 + 2320) = v19;
  v20 = v4[23];
  *(v3 + 2336) = v4[22];
  *(v3 + 2352) = v20;
  v21 = v4[25];
  *(v3 + 2368) = v4[24];
  *(v3 + 1976) = v8;
  *(v3 + 2384) = v21;

  return MEMORY[0x2822009F8](sub_240736890, 0, 0);
}

{
  v4 = *(a2 + 720);
  *(v3 + 1888) = *(a2 + 704);
  *(v3 + 1904) = v4;
  v5 = *(a2 + 752);
  *(v3 + 1920) = *(a2 + 736);
  *(v3 + 1936) = v5;
  v6 = *(a2 + 784);
  *(v3 + 1952) = *(a2 + 768);
  *(v3 + 1968) = v6;
  v7 = *(a2 + 816);
  *(v3 + 1984) = *(a2 + 800);
  *(v3 + 2000) = v7;
  v8 = *(a2 + 848);
  *(v3 + 2016) = *(a2 + 832);
  *(v3 + 2032) = v8;
  v9 = *(a2 + 880);
  *(v3 + 2048) = *(a2 + 864);
  *(v3 + 1872) = a3;
  *(v3 + 1864) = a1;
  *(v3 + 1880) = *(a2 + 696);
  *(v3 + 2064) = v9;
  *(v3 + 2080) = *(a2 + 896);
  return MEMORY[0x2822009F8](sub_24073B3C0, 0, 0);
}

uint64_t sub_240736890()
{
  v1 = (v0 + 328);
  v2 = (v0 + 872);
  v3 = (v0 + 1192);
  v4 = *(v0 + 1976);
  v5 = *(v0 + 1944);
  v6 = *(v0 + 1928);
  v7 = *(v0 + 1920);
  v8 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3E8, &unk_240782B10);
  sub_240745520(&v6[*(v9 + 28)], v7, type metadata accessor for AuthenticationModel);
  v10 = *(type metadata accessor for AuthenticationModel(0) + 40);
  *(v0 + 116) = v10;
  sub_240745520(v7 + v10, v4, type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (v8)
      {
        sub_240745588(*(v0 + 1976), type metadata accessor for AuthenticationModel.State);
        goto LABEL_39;
      }

      v196 = (*(v0 + 2032) + **(v0 + 2032));
      v174 = *(*(v0 + 2032) + 4);
      v175 = swift_task_alloc();
      *(v0 + 2424) = v175;
      *v175 = v0;
      v175[1] = sub_240738468;
      v176 = *(v0 + 2040);
      goto LABEL_61;
    case 2u:
      v66 = *(v0 + 1976);
      v68 = *(v66 + 16);
      v67 = *(v66 + 32);
      *v1 = *v66;
      *(v0 + 344) = v68;
      *(v0 + 360) = v67;
      v70 = *(v66 + 64);
      v69 = *(v66 + 80);
      v71 = *(v66 + 48);
      *(v0 + 424) = *(v66 + 96);
      *(v0 + 392) = v70;
      *(v0 + 408) = v69;
      *(v0 + 376) = v71;
      if (v8)
      {
        v72 = *(v0 + 2128);
        v73 = *(v0 + 344);
        *(v0 + 16) = *v1;
        *(v0 + 32) = v73;
        *(v0 + 112) = *(v0 + 424);
        v74 = *(v0 + 408);
        *(v0 + 80) = *(v0 + 392);
        *(v0 + 96) = v74;
        v75 = *(v0 + 376);
        *(v0 + 48) = *(v0 + 360);
        *(v0 + 64) = v75;
        v195 = (v72 + *v72);
        v76 = v72[1];
        v77 = swift_task_alloc();
        *(v0 + 2440) = v77;
        *v77 = v0;
        v77[1] = sub_2407387AC;
        v78 = *(v0 + 2136);
        v14 = v0 + 120;
        v15 = v0 + 16;
        goto LABEL_35;
      }

      v157 = *(v0 + 2112);
      v158 = *(v0 + 344);
      *(v0 + 224) = *v1;
      *(v0 + 240) = v158;
      *(v0 + 320) = *(v0 + 424);
      v159 = *(v0 + 408);
      *(v0 + 288) = *(v0 + 392);
      *(v0 + 304) = v159;
      v160 = *(v0 + 376);
      *(v0 + 256) = *(v0 + 360);
      *(v0 + 272) = v160;
      v198 = (v157 + *v157);
      v161 = v157[1];
      v162 = swift_task_alloc();
      *(v0 + 2448) = v162;
      *v162 = v0;
      v162[1] = sub_240738998;
      v163 = *(v0 + 2120);
      v137 = v0 + 224;
      goto LABEL_57;
    case 3u:
      sub_240745588(*(v0 + 1976), type metadata accessor for AuthenticationModel.State);
      if (v8)
      {
        goto LABEL_39;
      }

      v196 = (*(v0 + 2080) + **(v0 + 2080));
      v82 = *(*(v0 + 2080) + 4);
      v83 = swift_task_alloc();
      *(v0 + 2456) = v83;
      *v83 = v0;
      v83[1] = sub_240738B34;
      v84 = *(v0 + 2088);
      goto LABEL_61;
    case 4u:
      v28 = *(v0 + 1976);
      *v3 = *v28;
      v29 = v28[4];
      v31 = v28[1];
      v30 = v28[2];
      *(v0 + 1240) = v28[3];
      *(v0 + 1256) = v29;
      *(v0 + 1208) = v31;
      *(v0 + 1224) = v30;
      if (v8)
      {
        v32 = v0 + 952;
        v33 = *(v0 + 2160);
        v34 = *(v0 + 1256);
        *(v0 + 1000) = *(v0 + 1240);
        *(v0 + 1016) = v34;
        v35 = *(v0 + 1224);
        *(v0 + 968) = *(v0 + 1208);
        *(v0 + 984) = v35;
        *(v0 + 952) = *v3;
        v195 = (v33 + *v33);
        v36 = v33[1];
        v37 = swift_task_alloc();
        *(v0 + 2464) = v37;
        *v37 = v0;
        v37[1] = sub_240738C30;
        v38 = *(v0 + 2168);
        v14 = v0 + 1032;
        goto LABEL_28;
      }

      v138 = v0 + 1112;
      v139 = *(v0 + 2144);
      v140 = *(v0 + 1256);
      *(v0 + 1160) = *(v0 + 1240);
      *(v0 + 1176) = v140;
      v141 = *(v0 + 1224);
      *(v0 + 1128) = *(v0 + 1208);
      *(v0 + 1144) = v141;
      *(v0 + 1112) = *v3;
      v198 = (v139 + *v139);
      v142 = v139[1];
      v143 = swift_task_alloc();
      *(v0 + 2472) = v143;
      *v143 = v0;
      v143[1] = sub_240738E1C;
      v144 = *(v0 + 2152);
      goto LABEL_53;
    case 5u:
      v97 = *(v0 + 1976);
      *v2 = *v97;
      v98 = v97[4];
      v100 = v97[1];
      v99 = v97[2];
      *(v0 + 920) = v97[3];
      *(v0 + 936) = v98;
      *(v0 + 888) = v100;
      *(v0 + 904) = v99;
      if (v8)
      {
        v32 = v0 + 1272;
        v101 = *(v0 + 2192);
        v102 = *(v0 + 936);
        *(v0 + 1320) = *(v0 + 920);
        *(v0 + 1336) = v102;
        v103 = *(v0 + 904);
        *(v0 + 1288) = *(v0 + 888);
        *(v0 + 1304) = v103;
        *(v0 + 1272) = *v2;
        v195 = (v101 + *v101);
        v104 = v101[1];
        v105 = swift_task_alloc();
        *(v0 + 2480) = v105;
        *v105 = v0;
        v105[1] = sub_240738FB8;
        v106 = *(v0 + 2200);
        v14 = v0 + 1352;
LABEL_28:
        v15 = v32;
        goto LABEL_35;
      }

      v138 = v0 + 1432;
      v177 = *(v0 + 2176);
      v178 = *(v0 + 936);
      *(v0 + 1480) = *(v0 + 920);
      *(v0 + 1496) = v178;
      v179 = *(v0 + 904);
      *(v0 + 1448) = *(v0 + 888);
      *(v0 + 1464) = v179;
      *(v0 + 1432) = *v2;
      v198 = (v177 + *v177);
      v180 = v177[1];
      v181 = swift_task_alloc();
      *(v0 + 2488) = v181;
      *v181 = v0;
      v181[1] = sub_2407391A4;
      v182 = *(v0 + 2184);
LABEL_53:
      v137 = v138;
      goto LABEL_57;
    case 6u:
      sub_240745588(*(v0 + 1976), type metadata accessor for AuthenticationModel.State);
      if (v8)
      {
        goto LABEL_39;
      }

      v196 = (*(v0 + 2064) + **(v0 + 2064));
      v112 = *(*(v0 + 2064) + 4);
      v113 = swift_task_alloc();
      *(v0 + 2496) = v113;
      *v113 = v0;
      v113[1] = sub_240739340;
      v114 = *(v0 + 2072);
      goto LABEL_61;
    case 7u:
      v85 = *(v0 + 1976);
      v86 = *v85;
      *(v0 + 2504) = *v85;
      v87 = v85[1];
      *(v0 + 2512) = v87;
      v88 = v85[2];
      *(v0 + 2520) = v88;
      v89 = v85[3];
      *(v0 + 2528) = v89;
      v90 = v85[4];
      *(v0 + 2536) = v90;
      if (v8)
      {
        *&v91 = v88;
        *(&v91 + 1) = v89;
        *&v92 = v86;
        *(&v92 + 1) = v87;
        v93 = *(v0 + 2224);
        *(v0 + 1552) = v92;
        *(v0 + 1568) = v91;
        *(v0 + 1584) = v90;
        v195 = (v93 + *v93);
        v94 = v93[1];
        v95 = swift_task_alloc();
        *(v0 + 2544) = v95;
        *v95 = v0;
        v95[1] = sub_24073943C;
        v96 = *(v0 + 2232);
        v14 = v0 + 1592;
        v15 = v0 + 1552;
        goto LABEL_35;
      }

      v164 = *(v0 + 2208);
      *&v165 = v86;
      *(&v165 + 1) = v87;
      *&v166 = v88;
      *(&v166 + 1) = v89;
      *(v0 + 1512) = v165;
      *(v0 + 1528) = v166;
      *(v0 + 1544) = v90;
      v198 = (v164 + *v164);
      v167 = v164[1];
      v168 = swift_task_alloc();
      *(v0 + 2552) = v168;
      *v168 = v0;
      v168[1] = sub_240739664;
      v169 = *(v0 + 2216);
      v137 = v0 + 1512;
      goto LABEL_57;
    case 8u:
      sub_240745588(*(v0 + 1976), type metadata accessor for AuthenticationModel.State);
      if (v8)
      {
        goto LABEL_39;
      }

      v196 = (*(v0 + 2096) + **(v0 + 2096));
      v192 = *(*(v0 + 2096) + 4);
      v193 = swift_task_alloc();
      *(v0 + 2560) = v193;
      *v193 = v0;
      v193[1] = sub_240739820;
      v194 = *(v0 + 2104);
      goto LABEL_61;
    case 9u:
      v55 = *(v0 + 1976);
      v56 = *v55;
      *(v0 + 2568) = *v55;
      v57 = v55[1];
      *(v0 + 2576) = v57;
      v58 = v55[2];
      *(v0 + 2584) = v58;
      v59 = v55[3];
      *(v0 + 2592) = v59;
      if (v8)
      {
        v60 = *(v0 + 2256);
        *&v61 = v56;
        *(&v61 + 1) = v57;
        *&v62 = v58;
        *(&v62 + 1) = v59;
        *(v0 + 1648) = v62;
        *(v0 + 1632) = v61;
        v195 = (v60 + *v60);
        v63 = v60[1];
        v64 = swift_task_alloc();
        *(v0 + 2600) = v64;
        *v64 = v0;
        v64[1] = sub_24073991C;
        v65 = *(v0 + 2264);
        v14 = v0 + 1664;
        v15 = v0 + 1632;
        goto LABEL_35;
      }

      v151 = *(v0 + 2240);
      *&v152 = v56;
      *(&v152 + 1) = v57;
      *&v153 = v58;
      *(&v153 + 1) = v59;
      *(v0 + 1712) = v153;
      *(v0 + 1696) = v152;
      v198 = (v151 + *v151);
      v154 = v151[1];
      v155 = swift_task_alloc();
      *(v0 + 2608) = v155;
      *v155 = v0;
      v155[1] = sub_240739B2C;
      v156 = *(v0 + 2248);
      v137 = v0 + 1696;
      goto LABEL_57;
    case 0xAu:
      v115 = *(v0 + 1976);
      v116 = *v115;
      *(v0 + 2616) = *v115;
      v117 = v115[1];
      *(v0 + 2624) = v117;
      v118 = v115[2];
      *(v0 + 2632) = v118;
      v119 = v115[3];
      *(v0 + 2640) = v119;
      if (v8)
      {
        v120 = *(v0 + 2288);
        *&v121 = v116;
        *(&v121 + 1) = v117;
        *&v122 = v118;
        *(&v122 + 1) = v119;
        *(v0 + 1744) = v122;
        *(v0 + 1728) = v121;
        v195 = (v120 + *v120);
        v123 = v120[1];
        v124 = swift_task_alloc();
        *(v0 + 2648) = v124;
        *v124 = v0;
        v124[1] = sub_240739CE0;
        v125 = *(v0 + 2296);
        v14 = v0 + 1760;
        v15 = v0 + 1728;
        goto LABEL_35;
      }

      v186 = *(v0 + 2272);
      *&v187 = v116;
      *(&v187 + 1) = v117;
      *&v188 = v118;
      *(&v188 + 1) = v119;
      *(v0 + 1808) = v188;
      *(v0 + 1792) = v187;
      v198 = (v186 + *v186);
      v189 = v186[1];
      v190 = swift_task_alloc();
      *(v0 + 2656) = v190;
      *v190 = v0;
      v190[1] = sub_240739EF0;
      v191 = *(v0 + 2280);
      v137 = v0 + 1792;
      goto LABEL_57;
    case 0xBu:
      v19 = *(v0 + 1976);
      v20 = *v19;
      *(v0 + 2664) = *v19;
      v22 = v19[1];
      v21 = v19[2];
      *(v0 + 2672) = v21;
      v23 = *(v19 + 24);
      if (v8)
      {
        v24 = *(v0 + 2320);
        *(v0 + 1824) = v20;
        *(v0 + 1832) = v22;
        *(v0 + 1840) = v21;
        *(v0 + 1848) = v23;
        v195 = (v24 + *v24);
        v25 = v24[1];
        v26 = swift_task_alloc();
        *(v0 + 2680) = v26;
        *v26 = v0;
        v26[1] = sub_24073A0A4;
        v27 = *(v0 + 2328);
        v14 = v0 + 1856;
        v15 = v0 + 1824;
        goto LABEL_35;
      }

      v133 = *(v0 + 2304);
      *(v0 + 1888) = v20;
      *(v0 + 1896) = v22;
      *(v0 + 1904) = v21;
      *(v0 + 1912) = v23;
      v198 = (v133 + *v133);
      v134 = v133[1];
      v135 = swift_task_alloc();
      *(v0 + 2688) = v135;
      *v135 = v0;
      v135[1] = sub_24073A2A8;
      v136 = *(v0 + 2312);
      v137 = v0 + 1888;
      goto LABEL_57;
    case 0xCu:
      v39 = *(v0 + 1960);
      *(v0 + 2696) = **(v0 + 1976);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v41 = swift_projectBox();
      v42 = *(v41 + 16);
      *(v0 + 432) = *v41;
      *(v0 + 448) = v42;
      v44 = *(v41 + 48);
      v43 = *(v41 + 64);
      v45 = *(v41 + 32);
      *(v0 + 512) = *(v41 + 80);
      *(v0 + 480) = v44;
      *(v0 + 496) = v43;
      *(v0 + 464) = v45;
      sub_240745520(v41 + *(v40 + 48), v39, type metadata accessor for AuthenticationModel.State);
      if (v8)
      {
        v46 = *(v0 + 2352);
        v47 = *(v0 + 480);
        *(v0 + 728) = *(v0 + 464);
        *(v0 + 744) = v47;
        *(v0 + 760) = *(v0 + 496);
        *(v0 + 776) = *(v0 + 512);
        v48 = *(v0 + 448);
        *(v0 + 696) = *(v0 + 432);
        *(v0 + 712) = v48;
        sub_2405AE2A4(v0 + 432, v0 + 784);
        v197 = (v46 + *v46);
        v49 = v46[1];
        v50 = swift_task_alloc();
        *(v0 + 2704) = v50;
        *v50 = v0;
        v50[1] = sub_24073A44C;
        v51 = *(v0 + 2360);
        v52 = *(v0 + 1968);
        v53 = *(v0 + 1960);

        return v197(v52, v0 + 696, v53);
      }

      v145 = *(v0 + 2336);
      v146 = *(v0 + 480);
      *(v0 + 552) = *(v0 + 464);
      *(v0 + 568) = v146;
      *(v0 + 584) = *(v0 + 496);
      *(v0 + 600) = *(v0 + 512);
      v147 = *(v0 + 448);
      *(v0 + 520) = *(v0 + 432);
      *(v0 + 536) = v147;
      sub_2405AE2A4(v0 + 432, v0 + 608);
      v199 = (v145 + *v145);
      v148 = v145[1];
      v149 = swift_task_alloc();
      *(v0 + 2712) = v149;
      *v149 = v0;
      v149[1] = sub_24073A63C;
      v150 = *(v0 + 2344);
      v15 = *(v0 + 1960);
      v14 = v0 + 520;
      v126 = v199;

      return v126(v14, v15);
    case 0xDu:
      v107 = *(v0 + 1952);
      *(v0 + 2720) = **(v0 + 1976);
      v108 = swift_projectBox();
      sub_240745520(v108, v107, type metadata accessor for AuthenticationModel.State);
      if (v8)
      {
        v195 = (*(v0 + 2384) + **(v0 + 2384));
        v109 = *(*(v0 + 2384) + 4);
        v110 = swift_task_alloc();
        *(v0 + 2728) = v110;
        *v110 = v0;
        v110[1] = sub_24073A800;
        v111 = *(v0 + 2392);
        v14 = *(v0 + 1968);
        v15 = *(v0 + 1952);
        goto LABEL_35;
      }

      v198 = (*(v0 + 2368) + **(v0 + 2368));
      v183 = *(*(v0 + 2368) + 4);
      v184 = swift_task_alloc();
      *(v0 + 2736) = v184;
      *v184 = v0;
      v184[1] = sub_24073A9E8;
      v185 = *(v0 + 2376);
      v173 = *(v0 + 1952);
      goto LABEL_55;
    case 0xEu:
      if (v8)
      {
        goto LABEL_39;
      }

      v196 = (*(v0 + 1984) + **(v0 + 1984));
      v16 = *(*(v0 + 1984) + 4);
      v17 = swift_task_alloc();
      *(v0 + 2400) = v17;
      *v17 = v0;
      v17[1] = sub_240737FCC;
      v18 = *(v0 + 1992);
      goto LABEL_61;
    case 0xFu:
      if (v8)
      {
LABEL_39:
        v127 = *(v0 + 1976);
        v128 = *(v0 + 1968);
        v129 = *(v0 + 1960);
        v130 = *(v0 + 1952);
        v131 = *(v0 + 1936);

        v132 = *(v0 + 8);

        return v132();
      }

      else
      {
        v196 = (*(v0 + 2048) + **(v0 + 2048));
        v79 = *(*(v0 + 2048) + 4);
        v80 = swift_task_alloc();
        *(v0 + 2432) = v80;
        *v80 = v0;
        v80[1] = sub_240738618;
        v81 = *(v0 + 2056);
LABEL_61:

        return v196();
      }

    default:
      sub_240741B14(*(v0 + 1976), *(v0 + 1936));
      if (v8)
      {
        v195 = (*(v0 + 2016) + **(v0 + 2016));
        v11 = *(*(v0 + 2016) + 4);
        v12 = swift_task_alloc();
        *(v0 + 2408) = v12;
        *v12 = v0;
        v12[1] = sub_2407380C8;
        v13 = *(v0 + 2024);
        v14 = *(v0 + 1968);
        v15 = *(v0 + 1936);
LABEL_35:
        v126 = v195;

        return v126(v14, v15);
      }

      else
      {
        v198 = (*(v0 + 2000) + **(v0 + 2000));
        v170 = *(*(v0 + 2000) + 4);
        v171 = swift_task_alloc();
        *(v0 + 2416) = v171;
        *v171 = v0;
        v171[1] = sub_2407382B8;
        v172 = *(v0 + 2008);
        v173 = *(v0 + 1936);
LABEL_55:
        v137 = v173;
LABEL_57:

        return v198(v137);
      }
  }
}

uint64_t sub_240737FCC()
{
  v1 = *(*v0 + 2400);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407455EC, 0, 0);
}

uint64_t sub_2407380C8()
{
  v1 = *(*v0 + 2408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407381C4, 0, 0);
}

uint64_t sub_2407381C4()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1920);
  sub_240745588(*(v0 + 1936), type metadata accessor for AuthenticationModel.PreflightRepair);
  swift_storeEnumTagMultiPayload();
  sub_2407454B8(v2, v4 + v1, type metadata accessor for AuthenticationModel.State);
  v5 = *(v0 + 1976);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1936);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2407382B8()
{
  v1 = *(*v0 + 2416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407383B4, 0, 0);
}

uint64_t sub_2407383B4()
{
  sub_240745588(v0[242], type metadata accessor for AuthenticationModel.PreflightRepair);
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[245];
  v4 = v0[244];
  v5 = v0[242];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240738468()
{
  v1 = *(*v0 + 2424);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240738564, 0, 0);
}

uint64_t sub_240738564()
{
  sub_240745588(v0[247], type metadata accessor for AuthenticationModel.State);
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[245];
  v4 = v0[244];
  v5 = v0[242];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240738618()
{
  v1 = *(*v0 + 2432);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240738714, 0, 0);
}

uint64_t sub_240738714()
{
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[245];
  v4 = v0[244];
  v5 = v0[242];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2407387AC()
{
  v1 = *(*v0 + 2440);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407388A8, 0, 0);
}

uint64_t sub_2407388A8()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1920);
  sub_2405AE36C(v0 + 328);
  memmove(v2, (v0 + 120), 0x61uLL);
  swift_storeEnumTagMultiPayload();
  sub_2407454B8(v2, v4 + v1, type metadata accessor for AuthenticationModel.State);
  v5 = *(v0 + 1976);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1936);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_240738998()
{
  v1 = *(*v0 + 2448);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240738A94, 0, 0);
}

uint64_t sub_240738A94()
{
  sub_2405AE36C((v0 + 41));
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[245];
  v4 = v0[244];
  v5 = v0[242];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240738B34()
{
  v1 = *(*v0 + 2456);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407455EC, 0, 0);
}

uint64_t sub_240738C30()
{
  v1 = *(*v0 + 2464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240738D2C, 0, 0);
}

uint64_t sub_240738D2C()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1920);
  sub_2405AE30C(v0 + 1192);
  memmove(v2, (v0 + 1032), 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_2407454B8(v2, v4 + v1, type metadata accessor for AuthenticationModel.State);
  v5 = *(v0 + 1976);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1936);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_240738E1C()
{
  v1 = *(*v0 + 2472);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240738F18, 0, 0);
}

uint64_t sub_240738F18()
{
  sub_2405AE30C((v0 + 149));
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[245];
  v4 = v0[244];
  v5 = v0[242];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240738FB8()
{
  v1 = *(*v0 + 2480);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407390B4, 0, 0);
}

uint64_t sub_2407390B4()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1920);
  sub_2405AE33C(v0 + 872);
  memmove(v2, (v0 + 1352), 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_2407454B8(v2, v4 + v1, type metadata accessor for AuthenticationModel.State);
  v5 = *(v0 + 1976);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1936);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2407391A4()
{
  v1 = *(*v0 + 2488);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407392A0, 0, 0);
}

uint64_t sub_2407392A0()
{
  sub_2405AE33C((v0 + 109));
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[245];
  v4 = v0[244];
  v5 = v0[242];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240739340()
{
  v1 = *(*v0 + 2496);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407455EC, 0, 0);
}

uint64_t sub_24073943C()
{
  v1 = *(*v0 + 2544);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240739538, 0, 0);
}

uint64_t sub_240739538()
{
  v1 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v3 = *(v0 + 2520);
  v4 = *(v0 + 2512);
  v5 = *(v0 + 116);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1944);
  v8 = *(v0 + 1920);

  v9 = *(v0 + 1624);
  v10 = *(v0 + 1608);
  *v6 = *(v0 + 1592);
  *(v6 + 16) = v10;
  *(v6 + 32) = v9;
  swift_storeEnumTagMultiPayload();
  sub_2407454B8(v6, v8 + v5, type metadata accessor for AuthenticationModel.State);
  v11 = *(v0 + 1976);
  v12 = *(v0 + 1968);
  v13 = *(v0 + 1960);
  v14 = *(v0 + 1952);
  v15 = *(v0 + 1936);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_240739664()
{
  v1 = *(*v0 + 2552);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240739760, 0, 0);
}

uint64_t sub_240739760()
{
  v1 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v3 = *(v0 + 2520);
  v4 = *(v0 + 2512);

  v5 = *(v0 + 1976);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1936);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_240739820()
{
  v1 = *(*v0 + 2560);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407455EC, 0, 0);
}

uint64_t sub_24073991C()
{
  v1 = *(*v0 + 2600);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240739A18, 0, 0);
}

uint64_t sub_240739A18()
{
  v1 = *(v0 + 2592);
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2576);
  v4 = *(v0 + 116);
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1944);
  v7 = *(v0 + 1920);

  v8 = *(v0 + 1680);
  *v5 = *(v0 + 1664);
  v5[1] = v8;
  swift_storeEnumTagMultiPayload();
  sub_2407454B8(v5, v7 + v4, type metadata accessor for AuthenticationModel.State);
  v9 = *(v0 + 1976);
  v10 = *(v0 + 1968);
  v11 = *(v0 + 1960);
  v12 = *(v0 + 1952);
  v13 = *(v0 + 1936);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_240739B2C()
{
  v1 = *(*v0 + 2608);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240739C28, 0, 0);
}

uint64_t sub_240739C28()
{
  v1 = *(v0 + 2592);
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2576);

  v4 = *(v0 + 1976);
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1936);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_240739CE0()
{
  v1 = *(*v0 + 2648);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240739DDC, 0, 0);
}

uint64_t sub_240739DDC()
{
  v1 = *(v0 + 2640);
  v2 = *(v0 + 2632);
  v3 = *(v0 + 2624);
  v4 = *(v0 + 116);
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1944);
  v7 = *(v0 + 1920);

  v8 = *(v0 + 1776);
  *v5 = *(v0 + 1760);
  v5[1] = v8;
  swift_storeEnumTagMultiPayload();
  sub_2407454B8(v5, v7 + v4, type metadata accessor for AuthenticationModel.State);
  v9 = *(v0 + 1976);
  v10 = *(v0 + 1968);
  v11 = *(v0 + 1960);
  v12 = *(v0 + 1952);
  v13 = *(v0 + 1936);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_240739EF0()
{
  v1 = *(*v0 + 2656);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240739FEC, 0, 0);
}

uint64_t sub_240739FEC()
{
  v1 = *(v0 + 2640);
  v2 = *(v0 + 2632);
  v3 = *(v0 + 2624);

  v4 = *(v0 + 1976);
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1936);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24073A0A4()
{
  v1 = *(*v0 + 2680);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073A1A0, 0, 0);
}

uint64_t sub_24073A1A0()
{
  v1 = *(v0 + 2672);
  v2 = *(v0 + 2664);
  v3 = *(v0 + 116);
  v4 = *(v0 + 1968);
  v5 = *(v0 + 1944);
  v6 = *(v0 + 1920);

  v7 = *(v0 + 1872);
  v8 = *(v0 + 1880);
  *v4 = *(v0 + 1856);
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  swift_storeEnumTagMultiPayload();
  sub_2407454B8(v4, v6 + v3, type metadata accessor for AuthenticationModel.State);
  v9 = *(v0 + 1976);
  v10 = *(v0 + 1968);
  v11 = *(v0 + 1960);
  v12 = *(v0 + 1952);
  v13 = *(v0 + 1936);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24073A2A8()
{
  v1 = *(*v0 + 2688);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073A3A4, 0, 0);
}

uint64_t sub_24073A3A4()
{
  v1 = v0[334];
  v2 = v0[333];

  v3 = v0[247];
  v4 = v0[246];
  v5 = v0[245];
  v6 = v0[244];
  v7 = v0[242];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24073A44C()
{
  v1 = *(*v0 + 2704);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073A548, 0, 0);
}

uint64_t sub_24073A548()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1960);
  v4 = *(v0 + 1920);
  sub_2405AE2DC(v0 + 432);
  sub_240745588(v3, type metadata accessor for AuthenticationModel.State);
  sub_2407454B8(v2, v4 + v1, type metadata accessor for AuthenticationModel.State);
  v5 = *(v0 + 2696);

  v6 = *(v0 + 1976);
  v7 = *(v0 + 1968);
  v8 = *(v0 + 1960);
  v9 = *(v0 + 1952);
  v10 = *(v0 + 1936);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24073A63C()
{
  v1 = *(*v0 + 2712);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073A738, 0, 0);
}

uint64_t sub_24073A738()
{
  v1 = v0[245];
  sub_2405AE2DC((v0 + 54));
  sub_240745588(v1, type metadata accessor for AuthenticationModel.State);
  v2 = v0[337];

  v3 = v0[247];
  v4 = v0[246];
  v5 = v0[245];
  v6 = v0[244];
  v7 = v0[242];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24073A800()
{
  v1 = *(*v0 + 2728);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073A8FC, 0, 0);
}

uint64_t sub_24073A8FC()
{
  v1 = *(v0 + 2720);
  v2 = *(v0 + 116);
  v3 = *(v0 + 1968);
  v4 = *(v0 + 1920);
  sub_240745588(*(v0 + 1952), type metadata accessor for AuthenticationModel.State);
  sub_2407454B8(v3, v4 + v2, type metadata accessor for AuthenticationModel.State);

  v5 = *(v0 + 1976);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1936);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24073A9E8()
{
  v1 = *(*v0 + 2736);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073AAE4, 0, 0);
}

uint64_t sub_24073AAE4()
{
  v1 = v0[340];
  sub_240745588(v0[244], type metadata accessor for AuthenticationModel.State);

  v2 = v0[247];
  v3 = v0[246];
  v4 = v0[245];
  v5 = v0[244];
  v6 = v0[242];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24073ABA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 40);

  *(a2 + 32) = &unk_240783128;
  *(a2 + 40) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationModel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_24073AC9C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[116] = a3;
  v3[115] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3E8, &unk_240782B10);
  v3[117] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[118] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x388uLL);

  return MEMORY[0x2822009F8](sub_24073AD54, 0, 0);
}

uint64_t sub_24073AD54()
{
  v1 = v0[118];
  sub_240745520(v0[116], &v1[*(v0[117] + 28)], type metadata accessor for AuthenticationModel);
  *v1 = 1;
  v2 = swift_task_alloc();
  v0[119] = v2;
  *v2 = v0;
  v2[1] = sub_24073AE24;
  v3 = v0[118];
  v4 = v0[115];

  return static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(v4, (v0 + 2), v3);
}

uint64_t sub_24073AE24()
{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 944);
  v5 = *v0;

  sub_2405B8A50(v2, &qword_27E4BE3E8, &unk_240782B10);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationModel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24073AFD4(const void *a1, uint64_t a2)
{
  v2[115] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BE3F0, &qword_240782B28);
  v2[116] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[117] = swift_task_alloc();
  v6 = *(*(type metadata accessor for SignInModel() - 8) + 64) + 15;
  v2[118] = swift_task_alloc();
  memcpy(v2 + 2, a1, 0x388uLL);

  return MEMORY[0x2822009F8](sub_24073B0B4, 0, 0);
}

uint64_t sub_24073B0B4()
{
  v1 = v0[117];
  sub_240745520(v0[115], &v1[*(v0[116] + 28)], type metadata accessor for SignInModel);
  *v1 = 0;
  v2 = swift_task_alloc();
  v0[119] = v2;
  *v2 = v0;
  v2[1] = sub_24073B180;
  v3 = v0[118];
  v4 = v0[117];

  return static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(v3, (v0 + 2), v4);
}

uint64_t sub_24073B180()
{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 944);
  v3 = *(*v0 + 936);
  v5 = *v0;

  sub_2405B8A50(v3, qword_27E4BE3F0, &qword_240782B28);
  sub_240745588(v2, type metadata accessor for SignInModel);

  return MEMORY[0x2822009F8](sub_24073B2D8, 0, 0);
}

uint64_t sub_24073B2D8()
{
  v1 = v0[118];
  v2 = v0[117];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24073B3C0()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1864);
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BE3F0, &qword_240782B28);
  sub_240745520(&v1[*(v4 + 28)], v2, type metadata accessor for SignInModel);
  v5 = *(type metadata accessor for SignInModel() + 76);
  *(v0 + 116) = v5;
  v6 = (v2 + v5);
  v7 = *(v6 + 96);
  v9 = v6[4];
  v8 = v6[5];
  *(v0 + 64) = v6[3];
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  *(v0 + 112) = v7;
  v11 = v6[1];
  v10 = v6[2];
  *(v0 + 16) = *v6;
  *(v0 + 32) = v11;
  *(v0 + 48) = v10;
  v12 = *(v0 + 16);
  *(v0 + 2088) = v12;
  v13 = *(v0 + 24);
  *(v0 + 113) = v13;
  v14 = *(v0 + 25);
  *(v0 + 114) = v14;
  v15 = *(v0 + 30);
  v16 = *(v0 + 26);
  v17 = v16 | (v15 << 32);
  *(v0 + 2100) = v15;
  *(v0 + 2096) = v16;
  v19 = *(v0 + 32);
  v18 = *(v0 + 40);
  *(v0 + 2104) = v19;
  *(v0 + 2112) = v18;
  v20 = *(v0 + 48);
  v21 = *(v0 + 49) | ((*(v0 + 53) | (*(v0 + 55) << 16)) << 32);
  v22 = *(v0 + 56);
  v23 = *(v0 + 72);
  v24 = *(v0 + 88);
  v25 = v24 >> 61;
  if ((v24 >> 61) <= 3)
  {
    if (v25 <= 1)
    {
      if (!v25)
      {
        if (v3)
        {
          v26 = *(v0 + 1912);
          *(v0 + 1664) = v12;
          *(v0 + 1672) = v13;
          *(v0 + 1673) = v14;
          *(v0 + 1674) = v17;
          *(v0 + 1678) = WORD2(v17);
          *(v0 + 1680) = v19;
          *(v0 + 1688) = v18;
          *(v0 + 1696) = v20;
          *(v0 + 1697) = v21;
          *(v0 + 1703) = BYTE6(v21);
          *(v0 + 1701) = WORD2(v21);
          *(v0 + 1704) = v22;
          *(v0 + 1720) = v23;
          v28 = v6[4];
          v27 = v6[5];
          v29 = v6[3];
          *(v0 + 1464) = *(v6 + 96);
          *(v0 + 1432) = v28;
          *(v0 + 1448) = v27;
          *(v0 + 1416) = v29;
          v31 = v6[1];
          v30 = v6[2];
          *(v0 + 1368) = *v6;
          *(v0 + 1384) = v31;
          *(v0 + 1400) = v30;
          *(v0 + 1440) &= 0x1FFFFFFFFFFFFFFFuLL;
          sub_2406E902C(v0 + 1368, v0 + 1728);
          v117 = (v26 + *v26);
          v32 = v26[1];
          v33 = swift_task_alloc();
          *(v0 + 2128) = v33;
          *v33 = v0;
          v33[1] = sub_24073C2C0;
          v34 = *(v0 + 1920);
          v35 = v0 + 1600;
          v36 = v0 + 1664;
LABEL_24:

          return v117(v35, v36);
        }

        v83 = *(v0 + 1896);
        *(v0 + 1472) = v12;
        *(v0 + 1480) = v13;
        *(v0 + 1481) = v14;
        *(v0 + 1482) = v17;
        *(v0 + 1486) = WORD2(v17);
        *(v0 + 1488) = v19;
        *(v0 + 1496) = v18;
        *(v0 + 1504) = v20;
        *(v0 + 1505) = v21;
        *(v0 + 1511) = BYTE6(v21);
        *(v0 + 1509) = WORD2(v21);
        *(v0 + 1512) = v22;
        *(v0 + 1528) = v23;
        v85 = v6[4];
        v84 = v6[5];
        v86 = v6[3];
        *(v0 + 1256) = *(v6 + 96);
        *(v0 + 1224) = v85;
        *(v0 + 1240) = v84;
        *(v0 + 1208) = v86;
        v88 = v6[1];
        v87 = v6[2];
        *(v0 + 1160) = *v6;
        *(v0 + 1176) = v88;
        *(v0 + 1192) = v87;
        *(v0 + 1232) &= 0x1FFFFFFFFFFFFFFFuLL;
        sub_2406E902C(v0 + 1160, v0 + 1536);
        v120 = (v83 + *v83);
        v89 = v83[1];
        v90 = swift_task_alloc();
        *(v0 + 2136) = v90;
        *v90 = v0;
        v90[1] = sub_24073C498;
        v91 = *(v0 + 1904);
        v92 = v0 + 1472;
        goto LABEL_38;
      }

      if ((v3 & 1) == 0)
      {
        v118 = (*(v0 + 1928) + **(v0 + 1928));
        v61 = *(*(v0 + 1928) + 4);
        v62 = swift_task_alloc();
        *(v0 + 2144) = v62;
        *v62 = v0;
        v62[1] = sub_24073C5F4;
        v63 = *(v0 + 1936);
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (v25 != 2)
    {
      if (v3)
      {
        v74 = *(v0 + 1976);
        *(v0 + 1840) = v12;
        *(v0 + 1848) = v13 & 1;
        *(v0 + 1849) = v14 & 1;
        *(v0 + 1856) = v19;
        v75 = v12;
        v76 = v19;
        v117 = (v74 + *v74);
        v77 = v74[1];
        v78 = swift_task_alloc();
        *(v0 + 2184) = v78;
        *v78 = v0;
        v78[1] = sub_24073CBF8;
        v79 = *(v0 + 1984);
        v35 = v0 + 1816;
        v36 = v0 + 1840;
        goto LABEL_24;
      }

      v107 = *(v0 + 1960);
      *(v0 + 1792) = v12;
      *(v0 + 1800) = v13 & 1;
      *(v0 + 1801) = v14 & 1;
      *(v0 + 1808) = v19;
      v108 = v12;
      v109 = v19;
      v120 = (v107 + *v107);
      v110 = v107[1];
      v111 = swift_task_alloc();
      *(v0 + 2192) = v111;
      *v111 = v0;
      v111[1] = sub_24073CDD4;
      v112 = *(v0 + 1968);
      v92 = v0 + 1792;
LABEL_38:

      return v120(v92);
    }

    if ((v3 & 1) == 0)
    {
      v118 = (*(v0 + 1944) + **(v0 + 1944));
      v44 = *(*(v0 + 1944) + 4);
      v45 = swift_task_alloc();
      *(v0 + 2152) = v45;
      *v45 = v0;
      v45[1] = sub_24073C6E8;
      v46 = *(v0 + 1952);
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  v37 = *(v0 + 80);
  v39 = *(v0 + 96);
  v38 = *(v0 + 104);
  v40 = *(v0 + 112);
  if (v25 <= 5)
  {
    if (v25 != 4)
    {
      v64 = v24 & 0x1FFFFFFFFFFFFFFFLL;
      if (v3)
      {
        v65 = *(v0 + 2056);
        *(v0 + 744) = v12;
        *(v0 + 752) = v13;
        *(v0 + 753) = v14;
        *(v0 + 754) = v17;
        *(v0 + 758) = WORD2(v17);
        *(v0 + 760) = v19;
        *(v0 + 768) = v18;
        *(v0 + 776) = v20;
        *(v0 + 777) = v21;
        *(v0 + 783) = BYTE6(v21);
        *(v0 + 781) = WORD2(v21);
        *(v0 + 784) = v22;
        *(v0 + 800) = v23;
        *(v0 + 808) = v37;
        *(v0 + 816) = v64;
        *(v0 + 824) = v39;
        *(v0 + 832) = v38;
        *(v0 + 840) = v40;
        v66 = *v6;
        v67 = v6[2];
        *(v0 + 552) = v6[1];
        *(v0 + 568) = v67;
        *(v0 + 536) = v66;
        v68 = v6[3];
        v69 = v6[4];
        v70 = v6[5];
        *(v0 + 632) = *(v6 + 96);
        *(v0 + 600) = v69;
        *(v0 + 616) = v70;
        *(v0 + 584) = v68;
        *(v0 + 608) &= 0x1FFFFFFFFFFFFFFFuLL;
        sub_24065F6F4(v0 + 536, v0 + 848);
        v117 = (v65 + *v65);
        v71 = v65[1];
        v72 = swift_task_alloc();
        *(v0 + 2208) = v72;
        *v72 = v0;
        v72[1] = sub_24073CFC4;
        v73 = *(v0 + 2064);
        v35 = v0 + 640;
        v36 = v0 + 744;
        goto LABEL_24;
      }

      v98 = *(v0 + 2040);
      *(v0 + 224) = v12;
      *(v0 + 232) = v13;
      *(v0 + 233) = v14;
      *(v0 + 234) = v17;
      *(v0 + 238) = WORD2(v17);
      *(v0 + 240) = v19;
      *(v0 + 248) = v18;
      *(v0 + 256) = v20;
      *(v0 + 257) = v21;
      *(v0 + 263) = BYTE6(v21);
      *(v0 + 261) = WORD2(v21);
      *(v0 + 264) = v22;
      *(v0 + 280) = v23;
      *(v0 + 288) = v37;
      *(v0 + 296) = v64;
      *(v0 + 304) = v39;
      *(v0 + 312) = v38;
      *(v0 + 320) = v40;
      v99 = *v6;
      v100 = v6[1];
      *(v0 + 152) = v6[2];
      *(v0 + 136) = v100;
      *(v0 + 120) = v99;
      v101 = v6[3];
      v102 = v6[4];
      v103 = v6[5];
      *(v0 + 216) = *(v6 + 96);
      *(v0 + 200) = v103;
      *(v0 + 184) = v102;
      *(v0 + 168) = v101;
      *(v0 + 192) &= 0x1FFFFFFFFFFFFFFFuLL;
      sub_24065F6F4(v0 + 120, v0 + 328);
      v120 = (v98 + *v98);
      v104 = v98[1];
      v105 = swift_task_alloc();
      *(v0 + 2216) = v105;
      *v105 = v0;
      v105[1] = sub_24073D1CC;
      v106 = *(v0 + 2048);
      v92 = v0 + 224;
      goto LABEL_38;
    }

    if ((v3 & 1) == 0)
    {
      v118 = (*(v0 + 1992) + **(v0 + 1992));
      v41 = *(*(v0 + 1992) + 4);
      v42 = swift_task_alloc();
      *(v0 + 2200) = v42;
      *v42 = v0;
      v42[1] = sub_24073CED0;
      v43 = *(v0 + 2000);
LABEL_46:

      return v118();
    }

LABEL_42:
    v113 = *(v0 + 8);

    return v113(v22);
  }

  v47 = v17 << 16;
  if (v25 != 6)
  {
    if (*(v0 + 112) || v24 != 0xE000000000000000 || v19 | v12 | v18 | v22.n128_u64[0] | v13 | (v14 << 8) | v47 | v22.n128_u64[1] | v20 | (v21 << 8) | v23 | v37 | v39 | v38)
    {
      if ((v3 & 1) == 0)
      {
        v118 = (*(v0 + 2072) + **(v0 + 2072));
        v114 = *(*(v0 + 2072) + 4);
        v115 = swift_task_alloc();
        *(v0 + 2176) = v115;
        *v115 = v0;
        v115[1] = sub_24073CB04;
        v116 = *(v0 + 2080);
        goto LABEL_46;
      }
    }

    else if ((v3 & 1) == 0)
    {
      v118 = (*(v0 + 1880) + **(v0 + 1880));
      v80 = *(*(v0 + 1880) + 4);
      v81 = swift_task_alloc();
      *(v0 + 2120) = v81;
      *v81 = v0;
      v81[1] = sub_24073C1CC;
      v82 = *(v0 + 1888);
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  v48 = v13 | (v14 << 8);
  if (v3)
  {
    v49 = *(v0 + 2024);
    v50 = *(v0 + 24);

    v119 = (v49 + *v49);
    v51 = v49[1];
    v52 = swift_task_alloc();
    *(v0 + 2160) = v52;
    *v52 = v0;
    v52[1] = sub_24073C7DC;
    v53 = *(v0 + 2032);
    v54 = v48 | v47;
    v55 = v20 & 1;
    v56 = v12;
    v57 = v19;
    v58 = v18;
    v59 = v119;
  }

  else
  {
    v93 = *(v0 + 2008);
    v94 = *(v0 + 24);

    v121 = (v93 + *v93);
    v95 = v93[1];
    v96 = swift_task_alloc();
    *(v0 + 2168) = v96;
    *v96 = v0;
    v96[1] = sub_24073C9CC;
    v97 = *(v0 + 2016);
    v54 = v48 | v47;
    v55 = v20 & 1;
    v56 = v12;
    v57 = v19;
    v58 = v18;
    v59 = v121;
  }

  return v59(v56, v54, v57, v58, v55);
}