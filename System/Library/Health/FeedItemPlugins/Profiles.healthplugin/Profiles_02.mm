void sub_29E4C769C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E4C76EC()
{
  result = qword_2A1A70918[0];
  if (!qword_2A1A70918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A70918);
  }

  return result;
}

unint64_t sub_29E4C7740()
{
  result = qword_2A1A70BA0;
  if (!qword_2A1A70BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70BA0);
  }

  return result;
}

unint64_t sub_29E4C7794()
{
  result = qword_2A184B7C8;
  if (!qword_2A184B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7C8);
  }

  return result;
}

uint64_t sub_29E4C77E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSearch();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E4C784C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4C7740();
    v7 = a3(a1, &type metadata for ProfileSearch.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E4C78B0()
{
  result = qword_2A1A70B88;
  if (!qword_2A1A70B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70B88);
  }

  return result;
}

unint64_t sub_29E4C7904()
{
  result = qword_2A1A70B80;
  if (!qword_2A1A70B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70B80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProfileSearch.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProfileSearch.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29E4C7AAC()
{
  result = qword_2A184B7D0;
  if (!qword_2A184B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7D0);
  }

  return result;
}

unint64_t sub_29E4C7B04()
{
  result = qword_2A1A70B90;
  if (!qword_2A1A70B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70B90);
  }

  return result;
}

unint64_t sub_29E4C7B5C()
{
  result = qword_2A1A70B98;
  if (!qword_2A1A70B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70B98);
  }

  return result;
}

uint64_t sub_29E4C7BB0(uint64_t a1)
{
  v3 = sub_29E4FC190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v16 = *(v1 + 16);
  v8(v7, a1, v3);
  v9 = *(v1 + 32);
  swift_unknownObjectRetain();
  v10 = [v9 profileIdentifier];
  sub_29E4A76F0(v1 + 40, v17);
  v11 = type metadata accessor for CloudSyncExecutor.Planner(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_signals, v7, v3);
  *(v14 + 16) = v16;
  *(v14 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_profileIdentifier) = v10;
  sub_29E498334(v17, v14 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider);
  return v14;
}

uint64_t sub_29E4C7D28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29E4FB660();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for CloudSyncExecutor.Planner.ChangeType(0);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4C7E18, 0, 0);
}

uint64_t sub_29E4C7E18()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];
  sub_29E4CD6B8();
  sub_29E4FC2A0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *v0[8];
      v6 = swift_task_alloc();
      v0[11] = v6;
      *v6 = v0;
      v6[1] = sub_29E4C816C;
      v7 = v0[3];

      return sub_29E4C8A8C(v5);
    }

    else
    {
      v12 = swift_task_alloc();
      v0[9] = v12;
      *v12 = v0;
      v12[1] = sub_29E4C7FE8;
      v13 = v0[3];

      return sub_29E4C8584();
    }
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[8], v0[4]);
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_29E4C8280;
    v10 = v0[6];
    v11 = v0[3];

    return sub_29E4C95EC(v10);
  }
}

uint64_t sub_29E4C7FE8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_29E4C841C;
  }

  else
  {
    v3 = sub_29E4C80FC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E4C80FC()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_29E4C816C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_29E4C848C;
  }

  else
  {
    v3 = sub_29E4D0928;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E4C8280()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_29E4C84FC;
  }

  else
  {
    v3 = sub_29E4C8394;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E4C8394()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_29E4C841C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E4C848C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E4C84FC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E4C8584()
{
  v1[10] = v0;
  v2 = sub_29E4FC3C0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4C8644, 0, 0);
}

uint64_t sub_29E4C8644()
{
  v1 = v0[13];
  sub_29E4FC390();
  v2 = sub_29E4FC3B0();
  v3 = sub_29E4FC940();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29E494000, v2, v3, "Removing cloud sync alert", v4, 2u);
    MEMORY[0x29ED8BDB0](v4, -1, -1);
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[11];

  (*(v6 + 8))(v5, v8);
  swift_beginAccess();
  v9 = v7[18];
  v10 = v7[19];
  sub_29E4A9F54((v7 + 15), v9);
  (*(v10 + 40))(v9, v10);
  swift_endAccess();
  v11 = v7[2];
  v12 = v7[3];
  swift_getObjectType();
  sub_29E4CD7AC(&qword_2A1A70220, v13, type metadata accessor for CloudSyncExecutor);
  sub_29E4FB310();
  v15 = v0[5];
  v14 = v0[6];
  sub_29E4A1710(v0 + 2, v15);
  v16 = *(MEMORY[0x29EDC3888] + 4);
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_29E4C889C;
  v18 = MEMORY[0x29EDCA190];

  return MEMORY[0x2A1C64D80](v18, v15, v14);
}

uint64_t sub_29E4C889C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_29E4C8A20;
  }

  else
  {
    v3 = sub_29E4C89B0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E4C89B0()
{
  v1 = v0[13];
  sub_29E4A1754(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_29E4C8A20()
{
  sub_29E4A1754(v0 + 2);
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_29E4C8A8C(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 216) = a1;
  v3 = sub_29E4FC3C0();
  *(v2 + 88) = v3;
  v4 = *(v3 - 8);
  *(v2 + 96) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v6 = sub_29E4FB460();
  *(v2 + 112) = v6;
  v7 = *(v6 - 8);
  *(v2 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4C8BB8, 0, 0);
}

uint64_t sub_29E4C8BB8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 216);
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  sub_29E4A9F54(v1 + 120, v3);
  (*(v4 + 32))(v3, v4);
  swift_endAccess();
  if (v2 == 1)
  {
    v5 = *(v0 + 80);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    swift_getObjectType();
    sub_29E4CD7AC(&qword_2A1A70220, v8, type metadata accessor for CloudSyncExecutor);
    sub_29E4FB310();
    v14 = [*(*(v0 + 80) + 32) profileIdentifier];
    sub_29E4FB7D0();

    MEMORY[0x29ED8AD70](0x697373696D736944, 0xEB00000000656C62);

    v15 = sub_29E4FB4C0();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    *(v0 + 144) = v15;
    *(v0 + 152) = v17;
    *(v0 + 160) = v19;
    *(v0 + 217) = v21;
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v22);
    sub_29E4CDB4C(v15, v17, v19, v21);
    v24 = *(MEMORY[0x29EDC3890] + 4);
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    *v25 = v0;
    v25[1] = sub_29E4C8E88;

    return MEMORY[0x2A1C64D88](v15, v17, v19, v21, v22, v23);
  }

  else
  {
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 104);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_29E4C8E88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_29E4C947C;
  }

  else
  {
    sub_29E4CDBC4(*(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 217));
    v5 = sub_29E4C8FAC;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29E4C8FAC()
{
  v1 = *(v0 + 176);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v28 = *(v5 + 16);
    v28(v3, v1 + v27, v4);

    (*(v5 + 32))(v2, v3, v4);
    sub_29E4FB3B0();
    sub_29E4FC390();
    v7 = sub_29E4FC3B0();
    v8 = sub_29E4FC940();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_29E494000, v7, v8, "Hiding dismissible cloud sync feedItems", v9, 2u);
      MEMORY[0x29ED8BDB0](v9, -1, -1);
    }

    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v17);
    sub_29E4D018C(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v18 = *(v12 + 72);
    v19 = swift_allocObject();
    *(v0 + 192) = v19;
    *(v19 + 16) = xmmword_29E4FDE40;
    v28(v19 + v27, v10, v11);
    v20 = *(MEMORY[0x29EDC3880] + 4);
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = sub_29E4C9294;

    return MEMORY[0x2A1C64D78](v19, v17, v16);
  }

  else
  {
    sub_29E4CDBC4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 217));

    sub_29E4A1754((v0 + 16));
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 104);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_29E4C9294()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);

  if (v0)
  {
    v6 = sub_29E4C9538;
  }

  else
  {
    v6 = sub_29E4C93C8;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29E4C93C8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_29E4CDBC4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 217));
  (*(v3 + 8))(v1, v2);
  sub_29E4A1754((v0 + 16));
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29E4C947C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 217);
  sub_29E4CDBC4(v3, v1, v2, v4);
  sub_29E4CDBC4(v3, v1, v2, v4);
  sub_29E4A1754((v0 + 16));
  v5 = *(v0 + 184);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 104);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_29E4C9538()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_29E4CDBC4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 217));
  (*(v3 + 8))(v1, v2);
  sub_29E4A1754((v0 + 16));
  v4 = *(v0 + 208);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29E4C95EC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_29E4FC3C0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_29E4FB7F0();
  v2[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4C96F4, 0, 0);
}

uint64_t sub_29E4C96F4()
{
  v47 = v0;
  v1 = v0[7];
  v2 = sub_29E4FB650();
  v0[16] = v2;
  v3 = v0[15];
  if (v2)
  {
    v4 = v0[8];
    v5 = v2;
    sub_29E4FB7E0();
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    swift_getObjectType();
    sub_29E4CD7AC(&qword_2A1A70220, v8, type metadata accessor for CloudSyncExecutor);
    sub_29E4FB310();
    v15 = v0[8];
    v16 = sub_29E4CA25C(v0[15]);
    if (v16)
    {
      v17 = v0[14];
      v18 = v0[15];
      v19 = v0[11];
      sub_29E4FC390();
      sub_29E4CF224(v18, v17, MEMORY[0x29EDC16F8]);
      v20 = sub_29E4FC3B0();
      v21 = sub_29E4FC940();
      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[14];
      if (v22)
      {
        v25 = v0[12];
        v24 = v0[13];
        v26 = v0[10];
        v45 = v0[11];
        v27 = v0[9];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = 136446210;
        sub_29E4CF224(v23, v24, MEMORY[0x29EDC16F8]);
        v30 = sub_29E4FC700();
        v32 = v31;
        sub_29E4CF1C4(v23, MEMORY[0x29EDC16F8]);
        v33 = sub_29E4F68F4(v30, v32, &v46);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_29E494000, v20, v21, "Showing cloud sync alert for state %{public}s", v28, 0xCu);
        sub_29E4A1754(v29);
        MEMORY[0x29ED8BDB0](v29, -1, -1);
        MEMORY[0x29ED8BDB0](v28, -1, -1);

        (*(v26 + 8))(v45, v27);
      }

      else
      {
        v40 = v0[10];
        v39 = v0[11];
        v41 = v0[9];

        sub_29E4CF1C4(v23, MEMORY[0x29EDC16F8]);
        (*(v40 + 8))(v39, v41);
      }

      v42 = swift_task_alloc();
      v0[17] = v42;
      *v42 = v0;
      v42[1] = sub_29E4C9B60;
      v43 = v0[15];
      v44 = v0[8];

      return sub_29E4CA3D0(v43);
    }

    else
    {
      v35 = v0[5];
      v34 = v0[6];
      sub_29E4A1710(v0 + 2, v35);
      v36 = *(MEMORY[0x29EDC3888] + 4);
      v37 = swift_task_alloc();
      v0[22] = v37;
      *v37 = v0;
      v37[1] = sub_29E4C9F20;
      v38 = MEMORY[0x29EDCA190];

      return MEMORY[0x2A1C64D80](v38, v35, v34);
    }
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[11];
    v12 = v0[15];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_29E4C9B60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_29E4CA0EC;
  }

  else
  {
    v5 = sub_29E4C9C74;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29E4C9C74()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_29E4A1710(v0 + 2, v2);
  v3 = *(MEMORY[0x29EDC3888] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_29E4C9D34;
  v5 = v0[18];

  return MEMORY[0x2A1C64D80](v5, v2, v1);
}

uint64_t sub_29E4C9D34()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_29E4CA1A4;
  }

  else
  {
    v6 = sub_29E4C9E68;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29E4C9E68()
{
  v1 = *(v0 + 120);

  sub_29E4CF1C4(v1, MEMORY[0x29EDC16F8]);
  sub_29E4A1754((v0 + 16));
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29E4C9F20()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_29E4CA034;
  }

  else
  {
    v3 = sub_29E4D093C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E4CA034()
{
  v1 = *(v0 + 120);

  sub_29E4CF1C4(v1, MEMORY[0x29EDC16F8]);
  sub_29E4A1754((v0 + 16));
  v2 = *(v0 + 184);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29E4CA0EC()
{
  v1 = *(v0 + 120);

  sub_29E4CF1C4(v1, MEMORY[0x29EDC16F8]);
  sub_29E4A1754((v0 + 16));
  v2 = *(v0 + 152);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29E4CA1A4()
{
  v1 = *(v0 + 120);

  sub_29E4CF1C4(v1, MEMORY[0x29EDC16F8]);
  sub_29E4A1754((v0 + 16));
  v2 = *(v0 + 168);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29E4CA25C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E4FB7F0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[4];
  if ((sub_29E4F5204(v8) & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_29E4CF224(a1, v7, MEMORY[0x29EDC16F8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = 1;
  if (((1 << EnumCaseMultiPayload) & 0x29) == 0)
  {
    if (((1 << EnumCaseMultiPayload) & 0x12) == 0)
    {
      v11 = sub_29E4FB1E0();
      (*(*(v11 - 8) + 8))(v7, v11);
    }

    v12 = [v8 profileIdentifier];
    v13 = sub_29E4F57F0(v12, v2 + 5);

    if (v13)
    {
      v14 = sub_29E4A1710(v2 + 10, v2[13]);
      v10 = sub_29E4CE100(*v14, a1) ^ 1;
      return v10 & 1;
    }

LABEL_7:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_29E4CA3D0(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_29E4FC3C0();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = sub_29E4FB7F0();
  v2[37] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  sub_29E4D018C(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v10 = sub_29E4FB390();
  v2[42] = v10;
  v11 = *(v10 - 8);
  v2[43] = v11;
  v12 = *(v11 + 64) + 15;
  v2[44] = swift_task_alloc();
  v13 = sub_29E4FB320();
  v2[45] = v13;
  v14 = *(v13 - 8);
  v2[46] = v14;
  v15 = *(v14 + 64) + 15;
  v2[47] = swift_task_alloc();
  v16 = sub_29E4FB460();
  v2[48] = v16;
  v17 = *(v16 - 8);
  v2[49] = v17;
  v18 = *(v17 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4CA690, 0, 0);
}

uint64_t sub_29E4CA690()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  v3 = sub_29E4FAF70();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_29E4FAF60();
  sub_29E4CD7AC(&qword_2A1A705F0, 255, MEMORY[0x29EDC16F8]);
  v6 = sub_29E4FAF50();
  *(v0 + 448) = v6;
  *(v0 + 456) = v7;
  v8 = v6;
  v9 = v7;
  v10 = *(v0 + 368);
  v11 = *(v0 + 376);
  v40 = *(v0 + 360);
  v41 = *(v0 + 440);
  v12 = *(v0 + 256);

  v13 = [*(v12 + 32) profileIdentifier];
  *(v0 + 464) = v13;
  sub_29E4FB7D0();
  *(v0 + 472) = type metadata accessor for CloudSyncTileViewController(0);

  sub_29E4FB360();
  *(v0 + 560) = *MEMORY[0x29EDC36F8];
  v14 = *(v10 + 104);
  *(v0 + 480) = v14;
  *(v0 + 488) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v11);
  v15 = v13;
  sub_29E4C7648(v8, v9);
  v15;
  sub_29E4C7648(v8, v9);
  sub_29E4FB3E0();
  v16 = sub_29E4FC7B0();
  v17 = HKUIJoinStringsForAutomationIdentifier();

  if (v17)
  {
    sub_29E4FC6F0();
  }

  v18 = *(v0 + 440);
  v19 = *(v0 + 344);
  v20 = *(v0 + 352);
  v21 = *(v0 + 336);
  v22 = *(v0 + 256);
  sub_29E4FB400();
  v23 = *MEMORY[0x29EDC3808];
  v24 = *(v19 + 104);
  *(v0 + 496) = v24;
  *(v0 + 504) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v24(v20, v23, v21);
  sub_29E4FB3A0();
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  swift_getObjectType();
  sub_29E4CD7AC(&qword_2A1A70220, v27, type metadata accessor for CloudSyncExecutor);
  sub_29E4FB310();
  v29 = *(v0 + 40);
  v28 = *(v0 + 48);
  sub_29E4A1710((v0 + 16), v29);
  v30 = sub_29E4FB4C0();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  *(v0 + 512) = v30;
  *(v0 + 520) = v32;
  *(v0 + 528) = v34;
  *(v0 + 564) = v36;
  v37 = *(MEMORY[0x29EDC3890] + 4);
  v38 = swift_task_alloc();
  *(v0 + 536) = v38;
  *v38 = v0;
  v38[1] = sub_29E4CAB78;

  return MEMORY[0x2A1C64D88](v30, v32, v34, v36, v29, v28);
}

uint64_t sub_29E4CAB78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  v4[68] = a1;
  v4[69] = v1;

  v7 = *(v4 + 564);
  v8 = v3[66];
  v9 = v3[65];
  v10 = v3[64];
  if (v1)
  {
    v11 = v4[57];
    v12 = v4[58];
    v13 = v4[56];
    sub_29E4CDBC4(v10, v9, v8, v7);

    sub_29E4A1B94(v13, v11);
    v14 = sub_29E4CB91C;
  }

  else
  {
    sub_29E4CDBC4(v10, v9, v8, v7);
    v14 = sub_29E4CAD00;
  }

  return MEMORY[0x2A1C73D48](v14, 0, 0);
}

uint64_t sub_29E4CAD00()
{
  v1 = *(v0 + 544);
  if (*(v1 + 16))
  {
    (*(*(v0 + 392) + 16))(*(v0 + 328), v1 + ((*(*(v0 + 392) + 80) + 32) & ~*(*(v0 + 392) + 80)), *(v0 + 384));
    v2 = 0;
    v3 = *(v0 + 544);
  }

  else
  {
    v2 = 1;
  }

  v4 = *(v0 + 384);
  v5 = *(v0 + 392);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  v8 = *(v0 + 296);
  v9 = *(v0 + 248);

  (*(v5 + 56))(v6, v2, 1, v4);
  sub_29E4CF224(v9, v7, MEMORY[0x29EDC16F8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x2B) == 0 && EnumCaseMultiPayload == 2)
  {
    v11 = *(v0 + 312);
    v12 = sub_29E4FB1E0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v13 = *(v0 + 384);
  v14 = *(v0 + 392);
  v15 = *(v0 + 320);
  sub_29E4CDFFC(*(v0 + 328), v15);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_29E4CE090(*(v0 + 320), &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    v16 = 0;
    v17 = 0xF000000000000000;
    goto LABEL_10;
  }

  v18 = *(v0 + 384);
  v19 = *(v0 + 392);
  v20 = *(v0 + 320);
  v16 = sub_29E4FB450();
  v17 = v21;
  (*(v19 + 8))(v20, v18);
  if (v17 >> 60 == 15)
  {
LABEL_10:
    v22 = *(v0 + 456);
    if (v22 >> 60 == 15)
    {
      sub_29E4C7648(*(v0 + 448), *(v0 + 456));
      sub_29E4A1B80(v16, v17);
LABEL_12:
      v23 = *(v0 + 288);
      sub_29E4FC390();
      v24 = sub_29E4FC3B0();
      v25 = sub_29E4FC940();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_29E494000, v24, v25, "User data is same as previous feed item, evaluate if should show in summaryFeed", v26, 2u);
        MEMORY[0x29ED8BDB0](v26, -1, -1);
      }

      v27 = *(v0 + 288);
      v28 = *(v0 + 264);
      v29 = *(v0 + 272);
      v30 = *(v0 + 256);

      (*(v29 + 8))(v27, v28);
      swift_beginAccess();
      sub_29E4A76F0(v30 + 120, v0 + 96);
      sub_29E4A1710((v0 + 96), *(v0 + 120));
      sub_29E4E86CC();
      sub_29E4A1754((v0 + 96));
      sub_29E4A76F0(v30 + 120, v0 + 136);
      sub_29E4A1710((v0 + 136), *(v0 + 160));
      sub_29E4E86CC();
      sub_29E4A1754((v0 + 136));
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v22 = *(v0 + 456);
  if (v22 >> 60 == 15)
  {
LABEL_16:
    v31 = *(v0 + 448);
    sub_29E4C7648(v31, v22);
    sub_29E4A1B80(v16, v17);
    sub_29E4A1B80(v31, v22);
    goto LABEL_17;
  }

  v110 = *(v0 + 448);
  sub_29E4C7648(v110, *(v0 + 456));
  sub_29E4C7648(v110, v22);
  sub_29E4CF1B0(v16, v17);
  v111 = sub_29E4CF048(v16, v17, v110, v22);
  sub_29E4A1B80(v110, v22);
  sub_29E4A1B94(v110, v22);
  sub_29E4A1B80(v16, v17);
  sub_29E4A1B80(v16, v17);
  if (v111)
  {
    goto LABEL_12;
  }

LABEL_17:
  v32 = *(v0 + 280);
  sub_29E4FC390();
  v33 = sub_29E4FC3B0();
  v34 = sub_29E4FC940();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_29E494000, v33, v34, "User data is different or no previous feed item, reset backoff algorithm, show in summaryFeed", v35, 2u);
    MEMORY[0x29ED8BDB0](v35, -1, -1);
  }

  v37 = *(v0 + 272);
  v36 = *(v0 + 280);
  v39 = *(v0 + 256);
  v38 = *(v0 + 264);

  (*(v37 + 8))(v36, v38);
  swift_beginAccess();
  v40 = *(v39 + 144);
  v41 = *(v39 + 152);
  sub_29E4A9F54(v39 + 120, v40);
  (*(v41 + 40))(v40, v41);
  swift_endAccess();
LABEL_20:
  v43 = *(v0 + 432);
  v42 = *(v0 + 440);
  v44 = *(v0 + 384);
  v45 = *(v0 + 392);
  v46 = *(v0 + 248);
  sub_29E4FB3B0();
  sub_29E4F557C();
  v144 = *(v45 + 16);
  v144(v43, v42, v44);
  v47 = sub_29E4A7D34(0, 1, 1, MEMORY[0x29EDCA190]);
  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_29E4A7D34(v48 > 1, v49 + 1, 1, v47);
  }

  v50 = *(v0 + 432);
  v51 = *(v0 + 384);
  v52 = *(v0 + 392);
  v54 = *(v0 + 296);
  v53 = *(v0 + 304);
  v55 = *(v0 + 248);
  *(v47 + 2) = v49 + 1;
  v57 = *(v52 + 32);
  v52 += 32;
  v56 = v57;
  v58 = (*(v52 + 48) + 32) & ~*(v52 + 48);
  v148 = v47;
  v59 = *(v52 + 40);
  v57(&v47[v58 + v59 * v49], v50, v51);
  swift_storeEnumTagMultiPayload();
  v60 = MEMORY[0x29ED89DF0](v55, v53);
  sub_29E4CF1C4(v53, MEMORY[0x29EDC16F8]);
  if (v60 & 1) != 0 || (v61 = *(v0 + 296), v62 = *(v0 + 304), v63 = *(v0 + 248), *v62 = 0, swift_storeEnumTagMultiPayload(), LOBYTE(v63) = MEMORY[0x29ED89DF0](v63, v62), sub_29E4CF1C4(v62, MEMORY[0x29EDC16F8]), (v63))
  {
    v138 = v59;
    v139 = v58;
    v141 = v56;
    v129 = *(v0 + 480);
    v131 = *(v0 + 488);
    v64 = *(v0 + 560);
    v65 = *(v0 + 464);
    v133 = *(v0 + 448);
    v135 = *(v0 + 456);
    v127 = *(v0 + 424);
    v66 = *(v0 + 376);
    v67 = *(v0 + 360);
    sub_29E4FB7D0();

    MEMORY[0x29ED8AD70](0x697373696D736944, 0xEB00000000656C62);

    type metadata accessor for DismissibleCloudSyncTileViewController(0);
    sub_29E4FB360();
    v129(v66, v64, v67);
    sub_29E4FB3E0();
    v68 = sub_29E4FC7B0();
    v69 = HKUIJoinStringsForAutomationIdentifier();

    if (v69)
    {
      sub_29E4FC6F0();
    }

    v71 = *(v0 + 496);
    v70 = *(v0 + 504);
    v73 = *(v0 + 416);
    v72 = *(v0 + 424);
    v136 = *(v0 + 384);
    v74 = *(v0 + 352);
    v75 = *(v0 + 336);
    v76 = *(v0 + 256);
    sub_29E4FB400();
    v71(v74, *MEMORY[0x29EDC3800], v75);
    sub_29E4FB3A0();
    swift_beginAccess();
    sub_29E4A76F0(v76 + 120, v0 + 56);
    sub_29E4A1710((v0 + 56), *(v0 + 80));
    sub_29E4E86CC();
    sub_29E4A1754((v0 + 56));
    sub_29E4FB3B0();
    v144(v73, v72, v136);
    v78 = *(v148 + 2);
    v77 = *(v148 + 3);
    v146 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      v148 = sub_29E4A7D34(v77 > 1, v78 + 1, 1, v148);
    }

    v80 = *(v0 + 456);
    v79 = *(v0 + 464);
    v82 = *(v0 + 440);
    v81 = *(v0 + 448);
    v84 = *(v0 + 416);
    v83 = *(v0 + 424);
LABEL_29:
    v86 = *(v0 + 384);
    v85 = *(v0 + 392);
    v87 = *(v0 + 328);

    sub_29E4A1B94(v81, v80);
    v88 = *(v85 + 8);
    v88(v83, v86);
    sub_29E4CE090(v87, &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    v88(v82, v86);
    *(v148 + 2) = v146;
    v141(&v148[v139 + v78 * v138], v84, v86);
    goto LABEL_30;
  }

  v100 = *(v0 + 296);
  v101 = *(v0 + 304);
  v102 = *(v0 + 248);
  *v101 = 1;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v102) = MEMORY[0x29ED89DF0](v102, v101);
  sub_29E4CF1C4(v101, MEMORY[0x29EDC16F8]);
  if (v102)
  {
    v138 = v59;
    v139 = v58;
    v141 = v56;
    v130 = *(v0 + 480);
    v132 = *(v0 + 488);
    v128 = *(v0 + 560);
    v104 = *(v0 + 464);
    v103 = *(v0 + 472);
    v134 = *(v0 + 448);
    v137 = *(v0 + 456);
    v105 = *(v0 + 408);
    v106 = *(v0 + 376);
    v107 = *(v0 + 360);
    sub_29E4FB7D0();

    MEMORY[0x29ED8AD70](0x656574616E614D2ELL, 0xE800000000000000);

    sub_29E4FB360();
    v130(v106, v128, v107);
    sub_29E4FB3E0();
    sub_29E4FB440();
    v108 = sub_29E4FC7B0();
    v109 = HKUIJoinStringsForAutomationIdentifier();

    if (v109)
    {
      sub_29E4FC6F0();
    }

    v120 = *(v0 + 496);
    v119 = *(v0 + 504);
    v122 = *(v0 + 400);
    v121 = *(v0 + 408);
    v123 = *(v0 + 384);
    v124 = *(v0 + 352);
    v125 = *(v0 + 336);
    sub_29E4FB400();
    v120(v124, *MEMORY[0x29EDC3800], v125);
    sub_29E4FB3A0();
    sub_29E4FB3B0();
    v144(v122, v121, v123);
    v78 = *(v148 + 2);
    v126 = *(v148 + 3);
    v146 = v78 + 1;
    if (v78 >= v126 >> 1)
    {
      v148 = sub_29E4A7D34(v126 > 1, v78 + 1, 1, v148);
    }

    v80 = *(v0 + 456);
    v79 = *(v0 + 464);
    v82 = *(v0 + 440);
    v81 = *(v0 + 448);
    v84 = *(v0 + 400);
    v83 = *(v0 + 408);
    goto LABEL_29;
  }

  v112 = *(v0 + 456);
  v113 = *(v0 + 464);
  v115 = *(v0 + 440);
  v114 = *(v0 + 448);
  v116 = *(v0 + 384);
  v117 = *(v0 + 392);
  v118 = *(v0 + 328);

  sub_29E4A1B94(v114, v112);
  sub_29E4A1B94(v114, v112);
  sub_29E4CE090(v118, &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
  (*(v117 + 8))(v115, v116);
LABEL_30:
  v89 = *(v0 + 432);
  v90 = *(v0 + 440);
  v92 = *(v0 + 416);
  v91 = *(v0 + 424);
  v94 = *(v0 + 400);
  v93 = *(v0 + 408);
  v95 = *(v0 + 376);
  v96 = *(v0 + 352);
  v97 = *(v0 + 328);
  v140 = *(v0 + 320);
  v142 = *(v0 + 312);
  v143 = *(v0 + 304);
  v145 = *(v0 + 288);
  v147 = *(v0 + 280);
  sub_29E4A1754((v0 + 16));

  v98 = *(v0 + 8);

  return v98(v148);
}

uint64_t sub_29E4CB91C()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 384);
  v5 = *(v0 + 392);

  sub_29E4A1B94(v2, v1);
  (*(v5 + 8))(v3, v4);
  sub_29E4A1754((v0 + 16));
  v7 = *(v0 + 432);
  v6 = *(v0 + 440);
  v9 = *(v0 + 416);
  v8 = *(v0 + 424);
  v11 = *(v0 + 400);
  v10 = *(v0 + 408);
  v12 = *(v0 + 376);
  v13 = *(v0 + 352);
  v14 = *(v0 + 320);
  v15 = *(v0 + 328);
  v18 = *(v0 + 312);
  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 280);
  v22 = *(v0 + 552);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_29E4CBA70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_29E4A1754((v0 + 40));
  sub_29E4A1754((v0 + 80));
  sub_29E4A1754((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_29E4CBAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E49D938;

  return sub_29E4C7D28(a1);
}

uint64_t sub_29E4CBB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4CD7AC(qword_2A1A70228, a2, type metadata accessor for CloudSyncExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29E4CBC3C()
{
  v1 = sub_29E4FC300();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = sub_29E4FC110();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  sub_29E4D018C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v33[-2] - v7;
  sub_29E4D018C(0, &qword_2A1A6F0C0, sub_29E4D01F0, MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  v32 = xmmword_29E4FDE40;
  *(v9 + 16) = xmmword_29E4FDE40;
  *(v9 + 56) = sub_29E4FB630();
  *(v9 + 64) = sub_29E4CD7AC(&qword_2A1A70640, 255, MEMORY[0x29EDC3B40]);
  sub_29E4A197C((v9 + 32));
  sub_29E4FB620();
  v10 = [*(v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_profileIdentifier) type];
  if (v10 <= 4 && ((1 << v10) & 0x16) != 0 || v10 == 100)
  {
    v11 = *(v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider + 24);
    v12 = *(v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider + 32);
    sub_29E4A1710((v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider), v11);
    (*(v12 + 8))(v11, v12);
    v13 = sub_29E4FB1E0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v8, 1, v13) == 1)
    {
      sub_29E4CE090(v8, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
      CFAbsoluteTimeGetCurrent();
    }

    else
    {
      sub_29E4FB170();
      (*(v14 + 8))(v8, v13);
    }

    v34 = sub_29E4FC270();
    v35 = sub_29E4CD7AC(&qword_2A1A704A8, 255, MEMORY[0x29EDC3588]);
    sub_29E4A197C(v33);
    sub_29E4FC260();
    v36 = v9;
    v16 = *(v9 + 16);
    v15 = *(v9 + 24);
    if (v16 >= v15 >> 1)
    {
      v36 = sub_29E4A7D68((v15 > 1), v16 + 1, 1, v9);
    }

    v17 = v34;
    v18 = v35;
    v19 = sub_29E4A9F54(v33, v34);
    v20 = *(*(v17 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v19);
    v22 = &v33[-2] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    sub_29E4CEEF8(v16, v22, &v36, v17, v18);
    sub_29E4A1754(v33);
  }

  sub_29E4D0254();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E4FFE90;
  sub_29E4FC100();
  v25 = sub_29E4FC140();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v24 + 32) = sub_29E4FC120();
  sub_29E4FC100();
  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  *(v28 + 56) = sub_29E4FC2E0();
  *(v28 + 64) = sub_29E4CD7AC(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0]);
  sub_29E4A197C((v28 + 32));
  sub_29E4FC2F0();
  sub_29E4FC2D0();
  v29 = *(v25 + 48);
  v30 = *(v25 + 52);
  swift_allocObject();
  *(v24 + 40) = sub_29E4FC120();
  return v24;
}

uint64_t sub_29E4CC22C(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29E4CF500(0, &qword_2A184B848, sub_29E4CF28C, &type metadata for CloudSyncExecutor.Planner.ChangeType.DeleteFeedItemsCodingKeys, MEMORY[0x29EDC9E88]);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v40 = &v36 - v5;
  sub_29E4CF500(0, &qword_2A184B850, sub_29E4CF2E0, &type metadata for CloudSyncExecutor.Planner.ChangeType.UpdateAlgorithmCodingKeys, v2);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v37 = &v36 - v8;
  sub_29E4CF500(0, &qword_2A184B858, sub_29E4CF334, &type metadata for CloudSyncExecutor.Planner.ChangeType.UpdateStateCodingKeys, v2);
  v39 = v9;
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v45 = &v36 - v11;
  v38 = sub_29E4FB660();
  v46 = *(v38 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CloudSyncExecutor.Planner.ChangeType(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4CF500(0, &qword_2A184B860, sub_29E4CF388, &type metadata for CloudSyncExecutor.Planner.ChangeType.CodingKeys, v2);
  v48 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v36 - v22;
  v24 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4CF388();
  sub_29E4FD080();
  sub_29E4CF224(v47, v18, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30 = v36;
    v31 = v38;
    (*(v46 + 32))(v14, v18, v38);
    v49 = 0;
    sub_29E4CF334();
    v28 = v48;
    sub_29E4FCEF0();
    sub_29E4CD7AC(&qword_2A184B868, 255, MEMORY[0x29EDC3B48]);
    v32 = v39;
    sub_29E4FCF50();
    (*(v30 + 8))(v45, v32);
    (*(v46 + 8))(v14, v31);
    return (*(v20 + 8))(v23, v28);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v26 = *v18;
    v50 = 1;
    sub_29E4CF2E0();
    v27 = v37;
    v28 = v48;
    sub_29E4FCEF0();
    v29 = v42;
    sub_29E4FCF40();
    (*(v41 + 8))(v27, v29);
    return (*(v20 + 8))(v23, v28);
  }

  v51 = 2;
  sub_29E4CF28C();
  v34 = v40;
  v35 = v48;
  sub_29E4FCEF0();
  (*(v43 + 8))(v34, v44);
  return (*(v20 + 8))(v23, v35);
}

uint64_t sub_29E4CC81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29E4CF500(0, &qword_2A184B7F0, sub_29E4CF28C, &type metadata for CloudSyncExecutor.Planner.ChangeType.DeleteFeedItemsCodingKeys, MEMORY[0x29EDC9E80]);
  v75 = v4;
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v76 = &v65 - v6;
  sub_29E4CF500(0, &qword_2A184B800, sub_29E4CF2E0, &type metadata for CloudSyncExecutor.Planner.ChangeType.UpdateAlgorithmCodingKeys, v3);
  v8 = *(v7 - 8);
  v73 = v7;
  v74 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v79 = &v65 - v10;
  sub_29E4CF500(0, &qword_2A184B810, sub_29E4CF334, &type metadata for CloudSyncExecutor.Planner.ChangeType.UpdateStateCodingKeys, v3);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v78 = &v65 - v13;
  sub_29E4CF500(0, &qword_2A184B820, sub_29E4CF388, &type metadata for CloudSyncExecutor.Planner.ChangeType.CodingKeys, v3);
  v77 = v14;
  v81 = *(v14 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v65 - v16;
  v18 = type metadata accessor for CloudSyncExecutor.Planner.ChangeType(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v25 = &v65 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v65 - v26;
  v28 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4CF388();
  v29 = v82;
  sub_29E4FD070();
  if (v29)
  {
    goto LABEL_14;
  }

  v66 = v22;
  v67 = v25;
  v31 = v78;
  v30 = v79;
  v68 = v27;
  v69 = v18;
  v32 = v80;
  v82 = a1;
  v33 = v77;
  v34 = v17;
  v35 = sub_29E4FCEE0();
  v36 = v35;
  v37 = *(v35 + 16);
  if (!v37 || ((v38 = *(v35 + 32), v37 == 1) ? (v39 = v38 == 3) : (v39 = 1), v39))
  {
    v40 = v33;
    v41 = sub_29E4FCDB0();
    swift_allocError();
    v43 = v42;
    sub_29E4CF3DC();
    v45 = *(v44 + 48);
    *v43 = v69;
    sub_29E4FCE70();
    sub_29E4FCD90();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x29EDC9DB8], v41);
    swift_willThrow();
    (*(v81 + 8))(v34, v40);
    swift_unknownObjectRelease();
    a1 = v82;
LABEL_14:
    v55 = a1;
    return sub_29E4A1754(v55);
  }

  if (*(v35 + 32))
  {
    v46 = v34;
    if (v38 == 1)
    {
      v84 = 1;
      sub_29E4CF2E0();
      v47 = v30;
      sub_29E4FCE60();
      v48 = v81;
      v78 = v36;
      v49 = v33;
      v50 = v73;
      v61 = sub_29E4FCEC0();
      (*(v74 + 8))(v47, v50);
      (*(v48 + 8))(v46, v49);
      swift_unknownObjectRelease();
      v62 = v61 & 1;
      v63 = v66;
      *v66 = v62;
      swift_storeEnumTagMultiPayload();
      v64 = v68;
      sub_29E4CF498(v63, v68, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
    }

    else
    {
      v85 = 2;
      sub_29E4CF28C();
      v53 = v76;
      sub_29E4FCE60();
      v54 = v81;
      (*(v70 + 8))(v53, v75);
      (*(v54 + 8))(v46, v33);
      swift_unknownObjectRelease();
      v64 = v68;
      swift_storeEnumTagMultiPayload();
    }

    v57 = v32;
  }

  else
  {
    v83 = 0;
    sub_29E4CF334();
    v51 = v34;
    sub_29E4FCE60();
    v52 = v33;
    v57 = v32;
    v58 = v52;
    sub_29E4FB660();
    sub_29E4CD7AC(&qword_2A184B840, 255, MEMORY[0x29EDC3B48]);
    v59 = v67;
    v60 = v72;
    sub_29E4FCED0();
    (*(v71 + 8))(v31, v60);
    (*(v81 + 8))(v51, v58);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v64 = v68;
    sub_29E4CF498(v59, v68, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
  }

  sub_29E4CF498(v64, v57, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
  v55 = v82;
  return sub_29E4A1754(v55);
}

uint64_t sub_29E4CD098()
{
  v1 = 0x6C41657461647075;
  if (*v0 != 1)
  {
    v1 = 0x65466574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7453657461647075;
  }
}

uint64_t sub_29E4CD114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29E4D07EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29E4CD13C(uint64_t a1)
{
  v2 = sub_29E4CF388();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4CD178(uint64_t a1)
{
  v2 = sub_29E4CF388();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4CD1C0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_29E4CD1F0(uint64_t a1)
{
  v2 = sub_29E4CF28C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4CD22C(uint64_t a1)
{
  v2 = sub_29E4CF28C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4CD288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465654665646968 && a2 == 0xEC0000006D657449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E4FCF80();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E4CD314(uint64_t a1)
{
  v2 = sub_29E4CF2E0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4CD350(uint64_t a1)
{
  v2 = sub_29E4CF2E0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4CD3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E4FCF80();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E4CD424(uint64_t a1)
{
  v2 = sub_29E4CF334();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4CD460(uint64_t a1)
{
  v2 = sub_29E4CF334();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4CD4CC()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_signals;
  v3 = sub_29E4FC190();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  sub_29E4A1754(&v0[OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider]);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4CD5B8()
{
  result = sub_29E4FC190();
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

void sub_29E4CD6B8()
{
  if (!qword_2A1A70498)
  {
    type metadata accessor for CloudSyncExecutor.Planner.ChangeType(255);
    sub_29E4CD7AC(&qword_2A1A703B0, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
    sub_29E4CD7AC(&qword_2A1A703B8, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
    v0 = sub_29E4FC2B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70498);
    }
  }
}

uint64_t sub_29E4CD7AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4CD7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E4CD86C()
{
  v1 = *v0;
  sub_29E4CBC3C();
  v2 = v0[2];
  v3 = v0[3];
  v6[3] = swift_getObjectType();
  v6[4] = *(v3 + 8);
  v6[0] = v2;
  v4 = *(*(v3 + 16) + 8);
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();

  return sub_29E4A1754(v6);
}

uint64_t sub_29E4CD968(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4CD7AC(qword_2A1A70300, 255, type metadata accessor for CloudSyncExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E4CDA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4CD7AC(qword_2A1A70300, 255, type metadata accessor for CloudSyncExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

id sub_29E4CDB4C(id result, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:

  return sub_29E4CDBB4(result);
}

id sub_29E4CDBB4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_29E4CDBC4(void *a1, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    a1 = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_29E4CDC2C(a1);
}

void sub_29E4CDC2C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_29E4CDC3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_29E4FAFB0();
    if (v10)
    {
      v11 = sub_29E4FAFD0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_29E4FAFC0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x29EDCA608];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_29E4FAFB0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_29E4FAFD0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_29E4FAFC0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_29E4CDE6C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_29E4CEF90(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_29E4A1B94(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_29E4CDC3C(v14, a3, a4, &v13);
  v10 = v4;
  sub_29E4A1B94(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x29EDCA608];
  return v10 & 1;
}

uint64_t sub_29E4CDFFC(uint64_t a1, uint64_t a2)
{
  sub_29E4D018C(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4CE090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4D018C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4CE100(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v3 = sub_29E4FB290();
  v117 = *(v3 - 8);
  v118 = v3;
  v4 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v115 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_29E4FB2A0();
  v114 = *(v116 - 8);
  v6 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v116);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29E4D018C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v107 - v12;
  v14 = sub_29E4FB1E0();
  v120 = *(v14 - 8);
  v121 = v14;
  v15 = *(v120 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v112 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v119 = &v107 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v122 = &v107 - v20;
  v21 = sub_29E4FC3C0();
  v22 = *(v21 - 8);
  v124 = v21;
  v125 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v21);
  v111 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v110 = &v107 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v113 = &v107 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = &v107 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v34 = &v107 - v33;
  sub_29E4D018C(0, &qword_2A184B7E0, type metadata accessor for CloudSyncResolutionInfo, v9);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v35 - 8);
  v38 = &v107 - v37;
  v39 = type metadata accessor for CloudSyncResolutionInfo();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x2A1C7C4A8](v39);
  v109 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x2A1C7C4A8](v42);
  v108 = &v107 - v45;
  MEMORY[0x2A1C7C4A8](v44);
  v47 = &v107 - v46;
  v128 = type metadata accessor for HealthAppDefaults();
  v129 = &off_2A24E8E98;
  v127[0] = a1;
  v48 = *sub_29E4A1710(v127, v128);

  sub_29E4DCAB4(v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_29E4CE090(v38, &qword_2A184B7E0, type metadata accessor for CloudSyncResolutionInfo);
    sub_29E4FC390();
    v49 = sub_29E4FC3B0();
    v50 = sub_29E4FC940();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_29E494000, v49, v50, "State not yet resolved", v51, 2u);
      MEMORY[0x29ED8BDB0](v51, -1, -1);
    }

    (*(v125 + 8))(v34, v124);
    goto LABEL_14;
  }

  sub_29E4CF498(v38, v47, type metadata accessor for CloudSyncResolutionInfo);
  v52 = v47;
  if ((MEMORY[0x29ED89DF0](v123, v47) & 1) == 0)
  {
    sub_29E4FC390();
    v71 = sub_29E4FC3B0();
    v72 = sub_29E4FC940();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_29E494000, v71, v72, "State not yet resolved, previous state resolved is different", v73, 2u);
      MEMORY[0x29ED8BDB0](v73, -1, -1);
    }

    (*(v125 + 8))(v32, v124);
    goto LABEL_12;
  }

  v53 = v122;
  sub_29E4FB1D0();
  sub_29E4FB280();
  v55 = v117;
  v54 = v118;
  v56 = v115;
  (*(v117 + 104))(v115, *MEMORY[0x29EDB9CB8], v118);
  sub_29E4FB270();
  (*(v55 + 8))(v56, v54);
  (*(v114 + 8))(v8, v116);
  v58 = v120;
  v57 = v121;
  if ((*(v120 + 48))(v13, 1, v121) == 1)
  {
    sub_29E4CE090(v13, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
    v59 = v113;
    sub_29E4FC390();
    v60 = v112;
    (*(v58 + 16))(v112, v53, v57);
    v61 = sub_29E4FC3B0();
    v62 = sub_29E4FC940();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v126 = v64;
      *v63 = 136446210;
      sub_29E4CD7AC(&qword_2A184B7E8, 255, MEMORY[0x29EDB9BC8]);
      v65 = sub_29E4FCF60();
      v66 = v60;
      v68 = v67;
      v69 = *(v58 + 8);
      v69(v66, v57);
      v70 = sub_29E4F68F4(v65, v68, &v126);

      *(v63 + 4) = v70;
      _os_log_impl(&dword_29E494000, v61, v62, "Failed to compute one day ago from %{public}s", v63, 0xCu);
      sub_29E4A1754(v64);
      MEMORY[0x29ED8BDB0](v64, -1, -1);
      MEMORY[0x29ED8BDB0](v63, -1, -1);

      (*(v125 + 8))(v113, v124);
      v69(v122, v57);
    }

    else
    {

      v91 = *(v58 + 8);
      v91(v60, v57);
      (*(v125 + 8))(v59, v124);
      v91(v53, v57);
    }

LABEL_12:
    v74 = v52;
LABEL_13:
    sub_29E4CF1C4(v74, type metadata accessor for CloudSyncResolutionInfo);
LABEL_14:
    v75 = 0;
    goto LABEL_15;
  }

  (*(v58 + 32))(v119, v13, v57);
  v77 = *(v39 + 20);
  if (sub_29E4FB1B0())
  {
    v78 = v110;
    sub_29E4FC390();
    v79 = v108;
    sub_29E4CF224(v52, v108, type metadata accessor for CloudSyncResolutionInfo);
    v80 = sub_29E4FC3B0();
    v81 = sub_29E4FC940();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v126 = v83;
      *v82 = 136446210;
      v84 = *(v39 + 20);
      sub_29E4CD7AC(&qword_2A184B7E8, 255, MEMORY[0x29EDB9BC8]);
      v85 = sub_29E4FCF60();
      v86 = v79;
      v88 = v87;
      sub_29E4CF1C4(v86, type metadata accessor for CloudSyncResolutionInfo);
      v89 = sub_29E4F68F4(v85, v88, &v126);

      *(v82 + 4) = v89;
      _os_log_impl(&dword_29E494000, v80, v81, "State resolved last %{public}s which is more than a day ago", v82, 0xCu);
      sub_29E4A1754(v83);
      MEMORY[0x29ED8BDB0](v83, -1, -1);
      MEMORY[0x29ED8BDB0](v82, -1, -1);

      (*(v125 + 8))(v110, v124);
      v90 = *(v58 + 8);
      v90(v119, v57);
      v90(v122, v57);
    }

    else
    {

      sub_29E4CF1C4(v79, type metadata accessor for CloudSyncResolutionInfo);
      (*(v125 + 8))(v78, v124);
      v105 = *(v58 + 8);
      v105(v119, v57);
      v105(v53, v57);
    }

    v74 = v52;
    goto LABEL_13;
  }

  v92 = v111;
  sub_29E4FC390();
  v93 = v109;
  sub_29E4CF224(v52, v109, type metadata accessor for CloudSyncResolutionInfo);
  v94 = sub_29E4FC3B0();
  v95 = sub_29E4FC940();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v126 = v97;
    *v96 = 136446210;
    v98 = *(v39 + 20);
    sub_29E4CD7AC(&qword_2A184B7E8, 255, MEMORY[0x29EDB9BC8]);
    v99 = sub_29E4FCF60();
    v100 = v93;
    v102 = v101;
    sub_29E4CF1C4(v100, type metadata accessor for CloudSyncResolutionInfo);
    v103 = sub_29E4F68F4(v99, v102, &v126);

    *(v96 + 4) = v103;
    _os_log_impl(&dword_29E494000, v94, v95, "State resolved last %{public}s which is less than a day ago", v96, 0xCu);
    sub_29E4A1754(v97);
    MEMORY[0x29ED8BDB0](v97, -1, -1);
    MEMORY[0x29ED8BDB0](v96, -1, -1);

    (*(v125 + 8))(v111, v124);
    v104 = *(v58 + 8);
    v104(v119, v57);
    v104(v122, v57);
  }

  else
  {

    sub_29E4CF1C4(v93, type metadata accessor for CloudSyncResolutionInfo);
    (*(v125 + 8))(v92, v124);
    v106 = *(v58 + 8);
    v106(v119, v57);
    v106(v53, v57);
  }

  sub_29E4CF1C4(v52, type metadata accessor for CloudSyncResolutionInfo);
  v75 = 1;
LABEL_15:
  sub_29E4A1754(v127);
  return v75;
}

uint64_t sub_29E4CEEF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29E4A197C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29E498334(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29E4CEF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_29E4FAFB0();
  v11 = result;
  if (result)
  {
    result = sub_29E4FAFD0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_29E4FAFC0();
  sub_29E4CDC3C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_29E4CF048(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_29E4C7648(a3, a4);
          return sub_29E4CDE6C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_29E4CF1B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29E4C7648(a1, a2);
  }

  return a1;
}

uint64_t sub_29E4CF1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4CF224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E4CF28C()
{
  result = qword_2A184B7F8;
  if (!qword_2A184B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7F8);
  }

  return result;
}

unint64_t sub_29E4CF2E0()
{
  result = qword_2A184B808;
  if (!qword_2A184B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B808);
  }

  return result;
}

unint64_t sub_29E4CF334()
{
  result = qword_2A184B818;
  if (!qword_2A184B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B818);
  }

  return result;
}

unint64_t sub_29E4CF388()
{
  result = qword_2A184B828;
  if (!qword_2A184B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B828);
  }

  return result;
}

void sub_29E4CF3DC()
{
  if (!qword_2A184B830)
  {
    sub_29E4CF44C();
    sub_29E4FCDA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B830);
    }
  }
}

unint64_t sub_29E4CF44C()
{
  result = qword_2A184B838;
  if (!qword_2A184B838)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A184B838);
  }

  return result;
}

uint64_t sub_29E4CF498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E4CF500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29E4CF568(uint64_t a1)
{
  v87 = a1;
  v1 = sub_29E4FC3C0();
  v76 = *(v1 - 8);
  v77 = v1;
  v2 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v75 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for CloudSyncExecutor.Planner.ChangeType(0);
  v4 = *(*(v84 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v84);
  v83 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FC1C0();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v78 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E4FC1E0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v82 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FC230();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v81 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E4FC110();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v85 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v86 = &v73 - v19;
  sub_29E4D018C(0, &qword_2A1A70630, MEMORY[0x29EDC3B48], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v23 = &v73 - v22;
  sub_29E4D018C(0, &unk_2A1A704F0, MEMORY[0x29EDC3B60], MEMORY[0x29EDC34D8]);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v29 = &v73 - v28;
  v30 = sub_29E4FB660();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB670();
  sub_29E4FC170();
  sub_29E4CD7AC(&qword_2A1A70628, 255, MEMORY[0x29EDC3B60]);
  sub_29E4FC2C0();
  v35 = v25;
  v36 = v31;
  (*(v26 + 8))(v29, v35);
  v37 = *(v31 + 48);
  v89 = v30;
  if (v37(v23, 1, v30) == 1)
  {
    sub_29E4CE090(v23, &qword_2A1A70630, MEMORY[0x29EDC3B48]);
    return MEMORY[0x29EDCA190];
  }

  (*(v31 + 32))(v34, v23, v89);
  v39 = v86;
  sub_29E4FC130();
  v40 = v85;
  sub_29E4FC100();
  sub_29E4CD7AC(&qword_2A1A70508, 255, MEMORY[0x29EDC34C0]);
  v41 = sub_29E4FC680();
  v42 = v88 + 8;
  v43 = *(v88 + 8);
  v43(v40, v15);
  if (v41)
  {
    v43(v39, v15);
    sub_29E4D018C(0, &qword_2A1A6F0D0, sub_29E4CD6B8, MEMORY[0x29EDC9E90]);
    sub_29E4CD6B8();
    v45 = *(*(v44 - 8) + 72);
    v46 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_29E4FDE40;
    sub_29E4FC220();
    v49 = v79;
    v48 = v80;
    v50 = v34;
    v51 = v78;
    (*(v79 + 104))(v78, *MEMORY[0x29EDC3508], v80);
    sub_29E4FC1D0();
    (*(v49 + 8))(v51, v48);
    *v83 = 1;
    swift_storeEnumTagMultiPayload();
    sub_29E4CD7AC(&qword_2A1A703B0, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
    sub_29E4CD7AC(&qword_2A1A703B8, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
    sub_29E4FC290();
    (*(v36 + 8))(v50, v89);
  }

  else
  {
    sub_29E4FC100();
    v52 = sub_29E4FC680();
    v43(v40, v15);
    v43(v39, v15);
    if ((v52 & 1) == 0)
    {
      v88 = v42;
      v59 = v15;
      v86 = v34;
      v60 = *(v74 + 16);
      v61 = *(v74 + 24);
      swift_getObjectType();
      v62 = *(*(v61 + 16) + 8);
      v63 = v75;
      sub_29E4FC0E0();

      v64 = sub_29E4FC3B0();
      v65 = sub_29E4FC930();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v90 = v84;
        *v66 = 136315138;
        sub_29E4FC130();
        sub_29E4CD7AC(&qword_2A184B870, 255, MEMORY[0x29EDC34C0]);
        v67 = sub_29E4FCF60();
        v68 = v36;
        v70 = v69;
        v43(v40, v59);
        v71 = sub_29E4F68F4(v67, v70, &v90);
        v36 = v68;

        *(v66 + 4) = v71;
        _os_log_impl(&dword_29E494000, v64, v65, "Unexpected criteria identifier %s", v66, 0xCu);
        v72 = v84;
        sub_29E4A1754(v84);
        MEMORY[0x29ED8BDB0](v72, -1, -1);
        MEMORY[0x29ED8BDB0](v66, -1, -1);
      }

      (*(v76 + 8))(v63, v77);
      (*(v36 + 8))(v86, v89);
      return MEMORY[0x29EDCA190];
    }

    sub_29E4D018C(0, &qword_2A1A6F0D0, sub_29E4CD6B8, MEMORY[0x29EDC9E90]);
    sub_29E4CD6B8();
    v54 = *(*(v53 - 8) + 72);
    v88 = (*(*(v53 - 8) + 80) + 32) & ~*(*(v53 - 8) + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_29E4FDE40;
    sub_29E4FC220();
    v56 = v78;
    v55 = v79;
    v57 = v80;
    (*(v79 + 104))(v78, *MEMORY[0x29EDC3508], v80);
    sub_29E4FC1D0();
    (*(v55 + 8))(v56, v57);
    v58 = v89;
    (*(v36 + 16))(v83, v34, v89);
    swift_storeEnumTagMultiPayload();
    sub_29E4CD7AC(&qword_2A1A703B0, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
    sub_29E4CD7AC(&qword_2A1A703B8, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
    sub_29E4FC290();
    (*(v36 + 8))(v34, v58);
  }

  return v47;
}

void sub_29E4D018C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E4D01F0()
{
  result = qword_2A1A70480;
  if (!qword_2A1A70480)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A70480);
  }

  return result;
}

void sub_29E4D0254()
{
  if (!qword_2A1A70780)
  {
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70780);
    }
  }
}

void sub_29E4D0338()
{
  sub_29E4D03AC();
  if (v0 <= 0x3F)
  {
    sub_29E4D03F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_29E4D03AC()
{
  if (!qword_2A1A70638)
  {
    v0 = sub_29E4FB660();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70638);
    }
  }
}

uint64_t sub_29E4D03F4()
{
  result = qword_2A1A6F210;
  if (!qword_2A1A6F210)
  {
    result = MEMORY[0x29EDC9A98];
    atomic_store(MEMORY[0x29EDC9A98], &qword_2A1A6F210);
  }

  return result;
}

unint64_t sub_29E4D0428()
{
  result = qword_2A184B878;
  if (!qword_2A184B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B878);
  }

  return result;
}

unint64_t sub_29E4D0480()
{
  result = qword_2A184B880;
  if (!qword_2A184B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B880);
  }

  return result;
}

unint64_t sub_29E4D04D8()
{
  result = qword_2A184B888;
  if (!qword_2A184B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B888);
  }

  return result;
}

unint64_t sub_29E4D0530()
{
  result = qword_2A184B890;
  if (!qword_2A184B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B890);
  }

  return result;
}

unint64_t sub_29E4D0588()
{
  result = qword_2A184B898;
  if (!qword_2A184B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B898);
  }

  return result;
}

unint64_t sub_29E4D05E0()
{
  result = qword_2A184B8A0;
  if (!qword_2A184B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8A0);
  }

  return result;
}

unint64_t sub_29E4D0638()
{
  result = qword_2A184B8A8;
  if (!qword_2A184B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8A8);
  }

  return result;
}

unint64_t sub_29E4D0690()
{
  result = qword_2A184B8B0;
  if (!qword_2A184B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8B0);
  }

  return result;
}

unint64_t sub_29E4D06E8()
{
  result = qword_2A184B8B8;
  if (!qword_2A184B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8B8);
  }

  return result;
}

unint64_t sub_29E4D0740()
{
  result = qword_2A184B8C0;
  if (!qword_2A184B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8C0);
  }

  return result;
}

unint64_t sub_29E4D0798()
{
  result = qword_2A184B8C8;
  if (!qword_2A184B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8C8);
  }

  return result;
}

uint64_t sub_29E4D07EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453657461647075 && a2 == 0xEB00000000657461;
  if (v4 || (sub_29E4FCF80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C41657461647075 && a2 == 0xEF6D687469726F67 || (sub_29E4FCF80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65466574656C6564 && a2 == 0xEF736D6574496465)
  {

    return 2;
  }

  else
  {
    v6 = sub_29E4FCF80();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29E4D0940(uint64_t a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = v26 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
  result = MEMORY[0x29ED8AEF0](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_29E4F7394(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *SharingRelationshipLatestTransactionDatesInputSignal.__allocating_init(context:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_29E4D6084(a1, a3, a4, v4, ObjectType, a2);
}

void *sub_29E4D0C0C(uint64_t a1)
{
  sub_29E4D75A8(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v37 - v5;
  v46 = sub_29E4FB240();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v46);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v39 = &v37 - v11;
  v42 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E4FCCA0();
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    sub_29E4D615C(&qword_2A1A6F190, &unk_2A1A6F198, 0x29EDBAE30);
    result = sub_29E4FC8D0();
    a1 = v48;
    v13 = v49;
    v15 = v50;
    v14 = v51;
    v16 = v52;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v14 = 0;
  }

  v41 = v15;
  v44 = (v7 + 48);
  v45 = (v7 + 56);
  v37 = v7;
  v38 = (v7 + 32);
  v43 = MEMORY[0x29EDCA190];
  while (a1 < 0)
  {
    v23 = sub_29E4FCCD0();
    if (!v23 || (v47 = v23, sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30), swift_dynamicCast(), (v22 = v53) == 0))
    {
LABEL_27:
      sub_29E4C4CA8();
      return v43;
    }

LABEL_17:
    v24 = [v22 profileIdentifier];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 identifier];

      sub_29E4FB230();
      v27 = *v45;
      v28 = v6;
      v29 = 0;
    }

    else
    {
      v27 = *v45;
      v28 = v6;
      v29 = 1;
    }

    v30 = v46;
    v27(v28, v29, 1, v46);

    if ((*v44)(v6, 1, v30) == 1)
    {
      result = sub_29E4D7100(v6, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
    }

    else
    {
      v31 = *v38;
      v32 = v46;
      (*v38)(v39, v6, v46);
      v31(v40, v39, v32);
      v33 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_29E4A7EE0(0, v43[2] + 1, 1, v43);
      }

      v35 = v43[2];
      v34 = v43[3];
      if (v35 >= v34 >> 1)
      {
        v43 = sub_29E4A7EE0(v34 > 1, v35 + 1, 1, v43);
      }

      v36 = v43;
      v43[2] = v35 + 1;
      result = (v33)(v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, v40, v46);
    }
  }

  v20 = v14;
  v21 = v16;
  if (v16)
  {
LABEL_13:
    v16 = (v21 - 1) & v21;
    v22 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= ((v15 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v21 = *(v13 + 8 * v14);
    ++v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static SharingRelationshipLatestTransactionDatesInputSignal.identityConfiguration.getter()
{
  v0 = sub_29E4FC300();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E4FC2F0();
  return sub_29E4FC2D0();
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.context.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.observer.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_29E4D11F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v3 = objc_opt_self();
  v4 = sub_29E4FB210();
  v5 = [v3 _profileWithUUID_type_];

  [v2 setProfileIdentifier_];
  [v2 resume];
  Source = type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal.QuerySource();
  v7 = swift_allocObject();
  sub_29E4D760C(0, &qword_2A184B8F8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v7 + 16) = v2;
  *(v7 + 24) = result;
  a1[3] = Source;
  a1[4] = &off_2A24E8A98;
  *a1 = v7;
  return result;
}

Swift::Void __swiftcall SharingRelationshipLatestTransactionDatesInputSignal.stopObservation()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_29E4D1360(&v1[4]);

  os_unfair_lock_unlock(v1 + 10);
}

void sub_29E4D1360(uint64_t a1)
{
  v3 = v2;
  v15 = a1;
  v4 = *(a1 + 8);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(a1 + 8);

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      sub_29E4A76F0(*(v4 + 56) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v14);
      sub_29E498334(v14, v13);
      v1 = *(*sub_29E4A1710(v13, v13[3]) + 24);
      os_unfair_lock_lock((v1 + 24));
      sub_29E4D768C((v1 + 16));
      if (v3)
      {
        break;
      }

      v3 = 0;
      v7 &= v7 - 1;
      os_unfair_lock_unlock((v1 + 24));
      sub_29E4A1754(v13);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        v12 = sub_29E4A278C(MEMORY[0x29EDCA190]);

        *(v15 + 8) = v12;
        return;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v1 + 24));
  __break(1u);
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.dependencyDidUpdate(anchors:)()
{
  v1 = v0;
  v57 = *v0;
  v2 = sub_29E4FC3C0();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v58 = &v54 - v6;
  sub_29E4D75A8(0, &qword_2A1A70470, sub_29E4C4ABC, MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v54 - v9;
  sub_29E4D75A8(0, &qword_2A1A70500, MEMORY[0x29EDC3B28], MEMORY[0x29EDC34D8]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v16 = &v54 - v15;
  sub_29E4C4ABC();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB610();
  sub_29E4FC160();
  sub_29E4D6114(&qword_2A1A70648, 255, MEMORY[0x29EDC3B28]);
  sub_29E4FC2C0();
  (*(v13 + 8))(v16, v12);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    sub_29E4D7100(v10, &qword_2A1A70470, sub_29E4C4ABC);
    v24 = v0[3];
    v23 = v1[4];
    swift_getObjectType();
    v25 = v56;
    sub_29E4FC0E0();

    v26 = sub_29E4FC3B0();
    v27 = sub_29E4FC920();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v61 = v1;
      v62 = v29;
      *v28 = 136315138;
      sub_29E4D6114(&qword_2A1A6F3C8, v30, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);
      v31 = sub_29E4FCF60();
      v33 = sub_29E4F68F4(v31, v32, &v62);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_29E494000, v26, v27, "%s: Dependency did update but no anchor present for summary sharing.", v28, 0xCu);
      sub_29E4A1754(v29);
      MEMORY[0x29ED8BDB0](v29, -1, -1);
      MEMORY[0x29ED8BDB0](v28, -1, -1);
    }

    return (*(v59 + 8))(v25, v60);
  }

  else
  {
    v55 = v19;
    (*(v19 + 32))(v22, v10, v18);
    v56 = v22;
    sub_29E4FC310();
    v35 = sub_29E4D0C0C(v62);

    v36 = sub_29E4D6B78(v35);

    v38 = v1[3];
    v37 = v1[4];
    swift_getObjectType();
    v39 = v58;
    sub_29E4FC0E0();
    swift_bridgeObjectRetain_n();

    v40 = sub_29E4FC3B0();
    v41 = sub_29E4FC940();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v61 = v1;
      v62 = v54;
      *v42 = 136315650;
      sub_29E4D6114(&qword_2A1A6F3C8, v43, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);
      v44 = sub_29E4FCF60();
      v46 = sub_29E4F68F4(v44, v45, &v62);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2048;
      v47 = *(v36 + 16);

      *(v42 + 14) = v47;

      *(v42 + 22) = 2080;
      sub_29E4FB240();
      sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
      v48 = sub_29E4FC8B0();
      v50 = sub_29E4F68F4(v48, v49, &v62);

      *(v42 + 24) = v50;
      _os_log_impl(&dword_29E494000, v40, v41, "%s: Found %ld sharing profiles: %s", v42, 0x20u);
      v51 = v54;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v51, -1, -1);
      MEMORY[0x29ED8BDB0](v42, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v52 = (*(v59 + 8))(v39, v60);
    v53 = v1[2];
    MEMORY[0x2A1C7C4A8](v52);
    *(&v54 - 2) = v36;
    *(&v54 - 1) = v1;
    os_unfair_lock_lock(v53 + 10);
    sub_29E4D6D18(&v53[4]);
    os_unfair_lock_unlock(v53 + 10);

    return (*(v55 + 8))(v56, v18);
  }
}

void sub_29E4D1C64(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a3;
  v180 = *a3;
  sub_29E4D75A8(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v171 = &v170 - v9;
  v10 = sub_29E4FB240();
  v206 = *(v10 - 8);
  v207 = v10;
  v11 = *(v206 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v186 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v185 = &v170 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v202 = &v170 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v173 = &v170 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = (&v170 - v21);
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v184 = &v170 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = (&v170 - v26);
  v187 = v28;
  MEMORY[0x2A1C7C4A8](v25);
  v191 = &v170 - v29;
  v199 = sub_29E4FC3C0();
  v194 = *(v199 - 8);
  v30 = *(v194 + 64);
  v31 = MEMORY[0x2A1C7C4A8](v199);
  v193 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v34 = MEMORY[0x2A1C7C4A8](v33);
  v192 = &v170 - v35;
  MEMORY[0x2A1C7C4A8](v34);
  v37 = &v170 - v36;
  v38 = *a1;
  v177 = a2;
  v201 = v3;
  v181 = v27;
  v172 = v39;
  if (v38)
  {
    v176 = 0;
  }

  else
  {
    *a1 = 1;
    v176 = *(a2 + 16) == 0;
  }

  v40 = *(a1 + 8);
  v200 = (a1 + 8);

  v42 = sub_29E4D0940(v41);
  v43 = *(v4 + 3);
  v44 = *(v4 + 4);
  ObjectType = swift_getObjectType();
  v198 = v43;
  v196 = ObjectType;
  v197 = v44;
  sub_29E4FC0E0();

  v46 = sub_29E4FC3B0();
  v47 = sub_29E4FC940();

  v48 = os_log_type_enabled(v46, v47);
  v203 = v4;
  v174 = a1;
  if (v48)
  {
    v4 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v49 = v211;
    *v4 = 136315394;
    *&v209 = v203;
    sub_29E4D6114(&qword_2A1A6F3C8, v50, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);
    v183 = v22;
    v51 = sub_29E4FCF60();
    v53 = sub_29E4F68F4(v51, v52, &v211);

    *(v4 + 4) = v53;
    *(v4 + 6) = 2080;
    sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
    v54 = sub_29E4FC8B0();
    v56 = sub_29E4F68F4(v54, v55, &v211);

    *(v4 + 14) = v56;
    _os_log_impl(&dword_29E494000, v46, v47, "%s: Looking for updates from existing profiles: %s", v4, 0x16u);
    v22 = v183;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v49, -1, -1);
    MEMORY[0x29ED8BDB0](v4, -1, -1);
  }

  v195 = *(v194 + 8);
  v195(v37, v199);
  v57 = v177;
  v58 = *(v177 + 16);
  v59 = *(v42 + 16);
  v60 = v181;
  v175 = v42;
  if (v58 > v59 >> 3)
  {

    v61 = sub_29E4D4B10(v57, v42);
  }

  else
  {
    v211 = v42;

    sub_29E4D48C4(v57);
    v61 = v211;
  }

  v62 = (v61 + 56);
  v63 = 1 << *(v61 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v61 + 56);
  v66 = (v63 + 63) >> 6;
  v208 = v206 + 16;
  v204 = v206 + 32;
  v205 = (v206 + 8);
  v194 += 8;

  v67 = 0;
  *&v68 = 136446210;
  v178 = v68;
  *&v68 = 136315394;
  v179 = v68;
  v189 = v61;
  v190 = (v61 + 56);
  v188 = v66;
LABEL_12:
  v69 = v67;
  while (v65)
  {
    v71 = v22;
    v67 = v69;
LABEL_21:
    v72 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v73 = v206;
    v74 = v207;
    v75 = *(v206 + 16);
    v76 = v191;
    v75(v191, *(v61 + 48) + *(v206 + 72) * (v72 | (v67 << 6)), v207);
    (*(v73 + 32))(v60, v76, v74);
    v77 = *v200;
    if (*(*v200 + 2))
    {
      v78 = sub_29E49ED7C(v60);
      if (v79)
      {
        v183 = v71;
        sub_29E4A76F0(*(v77 + 7) + 40 * v78, &v209);
        sub_29E498334(&v209, &v211);
        sub_29E4FC0E0();
        v94 = v207;
        v75(v173, v60, v207);
        v95 = v203;

        v96 = sub_29E4FC3B0();
        v97 = v95;
        v98 = sub_29E4FC940();

        if (os_log_type_enabled(v96, v98))
        {
          v99 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          *&v209 = v182;
          *v99 = v179;
          v213 = v97;
          sub_29E4D6114(&qword_2A1A6F3C8, v100, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);
          v101 = sub_29E4FCF60();
          v103 = sub_29E4F68F4(v101, v102, &v209);

          *(v99 + 4) = v103;
          *(v99 + 12) = 2080;
          sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08]);
          v104 = v173;
          v105 = sub_29E4FCF60();
          v107 = v106;
          v108 = v94;
          v109 = v98;
          v4 = *v205;
          (*v205)(v104, v108);
          v110 = sub_29E4F68F4(v105, v107, &v209);

          *(v99 + 14) = v110;
          _os_log_impl(&dword_29E494000, v96, v109, "%s: Ending sharing relationship observation for profile %s", v99, 0x16u);
          v111 = v182;
          swift_arrayDestroy();
          MEMORY[0x29ED8BDB0](v111, -1, -1);
          v112 = v99;
          v60 = v181;
          v61 = v189;
          MEMORY[0x29ED8BDB0](v112, -1, -1);
        }

        else
        {

          v4 = *v205;
          (*v205)(v173, v94);
        }

        v195(v172, v199);
        v113 = *(*sub_29E4A1710(&v211, v212) + 24);
        os_unfair_lock_lock((v113 + 24));
        v114 = v201;
        sub_29E4D6FF8((v113 + 16));
        v201 = v114;
        v22 = v183;
        v115 = (v113 + 24);
        if (v114)
        {
          goto LABEL_53;
        }

        os_unfair_lock_unlock(v115);
        sub_29E4F2B7C(v60, &v209);
        sub_29E4D7010(&v209);
        v116 = v171;
        sub_29E4F2B3C(v60, v171);
        sub_29E4D7100(v116, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
        (v4)(v60, v207);
        sub_29E4A1754(&v211);
        v176 = 1;
        v62 = v190;
        v66 = v188;
        goto LABEL_12;
      }
    }

    v80 = v192;
    sub_29E4FC0E0();
    v22 = v71;
    v81 = v207;
    v75(v71, v60, v207);
    v82 = sub_29E4FC3B0();
    v4 = v60;
    v83 = sub_29E4FC930();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v182 = v84;
      v183 = swift_slowAlloc();
      v211 = v183;
      *v84 = v178;
      sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08]);
      v85 = sub_29E4FCF60();
      v4 = v22;
      v87 = v86;
      v88 = *v205;
      (*v205)(v4, v207);
      v89 = sub_29E4F68F4(v85, v87, &v211);
      v22 = v4;

      v90 = v182;
      *(v182 + 4) = v89;
      v91 = v83;
      v92 = v90;
      _os_log_impl(&dword_29E494000, v82, v91, "Unexpectedly no transaction source for %{public}s", v90, 0xCu);
      v93 = v183;
      sub_29E4A1754(v183);
      MEMORY[0x29ED8BDB0](v93, -1, -1);
      MEMORY[0x29ED8BDB0](v92, -1, -1);

      v195(v192, v199);
      v60 = v181;
      (v88)(v181, v207);
      v69 = v67;
      v61 = v189;
    }

    else
    {

      v70 = *v205;
      (*v205)(v22, v81);
      v195(v80, v199);
      (v70)(v4, v81);
      v69 = v67;
      v61 = v189;
      v60 = v4;
    }

    v62 = v190;
    v66 = v188;
  }

  while (2)
  {
    v67 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v67 < v66)
    {
      v65 = v62[v67];
      ++v69;
      if (v65)
      {
        v71 = v22;
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  v117 = *v200;

  v119 = sub_29E4D0940(v118);
  v120 = v177;
  if (*(v119 + 16) <= *(v177 + 16) >> 3)
  {
    v211 = v177;

    sub_29E4D48C4(v119);

    v121 = v211;
  }

  else
  {

    v121 = sub_29E4D4B10(v119, v120);
  }

  v122 = v207;
  v123 = (v121 + 56);
  v124 = 1 << *(v121 + 32);
  v125 = -1;
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  v126 = v125 & *(v121 + 56);
  v127 = (v124 + 63) >> 6;

  v128 = 0;
  v183 = (v121 + 56);
  v182 = v127;
  v188 = v121;
  if (!v126)
  {
LABEL_37:
    v130 = v202;
    while (1)
    {
      v129 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        goto LABEL_51;
      }

      if (v129 >= v127)
      {

        if (v176)
        {
          sub_29E4D31B0(v174);
        }

        return;
      }

      v126 = v123[v129];
      ++v128;
      if (v126)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v129 = v128;
    v130 = v202;
LABEL_41:
    v131 = *(v121 + 48);
    v132 = v206;
    v133 = *(v206 + 16);
    v134 = v184;
    (v133)(v184, v131 + *(v206 + 72) * (__clz(__rbit64(v126)) | (v129 << 6)), v122);
    v192 = *(v132 + 32);
    (v192)(v130, v134, v122);
    sub_29E4FC0E0();
    v135 = v185;
    v190 = v133;
    (v133)(v185, v130, v122);
    v136 = v203;

    v137 = sub_29E4FC3B0();
    v138 = v122;
    v139 = sub_29E4FC940();

    if (os_log_type_enabled(v137, v139))
    {
      v140 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v211 = v181;
      *v140 = v179;
      *&v209 = v136;
      sub_29E4D6114(&qword_2A1A6F3C8, v141, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);
      v142 = sub_29E4FCF60();
      v144 = sub_29E4F68F4(v142, v143, &v211);

      *(v140 + 4) = v144;
      *(v140 + 12) = 2080;
      sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08]);
      v145 = sub_29E4FCF60();
      v147 = v146;
      v191 = *v205;
      (v191)(v135, v138);
      v148 = sub_29E4F68F4(v145, v147, &v211);
      v136 = v203;

      *(v140 + 14) = v148;
      _os_log_impl(&dword_29E494000, v137, v139, "%s: Beginning sharing relationship observation for profile %s", v140, 0x16u);
      v149 = v181;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v149, -1, -1);
      v150 = v140;
      v130 = v202;
      MEMORY[0x29ED8BDB0](v150, -1, -1);
    }

    else
    {

      v191 = *v205;
      (v191)(v135, v138);
    }

    v195(v193, v199);
    v122 = v138;
    v151 = *(v136 + 8);
    (*(v136 + 7))(&v211, v130);
    v152 = sub_29E4A1710(&v211, v212);
    v153 = swift_allocObject();
    swift_weakInit();
    v154 = v186;
    (v190)(v186, v130, v138);
    v155 = (*(v206 + 80) + 24) & ~*(v206 + 80);
    v156 = swift_allocObject();
    *(v156 + 16) = v153;
    v157 = (v192)(v156 + v155, v154, v122);
    v4 = *(*v152 + 24);
    MEMORY[0x2A1C7C4A8](v157);
    *(&v170 - 4) = v158;
    *(&v170 - 3) = sub_29E4D7170;
    *(&v170 - 2) = v156;

    os_unfair_lock_lock(v4 + 6);
    v159 = v201;
    sub_29E4D7188(v4 + 2);
    v201 = v159;
    if (v159)
    {
      break;
    }

    v126 &= v126 - 1;
    os_unfair_lock_unlock(v4 + 6);

    sub_29E4A76F0(&v211, &v209);
    v160 = v200;
    v161 = *v200;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v213 = *v160;
    v163 = v210;
    v164 = sub_29E4A9F54(&v209, v210);
    v165 = *(*(v163 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v164);
    v167 = (&v170 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v168 + 16))(v167);
    v169 = v202;
    sub_29E4D64C0(*v167, v202, isUniquelyReferenced_nonNull_native, &v213);
    (v191)(v169, v122);
    sub_29E4A1754(&v209);
    *v160 = v213;
    sub_29E4A1754(&v211);
    v128 = v129;
    v121 = v188;
    v123 = v183;
    v127 = v182;
    if (!v126)
    {
      goto LABEL_37;
    }
  }

LABEL_52:
  v115 = (v4 + 24);
LABEL_53:
  os_unfair_lock_unlock(v115);
  __break(1u);
}

uint64_t sub_29E4D30E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    MEMORY[0x2A1C7C4A8](result);
    os_unfair_lock_lock(v1 + 10);
    sub_29E4D7234(&v1[4]);
    os_unfair_lock_unlock(v1 + 10);
  }

  return result;
}

uint64_t sub_29E4D31B0(uint64_t a1)
{
  v3 = sub_29E4FC560();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E4FC580();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(v1 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v11;
  aBlock[4] = sub_29E4D71A8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E4BB1B0;
  aBlock[3] = &unk_2A24E8B28;
  v14 = _Block_copy(aBlock);

  sub_29E4FC570();
  v20 = MEMORY[0x29EDCA190];
  sub_29E4D6114(&qword_2A1A70428, 255, MEMORY[0x29EDCA248]);
  v15 = MEMORY[0x29EDCA248];
  sub_29E4D75A8(0, &qword_2A1A6F240, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E4D71C8(&qword_2A1A6F238, &qword_2A1A6F240, v15);
  sub_29E4FCC70();
  MEMORY[0x29ED8B0B0](0, v10, v6, v14);
  _Block_release(v14);
  (*(v19 + 8))(v6, v3);
  (*(v7 + 8))(v10, v18);
}

uint64_t sub_29E4D34A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FC300();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E4C474C();
  v15 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 40);
  v14[1] = *(a1 + 48);
  v14[0] = swift_getObjectType();
  sub_29E4FC2F0();
  v16 = a2;
  sub_29E4C4804(0);
  sub_29E4C4838();
  sub_29E4C4920();
  sub_29E4D6DC8();

  sub_29E4FC0B0();
  v16 = a1;
  type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal();
  sub_29E4D6114(qword_2A1A6F3D0, v12, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);
  sub_29E4FC280();
  return (*(v7 + 8))(v10, v15);
}

unint64_t sub_29E4D36A0(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v83 = a4;
  v80 = a5;
  v8 = sub_29E4FC3C0();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v77 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v76 = &v74 - v12;
  v13 = sub_29E4FB240();
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v74 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v74 - v21;
  sub_29E4D75A8(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x2A1C7C4A8](v23 - 8);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v25);
  v30 = &v74 - v29;
  if (a3)
  {
    v31 = *(a1 + 8);
    if (*(v31 + 16))
    {
      result = sub_29E49ED7C(v83);
      if (v32)
      {
        sub_29E4A76F0(*(v31 + 56) + 40 * result, v85);
        v33 = sub_29E4FB0D0();
        v34 = [v33 hk_isDatabaseAccessibilityError];

        v35 = *(v80 + 24);
        v36 = *(v80 + 32);
        swift_getObjectType();
        v37 = (v82 + 16);
        if (v34)
        {
          v38 = v76;
          sub_29E4FC0E0();
          v39 = *v37;
          v40 = v37;
          v41 = v81;
          v77 = v40;
          v75 = v39;
          v39(v20, v83, v81);
          v42 = sub_29E4FC3B0();
          v43 = sub_29E4FC940();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            *&v84[0] = v74;
            *v44 = 136446210;
            sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08]);
            v45 = sub_29E4FCF60();
            v47 = v46;
            (*(v82 + 8))(v20, v81);
            v48 = sub_29E4F68F4(v45, v47, v84);
            v41 = v81;

            *(v44 + 4) = v48;
            _os_log_impl(&dword_29E494000, v42, v43, "Scheduling retry for fetch and observe for transactions for %{public}s due to database accessibility error", v44, 0xCu);
            v49 = v74;
            sub_29E4A1754(v74);
            MEMORY[0x29ED8BDB0](v49, -1, -1);
            v50 = v44;
            v51 = v82;
            MEMORY[0x29ED8BDB0](v50, -1, -1);
          }

          else
          {

            v51 = v82;
            (*(v82 + 8))(v20, v41);
          }

          (*(v78 + 8))(v38, v79);
          sub_29E4FB6A0();
          sub_29E4FB690();
          sub_29E4A76F0(v85, v84);
          v75(v22, v83, v41);
          v72 = (*(v51 + 80) + 64) & ~*(v51 + 80);
          v73 = swift_allocObject();
          sub_29E498334(v84, v73 + 16);
          *(v73 + 56) = v80;
          (*(v51 + 32))(v73 + v72, v22, v41);

          sub_29E4FB680();
        }

        else
        {
          v55 = v77;
          sub_29E4FC0E0();
          v56 = *v37;
          v57 = a2;
          v58 = v81;
          v56(v17, v83, v81);
          v59 = a2;
          v60 = sub_29E4FC3B0();
          v61 = sub_29E4FC920();
          sub_29E4D724C(v57, 1);
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            *&v84[0] = v83;
            *v62 = 136446466;
            sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08]);
            v63 = sub_29E4FCF60();
            v65 = v64;
            (*(v82 + 8))(v17, v58);
            v66 = sub_29E4F68F4(v63, v65, v84);

            *(v62 + 4) = v66;
            *(v62 + 12) = 2082;
            v85[7] = v57;
            v67 = v57;
            sub_29E4A2CE8(0, &qword_2A1A70BC8);
            v68 = sub_29E4FC700();
            v70 = sub_29E4F68F4(v68, v69, v84);

            *(v62 + 14) = v70;
            _os_log_impl(&dword_29E494000, v60, v61, "Failed to fetch and observe for transactions for %{public}s: %{public}s", v62, 0x16u);
            v71 = v83;
            swift_arrayDestroy();
            MEMORY[0x29ED8BDB0](v71, -1, -1);
            MEMORY[0x29ED8BDB0](v62, -1, -1);
          }

          else
          {

            (*(v82 + 8))(v17, v58);
          }

          (*(v78 + 8))(v55, v79);
        }

        return sub_29E4A1754(v85);
      }
    }
  }

  else
  {
    v85[0] = a2;
    sub_29E4D72C0();
    sub_29E4D6114(&qword_2A184B8F0, 255, sub_29E4D72C0);
    v52 = sub_29E4FC8F0();
    if (v52)
    {
      v53 = v52;
      sub_29E4FCB10();
    }

    else
    {
      v54 = sub_29E4FB1E0();
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
    }

    (*(v82 + 16))(v22, v83, v81);
    sub_29E4D7328(v30, v27);
    sub_29E4D780C(v27, v22);
    sub_29E4D31B0(a1);
    return sub_29E4D7100(v30, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  }

  return result;
}

uint64_t sub_29E4D3F08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E4A1710(a1, a1[3]);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a3, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v6 + 32))(v12 + v11, v8, v5);
  v13 = *(*v9 + 24);
  v16 = *v9;
  v17 = sub_29E4D7480;
  v18 = v12;

  os_unfair_lock_lock((v13 + 24));
  sub_29E4D76A4((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
}

uint64_t sub_29E4D40B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    MEMORY[0x2A1C7C4A8](result);
    os_unfair_lock_lock(v1 + 10);
    sub_29E4D7674();
    os_unfair_lock_unlock(v1 + 10);
  }

  return result;
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.dependencyConfigurations(for:)()
{
  sub_29E4D7098(0, &qword_2A1A6F0C0, &qword_2A1A70480, MEMORY[0x29EDC3608], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E4FDE40;
  sub_29E4FB610();
  *(v0 + 56) = sub_29E4FC2E0();
  *(v0 + 64) = sub_29E4D6114(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0]);
  sub_29E4A197C((v0 + 32));
  sub_29E4FB600();
  return v0;
}

uint64_t sub_29E4D4254(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    [*(a2 + 16) stopQuery_];
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = objc_allocWithZone(MEMORY[0x29EDBADB0]);
  v19 = sub_29E4D722C;
  v20 = v9;
  aBlock = MEMORY[0x29EDCA5F8];
  v16 = 1107296256;
  v17 = sub_29E4D452C;
  v18 = &unk_2A24E8B78;
  v11 = _Block_copy(&aBlock);

  v12 = [v10 initWithHandler_];
  _Block_release(v11);

  v19 = sub_29E4D722C;
  v20 = v9;
  aBlock = MEMORY[0x29EDCA5F8];
  v16 = 1107296256;
  v17 = sub_29E4D452C;
  v18 = &unk_2A24E8BA0;
  v13 = _Block_copy(&aBlock);

  [v12 setUpdateHandler_];
  _Block_release(v13);
  [*(a2 + 16) executeQuery_];

  *a1 = v12;
  return result;
}

void sub_29E4D4438(int a1, uint64_t a2, id a3, void (*a4)(id, uint64_t))
{
  if (a2)
  {
    (a4)(a2, 0, a3);
  }

  else
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v6 = objc_opt_self();
      v7 = sub_29E4FC6B0();
      v5 = [v6 hk:0 error:v7 description:?];

      a3 = 0;
    }

    v8 = a3;
    a4(v5, 1);
  }
}

uint64_t sub_29E4D452C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_29E4A2AD8(0, &qword_2A1A6F178, 0x29EDBADA8);
    v5 = sub_29E4FC7C0();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_29E4D45E4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  v4 = *(v0 + 64);

  return v0;
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4D46D8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  return swift_unknownObjectRetain();
}

void sub_29E4D4704()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_29E4D1360(&v1[4]);

  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_29E4D4760()
{
  sub_29E4D7098(0, &qword_2A1A6F0C0, &qword_2A1A70480, MEMORY[0x29EDC3608], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E4FDE40;
  sub_29E4FB610();
  *(v0 + 56) = sub_29E4FC2E0();
  *(v0 + 64) = sub_29E4D6114(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0]);
  sub_29E4A197C((v0 + 32));
  sub_29E4FB600();
  return v0;
}

uint64_t sub_29E4D4858(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4D6114(qword_2A1A6F3D0, a2, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);

  return MEMORY[0x2A1C64680](a1, v3);
}

uint64_t sub_29E4D48C4(uint64_t a1)
{
  sub_29E4D75A8(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_29E4FB240();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x2A1C7C4A8](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_29E4D7100(v6, &qword_2A1A70698, MEMORY[0x29EDB9C08]))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_29E4D55BC(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29E4D4B10(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x29EDCA608];
  sub_29E4D75A8(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = (&v68 - v9);
  v11 = sub_29E4FB240();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v88 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = (&v68 - v16);
  MEMORY[0x2A1C7C4A8](v15);
  v83 = (&v68 - v19);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x29EDCA1A0];
    goto LABEL_54;
  }

  v69 = v10;
  v71 = v8;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v82 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v90 = (v23 & v20);
  v75 = (63 - v22) >> 6;
  v89 = v18 + 16;
  v80 = (v18 + 48);
  v81 = (v18 + 56);
  v79 = (v18 + 32);
  v85 = (a2 + 56);
  v70 = v18;
  v91 = (v18 + 8);

  v25 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v21 = i)
  {
    v26 = v90;
    v27 = v25;
    if (v90)
    {
LABEL_14:
      v8 = (v26 - 1) & v26;
      v31 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v11);
      v32 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v75 <= (v25 + 1) ? v25 + 1 : v75;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v75)
        {
          break;
        }

        v26 = *(v21 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      v8 = 0;
      v32 = 1;
      v31 = v69;
    }

    v77 = *v81;
    v77(v31, v32, 1, v11);
    v92 = a1;
    v93 = v21;
    v94 = v82;
    v95 = v29;
    v96 = v8;
    v76 = *v80;
    if (v76(v31, 1, v11) == 1)
    {
      sub_29E4D7100(v31, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v31, v11);
    v33 = *(a2 + 40);
    v73 = sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
    v34 = sub_29E4FC650();
    v35 = -1 << *(a2 + 32);
    v25 = v34 & ~v35;
    v27 = v25 >> 6;
    v21 = 1 << v25;
    if (((1 << v25) & v85[v25 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v11);
LABEL_22:
    v25 = v29;
    v90 = v8;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v35;
  v36 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v36;
  while (1)
  {
    v86(v17, *(a2 + 48) + v87 * v25, v11);
    v37 = sub_29E4D6114(&qword_2A184B2D0, 255, MEMORY[0x29EDB9C08]);
    v38 = sub_29E4FC680();
    v90 = *v91;
    v90(v17, v11);
    if (v38)
    {
      break;
    }

    v25 = (v25 + 1) & v84;
    v27 = v25 >> 6;
    v21 = 1 << v25;
    if (((1 << v25) & v85[v25 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v11);
      goto LABEL_22;
    }
  }

  v84 = v37;
  v39 = (v90)(v83, v11);
  v40 = *(a2 + 32);
  v68 = ((1 << v40) + 63) >> 6;
  v24 = 8 * v68;
  a1 = v72;
  if ((v40 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    MEMORY[0x2A1C7C4A8](v39);
    v42 = &v68 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v42, v85, v41);
    v43 = *&v42[8 * v27] & ~v21;
    v44 = *(a2 + 16);
    v83 = v42;
    *&v42[8 * v27] = v43;
    v45 = v44 - 1;
    v46 = v71;
    v27 = i;
    v47 = v75;
LABEL_26:
    v70 = v45;
    while (v8)
    {
      v48 = v29;
LABEL_38:
      v51 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v86(v46, *(a1 + 48) + (v51 | (v48 << 6)) * v87, v11);
      v52 = 0;
LABEL_39:
      v77(v46, v52, 1, v11);
      v92 = a1;
      v93 = v27;
      v94 = v82;
      v95 = v29;
      v96 = v8;
      if (v76(v46, 1, v11) == 1)
      {
        sub_29E4D7100(v46, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
        a2 = sub_29E4C0394(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v46, v11);
      v53 = *(a2 + 40);
      v54 = sub_29E4FC650();
      v55 = a2;
      v56 = -1 << *(a2 + 32);
      v25 = v54 & ~v56;
      v57 = v25 >> 6;
      v21 = 1 << v25;
      if (((1 << v25) & v85[v25 >> 6]) != 0)
      {
        v86(v17, *(v55 + 48) + v25 * v87, v11);
        v58 = sub_29E4FC680();
        v90(v17, v11);
        if ((v58 & 1) == 0)
        {
          v59 = ~v56;
          do
          {
            v25 = (v25 + 1) & v59;
            v57 = v25 >> 6;
            v21 = 1 << v25;
            if (((1 << v25) & v85[v25 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v17, *(v55 + 48) + v25 * v87, v11);
            v60 = sub_29E4FC680();
            v90(v17, v11);
          }

          while ((v60 & 1) == 0);
        }

        v90(v88, v11);
        v61 = v83[v57];
        v83[v57] = v61 & ~v21;
        a2 = v55;
        a1 = v72;
        v46 = v71;
        v27 = i;
        v47 = v75;
        if ((v61 & v21) != 0)
        {
          v45 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = MEMORY[0x29EDCA1A0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v11);
        a2 = v55;
        a1 = v72;
        v46 = v71;
        v27 = i;
        v47 = v75;
      }
    }

    if (v47 <= (v29 + 1))
    {
      v49 = v29 + 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        v8 = 0;
        v52 = 1;
        v29 = v50;
        goto LABEL_39;
      }

      v8 = *(v27 + 8 * v48);
      ++v29;
      if (v8)
      {
        v29 = v48;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v24;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_29E4D586C(v67, v68, v83, v25, &v92);

  MEMORY[0x29ED8BDB0](v67, -1, -1);
LABEL_52:
  sub_29E4C4CA8();
LABEL_54:
  v62 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t sub_29E4D55BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_29E4FB240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
  v35 = a1;
  v13 = sub_29E4FC650();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_29E4D6114(&qword_2A184B2D0, 255, MEMORY[0x29EDB9C08]);
      v22 = sub_29E4FC680();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29E4F8E78();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_29E4D5D78(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_29E4D586C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  sub_29E4D75A8(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_29E4FB240();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_29E4D7100(v12, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
          v48 = v64;

          return sub_29E4C0394(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
        v38 = sub_29E4FC650();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_29E4D6114(&qword_2A184B2D0, 255, MEMORY[0x29EDB9C08]);
        v46 = sub_29E4FC680();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x29EDCA1A0];
  }
}

uint64_t sub_29E4D5D78(int64_t a1)
{
  v3 = sub_29E4FB240();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_29E4FCC80();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
        v27 = sub_29E4FC650();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

void *sub_29E4D6084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return sub_29E4D61C4(a1, a2, a3, sub_29E4D11F8, 0, v11, a5, a6);
}

uint64_t sub_29E4D6114(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4D615C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E4A2AD8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_29E4D61C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v33 = a4;
  v34 = a5;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v9 = sub_29E4FCA60();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E4FCA30();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = sub_29E4FC580();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = MEMORY[0x29EDCA190];
  v18 = sub_29E4A1068(MEMORY[0x29EDCA190]);
  sub_29E4D760C(0, &qword_2A1A6F130);
  v19 = swift_allocObject();
  *(v19 + 40) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = MEMORY[0x29EDCA198];
  *(v19 + 32) = v18;
  a6[2] = v19;
  v26 = sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);
  sub_29E4FC570();
  v35 = v17;
  sub_29E4D6114(&qword_2A1A6F1C0, 255, MEMORY[0x29EDCA288]);
  v20 = MEMORY[0x29EDCA288];
  sub_29E4D75A8(0, &qword_2A1A6F228, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29E4D71C8(&qword_2A1A6F220, &qword_2A1A6F228, v20);
  sub_29E4FCC70();
  (*(v27 + 104))(v12, *MEMORY[0x29EDCA2A8], v28);
  v21 = sub_29E4FCA90();
  v22 = v32;
  a6[3] = v29;
  a6[4] = v22;
  v23 = v31;
  a6[5] = v30;
  a6[6] = v23;
  v24 = v34;
  a6[7] = v33;
  a6[8] = v24;
  a6[9] = v21;
  return a6;
}

uint64_t sub_29E4D64C0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_29E4FB240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Source = type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal.QuerySource();
  v36 = &off_2A24E8A98;
  *&v34 = a1;
  v13 = *a4;
  v15 = sub_29E49ED7C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      sub_29E4A1754(v22);
      return sub_29E498334(&v34, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_29E4C2E18();
    goto LABEL_7;
  }

  sub_29E4C0708(v18, a3 & 1);
  v24 = *a4;
  v25 = sub_29E49ED7C(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_29E4FCFB0();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  v27 = Source;
  v28 = sub_29E4A9F54(&v34, Source);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v31 = (&v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  sub_29E4D6738(v15, v12, *v31, v21);
  return sub_29E4A1754(&v34);
}

uint64_t sub_29E4D6738(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Source = type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal.QuerySource();
  v16 = &off_2A24E8A98;
  *&v14 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29E4FB240();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_29E498334(&v14, a4[7] + 40 * a1);
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

uint64_t sub_29E4D6814(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E4FCCB0())
  {
    v4 = sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
    v5 = sub_29E4D615C(&qword_2A1A6F1E0, &qword_2A1A6F1E8, 0x29EDBAD78);
    result = MEMORY[0x29ED8AEF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x29ED8B3B0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_29E4F6E84(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_29E4FCCB0();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29E4D6980(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKSharingMessageDirection(0);
  v4 = v3;
  v5 = sub_29E4D6114(&qword_2A184B8D8, 255, type metadata accessor for HKSharingMessageDirection);
  result = MEMORY[0x29ED8AEF0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_29E4F7258(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_29E4D6A30(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKSharingStatus(0);
  v4 = v3;
  v5 = sub_29E4D6114(&qword_2A184B8D0, 255, type metadata accessor for HKSharingStatus);
  result = MEMORY[0x29ED8AEF0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_29E4F722C(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_29E4D6AE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x29ED8AEF0](v2, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_29E4F70DC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_29E4D6B78(uint64_t a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
  result = MEMORY[0x29ED8AEF0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_29E4F7394(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_29E4D6DC8()
{
  result = qword_2A1A6F288;
  if (!qword_2A1A6F288)
  {
    sub_29E4C4804(255);
    sub_29E4D6114(&unk_2A1A706F0, 255, MEMORY[0x29EDB9BC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F288);
  }

  return result;
}

uint64_t sub_29E4D6EA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29E4D6F00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_29E4D6F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29E4D6FA8(uint64_t result, int a2, int a3)
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

uint64_t sub_29E4D7010(uint64_t a1)
{
  sub_29E4D7098(0, &qword_2A184B8E0, &qword_2A184B790, &protocol descriptor for SummaryTransactionSource, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E4D7098(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E4A2CE8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E4D7100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4D75A8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4D71B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E4D71C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E4D75A8(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4D724C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_29E4D7258()
{
  v1 = *(sub_29E4FB240() - 8);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_29E4D3F08((v0 + 16), v2, v3);
}

void sub_29E4D72C0()
{
  if (!qword_2A184B8E8)
  {
    sub_29E4A2AD8(255, &qword_2A1A6F178, 0x29EDBADA8);
    v0 = sub_29E4FC800();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B8E8);
    }
  }
}

uint64_t sub_29E4D7328(uint64_t a1, uint64_t a2)
{
  sub_29E4D75A8(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4D73BC()
{
  v1 = sub_29E4FB240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E4D7498(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t, uint64_t))
{
  v6 = *(sub_29E4FB240() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2 & 1, v7, v8);
}

void sub_29E4D7554(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    [*(v1 + 16) stopQuery_];

    *a1 = 0;
  }
}

void sub_29E4D75A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E4D760C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v3 = sub_29E4FCDC0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_29E4D76C4(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x29EDCA190];
  while (1)
  {
    v15 = *v6;

    a1(&v14, &v15);
    if (v3)
    {
      break;
    }

    if (v14)
    {
      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_29E4A8244(0, v7[2] + 1, 1, v7);
      }

      v9 = v7[2];
      v8 = v7[3];
      v10 = v13;
      if (v9 >= v8 >> 1)
      {
        v11 = sub_29E4A8244((v8 > 1), v9 + 1, 1, v7);
        v10 = v13;
        v7 = v11;
      }

      v7[2] = v9 + 1;
      *&v7[2 * v9 + 4] = v10;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_29E4D780C(uint64_t a1, uint64_t a2)
{
  sub_29E4DC254(0, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_29E4FB1E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    v14 = MEMORY[0x29EDB9BC8];
    sub_29E4DBD7C(a1, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
    sub_29E4F2B3C(a2, v8);
    v15 = sub_29E4FB240();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_29E4DBD7C(v8, qword_2A1A70838, v14);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_29E4C2214(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_29E4FB240();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_29E4D7A54(uint64_t a1, uint64_t a2)
{
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_29E4FB910();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    v14 = MEMORY[0x29EDC1958];
    sub_29E4DBD7C(a1, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
    sub_29E4F2C60(a2, v8);
    v15 = sub_29E4FB240();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_29E4DBD7C(v8, &unk_2A1A705A0, v14);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_29E4C2258(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_29E4FB240();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_29E4D7C9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_29E49ED7C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_29E4C3090();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_29E4FB240();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_29E4C19DC(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_29E4D7D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_29E49ED7C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E4C3348();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_29E4FB240();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_29E4FB910();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_29E4C1D04(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_29E4FB910();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void sub_29E4D7F04()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v1 = objc_allocWithZone(MEMORY[0x29EDBAAB0]);
  v2 = v0;
  v3 = [v1 initWithHealthStore_];
  v4 = [objc_allocWithZone(MEMORY[0x29EDBACE8]) initWithHealthStore_];

  type metadata accessor for EndSharingRelationshipManager();
  swift_allocObject();
  v5 = sub_29E4DB688(v3, v4);

  qword_2A1A70C98 = v5;
}

uint64_t sub_29E4D7FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 8);
  v8 = v7[2];
  v9 = MEMORY[0x29EDCA190];
LABEL_2:
  v10 = &v7[2 * v6 + 5];
  while (v8 != v6)
  {
    if (v6 >= v7[2])
    {
      __break(1u);
LABEL_20:
      v7 = sub_29E4A80F4(0, v7[2] + 1, 1, v7);
      goto LABEL_16;
    }

    ++v6;
    v11 = v10 + 2;
    v12 = *(v10 - 1);
    v3 = *v10;

    v12(&v27, v13);

    v10 = v11;
    if (v27)
    {
      v26 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_29E4A8114(0, v9[2] + 1, 1, v9);
      }

      v15 = v9[2];
      v14 = v9[3];
      v3 = v15 + 1;
      v16 = v26;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_29E4A8114((v14 > 1), v15 + 1, 1, v9);
        v16 = v26;
        v9 = v17;
      }

      v9[2] = v3;
      *&v9[2 * v15 + 4] = v16;
      goto LABEL_2;
    }
  }

  v18 = v9[2] + 1;
  v19 = 4;
  while (--v18)
  {
    v20 = v9[v19];
    v19 += 2;
    if (v20 == a2)
    {
    }
  }

  v3 = swift_allocObject();
  *(v3 + 24) = a3;
  swift_unknownObjectWeakInit();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v23 = v7[2];
  v22 = v7[3];
  if (v23 >= v22 >> 1)
  {
    v7 = sub_29E4A80F4((v22 > 1), v23 + 1, 1, v7);
  }

  v7[2] = v23 + 1;
  v24 = &v7[2 * v23];
  v24[4] = sub_29E4DBD30;
  v24[5] = v3;

  *(a1 + 8) = v7;
  return result;
}

unint64_t sub_29E4D81F0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_29E4DBA04((a1 + 8), a2);
  result = swift_unknownObjectRelease();
  v6 = *(*(a1 + 8) + 16);
  if (v6 >= v4)
  {
    return sub_29E4DBC70(v4, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E4D826C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29E4FB240();
  v103 = *(v4 - 8);
  v104 = v4;
  v5 = *(v103 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v102 = &v91 - v8;
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v110 = &v91 - v11;
  v12 = sub_29E4FB930();
  v108 = *(v12 - 8);
  v13 = *(v108 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v107 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E4FB910();
  v115 = *(v15 - 8);
  v116 = v15;
  v16 = *(v115 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v114 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E4FBFE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v22;
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v91 - v24;
  v26 = sub_29E4FC3C0();
  v105 = *(v26 - 8);
  v106 = v26;
  v27 = *(v105 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v29 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC370();
  v30 = *(v19 + 16);
  v112 = a1;
  v30(v25, a1, v18);
  v31 = sub_29E4FC3B0();
  v97 = sub_29E4FC940();
  v32 = os_log_type_enabled(v31, v97);
  v96 = v3;
  v101 = v18;
  v111 = v19;
  v100 = v23;
  v98 = v19 + 16;
  v109 = v30;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v117 = v92;
    aBlock = v3;
    *v33 = 136315395;
    swift_getMetatypeMetadata();
    v34 = sub_29E4FC700();
    v36 = sub_29E4F68F4(v34, v35, &v117);
    v93 = v12;
    v37 = v36;

    *(v33 + 4) = v37;
    *(v33 + 12) = 2081;
    v30(v23, v25, v18);
    v38 = sub_29E4FC700();
    v40 = v39;
    (*(v111 + 8))(v25, v18);
    v41 = sub_29E4F68F4(v38, v40, &v117);
    v12 = v93;

    *(v33 + 14) = v41;
    _os_log_impl(&dword_29E494000, v31, v97, "[%s]: Starting to end sharing relationship for %{private}s. Updating the profile's endSharingRelationshipState to endingInProgress.", v33, 0x16u);
    v42 = v92;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v42, -1, -1);
    MEMORY[0x29ED8BDB0](v33, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v25, v18);
  }

  (*(v105 + 8))(v29, v106);
  (*(v108 + 104))(v107, *MEMORY[0x29EDC19D8], v12);
  v43 = v114;
  sub_29E4FB8F0();
  v44 = v115;
  v45 = v116;
  v46 = *(v115 + 16);
  v47 = v110;
  v46(v110, v43, v116);
  v48 = *(v44 + 56);
  v48(v47, 0, 1, v45);
  sub_29E4D8E20(v112, v47);
  v49 = MEMORY[0x29EDC1958];
  sub_29E4DBD7C(v47, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v46(v47, v43, v45);
  v48(v47, 0, 1, v45);
  sub_29E4D8FD8();
  sub_29E4DBD7C(v47, &unk_2A1A705A0, v49);
  v50 = sub_29E4FBFA0();
  if (v50 == 1)
  {
    v80 = v112;
    v81 = *(v113 + 32);
    v82 = v102;
    sub_29E4FBFC0();
    v71 = sub_29E4FB210();
    (*(v103 + 8))(v82, v104);
    v83 = swift_allocObject();
    swift_weakInit();
    v84 = v100;
    v85 = v80;
    v86 = v101;
    v109(v100, v85, v101);
    v87 = v111;
    v88 = (*(v111 + 80) + 24) & ~*(v111 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = v83;
    (*(v87 + 32))(v89 + v88, v84, v86);
    v122 = sub_29E4DC2C0;
    v123 = v89;
    aBlock = MEMORY[0x29EDCA5F8];
    v119 = 1107296256;
    v120 = sub_29E4F9D10;
    v121 = &unk_2A24E8D18;
    v79 = _Block_copy(&aBlock);

    [v81 revokeInvitationWithUUID:v71 completion:v79];
    goto LABEL_10;
  }

  v51 = v109;
  if (v50 == 2)
  {
    v68 = v112;
    v69 = *(v113 + 32);
    v70 = v102;
    sub_29E4FBFC0();
    v71 = sub_29E4FB210();
    (*(v103 + 8))(v70, v104);
    v72 = swift_allocObject();
    swift_weakInit();
    v73 = v100;
    v74 = v68;
    v75 = v101;
    v51(v100, v74, v101);
    v76 = v111;
    v77 = (*(v111 + 80) + 24) & ~*(v111 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = v72;
    (*(v76 + 32))(v78 + v77, v73, v75);
    v122 = sub_29E4DBDF0;
    v123 = v78;
    aBlock = MEMORY[0x29EDCA5F8];
    v119 = 1107296256;
    v120 = sub_29E4F9D10;
    v121 = &unk_2A24E8D68;
    v79 = _Block_copy(&aBlock);

    [v69 leaveInvitationWithUUID:v71 completion:v79];
LABEL_10:
    _Block_release(v79);

    return (*(v115 + 8))(v114, v116);
  }

  if (v50 == 3)
  {
    v52 = v102;
    v53 = v112;
    sub_29E4FBFC0();
    v54 = v100;
    v55 = v101;
    v51(v100, v53, v101);
    v56 = v111;
    v57 = (*(v111 + 80) + 24) & ~*(v111 + 80);
    v58 = swift_allocObject();
    v59 = v113;
    *(v58 + 16) = v113;
    (*(v56 + 32))(v58 + v57, v54, v55);
    v60 = *(v59 + 24);
    v62 = v103;
    v61 = v104;
    v63 = v95;
    (*(v103 + 16))(v95, v52, v104);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = (v94 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_29E4DBE6C;
    *(v66 + 24) = v58;
    (*(v62 + 32))(v66 + v64, v63, v61);
    *(v66 + v65) = v96;
    v122 = sub_29E4DBEE0;
    v123 = v66;
    aBlock = MEMORY[0x29EDCA5F8];
    v119 = 1107296256;
    v120 = sub_29E4E5C54;
    v121 = &unk_2A24E8DE0;
    v67 = _Block_copy(&aBlock);

    [v60 fetchAllProfilesWithCompletion_];
    _Block_release(v67);

    (*(v62 + 8))(v52, v61);
  }

  return (*(v115 + 8))(v114, v116);
}

uint64_t sub_29E4D8E20(uint64_t a1, uint64_t a2)
{
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v16[-v6];
  v8 = sub_29E4FB240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4FBFC0();
  v13 = *(v2 + 40);
  v17 = v12;
  os_unfair_lock_lock(v13 + 10);
  sub_29E4DC238(&v13[4], &v18);
  os_unfair_lock_unlock(v13 + 10);
  (*(v9 + 8))(v12, v8);
  sub_29E4DC128(a2, v7);
  sub_29E4FC460();
  if ((sub_29E4FBFA0() - 1) <= 1)
  {
    v14 = *(v2 + 48);
    sub_29E4FC450();
  }
}

uint64_t sub_29E4D8FD8()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1 + 10);
  sub_29E4DC10C(&v1[4], &v8);
  os_unfair_lock_unlock(v1 + 10);
  v2 = *(v8 + 16);
  if (v2)
  {
    v3 = (v8 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      v5(v6);

      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_29E4D9078(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E4FBFE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  if (a1)
  {
    v9 = *(a2 + 16);
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_29E4DC074;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E4F9D10;
    aBlock[3] = &unk_2A24E8E30;
    v12 = _Block_copy(aBlock);
    v13 = a1;

    [v9 tearDownHealthSharingForProfile:v13 completion:v12];
    _Block_release(v12);
  }
}

void sub_29E4D9250(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v91 = a1;
  v80 = *v3;
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v87 = &v75[-v9];
  v10 = sub_29E4FB930();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v81 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29E4FB910();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = *(v85 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v84 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_29E4FBFE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v21 = &v75[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v79 = &v75[-v23];
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v75[-v24];
  v26 = sub_29E4FC3C0();
  v89 = *(v26 - 8);
  v90 = v26;
  v27 = *(v89 + 64);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = &v75[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v75[-v31];
  v33 = (v17 + 16);
  if (a2)
  {
    sub_29E4FC370();
    v34 = *v33;
    (*v33)(v25, v91, v16);
    v35 = sub_29E4FC3B0();
    v36 = sub_29E4FC940();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      LODWORD(v86) = v36;
      v38 = v37;
      v87 = swift_slowAlloc();
      v92 = v87;
      *v38 = 136446466;
      v93 = v80;
      swift_getMetatypeMetadata();
      v39 = sub_29E4FC700();
      v88 = v4;
      v41 = sub_29E4F68F4(v39, v40, &v92);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v34(v79, v25, v16);
      v42 = sub_29E4FC700();
      v44 = v43;
      (*(v17 + 8))(v25, v16);
      v45 = sub_29E4F68F4(v42, v44, &v92);
      v4 = v88;

      *(v38 + 14) = v45;
      _os_log_impl(&dword_29E494000, v35, v86, "[%{public}s]: Successfully ended sharing relationship with %s", v38, 0x16u);
      v46 = v87;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v46, -1, -1);
      MEMORY[0x29ED8BDB0](v38, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v25, v16);
    }

    v68 = (*(v89 + 8))(v32, v90);
    v69 = v4[5];
    MEMORY[0x2A1C7C4A8](v68);
    *&v75[-16] = v91;
    os_unfair_lock_lock(v69 + 10);
    sub_29E4DC0F0();
    os_unfair_lock_unlock(v69 + 10);
  }

  else
  {
    v88 = v4;
    sub_29E4FC370();
    v47 = *v33;
    (*v33)(v21, v91, v16);
    v48 = a3;
    v49 = sub_29E4FC3B0();
    v50 = sub_29E4FC920();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v77 = v49;
      v52 = v51;
      v78 = swift_slowAlloc();
      v92 = v78;
      *v52 = 136446722;
      v93 = v80;
      swift_getMetatypeMetadata();
      v53 = sub_29E4FC700();
      v55 = sub_29E4F68F4(v53, v54, &v92);
      v80 = a3;
      v76 = v50;
      v56 = v55;

      *(v52 + 4) = v56;
      *(v52 + 12) = 2082;
      v47(v79, v21, v16);
      v57 = sub_29E4FC700();
      v59 = v58;
      (*(v17 + 8))(v21, v16);
      v60 = v91;
      v61 = sub_29E4F68F4(v57, v59, &v92);
      a3 = v80;

      *(v52 + 14) = v61;
      *(v52 + 22) = 2082;
      v93 = a3;
      v62 = a3;
      sub_29E4DC254(0, &qword_2A184B908, sub_29E4AD188);
      v63 = sub_29E4FC700();
      v65 = sub_29E4F68F4(v63, v64, &v92);

      *(v52 + 24) = v65;
      v66 = v77;
      _os_log_impl(&dword_29E494000, v77, v76, "[%{public}s]: Failed to tear down Health sharing for profile %{public}s: %{public}s", v52, 0x20u);
      v67 = v78;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v67, -1, -1);
      MEMORY[0x29ED8BDB0](v52, -1, -1);

      (*(v89 + 8))(v30, v90);
    }

    else
    {

      (*(v17 + 8))(v21, v16);
      (*(v89 + 8))(v30, v90);
      v60 = v91;
    }

    (*(v82 + 104))(v81, *MEMORY[0x29EDC19D0], v83);
    v70 = a3;
    v71 = v84;
    sub_29E4FB8F0();
    v73 = v85;
    v72 = v86;
    v74 = v87;
    (*(v85 + 16))(v87, v71, v86);
    (*(v73 + 56))(v74, 0, 1, v72);
    sub_29E4D8E20(v60, v74);
    sub_29E4DBD7C(v74, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
    (*(v73 + 8))(v71, v72);
  }
}

uint64_t sub_29E4D9AC8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29E4D9250(a4, a1 & 1, a2);
  }

  return result;
}

uint64_t sub_29E4D9B44()
{
  v0 = sub_29E4FB240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBFC0();
  sub_29E4D7C9C(v4);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_29E4D9C2C(uint64_t a1)
{
  v42 = *v1;
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v37 - v5;
  v7 = sub_29E4FBFE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - v12;
  v14 = sub_29E4FC3C0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC370();
  v19 = *(v8 + 16);
  v43 = a1;
  v19(v13, a1, v7);
  v20 = sub_29E4FC3B0();
  v40 = sub_29E4FC940();
  if (os_log_type_enabled(v20, v40))
  {
    v21 = swift_slowAlloc();
    v39 = v14;
    v22 = v21;
    v38 = swift_slowAlloc();
    v44[0] = v38;
    *v22 = 136446466;
    v44[1] = v42;
    swift_getMetatypeMetadata();
    v23 = sub_29E4FC700();
    v37 = v20;
    v25 = sub_29E4F68F4(v23, v24, v44);
    v42 = v15;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v19(v41, v13, v7);
    v27 = sub_29E4FC700();
    v29 = v28;
    (*(v8 + 8))(v13, v7);
    v30 = sub_29E4F68F4(v27, v29, v44);

    *(v22 + 14) = v30;
    v31 = v37;
    _os_log_impl(&dword_29E494000, v37, v40, "[%{public}s]: Clearing end sharing relationship state for %s", v22, 0x16u);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v32, -1, -1);
    MEMORY[0x29ED8BDB0](v22, -1, -1);

    (*(v42 + 8))(v18, v39);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
    (*(v15 + 8))(v18, v14);
  }

  v33 = sub_29E4FB910();
  v34 = *(*(v33 - 8) + 56);
  v34(v6, 1, 1, v33);
  sub_29E4D8E20(v43, v6);
  v35 = MEMORY[0x29EDC1958];
  sub_29E4DBD7C(v6, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v34(v6, 1, 1, v33);
  sub_29E4D8FD8();
  return sub_29E4DBD7C(v6, &unk_2A1A705A0, v35);
}

uint64_t sub_29E4DA0B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_29E4FC3C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = sub_29E4FAFA0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = sub_29E4FBFE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FAF80();
  sub_29E4FBFD0();
  (*(v9 + 32))(a1, v12, v8);
  return (*(v9 + 56))(a1, 0, 1, v8);
}

void *sub_29E4DA4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29 = a3;
  v31 = a1;
  v30 = a4;
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v28 - v15;
  v17 = sub_29E4FB910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4DC128(a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = MEMORY[0x29EDC1958];
    sub_29E4DBD7C(v16, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
    v23 = v29;
    sub_29E4FBFC0();
    sub_29E4D7D64(v9, v14);
    (*(v6 + 8))(v9, v5);
    v24 = sub_29E4DBD7C(v14, &unk_2A1A705A0, v22);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v23 = v29;
    sub_29E4FBFC0();
    (*(v18 + 16))(v14, v21, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
    sub_29E4D7A54(v14, v9);
    v24 = (*(v18 + 8))(v21, v17);
  }

  v25 = *(v31 + 8);
  MEMORY[0x2A1C7C4A8](v24);
  *(&v28 - 2) = v23;
  result = sub_29E4D76C4(sub_29E4DC1A8, (&v28 - 4), v26);
  *v30 = result;
  return result;
}

void *sub_29E4DA81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = sub_29E4FBFE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v10 = *a1;
  v11 = *(a1 + 8);
  result = v10(&v18, v9);
  if (v18)
  {
    v13 = *(v7 + 16);
    v17 = v18;
    v13(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v17;
    result = (*(v7 + 32))(v15 + v14, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v16 = sub_29E4DC1C4;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  *a3 = v16;
  a3[1] = v15;
  return result;
}

uint64_t sub_29E4DA98C()
{
  v0 = sub_29E4FB240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBFC0();
  sub_29E4AA264();
  return (*(v1 + 8))(v4, v0);
}

void sub_29E4DAA68(unint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  v51 = a4;
  v52 = a3;
  v10 = sub_29E4FB240();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29E4FC3C0();
  v15 = *(v50 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v50);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v48 - v21;
  if (a1)
  {
    MEMORY[0x2A1C7C4A8](v20);
    *(&v48 - 2) = a5;
    v23 = sub_29E4E5B40(sub_29E4DBF90, (&v48 - 4), a1);
    if (v23)
    {
      v24 = v23;
      v52();

      return;
    }

    sub_29E4FC370();
    (*(v11 + 16))(v14, a5, v10);
    v37 = sub_29E4FC3B0();
    v38 = sub_29E4FC930();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v53 = v49;
      v54 = a6;
      *v39 = 136446466;
      swift_getMetatypeMetadata();
      v40 = sub_29E4FC700();
      v42 = sub_29E4F68F4(v40, v41, &v53);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      v43 = sub_29E4FB200();
      v45 = v44;
      (*(v11 + 8))(v14, v10);
      v46 = sub_29E4F68F4(v43, v45, &v53);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_29E494000, v37, v38, "[%{public}s]: Failed to find a profile with UUID: %{public}s", v39, 0x16u);
      v47 = v49;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v47, -1, -1);
      MEMORY[0x29ED8BDB0](v39, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    (*(v15 + 8))(v22, v50);
  }

  else
  {
    sub_29E4FC370();
    v25 = a2;
    v26 = sub_29E4FC3B0();
    v27 = sub_29E4FC920();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53 = v29;
      v54 = a6;
      *v28 = 136446466;
      swift_getMetatypeMetadata();
      v30 = sub_29E4FC700();
      v32 = sub_29E4F68F4(v30, v31, &v53);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v54 = a2;
      v33 = a2;
      sub_29E4DC254(0, &qword_2A184B908, sub_29E4AD188);
      v34 = sub_29E4FC700();
      v36 = sub_29E4F68F4(v34, v35, &v53);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_29E494000, v26, v27, "[%{public}s]: Failed to fetch profiles: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v29, -1, -1);
      MEMORY[0x29ED8BDB0](v28, -1, -1);
    }

    (*(v15 + 8))(v19, v50);
  }

  (v52)(0);
}

uint64_t sub_29E4DAF48(id *a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  sub_29E4FB230();

  v8 = sub_29E4FB220();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_29E4DB074(uint64_t a1, const char *a2, void (*a3)(void))
{
  v36 = a2;
  v5 = v3;
  v39 = a1;
  v6 = *v3;
  sub_29E4DC254(0, &qword_2A184B900, MEMORY[0x29EDC2B28]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_29E4FBFE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E4FC3C0();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC370();
  v20 = sub_29E4FC3B0();
  v21 = sub_29E4FC940();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = v5;
    v23 = v22;
    v33 = swift_slowAlloc();
    v40[0] = v33;
    v40[1] = v6;
    *v23 = 136446210;
    swift_getMetatypeMetadata();
    v24 = sub_29E4FC700();
    v34 = v11;
    v26 = v15;
    v27 = v12;
    v28 = a3;
    v29 = sub_29E4F68F4(v24, v25, v40);
    v11 = v34;

    *(v23 + 4) = v29;
    a3 = v28;
    v12 = v27;
    v15 = v26;
    _os_log_impl(&dword_29E494000, v20, v21, v36, v23, 0xCu);
    v30 = v33;
    sub_29E4A1754(v33);
    MEMORY[0x29ED8BDB0](v30, -1, -1);
    MEMORY[0x29ED8BDB0](v23, -1, -1);
  }

  (*(v37 + 8))(v19, v38);
  sub_29E4DA0B4(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_29E4DBD7C(v10, &qword_2A184B900, MEMORY[0x29EDC2B28]);
  }

  (*(v12 + 32))(v15, v10, v11);
  a3(v15);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_29E4DB418(uint64_t a1, uint64_t a2, void *a3, const char *a4, void (*a5)(void))
{
  v7 = a3;

  sub_29E4DB074(v7, a4, a5);
}

uint64_t sub_29E4DB480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v21 - v8;
  v10 = *(a1 + 16);
  if (*(v10 + 16) && (v11 = sub_29E49ED7C(a2), (v12 & 1) != 0))
  {
    *a3 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v14 = sub_29E4FB910();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_29E4A2534();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_29E4FC480();

    v19 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a1 + 16);
    result = sub_29E4C24C8(v18, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 16) = v22;
    *a3 = v18;
  }

  return result;
}

uint64_t sub_29E4DB5E8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *sub_29E4DB688(void *a1, void *a2)
{
  v3 = v2;
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v28 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v11 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];

  v3[4] = v11;
  v12 = MEMORY[0x29EDCA190];
  v13 = sub_29E4A0B9C(MEMORY[0x29EDCA190]);
  v14 = sub_29E4A0DFC(v12);
  sub_29E4DB8D8();
  v15 = swift_allocObject();
  *(v15 + 40) = 0;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  v3[5] = v15;
  v16 = sub_29E4FB910();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  sub_29E4A2534();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v3[6] = sub_29E4FC480();
  v3[2] = a1;
  v3[3] = a2;
  v20 = objc_opt_self();
  v21 = a1;
  v22 = a2;
  v23 = [v20 defaultCenter];
  v24 = sub_29E4FCAA0();
  [v23 addObserver:v3 selector:sel_endSharingRelationshipRequested_ name:v24 object:0];

  v25 = [v20 defaultCenter];
  v26 = sub_29E4FCAB0();
  [v25 addObserver:v3 selector:sel_endSharingRelationshipFailureAcknowledged_ name:v26 object:0];

  return v3;
}

void sub_29E4DB8D8()
{
  if (!qword_2A1A6F150)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29E4FCDC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F150);
    }
  }
}

uint64_t sub_29E4DB938(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;

    v6(&v11, v8);
    v9 = v11;

    if (v9)
    {
      swift_unknownObjectRelease();
      if (v9 == a2)
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_29E4DBA04(uint64_t *a1, uint64_t a2)
{
  v24 = a1;
  v4 = *a1;
  result = sub_29E4DB938(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return v4[2];
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = v4 + 2;
    v9 = v4[2];
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 2 * result;
    while (v8 < v9)
    {
      v13 = &v4[v11];
      v14 = v4[v11 + 6];
      v15 = v4[v11 + 7];

      v14(&v23, v16);
      v17 = v23;

      if (!v17 || (result = swift_unknownObjectRelease(), v17 != a2))
      {
        if (v8 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v7 >= *v10)
          {
            goto LABEL_24;
          }

          if (v8 >= *v10)
          {
            goto LABEL_25;
          }

          v19 = v13[6];
          v18 = v13[7];
          v22 = *&v4[2 * v7 + 4];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_29E4DB674(v4);
          }

          v20 = &v4[2 * v7];
          v21 = v20[5];
          v20[4] = v19;
          v20[5] = v18;

          if (v8 >= v4[2])
          {
            goto LABEL_26;
          }

          v12 = v4[v11 + 7];
          *&v4[v11 + 6] = v22;

          *v24 = v4;
        }

        ++v7;
      }

      ++v8;
      v10 = v4 + 2;
      v9 = v4[2];
      v11 += 2;
      if (v8 == v9)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_29E4DBBAC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_29E4AA100();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_29E4DBC70(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_29E4A80F4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_29E4DBBAC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_29E4DBD30@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 24);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_29E4DBD7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E4DC254(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4DBDD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E4DBE6C(void *a1)
{
  v3 = *(sub_29E4FBFE0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_29E4D9078(a1, v4, v5);
}

void sub_29E4DBEE0(unint64_t a1, void *a2)
{
  v5 = *(sub_29E4FB240() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29E4DAA68(a1, a2, v7, v8, v2 + v6, v9);
}

uint64_t sub_29E4DBFB0()
{
  v1 = sub_29E4FBFE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

void sub_29E4DC074(char a1, void *a2)
{
  v5 = *(sub_29E4FBFE0() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v2 + 16);
  sub_29E4D9250(v6, a1, a2);
}

uint64_t sub_29E4DC128(uint64_t a1, uint64_t a2)
{
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4DC1C4()
{
  v1 = *(*(sub_29E4FBFE0() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_29E4DA98C();
}

void sub_29E4DC254(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4DC2C4(void *a1)
{
  sub_29E4DD46C(0, &qword_2A184B928, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = &v12[-v7];
  v9 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4DD418();
  sub_29E4FD080();
  v12[15] = 0;
  sub_29E4FB7F0();
  sub_29E4DD538(&qword_2A1A705F0, MEMORY[0x29EDC16F8]);
  sub_29E4FCF50();
  if (!v1)
  {
    v10 = *(type metadata accessor for CloudSyncResolutionInfo() + 20);
    v12[14] = 1;
    sub_29E4FB1E0();
    sub_29E4DD538(&qword_2A1A70700, MEMORY[0x29EDB9BC8]);
    sub_29E4FCF50();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29E4DC4D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_29E4FB1E0();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E4FB7F0();
  v7 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v29 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4DD46C(0, &qword_2A184B938, MEMORY[0x29EDC9E80]);
  v30 = v9;
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v23 - v11;
  v13 = type metadata accessor for CloudSyncResolutionInfo();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4DD418();
  sub_29E4FD070();
  if (v2)
  {
    return sub_29E4A1754(a1);
  }

  v23 = a1;
  v18 = v16;
  v19 = v26;
  v20 = v27;
  v32 = 0;
  sub_29E4DD538(&qword_2A1A705E8, MEMORY[0x29EDC16F8]);
  v21 = v29;
  sub_29E4FCED0();
  sub_29E4DD4D0(v21, v18, MEMORY[0x29EDC16F8]);
  v31 = 1;
  sub_29E4DD538(&unk_2A1A706E0, MEMORY[0x29EDB9BC8]);
  sub_29E4FCED0();
  (*(v19 + 8))(v12, v30);
  (*(v24 + 32))(v18 + *(v13 + 20), v6, v20);
  sub_29E4DD580(v18, v25);
  sub_29E4A1754(v23);
  return sub_29E4DD5E4(v18, type metadata accessor for CloudSyncResolutionInfo);
}

uint64_t sub_29E4DC8E4()
{
  if (*v0)
  {
    result = 1702125924;
  }

  else
  {
    result = 0x6574617473;
  }

  *v0;
  return result;
}

uint64_t sub_29E4DC914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_29E4FCF80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E4FCF80();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29E4DC9EC(uint64_t a1)
{
  v2 = sub_29E4DD418();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4DCA28(uint64_t a1)
{
  v2 = sub_29E4DD418();

  return MEMORY[0x2A1C73280](a1, v2);
}

CFTypeID sub_29E4DCA94()
{
  result = CFDataGetTypeID();
  qword_2A184BCE0 = result;
  return result;
}

uint64_t sub_29E4DCAB4@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_29E4FB240();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4B0B1C();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v62 - v10;
  v12 = sub_29E4FB130();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 24);
  v17 = *(v1 + 32);
  v19 = objc_allocWithZone(MEMORY[0x29EDB93F8]);

  v20 = sub_29E4DD244(v18, v17, 0);
  v63 = 0;
  v64 = v1;
  v65 = v16;
  v66 = v17;
  v21 = v69;
  v22 = v70;
  v67 = v13;
  v68 = v12;
  v23 = v20;
  v24 = [v20 dataContainerURL];

  if (v24)
  {
    sub_29E4FB110();

    v25 = v67;
    v26 = *(v67 + 56);
    v27 = v9;
    v28 = 0;
  }

  else
  {
    v25 = v67;
    v26 = *(v67 + 56);
    v27 = v9;
    v28 = 1;
  }

  v29 = v68;
  v26(v27, v28, 1, v68);
  v30 = v71;
  sub_29E4DD4D0(v9, v11, sub_29E4B0B1C);
  v31 = (*(v25 + 48))(v11, 1, v29);
  v32 = v72;
  if (v31 == 1)
  {
    sub_29E4DD5E4(v11, sub_29E4B0B1C);
    v33 = type metadata accessor for CloudSyncResolutionInfo();
    v34 = *(*(v33 - 8) + 56);
    v35 = v32;
LABEL_6:
    v36 = 1;
    return v34(v35, v36, 1, v33);
  }

  v38 = v65;
  (*(v25 + 32))(v65, v11, v29);
  v39 = [*(v64 + 16) identifier];
  sub_29E4FB230();

  v40 = v29;
  v41 = sub_29E4FB200();
  v42 = v30;
  v44 = v43;
  (*(v21 + 8))(v42, v22);
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_29E4FCD70();
  MEMORY[0x29ED8AD70](0xD00000000000001DLL, 0x800000029E5028B0);
  MEMORY[0x29ED8AD70](v41, v44);

  MEMORY[0x29ED8AD70](0xD00000000000001CLL, 0x800000029E5028D0);
  v45 = sub_29E4FC6B0();

  v46 = sub_29E4FC6B0();
  sub_29E4FB120();
  v47 = sub_29E4FC6B0();

  v48 = v25;
  v49 = _CFPreferencesCopyAppValueWithContainer();

  if (!v49)
  {
    (*(v48 + 8))(v38, v40);
    v33 = type metadata accessor for CloudSyncResolutionInfo();
    v34 = *(*(v33 - 8) + 56);
    v35 = v72;
    goto LABEL_6;
  }

  v50 = CFGetTypeID(v49);
  v51 = v72;
  if (qword_2A184B1C8 != -1)
  {
    v61 = v50;
    swift_once();
    v50 = v61;
  }

  v52 = v68;
  if (v50 != qword_2A184BCE0)
  {
LABEL_17:
    swift_unknownObjectRelease();
    (*(v67 + 8))(v38, v52);
    v33 = type metadata accessor for CloudSyncResolutionInfo();
    v34 = *(*(v33 - 8) + 56);
    v35 = v51;
    goto LABEL_6;
  }

  type metadata accessor for CFData(0);
  swift_unknownObjectRetain();
  if (!swift_dynamicCastUnknownClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  v53 = sub_29E4FB160();
  v55 = v54;
  swift_unknownObjectRelease();
  v56 = sub_29E4FAF40();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_29E4FAF30();
  v59 = type metadata accessor for CloudSyncResolutionInfo();
  sub_29E4DD538(&qword_2A184B910, type metadata accessor for CloudSyncResolutionInfo);
  v60 = v63;
  sub_29E4FAF20();
  if (v60)
  {

    sub_29E4A1B94(v53, v55);
    swift_unknownObjectRelease_n();
    (*(v67 + 8))(v38, v68);
    v34 = *(*(v59 - 8) + 56);
    v35 = v51;
    v36 = 1;
  }

  else
  {

    swift_unknownObjectRelease_n();
    sub_29E4A1B94(v53, v55);
    (*(v67 + 8))(v38, v68);
    v34 = *(*(v59 - 8) + 56);
    v35 = v51;
    v36 = 0;
  }

  v33 = v59;
  return v34(v35, v36, 1, v33);
}

uint64_t sub_29E4DD1E0()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_29E4DD244(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v5 = sub_29E4FC6B0();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_29E4FB0E0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t type metadata accessor for CloudSyncResolutionInfo()
{
  result = qword_2A184B918;
  if (!qword_2A184B918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E4DD394()
{
  result = sub_29E4FB7F0();
  if (v1 <= 0x3F)
  {
    result = sub_29E4FB1E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29E4DD418()
{
  result = qword_2A184B930;
  if (!qword_2A184B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B930);
  }

  return result;
}

void sub_29E4DD46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4DD418();
    v7 = a3(a1, &type metadata for CloudSyncResolutionInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E4DD4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E4DD538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E4DD580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncResolutionInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4DD5E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E4DD658()
{
  result = qword_2A184B940;
  if (!qword_2A184B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B940);
  }

  return result;
}

unint64_t sub_29E4DD6B0()
{
  result = qword_2A184B948;
  if (!qword_2A184B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B948);
  }

  return result;
}

unint64_t sub_29E4DD708()
{
  result = qword_2A184B950;
  if (!qword_2A184B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B950);
  }

  return result;
}

char *sub_29E4DD77C()
{
  sub_29E4DEC48(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_29E4FB460();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(v0 + 32) profileIdentifier];
  sub_29E4C6970(v10, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29E4DE950(v4);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v9, v4, v5);
    v11 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_29E4A7D34(0, *(v11 + 2) + 1, 1, v11);
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_29E4A7D34(v13 > 1, v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v12(&v11[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14], v9, v5);
  }

  return v11;
}

uint64_t sub_29E4DD9D8()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  sub_29E4DE8C0(&qword_2A1A70080, v4, type metadata accessor for ProfileSearchExecutor);
  sub_29E4FB310();
  v5 = v0[7];
  v6 = sub_29E4DD77C();
  v0[8] = v6;
  v7 = v0[5];
  v8 = v0[6];
  sub_29E4A1710(v0 + 2, v7);
  v9 = *(MEMORY[0x29EDC3888] + 4);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_29E4DDB54;

  return MEMORY[0x2A1C64D80](v6, v7, v8);
}

uint64_t sub_29E4DDB54()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_29E4DDCD4;
  }

  else
  {
    v3 = sub_29E4DDC68;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E4DDC68()
{
  v1 = v0[8];

  sub_29E4A1754(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_29E4DDCD4()
{
  v1 = v0[8];

  sub_29E4A1754(v0 + 2);
  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_29E4DDD40()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCC8Profiles21ProfileSearchExecutor7Planner_signals;
  v3 = sub_29E4FC190();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4DDDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles21ProfileSearchExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E4DDE64()
{
  v1 = *v0;
  sub_29E4DE9DC();
  v2 = v0[3];
  v3 = v0[4];
  v6[3] = swift_getObjectType();
  v6[4] = *(v3 + 8);
  v6[0] = v2;
  v4 = *(*(v3 + 16) + 8);
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();

  return sub_29E4A1754(v6);
}

uint64_t sub_29E4DDF5C()
{
  v0 = sub_29E4FC1C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FC1E0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29E4DEC48(0, &qword_2A1A6F0E0, MEMORY[0x29EDC34F0], MEMORY[0x29EDC9E90]);
  v7 = *(sub_29E4FC1B0() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E4FDE40;
  (*(v1 + 104))(v4, *MEMORY[0x29EDC3508], v0);
  sub_29E4FC1D0();
  (*(v1 + 8))(v4, v0);
  sub_29E4FC1A0();
  return v10;
}

uint64_t sub_29E4DE170(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4DE8C0(qword_2A1A70158, 255, type metadata accessor for ProfileSearchExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E4DE24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4DE8C0(qword_2A1A70158, 255, type metadata accessor for ProfileSearchExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E4DE30C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29E49D938;

  return sub_29E4DD9B8();
}

uint64_t sub_29E4DE398(uint64_t a1)
{
  v3 = sub_29E4FC190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 32) profileIdentifier];
  v9 = *(v4 + 16);
  v15 = *(v1 + 16);
  v9(v7, a1, v3);
  v10 = type metadata accessor for ProfileSearchExecutor.Planner();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v15;
  (*(v4 + 32))(v13 + OBJC_IVAR____TtCC8Profiles21ProfileSearchExecutor7Planner_signals, v7, v3);
  swift_unknownObjectRetain();
  return v13;
}

uint64_t sub_29E4DE4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4DE8C0(qword_2A1A70088, a2, type metadata accessor for ProfileSearchExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t _s19HealthOrchestration19ConstantInputSignalC8ProfilesSSRszrlE17searchDestination8observerACySSGAA0dE8Observer_p_tFZ_0()
{
  v0 = sub_29E4FC300();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v10 = MEMORY[0x29EDCA190];
  sub_29E4C3514(0, 1, 0);
  v2 = v10;
  v4 = *(v10 + 16);
  v3 = *(v10 + 24);
  if (v4 >= v3 >> 1)
  {
    sub_29E4C3514((v3 > 1), v4 + 1, 1);
    v2 = v10;
  }

  *(v2 + 16) = v4 + 1;
  v5 = v2 + 16 * v4;
  strcpy((v5 + 32), "healthDetails");
  *(v5 + 46) = -4864;
  sub_29E4DECAC(0, &qword_2A1A70908, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29E4DECFC();
  sub_29E4FC670();

  sub_29E4FC2F0();
  sub_29E4A9ED8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  return sub_29E4FC240();
}

uint64_t type metadata accessor for ProfileSearchExecutor.Planner()
{
  result = qword_2A1A70140;
  if (!qword_2A1A70140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E4DE7CC()
{
  result = sub_29E4FC190();
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

uint64_t sub_29E4DE8C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4DE950(uint64_t a1)
{
  sub_29E4DEC48(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E4DE9DC()
{
  v0 = sub_29E4FC300();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = sub_29E4FC110();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E4DECAC(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E4FDE50;
  sub_29E4FC100();
  sub_29E4DEC48(0, &qword_2A1A6F0C0, sub_29E4D01F0, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E4FEDE0;
  sub_29E4FC2F0();
  *(v5 + 56) = sub_29E4FC2E0();
  *(v5 + 64) = sub_29E4DE8C0(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0]);
  sub_29E4A197C((v5 + 32));
  sub_29E4FC2D0();
  *(v5 + 96) = sub_29E4FC200();
  *(v5 + 104) = sub_29E4DE8C0(&qword_2A1A704C0, 255, MEMORY[0x29EDC3530]);
  sub_29E4A197C((v5 + 72));
  sub_29E4FC1F0();
  v6 = sub_29E4FC140();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v4 + 32) = sub_29E4FC120();
  return v4;
}

void sub_29E4DEC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E4DECAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E4DECFC()
{
  result = qword_2A1A6F230;
  if (!qword_2A1A6F230)
  {
    sub_29E4DECAC(255, &qword_2A1A70908, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F230);
  }

  return result;
}

uint64_t sub_29E4DED80()
{
  sub_29E4DFDDC(v0 + OBJC_IVAR____TtC8Profiles22ProfileSearchViewModel_searchInfo, type metadata accessor for ProfileSearch);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4DEE20()
{
  result = type metadata accessor for ProfileSearch();
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

uint64_t sub_29E4DEF1C@<X0>(void *a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC8Profiles22ProfileSearchViewModel_searchInfo;
  v4 = (v3 + *(type metadata accessor for ProfileSearch() + 24));
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;
  v6 = *MEMORY[0x29EDC2380];
  v7 = sub_29E4FBD60();
  (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_29E4DEFC8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29E4FC3C0();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v49 = &v45 - v6;
  sub_29E4DFCD8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProfileSearch();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v47 = &v45 - v16;
  v48 = v0;
  result = sub_29E4FBD70();
  v18 = v54;
  if (v54)
  {
    v19 = sub_29E4A1710(v53, v54);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x2A1C7C4A8](v19);
    v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_29E4FBE10();
    v26 = v25;
    (*(v20 + 8))(v23, v18);
    sub_29E4A1754(v53);
    if (v26 >> 60 == 15)
    {
      sub_29E4FC360();
      v27 = sub_29E4FC3B0();
      v28 = sub_29E4FC920();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v53[0] = v30;
        *v29 = 136446210;
        v31 = sub_29E4FD0B0();
        v33 = sub_29E4F68F4(v31, v32, v53);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_29E494000, v27, v28, "[%{public}s] Updated with nil context or user data. This is unexpected.", v29, 0xCu);
        sub_29E4A1754(v30);
        MEMORY[0x29ED8BDB0](v30, -1, -1);
        MEMORY[0x29ED8BDB0](v29, -1, -1);
      }

      return (*(v51 + 8))(v5, v52);
    }

    else
    {
      v34 = sub_29E4FAF40();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_29E4FAF30();
      sub_29E4DFD94(&qword_2A184B978, type metadata accessor for ProfileSearch);
      v37 = v24;
      sub_29E4FAF20();

      (*(v12 + 56))(v10, 0, 1, v11);
      v38 = v47;
      sub_29E4DFD30(v10, v47);
      v39 = v46;
      sub_29E4C77E8(v38, v46);
      v40 = type metadata accessor for ProfileSearchViewModel(0);
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      v43 = swift_allocObject();
      sub_29E4DFD30(v39, v43 + OBJC_IVAR____TtC8Profiles22ProfileSearchViewModel_searchInfo);
      v44 = *(v48 + qword_2A1A709A0);
      *(v48 + qword_2A1A709A0) = v43;

      v54 = v40;
      v55 = sub_29E4DFD94(&qword_2A184B980, type metadata accessor for ProfileSearchViewModel);
      v53[0] = v43;
      sub_29E4FBD30();
      sub_29E4A1B80(v37, v26);
      return sub_29E4DFDDC(v38, type metadata accessor for ProfileSearch);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29E4DF6D8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29E4FC6F0();
    *&a1[qword_2A1A709A0] = 0;
    v6 = a4;
    v7 = sub_29E4FC6B0();
  }

  else
  {
    *&a1[qword_2A1A709A0] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for ProfileSearchTileViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29E4DF794(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A1A709A0] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ProfileSearchTileViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29E4DF82C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSearchTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E4DF8A0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v35[-v8 - 8];
  v10 = [v1 navigationController];
  if (v10)
  {
    v11 = v10;
    if (*&v1[qword_2A1A709A0])
    {
      sub_29E4FBD70();
      v12 = v38;
      if (v38)
      {
        v13 = sub_29E4A1710(v37, v38);
        v14 = *(v12 - 8);
        v15 = *(v14 + 64);
        MEMORY[0x2A1C7C4A8](v13);
        v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        (*(v14 + 16))(v17);
        sub_29E4FBE00();
        (*(v14 + 8))(v17, v12);
        sub_29E4FCA00();
        sub_29E4A76F0(v36, v35);
        v18 = objc_allocWithZone(sub_29E4FC030());
        v19 = sub_29E4FC020();
        sub_29E4A1754(v36);
        sub_29E4A1754(v37);
        [v11 pushViewController:v19 animated:1];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_29E4FC360();
      v27 = sub_29E4FC3B0();
      v28 = sub_29E4FC920();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v29 = 136446210;
        v31 = sub_29E4FD0B0();
        v33 = sub_29E4F68F4(v31, v32, v37);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_29E494000, v27, v28, "[%{public}s] Unable to determine destination for view controller", v29, 0xCu);
        sub_29E4A1754(v30);
        MEMORY[0x29ED8BDB0](v30, -1, -1);
        MEMORY[0x29ED8BDB0](v29, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
    }
  }

  else
  {
    sub_29E4FC360();
    v20 = sub_29E4FC3B0();
    v21 = sub_29E4FC920();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136446210;
      v24 = sub_29E4FD0B0();
      v26 = sub_29E4F68F4(v24, v25, v37);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29E494000, v20, v21, "[%{public}s] Attempted to push onto a non-existent navigation controller.", v22, 0xCu);
      sub_29E4A1754(v23);
      MEMORY[0x29ED8BDB0](v23, -1, -1);
      MEMORY[0x29ED8BDB0](v22, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }
}

void sub_29E4DFCD8()
{
  if (!qword_2A184B970)
  {
    type metadata accessor for ProfileSearch();
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B970);
    }
  }
}

uint64_t sub_29E4DFD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSearch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4DFD94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E4DFDDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4DFE3C@<X0>(uint64_t a1@<X8>)
{
  sub_29E4FB4B0();
  v3 = sub_29E4FC6B0();

  v4 = [v1 valueForKey_];

  if (v4)
  {
    sub_29E4FCC50();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_29E4FB1E0();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_29E4AD1FC(v11);
    v8 = sub_29E4FB1E0();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_29E4DFFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v3 = sub_29E4FBAA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v21 = v6;
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E3198();
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v19 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E4FCB00();
  v27 = v20;
  v22 = *(v4 + 16);
  v22(v7, a1, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v18 = *(v4 + 32);
  v18(v13 + v12, v7, v3);
  sub_29E4E322C(0, &qword_2A184B9B0, sub_29E4E32B8, MEMORY[0x29EDB89F8]);
  sub_29E4E3310();
  v14 = v19;
  sub_29E4FC510();

  v22(v7, v23, v3);
  v15 = swift_allocObject();
  v18(v15 + v12, v7, v3);
  sub_29E4E3398(&qword_2A184B9C8, sub_29E4E3198);
  v16 = v24;
  sub_29E4FC4F0();

  return (*(v25 + 8))(v14, v16);
}

BOOL sub_29E4E02C0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29E4FB240();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29E4FBAA0();
  v7 = *(v51 - 8);
  v8 = *(v7 + 8);
  MEMORY[0x2A1C7C4A8](v51);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_29E4FC3C0();
  v54 = *(v52 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v52);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v46 - v14;
  v16 = *a1;
  sub_29E4FC3A0();

  v17 = sub_29E4FC3B0();
  v18 = sub_29E4FC940();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55 = v46;
    *v19 = 136315394;
    *(v19 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v55);
    *(v19 + 12) = 2080;
    v20 = sub_29E4FC8B0();
    v22 = sub_29E4F68F4(v20, v21, &v55);
    v23 = v10;
    v47 = v7;
    v24 = v22;

    *(v19 + 14) = v24;
    v25 = v52;
    v26 = v54;
    v10 = v23;
    _os_log_impl(&dword_29E494000, v17, v18, "%s Notification Hold Instructions: %s", v19, 0x16u);
    v27 = v46;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v27, -1, -1);
    MEMORY[0x29ED8BDB0](v19, -1, -1);

    v28 = v26;
    v7 = v47;
    v29 = *(v28 + 8);
    v29(v15, v25);
  }

  else
  {

    v29 = *(v54 + 8);
    v29(v15, v52);
  }

  v30 = sub_29E4FBA40();
  v32 = sub_29E4E08F8(v30, v31, v16);

  sub_29E4FC3A0();
  v33 = v51;
  (*(v7 + 2))(v10, a2, v51);
  v34 = sub_29E4FC3B0();
  v35 = sub_29E4FC940();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v47 = v29;
    v37 = v36;
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315650;
    *(v37 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v55);
    *(v37 + 12) = 2080;
    v39 = v10;
    v40 = v48;
    sub_29E4FBA80();
    v41 = sub_29E4FB200();
    v43 = v42;
    (*(v49 + 8))(v40, v50);
    (*(v7 + 1))(v39, v51);
    v44 = sub_29E4F68F4(v41, v43, &v55);

    *(v37 + 14) = v44;
    *(v37 + 22) = 1024;
    *(v37 + 24) = v32 & 1;
    _os_log_impl(&dword_29E494000, v34, v35, "%s Does Hold Exist for Entry %s: %{BOOL}d", v37, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v38, -1, -1);
    MEMORY[0x29ED8BDB0](v37, -1, -1);

    v47(v53, v52);
  }

  else
  {

    (*(v7 + 1))(v10, v33);
    v29(v53, v52);
  }

  return (v32 & 1) == 0;
}

BOOL sub_29E4E082C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_29E4FD030();
  MEMORY[0x29ED8B670](a1);
  v5 = sub_29E4FD050();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_29E4E08F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_29E4FD030();
  sub_29E4FC730();
  v7 = sub_29E4FD050();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_29E4FCF80() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_29E4E09F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = sub_29E4FBAA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  sub_29E4E55DC(0, &qword_2A184BA90, sub_29E4E569C, sub_29E4E5738);
  v18 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v17 - v9;
  sub_29E4FBA40();
  v11 = sub_29E4FB5D0();

  v20 = v11;
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_29E4FC410();
  sub_29E4E569C();
  sub_29E4E39EC(0, &qword_2A184B570, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
  sub_29E4E5738();
  sub_29E4E349C();
  sub_29E4FC520();

  sub_29E4E57EC();
  v14 = v18;
  v15 = sub_29E4FC4E0();
  result = (*(v7 + 8))(v10, v14);
  *v19 = v15;
  return result;
}

uint64_t sub_29E4E0CBC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v76 = a3;
  v4 = MEMORY[0x29EDC9A98];
  sub_29E4E39EC(0, &qword_2A184BAA0, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AC0]);
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v73 = &v62[-v7];
  v8 = sub_29E4FB240();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v65 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_29E4FBAA0();
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v69 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v62[-v15];
  v17 = sub_29E4FC3C0();
  v71 = *(v17 - 8);
  v72 = v17;
  v18 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v62[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4E5874(0, &qword_2A184BAA8, MEMORY[0x29EDB8AB0]);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v26 = &v62[-v25];
  sub_29E4E39EC(0, &qword_2A184BAB0, v4, MEMORY[0x29EDB8B18]);
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v32 = &v62[-v31];
  v33 = *a1;
  if (v33 == 2 || (v33 & 1) == 0)
  {
    v79 = 1;
    sub_29E4FC4B0();
    sub_29E4A2CE8(0, &qword_2A1A70BC8);
    sub_29E4FC4A0();
    (*(v23 + 8))(v26, v22);
    sub_29E4E58C8();
    v57 = sub_29E4FC4E0();
    result = (*(v29 + 8))(v32, v28);
  }

  else
  {
    v34 = v20;
    sub_29E4FC3A0();
    v35 = v70;
    v36 = *(v70 + 16);
    v37 = v68;
    v36(v16, v68, v11);
    v38 = v69;
    v36(v69, v37, v11);
    v39 = sub_29E4FC3B0();
    v40 = sub_29E4FC940();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v78 = v68;
      *v41 = 136315906;
      *(v41 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v78);
      *(v41 + 12) = 2080;
      v42 = v65;
      v64 = v39;
      sub_29E4FBA80();
      v43 = sub_29E4FB200();
      v63 = v40;
      v45 = v44;
      (*(v66 + 8))(v42, v67);
      v46 = *(v35 + 8);
      v46(v16, v11);
      v47 = sub_29E4F68F4(v43, v45, &v78);

      *(v41 + 14) = v47;
      *(v41 + 22) = 2080;
      v48 = sub_29E4FBA40();
      v50 = v49;
      v46(v38, v11);
      v51 = sub_29E4F68F4(v48, v50, &v78);

      *(v41 + 24) = v51;
      *(v41 + 32) = 2080;
      v77 = v33;
      sub_29E4E5874(0, &qword_2A1A6F208, MEMORY[0x29EDC9C68]);
      v52 = sub_29E4FC700();
      v54 = sub_29E4F68F4(v52, v53, &v78);

      *(v41 + 34) = v54;
      v55 = v64;
      _os_log_impl(&dword_29E494000, v64, v63, "[%s] Skipping duplicate invitation notification for %s: key %s value: %s", v41, 0x2Au);
      v56 = v68;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v56, -1, -1);
      MEMORY[0x29ED8BDB0](v41, -1, -1);
    }

    else
    {

      v59 = *(v35 + 8);
      v59(v38, v11);
      v59(v16, v11);
    }

    (*(v71 + 8))(v34, v72);
    sub_29E4A2CE8(0, &qword_2A1A70BC8);
    v60 = v73;
    sub_29E4FC4C0();
    sub_29E4E5944();
    v61 = v75;
    v57 = sub_29E4FC4E0();
    result = (*(v74 + 8))(v60, v61);
  }

  *v76 = v57;
  return result;
}

void sub_29E4E1418(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v65 = a3;
  v66 = a2;
  v69 = a4;
  sub_29E4E36D4(0, &qword_2A184BA58, MEMORY[0x29EDB8AA0]);
  v6 = v5;
  v64 = *(v5 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v63 - v8;
  v10 = sub_29E4FBAA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v63 - v16;
  v18 = sub_29E4FC3C0();
  v67 = *(v18 - 8);
  v68 = v18;
  v19 = *(v67 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v63 - v23;
  v25 = sub_29E4E431C(a1);
  if (v25)
  {
    v26 = v25;
    v27 = v69;
    sub_29E4FC3A0();
    v28 = v10;
    (*(v11 + 16))(v17, a1, v10);
    v29 = v26;
    v30 = sub_29E4FC3B0();
    v31 = sub_29E4FC940();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70 = v64;
      *v32 = 136315650;
      *(v32 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v70);
      *(v32 + 12) = 2080;
      v33 = MEMORY[0x29ED8A010]();
      v34 = v28;
      v36 = v35;
      (*(v11 + 8))(v17, v34);
      v37 = sub_29E4F68F4(v33, v36, &v70);

      *(v32 + 14) = v37;
      *(v32 + 22) = 2080;
      v38 = v29;
      v39 = [v38 description];
      v40 = sub_29E4FC6F0();
      v42 = v41;

      v43 = v69;
      v44 = sub_29E4F68F4(v40, v42, &v70);

      *(v32 + 24) = v44;
      _os_log_impl(&dword_29E494000, v30, v31, "[%s] Successfully created UNNotificationRequest for sharing entry for %s: %s", v32, 0x20u);
      v45 = v64;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v45, -1, -1);
      MEMORY[0x29ED8BDB0](v32, -1, -1);

      (*(v67 + 8))(v24, v68);
    }

    else
    {

      (*(v11 + 8))(v17, v28);
      (*(v67 + 8))(v24, v68);
      v43 = v27;
    }

    swift_getObjectType();
    v56 = *(v65 + 8);
    v57 = sub_29E4FB5A0();
  }

  else
  {
    v66 = v9;
    sub_29E4FC3A0();
    v46 = v10;
    (*(v11 + 16))(v15, a1, v10);
    v47 = sub_29E4FC3B0();
    v48 = sub_29E4FC920();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v70);
      *(v49 + 12) = 2080;
      sub_29E4E3398(&unk_2A184B678, MEMORY[0x29EDC1A38]);
      v51 = sub_29E4FCF60();
      v52 = v46;
      v54 = v53;
      (*(v11 + 8))(v15, v52);
      v55 = sub_29E4F68F4(v51, v54, &v70);

      *(v49 + 14) = v55;
      _os_log_impl(&dword_29E494000, v47, v48, "[%s] Tried to create a UNNotificationRequest for a sharing entry that should not receive a notification: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v50, -1, -1);
      MEMORY[0x29ED8BDB0](v49, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    (*(v67 + 8))(v22, v68);
    v58 = v6;
    v59 = v64;
    v60 = v66;
    v61 = [objc_allocWithZone(MEMORY[0x29EDB9FA0]) initWithDomain:*MEMORY[0x29EDBA538] code:118 userInfo:0];
    sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
    v70 = v61;
    sub_29E4A2CE8(0, &qword_2A1A70BC8);
    v62 = v61;
    sub_29E4FC490();
    sub_29E4E50E4(&qword_2A184BA60, &qword_2A184BA58, MEMORY[0x29EDB8AA0]);
    v57 = sub_29E4FC4E0();

    (*(v59 + 8))(v60, v58);
    v43 = v69;
  }

  *v43 = v57;
}

uint64_t sub_29E4E1B68@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  sub_29E4E3938();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_29E4FBA40();
  v10 = sub_29E4FB5E0();

  v14[1] = v10;
  *(swift_allocObject() + 16) = v9;
  sub_29E4E39EC(0, &qword_2A184BA40, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8AD0]);
  sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
  sub_29E4E3A6C();
  v11 = v9;
  sub_29E4FC4F0();

  sub_29E4E3398(&qword_2A184BA50, sub_29E4E3938);
  v12 = sub_29E4FC4E0();
  result = (*(v5 + 8))(v8, v4);
  *v14[0] = v12;
  return result;
}