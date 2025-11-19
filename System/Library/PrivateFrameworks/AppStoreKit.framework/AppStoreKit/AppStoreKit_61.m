uint64_t sub_1E18F3668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v22 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v14 = v11 | (v4 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    swift_beginAccess();
    v18 = *(*(a4 + v9) + 16);

    if (v18 && (sub_1E15A47D8(v17, v16), (v19 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_17:

        return sub_1E19B812C(v22, a2, v23, a3);
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v10)
    {
      goto LABEL_17;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E18F3808(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v37 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v32 = v7;
    v33 = v3;
    v31 = &v31;
    MEMORY[0x1EEE9AC00](v9);
    v34 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v8);
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v35 = 0;
    v36 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_12:
      v17 = v4;
      v18 = v14 | (v7 << 6);
      v19 = (*(v4 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v23 = v36;
      v22 = v37;
      swift_beginAccess();
      v8 = *&v22[v23];
      v24 = *(v8 + 16);

      if (v24 && (sub_1E15A47D8(v21, v20), (v25 & 1) != 0))
      {
        swift_endAccess();

        v4 = v17;
        v12 = v38;
      }

      else
      {
        swift_endAccess();

        *&v34[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        v26 = __OFADD__(v35++, 1);
        v4 = v17;
        v12 = v38;
        if (v26)
        {
          __break(1u);
LABEL_18:
          v27 = sub_1E19B812C(v34, v32, v35, v4);

          return v27;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v37;
  v27 = sub_1E18F3130(v29, v7, v4, v30);

  MEMORY[0x1E6901640](v29, -1, -1);

  return v27;
}

uint64_t sub_1E18F3B5C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_1E1AEF55C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t FontSource.font(in:for:)(void *a1, uint64_t (*a2)(void))
{
  if (a2)
  {

    v4 = [a1 traitCollection];
    v5 = [v4 preferredContentSizeCategory];
    v6 = a2();

    v7 = objc_opt_self();
    v8 = [v7 traitCollectionWithPreferredContentSizeCategory_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E1B12AE0;
    *(v9 + 32) = v4;
    *(v9 + 40) = v8;
    sub_1E14339B8();
    v10 = v4;
    v11 = v8;
    v12 = sub_1E1AF620C();

    v13 = [v7 traitCollectionWithTraitsFromCollections_];

    v14 = sub_1E1AF104C();
    sub_1E1300EA8(a2);
  }

  else
  {
    v15 = [a1 traitCollection];
    v14 = sub_1E1AF104C();
  }

  return v14;
}

uint64_t GameCenterDenylistPlayerAction.contactId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit30GameCenterDenylistPlayerAction_contactId);

  return v1;
}

uint64_t GameCenterDenylistPlayerAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_1E1AF39DC();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v33 = a1;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC11AppStoreKit30GameCenterDenylistPlayerAction_contactId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v10, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v10, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v24 = 0x49746361746E6F63;
    v25 = v27;
    v24[1] = 0xE900000000000064;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

void *GameCenterDenylistPlayerAction.__allocating_init(contactId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v28[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - v10;
  v12 = sub_1E1AF3E1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC11AppStoreKit30GameCenterDenylistPlayerAction_contactId);
  *v17 = a1;
  v17[1] = a2;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  (*(v13 + 16))(v15, a3, v12);
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = (v16 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v16 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v32, &v29);
  if (*(&v30 + 1))
  {
    v21 = v30;
    *v20 = v29;
    *(v20 + 1) = v21;
    *(v20 + 4) = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v23 = v6;
    v24 = a3;
    v26 = v25;
    (*(v28[0] + 8))(v8, v23);
    v28[1] = v22;
    v28[2] = v26;
    a3 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  (*(v13 + 8))(a3, v12);
  sub_1E1308058(v32, &unk_1ECEB5670);
  sub_1E134B7C8(v11, v16 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v16[2] = 0xD000000000000022;
  v16[3] = 0x80000001E1B7DC80;
  v16[4] = 0;
  v16[5] = 0;
  (*(v13 + 32))(v16 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v15, v12);
  return v16;
}

void *GameCenterDenylistPlayerAction.init(contactId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v27[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v4 + OBJC_IVAR____TtC11AppStoreKit30GameCenterDenylistPlayerAction_contactId);
  *v18 = a1;
  v18[1] = a2;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v15 + 16))(v17, a3, v14);
  v19 = sub_1E1AF46DC();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  sub_1E138853C(v34, &v28);
  if (*(&v29 + 1))
  {
    v31 = v28;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27[0] + 8))(v10, v8);
    v27[1] = v21;
    v27[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v28, &unk_1ECEB5670);
  }

  (*(v15 + 8))(a3, v14);
  sub_1E1308058(v34, &unk_1ECEB5670);
  v24 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v24 + 4) = v33;
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;
  sub_1E134B7C8(v13, v4 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v4[2] = 0xD000000000000022;
  v4[3] = 0x80000001E1B7DC80;
  v4[4] = 0;
  v4[5] = 0;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

uint64_t GameCenterDenylistPlayerAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t GameCenterDenylistPlayerAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterDenylistPlayerAction()
{
  result = qword_1EE1E8320;
  if (!qword_1EE1E8320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TriggerBuilderError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      sub_1E1AF6FEC();

      v11 = 0xD00000000000001ALL;
      v4 = 0xED000065726F7453;
      v5 = 0x7070416F5477656ELL;
      v6 = 0xEF676E6972696150;
      v7 = 0x686374615777656ELL;
      if (v1 != 2)
      {
        v7 = 0xD000000000000013;
        v6 = 0x80000001E1B57920;
      }

      if (v1)
      {
        v5 = 0xD000000000000010;
        v4 = 0x80000001E1B578F0;
      }

      if (v1 <= 1u)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      if (v1 <= 1u)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x1E68FECA0](v8, v9);

      return v11;
    }

    sub_1E1AF6FEC();

    v3 = 0xD000000000000020;
LABEL_6:
    v11 = v3;
    MEMORY[0x1E68FECA0](v1, v2);
    return v11;
  }

  if (*(v0 + 16) == 2)
  {
    sub_1E1AF6FEC();

    v3 = 0xD00000000000001CLL;
    goto LABEL_6;
  }

  if (v1 | v2)
  {
    return 0x6E776F6E6B6E55;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t _s11AppStoreKit19TriggerBuilderErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        v10 = sub_1E14589BC(*a1, *a2);
        sub_1E18F5180(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
        goto LABEL_19;
      }

      goto LABEL_34;
    }

    if (!*(a2 + 16))
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1E1AF74AC();
        sub_1E141D014(v6, v5, 0);
        sub_1E141D014(v3, v2, 0);
        sub_1E18F5180(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
LABEL_19:
        sub_1E18F5180(v11, v12, v13);
        return v10 & 1;
      }

      sub_1E141D014(v8, v2, 0);
      sub_1E141D014(v3, v2, 0);
      sub_1E18F5180(v3, v2, 0);
      v21 = v3;
      v22 = v2;
      v23 = 0;
      goto LABEL_38;
    }

    goto LABEL_16;
  }

  if (v4 == 2)
  {
    if (v7 == 2)
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1E1AF74AC();
        sub_1E141D014(v6, v5, 2u);
        sub_1E141D014(v3, v2, 2u);
        sub_1E18F5180(v3, v2, 2u);
        v11 = v6;
        v12 = v5;
        v13 = 2;
        goto LABEL_19;
      }

      sub_1E141D014(v14, v2, 2u);
      sub_1E141D014(v3, v2, 2u);
      sub_1E18F5180(v3, v2, 2u);
      v21 = v3;
      v22 = v2;
      v23 = 2;
      goto LABEL_38;
    }

LABEL_16:

    goto LABEL_34;
  }

  if (!(v3 | v2))
  {
    if (v7 == 3 && (v5 | v6) == 0)
    {
      sub_1E18F5180(*a1, v2, 3u);
      v21 = 0;
      v22 = 0;
      v23 = 3;
LABEL_38:
      sub_1E18F5180(v21, v22, v23);
      return 1;
    }

    goto LABEL_34;
  }

  if (v7 != 3 || v6 != 1 || v5 != 0)
  {
LABEL_34:
    sub_1E141D014(v6, v5, v7);
    sub_1E18F5180(v3, v2, v4);
    sub_1E18F5180(v6, v5, v7);
    return 0;
  }

  sub_1E18F5180(*a1, v2, 3u);
  v19 = 1;
  sub_1E18F5180(1, 0, 3u);
  return v19;
}

unint64_t sub_1E18F50D8()
{
  result = qword_1ECEBB158;
  if (!qword_1ECEBB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB158);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit19TriggerBuilderErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1E18F5180(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

uint64_t sub_1E18F51AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a1;
  v3[34] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E18F5278, 0, 0);
}

uint64_t sub_1E18F5278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F88);
  inited = swift_initStackObject();
  v0[38] = inited;
  *(inited + 16) = xmmword_1E1B02CC0;
  v2 = sub_1E1AF5DBC();
  v3 = [objc_opt_self() keyWithName:v2 crossDeviceSync:1 isActiveITunesAccountRequired:1];

  if (qword_1EE1E2E60 != -1)
  {
    swift_once();
  }

  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  sub_1E1AF536C();
  sub_1E1AF532C();
  (*(v5 + 8))(v4, v6);
  v7 = v0[31];
  v8 = v0[32];
  *(inited + 32) = v3;
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  v9 = swift_task_alloc();
  v0[39] = v9;
  *v9 = v0;
  v9[1] = sub_1E18F544C;

  return sub_1E1603A6C(inited, 0);
}

uint64_t sub_1E18F544C(uint64_t a1)
{
  v3 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v4 = sub_1E18F57A0;
  }

  else
  {
    v5 = v3[38];
    swift_setDeallocating();
    sub_1E18F58B4(v5 + 32);
    v4 = sub_1E18F5574;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1E18F5574()
{
  v1 = 0;
  v2 = *(v0 + 328);
  v3 = *(v0 + 320);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v20 = *(v0 + 320);
  v7 = -1;
  v8 = -1 << *(v20 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v18 = v5;
  v19 = *(v0 + 264);
  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v11 = v1;
LABEL_8:
      v12 = *(v0 + 264);
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v20 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_1E137A5C4(*(v20 + 56) + 32 * v13, v0 + 88);
      *(v0 + 120) = v15;
      *(v0 + 128) = v16;
      sub_1E1301CF0((v0 + 88), (v0 + 136));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80);
      swift_dynamicCast();
      sub_1E1301CF0((v0 + 184), (v0 + 216));
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v19 + 24));
      sub_1E1AF4A1C();
      if (v2)
      {
        break;
      }

      v9 &= v9 - 1;
      __swift_destroy_boxed_opaque_existential_1(v0 + 216);

      v1 = v11;
      v5 = v18;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 216);

    v17 = *(v0 + 8);
LABEL_12:

    v17();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v11 >= v10)
      {

        v17 = *(v0 + 8);
        goto LABEL_12;
      }

      v9 = *(v5 + 8 * v11);
      ++v1;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E18F57A0()
{
  v1 = *(v0 + 304);
  swift_setDeallocating();
  sub_1E18F58B4(v1 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E18F5818(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5DC;

  return sub_1E18F51AC(a1, v6, v4);
}

uint64_t MetricsPageEnterGate.hasMetricsPage.setter(char a1)
{
  v3 = sub_1E1AF3C1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v8 = *(v1 + 34);
  *(v1 + 34) = a1;
  if (v8 & 1) == 0 && (a1)
  {
    result = swift_beginAccess();
    if (*(v1 + 32) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_1E1AF3C0C();
        (*(v9 + 8))(v6, ObjectType, v9);
        swift_unknownObjectRelease();
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

uint64_t MetricsPageEnterGate.hasAppeared.setter(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1E1AF3C1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v9 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v9 != v3)
  {
    result = swift_beginAccess();
    if (*(v1 + 34) == 1 && (a1 & 1) != 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v10 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_1E1AF3C0C();
        (*(v10 + 8))(v7, ObjectType, v10);
        swift_unknownObjectRelease();
        return (*(v5 + 8))(v7, v4);
      }
    }
  }

  return result;
}

uint64_t MetricsPageEnterGate.hasExitedWhileAppeared.setter(char a1)
{
  v3 = sub_1E1AF3C1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v8 = *(v1 + 33);
  *(v1 + 33) = a1;
  if (v8 == 1 && (a1 & 1) == 0)
  {
    result = swift_beginAccess();
    if (*(v1 + 34))
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_1E1AF3BDC();
        (*(v9 + 8))(v6, ObjectType, v9);
        swift_unknownObjectRelease();
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

uint64_t sub_1E18F5D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v8 = a3(a1, v3, ObjectType, a2);
  swift_unknownObjectRelease();
  return v8;
}

void (*MetricsPageEnterGate.hasAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_1E1AF3C1C();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 32);
  return sub_1E18F5EC8;
}

void sub_1E18F5EC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasAppeared.setter(*(*a1 + 80));
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 32);
    *(v5 + 32) = v3;
    if (v3 != v6)
    {
      v7 = v2[6];
      swift_beginAccess();
      if (v3)
      {
        if ((*(v7 + 34) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          v9 = v2[8];
          v8 = v2[9];
          v10 = v2[7];
          v11 = *(v2[6] + 24);
          ObjectType = swift_getObjectType();
          sub_1E1AF3C0C();
          (*(v11 + 8))(v8, ObjectType, v11);
          swift_unknownObjectRelease();
          (*(v9 + 8))(v8, v10);
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

void (*MetricsPageEnterGate.hasExitedWhileAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_1E1AF3C1C();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 33);
  return sub_1E18F6108;
}

void sub_1E18F6108(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasExitedWhileAppeared.setter(v3);
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 33);
    *(v5 + 33) = v3;
    if (v6 == 1 && (v3 & 1) == 0)
    {
      v7 = v2[6];
      swift_beginAccess();
      if (*(v7 + 34))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = v2[8];
          v8 = v2[9];
          v10 = v2[7];
          v11 = *(v2[6] + 24);
          ObjectType = swift_getObjectType();
          sub_1E1AF3BDC();
          (*(v11 + 8))(v8, ObjectType, v11);
          swift_unknownObjectRelease();
          (*(v9 + 8))(v8, v10);
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

void (*MetricsPageEnterGate.hasMetricsPage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_1E1AF3C1C();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 34);
  return sub_1E18F6344;
}

void sub_1E18F6344(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasMetricsPage.setter(v3);
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 34);
    *(v5 + 34) = v3;
    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v7 = v2[6];
        swift_beginAccess();
        if (*(v7 + 32) == 1)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = v2[8];
            v8 = v2[9];
            v10 = v2[7];
            v11 = *(v2[6] + 24);
            ObjectType = swift_getObjectType();
            sub_1E1AF3C0C();
            (*(v11 + 8))(v8, ObjectType, v11);
            swift_unknownObjectRelease();
            (*(v9 + 8))(v8, v10);
          }
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

uint64_t MetricsPageEnterGate.__deallocating_deinit()
{
  sub_1E1337DEC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18F64B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 32) = 0;
  *(a2 + 34) = 0;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t sub_1E18F6510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  *(v5 + 34) = 0;
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t HeroCarousel.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HeroCarousel.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HeroCarousel.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v73 = sub_1E1AF39DC();
  v3 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v57 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v57 - v10;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v79 = a1;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v70 = v15;
  v68 = v16;
  if (v27)
  {
    v75 = v26;
    v76 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v29 = v3;
    v31 = v30;
    (*(v12 + 8))(v14, v11);
    v75 = v28;
    v76 = v31;
    v3 = v29;
  }

  sub_1E1AF6F6C();
  v66 = *(v16 + 8);
  v66(v25, v15);
  v63 = v3;
  v32 = *&v77[16];
  v33 = v67;
  *(v67 + 64) = *v77;
  *(v33 + 80) = v32;
  *(v33 + 96) = v78;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v61 = *(v3 + 16);
  v34 = v62;
  v35 = v73;
  v36 = v74;
  v61(v62, v74, v73);
  v37 = v64;
  sub_1E1AF464C();
  v60 = OBJC_IVAR____TtC11AppStoreKit12HeroCarousel_impressionMetrics;
  sub_1E134B7C8(v37, v33 + OBJC_IVAR____TtC11AppStoreKit12HeroCarousel_impressionMetrics);
  v38 = v72;
  v39 = v61;
  v61(v72, v36, v35);
  v40 = v79;
  sub_1E1AF381C();
  v39(v34, v38, v35);
  type metadata accessor for HeroCarouselItem();
  sub_1E18F70C4(&qword_1ECEBB160, type metadata accessor for HeroCarouselItem);
  v41 = v33;
  *(v33 + 16) = sub_1E1AF630C();
  v42 = v65;
  sub_1E1AF381C();
  v43 = v69;
  v39(v69, v38, v35);
  v44 = v71;
  AutoScrollConfiguration.init(deserializing:using:)(v42, v43, v77);
  if (v44)
  {
    v45 = *(v63 + 8);
    v46 = v73;
    v45(v74, v73);
    v66(v40, v70);
    v45(v38, v46);

    sub_1E134B88C(v41 + 64);
    sub_1E13814C0(v41 + v60);
    type metadata accessor for HeroCarousel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v47 = *&v77[24];
    *(v41 + 24) = v77[0];
    *(v41 + 32) = *&v77[8];
    *(v41 + 48) = v47;
    v48 = v58;
    sub_1E1AF381C();
    v49 = sub_1E1AF370C();
    v50 = v70;
    v71 = 0;
    v51 = v66;
    v66(v48, v70);
    *(v41 + 56) = (v49 == 2) | v49 & 1;
    v52 = v59;
    sub_1E1AF381C();
    v53 = sub_1E1AF370C();
    LODWORD(v69) = v53;
    v54 = *(v63 + 8);
    v55 = v73;
    v54(v74, v73);
    v51(v79, v50);
    v51(v52, v50);
    v54(v72, v55);
    *(v41 + 57) = (v69 == 2) | v53 & 1;
  }

  return v41;
}

uint64_t type metadata accessor for HeroCarousel()
{
  result = qword_1EE1F60F8;
  if (!qword_1EE1F60F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double HeroCarousel.autoScrollConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = result;
  return result;
}

uint64_t HeroCarousel.deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit12HeroCarousel_impressionMetrics);
  return v0;
}

uint64_t HeroCarousel.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit12HeroCarousel_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18F6EF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HeroCarousel();
  v7 = swift_allocObject();
  result = HeroCarousel.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double HeroCarousel.click(for:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    v3 = a1;
    a1 = sub_1E1AF71CC();
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      goto LABEL_13;
    }

    while ((v5 & 0xC000000000000001) == 0)
    {
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v6 = *(v5 + 8 * a1 + 32);

        goto LABEL_6;
      }

      __break(1u);
LABEL_12:
      v9 = a1;
      a1 = v3;
      if (v9 <= v3)
      {
        goto LABEL_13;
      }
    }
  }

  v6 = MEMORY[0x1E68FFD80]();
LABEL_6:
  swift_beginAccess();
  v7 = *(v6 + 112);

  if (v7)
  {
    *a2 = v7;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    return result;
  }

LABEL_13:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1E18F70C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E18F7138()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *SearchHintSet.__allocating_init(hints:ghostHintTerm:pageMetrics:pageRenderEvent:searchClearAction:searchCancelAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  v15 = OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageMetrics;
  v16 = sub_1E1AF3C3C();
  (*(*(v16 - 8) + 32))(&v14[v15], a4, v16);
  *&v14[OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageRenderEvent] = a5;
  *&v14[OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_searchClearAction] = a6;
  *&v14[OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_searchCancelAction] = a7;
  return v14;
}

char *SearchHintSet.init(hints:ghostHintTerm:pageMetrics:pageRenderEvent:searchClearAction:searchCancelAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  v12 = OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageMetrics;
  v13 = sub_1E1AF3C3C();
  (*(*(v13 - 8) + 32))(&v7[v12], a4, v13);
  *&v7[OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageRenderEvent] = a5;
  *&v7[OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_searchClearAction] = a6;
  *&v7[OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_searchCancelAction] = a7;
  return v7;
}

uint64_t SearchHintSet.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchHintSet.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t SearchHintSet.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v64 = *v3;
  v5 = sub_1E1AF3C3C();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1E1AF39DC();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v58 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v60 = (&v53 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v63 = (&v53 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - v13;
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = sub_1E1AF5A6C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  v67 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v70 = *(v16 + 8);
  v68 = v16 + 8;
  v70(v22, v15);
  if (v24[6](v14, 1, v23) == 1)
  {
    sub_1E14352B8(v14);
    v30 = sub_1E1AF5A7C();
    sub_1E15A67E0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v31 = 0x73746E6968;
    v32 = v64;
    v31[1] = 0xE500000000000000;
    v31[2] = v32;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E69AB690], v30);
    swift_willThrow();
    (*(v69 + 8))(v71, v72);
    v70(v67, v15);
    v33 = v66;
LABEL_6:
    type metadata accessor for SearchHintSet();
    swift_deallocPartialClassInstance();
    return v33;
  }

  v64 = v15;
  v24[4](v29, v14, v23);
  v24[2](v26, v29, v23);
  v34 = v69;
  v35 = v71;
  v55 = *(v69 + 16);
  v55(v63, v71, v72);
  type metadata accessor for SearchAction();
  sub_1E15A67E0(&qword_1EE1F5AB8, type metadata accessor for SearchAction);
  v36 = v65;
  v37 = sub_1E1AF62FC();
  if (v36)
  {
    (*(v34 + 8))(v35, v72);
    v70(v67, v64);
    (v24[1])(v29, v23);
    v33 = v66;
    goto LABEL_6;
  }

  v54 = v29;
  v63 = v24;
  v65 = v23;
  v33 = v66;
  *(v66 + 16) = v37;
  v38 = v62;
  sub_1E1AF381C();
  v39 = sub_1E1AF37CC();
  v41 = v40;
  v42 = v64;
  v70(v38, v64);
  *(v33 + 24) = v39;
  *(v33 + 32) = v41;
  v43 = v71;
  sub_1E1AF381C();
  v55(v60, v43, v72);
  v44 = v61;
  sub_1E1AF3BAC();
  (*(v56 + 32))(v33 + OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageMetrics, v44, v57);
  type metadata accessor for PageRenderMetricsEvent();
  v46 = v62;
  sub_1E1AF381C();
  v55(v58, v43, v72);
  sub_1E15A67E0(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent);
  sub_1E1AF464C();
  *(v33 + OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageRenderEvent) = v73;
  v61 = type metadata accessor for Action();
  sub_1E1AF381C();
  v47 = v71;
  v48 = static Action.tryToMakeInstance(byDeserializing:using:)(v46, v71);
  v49 = v46;
  v50 = v46;
  v51 = v70;
  v70(v49, v42);
  *(v33 + OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_searchClearAction) = v48;
  sub_1E1AF381C();
  v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v50, v47);
  (*(v69 + 8))(v47, v72);
  v51(v67, v42);
  v51(v50, v42);
  v63[1](v54, v65);
  *(v33 + OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_searchCancelAction) = v52;
  return v33;
}

uint64_t type metadata accessor for SearchHintSet()
{
  result = qword_1EE1E0250;
  if (!qword_1EE1E0250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchHintSet.ghostHintTerm.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SearchHintSet.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchHintSet.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SearchHintSet.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18F8044@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SearchHintSet();
  v7 = swift_allocObject();
  result = SearchHintSet.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E18F80C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit13SearchHintSet_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E18F8170()
{
  result = sub_1E1AF3C3C();
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

uint64_t ClickableModel<>.linkAction.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  nullsub_5(a2, a3, a4);
}

uint64_t (*sub_1E18F82D0(void *a1))()
{
  *a1 = *(*v1 + 32);

  return sub_1E1547134;
}

uint64_t (*Action.linkAction.modify(void *a1))()
{
  *a1 = v1;

  return sub_1E1547134;
}

uint64_t (*sub_1E18F83FC(void *a1))()
{
  *a1 = *v1;

  return sub_1E1547134;
}

uint64_t (*sub_1E18F8448(void *a1))()
{
  *a1 = *(*v1 + 88);

  return sub_1E1545EA4;
}

id JSONObject.appStoreColor.getter()
{
  v0 = sub_1E1AF380C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF37AC();
  result = 0;
  if ((v4 & 1) == 0)
  {
    sub_1E1AF381C();
    sub_1E18F8698();
    sub_1E1AF36DC();
    (*(v1 + 8))(v3, v0);
    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        return sub_1E18F8F00();
      }
    }

    else if (v8)
    {
      return sub_1E18F8C90();
    }

    sub_1E1AF37CC();
    if (v6)
    {
      sub_1E1355E88();
      return sub_1E1AF6C9C();
    }

    else
    {
      return sub_1E18F8A14();
    }
  }

  return result;
}

unint64_t sub_1E18F8698()
{
  result = qword_1EE1E3C20;
  if (!qword_1EE1E3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3C20);
  }

  return result;
}

uint64_t sub_1E18F86EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x64656D616ELL;
  if (v2 != 1)
  {
    v4 = 0x63696D616E7964;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6449010;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x64656D616ELL;
  if (*a2 != 1)
  {
    v8 = 0x63696D616E7964;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6449010;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E18F87E0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18F8878()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18F88FC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18F8990@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E18F9C24();
  *a1 = result;
  return result;
}

void sub_1E18F89C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x64656D616ELL;
  if (v2 != 1)
  {
    v5 = 0x63696D616E7964;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6449010;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1E18F8A14()
{
  v0 = sub_1E1AF380C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v29 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  sub_1E1AF381C();
  v13 = sub_1E1AF379C();
  v15 = v14;
  v16 = *(v1 + 8);
  v16(v12, v0);
  if (v15)
  {
    return 0;
  }

  sub_1E1AF381C();
  v17 = sub_1E1AF379C();
  v19 = v18;
  v16(v10, v0);
  if (v19)
  {
    return 0;
  }

  sub_1E1AF381C();
  v20 = sub_1E1AF379C();
  v22 = v21;
  v16(v7, v0);
  if (v22)
  {
    return 0;
  }

  v24 = *&v20;
  sub_1E1AF381C();
  v25 = COERCE_DOUBLE(sub_1E1AF379C());
  v27 = v26;
  v16(v4, v0);
  if (v27)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v25;
  }

  return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:*&v13 green:*&v17 blue:v24 alpha:v28];
}

id sub_1E18F8C90()
{
  v0 = sub_1E1AF380C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  sub_1E18F9C70();
  sub_1E1AF36DC();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v12 <= 1u)
  {
    if (v12)
    {
      v5 = &selRef_whiteColor;
    }

    else
    {
      v5 = &selRef_blackColor;
    }

    return [objc_opt_self() *v5];
  }

  if (v12 == 2)
  {
    v5 = &selRef_clearColor;
    return [objc_opt_self() *v5];
  }

  sub_1E1AF381C();
  sub_1E18F9CC4();
  sub_1E1AF36DC();
  v4(v3, v0);
  if (v11 != 9)
  {
    return sub_1E18F8EA8(v11);
  }

  sub_1E1AF381C();
  sub_1E18F9D18();
  sub_1E1AF36DC();
  v4(v3, v0);
  if (v10 == 10)
  {
    return 0;
  }

  v7 = sub_1E18F988C(v10);
  v8 = v7;
  return v7;
}

id sub_1E18F8EA8(char a1)
{
  v1 = [objc_opt_self() *off_1E870F8D8[a1]];

  return v1;
}

uint64_t sub_1E18F8F00()
{
  v0 = sub_1E1AF380C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = sub_1E1AF381C();
  v8 = JSONObject.appStoreColor.getter(v7);
  v9 = *(v1 + 8);
  v9(v6, v0);
  if (v8)
  {
    v10 = sub_1E1AF381C();
    v11 = JSONObject.appStoreColor.getter(v10);
    v9(v4, v0);
    if (v11)
    {
      sub_1E1355E88();
      if (sub_1E1AF6D0C())
      {
      }

      else
      {
        v12 = v8;
        v13 = v11;
        return sub_1E1AF6C8C();
      }
    }
  }

  return v8;
}

unint64_t sub_1E18F90C4()
{
  result = qword_1ECEBB168;
  if (!qword_1ECEBB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB168);
  }

  return result;
}

uint64_t sub_1E18F9118(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65526D6574737973;
    v6 = 0x6C426D6574737973;
    if (a1 != 2)
    {
      v6 = 0x724F6D6574737973;
    }

    if (a1)
    {
      v5 = 0x72476D6574737973;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x75506D6574737973;
    v2 = 0x72476D6574737973;
    if (a1 != 7)
    {
      v2 = 0x72426D6574737973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65596D6574737973;
    if (a1 != 4)
    {
      v3 = 0x69506D6574737973;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E18F9270(char *a1, char *a2)
{
  if (*&aBlack_1[8 * *a1] == *&aBlack_1[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1E1AF74AC();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1E18F92D8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18F9334()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18F9374()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18F93CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E18F9B40();
  *a1 = result;
  return result;
}

uint64_t sub_1E18F9424()
{
  sub_1E1AF762C();
  sub_1E19DB170();
  return sub_1E1AF767C();
}

uint64_t sub_1E18F9474()
{
  sub_1E1AF762C();
  sub_1E19DB170();
  return sub_1E1AF767C();
}

uint64_t sub_1E18F94B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E18F9B8C();
  *a1 = result;
  return result;
}

uint64_t sub_1E18F94E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E18F9118(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E18F9514(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x7972616974726574;
    v5 = 0x616E726574617571;
    if (a1 != 8)
    {
      v5 = 0x4C746C7561666564;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x547972616D697270;
    if (a1 != 5)
    {
      v6 = 0x7261646E6F636573;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x746E6954707061;
    v2 = 0xD000000000000015;
    if (a1 == 3)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000013;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E18F9690(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1E18F9514(*a1);
  v5 = v4;
  if (v3 == sub_1E18F9514(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E18F9718()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E18F9514(v1);
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18F977C()
{
  sub_1E18F9514(*v0);
  sub_1E1AF5F0C();
}

uint64_t sub_1E18F97D0()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E18F9514(v1);
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18F9830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E18F9BD8();
  *a1 = result;
  return result;
}

unint64_t sub_1E18F9860@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E18F9514(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E18F988C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        if (qword_1EE1E3260 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EE1E3268;
      }

      else
      {
        if (qword_1EE1E3248 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EE1E3250;
      }
    }

    else if (a1 == 7)
    {
      if (qword_1EE1D23A0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE1D23A8;
    }

    else if (a1 == 8)
    {
      if (qword_1EE1D2388 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE1D2390;
    }

    else
    {
      if (qword_1EE1E3290 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE1E3298;
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_1EE1E3238 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE1E3240;
    }

    else
    {
      if (qword_1EE1E3210 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE1E3218;
    }
  }

  else if (a1 == 2)
  {
    if (qword_1EE1D2370 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EE1D2378;
  }

  else if (a1 == 3)
  {
    if (qword_1EE1D2308 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EE1D2310;
  }

  else
  {
    if (qword_1EE1E3220 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EE1E3228;
  }

  return *v1;
}

uint64_t sub_1E18F9B40()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E18F9B8C()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E18F9BD8()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E18F9C24()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E18F9C70()
{
  result = qword_1EE1E3C38;
  if (!qword_1EE1E3C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3C38);
  }

  return result;
}

unint64_t sub_1E18F9CC4()
{
  result = qword_1EE1E3C30;
  if (!qword_1EE1E3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3C30);
  }

  return result;
}

unint64_t sub_1E18F9D18()
{
  result = qword_1EE1E3C28;
  if (!qword_1EE1E3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3C28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetadataRibbonItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataRibbonItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E18F9EE0()
{
  result = qword_1ECEBB170;
  if (!qword_1ECEBB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB170);
  }

  return result;
}

unint64_t sub_1E18F9F38()
{
  result = qword_1ECEBB178;
  if (!qword_1ECEBB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB178);
  }

  return result;
}

unint64_t sub_1E18F9F90()
{
  result = qword_1ECEBB180;
  if (!qword_1ECEBB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB180);
  }

  return result;
}

uint64_t static String.isNilOrEmpty(_:)(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

Swift::String __swiftcall String.prefix(upToCharacter:)(Swift::String upToCharacter)
{
  v3 = v2;
  v4 = v1;
  sub_1E183B9F0(upToCharacter._countAndFlagsBits, upToCharacter._object, v1, v2);
  if (v5)
  {
  }

  else
  {
    v6 = sub_1E1AF609C();
    v4 = MEMORY[0x1E68FEBF0](v6);
    v3 = v7;
  }

  v8 = v4;
  v9 = v3;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

Swift::String __swiftcall String.withAXAutoFocusIdentifier()()
{
  v5 = v0;
  v6 = v1;

  MEMORY[0x1E68FECA0](0xD000000000000016, 0x80000001E1B7DEE0);
  v2 = v5;
  v3 = v6;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

BOOL Optional<A>.isNotNilAndNotEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 != 0;
  return a2 && v3;
}

uint64_t PrivacyFooterLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t PrivacyFooterLayout.Metrics.actionButtonLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t PrivacyFooterLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t PrivacyFooterLayout.Metrics.init(bodyTopSpace:actionButtonLeadingMargin:maxTextWidth:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 112) = 0;
  *(a5 + 96) = 0u;
  *(a5 + 80) = 0u;
  v9 = a5 + 80;
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  sub_1E13BC4E4(a3, v9);

  return sub_1E1308EC0(a4, a5 + 120);
}

uint64_t PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[7];
  *(a4 + 96) = a1[6];
  *(a4 + 112) = v6;
  v7 = a1[9];
  *(a4 + 128) = a1[8];
  *(a4 + 144) = v7;
  v8 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v8;
  v9 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v9;
  v10 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v10;
  result = sub_1E1308EC0(a2, a4 + 160);
  *(a4 + 200) = a3;
  return result;
}

double static PrivacyFooterLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1)
{
  v2 = sub_1E1AF162C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1E1AF165C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v5, *MEMORY[0x1E69AB970], v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B02CD0;
  sub_1E1300B24(a1, v18);
  v12 = sub_1E1AF1A1C();
  v13 = MEMORY[0x1E69ABA90];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  __swift_allocate_boxed_opaque_existential_0((v11 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 120, v18);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  __swift_allocate_boxed_opaque_existential_0((v11 + 72));
  sub_1E1AF1A2C();
  sub_1E1AF163C();
  sub_1E1AF161C();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t PrivacyFooterLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_1E1AF745C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v1[8]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v8 = v7;
  v9 = *(v4 + 8);
  v34 = v3;
  v35 = v9;
  v9(v6, v3);
  v10 = v1[25];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    v13 = 0.0;
    v14 = a1;
    do
    {
      sub_1E1300B24(v12, v38);
      __swift_project_boxed_opaque_existential_1Tm(v38, v39);
      sub_1E1AF11CC();
      v16 = v15;
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v38);
      v14 = v14 - v16 - v8;
      if (v13 <= v18)
      {
        v13 = v18;
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
    v14 = a1;
  }

  sub_1E141E104((v1 + 10), v38);
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1Tm(v38, v39);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v20 = v19;
    v21 = v34;
    v35(v6, v34);
    __swift_destroy_boxed_opaque_existential_1(v38);
    if (v20 < v14)
    {
      v14 = v20;
    }
  }

  else
  {
    sub_1E141E174(v38);
    v21 = v34;
  }

  v43 = 0;
  v42 = 0u;
  *&v41[40] = 0u;
  sub_1E1300B24((v1 + 20), v38);
  sub_1E1300B24(v1, v41);
  v40 = 0;
  v44 = 8;
  sub_1E149BCE4(v38, v36);
  v22 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1E172D4E0((v23 > 1), v24 + 1, 1, v22);
  }

  sub_1E149BD40(v38);
  *(v22 + 2) = v24 + 1;
  v25 = &v22[136 * v24];
  v26 = v36[4];
  v27 = v36[2];
  v28 = v36[1];
  *(v25 + 5) = v36[3];
  *(v25 + 6) = v26;
  *(v25 + 3) = v28;
  *(v25 + 4) = v27;
  v29 = v36[7];
  v30 = v36[6];
  v31 = v36[5];
  *(v25 + 20) = v37;
  *(v25 + 8) = v30;
  *(v25 + 9) = v29;
  *(v25 + 7) = v31;
  *(v25 + 2) = v36[0];
  LOBYTE(v38[0]) = 0;
  v38[1] = v22;
  _VerticalFlowLayout.measurements(fitting:in:)(v14);

  __swift_project_boxed_opaque_existential_1Tm(v1 + 15, v1[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  return (v35)(v6, v21);
}

uint64_t PrivacyFooterLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v51 = a1;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v15 = v14;
  v49 = *(v11 + 8);
  v50 = v10;
  v49(v13, v10);
  v63.origin.x = a2;
  v63.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  v63.size.width = a4;
  v63.size.height = a5;
  MaxX = CGRectGetMaxX(v63);
  v17 = v5[25];
  v18 = *(v17 + 16);
  v52.origin.x = a2;
  v52.origin.y = a3;
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_1E1300B24(v19, v56);
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      width = v52.size.width;
      height = v52.size.height;
      sub_1E1AF11CC();
      v53 = v22;
      v24 = MaxX - v23;
      v64.origin.x = v52.origin.x;
      v64.origin.y = v52.origin.y;
      v64.size.width = width;
      v64.size.height = height;
      CGRectGetMinY(v64);
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(v56);
      MaxX = v24 - v15;
      v19 += 40;
      --v18;
    }

    while (v18);
  }

  x = v52.origin.x;
  y = v52.origin.y;
  v28 = v52.size.width;
  v27 = v52.size.height;
  CGRectGetMaxX(v52);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = v28;
  v65.size.height = v27;
  CGRectGetWidth(v65);
  sub_1E141E104((v5 + 10), v56);
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1Tm(v56, v57);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v49(v13, v50);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v28 = v52.size.width;
    v27 = v52.size.height;
  }

  else
  {
    sub_1E141E174(v56);
  }

  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = v28;
  v66.size.height = v27;
  CGRectGetMinX(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = v28;
  v67.size.height = v27;
  CGRectGetMinY(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = v28;
  v68.size.height = v27;
  CGRectGetHeight(v68);
  sub_1E1AF6B1C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v61 = 0;
  v60 = 0u;
  *&v59[40] = 0u;
  sub_1E1300B24((v5 + 20), v56);
  sub_1E1300B24(v5, v59);
  v58 = 0;
  v62 = 8;
  sub_1E149BCE4(v56, v54);
  v37 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1E172D4E0((v38 > 1), v39 + 1, 1, v37);
  }

  sub_1E149BD40(v56);
  *(v37 + 2) = v39 + 1;
  v40 = &v37[136 * v39];
  v41 = v54[4];
  v42 = v54[2];
  v43 = v54[1];
  *(v40 + 5) = v54[3];
  *(v40 + 6) = v41;
  *(v40 + 3) = v43;
  *(v40 + 4) = v42;
  v44 = v54[7];
  v45 = v54[6];
  v46 = v54[5];
  *(v40 + 20) = v55;
  *(v40 + 8) = v45;
  *(v40 + 9) = v44;
  *(v40 + 7) = v46;
  *(v40 + 2) = v54[0];
  LOBYTE(v56[0]) = 0;
  v56[1] = v37;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v51, v30, v32, v34, v36);
}

uint64_t EditorialStoryCard.Badge.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  sub_1E1AF381C();
  v12 = sub_1E1AF37CC();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (!v14)
  {
    goto LABEL_13;
  }

  v16 = v12 == 0x6F57656461637261 && v14 == 0xEE006B72616D6472;
  if (v16 || (sub_1E1AF74AC() & 1) != 0)
  {

    v17 = sub_1E1AF39DC();
    (*(*(v17 - 8) + 8))(a2, v17);
    result = (v15)(a1, v5);
    v19 = 0;
    v20 = 0;
    goto LABEL_21;
  }

  if (v12 == 1954047348 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v22 = sub_1E1AF74AC();

    if ((v22 & 1) == 0)
    {
LABEL_13:
      v23 = sub_1E1AF39DC();
      (*(*(v23 - 8) + 8))(a2, v23);
      result = (v15)(a1, v5);
      v19 = 0;
      v20 = 1;
      goto LABEL_21;
    }
  }

  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v26 = v25;
  v27 = sub_1E1AF39DC();
  (*(*(v27 - 8) + 8))(a2, v27);
  v15(a1, v5);
  result = (v15)(v8, v5);
  if (v26)
  {
    v19 = v24;
  }

  else
  {
    v19 = 0;
  }

  if (v26 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v26;
  }

LABEL_21:
  v28 = v30;
  *v30 = v19;
  v28[1] = v20;
  return result;
}

uint64_t EditorialStoryCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EditorialStoryCard.init(deserializing:using:)(a1, a2);
  return v4;
}

void *EditorialStoryCard.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v137 = a2;
  v124 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v128 = v120 - v6;
  v130 = sub_1E1AF5A6C();
  v7 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v121 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v122 = v120 - v10;
  v142 = sub_1E1AF39DC();
  v11 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v136 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v138 = v120 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v132 = v120 - v16;
  v141 = sub_1E1AEFEAC();
  v139 = *(v141 - 1);
  MEMORY[0x1EEE9AC00](v141);
  v18 = v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF380C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v127 = v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v131 = v120 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v120 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v120 - v28;
  v149 = v3;
  v3[18] = 0;
  v125 = v3 + 18;
  v143 = a1;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v140 = v19;
  v129 = v7;
  if (v31)
  {
    v144 = v30;
    v145 = v31;
    sub_1E1AF6F6C();
    v32 = *(v20 + 8);
    v139 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = v29;
    v34 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v35 = sub_1E1AEFE7C();
    v36 = v19;
    v37 = v11;
    v39 = v38;
    (*(v139 + 8))(v18, v141);
    v144 = v35;
    v145 = v39;
    v11 = v37;
    sub_1E1AF6F6C();
    v32 = *(v20 + 8);
    v139 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = v29;
    v34 = v36;
  }

  v141 = v32;
  v32(v33, v34);
  v40 = v147;
  v41 = v149;
  *(v149 + 19) = v146;
  *(v41 + 21) = v40;
  v41[23] = v148;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v133 = v11;
  v42 = *(v11 + 16);
  v43 = v137;
  v44 = v142;
  v42(v138, v137, v142);
  v45 = v132;
  v126 = v26;
  sub_1E1AF464C();
  v123 = OBJC_IVAR____TtC11AppStoreKit18EditorialStoryCard_impressionMetrics;
  v46 = v41 + OBJC_IVAR____TtC11AppStoreKit18EditorialStoryCard_impressionMetrics;
  v47 = v43;
  sub_1E134B7C8(v45, v46);
  v48 = v136;
  v134 = v42;
  v135 = v11 + 16;
  v42(v136, v43, v44);
  v49 = v143;
  v50 = v131;
  sub_1E1AF381C();
  v51 = sub_1E1AF37CC();
  v53 = v52;
  v54 = v50;
  v55 = v141;
  v141(v54, v140);
  if (!v53)
  {
    v76 = sub_1E1AF5A7C();
    sub_1E18FC9FC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v77 = 0x656C746974;
    v77[1] = 0xE500000000000000;
    v77[2] = v124;
    (*(*(v76 - 8) + 104))(v77, *MEMORY[0x1E69AB690], v76);
    swift_willThrow();
    v78 = *(v133 + 8);
    v79 = v47;
    v80 = v142;
    v78(v79, v142);
    v55(v49, v140);
    v78(v48, v80);
    v70 = v149;
LABEL_8:

    sub_1E134B88C((v70 + 19));
    sub_1E1308058(v70 + v123, &unk_1ECEB1770);
    type metadata accessor for EditorialStoryCard();
    swift_deallocPartialClassInstance();
    return v70;
  }

  v131 = v51;
  v132 = v53;
  v56 = type metadata accessor for Artwork();
  v141 = v55;
  v57 = v56;
  v58 = v126;
  sub_1E1AF381C();
  v59 = v138;
  v60 = v142;
  v61 = v134;
  v134(v138, v47, v142);
  v120[0] = sub_1E18FC9FC(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v120[1] = v57;
  sub_1E1AF464C();
  v62 = v149;
  v149[8] = v146;
  type metadata accessor for Video();
  sub_1E1AF381C();
  v61(v59, v137, v60);
  sub_1E18FC9FC(&qword_1EE1E52D0, type metadata accessor for Video);
  sub_1E1AF464C();
  v62[9] = v146;
  sub_1E1AF381C();
  v63 = sub_1E1AF370C();
  v64 = v140;
  v65 = v141;
  v141(v58, v140);
  *(v62 + 103) = v63;
  v66 = v127;
  sub_1E1AF381C();
  v67 = v128;
  sub_1E1AF374C();
  v65(v66, v64);
  v68 = v129;
  v69 = v130;
  v70 = v62;
  v71 = v58;
  if ((*(v129 + 48))(v67, 1, v130) == 1)
  {
    sub_1E1308058(v67, &qword_1ECEB1F90);
    v72 = 0;
    v73 = v136;
    v74 = v138;
    v75 = v134;
  }

  else
  {
    v81 = v122;
    (*(v68 + 32))(v122, v67, v69);
    (*(v68 + 16))(v121, v81, v69);
    v74 = v138;
    v73 = v136;
    v75 = v134;
    v134(v138, v136, v142);
    v72 = sub_1E1AF631C();
    (*(v68 + 8))(v81, v69);
  }

  v70[11] = v72;
  type metadata accessor for Lockup();
  sub_1E1AF381C();
  v82 = v71;
  v83 = v142;
  v75(v74, v73, v142);
  sub_1E18FC9FC(&qword_1EE1E4F60, type metadata accessor for Lockup);
  v84 = v82;
  sub_1E1AF464C();
  v70[10] = v146;
  if (!v70[8] && !v70[9])
  {
    v116 = v70[11];
    if (v116)
    {
      if (v116 >> 62)
      {
        if (sub_1E1AF71CC())
        {
          goto LABEL_12;
        }
      }

      else if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      if (!v70[10])
      {

        v117 = sub_1E1AF5A7C();
        sub_1E18FC9FC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
        swift_allocError();
        *v118 = 0x6B726F77747261;
        v118[1] = 0xE700000000000000;
        v118[2] = v124;
        (*(*(v117 - 8) + 104))(v118, *MEMORY[0x1E69AB690], v117);
        swift_willThrow();
        v119 = *(v133 + 8);
        v119(v137, v83);
        v141(v143, v140);
        v119(v136, v83);

        goto LABEL_8;
      }
    }
  }

LABEL_12:
  v85 = v82;
  sub_1E1AF381C();
  v86 = sub_1E1AF37CC();
  v88 = v87;
  v90 = v140;
  v89 = v141;
  v141(v84, v140);
  v149[2] = v86;
  v149[3] = v88;
  v91 = v132;
  v149[4] = v131;
  v149[5] = v91;
  sub_1E1AF381C();
  v92 = sub_1E1AF37CC();
  v94 = v93;
  v89(v84, v90);
  v95 = v149;
  v149[6] = v92;
  v95[7] = v94;
  v96 = v134;
  v97 = v142;
  sub_1E1AF381C();
  v98 = v136;
  v96(v74, v136, v97);
  sub_1E14601F4();
  sub_1E1AF464C();
  v99 = v146 | ((WORD2(v146) | (BYTE6(v146) << 16)) << 32);
  if (v146 == 2)
  {
    if (qword_1ECEB1190 != -1)
    {
      swift_once();
    }

    LOBYTE(v99) = dword_1ECEB9550;
    LOBYTE(v100) = BYTE1(dword_1ECEB9550);
    LOBYTE(v101) = BYTE2(dword_1ECEB9550);
    LOBYTE(v102) = HIBYTE(dword_1ECEB9550);
    LOBYTE(v103) = byte_1ECEB9554;
    LOBYTE(v104) = byte_1ECEB9555;
    LOBYTE(v105) = byte_1ECEB9556;
  }

  else
  {
    v100 = (v99 >> 8) & 1;
    v101 = (v99 >> 16) & 1;
    v102 = (v99 >> 24) & 1;
    v103 = HIDWORD(v99) & 1;
    v104 = (v99 >> 40) & 1;
    v105 = HIWORD(v99) & 1;
  }

  v106 = v143;
  *(v95 + 96) = v99 & 1;
  *(v95 + 97) = v100;
  *(v95 + 98) = v101;
  *(v95 + 99) = v102;
  *(v95 + 100) = v103;
  *(v95 + 101) = v104;
  *(v95 + 102) = v105;
  sub_1E1AF381C();
  v107 = v138;
  v96(v138, v98, v97);
  sub_1E17D1100(v85, v107, &v146);
  v108 = v148;
  v109 = v147;
  *(v95 + 13) = v146;
  *(v95 + 15) = v109;
  *(v95 + 68) = v108;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v110 = static Action.tryToMakeInstance(byDeserializing:using:)(v85, v98);
  v111 = *(v133 + 8);
  v111(v137, v97);
  v112 = v106;
  v114 = v140;
  v113 = v141;
  v141(v112, v140);
  v113(v85, v114);
  v70 = v149;
  v111(v98, v97);
  swift_beginAccess();
  v70[18] = v110;

  return v70;
}

uint64_t EditorialStoryCard.heading.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditorialStoryCard.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EditorialStoryCard.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void EditorialStoryCard.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[97];
  v3 = v1[98];
  v4 = v1[99];
  v5 = v1[100];
  v6 = v1[101];
  v7 = v1[102];
  *a1 = v1[96];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

id sub_1E18FC3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  v6 = *(v3 + 120);
  v7 = *(v3 + 128);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 136);
  *(a2 + 32) = v8;
  return sub_1E151F120(v4, v5, v6, v7, v8);
}

void sub_1E18FC448(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(v6 + 112);
  v12 = *(v6 + 104);
  v9 = *(v6 + 120);
  v10 = *(v6 + 128);
  *(v6 + 104) = v2;
  *(v6 + 112) = v3;
  *(v6 + 120) = v4;
  *(v6 + 128) = v5;
  v11 = *(v6 + 136);
  *(v6 + 136) = v7;
  sub_1E151F120(v2, v3, v4, v5, v7);
  sub_1E151F260(v12, v8, v9, v10, v11);
}

id sub_1E18FC4FC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 136);
  *(a1 + 32) = v7;
  return sub_1E151F120(v3, v4, v5, v6, v7);
}

__n128 sub_1E18FC554(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v8;
  v9 = *(v1 + 136);
  *(v1 + 136) = v3;
  sub_1E151F260(v4, v5, v6, v7, v9);
  return result;
}

uint64_t sub_1E18FC60C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
}

uint64_t sub_1E18FC6A4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t EditorialStoryCard.deinit()
{

  sub_1E151F260(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  sub_1E134B88C(v0 + 152);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit18EditorialStoryCard_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t EditorialStoryCard.__deallocating_deinit()
{
  EditorialStoryCard.deinit();

  return swift_deallocClassInstance();
}

void *sub_1E18FC804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for EditorialStoryCard();
  v7 = swift_allocObject();
  result = EditorialStoryCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

id sub_1E18FC8B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  v6 = *(v3 + 120);
  v7 = *(v3 + 128);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 136);
  *(a1 + 32) = v8;
  return sub_1E151F120(v4, v5, v6, v7, v8);
}

void sub_1E18FC910(_BYTE *a1@<X8>)
{
  v2 = *(*v1 + 97);
  v3 = *(*v1 + 98);
  v4 = *(*v1 + 99);
  v5 = *(*v1 + 100);
  v6 = *(*v1 + 101);
  v7 = *(*v1 + 102);
  *a1 = *(*v1 + 96);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t type metadata accessor for EditorialStoryCard()
{
  result = qword_1EE1EFF10;
  if (!qword_1EE1EFF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18FC9FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E18FCA4C()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit18EditorialStoryCardC5BadgeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Brick.__allocating_init(id:isMediaDark:isRTLMediaDark:artworks:rtlArtwork:accessibilityLabel:shortEditorialDescription:caption:title:subtitle:collectionIcons:editorialDisplayOptions:clickAction:shelfBackground:personalizationStyle:originalModel:flowPreviewActionsConfiguration:impressionMetrics:artworkSafeArea:textSafeArea:backgroundColor:placementStyle:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, __int128 *a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, __int128 *a25, uint64_t a26, char *a27)
{
  v86 = a8;
  v85 = a7;
  v84 = a6;
  v75 = a5;
  v83 = a4;
  v82 = a2;
  v88 = a22;
  v87 = a21;
  v81 = a16;
  v80 = a15;
  v79 = a14;
  v78 = a13;
  v76 = a12;
  v74 = a11;
  v73 = a10;
  v72 = a9;
  v89 = a26;
  v68 = a23;
  v77 = a18;
  v28 = sub_1E1AEFEAC();
  v60 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  v67 = *a17;
  v66 = a17[1];
  v65 = a17[2];
  v64 = a17[3];
  v63 = a17[4];
  v62 = a17[5];
  v61 = a17[6];
  v32 = *a19;
  v70 = a19[1];
  v71 = v32;
  v69 = *(a19 + 16);
  v33 = a1;
  v34 = *a20;
  v35 = a24[1];
  v95 = *a24;
  v96 = v35;
  *v97 = a24[2];
  *&v97[10] = *(a24 + 42);
  v36 = a25[1];
  v98 = *a25;
  v37 = a25[2];
  v99 = v36;
  *v100 = v37;
  *&v100[10] = *(a25 + 42);
  v38 = *a27;
  v39 = v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_originalModel;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  v40 = v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_id;
  *(v39 + 32) = 0;
  sub_1E134FD1C(a1, &v92, &unk_1ECEB5670);
  if (*(&v93 + 1))
  {
    v41 = v93;
    *v40 = v92;
    *(v40 + 16) = v41;
    *(v40 + 32) = v94;
  }

  else
  {
    sub_1E1AEFE9C();
    v42 = sub_1E1AEFE7C();
    v43 = v34;
    v45 = v44;
    (*(v60 + 8))(v30, v28);
    v90 = v42;
    v91 = v45;
    v34 = v43;
    sub_1E1AF6F6C();
    sub_1E1308058(&v92, &unk_1ECEB5670);
  }

  sub_1E1308058(v33, &unk_1ECEB5670);
  sub_1E134B7C8(v68, v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_impressionMetrics);
  *(v31 + 16) = v83;
  *(v31 + 24) = v82;
  v46 = v85;
  *(v31 + 32) = v84;
  *(v31 + 40) = v46;
  v47 = v72;
  *(v31 + 48) = v86;
  *(v31 + 56) = v47;
  v48 = v74;
  *(v31 + 64) = v73;
  *(v31 + 72) = v48;
  v49 = v78;
  *(v31 + 80) = v76;
  *(v31 + 88) = v49;
  v50 = v80;
  *(v31 + 96) = v79;
  *(v31 + 104) = v50;
  *(v31 + 112) = v81;
  *(v31 + 120) = v67;
  *(v31 + 121) = v66;
  *(v31 + 122) = v65;
  *(v31 + 123) = v64;
  *(v31 + 124) = v63;
  *(v31 + 125) = v62;
  *(v31 + 126) = v61;
  *(v31 + 128) = v77;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_personalizationStyle) = v34;
  swift_beginAccess();
  sub_1E1831E9C(v87, v39);
  swift_endAccess();
  v51 = v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground;
  v52 = v70;
  *v51 = v71;
  *(v51 + 16) = v52;
  *(v51 + 32) = v69;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_flowPreviewActionsConfiguration) = v88;
  v53 = (v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_artworkSafeArea);
  v54 = v96;
  *v53 = v95;
  v53[1] = v54;
  v53[2] = *v97;
  *(v53 + 42) = *&v97[10];
  v55 = (v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_textSafeArea);
  v56 = v99;
  v57 = *v100;
  *v55 = v98;
  v55[1] = v56;
  v55[2] = v57;
  *(v55 + 42) = *&v100[10];
  *(v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_backgroundColor) = v89;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit5Brick_placementStyle) = v38;
  return v31;
}

uint64_t Brick.init(id:isMediaDark:isRTLMediaDark:artworks:rtlArtwork:accessibilityLabel:shortEditorialDescription:caption:title:subtitle:collectionIcons:editorialDisplayOptions:clickAction:shelfBackground:personalizationStyle:originalModel:flowPreviewActionsConfiguration:impressionMetrics:artworkSafeArea:textSafeArea:backgroundColor:placementStyle:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, __int128 *a19, unsigned __int8 *a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, __int128 *a25, uint64_t a26, char *a27)
{
  v28 = v27;
  v83 = a8;
  v82 = a7;
  v81 = a6;
  v67 = a5;
  v80 = a4;
  v79 = a2;
  v85 = a22;
  v84 = a21;
  v78 = a16;
  v77 = a15;
  v76 = a14;
  v75 = a13;
  v73 = a12;
  v72 = a11;
  v71 = a10;
  v68 = a9;
  v86 = a26;
  v66 = a23;
  v74 = a18;
  v57 = sub_1E1AEFEAC();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a17;
  v64 = a17[1];
  v63 = a17[2];
  v62 = a17[3];
  v61 = a17[4];
  v60 = a17[5];
  v59 = a17[6];
  v32 = *a19;
  v69 = a19[1];
  v70 = v32;
  v33 = *(a19 + 16);
  v58 = *a20;
  v34 = a24[1];
  v95 = *a24;
  v96 = v34;
  *v97 = a24[2];
  *&v97[10] = *(a24 + 42);
  v35 = a25[1];
  v98 = *a25;
  v99 = v35;
  *v100 = a25[2];
  *&v100[10] = *(a25 + 42);
  v36 = *a27;
  v37 = v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_originalModel;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0;
  sub_1E134FD1C(a1, &v89, &unk_1ECEB5670);
  if (*(&v90 + 1))
  {
    v92 = v89;
    v93 = v90;
    v94 = v91;
  }

  else
  {
    sub_1E1AEFE9C();
    v38 = sub_1E1AEFE7C();
    v40 = v39;
    (*(v56 + 8))(v31, v57);
    v87 = v38;
    v88 = v40;
    sub_1E1AF6F6C();
    sub_1E1308058(&v89, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v41 = v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_id;
  v42 = v93;
  *v41 = v92;
  *(v41 + 16) = v42;
  *(v41 + 32) = v94;
  sub_1E134B7C8(v66, v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_impressionMetrics);
  *(v28 + 16) = v80;
  *(v28 + 24) = v79;
  v43 = v82;
  *(v28 + 32) = v81;
  *(v28 + 40) = v43;
  v44 = v68;
  *(v28 + 48) = v83;
  *(v28 + 56) = v44;
  v45 = v72;
  *(v28 + 64) = v71;
  *(v28 + 72) = v45;
  v46 = v75;
  *(v28 + 80) = v73;
  *(v28 + 88) = v46;
  v47 = v77;
  *(v28 + 96) = v76;
  *(v28 + 104) = v47;
  *(v28 + 112) = v78;
  *(v28 + 120) = v65;
  *(v28 + 121) = v64;
  *(v28 + 122) = v63;
  *(v28 + 123) = v62;
  *(v28 + 124) = v61;
  *(v28 + 125) = v60;
  *(v28 + 126) = v59;
  *(v28 + 128) = v74;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_personalizationStyle) = v58;
  swift_beginAccess();
  sub_1E1831E9C(v84, v37);
  swift_endAccess();
  v48 = v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground;
  v49 = v69;
  *v48 = v70;
  *(v48 + 16) = v49;
  *(v48 + 32) = v33;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_flowPreviewActionsConfiguration) = v85;
  v50 = (v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_artworkSafeArea);
  v51 = v96;
  *v50 = v95;
  v50[1] = v51;
  v50[2] = *v97;
  *(v50 + 42) = *&v97[10];
  v52 = (v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_textSafeArea);
  v53 = v99;
  *v52 = v98;
  v52[1] = v53;
  v52[2] = *v100;
  *(v52 + 42) = *&v100[10];
  *(v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_backgroundColor) = v86;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit5Brick_placementStyle) = v36;
  return v28;
}

uint64_t Brick.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Brick.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Brick.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v108 = &v103 - v5;
  v110 = sub_1E1AF5A6C();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v104 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v103 - v8;
  v121 = sub_1E1AF39DC();
  v9 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v133 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v106 = &v103 - v14;
  v120 = sub_1E1AEFEAC();
  v15 = *(v120 - 1);
  MEMORY[0x1EEE9AC00](v120);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF380C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v103 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v103 - v25;
  v117 = v2;
  v27 = v2 + OBJC_IVAR____TtC11AppStoreKit5Brick_originalModel;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0;
  v122 = a1;
  sub_1E1AF381C();
  v28 = sub_1E1AF37CC();
  v115 = v18;
  if (v29)
  {
    *&v124 = v28;
    *(&v124 + 1) = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v30 = sub_1E1AEFE7C();
    v31 = v9;
    v33 = v32;
    (*(v15 + 8))(v17, v120);
    *&v124 = v30;
    *(&v124 + 1) = v33;
    v9 = v31;
  }

  sub_1E1AF6F6C();
  v34 = *(v19 + 8);
  v113 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v114 = v34;
  v34(v26, v18);
  v35 = v117;
  v36 = v117 + OBJC_IVAR____TtC11AppStoreKit5Brick_id;
  v37 = v128;
  *v36 = v127;
  *(v36 + 16) = v37;
  *(v36 + 32) = *v129;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v111 = v9;
  v116 = v23;
  v38 = *(v9 + 16);
  v39 = v119;
  v40 = v112;
  v41 = v121;
  v38(v119, v112, v121);
  v42 = v106;
  sub_1E1AF464C();
  sub_1E134B7C8(v42, v35 + OBJC_IVAR____TtC11AppStoreKit5Brick_impressionMetrics);
  v43 = v133;
  v38(v133, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB40B8);
  sub_1E1AF381C();
  v44 = v116;
  v120 = v38;
  v118 = v9 + 16;
  v38(v39, v43, v41);
  sub_1E1460648();
  sub_1E1AF464C();
  *(v35 + 16) = v127;
  sub_1E1AF381C();
  v45 = sub_1E1AF370C();
  v46 = v115;
  v47 = v114;
  v48 = v113;
  v114(v44, v115);
  *(v35 + 24) = v45;
  sub_1E1AF381C();
  v49 = sub_1E1AF37CC();
  v51 = v50;
  v47(v44, v46);
  *(v35 + 32) = v49;
  *(v35 + 40) = v51;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v54 = v53;
  v47(v44, v46);
  *(v35 + 48) = v52;
  *(v35 + 56) = v54;
  sub_1E1AF381C();
  v55 = sub_1E1AF37CC();
  v57 = v56;
  v47(v44, v46);
  *(v35 + 64) = v55;
  *(v35 + 72) = v57;
  sub_1E1AF381C();
  v58 = sub_1E1AF37CC();
  v60 = v59;
  v47(v44, v46);
  *(v35 + 80) = v58;
  *(v35 + 88) = v60;
  sub_1E1AF381C();
  v61 = sub_1E1AF37CC();
  v63 = v62;
  v47(v44, v46);
  *(v35 + 96) = v61;
  *(v35 + 104) = v63;
  v64 = v107;
  sub_1E1AF381C();
  v65 = v108;
  sub_1E1AF374C();
  v47(v64, v46);
  v66 = v109;
  v67 = v110;
  if ((*(v109 + 48))(v65, 1, v110) == 1)
  {
    sub_1E1308058(v65, &qword_1ECEB1F90);
    v68 = 0;
  }

  else
  {
    v69 = v105;
    (*(v66 + 32))(v105, v65, v67);
    (*(v66 + 16))(v104, v69, v67);
    v120(v119, v133, v121);
    type metadata accessor for Artwork();
    v70 = v66;
    sub_1E18FF504(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    v68 = sub_1E1AF631C();
    (*(v70 + 8))(v69, v67);
  }

  *(v117 + 112) = v68;
  sub_1E1AF381C();
  v120(v119, v133, v121);
  sub_1E14601F4();
  sub_1E1AF464C();
  v71 = v130 | ((v131 | (v132 << 16)) << 32);
  if (v130 == 2)
  {
    if (qword_1ECEB1190 != -1)
    {
      swift_once();
    }

    v72 = v119;
    v73 = v48;
    v74 = v47;
    LOBYTE(v71) = dword_1ECEB9550;
    LOBYTE(v75) = BYTE1(dword_1ECEB9550);
    LOBYTE(v76) = BYTE2(dword_1ECEB9550);
    LOBYTE(v77) = HIBYTE(dword_1ECEB9550);
    LOBYTE(v78) = byte_1ECEB9554;
    LOBYTE(v79) = byte_1ECEB9555;
    LOBYTE(v80) = byte_1ECEB9556;
  }

  else
  {
    v72 = v119;
    v73 = v48;
    v74 = v47;
    v75 = (v71 >> 8) & 1;
    v76 = (v71 >> 16) & 1;
    v77 = (v71 >> 24) & 1;
    v78 = HIDWORD(v71) & 1;
    v79 = (v71 >> 40) & 1;
    v80 = HIWORD(v71) & 1;
  }

  v81 = v117;
  *(v117 + 120) = v71 & 1;
  *(v81 + 121) = v75;
  *(v81 + 122) = v76;
  *(v81 + 123) = v77;
  *(v81 + 124) = v78;
  *(v81 + 125) = v79;
  *(v81 + 126) = v80;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v82 = v133;
  v83 = static Action.tryToMakeInstance(byDeserializing:using:)(v44, v133);
  v84 = v115;
  v74(v44, v115);
  v113 = v73;
  v114 = v74;
  *(v81 + 128) = v83;
  sub_1E1AF381C();
  sub_1E18FE700();
  sub_1E1AF369C();
  v74(v44, v84);
  *(v81 + OBJC_IVAR____TtC11AppStoreKit5Brick_personalizationStyle) = v127;
  sub_1E1AF381C();
  v85 = v121;
  v120(v72, v82, v121);
  sub_1E17D1100(v44, v72, &v127);
  v86 = *v129;
  v87 = v81 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground;
  v88 = v128;
  *v87 = v127;
  *(v87 + 16) = v88;
  *(v87 + 32) = v86;
  type metadata accessor for FlowPreviewActionsConfiguration();
  sub_1E1AF381C();
  v89 = v82;
  v90 = v120;
  v120(v72, v89, v85);
  sub_1E18FF504(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration);
  sub_1E1AF464C();
  *(v81 + OBJC_IVAR____TtC11AppStoreKit5Brick_flowPreviewActionsConfiguration) = v127;
  sub_1E1AF381C();
  v91 = v133;
  v90(v72, v133, v85);
  sub_1E18CCB00();
  sub_1E1AF464C();
  v92 = (v81 + OBJC_IVAR____TtC11AppStoreKit5Brick_artworkSafeArea);
  v93 = v125;
  *v92 = v124;
  v92[1] = v93;
  v92[2] = v126[0];
  *(v92 + 42) = *(v126 + 10);
  v94 = v122;
  sub_1E1AF381C();
  v120(v72, v91, v85);
  sub_1E1AF464C();
  v95 = (v81 + OBJC_IVAR____TtC11AppStoreKit5Brick_textSafeArea);
  v96 = v128;
  *v95 = v127;
  v95[1] = v96;
  v95[2] = *v129;
  *(v95 + 42) = *&v129[10];
  sub_1E1AF381C();
  v97 = JSONObject.appStoreColor.getter();
  v98 = v115;
  v99 = v114;
  v114(v44, v115);
  *(v81 + OBJC_IVAR____TtC11AppStoreKit5Brick_backgroundColor) = v97;
  sub_1E1AF381C();
  sub_1E1822FCC();
  sub_1E1AF369C();
  v100 = *(v111 + 8);
  v101 = v121;
  v100(v112, v121);
  v99(v94, v98);
  v99(v44, v98);
  v100(v133, v101);
  *(v81 + OBJC_IVAR____TtC11AppStoreKit5Brick_placementStyle) = v123;
  return v81;
}

unint64_t sub_1E18FE700()
{
  result = qword_1EE1DB9D8;
  if (!qword_1EE1DB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DB9D8);
  }

  return result;
}

uint64_t Brick.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Brick.shortEditorialDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Brick.caption.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Brick.title.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Brick.subtitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void Brick.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[121];
  v3 = v1[122];
  v4 = v1[123];
  v5 = v1[124];
  v6 = v1[125];
  v7 = v1[126];
  *a1 = v1[120];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t Brick.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t Brick.originalModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit5Brick_originalModel;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB55B0);
}

uint64_t Brick.originalModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit5Brick_originalModel;
  swift_beginAccess();
  sub_1E1831E9C(a1, v1 + v3);
  return swift_endAccess();
}

id Brick.shelfBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_1E151F120(v4, v5, v6, v7, v8);
}

__n128 Brick.shelfBackground.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  v10 = *(v4 + 32);
  *(v4 + 32) = v3;
  sub_1E151F260(v5, v6, v7, v8, v10);
  return result;
}

uint64_t Brick.brickTitle.getter()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__n128 Brick.artworkSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_artworkSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_artworkSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_artworkSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 Brick.textSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_textSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_textSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_textSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

void *Brick.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_backgroundColor);
  v2 = v1;
  return v1;
}

uint64_t Brick.artwork.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = sub_1E1AF71CC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1E68FFD80](0, v1);
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t Brick.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_originalModel, &qword_1ECEB55B0);
  sub_1E151F260(*(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground + 32));

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_id);

  return v0;
}

uint64_t Brick.__deallocating_deinit()
{
  Brick.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E18FEE40()
{
  if (*(*v0 + 56))
  {
    v1 = *(*v0 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__n128 sub_1E18FEE88@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_artworkSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 sub_1E18FEEB4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_textSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t type metadata accessor for Brick()
{
  result = qword_1EE1E5720;
  if (!qword_1EE1E5720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18FEF8C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 128);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E18FF504(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_1E18FF02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Brick.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E18FF094()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = sub_1E1AF71CC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1E68FFD80](0, v1);
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1E18FF13C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit5Brick_originalModel;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a1, &qword_1ECEB55B0);
}

uint64_t sub_1E18FF1A8(uint64_t a1)
{
  result = sub_1E18FF504(qword_1EE1E5740, type metadata accessor for Brick);
  *(a1 + 8) = result;
  return result;
}

id sub_1E18FF200@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_1E151F120(v4, v5, v6, v7, v8);
}

void sub_1E18FF27C(_BYTE *a1@<X8>)
{
  v2 = *(*v1 + 121);
  v3 = *(*v1 + 122);
  v4 = *(*v1 + 123);
  v5 = *(*v1 + 124);
  v6 = *(*v1 + 125);
  v7 = *(*v1 + 126);
  *a1 = *(*v1 + 120);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

void *sub_1E18FF2C8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11AppStoreKit5Brick_backgroundColor);
  v2 = v1;
  return v1;
}

void sub_1E18FF358()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E18FF504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E18FF560()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E1771E40();
  v6 = qword_1EE1D97B0;
  if (*(v0 + qword_1EE1D97B0))
  {
    v7 = v0 + qword_1EE215800;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v4;
      v8 = *(v7 + 1);
      ObjectType = swift_getObjectType();
      v26 = v2;
      v10 = v1;
      v11 = ObjectType;
      v12 = *(v8 + 24);
      v13 = *(v12 + 32);

      v15 = v11;
      v1 = v10;
      v2 = v26;
      v13(v14, v15, v12);
      v4 = v25;

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v7 + 1);
      v17 = swift_getObjectType();
      (*(v16 + 32))(*(v0 + qword_1EE1D97A8), v17, v16);
      swift_unknownObjectRelease();
    }

    v18 = *(*v0 + 704);

    v18(v19, 0);

    *(v0 + v6) = 0;
  }

  if (*(v0 + qword_1EE1D9788) == 1)
  {
    result = swift_beginAccess();
    v20 = v0[2];
    if (v20)
    {

      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v22 = v21;
      (*(v2 + 8))(v4, v1);
      v23 = v20 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v23 = v22;
      *(v23 + 8) = 0;
      v24 = *(v20 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
      swift_beginAccess();
      *(v24 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }
  }

  return result;
}

uint64_t sub_1E18FF868(char a1)
{
  v2 = v1;
  v4 = sub_1E1AF504C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-1] - v9;
  v11 = sub_1E1AEFCCC();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v1 + 264))(v13);
  if ((result & 1) == 0)
  {
    v17 = qword_1EE215818;
    result = swift_beginAccess();
    if (*(v2 + v17) != 1 && (*(v2 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
    {
      sub_1E134FD1C(v2 + qword_1EE2157F8, v10, &unk_1ECEB4B60);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        return sub_1E1308058(v10, &unk_1ECEB4B60);
      }

      else
      {
        (*(v12 + 32))(v15, v10, v11);
        if (*(v2 + qword_1EE1D9788) != 1 || (a1 & 1) != 0)
        {
          (*(*v2 + 576))(1);
          swift_beginAccess();
          if (v2[3])
          {
            *v7 = 1;
            (*(v5 + 104))(v7, *MEMORY[0x1E69AB450], v4);

            sub_1E1AF509C();

            (*(v5 + 8))(v7, v4);
          }

          (*(*v2 + 1136))(v15);
          v18 = sub_1E1361A80();
          swift_retain_n();
          v19 = sub_1E1AF68EC();
          v21[3] = v18;
          v21[4] = MEMORY[0x1E69AB720];
          v21[0] = v19;
          sub_1E1AF57FC();

          (*(v12 + 8))(v15, v11);
          return __swift_destroy_boxed_opaque_existential_1(v21);
        }

        else
        {
          return (*(v12 + 8))(v15, v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E18FFCB0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = a1;

  v2 = v1 + qword_1EE215800;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = *(v5 + 8);

    v6(v7, ObjectType, v5);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E18FFD98(uint64_t a1, char a2)
{
  v3 = v2;
  v28 = sub_1E1AEFE6C();
  v27 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = qword_1EE1D9788;
  *(v2 + qword_1EE1D9788) = v8 & 1;
  *(v2 + qword_1EE1D97A8) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  v12 = (v3 + qword_1EE2157E8);
  swift_beginAccess();
  *v12 = v11;
  v12[1] = v10;

  v13 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = qword_1EE215808;
  swift_beginAccess();
  *(v3 + v15) = v14;

  v16 = type metadata accessor for GenericPage();
  v30 = v16;
  v31 = &protocol witness table for BasePage;
  v17 = sub_1E1302BB4(&unk_1EE1E0748, type metadata accessor for GenericPage);
  v32 = v17;
  v29[0] = a1;
  swift_beginAccess();

  sub_1E137F8F8(v29, v3 + 40, &qword_1ECEB2588);
  swift_endAccess();
  sub_1E138B568();
  result = sub_1E1308058(v29, &qword_1ECEB2588);
  if (*(v3 + v9) == 1)
  {
    if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (*(v3 + 16))
      {

        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v20 = v19;
        (*(v27 + 8))(v7, v28);
        PendingPageRender.initialRequestEndTime.setter(v20, 0);
      }
    }

    swift_beginAccess();
    if (*(v3 + 16))
    {
      v31 = &protocol witness table for BasePage;
      v32 = v17;
      v30 = v16;
      v29[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v29);

      sub_1E1308058(v29, &qword_1ECEB2588);
    }

    v21 = v3 + qword_1ECEF4218;
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = *(v21 + 8);

      v22(v24);
      sub_1E1361B18(v22, v23);
      v25 = *v21;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v21 + 8);
    *v21 = 0;
    *(v21 + 8) = 0;
    return sub_1E1361B18(v25, v26);
  }

  return result;
}

uint64_t sub_1E1900184(uint64_t result)
{
  if (*(result + 16) && (*(v1 + qword_1EE1D9798) & 1) == 0)
  {
    if (*(v1 + qword_1EE1D97A0))
    {
      *(v1 + qword_1EE1D9798) = 1;
      v2 = result;

      sub_1E15E75E8(v3);

      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      *(v4 + 24) = v2;
      v5 = sub_1E1361A80();
      swift_retain_n();

      v6 = sub_1E1AF68EC();
      v7[3] = v5;
      v7[4] = MEMORY[0x1E69AB720];
      v7[0] = v6;
      sub_1E1AF57FC();

      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return result;
}

uint64_t sub_1E19002D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1E1300B24(a1, v27);
  sub_1E1300B24(a2, &v28);
  v5 = *(v3 + qword_1EE2157F0);
  v24 = v27;

  v6 = sub_1E1366D10(sub_1E137AEB8, v23, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v9 = (*(*v3 + 752))(v6);
    v10 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v9);
    v22 = v27;

    v11 = sub_1E1366E2C(sub_1E137AED8, v21, v10);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v26 = *(v9 + 24);

      sub_1E14878B0(v11, v25);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v25[0] = 100;
      v14 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v26, v25, 1, 2);

      v15 = v3 + qword_1EE215800;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2658);
        sub_1E1AF01FC();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1E1B02CC0;
        v18 = MEMORY[0x1E68F8EA0](v11, v6);
        v19 = MEMORY[0x1EEE9AC00](v18);
        v21[0] = v3;
        v21[1] = v6;
        v22 = v14;
        (*(v16 + 40))(v17, sub_1E137AEF8, v19);

        swift_unknownObjectRelease();
        return sub_1E1308058(v27, &qword_1ECEB2858);
      }
    }
  }

  return sub_1E1308058(v27, &qword_1ECEB2858);
}

uint64_t sub_1E1900618()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE1D29E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1E1AF3C1C();
    v2 = __swift_project_value_buffer(v1, qword_1EE1D29E8);
    sub_1E183B54C(v2);
  }

  return result;
}

uint64_t sub_1E19006B4(uint64_t a1, void *a2)
{
  v75 = a2;
  v3 = sub_1E1AF503C();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEFE6C();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v74 = v7;
  v8 = *(a1 + v7);
  v9 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v10 = *(v8 + 16);
  v11 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  result = swift_beginAccess();
  if (v10)
  {
    v13 = 0;
    v14 = v8 + 32;
    v66 = v10 - 1;
    v15 = MEMORY[0x1E69E7CC0];
    v67 = v8 + 32;
    while (1)
    {
      v16 = v14 + 40 * v13;
      v17 = v13;
      while (1)
      {
        if (v17 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_61;
        }

        sub_1E134E724(v16, v79);
        if (*(*(a1 + v11) + 16))
        {
          break;
        }

LABEL_4:
        ++v17;
        result = sub_1E134B88C(v79);
        v16 += 40;
        if (v10 == v17)
        {
          v9 = MEMORY[0x1E69E7CC0];
          goto LABEL_16;
        }
      }

      sub_1E135FCF4(v79);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = sub_1E134B88C(v79);
      MEMORY[0x1E68FEF20](v19);
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v13 = v17 + 1;
      result = sub_1E1AF62AC();
      v15 = v78;
      v14 = v67;
      v20 = v66 == v17;
      v9 = MEMORY[0x1E69E7CC0];
      if (v20)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  v15 = v9;
LABEL_16:

  v21 = *(v75 + qword_1EE2157F0);
  *(v75 + qword_1EE2157F0) = v15;
  sub_1E190154C(v21);

  v22 = *(a1 + v74);
  v77 = v9;
  v23 = *(v22 + 16);

  result = swift_beginAccess();
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 32;
    v66 = v23 - 1;
    v26 = MEMORY[0x1E69E7CC0];
    v67 = v22 + 32;
LABEL_18:
    v27 = v25 + 40 * v24;
    v28 = v24;
    while (v28 < *(v22 + 16))
    {
      sub_1E134E724(v27, v79);
      if (*(*(a1 + v11) + 16))
      {

        sub_1E135FCF4(v79);
        if (v29)
        {

          v30 = sub_1E134B88C(v79);
          MEMORY[0x1E68FEF20](v30);
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v24 = v28 + 1;
          result = sub_1E1AF62AC();
          v26 = v77;
          v25 = v67;
          v20 = v66 == v28;
          v9 = MEMORY[0x1E69E7CC0];
          if (v20)
          {
            goto LABEL_31;
          }

          goto LABEL_18;
        }
      }

      ++v28;
      result = sub_1E134B88C(v79);
      v27 += 40;
      if (v23 == v28)
      {
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_31;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v26 = v9;
LABEL_31:

  v31 = sub_1E16A189C(v26);

  v32 = v75;
  v33 = *(v75 + qword_1EE1D9790);
  *(v75 + qword_1EE1D9790) = v31;

  v34 = sub_1E16B0B84(v33, v31);

  if ((v34 & 1) == 0)
  {

    sub_1E1900184(v35);
  }

  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v79, &qword_1ECEB2DF0);
  v36 = qword_1EE215810;
  swift_beginAccess();
  sub_1E137F818(v79, v32 + v36);
  swift_endAccess();
  (*(*v32 + 1312))(a1, 0);
  v37 = v32 + qword_1EE215800;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v37 + 8);
    ObjectType = swift_getObjectType();
    (*(v38 + 32))(*(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions), ObjectType, v38);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v37 + 8);
    swift_getObjectType();
    sub_1E162A1BC();
    (*(*(v40 + 24) + 32))();

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v37 + 8);
    v42 = swift_getObjectType();
    (*(*(*(v41 + 24) + 16) + 8))(v42);
    swift_unknownObjectRelease();
  }

  sub_1E18FFCB0(v43);
  v44 = *(a1 + v74);
  v76 = v9;
  v45 = *(v44 + 16);

  result = swift_beginAccess();
  if (v45)
  {
    v46 = 0;
    v47 = v44 + 32;
    v67 = v45 - 1;
    v74 = v44 + 32;
LABEL_41:
    v48 = v9;
    v49 = v47 + 40 * v46;
    v50 = v46;
    while (v50 < *(v44 + 16))
    {
      sub_1E134E724(v49, v79);
      if (*(*(a1 + v11) + 16))
      {

        sub_1E135FCF4(v79);
        if (v51)
        {

          v52 = sub_1E134B88C(v79);
          MEMORY[0x1E68FEF20](v52);
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v46 = v50 + 1;
          result = sub_1E1AF62AC();
          v20 = v67 == v50;
          v9 = v76;
          v47 = v74;
          if (v20)
          {
            goto LABEL_53;
          }

          goto LABEL_41;
        }
      }

      ++v50;
      result = sub_1E134B88C(v79);
      v49 += 40;
      if (v45 == v50)
      {
        v9 = v48;
        goto LABEL_53;
      }
    }

LABEL_62:
    __break(1u);
    return result;
  }

LABEL_53:

  v53 = v75;
  (*(*v75 + 704))(v9, 0);

  swift_beginAccess();
  v54 = v53[2];
  if (v54)
  {

    v55 = v68;
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v57 = v56;
    (*(v69 + 8))(v55, v70);
    v58 = v54 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v58 = v57;
    *(v58 + 8) = 0;
    v59 = *(v54 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
    swift_beginAccess();
    *(v59 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  swift_beginAccess();
  if (v53[3])
  {
    v60 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v61 = sub_1E1AF3C3C();
    v62 = a1 + v60;
    v63 = v71;
    (*(*(v61 - 8) + 16))(v71, v62, v61);
    v65 = v72;
    v64 = v73;
    (*(v72 + 104))(v63, *MEMORY[0x1E69AB440], v73);

    sub_1E1AF508C();

    (*(v65 + 8))(v63, v64);
  }

  return (*(*v53 + 576))(0);
}

void sub_1E19010C0(void *a1, void *a2)
{
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError();
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*a2 + 576))(0, v9);
  sub_1E134FD1C(a2 + qword_1EE2157F8, v11 + *(v8 + 20), &unk_1ECEB4B60);
  *v11 = a1;
  swift_beginAccess();
  v12 = a2[2];
  if (v12)
  {
    v30 = v4;
    sub_1E1302BB4(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v29 = swift_allocError();
    sub_1E13614D0(v11, v13);
    v14 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v15 = *(v12 + v14);
    v16 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1E172D0E4(0, v15[2] + 1, 1, v15);
      *(v12 + v14) = v15;
    }

    v19 = v15[2];
    v18 = v15[3];
    if (v19 >= v18 >> 1)
    {
      v15 = sub_1E172D0E4((v18 > 1), v19 + 1, 1, v15);
    }

    v15[2] = v19 + 1;
    v15[v19 + 4] = v29;
    *(v12 + v14) = v15;
    swift_endAccess();

    v4 = v30;
  }

  else
  {
    v20 = a1;
  }

  swift_beginAccess();
  if (a2[3])
  {
    sub_1E1302BB4(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v21 = swift_allocError();
    sub_1E13614D0(v11, v22);
    *v7 = v21;
    (*(v5 + 104))(v7, *MEMORY[0x1E69AB430], v4);

    sub_1E1AF508C();

    (*(v5 + 8))(v7, v4);
  }

  v23 = a2 + qword_1EE215800;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 1);
    ObjectType = swift_getObjectType();
    sub_1E1302BB4(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v26 = swift_allocError();
    sub_1E13614D0(v11, v27);
    (*(*(*(v24 + 24) + 24) + 24))(v26, ObjectType);
    swift_unknownObjectRelease();
    sub_1E1906928(v11, type metadata accessor for PresenterError);
  }

  else
  {
    sub_1E1906928(v11, type metadata accessor for PresenterError);
  }
}

uint64_t sub_1E190154C(unint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B8);
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = v34 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C0);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v34 - v7;
  v8 = qword_1ECEB2818;
  swift_beginAccess();
  v39 = v1;
  v9 = *(v1 + v8);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v11 = 0;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v34[1] = v3 + 32;
    v34[2] = v3 + 16;
    v34[0] = v3 + 8;
    do
    {
      if (v36)
      {
        v12 = MEMORY[0x1E68FFD80](v11, a1);
      }

      else
      {
        if (v11 >= *(v35 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v10 = sub_1E1AF71CC();
          goto LABEL_3;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = *(v9 + 16);
      if (v11 == v13)
      {

        break;
      }

      if (v11 >= v13)
      {
        goto LABEL_33;
      }

      v14 = v8;
      v15 = a1;
      v16 = v9;
      v17 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11;
      v18 = v41;
      v19 = *(v40 + 48);
      v20 = v38;
      (*(v3 + 16))(&v38[v19], v17, v41);
      v21 = &v20[v19];
      v22 = v37;
      (*(v3 + 32))(v37, v21, v18);
      if (*(v12 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel))
      {

        sub_1E1AF35AC();

        (*v34[0])(v22, v18);
      }

      else
      {
        (*v34[0])(v22, v18);
      }

      a1 = v15;
      ++v11;
      v8 = v14;
      v9 = v16;
    }

    while (v10 != v11);
  }

  v23 = v39;
  *(v39 + v8) = MEMORY[0x1E69E7CC0];

  v25 = *(v23 + qword_1EE2157F0);
  if (v25 >> 62)
  {
    result = sub_1E1AF71CC();
    v26 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return result;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v25 & 0xC000000000000001;
    v38 = (v3 + 32);

    v27 = 0;
    v37 = v25;
    do
    {
      if (v40)
      {
        v28 = MEMORY[0x1E68FFD80](v27, v25);
      }

      else
      {
        v28 = *&v25[8 * v27 + 32];
      }

      if (*(v28 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel))
      {
        v29 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8);
        sub_1E1302CD4(&qword_1EE1D2A58, &qword_1ECEB28C8);

        sub_1E1AF3CDC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB1A8);
        sub_1E1AF3CEC();
        __swift_destroy_boxed_opaque_existential_1(v43);
        swift_beginAccess();
        v30 = *(v23 + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + v8) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_1E172D328(0, v30[2] + 1, 1, v30);
          *(v23 + v8) = v30;
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = sub_1E172D328(v32 > 1, v33 + 1, 1, v30);
        }

        v30[2] = v33 + 1;
        (*(v3 + 32))(v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33, v42, v41);
        v23 = v39;
        *(v39 + v8) = v30;
        swift_endAccess();

        v26 = v29;
        v25 = v37;
      }

      ++v27;
    }

    while (v26 != v27);
  }

  return result;
}

uint64_t sub_1E1901AF0(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a1, v6);
  sub_1E1300B24(a2, &v7);
  sub_1E134FD1C(v6, v4, &qword_1ECEB2858);
  sub_1E19002D4(v4, v5);
  sub_1E1308058(v6, &qword_1ECEB2858);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t (*sub_1E1901B90(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1906A08;
  *(v2 + 24) = a1;

  return sub_1E1906A10;
}

uint64_t sub_1E1901C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = sub_1E1AF00EC();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1EE2157F0;
  v16 = *(a5 + qword_1EE2157F0);

  sub_1E1901DF8(a6, v16);
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26 = a3;
  v27 = a4;
  v17 = Array<A>.personalizedShelves(with:)(&v25, v16);

  v18 = *(a5 + v15);
  *(a5 + v15) = v17;
  sub_1E190154C(v18);

  v19 = a5 + qword_1EE215800;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v20 + 24) + 48))(v14, ObjectType);
    swift_unknownObjectRelease();
  }

  result = (*(v12 + 8))(v14, v24);
  *(a5 + qword_1EE1D9798) = 0;
  return result;
}

uint64_t sub_1E1901DF8(uint64_t a1, unint64_t a2)
{
  result = sub_1E1AF00DC();
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E68FFD80](v5, a2);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v8 = *(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles);

        v9 = sub_1E14086B0(a1, v8);

        if ((v9 & 1) == 0)
        {
          sub_1E1AF00AC();
        }

        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(a2 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1E1AF71CC();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1E1901F24()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE215B00);
  __swift_project_value_buffer(v4, qword_1EE215B00);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t ArcadePagePresenter.init(objectGraph:arcadeSubscriptionManager:page:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = (v4 + qword_1EE215AF8);
  *v16 = 0;
  v16[1] = 0;
  v17 = v4 + qword_1ECEF4C70;
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 40) = 3;
  *(v4 + qword_1EE1DD748) = 0;
  v18 = (v4 + qword_1EE1DD758);
  *v18 = 0;
  v18[1] = 0;
  *(v4 + qword_1EE215B18) = 0;
  *(v4 + qword_1EE1DD760) = a2;
  v61 = a2;
  v19 = &a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v20 = v19[8];
  v21 = v4 + qword_1EE1DD768;
  v60 = *v19;
  *v21 = v60;
  *(v21 + 8) = v20;
  v22 = *v19;
  v23 = v19[8];
  v24 = v4 + qword_1EE1DD750;
  *v24 = *v19;
  *(v24 + 8) = v23;
  v25 = a4;
  if ((v19[8] & 0xC0) != 0x80)
  {
    v25 = a4 + *(type metadata accessor for ArcadePageUrls() + 20);
  }

  v59 = a4;
  sub_1E134FD1C(v25, v12, &unk_1ECEB4B60);
  sub_1E13E23F8(v12, v15);
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v58 = v15;
  v26 = v62;
  sub_1E134FD1C(v15, v62, &unk_1ECEB4B60);
  sub_1E134FD1C(v67, v66, &qword_1ECEB24F8);
  *(v4 + qword_1EE215800 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_1EE1D9788) = 0;
  v27 = MEMORY[0x1E69E7CC0];
  *(v4 + qword_1EE2157F0) = MEMORY[0x1E69E7CC0];
  *(v4 + qword_1ECEB2818) = v27;
  v28 = (v4 + qword_1EE215810);
  *v28 = 0u;
  v28[1] = 0u;
  *(v4 + qword_1EE1D97B0) = 0;
  *(v4 + qword_1EE1D97A8) = 0;
  *(v4 + qword_1EE215808) = 0;
  v29 = (v4 + qword_1ECEF4218);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v4 + qword_1EE2157E8);
  *v30 = 0;
  v30[1] = 0;
  *(v4 + qword_1EE215818) = 0;
  v31 = MEMORY[0x1E69E7CD0];
  *(v4 + qword_1EE1D9790) = MEMORY[0x1E69E7CD0];
  *(v4 + qword_1EE1D9798) = 0;
  sub_1E134FD1C(v26, v4 + qword_1EE2157F8, &unk_1ECEB4B60);
  *(v4 + qword_1EE1D97A0) = 0;
  sub_1E134FD1C(v66, v4 + qword_1ECEF4210, &qword_1ECEB24F8);
  v32 = &qword_1ECEB2000;
  *(v4 + qword_1ECEB2820) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = v31;
  v33 = v63;
  swift_retain_n();
  v61 = v61;
  sub_1E1361A40(v60, v20);
  sub_1E1361A40(v22, v23);

  v34 = sub_1E138C578(v33, 0, 0, 0);

  if (a3)
  {
    v35 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v36 = *(a3 + v35);
    v65 = v27;
    v37 = v36[2];
    v38 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

    swift_beginAccess();
    if (!v37)
    {
      goto LABEL_15;
    }

    v39 = 0;
    v40 = v36 + 4;
    v57 = v37 - 1;
    v60 = v36 + 4;
    while (1)
    {
      v41 = v40 + 40 * v39;
      v42 = v39;
      while (1)
      {
        if (v42 >= v36[2])
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_1E134E724(v41, v64);
        if (*(*(a3 + v38) + 16))
        {
          break;
        }

LABEL_7:
        ++v42;
        sub_1E134B88C(v64);
        v41 += 40;
        if (v37 == v42)
        {
          goto LABEL_15;
        }
      }

      sub_1E135FCF4(v64);
      if ((v43 & 1) == 0)
      {
        break;
      }

      v44 = sub_1E134B88C(v64);
      MEMORY[0x1E68FEF20](v44);
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v39 = v42 + 1;
      sub_1E1AF62AC();
      v27 = v65;
      v40 = v60;
      if (v57 == v42)
      {
LABEL_15:

        *(v34 + qword_1EE2157F0) = v27;

        v45 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage;
        v46 = qword_1EE215810;
        swift_beginAccess();
        sub_1E137F8F8(a3 + v45, v34 + v46, &qword_1ECEB2DF0);
        swift_endAccess();
        *(v34 + qword_1EE1D97B0) = sub_1E162A1BC();

        (*(*v34 + 1312))(a3, 1);

        v32 = &qword_1ECEB2000;
        goto LABEL_17;
      }
    }

    goto LABEL_7;
  }

LABEL_17:
  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v47 = swift_dynamicCastClass();
  v42 = v59;
  v37 = v61;
  if (v47)
  {
    v48 = v47;
    swift_beginAccess();
    *(v48 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v49 = *(v34 + v32[260]);
    if (v49)
    {
      v50 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v51 = *(v49 + 32);
      v52 = *(v49 + 40);
      *(v49 + 32) = sub_1E137F9A8;
      *(v49 + 40) = v50;

      sub_1E1361B18(v51, v52);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v36 = [objc_opt_self() defaultCenter];
  if (qword_1ECEB1108 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v36 addObserver:v34 selector:? name:? object:?];

  sub_1E1308058(v66, &qword_1ECEB24F8);
  sub_1E1308058(v62, &unk_1ECEB4B60);
  sub_1E1308058(v67, &qword_1ECEB24F8);
  sub_1E1308058(v58, &unk_1ECEB4B60);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = *&v37[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock];
  swift_retain_n();

  [v54 lock];
  sub_1E15F6384(v34, sub_1E19065DC, v53, v37);
  [v54 unlock];

  sub_1E1906928(v42, type metadata accessor for ArcadePageUrls);

  return v34;
}

void sub_1E1902AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v1;
    v4 = v2;
    sub_1E1361A40(v1, v2);
    sub_1E19061E4(&v3);

    sub_1E1361A60(v1, v2);
  }
}

void sub_1E1902B44()
{

  sub_1E13E6F8C(*(v0 + qword_1ECEF4C70), *(v0 + qword_1ECEF4C70 + 8), *(v0 + qword_1ECEF4C70 + 16), *(v0 + qword_1ECEF4C70 + 24), *(v0 + qword_1ECEF4C70 + 32), *(v0 + qword_1ECEF4C70 + 40));

  sub_1E1361A60(*(v0 + qword_1EE1DD768), *(v0 + qword_1EE1DD768 + 8));
  sub_1E1361B18(*(v0 + qword_1EE1DD758), *(v0 + qword_1EE1DD758 + 8));
  v1 = *(v0 + qword_1EE1DD750);
  v2 = *(v0 + qword_1EE1DD750 + 8);

  sub_1E1361A60(v1, v2);
}

uint64_t ArcadePagePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_1E1361E3C();

  sub_1E13E6F8C(*(v2 + qword_1ECEF4C70), *(v2 + qword_1ECEF4C70 + 8), *(v2 + qword_1ECEF4C70 + 16), *(v2 + qword_1ECEF4C70 + 24), *(v2 + qword_1ECEF4C70 + 32), *(v2 + qword_1ECEF4C70 + 40));

  sub_1E1361A60(*(v2 + qword_1EE1DD768), *(v2 + qword_1EE1DD768 + 8));
  sub_1E1361B18(*(v2 + qword_1EE1DD758), *(v2 + qword_1EE1DD758 + 8));
  sub_1E1361A60(*(v2 + qword_1EE1DD750), *(v2 + qword_1EE1DD750 + 8));
  return v2;
}

uint64_t ArcadePagePresenter.__deallocating_deinit()
{
  ArcadePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1902D28(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_1EE215AF8);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1E1902D94()
{
  v1 = (v0 + qword_1EE215AF8);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_1E1902DEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_1ECEF4C70;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 40);
  *(a2 + 40) = v9;
  return sub_1E13E653C(v4, v5, v6, v7, v8, v9);
}

void *sub_1E1902E5C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2 + qword_1ECEF4C70;
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = *v7;
  v13 = *(v7 + 32);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v11 = *(v7 + 40);
  *(v7 + 40) = v8;
  sub_1E13E653C(v2, v3, v4, v5, v6, v8);
  return sub_1E13E6F8C(v15, v9, v10, v14, v13, v11);
}

id sub_1E1902F30@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1ECEF4C70;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  return sub_1E13E653C(v4, v5, v6, v7, v8, v9);
}

void sub_1E1902F9C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v15 = *a1;
  v16 = v3;
  v4 = v1 + qword_1EE1DD768;
  v5 = *(v1 + qword_1EE1DD768 + 8);
  v13 = *(v1 + qword_1EE1DD768);
  v14 = v5;
  sub_1E1361A40(v13, v5);
  v6 = static ArcadeState.== infix(_:_:)(&v15, &v13);
  sub_1E1361A60(v13, v14);
  if (v6)
  {
    return;
  }

  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = v8 >> 6;
  if (v8 >> 6 == 3 && (v7 & 1) != 0)
  {
    v10 = 0;
LABEL_10:
    sub_1E1361A40(v2, v3);
    sub_1E1361A40(v7, v8);
    sub_1E1361A60(v2, v3);
    sub_1E1361A60(v7, v8);

    sub_1E1903518(v10);
    return;
  }

  if (v3 >> 6 == 3 || v9 == 2)
  {
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  if (v9)
  {
    sub_1E1361A40(v2, v3);
    v11 = v7;
    v12 = v8;
  }

  else
  {
    if (v3 >> 6 == 2)
    {
      goto LABEL_9;
    }

    v11 = v2;
    v12 = v3;
  }

  sub_1E1361A40(v11, v12);
  sub_1E1361A60(v2, v3);

  sub_1E1361A60(v7, v8);
}

uint64_t sub_1E1903120()
{
  v1 = qword_1EE215B18;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E1903164(char a1)
{
  v3 = a1 & 1;
  v4 = qword_1EE215B18;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB198), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB1A0), (swift_dynamicCast() & 1) != 0))
    {
      v7 = *(&v10 + 1);
      if (*(&v10 + 1))
      {
        v8 = v11;
        __swift_project_boxed_opaque_existential_1Tm(&v9, *(&v10 + 1));
        (*(v8 + 40))(v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    return sub_1E1308058(&v9, &qword_1ECEBB190);
  }

  return result;
}

void sub_1E19032AC(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 32);
  *(v2 + 32) = a1;
  v5 = v2 + qword_1EE215800;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v6 + 24) + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v5 + 8);
      v9 = swift_getObjectType();
      (*(*(*(v8 + 24) + 24) + 16))(v9);
      goto LABEL_6;
    }
  }

  sub_1E17720F4(v4);
  if ((*(v2 + 32) & 1) == 0 && v4 == 1)
  {
    v10 = *(v2 + qword_1EE1DD750 + 8);
    v15 = *(v2 + qword_1EE1DD750);
    v16 = v10;
    v11 = *(v2 + qword_1EE1DD768 + 8);
    v13 = *(v2 + qword_1EE1DD768);
    v14 = v11;
    sub_1E1361A40(v15, v10);
    sub_1E1361A40(v13, v11);
    v12 = static ArcadeState.== infix(_:_:)(&v15, &v13);
    sub_1E1361A60(v13, v14);
    sub_1E1361A60(v15, v16);
    if ((v12 & 1) == 0)
    {
      sub_1E1903518(1);
    }
  }
}

void (*sub_1E1903438(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  return sub_1E19034C4;
}

void sub_1E19034C4(uint64_t a1)
{
  v1 = *a1;
  sub_1E19032AC(*(*a1 + 32));

  free(v1);
}

void sub_1E1903518(int a1)
{
  v47 = a1;
  v2 = sub_1E1AF320C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF321C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_1EE1DD748) != 1)
  {
    return;
  }

  swift_beginAccess();
  if (*(v1 + 32))
  {
    if (qword_1ECEB15A8 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE215B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    v52 = MEMORY[0x1E69E6370];
    LOBYTE(aBlock) = v47 & 1;
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF548C();

    return;
  }

  sub_1E1361A80();
  v46 = v1;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F98], v10);
  v45 = sub_1E1AF693C();
  (*(v11 + 8))(v13, v10);
  v53 = sub_1E190644C;
  v54 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1E1302D64;
  v52 = &block_descriptor_84;
  v44 = _Block_copy(&aBlock);
  sub_1E1AF322C();
  v48 = MEMORY[0x1E69E7CC0];
  sub_1E1302BB4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  v15 = v46;
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v16 = v44;
  v17 = v45;
  MEMORY[0x1E68FF640](0, v9, v5, v44);
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  v18 = v15 + qword_1EE1DD768;
  v19 = *(v15 + qword_1EE1DD768 + 8) >> 6;
  if (v19 <= 1)
  {
    if (v19)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v19 == 2)
  {
LABEL_10:
    sub_1E1903164(1);
    v20 = *v18;
    v21 = v15 + qword_1EE1DD750;
    v22 = *(v15 + qword_1EE1DD750);
    v23 = *(v18 + 8);
    *v21 = *v18;
    v24 = *(v21 + 8);
    *(v21 + 8) = v23;
    sub_1E1361A40(v20, v23);
    sub_1E1361A60(v22, v24);
    if (qword_1ECEB15A8 != -1)
    {
      swift_once();
    }

    v25 = sub_1E1AF591C();
    __swift_project_value_buffer(v25, qword_1EE215B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v52 = &type metadata for ArcadeState;
    aBlock = *v21;
    LOBYTE(v50) = *(v21 + 8);
    sub_1E1361A40(aBlock, v50);
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v26 = *(v15 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves);
    v52 = MEMORY[0x1E69E6370];
    LOBYTE(aBlock) = v26;
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    sub_1E18FF868(v47 & 1);
    return;
  }

  if ((*v18 & 1) == 0)
  {
    v32 = v15 + qword_1EE215800;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v33 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v33 + 24) + 24) + 8))(ObjectType);
LABEL_29:
    swift_unknownObjectRelease();
    return;
  }

  if (v47)
  {
    if (qword_1ECEB15A8 != -1)
    {
      swift_once();
    }

    v27 = sub_1E1AF591C();
    __swift_project_value_buffer(v27, qword_1EE215B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    v52 = &type metadata for ArcadeState;
    v28 = v46;
    aBlock = *(v46 + qword_1EE1DD750);
    LOBYTE(v50) = *(v46 + qword_1EE1DD750 + 8);
    sub_1E1361A40(aBlock, v50);
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF548C();

    v29 = v28 + qword_1EE215800;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 8);
      v31 = swift_getObjectType();
      (*(*(*(v30 + 24) + 24) + 8))(v31);
      swift_unknownObjectRelease();
    }

    LOBYTE(v48) = -63;
    ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&v48);

    return;
  }

  if (qword_1ECEB15A8 != -1)
  {
    swift_once();
  }

  v35 = sub_1E1AF591C();
  __swift_project_value_buffer(v35, qword_1EE215B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v52 = &type metadata for ArcadeState;
  v36 = v46;
  aBlock = *(v46 + qword_1EE1DD750);
  LOBYTE(v50) = *(v46 + qword_1EE1DD750 + 8);
  sub_1E1361A40(aBlock, v50);
  sub_1E1AF38BC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v37 = *(v36 + qword_1EE2157F0);
  *(v36 + qword_1EE2157F0) = MEMORY[0x1E69E7CC0];
  sub_1E190154C(v37);

  v38 = v36 + qword_1EE215800;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 8);
    v40 = swift_getObjectType();
    sub_1E19065E4();
    v41 = swift_allocError();
    (*(*(*(v39 + 24) + 24) + 24))(v41, v40);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v38 + 8);
    v43 = swift_getObjectType();
    (*(*(*(v42 + 24) + 16) + 8))(v43);
    goto LABEL_29;
  }
}

uint64_t sub_1E1904190(uint64_t a1)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v29 = v5;
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ArcadePageIntent();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  v31 = a1;
  v28 = v13;
  v26 = v4 + 16;
  (v13)(v8, a1, v3, v10);
  v27 = v1;
  v14 = *(v1 + qword_1EE1DD768 + 8);
  v15 = v14 <= 0x3F && *(v1 + qword_1EE1DD768) == 1;
  v16 = (v14 & 0xC0) == 128;
  v17 = v14 == 129;
  v25 = *(v4 + 32);
  v25(v12, v8, v3);
  v12[v9[5]] = v16;
  v12[v9[6]] = v15;
  v12[v9[7]] = v17;
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  swift_beginAccess();

  sub_1E1AF4BEC();

  v18 = sub_1E1AF4BFC();

  sub_1E1367448(v12, v18, "AppStoreKit/ArcadePagePresenter.swift", 37, 2);
  v19 = v30;
  v28(v30, v31, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v25((v21 + v20), v19, v3);
  v32[3] = sub_1E1AF470C();
  v32[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v32);
  sub_1E1AF46FC();
  type metadata accessor for GenericPage();
  v22 = sub_1E1AF57DC();

  sub_1E1906928(v12, type metadata accessor for ArcadePageIntent);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v22;
}

uint64_t sub_1E1904544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_1ECEB15A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  __swift_project_value_buffer(v6, qword_1EE215B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v7 = sub_1E1AEFCCC();
  v10[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a2, v7);
  sub_1E1AF38BC();
  sub_1E1308058(v10, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  *a3 = v5;
}

uint64_t sub_1E1904728(uint64_t a1, char a2)
{
  sub_1E18FFD98(a1, a2);
  type metadata accessor for ArcadePage();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v4 = *(result + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);
  v5 = *(result + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle + 8);
  v6 = (v2 + qword_1EE215AF8);
  v7 = result;
  v38 = result;
  swift_beginAccess();
  *v6 = v4;
  v6[1] = v5;

  v8 = v7 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect;
  v9 = *(v7 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect);
  v10 = *(v7 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 8);
  v11 = *(v7 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 16);
  v12 = *(v7 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 24);
  v13 = *(v8 + 32);
  v14 = v2 + qword_1ECEF4C70;
  v15 = *(v8 + 40);
  swift_beginAccess();
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v36 = *(v14 + 24);
  v37 = *v14;
  v35 = *(v14 + 32);
  *v14 = v9;
  *(v14 + 8) = v10;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  LOBYTE(v4) = *(v14 + 40);
  *(v14 + 40) = v15;
  sub_1E13E653C(v9, v10, v11, v12, v13, v15);
  sub_1E13E6F8C(v37, v16, v17, v36, v35, v4);
  v18 = sub_1E16356BC();
  v19 = v18;
  v20 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
LABEL_34:
    v21 = sub_1E1AF71CC();
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  do
  {
    v24 = v22;
    if (v21 == v22)
    {
      break;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1E68FFD80](v22, v19);
      if (__OFADD__(v24, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v25 = *(v19 + 8 * v22 + 32);

      if (__OFADD__(v24, 1))
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v39) = *(v25 + 16);
    if (Shelf.ContentType.rawValue.getter() == 0x6F46656461637261 && v26 == 0xEC0000007265746FLL)
    {

      goto LABEL_17;
    }

    v23 = sub_1E1AF74AC();

    v22 = v24 + 1;
  }

  while ((v23 & 1) == 0);

LABEL_17:
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB198), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB1A0), (swift_dynamicCast() & 1) == 0))
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_22;
  }

  v27 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_22:
    sub_1E1308058(&v39, &qword_1ECEBB190);
    goto LABEL_23;
  }

  v28 = v41;
  __swift_project_boxed_opaque_existential_1Tm(&v39, *(&v40 + 1));
  (*(v28 + 8))(v21 != v24, v27, v28);
  __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_23:
  if (!swift_unknownObjectWeakLoadStrong() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB198), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB1A0), (swift_dynamicCast() & 1) == 0))
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_28;
  }

  v29 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_28:
    sub_1E1308058(&v39, &qword_1ECEBB190);
    goto LABEL_29;
  }

  v30 = v41;
  __swift_project_boxed_opaque_existential_1Tm(&v39, *(&v40 + 1));
  v31 = *(v30 + 16);

  v31(v32, v29, v30);

  __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_29:
  if (*(v38 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction))
  {
    v33 = *(v38 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell);

    sub_1E1904BE8(v34, v33);
  }
}

void sub_1E1904BE8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v41 - v8;
  v10 = *(v2 + qword_1EE1DD760) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v11 = *(v10 + 8);
  if (v11 < 0xC0)
  {
    if (v11 > 0x3F)
    {
      if (qword_1ECEB15A8 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

    if (a2)
    {
      v18 = v3 + qword_1EE215800;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v20 = *(v18 + 8), v47 = Strong, v48 = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB198), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB1A0), (swift_dynamicCast() & 1) != 0))
      {
        v21 = *(&v50 + 1);
        if (*(&v50 + 1))
        {
          v22 = v51;
          __swift_project_boxed_opaque_existential_1Tm(&v49, *(&v50 + 1));
          v23 = swift_allocObject();
          swift_weakInit();
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          *(v24 + 24) = a1;
          v25 = *(v22 + 24);

          v25(sub_1E19068A4, v24, v21, v22);

          __swift_destroy_boxed_opaque_existential_1(&v49);
          goto LABEL_22;
        }
      }

      else
      {
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
      }

      sub_1E1308058(&v49, &qword_1ECEBB190);
LABEL_22:
      if (qword_1ECEB15A8 == -1)
      {
LABEL_23:
        v38 = sub_1E1AF591C();
        __swift_project_value_buffer(v38, qword_1EE215B00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF382C();
        sub_1E1AF548C();

        return;
      }

LABEL_33:
      swift_once();
      goto LABEL_23;
    }

    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v26 = v49;
    v46 = [objc_opt_self() standardUserDefaults];
    v27 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
    v28 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
    if (qword_1EE1D2170 != -1)
    {
      swift_once();
    }

    v44 = qword_1EE1E2E88;
    v45 = v28;
    sub_1E1AF52DC();
    sub_1E1AF532C();
    v29 = *(v7 + 8);
    v29(v9, v6);
    if (v27 >= v49)
    {
      if (qword_1ECEB15A8 != -1)
      {
        swift_once();
      }

      v39 = sub_1E1AF591C();
      __swift_project_value_buffer(v39, qword_1EE215B00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      goto LABEL_32;
    }

    v30 = v3 + qword_1EE215800;
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    v43 = v26;
    if (v31 && (v32 = *(v30 + 8), v47 = v31, v48 = v32, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB198), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB1A0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v50 + 1))
      {
        v33 = v51;
        v42 = *(&v50 + 1);
        v41[1] = __swift_project_boxed_opaque_existential_1Tm(&v49, *(&v50 + 1));
        v34 = swift_allocObject();
        swift_weakInit();
        v35 = swift_allocObject();
        v35[2] = v34;
        v35[3] = a1;
        v36 = v46;
        v35[4] = v46;
        v41[0] = *(v33 + 24);

        v37 = v36;
        (v41[0])(sub_1E1906898, v35, v42, v33);

        __swift_destroy_boxed_opaque_existential_1(&v49);
LABEL_29:
        if (qword_1ECEB15A8 != -1)
        {
          swift_once();
        }

        v40 = sub_1E1AF591C();
        v42 = __swift_project_value_buffer(v40, qword_1EE215B00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
        sub_1E1AF382C();
        sub_1E1AF52DC();
        sub_1E1AF532C();
        v29(v9, v6);
        *(&v50 + 1) = MEMORY[0x1E69E6530];
        sub_1E1AF38BC();
        sub_1E1308058(&v49, &qword_1ECEB2DF0);
        sub_1E1AF548C();

LABEL_32:

        return;
      }
    }

    else
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
    }

    sub_1E1308058(&v49, &qword_1ECEBB190);
    goto LABEL_29;
  }

  if (qword_1ECEB15A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF591C();
  __swift_project_value_buffer(v12, qword_1EE215B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2 & 1;
  v15 = (v3 + qword_1EE1DD758);
  v16 = *(v3 + qword_1EE1DD758);
  v17 = *(v3 + qword_1EE1DD758 + 8);
  *v15 = sub_1E19068AC;
  v15[1] = v14;

  sub_1E1361B18(v16, v17);
}

uint64_t sub_1E190576C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1904BE8(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E19057E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v16 = sub_1E1AF68EC();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1E19068B8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_78_0;
  v12 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1302BB4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v13 = v16;
  MEMORY[0x1E68FF640](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_1E1905B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result + qword_1EE215800;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 8);

    if (Strong)
    {
      swift_beginAccess();
      v7 = swift_weakLoadStrong();
      v8 = v7;
      if (v7)
      {
        v7 = type metadata accessor for ArcadePagePresenter();
      }

      else
      {
        v10[1] = 0;
        v10[2] = 0;
      }

      v10[0] = v8;
      v10[3] = v7;
      ObjectType = swift_getObjectType();
      (*(*(*(v6 + 24) + 8) + 8))(a2, v10, ObjectType);
      swift_unknownObjectRelease();
      return sub_1E1308058(v10, &qword_1ECEB2DF0);
    }
  }

  return result;
}

uint64_t sub_1E1905C40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF324C();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v19 = sub_1E1AF68EC();
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1E1906908;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_85;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1302BB4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v16 = v19;
  MEMORY[0x1E68FF640](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v20);
}

void sub_1E1905F80(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong + qword_1EE215800;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 8);

    if (v7)
    {
      swift_beginAccess();
      v9 = swift_weakLoadStrong();
      v10 = v9;
      if (v9)
      {
        v9 = type metadata accessor for ArcadePagePresenter();
      }

      else
      {
        v15[1] = 0;
        v15[2] = 0;
      }

      v15[0] = v10;
      v15[3] = v9;
      ObjectType = swift_getObjectType();
      (*(*(*(v8 + 24) + 8) + 8))(a2, v15, ObjectType);
      swift_unknownObjectRelease();
      sub_1E1308058(v15, &qword_1ECEB2DF0);
    }
  }

  v12 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1E1AF5DBC();
    [a3 setInteger:v13 forKey:v14];
  }
}

void sub_1E1906104(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EE1DD750 + 8);
  v10 = *(v2 + qword_1EE1DD750);
  v11 = v5;
  v6 = *(v2 + qword_1EE1DD768 + 8);
  v8 = *(v2 + qword_1EE1DD768);
  v9 = v6;
  sub_1E1361A40(v10, v5);
  sub_1E1361A40(v8, v6);
  v7 = static ArcadeState.== infix(_:_:)(&v10, &v8);
  sub_1E1361A60(v8, v9);
  sub_1E1361A60(v10, v11);
  if (v7)
  {

    sub_1E176F7A4(a1, a2);
  }
}

void sub_1E19061E4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (qword_1ECEB15A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1EE215B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v13 = &type metadata for ArcadeState;
  v11 = v2;
  v12 = v3;
  sub_1E1361A40(v2, v3);
  sub_1E1AF38BC();
  sub_1E1308058(&v11, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v5 = v1 + qword_1EE1DD768;
  v6 = *(v1 + qword_1EE1DD768);
  *v5 = v2;
  v7 = *(v5 + 8);
  *(v5 + 8) = v3;
  sub_1E1361A40(v2, v3);
  sub_1E1361A40(v6, v7);
  sub_1E1361A60(v6, v7);
  v11 = v6;
  v12 = v7;
  sub_1E1902F9C(&v11);
  sub_1E1361A60(v6, v7);
  v8 = (v1 + qword_1EE1DD758);
  v9 = *(v1 + qword_1EE1DD758);
  if (v9)
  {
    v10 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    v9();
    sub_1E1361B18(v9, v10);
  }
}

void sub_1E190644C()
{
  if (qword_1ECEB15A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE215B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v1 = [objc_opt_self() daemonProxy];
}

unint64_t sub_1E19065E4()
{
  result = qword_1ECEBB188;
  if (!qword_1ECEBB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB188);
  }

  return result;
}

uint64_t type metadata accessor for ArcadePagePresenter()
{
  result = qword_1EE1DD738;
  if (!qword_1EE1DD738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_62Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E1906928(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_66Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E1906A5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B20);
  result = swift_allocObject();
  *(result + 16) = sub_1E1906AAC;
  *(result + 24) = 0;
  qword_1EE215C50 = result;
  return result;
}

void sub_1E1906AAC(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_1E1AF74AC();

  if (v10)
  {
LABEL_6:

LABEL_16:
    v21 = 2.0;
    goto LABEL_17;
  }

  v11 = sub_1E1AF5DFC();
  v13 = v12;
  if (v11 == sub_1E1AF5DFC() && v13 == v14)
  {
LABEL_15:

    goto LABEL_16;
  }

  v16 = sub_1E1AF74AC();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = sub_1E1AF5DFC();
  v19 = v18;
  if (v17 == sub_1E1AF5DFC() && v19 == v20)
  {
    goto LABEL_14;
  }

  v22 = sub_1E1AF74AC();

  if (v22)
  {
LABEL_19:

    v21 = 3.0;
    goto LABEL_17;
  }

  v23 = sub_1E1AF5DFC();
  v25 = v24;
  if (v23 == sub_1E1AF5DFC() && v25 == v26)
  {
    goto LABEL_14;
  }

  v27 = sub_1E1AF74AC();

  if (v27)
  {
    goto LABEL_19;
  }

  v28 = sub_1E1AF5DFC();
  v30 = v29;
  if (v28 == sub_1E1AF5DFC() && v30 == v31)
  {
LABEL_14:

    v21 = 3.0;
    goto LABEL_17;
  }

  v32 = sub_1E1AF74AC();

  v21 = 1.0;
  if (v32)
  {
    v21 = 3.0;
  }

LABEL_17:
  *a2 = v21;
}

__n128 LargeLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 208);
  v13 = (a7 + 200);
  v13[12] = *(a1 + 192);
  v13[13] = v12;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v14;
  v15 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v15;
  v16 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v16;
  v17 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v17;
  v18 = *(a1 + 16);
  *(a7 + 200) = *a1;
  *(a7 + 216) = v18;
  v19 = *(a1 + 48);
  *(a7 + 232) = *(a1 + 32);
  *(a7 + 440) = *(a1 + 240);
  *(a7 + 248) = v19;
  sub_1E1308EC0(a2, a7);
  v20 = *(a3 + 16);
  *(a7 + 40) = *a3;
  *(a7 + 56) = v20;
  *(a7 + 72) = *(a3 + 32);
  sub_1E1308EC0(a4, a7 + 80);
  sub_1E1308EC0(a5, a7 + 120);
  result = *a6;
  v22 = *(a6 + 16);
  *(a7 + 160) = *a6;
  *(a7 + 176) = v22;
  *(a7 + 192) = *(a6 + 32);
  return result;
}

uint64_t LargeLockupLayout.Metrics.init(headingSpace:titleSpace:titleWithHeadingSpace:subtitleSpace:tertiaryTitleSpace:bottomSpace:isTextHorizontallyCentered:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_1E1308EC0(a1, a8);
  sub_1E1308EC0(a2, a8 + 40);
  sub_1E1308EC0(a3, a8 + 80);
  sub_1E1308EC0(a4, a8 + 120);
  sub_1E1308EC0(a5, a8 + 160);
  result = sub_1E1308EC0(a6, a8 + 200);
  *(a8 + 240) = a7;
  return result;
}

uint64_t LargeLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v23 = a2;
  v3 = sub_1E1AF180C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E1AF181C();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_1E1AF159C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1300B24(v2, v27);
  sub_1E1AF124C();
  v17 = sub_1E1AF127C();
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  sub_1E1AF158C();
  sub_1E1907420(v21, v27);
  v26[3] = v13;
  v26[4] = MEMORY[0x1E69AB958];
  v26[5] = MEMORY[0x1E69AB960];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(v14 + 16))(boxed_opaque_existential_0, v16, v13);
  sub_1E1383E78(v27, v25);
  (*(v4 + 104))(v6, *MEMORY[0x1E69AB9E0], v3);
  v24[3] = sub_1E1AF140C();
  v24[4] = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v24);
  sub_1E1AF13FC();
  sub_1E1AF17FC();
  sub_1E1AF17EC();
  (*(v7 + 8))(v9, v22);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1E1907420@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1E1AF18BC();
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = sub_1E1AF184C();
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v84[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_1E1AF189C();
  v10 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v86 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v84[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v84[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v84[-v17];
  v18 = sub_1E1AF745C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1E1AF188C();
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v95 = v25;
  v26 = *(v25 + 104);
  v103 = &v84[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = v27;
  v26(v23);
  if (qword_1ECEB15B0 != -1)
  {
    swift_once();
  }

  v111[0] = qword_1EE215C50;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v21);
  v29 = v28;
  (*(v19 + 8))(v21, v18);

  sub_1E15501AC((v2 + 5), v111);
  v30 = v112;
  if (!v112)
  {
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1Tm(v111, v112);
  v31 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(v111);
  if ((v31 & 1) == 0)
  {
    sub_1E15501AC((v2 + 5), v111);
    v30 = v112;
    if (v112)
    {
      __swift_project_boxed_opaque_existential_1Tm(v111, v112);
      v30 = sub_1E1AF112C();
      __swift_destroy_boxed_opaque_existential_1(v111);
      goto LABEL_9;
    }

LABEL_8:
    sub_1E1382094(v111);
    goto LABEL_9;
  }

  v30 = 0;
LABEL_9:
  __swift_project_boxed_opaque_existential_1Tm(v2 + 15, v2[18]);
  if (sub_1E1AF117C())
  {
    v93 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v2 + 15, v2[18]);
    v93 = sub_1E1AF112C();
  }

  sub_1E15501AC((v2 + 20), v111);
  v32 = v112;
  if (!v112)
  {
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1Tm(v111, v112);
  v33 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (v33)
  {
    v32 = 0;
    goto LABEL_18;
  }

  sub_1E15501AC((v3 + 20), v111);
  v32 = v112;
  if (v112)
  {
    __swift_project_boxed_opaque_existential_1Tm(v111, v112);
    v32 = sub_1E1AF112C();
    __swift_destroy_boxed_opaque_existential_1(v111);
  }

  else
  {
LABEL_17:
    sub_1E1382094(v111);
  }

LABEL_18:
  __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v29 < 9.22337204e18)
  {
    v85 = v32;
    sub_1E1AF146C();
    __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v3[18]);
    sub_1E1AF146C();
    sub_1E15501AC((v3 + 20), v111);
    if (v112)
    {
      __swift_project_boxed_opaque_existential_1Tm(v111, v112);
      sub_1E1AF146C();
      __swift_destroy_boxed_opaque_existential_1(v111);
    }

    else
    {
      sub_1E1382094(v111);
    }

    sub_1E15501AC((v3 + 5), &v108);
    v34 = MEMORY[0x1E69E7CC0];
    v92 = a2;
    v91 = v8;
    v90 = v6;
    if (v109)
    {
      sub_1E1308EC0(&v108, v111);
      if (v30)
      {
        v35 = v112;
        v36 = v113;
        v37 = __swift_project_boxed_opaque_existential_1Tm(v111, v112);
        v109 = v35;
        v110 = *(v36 + 8);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v108);
        (*(*(v35 - 8) + 16))(boxed_opaque_existential_0, v37, v35);
        *&v105 = v34;
        sub_1E1425840();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
        sub_1E1383E14();
        v39 = v100;
        v40 = v101;
        sub_1E1AF6EEC();
        sub_1E1AF186C();
        (*(v98 + 8))(v39, v40);
        __swift_destroy_boxed_opaque_existential_1(&v108);
        v32 = sub_1E172D494(0, 1, 1, v34);
        v42 = *(v32 + 2);
        v41 = *(v32 + 3);
        if (v42 >= v41 >> 1)
        {
          v32 = sub_1E172D494(v41 > 1, v42 + 1, 1, v32);
        }

        *(v32 + 2) = v42 + 1;
        (*(v10 + 32))(&v32[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v42], v89, v102);
        __swift_destroy_boxed_opaque_existential_1(v111);
        v43 = 35;
LABEL_33:
        sub_1E1300B24(&v3[v43], v111);
        v44 = v3[13];
        v45 = v3[14];
        v46 = __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v44);
        v109 = v44;
        v110 = *(v45 + 8);
        v47 = __swift_allocate_boxed_opaque_existential_0(&v108);
        (*(*(v44 - 8) + 16))(v47, v46, v44);
        *&v105 = v34;
        v48 = sub_1E1425840();
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
        v50 = sub_1E1383E14();
        v51 = v100;
        v88 = v49;
        v87 = v50;
        v52 = v101;
        v89 = v48;
        sub_1E1AF6EEC();
        sub_1E1AF186C();
        v8 = *(v98 + 8);
        (v8)(v51, v52);
        __swift_destroy_boxed_opaque_existential_1(&v108);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_34;
        }

        goto LABEL_52;
      }

      __swift_destroy_boxed_opaque_existential_1(v111);
    }

    else
    {
      sub_1E1382094(&v108);
      if (v30)
      {
        v32 = MEMORY[0x1E69E7CC0];
        v43 = 35;
        goto LABEL_33;
      }
    }

    v32 = MEMORY[0x1E69E7CC0];
    v43 = 30;
    goto LABEL_33;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v32 = sub_1E172D494(0, *(v32 + 2) + 1, 1, v32);
LABEL_34:
  v54 = *(v32 + 2);
  v53 = *(v32 + 3);
  if (v54 >= v53 >> 1)
  {
    v32 = sub_1E172D494(v53 > 1, v54 + 1, 1, v32);
  }

  *(v32 + 2) = v54 + 1;
  v55 = v10 + 32;
  v56 = *(v10 + 32);
  v57 = (*(v55 + 48) + 32) & ~*(v55 + 48);
  v58 = *(v55 + 40);
  v59 = v99;
  v99 = v55;
  v56(&v32[v57 + v58 * v54], v59, v102);
  if (v93)
  {
    v61 = v3[18];
    v60 = v3[19];
    v62 = __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v61);
    v109 = v61;
    v110 = *(v60 + 8);
    v63 = __swift_allocate_boxed_opaque_existential_0(&v108);
    (*(*(v61 - 8) + 16))(v63, v62, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA440);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1E1B02CC0;
    sub_1E1AF183C();
    *&v105 = v64;
    v65 = v100;
    v66 = v101;
    sub_1E1AF6EEC();
    sub_1E1AF186C();
    (v8)(v65, v66);
    __swift_destroy_boxed_opaque_existential_1(&v108);
    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    if (v68 >= v67 >> 1)
    {
      v32 = sub_1E172D494(v67 > 1, v68 + 1, 1, v32);
    }

    *(v32 + 2) = v68 + 1;
    v56(&v32[v57 + v68 * v58], v94, v102);
  }

  sub_1E15501AC((v3 + 20), &v105);
  if (!v106)
  {
    sub_1E1382094(&v105);
LABEL_47:
    v77 = v92;
    v78 = v91;
    v79 = v96;
    v80 = v95;
    goto LABEL_48;
  }

  sub_1E1308EC0(&v105, &v108);
  if ((v85 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v108);
    goto LABEL_47;
  }

  v70 = v109;
  v69 = v110;
  v71 = __swift_project_boxed_opaque_existential_1Tm(&v108, v109);
  v106 = v70;
  v107 = *(v69 + 8);
  v72 = __swift_allocate_boxed_opaque_existential_0(&v105);
  (*(*(v70 - 8) + 16))(v72, v71, v70);
  v104 = MEMORY[0x1E69E7CC0];
  v73 = v100;
  v74 = v101;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  (v8)(v73, v74);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  v76 = *(v32 + 2);
  v75 = *(v32 + 3);
  if (v76 >= v75 >> 1)
  {
    v32 = sub_1E172D494(v75 > 1, v76 + 1, 1, v32);
  }

  v77 = v92;
  v78 = v91;
  v79 = v96;
  v80 = v95;
  *(v32 + 2) = v76 + 1;
  v56(&v32[v57 + v76 * v58], v86, v102);
  __swift_destroy_boxed_opaque_existential_1(&v108);
LABEL_48:
  (*(v97 + 104))(v78, *MEMORY[0x1E69ABA28], v90);
  v109 = sub_1E1AF140C();
  v110 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v108);
  sub_1E1AF13FC();
  v81 = sub_1E1AF18DC();
  v82 = MEMORY[0x1E69ABA38];
  v77[3] = v81;
  v77[4] = v82;
  v77[5] = MEMORY[0x1E69ABA40];
  __swift_allocate_boxed_opaque_existential_0(v77);
  sub_1E1AF18CC();
  __swift_destroy_boxed_opaque_existential_1(v111);
  return (*(v80 + 8))(v103, v79);
}

uint64_t sub_1E1908228(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E1908800();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

double _s11AppStoreKit17LargeLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1E1AF162C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF165C();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB15B0 != -1)
  {
    swift_once();
  }

  v27[0] = qword_1EE215C50;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a2, v16);
  (*(v14 + 8))(v16, v13);

  (*(v7 + 104))(v9, *MEMORY[0x1E69AB970], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7DE0];
  *(v17 + 16) = xmmword_1E1B04930;
  v27[3] = v18;
  v27[4] = MEMORY[0x1E69AB858];
  *v27 = a3;
  v19 = sub_1E1AF1A1C();
  v20 = MEMORY[0x1E69ABA90];
  *(v17 + 56) = v19;
  *(v17 + 64) = v20;
  __swift_allocate_boxed_opaque_existential_0((v17 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1, v27);
  *(v17 + 96) = v19;
  *(v17 + 104) = v20;
  __swift_allocate_boxed_opaque_existential_0((v17 + 72));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 40, v27);
  *(v17 + 136) = v19;
  *(v17 + 144) = v20;
  __swift_allocate_boxed_opaque_existential_0((v17 + 112));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 120, v27);
  *(v17 + 176) = v19;
  *(v17 + 184) = v20;
  __swift_allocate_boxed_opaque_existential_0((v17 + 152));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 200, v27);
  *(v17 + 216) = v19;
  *(v17 + 224) = v20;
  __swift_allocate_boxed_opaque_existential_0((v17 + 192));
  sub_1E1AF1A2C();
  sub_1E1AF163C();
  sub_1E1AF161C();
  v22 = v21;
  (*(v25 + 8))(v12, v26);
  return v22;
}

unint64_t sub_1E1908688()
{
  result = qword_1EE1DEA20;
  if (!qword_1EE1DEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DEA20);
  }

  return result;
}

uint64_t sub_1E19086E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 441))
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

uint64_t sub_1E190872C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 440) = 0;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 441) = 1;
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

    *(result + 441) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1908800()
{
  result = qword_1ECEBB1B8[0];
  if (!qword_1ECEBB1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEBB1B8);
  }

  return result;
}

void *UnhideAppAction.__allocating_init(title:appAdamId:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a3;
  v14 = a3[1];
  *(v12 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_isHidden) = 1;
  v15 = (v12 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_appAdamId);
  *v15 = v13;
  v15[1] = v14;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_offerAction) = a4;
  v30 = 0;
  memset(v29, 0, sizeof(v29));

  sub_1E1AF3DFC();
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = (v12 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v12 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 1) = v20;
    *(v19 + 4) = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v25[1] = v21;
    v25[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670);
  }

  sub_1E1308058(v29, &unk_1ECEB5670);
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = 0;
  v12[5] = 0;
  return v12;
}

uint64_t UnhideAppAction.appAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_appAdamId);
  a1[1] = v2;
}

uint64_t UnhideAppAction.isHidden.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_isHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UnhideAppAction.isHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_isHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *UnhideAppAction.init(title:appAdamId:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = a3[1];
  *(v5 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_isHidden) = 1;
  v22 = (v5 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_appAdamId);
  *v22 = v20;
  v22[1] = v21;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_offerAction) = a4;
  v46 = 0;
  memset(v45, 0, sizeof(v45));

  sub_1E1AF3DFC();
  v23 = sub_1E1AF46DC();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = (v5 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_1E138853C(v45, &v39);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v34 = v15;
    v26 = v16;
    v27 = a1;
    v28 = a2;
    v30 = v29;
    (*(v35 + 8))(v12, v36);
    v37 = v25;
    v38 = v30;
    a2 = v28;
    a1 = v27;
    v16 = v26;
    v15 = v34;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  sub_1E1308058(v45, &unk_1ECEB5670);
  v31 = v5 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v31 + 4) = v44;
  v32 = v43;
  *v31 = v42;
  *(v31 + 1) = v32;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

void UnhideAppAction.init(deserializing:using:)()
{
  *(v0 + OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_isHidden) = 1;
  sub_1E1AF71FC();
  __break(1u);
}

uint64_t sub_1E19090FC()
{
}

uint64_t UnhideAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t UnhideAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnhideAppAction()
{
  result = qword_1EE1F97A8;
  if (!qword_1EE1F97A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E190948C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for VideoCard();
  *a1 = v1;
}

uint64_t type metadata accessor for VideoCard()
{
  result = qword_1EE1E3DE8;
  if (!qword_1EE1E3DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VideoCard.__allocating_init(id:video:lockup:overlayStyle:clickAction:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v26 = a6;
  v27 = a2;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a4;
  sub_1E134FD1C(a1, &v30, &unk_1ECEB5670);
  if (*(&v31 + 1))
  {
    v17 = v31;
    *(v15 + 56) = v30;
    *(v15 + 72) = v17;
    *(v15 + 88) = v32;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v24 = a7;
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    v28 = v18;
    v29 = v20;
    a7 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(a7, v15 + OBJC_IVAR____TtC11AppStoreKit9VideoCard_impressionMetrics);
  *(v15 + 16) = v27;
  *(v15 + 24) = a3;
  *(v15 + 32) = v16;
  v21 = v26;
  *(v15 + 40) = v25;
  *(v15 + 48) = v21;
  return v15;
}

uint64_t VideoCard.init(id:video:lockup:overlayStyle:clickAction:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a5;
  v27 = a6;
  v28 = a2;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  sub_1E134FD1C(a1, &v31, &unk_1ECEB5670);
  if (*(&v32 + 1))
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v25 = a7;
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    v29 = v18;
    v30 = v20;
    a7 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v21 = v35;
  *(v8 + 56) = v34;
  *(v8 + 72) = v21;
  *(v8 + 88) = v36;
  sub_1E134B7C8(a7, v8 + OBJC_IVAR____TtC11AppStoreKit9VideoCard_impressionMetrics);
  *(v8 + 16) = v28;
  *(v8 + 24) = a3;
  *(v8 + 32) = v17;
  v22 = v27;
  *(v8 + 40) = v26;
  *(v8 + 48) = v22;
  return v8;
}

uint64_t VideoCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VideoCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t VideoCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v73 = a2;
  v70 = sub_1E1AF39DC();
  v74 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v60 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v60 - v9;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  v72 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v69 = v14;
  v67 = v15;
  if (v24)
  {
    v76 = v23;
    v77 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v76 = v25;
    v77 = v27;
  }

  sub_1E1AF6F6C();
  v66 = *(v15 + 8);
  v66(v22, v14);
  v28 = v79;
  v29 = v75;
  *(v75 + 56) = v78;
  *(v29 + 72) = v28;
  *(v29 + 88) = v80;
  v62 = sub_1E1AF46DC();
  sub_1E1AF381C();
  v30 = v73;
  v32 = v74 + 16;
  v31 = *(v74 + 16);
  v33 = v70;
  v31(v71, v73, v70);
  v34 = v64;
  sub_1E1AF464C();
  v62 = OBJC_IVAR____TtC11AppStoreKit9VideoCard_impressionMetrics;
  v35 = v29 + OBJC_IVAR____TtC11AppStoreKit9VideoCard_impressionMetrics;
  v36 = v33;
  sub_1E134B7C8(v34, v35);
  v37 = v81;
  v31(v81, v30, v33);
  v38 = v63;
  sub_1E1AF381C();
  v39 = v65;
  v64 = v19;
  v40 = v33;
  v41 = v32;
  v31(v65, v37, v40);
  type metadata accessor for Video();
  swift_allocObject();
  v42 = v68;
  v43 = Video.init(deserializing:using:)(v38, v39);
  if (v42)
  {
    v44 = *(v74 + 8);
    v44(v73, v36);
    v66(v72, v69);
    v44(v81, v36);
    v45 = v75;
    sub_1E134B88C(v75 + 56);
    sub_1E1308058(v45 + v62, &unk_1ECEB1770);
    type metadata accessor for VideoCard();
    swift_deallocPartialClassInstance();
    return v45;
  }

  else
  {
    v47 = v75;
    *(v75 + 16) = v43;
    v48 = v47;
    type metadata accessor for Lockup();
    v49 = v64;
    v68 = 0;
    v50 = v72;
    sub_1E1AF381C();
    v61 = v31;
    v60 = v41;
    v31(v71, v81, v36);
    sub_1E190A598(&qword_1EE1E4F60, type metadata accessor for Lockup);
    sub_1E1AF464C();
    *(v48 + 24) = v78;
    v51 = v50;
    sub_1E1AF381C();
    sub_1E14056C8();
    sub_1E1AF369C();
    v52 = v66;
    v53 = v67 + 8;
    v54 = v69;
    v66(v49, v69);
    v67 = v53;
    *(v48 + 32) = v78;
    type metadata accessor for Action();
    v55 = v51;
    sub_1E1AF381C();
    v56 = v81;
    v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v81);
    v52(v49, v54);
    *(v48 + 40) = v57;
    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_1E1AF381C();
    v58 = v70;
    v61(v71, v56, v70);
    sub_1E190A598(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration);
    sub_1E1AF464C();
    v59 = *(v74 + 8);
    v59(v73, v58);
    v52(v55, v69);
    v59(v56, v58);
    result = v75;
    *(v75 + 48) = v78;
  }

  return result;
}

uint64_t sub_1E190A174@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = (v2 + 16);
    v4 = (v2 + 24);
  }

  else
  {
    v3 = &qword_1ECEBD6F0;
    v4 = &qword_1ECEBD6F8;
    if (qword_1ECEB1720 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }
  }

  v5 = *v4;
  *a1 = *v3;
  a1[1] = v5;
}

uint64_t sub_1E190A20C()
{
  if (!*(v0 + 24))
  {
    return MEMORY[0x1E69E7CD0];
  }

  swift_beginAccess();
}

uint64_t VideoCard.deinit()
{

  sub_1E134B88C(v0 + 56);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9VideoCard_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t VideoCard.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 56);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9VideoCard_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E190A36C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for VideoCard();
  v7 = swift_allocObject();
  result = VideoCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E190A3D8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for VideoCard();
  *a1 = v3;
}

uint64_t sub_1E190A420@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 24);
  if (v2)
  {
    v3 = (v2 + 16);
    v4 = (v2 + 24);
  }

  else
  {
    v3 = &qword_1ECEBD6F0;
    v4 = &qword_1ECEBD6F8;
    if (qword_1ECEB1720 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }
  }

  v5 = *v4;
  *a1 = *v3;
  a1[1] = v5;
}

uint64_t sub_1E190A4BC()
{
  if (!*(*v0 + 24))
  {
    return MEMORY[0x1E69E7CD0];
  }

  swift_beginAccess();
}

uint64_t sub_1E190A598(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E190A5E8()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E190A7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v16 = sub_1E1AF588C();
  sub_1E190C464();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_1E1AF470C();
  v8 = MEMORY[0x1E69AB218];
  v18 = v7;
  v19 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v17);

  sub_1E1AF46FC();
  sub_1E190AE1C();
  sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a1;
  v9[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_0(v17);

  sub_1E1AF46FC();
  sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_0(v17);

  sub_1E1AF46FC();
  sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  v18 = v7;
  v19 = v8;
  __swift_allocate_boxed_opaque_existential_0(v17);

  sub_1E1AF46FC();
  sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v16;
  v13 = sub_1E1361A80();
  swift_retain_n();

  v14 = sub_1E1AF68EC();
  v18 = v13;
  v19 = MEMORY[0x1E69AB720];
  v17[0] = v14;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

void sub_1E190AB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_completionAction);
  if (v2)
  {
    v6 = type metadata accessor for Action();
    v7 = sub_1E190AEC0(qword_1EE1D2F80, type metadata accessor for Action);
    v5[0] = v2;
    type metadata accessor for OfferAlertActionImplementation();
    swift_retain_n();
    swift_getWitnessTable();
    sub_1E1834054(v5);
    __swift_destroy_boxed_opaque_existential_1(v5);
    v3 = sub_1E1361A80();
    swift_retain_n();
    v4 = sub_1E1AF68EC();
    v6 = v3;
    v7 = MEMORY[0x1E69AB720];
    v5[0] = v4;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

uint64_t sub_1E190ACB0()
{
  v0 = sub_1E1AF3E2C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69AB010], v0, v2);
  sub_1E1AF586C();
  return (*(v1 + 8))(v4, v0);
}

void sub_1E190ADAC(uint64_t a1, char a2)
{
  sub_1E190C668();
  v3 = swift_allocError();
  *v4 = a2;
  sub_1E1AF584C();
}

unint64_t sub_1E190AE1C()
{
  result = qword_1ECEBB240;
  if (!qword_1ECEBB240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB240);
  }

  return result;
}

uint64_t sub_1E190AEC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E190AF14(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA190);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA198);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v73 - v10;
  v12 = sub_1E1AF3D4C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4158);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v90 = (v73 - v15);
  v16 = sub_1E1AF553C();
  v82 = *(v16 - 8);
  v83 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v86 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF3E1C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v85 = sub_1E1AF551C();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v89 = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v73 - v24;
  v26 = sub_1E1AF3E2C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v30 = sub_1E1AF588C();
  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_remoteControllerRequirement) != 2 || [objc_opt_self() userHasPairedGameController])
  {
    (*(v27 + 104))(v29, *MEMORY[0x1E69AB010], v26);
    sub_1E1AF586C();
    (*(v27 + 8))(v29, v26);
    return v30;
  }

  v32._object = 0x80000001E1B7E550;
  v32._countAndFlagsBits = 0xD00000000000001FLL;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = localizedString(_:comment:)(v32, v33);
  v73[4] = v34._countAndFlagsBits;
  v73[3] = v34._object;
  v35._countAndFlagsBits = 0xD000000000000025;
  v35._object = 0x80000001E1B7E570;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37 = localizedString(_:comment:)(v35, v36);
  v73[2] = v37._countAndFlagsBits;
  v73[1] = v37._object;
  v38._countAndFlagsBits = 0xD000000000000020;
  v38._object = 0x80000001E1B7E5A0;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  countAndFlagsBits = localizedString(_:comment:)(v38, v39)._countAndFlagsBits;
  v74 = v11;

  v40._countAndFlagsBits = 0xD000000000000022;
  v40._object = 0x80000001E1B7E5D0;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  localizedString(_:comment:)(v40, v41);

  sub_1E1AF3DFC();
  v42 = sub_1E1AF3E4C();
  v43 = MEMORY[0x1E69AB020];
  v92 = v42;
  v93 = MEMORY[0x1E69AB020];
  __swift_allocate_boxed_opaque_existential_0(v91);

  sub_1E1AF3E3C();
  v76 = v25;
  sub_1E1AF550C();
  sub_1E1AF3DFC();
  v92 = v42;
  v93 = v43;
  __swift_allocate_boxed_opaque_existential_0(v91);

  v44 = v74;
  sub_1E1AF3E3C();
  v45 = v89;
  sub_1E1AF550C();
  sub_1E1AF3DFC();
  v46 = sub_1E1AF552C();
  (*(*(v46 - 8) + 56))(v90, 1, 1, v46);
  sub_1E1AEFCAC();
  v47 = sub_1E1AEFCCC();
  result = (*(*(v47 - 8) + 48))(v44, 1, v47);
  countAndFlagsBits = v20;
  if (result != 1)
  {

    sub_1E1AF3D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB7398);
    v48 = v81;
    v49 = *(v81 + 72);
    v50 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E1B02CD0;
    v52 = v51 + v50;
    v53 = *(v48 + 16);
    v54 = v45;
    v55 = v45;
    v56 = v85;
    v53(v52, v54, v85);
    v57 = v52 + v49;
    v58 = v56;
    v53(v57, v76, v56);
    v59 = v86;
    sub_1E1AF54EC();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4448);
    v61 = v84;
    sub_1E1AF413C();
    v62 = v88;
    sub_1E190C590(v61, v88);
    v90 = *(v60 - 8);
    v63 = v90[6](v62, 1, v60);
    v64 = v83;
    if (v63 == 1)
    {
      sub_1E190C600(v61);
      (*(v82 + 8))(v59, v64);
      v65 = *(v48 + 8);
      v65(v55, v58);
      v65(v76, v58);
      sub_1E190C600(v62);
    }

    else
    {
      v92 = v83;
      v93 = MEMORY[0x1E69AB558];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v91);
      v67 = v82;
      (*(v82 + 16))(boxed_opaque_existential_0, v59, v64);
      v69 = v77;
      v68 = v78;
      v70 = v79;
      (*(v78 + 104))(v77, *MEMORY[0x1E69AB128], v79);
      sub_1E1AF43FC();

      (*(v68 + 8))(v69, v70);
      sub_1E190C600(v61);
      (*(v67 + 8))(v86, v64);
      v71 = *(v48 + 8);
      v72 = v85;
      v71(v89, v85);
      v71(v76, v72);
      __swift_destroy_boxed_opaque_existential_1(v91);
      (v90[1])(v88, v60);
    }

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E190B928(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_1E1AF3E2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA190);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA198);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4158);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = v75 - v14;
  v15 = sub_1E1AF553C();
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v89 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF3E1C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v88 = sub_1E1AF551C();
  v84 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v93 = v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v75 - v23;
  v25 = sub_1E1AF3D4C();
  v91 = *(v25 - 8);
  v92 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v90 = v75 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v94 = sub_1E1AF588C();
  v30 = objc_opt_self();
  v31 = sub_1E1AF5DBC();
  v32 = [v30 userHasPairedGameControllerSupportingInteractionProfile_];

  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_spatialControllerRequirement) > 1u)
  {
    if (*(a1 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_spatialControllerRequirement) != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_spatialControllerRequirement))
  {
LABEL_6:
    v33 = sub_1E1AF74AC();

    if (!(v32 & 1 | ((v33 & 1) == 0)))
    {
      goto LABEL_8;
    }

LABEL_7:
    (*(v4 + 104))(v6, *MEMORY[0x1E69AB010], v3);
    v34 = v94;
    sub_1E1AF586C();
    (*(v4 + 8))(v6, v3);
    return v34;
  }

  swift_bridgeObjectRelease_n();
  if (v32)
  {
    goto LABEL_7;
  }

LABEL_8:
  v77 = v19;
  v35._countAndFlagsBits = 0xD000000000000029;
  v35._object = 0x80000001E1B7E460;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v76 = localizedString(_:comment:)(v35, v36);
  v37._countAndFlagsBits = 0xD00000000000002BLL;
  v37._object = 0x80000001E1B7E490;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = localizedString(_:comment:)(v37, v38);
  v75[3] = v39._countAndFlagsBits;
  v75[2] = v39._object;
  v40._object = 0x80000001E1B7E4C0;
  v40._countAndFlagsBits = 0xD00000000000002DLL;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v75[1] = localizedString(_:comment:)(v40, v41)._countAndFlagsBits;
  v42._countAndFlagsBits = 0xD00000000000002FLL;
  v42._object = 0x80000001E1B7E4F0;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  localizedString(_:comment:)(v42, v43);
  sub_1E1AEFCAC();
  v44 = sub_1E1AEFCCC();
  result = (*(*(v44 - 8) + 48))(v24, 1, v44);
  if (result != 1)
  {
    v46 = v90;
    sub_1E1AF3D2C();
    sub_1E1AF3DFC();
    v47 = sub_1E1AF3E4C();
    v48 = MEMORY[0x1E69AB020];
    v96 = v47;
    v97 = MEMORY[0x1E69AB020];
    __swift_allocate_boxed_opaque_existential_0(v95);

    sub_1E1AF3E3C();
    sub_1E1AF550C();
    sub_1E1AF3DFC();
    v96 = v47;
    v97 = v48;
    __swift_allocate_boxed_opaque_existential_0(v95);

    sub_1E1AF3E3C();
    v49 = v77;
    sub_1E1AF550C();
    sub_1E1AF3DFC();
    v50 = sub_1E1AF552C();
    (*(*(v50 - 8) + 56))(v83, 1, 1, v50);
    (*(v91 + 16))(v27, v46, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB7398);
    v51 = v84;
    v52 = *(v84 + 72);
    v53 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1E1B02CD0;
    v55 = v54 + v53;
    v56 = *(v51 + 16);
    v57 = v49;
    v58 = v88;
    v56(v55, v57, v88);
    v56(v55 + v52, v93, v58);
    v59 = v89;
    sub_1E1AF54EC();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4448);
    v61 = v85;
    sub_1E1AF413C();
    v62 = v87;
    sub_1E190C590(v61, v87);
    v63 = *(v60 - 8);
    if ((*(v63 + 6))(v62, 1, v60) == 1)
    {
      sub_1E190C600(v61);
      (*(v81 + 8))(v59, v82);
      v64 = *(v51 + 8);
      v64(v77, v58);
      v64(v93, v58);
      (*(v91 + 8))(v90, v92);
      sub_1E190C600(v62);
    }

    else
    {
      v65 = v82;
      v96 = v82;
      v97 = MEMORY[0x1E69AB558];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v95);
      v67 = v81;
      (*(v81 + 16))(boxed_opaque_existential_0, v59, v65);
      v68 = *MEMORY[0x1E69AB128];
      v83 = v63;
      v69 = v62;
      v71 = v79;
      v70 = v80;
      v72 = v78;
      (*(v79 + 104))(v78, v68, v80);
      sub_1E1AF43FC();

      (*(v71 + 8))(v72, v70);
      sub_1E190C600(v61);
      (*(v67 + 8))(v89, v65);
      v73 = *(v51 + 8);
      v74 = v88;
      v73(v77, v88);
      v73(v93, v74);
      (*(v91 + 8))(v90, v92);
      __swift_destroy_boxed_opaque_existential_1(v95);
      (*(v83 + 1))(v69, v60);
    }

    return v94;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E190C464()
{
  v0 = sub_1E1AF3E2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v4 = sub_1E1AF588C();
  (*(v1 + 104))(v3, *MEMORY[0x1E69AB010], v0);
  sub_1E1AF586C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1E190C590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E190C600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E190C668()
{
  result = qword_1ECEBB248;
  if (!qword_1ECEBB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB248);
  }

  return result;
}

unint64_t sub_1E190C70C()
{
  result = qword_1ECEBB250;
  if (!qword_1ECEBB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB250);
  }

  return result;
}

void sub_1E190C7A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

UIImage __swiftcall UIImage.fitting(_:mode:)(CGSize _, UIViewContentMode mode)
{
  height = _.height;
  width = _.width;
  [v2 size];
  v6 = CGSize.fitting(_:mode:)(__PAIR128__(*&height, *&width), mode);
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E190C9C0;
  *(v9 + 24) = v8;
  v14[4] = sub_1E190C9DC;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1E190C7A4;
  v14[3] = &block_descriptor_85;
  v10 = _Block_copy(v14);
  v11 = v2;

  v12 = [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E190CA04(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1E1300B24(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1E1300B24(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1E14E6940(v1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v1[i]);
    result = sub_1E1361B28(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1(v1 + v6);
    result = sub_1E1361B28(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E190CB20(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = v1[2];
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_14;
    }

    v7 = v1[i];
    v8 = v1[v4];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1E14E6A1C(v1);
    }

    v1[i] = v8;

    if (v4 - 4 >= v1[2])
    {
      goto LABEL_15;
    }

    v1[v4] = v7;

LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

char *sub_1E190CC14(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1E1AF5AAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v11 = MEMORY[0x1E68FD610]();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 2) = v12;
    *(v13 + 3) = a2;
    *(v13 + 4) = a3;
    v14 = a1;

    v15 = a2;
    sub_1E1AF5A8C();
    if (v3)
    {
    }

    else
    {
      v13 = sub_1E1AF5A9C();

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v13 = "ctive JS worker thread";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_1E190CE08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19[1] = a4;
  v10 = sub_1E1AF364C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  (*(v11 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10, v13);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a5;
  *(v15 + 3) = a6;
  *(v15 + 4) = a1;
  (*(v11 + 32))(&v15[v14], v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = a5;
  v17 = a1;
  sub_1E1AF48FC();
}

uint64_t sub_1E190CF78(uint64_t a1, int64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_defaults);
  v6 = sub_1E1AF5DBC();
  v7 = [v5 arrayForKey_];

  if (a2 < 1)
  {
    if (v7 && (v12 = sub_1E1AF621C(), v7, v13 = sub_1E1679658(v12), , v13))
    {
      v11 = v13;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if (v7 && (v8 = sub_1E1AF621C(), v7, v9 = sub_1E1679658(v8), , v9))
    {
      v10 = v9;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v11 = sub_1E190E7F8(a2, v10);
  }

  sub_1E190CB20(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB280);
  v14 = sub_1E1AF755C();
  v15 = [objc_opt_self() valueWithObject:v14 inContext:a3];
  swift_unknownObjectRelease();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27F8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E1B02CC0;
  *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  *(v16 + 64) = sub_1E14EC9A0();
  *(v16 + 32) = v15;
  v17 = v15;
  v18 = sub_1E1AF362C();

  return sub_1E190ED04(v20);
}

char *sub_1E190D378(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v30 = a1;
  v6 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  sub_1E1AF490C();
  if (!MEMORY[0x1E68FD610]())
  {
    v16 = " JS worker thread";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    return v16;
  }

  v16 = a2;
  sub_1E1AF6C0C();
  if (v4)
  {

    return v16;
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_1E1AF39CC();
  SearchHistoryItem.init(deserializing:using:)(v12, v8, v28);
  v18 = v28[0];
  v19 = v28[1];
  v20 = v29;
  v21 = swift_allocObject();
  v23 = v26;
  v22 = v27;
  *(v21 + 16) = v27;
  *(v21 + 24) = v18;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  *(v21 + 48) = v23;
  v24 = v22;

  sub_1E1AF48FC();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v16 = result;
    (*(v10 + 8))(v15, v9);

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E190D678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 < 1)
  {
    v13 = *(v2 + OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_defaults);
    v14 = sub_1E1AF5DBC();
    [v13 removeObjectForKey_];

    return sub_1E1AF5BCC();
  }

  v5 = *(a1 + 16);
  v7 = *a1;
  v6 = *(a1 + 8);

  v8 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v7, v6, 1836213620, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v8;
  if (v5 <= 1)
  {
    v16 = v5 == 0;
    if (v5)
    {
      v12 = 0x79726F7473;
    }

    else
    {
      v12 = 0x65706F6C65766564;
    }

    if (v16)
    {
      v11 = 0xE900000000000072;
    }

    else
    {
      v11 = 0xE500000000000000;
    }
  }

  else if (v5 == 2)
  {
    v11 = 0xE600000000000000;
    v12 = 0x656461637261;
  }

  else
  {
    if (v5 != 3)
    {
      goto LABEL_15;
    }

    v11 = 0xE500000000000000;
    v12 = 0x6863746177;
  }

  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v12, v11, 0x797469746E65, 0xE600000000000000, v17);
LABEL_15:
  v18 = *(v3 + OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_defaults);
  if (a2 >= 0x1E)
  {
    v19 = 30;
  }

  else
  {
    v19 = a2;
  }

  v20 = sub_1E1AF5DBC();
  v21 = [v18 arrayForKey_];

  if (v21 && (v22 = sub_1E1AF621C(), v21, v23 = sub_1E1679658(v22), , v23))
  {
    v24 = v23;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v44 = v18;
  v45 = v19;
  v25 = sub_1E190E7F8(v19, v24);
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = v25 + 32;
    v29 = v27 - 1;
    v30 = MEMORY[0x1E69E7CC0];
    v31 = 0;
    while (v31 < *(v26 + 16))
    {
      v32 = *(v28 + 8 * v31);
      v33 = v31 + 1;

      if (sub_1E14F93C4(v10, v32))
      {

        ++v31;
        if (v27 == v33)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v43 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E135CBC0(0, v30[2] + 1, 1);
        }

        v35 = v30[2];
        v34 = v30[3];
        if (v35 >= v34 >> 1)
        {
          sub_1E135CBC0((v34 > 1), v35 + 1, 1);
        }

        v30[2] = v35 + 1;
        v30[v35 + 4] = v32;
        v29 = v43;
        if (v43 == v31)
        {
          goto LABEL_35;
        }

        ++v31;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_35:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_36;
    }
  }

  v30 = sub_1E172E470(0, v30[2] + 1, 1, v30);
LABEL_36:
  v37 = v30[2];
  v36 = v30[3];
  if (v37 >= v36 >> 1)
  {
    v30 = sub_1E172E470((v36 > 1), v37 + 1, 1, v30);
  }

  v30[2] = v37 + 1;
  v30[v37 + 4] = v10;
  sub_1E190E7F8(v45, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
  v38 = sub_1E1AF620C();

  v39 = sub_1E1AF5DBC();
  [v44 setObject:v38 forKey:v39];

  v40 = sub_1E1AF5DBC();
  v41 = [v44 arrayForKey_];

  if (v41)
  {
    v42 = sub_1E1AF621C();

    sub_1E1679658(v42);
  }

  sub_1E1AF5BCC();
}