uint64_t sub_2258D3840()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2258D3880@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2258D38DC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2258D3940()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2258D398C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2258D39C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2258D4048@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2258E0AE0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_2258E0AD0();
  *(a1 + 24) = sub_2258E0C00();
  sub_2258D4584();
  sub_2258E0AC0();
}

ATResponseDecoder __swiftcall ATResponseDecoder.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for ATResponseDecoder()
{
  result = qword_27D7377D8;
  if (!qword_27D7377D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7377D8);
  }

  return result;
}

uint64_t sub_2258D44A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2258D4584()
{
  result = qword_27D7377E0;
  if (!qword_27D7377E0)
  {
    sub_2258E0C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7377E0);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AA69870);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2258D4664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7377E8, &qword_2258E1CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2258D4714(uint64_t a1, __int16 a2)
{
  *(v3 + 80) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_2258E0C10();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2258D47D8, 0, 0);
}

uint64_t sub_2258D47D8()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_2258E0D80();
  }

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  sub_2258E0C20();
  v7 = sub_2258E0BD0();
  (*(v4 + 104))(v3, *MEMORY[0x277CEEB80], v5);
  sub_2258D5674();
  sub_2258E0D10();

  (*(v4 + 8))(v3, v5);
  *(v0 + 16) = 0;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_2258D4988;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 80);

  return sub_2258D4CC0(v9, v11, v0 + 16);
}

uint64_t sub_2258D4988()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 16);

  if (v0)
  {
    v6 = sub_2258D4B20;
  }

  else
  {
    v6 = sub_2258D4ABC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2258D4ABC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2258D4B20()
{
  if (qword_27D7377C0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_2258E0BA0();
  __swift_project_value_buffer(v2, qword_27D737BB0);
  v3 = v1;
  v4 = sub_2258E0B80();
  v5 = sub_2258E0E80();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2258D2000, v4, v5, "Error sending request: %@", v8, 0xCu);
    sub_2258D4664(v9);
    MEMORY[0x22AA69870](v9, -1, -1);
    MEMORY[0x22AA69870](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2258D4CC0(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2258D4CE8, 0, 0);
}

uint64_t sub_2258D4CE8()
{
  v27 = v0;
  if (qword_27D7377C0 != -1)
  {
    swift_once();
  }

  v1 = sub_2258E0BA0();
  __swift_project_value_buffer(v1, qword_27D737BB0);
  v2 = sub_2258E0B80();
  v3 = sub_2258E0E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2258D9640(0xD00000000000003ALL, 0x80000002258E2120, &v26);
    *(v4 + 12) = 2080;
    v6 = [objc_opt_self() mainBundle];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = sub_2258E0D80();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_2258D9640(v8, v10, &v26);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_2258D2000, v2, v3, "%s called with client bundle identifier %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA69870](v5, -1, -1);
    MEMORY[0x22AA69870](v4, -1, -1);
  }

  v12 = *(v0 + 16);
  v13 = sub_2258E0B80();
  v14 = sub_2258E0E80();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 16);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v15;
    *v17 = v15;
    v18 = v15;
    _os_log_impl(&dword_2258D2000, v13, v14, "Sending question to daemon: %@", v16, 0xCu);
    sub_2258D4664(v17);
    MEMORY[0x22AA69870](v17, -1, -1);
    MEMORY[0x22AA69870](v16, -1, -1);
  }

  v19 = *(v0 + 32);

  v20 = *(v19 + 16);
  v21 = *(MEMORY[0x277CEED28] + 4);
  v22 = swift_task_alloc();
  *(v0 + 40) = v22;
  *v22 = v0;
  v22[1] = sub_2258D5014;
  v23 = *(v0 + 16);
  v24 = *(v0 + 64);

  return MEMORY[0x2821413C8](v23, v24);
}

uint64_t sub_2258D5014(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_2258D516C;
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 56) = a1;
    v9 = *v8;

    v7 = sub_2258D5148;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2258D516C()
{
  v1 = *(v0 + 48);
  v2 = sub_2258E0B30();
  sub_2258D5620();
  swift_allocError();
  *v3 = v2;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2258D521C(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  v5 = sub_2258E0D20();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2258D52E4, 0, 0);
}

uint64_t sub_2258D52E4()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_2258E0D80();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = sub_2258E0BD0();
  (*(v7 + 104))(v6, *MEMORY[0x277CEEDF0], v8);
  MEMORY[0x22AA68F30](v3, v5, v10, v6);

  (*(v7 + 8))(v6, v8);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_2258D5468;
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  v15 = *(v0 + 80);

  return sub_2258D4CC0(v14, v15, v12);
}

uint64_t sub_2258D5468()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2258D4B20, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2258D55A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

unint64_t sub_2258D5620()
{
  result = qword_27D7377F0;
  if (!qword_27D7377F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7377F0);
  }

  return result;
}

unint64_t sub_2258D5674()
{
  result = qword_27D7377F8;
  if (!qword_27D7377F8)
  {
    sub_2258E0C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7377F8);
  }

  return result;
}

void sub_2258D56CC()
{
  v1 = v0;
  if (qword_27D7377C8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_2258E0BA0();
    __swift_project_value_buffer(v2, qword_27D737BC8);
    v3 = sub_2258E0B80();
    v4 = sub_2258E0E80();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v85[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v85);
      _os_log_impl(&dword_2258D2000, v3, v4, "%s called", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA69870](v6, -1, -1);
      MEMORY[0x22AA69870](v5, -1, -1);
    }

    v7 = OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseIdentifierCache;
    swift_beginAccess();
    v8 = *&v1[v7];
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v9 = *&v1[v7];
      }

      v10 = *&v1[v7];

      v11 = sub_2258E0EF0();

      if (!v11)
      {
LABEL_15:
        v21 = v1;
        v22 = sub_2258E0B80();
        v23 = sub_2258E0E80();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v85[0] = v25;
          *v24 = 136315394;
          *(v24 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v85);
          *(v24 + 12) = 2048;
          v26 = *&v1[v7];
          if ((v26 & 0xC000000000000001) != 0)
          {

            v27 = sub_2258E0EF0();
          }

          else
          {
            v27 = *(v26 + 16);
          }

          *(v24 + 14) = v27;

          _os_log_impl(&dword_2258D2000, v22, v23, "%s undeliveredResponseIdentifierCache.count %ld", v24, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x22AA69870](v25, -1, -1);
          MEMORY[0x22AA69870](v24, -1, -1);
        }

        else
        {
        }

        return;
      }
    }

    else if (!*(v8 + 16))
    {
      goto LABEL_15;
    }

    if (v1[OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses] != 1)
    {
      v28 = sub_2258E0B80();
      v29 = sub_2258E0E70();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v85[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v85);
        _os_log_impl(&dword_2258D2000, v28, v29, "%s: Have undelivered responses, but applicationIsReadyForActions == false", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x22AA69870](v31, -1, -1);
        MEMORY[0x22AA69870](v30, -1, -1);
      }

      return;
    }

    v12 = v1;
    v13 = sub_2258E0B80();
    v14 = sub_2258E0E80();
    v81 = v12;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v85[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v85);
      *(v15 + 12) = 2048;
      v17 = *&v1[v7];
      if ((v17 & 0xC000000000000001) != 0)
      {
        if (v17 < 0)
        {
          v18 = *&v1[v7];
        }

        v19 = *&v1[v7];

        v20 = sub_2258E0EF0();
      }

      else
      {
        v20 = *(v17 + 16);
      }

      *(v15 + 14) = v20;

      _os_log_impl(&dword_2258D2000, v13, v14, "%s: Have %ld undelivered responses", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v32 = v16;
      v12 = v81;
      MEMORY[0x22AA69870](v32, -1, -1);
      MEMORY[0x22AA69870](v15, -1, -1);
    }

    else
    {
    }

    v33 = *&v1[v7];
    if ((v33 & 0xC000000000000001) != 0)
    {
      if (v33 < 0)
      {
        v34 = *&v1[v7];
      }

      sub_2258E0EE0();
      sub_2258D7EC0();
      sub_2258D806C(&qword_27D7378A8, sub_2258D7EC0);
      sub_2258E0E60();
      v35 = v85[1];
      v80 = v85[0];
      v36 = v85[2];
      v1 = v85[3];
      v37 = v85[4];
    }

    else
    {
      v38 = -1 << *(v33 + 32);
      v35 = v33 + 56;
      v36 = ~v38;
      v39 = -v38;
      v40 = v39 < 64 ? ~(-1 << v39) : -1;
      v37 = v40 & *(v33 + 56);
      v80 = v33;

      v1 = 0;
    }

    v41 = (v36 + 64) >> 6;
    v42 = v80;
    if (v80 < 0)
    {
      break;
    }

    while (1)
    {
      v44 = v1;
      v45 = v37;
      v46 = v1;
      if (!v37)
      {
        break;
      }

LABEL_43:
      v47 = (v45 - 1) & v45;
      v48 = *(*(v42 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v45)))));
      if (!v48)
      {
        goto LABEL_64;
      }

LABEL_47:
      v82 = v47;
      v50 = [*&v12[OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseCache] objectForKey_];
      if (v50)
      {
        v51 = v50;
        v52 = __swift_project_boxed_opaque_existential_0(&v12[OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar], *&v12[OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar + 24]);
        v53 = sub_2258E0BF0();
        v54 = sub_2258E0BD0();

        v55 = *v52;
        swift_beginAccess();
        v56 = *(v55 + 16);
        if ((v56 & 0xC000000000000001) != 0)
        {
          v57 = v54;
          v58 = sub_2258E0FE0();

          if (v58)
          {
            sub_2258E0C70();
            swift_dynamicCast();
            v58 = v83;
          }
        }

        else if (*(v56 + 16) && (v67 = sub_2258D9CE4(v54), (v68 & 1) != 0))
        {
          v58 = *(*(v56 + 56) + 8 * v67);
          v69 = v58;
        }

        else
        {
          v58 = 0;
        }

        swift_endAccess();

        if (v58)
        {

          [*&v12[OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseCache] removeObjectForKey_];
          swift_beginAccess();
          v43 = sub_2258D7038(v48);
          swift_endAccess();

          sub_2258D65E8(v51, 0);
        }

        else
        {
          v70 = v48;
          v71 = sub_2258E0B80();
          v72 = sub_2258E0E80();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            log = v71;
            v75 = swift_slowAlloc();
            v84[0] = v75;
            *v73 = 136315394;
            *(v73 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v84);
            *(v73 + 12) = 2112;
            *(v73 + 14) = v70;
            *v74 = v48;
            v76 = v70;
            _os_log_impl(&dword_2258D2000, log, v72, "%s: Delaying delivery because topic is not registered. responseIdentifier: %@", v73, 0x16u);
            sub_2258D4664(v74);
            v77 = v74;
            v42 = v80;
            MEMORY[0x22AA69870](v77, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v75);
            MEMORY[0x22AA69870](v75, -1, -1);
            v78 = v73;
            v12 = v81;
            MEMORY[0x22AA69870](v78, -1, -1);
          }

          else
          {
          }
        }

        v1 = v46;
        v37 = v82;
        if (v42 < 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v59 = v48;
        v60 = sub_2258E0B80();
        v61 = sub_2258E0E70();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v84[0] = v64;
          *v62 = 136315394;
          *(v62 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v84);
          *(v62 + 12) = 2112;
          *(v62 + 14) = v59;
          *v63 = v48;
          v65 = v59;
          _os_log_impl(&dword_2258D2000, v60, v61, "%s: Could not find response in response cache for identifier %@", v62, 0x16u);
          sub_2258D4664(v63);
          MEMORY[0x22AA69870](v63, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v64);
          v66 = v64;
          v42 = v80;
          MEMORY[0x22AA69870](v66, -1, -1);
          MEMORY[0x22AA69870](v62, -1, -1);
        }

        else
        {
        }

        v1 = v46;
        v37 = v82;
        v12 = v81;
        if (v42 < 0)
        {
          goto LABEL_45;
        }
      }
    }

    while (1)
    {
      v46 = (v44 + 1);
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= v41)
      {
        goto LABEL_64;
      }

      v45 = *(v35 + 8 * v46);
      ++v44;
      if (v45)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

LABEL_45:
  v49 = sub_2258E0F10();
  if (v49)
  {
    v83 = v49;
    sub_2258D7EC0();
    swift_dynamicCast();
    v48 = v84[0];
    v46 = v1;
    v47 = v37;
    if (v84[0])
    {
      goto LABEL_47;
    }
  }

LABEL_64:
  sub_2258D80B4();
}

uint64_t sub_2258D61C0(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_2258D6FCC(v3, v8);
      sub_2258D7028(v8, &v6);
      sub_2258E0C00();
      if ((swift_dynamicCast() & 1) != 0 && v7)
      {
        MEMORY[0x22AA68FD0]();
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v4 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2258E0E00();
        }

        sub_2258E0E10();
        v1 = v9;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  sub_2258D62DC(v1);
}

void sub_2258D62DC(unint64_t a1)
{
  v2 = v1;
  if (qword_27D7377C8 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v4 = sub_2258E0BA0();
    __swift_project_value_buffer(v4, qword_27D737BC8);
    v5 = sub_2258E0B80();
    v6 = sub_2258E0E80();
    v21 = a1;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2258D9640(0xD00000000000001DLL, 0x80000002258E2230, &v23);
      _os_log_impl(&dword_2258D2000, v5, v6, "%s called", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v9 = v8;
      a1 = v21;
      MEMORY[0x22AA69870](v9, -1, -1);
      MEMORY[0x22AA69870](v7, -1, -1);
    }

    if (a1 >> 62)
    {
      break;
    }

    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }

LABEL_6:
    v11 = 0;
    v12 = OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses;
    v13 = a1 & 0xC000000000000001;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v14 = MEMORY[0x22AA69190](v11, a1);
      }

      else
      {
        if (v11 >= *(v22 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a1 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (*(v2 + v12) == 1)
      {
        sub_2258D65E8(v14, 1);
      }

      else
      {
        v17 = sub_2258E0B80();
        v18 = sub_2258E0E80();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_2258D2000, v17, v18, "Deferring notifying client of response because the application isn't ready to receive responses", v19, 2u);
          v20 = v19;
          a1 = v21;
          MEMORY[0x22AA69870](v20, -1, -1);
        }

        sub_2258D6BB0(v15);
      }

      ++v11;
      if (v16 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v10 = sub_2258E0EF0();
  if (v10)
  {
    goto LABEL_6;
  }
}

void sub_2258D65E8(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2258E0B70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2258E0BF0();
  v13 = sub_2258E0BD0();

  v14 = (v3 + OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar);
  v15 = *__swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar), *(v3 + OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar + 24));
  swift_beginAccess();
  v16 = sub_2258D9004(v13, *(v15 + 16));
  swift_endAccess();
  if (v16)
  {
    v55 = a1;
    v17 = __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_2258E0C30();
    v18 = *v17;
    v19 = sub_2258D91A8(v11);
    v20 = *(v7 + 8);
    v20(v11, v6);
    if (v19)
    {
      if (qword_27D7377C8 != -1)
      {
        swift_once();
      }

      v21 = sub_2258E0BA0();
      __swift_project_value_buffer(v21, qword_27D737BC8);
      v22 = v16;
      v23 = sub_2258E0B80();
      v24 = sub_2258E0E80();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v52 = v25;
        v54 = swift_slowAlloc();
        v56[0] = v54;
        *v25 = 136315138;
        v53 = v24;
        sub_2258E0C30();
        sub_2258D806C(&qword_27D737890, MEMORY[0x277CC95F0]);
        v26 = sub_2258E1050();
        v27 = v22;
        v28 = v13;
        v30 = v29;
        v20(v11, v6);
        v31 = sub_2258D9640(v26, v30, v56);
        v13 = v28;
        v22 = v27;

        v32 = v52;
        *(v52 + 1) = v31;
        _os_log_impl(&dword_2258D2000, v23, v53, "Notifying response listener with id %s", v32, 0xCu);
        v33 = v54;
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x22AA69870](v33, -1, -1);
        MEMORY[0x22AA69870](v32, -1, -1);
      }

      [v19 didReceiveResponse_];
      swift_unknownObjectRelease();

      return;
    }

    a1 = v55;
  }

  if (a2)
  {
    if (qword_27D7377C8 != -1)
    {
      swift_once();
    }

    v34 = sub_2258E0BA0();
    __swift_project_value_buffer(v34, qword_27D737BC8);
    v35 = v13;
    v36 = sub_2258E0B80();
    v37 = sub_2258E0E80();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&dword_2258D2000, v36, v37, "Deferring notifying client of response because topic %@ is not registered", v38, 0xCu);
      sub_2258D4664(v39);
      MEMORY[0x22AA69870](v39, -1, -1);
      MEMORY[0x22AA69870](v38, -1, -1);
    }

    sub_2258D6BB0(a1);
  }

  else
  {
    v41 = v13;
    if (qword_27D7377C8 != -1)
    {
      swift_once();
    }

    v42 = sub_2258E0BA0();
    __swift_project_value_buffer(v42, qword_27D737BC8);
    v43 = a1;
    v44 = sub_2258E0B80();
    v45 = sub_2258E0E70();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56[0] = v48;
      *v46 = 136315394;
      *(v46 + 4) = sub_2258D9640(0xD00000000000003BLL, 0x80000002258E2250, v56);
      *(v46 + 12) = 2112;
      v49 = sub_2258E0BF0();
      v50 = sub_2258E0BD0();

      *(v46 + 14) = v50;
      *v47 = v50;
      _os_log_impl(&dword_2258D2000, v44, v45, "%s topic %@ is not registered. This response will be missed by the client.", v46, 0x16u);
      sub_2258D4664(v47);
      MEMORY[0x22AA69870](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA69870](v48, -1, -1);
      MEMORY[0x22AA69870](v46, -1, -1);
    }
  }
}

void sub_2258D6BB0(void *a1)
{
  v2 = v1;
  v4 = sub_2258E0B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2258E0BF0();
  sub_2258E0BE0();

  v11 = sub_2258E0B50();
  (*(v5 + 8))(v9, v4);
  if (qword_27D7377C8 != -1)
  {
    swift_once();
  }

  v12 = sub_2258E0BA0();
  __swift_project_value_buffer(v12, qword_27D737BC8);
  v13 = a1;
  v14 = v11;
  v15 = sub_2258E0B80();
  v16 = sub_2258E0E80();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v2;
    v31[0] = v19;
    v20 = v19;
    *v17 = 136315650;
    *(v17 + 4) = sub_2258D9640(0xD000000000000022, 0x80000002258E2290, v31);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    *v18 = v13;
    *(v17 + 22) = 2080;
    v21 = v13;
    v22 = [v14 UUIDString];
    v23 = sub_2258E0D80();
    v25 = v24;

    v26 = sub_2258D9640(v23, v25, v31);

    *(v17 + 24) = v26;
    _os_log_impl(&dword_2258D2000, v15, v16, "%s response: %@, uuid: %s", v17, 0x20u);
    sub_2258D4664(v18);
    MEMORY[0x22AA69870](v18, -1, -1);
    swift_arrayDestroy();
    v27 = v20;
    v2 = v30;
    MEMORY[0x22AA69870](v27, -1, -1);
    MEMORY[0x22AA69870](v17, -1, -1);
  }

  [*(v2 + OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseCache) setObject:v13 forKey:v14];
  swift_beginAccess();
  v28 = v14;
  sub_2258D7CA8(&v32, v28);
  swift_endAccess();
}

id sub_2258D6F14()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2258D6FCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2258D7028(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2258D7038(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_2258E0F20();

    if (v7)
    {
      v8 = sub_2258D71C0();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_2258D7EC0();
  v11 = *(v3 + 40);
  v12 = sub_2258E0E90();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_2258E0EA0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2258D7318();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_2258D78A4(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_2258D71C0()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_2258E0EF0();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2258D7A44(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_2258E0E90();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2258D7EC0();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_2258E0EA0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_2258D78A4(v9);
  result = sub_2258E0EA0();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2258D7318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
  v2 = *v0;
  v3 = sub_2258E0F30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2258D7468(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
  result = sub_2258E0F40();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2258E0E90();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2258D767C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
  result = sub_2258E0F40();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_2258E0E90();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2258D78A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2258E0EC0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_2258E0E90();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2258D7A44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
    v2 = sub_2258E0F50();
    v16 = v2;
    sub_2258E0EE0();
    if (sub_2258E0F10())
    {
      sub_2258D7EC0();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2258D767C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_2258E0E90();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_2258E0F10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_2258D7C24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2258E0E90();
  v5 = -1 << *(a2 + 32);
  result = sub_2258E0ED0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2258D7CA8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2258E0F00();

    if (v9)
    {

      sub_2258D7EC0();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2258E0EF0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2258D7A44(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2258D767C(v22 + 1);
    }

    v20 = v8;
    sub_2258D7C24(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2258D7EC0();
  v11 = *(v6 + 40);
  v12 = sub_2258E0E90();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2258D7F0C(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2258E0EA0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

unint64_t sub_2258D7EC0()
{
  result = qword_27D737898;
  if (!qword_27D737898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D737898);
  }

  return result;
}

void sub_2258D7F0C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2258D767C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2258D7318();
      goto LABEL_12;
    }

    sub_2258D7468(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2258E0E90();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_2258D7EC0();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_2258E0EA0();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2258E1080();
  __break(1u);
}

uint64_t sub_2258D806C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2258D8164(char a1, uint64_t a2)
{
  if (qword_2813690C8 != -1)
  {
    swift_once();
  }

  v4 = qword_2813690D0 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  if (qword_27D7377D0 != -1)
  {
    swift_once();
  }

  v7 = sub_2258E0BA0();
  __swift_project_value_buffer(v7, qword_27D737BE0);
  swift_unknownObjectRetain();
  v8 = sub_2258E0B80();
  v9 = sub_2258E0E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_2258D9640(0xD000000000000028, 0x80000002258E2320, &v18);
    *(v10 + 12) = 2080;
    if (Strong)
    {
      v12 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v12 = 7104878;
    }

    if (Strong)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_2258D9640(v12, v13, &v18);

    *(v10 + 14) = v14;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a1 & 1;
    _os_log_impl(&dword_2258D2000, v8, v9, "%s called. ATDispatchCenter.delegate is %s. didSend: %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x22AA69870](v11, -1, -1);
    MEMORY[0x22AA69870](v10, -1, -1);
  }

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v16 = *(v6 + 8);
    swift_unknownObjectRetain();
    v16(a1 & 1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(a2, 0);
  return swift_unknownObjectRelease();
}

void *sub_2258D8408()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = sub_2258DF854(MEMORY[0x277D84F90]);
  v0[3] = sub_2258DF94C(v1);
  v0[4] = sub_2258DFA50(v1);
  v0[5] = v1;
  v0[6] = [objc_allocWithZone(type metadata accessor for XPCListenerDelegate()) init];
  swift_weakAssign();
  return v0;
}

uint64_t sub_2258D8484(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v119 = a2;
  v123 = sub_2258E0B70();
  v111 = *(v123 - 8);
  v5 = *(v111 + 64);
  v7 = MEMORY[0x28223BE20](v123, v6);
  v122 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v110 - v10;
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v12 = sub_2258E0BA0();
  v13 = __swift_project_value_buffer(v12, qword_281369290);

  v115 = v13;
  v14 = sub_2258E0B80();
  v15 = sub_2258E0E80();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v127 = v17;
    *v16 = 136315138;
    v18 = sub_2258E0BC0();
    v19 = MEMORY[0x22AA68FF0](a1, v18);
    v21 = sub_2258D9640(v19, v20, &v127);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2258D2000, v14, v15, "Registering topics: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA69870](v17, -1, -1);
    MEMORY[0x22AA69870](v16, -1, -1);
  }

  v22 = [objc_opt_self() currentProcess];
  LODWORD(v118) = [v22 isDaemon];

  v23 = sub_2258E0B80();
  v24 = sub_2258E0E80();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v118;
    _os_log_impl(&dword_2258D2000, v23, v24, "isClientProcessDaemon: %{BOOL}d", v25, 8u);
    MEMORY[0x22AA69870](v25, -1, -1);
  }

  sub_2258E0B60();
  v129 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v27 = sub_2258E0EF0();
    v114 = v11;
    if (v27)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v114 = v11;
    if (v27)
    {
LABEL_9:
      if (v27 >= 1)
      {
        v28 = 0;
        v120 = a1 & 0xC000000000000001;
        v117 = (v111 + 16);
        *&v26 = 138412546;
        v112 = v26;
        v116 = MEMORY[0x277D84F90];
        v124 = MEMORY[0x277D84F90];
        v113 = a1;
        v121 = v27;
        while (1)
        {
          if (v120)
          {
            v36 = MEMORY[0x22AA69190](v28, a1);
          }

          else
          {
            v36 = *(a1 + 8 * v28 + 32);
          }

          v37 = v36;
          v38 = sub_2258E0C80();
          v40 = v39;
          v41 = sub_2258E0BB0();
          v43 = v42;
          v127 = v38;
          v128 = v40;

          MEMORY[0x22AA68FB0](v41, v43);

          v44 = v127;
          v45 = v128;
          swift_beginAccess();
          v46 = v3[2];
          if ((v46 & 0xC000000000000001) != 0)
          {
            v47 = v37;
            v48 = sub_2258E0FE0();

            if (!v48)
            {
              goto LABEL_25;
            }

            v125 = v48;
            sub_2258E0C70();
            swift_dynamicCast();
            v49 = v126;
          }

          else
          {
            if (!*(v46 + 16) || (v50 = sub_2258D9CE4(v37), (v51 & 1) == 0))
            {
LABEL_25:
              swift_endAccess();
LABEL_26:
              if (v118)
              {
                v55 = objc_allocWithZone(MEMORY[0x277CCAE98]);
                v56 = sub_2258E0D70();

                v57 = [v55 initWithMachServiceName_];

                [v57 setDelegate_];
                v58 = v57;
                MEMORY[0x22AA68FD0]();
                if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v63 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_2258E0E00();
                }

                sub_2258E0E10();

                v116 = v129;
              }

              else
              {
              }

              (*v117)(v122, v11, v123);
              v59 = objc_allocWithZone(sub_2258E0C70());
              v60 = v37;
              v61 = sub_2258E0C60();
              MEMORY[0x22AA68FD0]();
              if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v62 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_2258E0E00();
              }

              sub_2258E0E10();

              v124 = v130;
              goto LABEL_12;
            }

            v49 = *(*(v46 + 56) + 8 * v50);
          }

          swift_endAccess();
          if (!v49)
          {
            goto LABEL_26;
          }

          v52 = v37;

          v53 = sub_2258E0B80();
          v54 = sub_2258E0E70();

          if (os_log_type_enabled(v53, v54))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v127 = v31;
            *v29 = v112;
            *(v29 + 4) = v52;
            *v30 = v52;
            *(v29 + 12) = 2080;
            v32 = v52;
            v33 = sub_2258D9640(v44, v45, &v127);

            *(v29 + 14) = v33;
            _os_log_impl(&dword_2258D2000, v53, v54, "Tried to registered topic %@ for service name %s, but it's already registered locally.", v29, 0x16u);
            sub_2258DC6A0(v30, &qword_27D7377E8, &qword_2258E1CB0);
            v34 = v30;
            v11 = v114;
            MEMORY[0x22AA69870](v34, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v31);
            v35 = v31;
            a1 = v113;
            MEMORY[0x22AA69870](v35, -1, -1);
            MEMORY[0x22AA69870](v29, -1, -1);
          }

          else
          {
          }

LABEL_12:
          if (v121 == ++v28)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
      goto LABEL_80;
    }
  }

  v116 = MEMORY[0x277D84F90];
  v124 = MEMORY[0x277D84F90];
LABEL_36:
  v64 = v124;
  if (v124 >> 62)
  {
    goto LABEL_68;
  }

  v65 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v65)
  {
LABEL_38:
    v66 = 0;
    v121 = v64 & 0xC000000000000001;
    v118 = v64 & 0xFFFFFFFFFFFFFF8;
    v67 = (v111 + 8);
    v120 = v65;
    while (1)
    {
      if (v121)
      {
        v80 = MEMORY[0x22AA69190](v66);
      }

      else
      {
        if (v66 >= *(v118 + 16))
        {
          goto LABEL_67;
        }

        v80 = *(v64 + 8 * v66 + 32);
      }

      v81 = v80;
      v82 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v102 = v64;
        v65 = sub_2258E0EF0();
        v64 = v102;
        if (!v65)
        {
          goto LABEL_69;
        }

        goto LABEL_38;
      }

      v83 = sub_2258E0C50();
      swift_beginAccess();
      v84 = v3[2];
      if ((v84 & 0xC000000000000001) != 0)
      {
        if (v84 < 0)
        {
          v85 = v3[2];
        }

        else
        {
          v85 = v84 & 0xFFFFFFFFFFFFFF8;
        }

        v86 = v81;
        v87 = sub_2258E0EF0();
        v64 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_65;
        }

        v3[2] = sub_2258DA0F0(v85, v64);
      }

      else
      {
        v88 = v3[2];
        v89 = v81;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = v3[2];
      v91 = v126;
      v3[2] = 0x8000000000000000;
      v92 = sub_2258D9CE4(v83);
      v93 = v91[2];
      v94 = (v64 & 1) == 0;
      v95 = __OFADD__(v93, v94);
      v96 = v93 + v94;
      if (v95)
      {
        goto LABEL_64;
      }

      v97 = v64;
      if (v91[3] < v96)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_58;
      }

      v101 = v92;
      sub_2258DB3D0();
      v92 = v101;
      v98 = v126;
      if (v97)
      {
LABEL_39:
        v68 = v98[7];
        v69 = *(v68 + 8 * v92);
        *(v68 + 8 * v92) = v81;

        goto LABEL_40;
      }

LABEL_59:
      v98[(v92 >> 6) + 8] |= 1 << v92;
      *(v98[6] + 8 * v92) = v83;
      *(v98[7] + 8 * v92) = v81;
      v99 = v98[2];
      v95 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      if (v95)
      {
        goto LABEL_66;
      }

      v98[2] = v100;
LABEL_40:
      v3[2] = v98;
      swift_endAccess();
      v70 = sub_2258E0C40();
      v72 = v71;
      v73 = sub_2258E0C50();
      swift_beginAccess();
      v74 = v3[3];
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v126 = v3[3];
      v3[3] = 0x8000000000000000;
      sub_2258DADB4(v73, v70, v72, v75);

      v3[3] = v126;
      swift_endAccess();
      v76 = v122;
      sub_2258E0C30();
      swift_beginAccess();
      v77 = v119;
      swift_unknownObjectRetain();
      v78 = v3[4];
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v126 = v3[4];
      v3[4] = 0x8000000000000000;
      sub_2258DABE8(v77, v76, v79);
      (*v67)(v76, v123);
      v3[4] = v126;
      swift_endAccess();

      ++v66;
      v64 = v124;
      if (v82 == v120)
      {
        goto LABEL_69;
      }
    }

    sub_2258DA980(v96, isUniquelyReferenced_nonNull_native);
    v92 = sub_2258D9CE4(v83);
    if ((v97 & 1) != (v64 & 1))
    {
      goto LABEL_81;
    }

LABEL_58:
    v98 = v126;
    if (v97)
    {
      goto LABEL_39;
    }

    goto LABEL_59;
  }

LABEL_69:

  v103 = v116;
  if (!(v116 >> 62))
  {
    v104 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v105 = v114;
    if (v104)
    {
      goto LABEL_71;
    }

LABEL_78:
    swift_beginAccess();
    sub_2258D90B8(v103);
    swift_endAccess();
    return (*(v111 + 8))(v105, v123);
  }

  v104 = sub_2258E0EF0();
  v105 = v114;
  if (!v104)
  {
    goto LABEL_78;
  }

LABEL_71:
  if (v104 >= 1)
  {
    for (i = 0; i != v104; ++i)
    {
      if ((v103 & 0xC000000000000001) != 0)
      {
        v107 = MEMORY[0x22AA69190](i, v103);
      }

      else
      {
        v107 = *(v103 + 8 * i + 32);
      }

      v108 = v107;
      [v107 activate];
    }

    goto LABEL_78;
  }

LABEL_80:
  __break(1u);
LABEL_81:
  sub_2258E0BC0();
  result = sub_2258E1090();
  __break(1u);
  return result;
}

void *sub_2258D9004(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2258E0FE0();

    if (v4)
    {
      sub_2258E0C70();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2258D9CE4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_2258D90B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2258E0EF0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2258E0EF0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2258DA050(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2258DB530(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2258D91A8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v3 + 16) && (v4 = sub_2258D9BE8(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t sub_2258D9220()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2258D929C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2258D92E0(void *a1, const char *a2)
{
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v4 = sub_2258E0BA0();
  __swift_project_value_buffer(v4, qword_281369290);
  v5 = a1;
  oslog = sub_2258E0B80();
  v6 = sub_2258E0E80();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [v5 processIdentifier];

    _os_log_impl(&dword_2258D2000, oslog, v6, a2, v7, 8u);
    MEMORY[0x22AA69870](v7, -1, -1);
    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

uint64_t sub_2258D95E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2258D9640(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2258D970C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2258D6FCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2258D970C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2258D9818(a5, a6);
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
    result = sub_2258E0FB0();
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

uint64_t sub_2258D9818(uint64_t a1, unint64_t a2)
{
  v4 = sub_2258D9864(a1, a2);
  sub_2258D9994(&unk_2838DAB48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2258D9864(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2258D9A80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2258E0FB0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2258E0DC0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2258D9A80(v10, 0);
        result = sub_2258E0F70();
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

uint64_t sub_2258D9994(uint64_t result)
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

  result = sub_2258D9AF4(result, v12, 1, v3);
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

void *sub_2258D9A80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D737990, &qword_2258E1CB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2258D9AF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D737990, &qword_2258E1CB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2258D9BE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2258E0B70();
  sub_2258DC760(&qword_281369270);
  v5 = sub_2258E0D50();

  return sub_2258D9D28(a1, v5);
}

unint64_t sub_2258D9C6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2258E10E0();
  sub_2258E0DA0();
  v6 = sub_2258E10F0();

  return sub_2258D9ED4(a1, a2, v6);
}

unint64_t sub_2258D9CE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2258E0E90();

  return sub_2258D9F8C(a1, v5);
}

unint64_t sub_2258D9D28(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_2258E0B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_2258DC760(&qword_27D737988);
      v17 = sub_2258E0D60();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2258D9ED4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2258E1070())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2258D9F8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2258E0BC0();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2258E0EA0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2258DA050(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2258E0EF0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2258E0FA0();
  *v1 = result;
  return result;
}

uint64_t sub_2258DA0F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737998, &qword_2258E1CC0);
    v2 = sub_2258E1030();
    v20 = v2;
    sub_2258E0FC0();
    v3 = sub_2258E0FF0();
    if (v3)
    {
      v4 = v3;
      sub_2258E0BC0();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_2258E0C70();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_2258DA980(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_2258E0E90();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_2258E0FF0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2258DA314(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2258E0B70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379B8, &unk_2258E1CD0);
  v44 = a2;
  result = sub_2258E1020();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
        swift_unknownObjectRetain();
      }

      v30 = *(v15 + 40);
      sub_2258DC760(&qword_281369270);
      result = sub_2258E0D50();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_2258DA6DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7379C0, &unk_2258E1F50);
  v39 = a2;
  result = sub_2258E1020();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_2258E10E0();
      sub_2258E0DA0();
      result = sub_2258E10F0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2258DA980(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737998, &qword_2258E1CC0);
  result = sub_2258E1020();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_2258E0E90();
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
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2258DABE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2258E0B70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_2258D9BE8(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_2258DAFE4();
      goto LABEL_7;
    }

    sub_2258DA314(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_2258D9BE8(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_2258DAF2C(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_2258E1090();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_2258DADB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2258D9C6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2258DA6DC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2258D9C6C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_2258E1090();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2258DB264();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_2258DAF2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2258E0B70();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_2258DAFE4()
{
  v1 = v0;
  v35 = sub_2258E0B70();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379B8, &unk_2258E1CD0);
  v5 = *v0;
  v6 = sub_2258E1010();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;
        result = swift_unknownObjectRetain();
        v15 = v38;
      }

      while (v38);
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

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_2258DB264()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7379C0, &unk_2258E1F50);
  v2 = *v0;
  v3 = sub_2258E1010();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

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

id sub_2258DB3D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737998, &qword_2258E1CC0);
  v2 = *v0;
  v3 = sub_2258E1010();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t sub_2258DB530(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2258E0EF0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2258E0EF0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2258DC7F4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379A8, &qword_2258E1CC8);
            v9 = sub_2258DB6B0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2258DC7A8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2258DB6B0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA69190](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2258DB730;
  }

  __break(1u);
  return result;
}

uint64_t sub_2258DB738(void *a1)
{
  v2 = sub_2258E0B70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v12 = sub_2258E0BA0();
    __swift_project_value_buffer(v12, qword_281369290);
    v13 = a1;
    v14 = sub_2258E0B80();
    v15 = sub_2258E0E80();
    if (!os_log_type_enabled(v14, v15))
    {

LABEL_40:
      return 0;
    }

    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = [v13 processIdentifier];

    _os_log_impl(&dword_2258D2000, v14, v15, "Topic registrar was nil. Couldn't accept new connection to PID %d", v16, 8u);
    MEMORY[0x22AA69870](v16, -1, -1);

    return 0;
  }

  v9 = Strong;
  v10 = sub_2258E0D70();
  v11 = [a1 valueForEntitlement_];

  if (v11)
  {
    sub_2258E0EB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
  }

  aBlock = v87;
  v83 = v88;
  if (!*(&v88 + 1))
  {
    sub_2258DC6A0(&aBlock, &qword_27D737980, &qword_2258E1CA8);
LABEL_23:
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v39 = sub_2258E0BA0();
    __swift_project_value_buffer(v39, qword_281369290);
    v13 = a1;
    v40 = sub_2258E0B80();
    v41 = sub_2258E0E80();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_39;
    }

    v42 = swift_slowAlloc();
    *v42 = 67109120;
    *(v42 + 4) = [v13 processIdentifier];

    v43 = "Not accepting new connection to PID %d because the process lacks the necessary entitlement.";
    goto LABEL_27;
  }

  if (!swift_dynamicCast() || (v86 & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = [a1 serviceName];
  if (!v17)
  {
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v50 = sub_2258E0BA0();
    __swift_project_value_buffer(v50, qword_281369290);
    v13 = a1;
    v40 = sub_2258E0B80();
    v41 = sub_2258E0E80();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_39;
    }

    v42 = swift_slowAlloc();
    *v42 = 67109120;
    *(v42 + 4) = [v13 processIdentifier];

    v43 = "Incoming connection service name was nil. Couldn't accept new connection to PID %d";
LABEL_27:
    _os_log_impl(&dword_2258D2000, v40, v41, v43, v42, 8u);
    v44 = v42;
LABEL_28:
    MEMORY[0x22AA69870](v44, -1, -1);

    return 0;
  }

  v18 = v17;
  v19 = sub_2258E0D80();
  v21 = v20;

  swift_beginAccess();
  v22 = v9[3];
  if (!*(v22 + 16) || (v23 = sub_2258D9C6C(v19, v21), (v24 & 1) == 0))
  {
    swift_endAccess();
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v45 = sub_2258E0BA0();
    __swift_project_value_buffer(v45, qword_281369290);
    v13 = a1;

    v40 = sub_2258E0B80();
    v46 = sub_2258E0E80();

    if (os_log_type_enabled(v40, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&aBlock = v48;
      *v47 = 136315394;
      v49 = sub_2258D9640(v19, v21, &aBlock);

      *(v47 + 4) = v49;
      *(v47 + 12) = 1024;
      *(v47 + 14) = [v13 processIdentifier];

      _os_log_impl(&dword_2258D2000, v40, v46, "Couldn't find topic for service name %s. Not accepting new connection to PID %d", v47, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA69870](v48, -1, -1);
      v44 = v47;
      goto LABEL_28;
    }

LABEL_39:

    goto LABEL_40;
  }

  v25 = *(*(v22 + 56) + 8 * v23);
  swift_endAccess();
  swift_beginAccess();
  v26 = v9[2];
  v27 = v25;
  v28 = sub_2258D9004(v27, v26);
  if (!v28)
  {
    swift_endAccess();
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v63 = sub_2258E0BA0();
    __swift_project_value_buffer(v63, qword_281369290);
    v64 = v27;
    v13 = a1;

    v40 = sub_2258E0B80();
    v65 = sub_2258E0E80();

    if (os_log_type_enabled(v40, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&aBlock = v68;
      *v66 = 138412802;
      *(v66 + 4) = v64;
      *v67 = v64;
      *(v66 + 12) = 2080;
      v69 = v64;
      v70 = sub_2258D9640(v19, v21, &aBlock);

      *(v66 + 14) = v70;
      *(v66 + 22) = 1024;
      *(v66 + 24) = [v13 processIdentifier];

      _os_log_impl(&dword_2258D2000, v40, v65, "Couldn't find registration entry for topic %@ for service name %s. Not accepting new connection to PID %d", v66, 0x1Cu);
      sub_2258DC6A0(v67, &qword_27D7377E8, &qword_2258E1CB0);
      MEMORY[0x22AA69870](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x22AA69870](v68, -1, -1);
      MEMORY[0x22AA69870](v66, -1, -1);

      return 0;
    }

    goto LABEL_39;
  }

  v29 = v28;
  swift_endAccess();
  sub_2258E0C30();
  swift_beginAccess();
  v30 = v9[4];
  if (!*(v30 + 16) || (v31 = sub_2258D9BE8(v7), (v32 & 1) == 0))
  {
    swift_endAccess();
    (*(v3 + 8))(v7, v2);
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v52 = sub_2258E0BA0();
    __swift_project_value_buffer(v52, qword_281369290);
    v53 = v27;
    v54 = a1;

    v55 = sub_2258E0B80();
    v56 = sub_2258E0E80();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81 = v29;
      v59 = v58;
      v60 = swift_slowAlloc();
      *&aBlock = v60;
      *v57 = 138412802;
      *(v57 + 4) = v53;
      *v59 = v53;
      *(v57 + 12) = 2080;
      v61 = v53;
      v62 = sub_2258D9640(v19, v21, &aBlock);

      *(v57 + 14) = v62;
      *(v57 + 22) = 1024;
      *(v57 + 24) = [v54 processIdentifier];

      _os_log_impl(&dword_2258D2000, v55, v56, "Couldn't find response listener for topic %@ for service name %s. Not accepting new connection to PID %d", v57, 0x1Cu);
      sub_2258DC6A0(v59, &qword_27D7377E8, &qword_2258E1CB0);
      MEMORY[0x22AA69870](v59, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x22AA69870](v60, -1, -1);
      MEMORY[0x22AA69870](v57, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v81 = v29;
  v33 = *(*(v30 + 56) + 8 * v31);
  swift_endAccess();
  swift_unknownObjectRetain();

  (*(v3 + 8))(v7, v2);
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v34 = sub_2258E0BA0();
  __swift_project_value_buffer(v34, qword_281369290);
  v35 = a1;
  v36 = sub_2258E0B80();
  v37 = sub_2258E0E80();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    *(v38 + 4) = [v35 processIdentifier];

    _os_log_impl(&dword_2258D2000, v36, v37, "Accepting new connection to PID %d", v38, 8u);
    MEMORY[0x22AA69870](v38, -1, -1);
  }

  else
  {

    v36 = v35;
  }

  type metadata accessor for ResponseListenerWrapper();
  v71 = swift_allocObject();
  *(v71 + 16) = v33;
  v72 = objc_opt_self();
  swift_unknownObjectRetain();
  v73 = [v72 interfaceWithProtocol_];
  [v35 setExportedInterface:v73];
  [v35 setExportedObject:v71];
  v74 = swift_allocObject();
  *(v74 + 16) = v35;
  v84 = sub_2258DC700;
  v85 = v74;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v83 = sub_2258D929C;
  *(&v83 + 1) = &block_descriptor;
  v75 = _Block_copy(&aBlock);
  v76 = v35;

  [v76 setInterruptionHandler:v75];
  _Block_release(v75);
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  v84 = sub_2258DC73C;
  v85 = v77;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v83 = sub_2258D929C;
  *(&v83 + 1) = &block_descriptor_19;
  v78 = _Block_copy(&aBlock);
  v79 = v76;

  [v79 setInvalidationHandler:v78];
  _Block_release(v78);
  [v79 activate];

  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_2258DC488(uint64_t a1)
{
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v2 = sub_2258E0BA0();
  __swift_project_value_buffer(v2, qword_281369290);
  v3 = sub_2258E0B80();
  v4 = sub_2258E0E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2258D2000, v3, v4, "Internal response listener woke up!", v5, 2u);
    MEMORY[0x22AA69870](v5, -1, -1);
  }

  v6 = *(a1 + 16);

  return v6(a1);
}

uint64_t sub_2258DC580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v6 = sub_2258E0BA0();
  __swift_project_value_buffer(v6, qword_281369290);
  v7 = sub_2258E0B80();
  v8 = sub_2258E0E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2258D2000, v7, v8, "Calling into client response listener to notify of received response", v9, 2u);
    MEMORY[0x22AA69870](v9, -1, -1);
  }

  [*(a2 + 16) didReceiveResponse_];
  v10 = *(a3 + 16);

  return v10(a3, 0);
}

uint64_t sub_2258DC6A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2258DC760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2258E0B70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2258DC7A8()
{
  result = qword_2813690C0;
  if (!qword_2813690C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813690C0);
  }

  return result;
}

unint64_t sub_2258DC7F4()
{
  result = qword_27D7379B0;
  if (!qword_27D7379B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7379A8, &qword_2258E1CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7379B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t ATDispatchCenter.SendError.errorDescription.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x206E776F6E6B6E55;
  }

  if (v1 == 1)
  {
    return 0xD000000000000022;
  }

  sub_2258E0F80();

  v3 = [v1 description];
  v4 = sub_2258E0D80();
  v6 = v5;

  MEMORY[0x22AA68FB0](v4, v6);

  return 0xD000000000000020;
}

uint64_t ATDispatchCenter.SendError.errorDomain.getter()
{
  if (*v0 < 2)
  {
    return 0x65532E6F546B7341;
  }

  v2 = [*v0 domain];
  v3 = sub_2258E0D80();

  return v3;
}

id ATDispatchCenter.SendError.errorCode.getter()
{
  result = *v0;
  if (*v0 >= 2)
  {
    return [result code];
  }

  return result;
}

unint64_t ATDispatchCenter.SendError.errorUserInfo.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379D0, &qword_2258E1D10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2258E1CF0;
    *(inited + 32) = 1868983913;
    v3 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    strcpy((inited + 48), "Unknown error");
    *(inited + 62) = -4864;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379D0, &qword_2258E1D10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2258E1CF0;
    *(inited + 32) = 1868983913;
    v3 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000002258E2670;
LABEL_5:
    v4 = sub_2258DFF04(inited);
    swift_setDeallocating();
    sub_2258DC6A0(v3, &qword_27D7379D8, &qword_2258E1D18);
    return v4;
  }

  v6 = [v1 userInfo];
  v7 = sub_2258E0D40();

  return v7;
}

id sub_2258DCBF0()
{
  result = *v0;
  if (*v0 >= 2)
  {
    return [result code];
  }

  return result;
}

uint64_t sub_2258DCC10(uint64_t a1)
{
  v2 = sub_2258E0678();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2258DCC4C(uint64_t a1)
{
  v2 = sub_2258E0678();

  return MEMORY[0x28211F4A8](a1, v2);
}

id sub_2258DCC90()
{
  v0 = type metadata accessor for TopicRegistrar();
  swift_allocObject();
  v11[3] = v0;
  v11[4] = &off_2838DAB90;
  v11[0] = sub_2258D8408();
  type metadata accessor for ATDispatcher();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v11, v0);
  v3 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v2, v2);
  v5 = (&v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;

  v8 = sub_2258DF470(v7, v1);

  __swift_destroy_boxed_opaque_existential_0(v11);
  result = sub_2258DF6E4(v8);
  qword_2813690D0 = result;
  return result;
}

id static ATDispatchCenter.shared.getter()
{
  if (qword_2813690C8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813690D0;

  return v1;
}

uint64_t ATDispatchCenter.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t ATDispatchCenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ATDispatchCenter.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2258DCFEC;
}

void sub_2258DCFEC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ATDispatchCenter.send(_:to:)(uint64_t a1, __int16 a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2258DD098, 0, 0);
}

uint64_t sub_2258DD098()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 24) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(*(v0 + 24) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2258DD14C;
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);

  return sub_2258D4714(v3, v4);
}

uint64_t sub_2258DD14C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2258DD3D0(void *a1, __int16 a2, void *aBlock, void *a4)
{
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2258DD460, 0, 0);
}

uint64_t sub_2258DD460()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 24) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(*(v0 + 24) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2258DD514;
  v3 = *(v0 + 16);
  v4 = *(v0 + 56);

  return sub_2258D4714(v3, v4);
}

uint64_t sub_2258DD514()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_2258DD6AC;
  }

  else
  {
    v3 = sub_2258DD628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2258DD628()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2258DD6AC()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_2258E0B30();
  (*(v2 + 16))(v2, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t ATDispatchCenter.canAsk(to:requiredCapabilities:)(__int16 a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2258DD778, 0, 0);
}

uint64_t sub_2258DD778()
{
  v1 = sub_2258E0D00();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_2258E0CF0();
  v4 = *(MEMORY[0x277CEECF0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_2258DD838;
  v6 = *(v0 + 16);
  v7 = *(v0 + 48);

  return MEMORY[0x282141380](v7, v6);
}

uint64_t sub_2258DD838(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_2258DD9CC;
  }

  else
  {
    *(v4 + 50) = a1 & 1;
    v7 = sub_2258DD964;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2258DD964()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 50);

  return v2(v3);
}

uint64_t sub_2258DD9CC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(0);
}

uint64_t sub_2258DDBC4(__int16 a1, uint64_t a2, void *aBlock)
{
  *(v3 + 56) = a1;
  *(v3 + 16) = _Block_copy(aBlock);
  if (a2)
  {
    v5 = sub_2258E0E50();
  }

  else
  {
    v5 = 0;
  }

  *(v3 + 24) = v5;

  return MEMORY[0x2822009F8](sub_2258DDC60, 0, 0);
}

uint64_t sub_2258DDC60()
{
  v1 = sub_2258E0D00();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_2258E0CF0();
  v4 = *(MEMORY[0x277CEECF0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_2258DDD20;
  v6 = *(v0 + 24);
  v7 = *(v0 + 56);

  return MEMORY[0x282141380](v7, v6);
}

uint64_t sub_2258DDD20(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_2258DDEE4;
  }

  else
  {
    *(v4 + 58) = a1 & 1;
    v7 = sub_2258DDE4C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2258DDE4C()
{
  v1 = *(v0 + 58);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);

  (*(v4 + 16))(v4, v1, 0);
  _Block_release(*(v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2258DDEE4()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);

  v5 = sub_2258E0B30();

  (*(v4 + 16))(v4, 0, v5);
  _Block_release(*(v0 + 16));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t ATDispatchCenter.send(_:to:destinationsNotSupportingLegacyAskViaMessages:)(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2258DDFBC, 0, 0);
}

uint64_t sub_2258DDFBC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 32) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(*(v0 + 32) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2258DE070;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 48);

  return sub_2258D521C(v4, v5, v3);
}

uint64_t sub_2258DE070()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ATDispatchCenter.screenTimeDidReceiveAnswer(_:forRequestWithID:responderDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2258DE18C, 0, 0);
}

uint64_t sub_2258DE18C()
{
  v1 = sub_2258E0D00();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[7] = sub_2258E0CF0();
  v4 = *(MEMORY[0x277CEED18] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2258DE250;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return MEMORY[0x2821413B0](v10, v8, v9, v6, v7);
}

uint64_t sub_2258DE250()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2258DE3C8;
  }

  else
  {
    v3 = sub_2258DE364;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2258DE364()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2258DE3C8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2258DE44C()
{
  v1 = sub_2258E0D00();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[3] = sub_2258E0CF0();
  v4 = *(MEMORY[0x277CEED20] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2258DE508;
  v6 = v0[2];

  return MEMORY[0x2821413C0](v6);
}

uint64_t sub_2258DE508(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_2258E07F0;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v7 = sub_2258DE634;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2258DE634()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2(v3);
}

uint64_t ATDispatchCenter.updateMessageBubble(_:responderHandle:answerChoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2258DE6C0, 0, 0);
}

uint64_t sub_2258DE6C0()
{
  v1 = sub_2258E0D00();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[6] = sub_2258E0CF0();
  v4 = *(MEMORY[0x277CEED00] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2258DE780;
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return MEMORY[0x282141398](v9, v8, v6, v7);
}

uint64_t sub_2258DE780()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2258DE8F8;
  }

  else
  {
    v3 = sub_2258DE894;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2258DE894()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2258DE8F8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void ATDispatchCenter.register(topic:responseListener:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379F0, &qword_2258E1D50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2258E1D00;
  *(v5 + 32) = a1;
  v6 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v7 = *v6;
  v8 = *__swift_project_boxed_opaque_existential_0((*v6 + 48), *(*v6 + 72));
  v9 = a1;
  sub_2258D8484(v5, a2);

  if (*(*(v7 + 40) + OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses) == 1)
  {
    sub_2258D56CC();
  }
}

void ATDispatchCenter.register(topics:responseListener:)(unint64_t a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v6 = *v5;
  v7 = *__swift_project_boxed_opaque_existential_0((*v5 + 48), *(*v5 + 72));
  sub_2258D8484(a1, a2);
  if (*(*(v6 + 40) + OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses) == 1)
  {
    sub_2258D56CC();
  }
}

id ATDispatchCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATDispatchCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2258DEBBC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2258E07E8;

  return v7();
}

uint64_t sub_2258DECA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2258DED8C;

  return v8();
}

uint64_t sub_2258DED8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2258DEE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379F8, &qword_2258E1ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_2258E0780(a3, v26 - v12, &qword_27D7379F8, &qword_2258E1ED0);
  v14 = sub_2258E0E40();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2258DC6A0(v13, &qword_27D7379F8, &qword_2258E1ED0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2258E0E30();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_2258E0E20();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_2258E0D90() + 32;
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

    sub_2258DC6A0(a3, &qword_27D7379F8, &qword_2258E1ED0);

    return v24;
  }

LABEL_8:
  sub_2258DC6A0(a3, &qword_27D7379F8, &qword_2258E1ED0);
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

uint64_t sub_2258DF17C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2258DF274;

  return v7(a1);
}

uint64_t sub_2258DF274()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_2258DF36C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v10[3] = type metadata accessor for TopicRegistrar();
  v10[4] = &off_2838DAB90;
  v10[0] = a1;
  v5 = OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseCache;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  if (MEMORY[0x277D84F90] >> 62 && sub_2258E0EF0())
  {
    sub_2258DFC38(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *&a2[OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseIdentifierCache] = v6;
  a2[OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses] = 0;
  sub_2258E071C(v10, &a2[OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar]);
  v9.receiver = a2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

void *sub_2258DF470(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TopicRegistrar();
  v32[3] = v4;
  v32[4] = &off_2838DAB90;
  v32[0] = a1;
  type metadata accessor for DaemonReceiver();
  v5 = swift_allocObject();
  sub_2258E0D00();

  a2[2] = sub_2258E0CA0();
  a2[3] = v5;
  sub_2258E071C(v32, (a2 + 6));
  sub_2258E071C(v32, v30);
  v6 = v31;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = (&v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v28 = v4;
  v29 = &off_2838DAB90;
  v27[0] = v12;
  v13 = objc_allocWithZone(type metadata accessor for AppResponseHandler());
  v14 = v28;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15, v15);
  v18 = (&v27[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;

  v21 = sub_2258DF36C(v20, v13);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v30);
  a2[5] = v21;
  v22 = objc_allocWithZone(ATBSActionListener);
  v23 = v21;
  v24 = [v22 initWithResponseHandler_];
  a2[4] = v24;
  [v24 startListening];

  __swift_destroy_boxed_opaque_existential_0(v32);
  return a2;
}

id sub_2258DF6E4(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_2838DAB70;
  v14[0] = a1;
  v2 = type metadata accessor for ATDispatchCenter();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v1);
  v5 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v4, v4);
  v7 = (&v12 - v6);
  (*(v8 + 16))(&v12 - v6);
  v9 = *v7;
  v13[3] = v1;
  v13[4] = &off_2838DAB70;
  v13[0] = v9;
  *&v3[OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_2258E071C(v13, &v3[OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher]);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

unint64_t sub_2258DF854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737998, &qword_2258E1CC0);
    v3 = sub_2258E1040();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2258D9CE4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2258DF94C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7379C0, &unk_2258E1F50);
    v3 = sub_2258E1040();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2258D9C6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2258DFA50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D737A08, &unk_2258E1F40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379B8, &unk_2258E1CD0);
    v9 = sub_2258E1040();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_2258E0780(v11, v7, &qword_27D737A08, &unk_2258E1F40);
      result = sub_2258D9BE8(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_2258E0B70();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2258DFC38(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2258E0EF0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
      v3 = sub_2258E0F60();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2258E0EF0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AA69190](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_2258E0E90();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_2258D7EC0();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_2258E0EA0();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_2258E0E90();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_2258D7EC0();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_2258E0EA0();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_2258DFF04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737A10, &unk_2258E1F60);
    v3 = sub_2258E1040();
    v4 = a1 + 32;

    while (1)
    {
      sub_2258E0780(v4, &v13, &qword_27D7379D8, &qword_2258E1D18);
      v5 = v13;
      v6 = v14;
      result = sub_2258D9C6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2258D7028(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5AskTo16ATDispatchCenterC9SendErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2258E00A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2258E00FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2258E015C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2258E018C()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2258DED8C;

  return sub_2258DDBC4(v5, v2, v3);
}

uint64_t sub_2258E0250()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2258E07E8;

  return sub_2258DEBBC(v2, v3, v5);
}

uint64_t sub_2258E0310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2258E07E8;

  return sub_2258DECA4(a1, v4, v5, v7);
}

uint64_t sub_2258E03DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2258E07E8;

  return sub_2258DF17C(a1, v5);
}

uint64_t sub_2258E0494(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2258DED8C;

  return sub_2258DF17C(a1, v5);
}

uint64_t sub_2258E054C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2258E07E8;

  return sub_2258DD3D0(v2, v5, v3, v4);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2258E0678()
{
  result = qword_27D737A00;
  if (!qword_27D737A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D737A00);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2258E071C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2258E0780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2258E081C()
{
  v0 = sub_2258E0BA0();
  __swift_allocate_value_buffer(v0, qword_281369290);
  __swift_project_value_buffer(v0, qword_281369290);
  return sub_2258E0B90();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2258E0934()
{
  v0 = sub_2258E0BA0();
  __swift_allocate_value_buffer(v0, qword_2813692A8);
  __swift_project_value_buffer(v0, qword_2813692A8);
  return sub_2258E0B90();
}

uint64_t sub_2258E09E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2258E0BA0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2258E0B90();
}