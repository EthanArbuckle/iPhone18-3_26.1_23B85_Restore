uint64_t sub_1A35B6380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A35B63C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewStyleConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35B642C(uint64_t a1)
{
  v2 = type metadata accessor for TipViewStyleConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35B6488(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v11 - 2) = v9;
    *(&v11 - 1) = a1;
    sub_1A3622A4C();
    sub_1A362193C();

    sub_1A35ABFF4(a1, &v11, &qword_1EB0EECA0);
    if (v12)
    {

      sub_1A35A63BC(&v11, v14);
      sub_1A35A63BC(v14, &v11);
      sub_1A35A6350(&v11, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECA8);
      sub_1A3622ECC();

      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(&v11);
    }

    else
    {

      sub_1A35A6588(&v11, &qword_1EB0EECA0);
    }

    sub_1A35ABFF4(a1, &v11, &qword_1EB0EECA0);
    if (v12)
    {
      v10 = v13;
      __swift_destroy_boxed_opaque_existential_1(&v11);
    }

    else
    {
      sub_1A35A6588(&v11, &qword_1EB0EECA0);
      v10 = 0;
    }

    *(v2 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_currentTip) = v10;
  }

  return result;
}

uint64_t sub_1A35B6720(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35ABFF4(a2, &v4, &qword_1EB0EECA0);
  if (v5)
  {

    sub_1A35A63BC(&v4, v6);
  }

  else
  {
    sub_1A35A6588(&v4, &qword_1EB0EECA0);
    memset(v6, 0, sizeof(v6));
    v7 = 0;
  }

  sub_1A35B6834(v6);
}

uint64_t sub_1A35B6834(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A35B70B4();

  return sub_1A35A6588(a1, &qword_1EB0EEAF8);
}

uint64_t sub_1A35B68B8(uint64_t a1, uint64_t a2)
{
  sub_1A35A63D4(a1, a2, v29);
  v4 = v30;
  v5 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v6 = (*(v5 + 24))(v4, v5);
  v8 = v7;
  LOBYTE(v5) = v9;
  sub_1A3622BCC();
  v10 = sub_1A36223BC();

  sub_1A35B72C8(v6, v8, v5 & 1);

  __swift_destroy_boxed_opaque_existential_1(v29);
  if (v10)
  {
    sub_1A35A63D4(a1, a2, v29);
    v11 = v30;
    v12 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v13 = (*(v12 + 32))(v11, v12);
    if (v16)
    {
      sub_1A35B8988(v13, v14, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1A35A63D4(a1, a2, v29);
      v17 = v30;
      v18 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v19 = (*(v18 + 32))(v17, v18);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      sub_1A3622BCC();
      if (v25)
      {
        v26 = sub_1A36223BC();

        sub_1A35B8988(v19, v21, v23, v25);
        v27 = v26 ^ 1;
      }

      else
      {

        v27 = 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
      v27 = 0;
    }
  }

  else
  {
    v27 = 1;
  }

  return v27 & 1;
}

uint64_t sub_1A35B6AEC(uint64_t a1, uint64_t a2)
{
  if (sub_1A35B68B8(a1, a2))
  {
    return 1;
  }

  return sub_1A35E5E5C(a1, a2);
}

void sub_1A35B6B4C(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_priority))
  {
    v3 = *(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_tips);
    v31 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_statusMap;
    v32 = *(v3 + 16);
    swift_beginAccess();
    v4 = 0;
    v30 = v3;
    for (i = (v3 + 32); ; i += 48)
    {
      if (v32 == v4)
      {
        v18 = a1;
LABEL_28:
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0u;
        *v18 = 0u;
        return;
      }

      if (v4 >= *(v30 + 16))
      {
        break;
      }

      sub_1A35ABFF4(i, &v34, &qword_1EB0EEC50);
      sub_1A3622E3C();
      sub_1A3622E2C();
      sub_1A3622DFC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_1A35ABFF4(&v34, v33, &qword_1EB0EEC50);
      v6 = sub_1A362134C();
      v8 = v7;

      v9 = *(v2 + v31);
      if (*(v9 + 16) && (_s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0(), v10 = sub_1A35A4F38(v6, v8), v12 = v11, , (v12 & 1) != 0))
      {
        v13 = *(*(v9 + 56) + v10);

        __swift_destroy_boxed_opaque_existential_1(v33);

        if ((v13 - 7) < 2)
        {
          v37 = v34;
          v38 = v35;
          v39 = v36;
          sub_1A35ABFF4(&v37, &v34, &qword_1EB0EEC50);
          v21 = sub_1A362134C();
          v23 = v22;

          v24 = *(v2 + v31);
          if (*(v24 + 16) && (_s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0(), v25 = sub_1A35A4F38(v21, v23), v27 = v26, , (v27 & 1) != 0))
          {
            v28 = *(*(v24 + 56) + v25);

            v18 = a1;
            if (v28 == 8)
            {
              __swift_destroy_boxed_opaque_existential_1(&v34);
              v35 = v38;
              v36 = v39;
              v34 = v37;
              v19 = *(&v39 + 1);
              v20 = &v34;
              goto LABEL_21;
            }
          }

          else
          {

            v18 = a1;
          }

          __swift_destroy_boxed_opaque_existential_1(&v34);
          sub_1A35A6588(&v37, &qword_1EB0EEC50);
          goto LABEL_28;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      sub_1A35A6588(&v34, &qword_1EB0EEC50);
      ++v4;
    }

    __break(1u);
LABEL_31:
    __break(1u);

    sub_1A35A6588(&v34, &qword_1EB0EEC50);
    __break(1u);
  }

  else
  {
    v14 = 0;
    i = 0;
    v15 = *(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_tips);
    v16 = *(v15 + 16);
    for (j = v15 + 32; ; j += 48)
    {
      if (v16 == v14)
      {
        a1[1] = 0u;
        a1[2] = 0u;
        *a1 = 0u;
        return;
      }

      if (v14 >= *(v15 + 16))
      {
        goto LABEL_31;
      }

      sub_1A35ABFF4(j, &v34, &qword_1EB0EEC50);
      if (sub_1A35B6F4C(&v34, v2))
      {
        break;
      }

      sub_1A35A6588(&v34, &qword_1EB0EEC50);
      ++v14;
    }

    v38 = v35;
    v39 = v36;
    v37 = v34;
    v19 = *(&v36 + 1);
    v20 = &v37;
    v18 = a1;
LABEL_21:
    sub_1A35A63BC(v20, v18);
    *(v18 + 40) = v19;
  }
}

BOOL sub_1A35B6F4C(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35ABFF4(a1, v15, &qword_1EB0EEC50);
  v4 = sub_1A362134C();
  v6 = v5;

  v7 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_statusMap;
  swift_beginAccess();
  v8 = *(a2 + v7);
  if (*(v8 + 16) && (_s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0(), v9 = sub_1A35A4F38(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + v9);

    v13 = v12 == 8;
  }

  else
  {

    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);

  return v13;
}

uint64_t sub_1A35B716C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEAF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35B71F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1A35B716C(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t AnyTip.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t sub_1A35B72C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1A35B72D8()
{
  result = qword_1ED81E6A8;
  if (!qword_1ED81E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6A8);
  }

  return result;
}

uint64_t sub_1A35B7340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewStyleConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35B73A4()
{
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  do
  {
    while (1)
    {
      v0 = sub_1A3622C1C();
      if (!v1)
      {

        sub_1A3622C1C();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1A3622C1C();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_1A362345C();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_1A35B74E8()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1A35D3014;

    return sub_1A35B7CD0();
  }

  else
  {
    OUTLINED_FUNCTION_5_1();

    return v4();
  }
}

uint64_t sub_1A35B75D4()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_13();
  sub_1A35ABFAC(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1A35E6C7C;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1A35B76BC()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_2(v5);
  *v6 = v7;
  v6[1] = sub_1A35A3334;

  return sub_1A35B7CF0(v4, v2, v0);
}

void sub_1A35B7760(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v25 = v1;
  v9 = *(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_tips);
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = *a1;
    v11 = v9 + 32;
    v24 = v5;
    do
    {
      v26 = v10;
      sub_1A35ABFF4(v11, v34, &qword_1EB0EEC50);
      v12 = v35;
      sub_1A35A63BC(v34, v32);
      v33 = v12;
      v13 = sub_1A3622E6C();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_1A35ABFF4(v32, v31, &qword_1EB0EEC50);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = v14;
      v16 = v31[1];
      *(v15 + 40) = v31[0];
      *(v15 + 56) = v16;
      *(v15 + 72) = v31[2];
      sub_1A35ABFF4(v8, v5, &qword_1EB0EE620);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v13);

      if (EnumTagSinglePayload == 1)
      {
        sub_1A35A6588(v5, &qword_1EB0EE620);
      }

      else
      {
        sub_1A3622E5C();
        (*(*(v13 - 8) + 8))(v5, v13);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1A3622DFC();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1A3627AB0;
      *(v21 + 24) = v15;

      if (v20 | v18)
      {
        v30[1] = 0;
        v30[2] = v18;
        v30[0] = 0;
        v22 = v30;
        v30[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v27 = 1;
      v28 = v22;
      v29 = v23;
      swift_task_create();

      sub_1A35A6588(v8, &qword_1EB0EE620);
      sub_1A35A6588(v32, &qword_1EB0EEC50);

      v11 += 48;
      v10 = v26 - 1;
      v5 = v24;
    }

    while (v26 != 1);
  }
}

uint64_t sub_1A35B7B3C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1A35B7B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1A35B7BC4()
{
  result = qword_1ED81D658;
  if (!qword_1ED81D658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D658);
  }

  return result;
}

uint64_t sub_1A35B7C28()
{
  OUTLINED_FUNCTION_10_1();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_2(v2);
  *v3 = v4;
  v3[1] = sub_1A35D3FEC;
  OUTLINED_FUNCTION_7_4();

  return sub_1A35B75B4(v5, v6, v7, v1);
}

uint64_t sub_1A35B7CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1A35B7D10, a3, 0);
}

uint64_t sub_1A35B7D10()
{
  OUTLINED_FUNCTION_2_4();
  sub_1A35B7760(*(v0 + 16));
  OUTLINED_FUNCTION_5_1();

  return v1();
}

uint64_t sub_1A35B7D68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A36213AC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC18);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECC0);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A35B7EFC, v2, 0);
}

uint64_t sub_1A35B7EFC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  Tip.statusUpdates.getter(v5, v6);
  sub_1A3622EEC();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_13();
  v9 = sub_1A35ABFAC(v7, v8);
  v0[14] = v9;
  v10 = v0[4];
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_0_20(v11);
  v12 = v0[11];

  return MEMORY[0x1EEE6D9C8](v0 + 17, v10, v9, v12);
}

uint64_t sub_1A35B8028(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_20_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 184) = a2;
  *(v2 - 176) = a1;
  return v2 - 168;
}

uint64_t OUTLINED_FUNCTION_20_3()
{
}

void sub_1A35B80D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_observationTask;
  if (!*(v0 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_observationTask))
  {
    v5 = sub_1A3622E6C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    *(v0 + v4) = sub_1A35D34A0(0, 0, v3, &unk_1A3627AD8, v7);

    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECA8);
    sub_1A3622EBC();
  }
}

uint64_t sub_1A35B8258()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A35B8290()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t TipGroup.currentTipUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_stream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC90);
  OUTLINED_FUNCTION_0_0();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1A35B8350(uint64_t a1)
{
  v2 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  sub_1A35BBD90(a1, v4 - v3);
  return sub_1A35BAD74(v5);
}

void sub_1A35B83D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = sub_1A3621CEC();
  OUTLINED_FUNCTION_3();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_10_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  sub_1A35B567C(v24, &a9 - v32, &qword_1EB0EE3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3608138(v33, v26, type metadata accessor for TipViewEnvironment);
  }

  else
  {
    sub_1A362303C();
    v34 = sub_1A36221DC();
    OUTLINED_FUNCTION_9_7();

    sub_1A3621CDC();
    swift_getAtKeyPath();

    (*(v29 + 8))(v21, v27);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35B8988(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A35B72C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t Tips.Action.with(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 32);
  v14 = *(v2 + 40);
  v8 = *(v2 + 56);
  if (v6 == sub_1A3622BCC() && v5 == v9)
  {

LABEL_9:
    v12 = sub_1A362342C();
    MEMORY[0x1A58F3290](v12);

    v6 = 0x2E7865646E6940;
    v5 = 0xE700000000000000;
    goto LABEL_10;
  }

  v11 = sub_1A362345C();

  if (v11 & 1) != 0 || (sub_1A35B73A4())
  {
    goto LABEL_9;
  }

  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
LABEL_10:
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  *(a2 + 56) = v8;
  *(a2 + 32) = v7;
  *(a2 + 40) = v14;
}

uint64_t TipViewStyleConfiguration.actions.getter()
{
  sub_1A362141C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_0();
  v4 = v3 - v2;
  if (*(v0 + 64) && sub_1A362131C())
  {

    v5 = sub_1A362131C();
    if (!v5)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = OUTLINED_FUNCTION_24_1(v5);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_22_1();
    v7 = OUTLINED_FUNCTION_11_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    sub_1A35BB7E4(&qword_1EB0EF158, &qword_1EB0EF150);
  }

  else
  {
    sub_1A362142C();
    sub_1A36213FC();
    v8 = OUTLINED_FUNCTION_28_1();
    v9(v8);
    if (v4)
    {
      OUTLINED_FUNCTION_0_28();
      v10 = OUTLINED_FUNCTION_2_19();
      v12 = *(v11(v10) + 16);

      if (v12)
      {
        MEMORY[0x1EEE9AC00](v13);
        OUTLINED_FUNCTION_3_19();
        MEMORY[0x1EEE9AC00](v14);
        OUTLINED_FUNCTION_16();
        *(v15 - 16) = sub_1A35F6F28;
        *(v15 - 8) = v16;
        v17 = sub_1A362159C();
        sub_1A36215AC();
        v17(v25, 0);
      }
    }

    OUTLINED_FUNCTION_0_28();
    v18 = OUTLINED_FUNCTION_2_19();
    v20 = v19(v18);
    v21 = OUTLINED_FUNCTION_24_1(v20);
    MEMORY[0x1EEE9AC00](v21);
    OUTLINED_FUNCTION_22_1();
    v22 = OUTLINED_FUNCTION_11_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22);
    sub_1A35BB7E4(&qword_1ED81DD28, &qword_1EB0EF148);
  }

  v23 = sub_1A3622C5C();

  return v23;
}

uint64_t sub_1A35B8DD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A35B8E24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A35B8E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 184) = swift_getKeyPath();
  *(a3 + 192) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE58);
  sub_1A362288C();
  v6 = v16;
  v7 = v17;
  v8 = v15[1];
  *(a3 + 200) = v15[0];
  *(a3 + 216) = v8;
  *(a3 + 232) = v6;
  *(a3 + 240) = v7;
  sub_1A35ECF18(a2 + 24, a3, &qword_1EB0EEDB0);
  v9 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v9;
  *(a3 + 57) = *(a2 + 64);
  v10 = type metadata accessor for TipViewEnvironment();
  sub_1A35ECF18(a2 + *(v10 + 32), v15, &qword_1EB0EED38);
  v11 = v17;
  sub_1A35A63BC(v15, a3 + 64);
  *(a3 + 104) = v11;
  v12 = a2 + *(v10 + 36);
  v13 = *v12;
  LOBYTE(v10) = *(v12 + 8);
  sub_1A35F04C4(a2, type metadata accessor for TipViewEnvironment);
  *(a3 + 112) = v13;
  *(a3 + 120) = v10;
  sub_1A35B2260(a1 + 72, a3 + 128);
  return sub_1A35F04C4(a1, type metadata accessor for TipViewStyleConfiguration);
}

uint64_t sub_1A35B8FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v40 = a3;
  v41 = sub_1A362206C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3621F3C();
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v35 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3621ABC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6A0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6A8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6B0);
  v20 = *(v19 - 8);
  v33 = v19;
  v34 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v32[0] = v32 - v21;
  v32[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6B8);
  sub_1A36092C4();
  sub_1A36228FC();
  sub_1A3621AAC();
  sub_1A35A9B78(&qword_1ED81E0B8, &qword_1EB0EF6A0);
  sub_1A35BB23C(&qword_1ED81E6B8, MEMORY[0x1E697C248]);
  sub_1A362245C();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6E0);
  sub_1A3621B2C();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A3627130;
  sub_1A3621B1C();
  v43 = v22;
  v23 = &v18[*(v16 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6E8);
  sub_1A35BB23C(&qword_1ED81E140, MEMORY[0x1E697ECE8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6F0);
  sub_1A35A9B78(&qword_1ED81E090, &qword_1EB0EF6F0);
  sub_1A362311C();
  *v23 = 0;
  v24 = v35;
  sub_1A3621B3C();
  v25 = sub_1A3609434();
  v26 = sub_1A35BB23C(&qword_1ED81E110, MEMORY[0x1E697C658]);
  v27 = v32[0];
  v28 = v36;
  sub_1A362247C();
  (*(v37 + 8))(v24, v28);
  sub_1A3602FAC(v18, &qword_1EB0EF6A8);
  v29 = v38;
  sub_1A362205C();
  v43 = v16;
  v44 = v28;
  v45 = v25;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v33;
  sub_1A362254C();
  (*(v39 + 8))(v29, v41);
  return (*(v34 + 8))(v27, v30);
}

unint64_t sub_1A35B96AC()
{
  result = qword_1ED81E2F8;
  if (!qword_1ED81E2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF6C8);
    sub_1A35A9B78(&qword_1ED81E6A0, &unk_1EB0EF328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2F8);
  }

  return result;
}

uint64_t sub_1A35B9764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Tips.Action.id.getter()
{
  v1 = *v0;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return v1;
}

unint64_t sub_1A35B97E8()
{
  result = qword_1ED81DDB0;
  if (!qword_1ED81DDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF420);
    sub_1A3602A44();
    sub_1A3602E28(&unk_1ED81DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDB0);
  }

  return result;
}

uint64_t sub_1A35B98A0@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5E8);
  MEMORY[0x1EEE9AC00](v104);
  v95 = v77 - v2;
  v90 = sub_1A3622ACC();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v86 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1A3622AAC();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v102 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5F0);
  MEMORY[0x1EEE9AC00](v103);
  v89 = v77 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5F8);
  MEMORY[0x1EEE9AC00](v92);
  v97 = v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF600);
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v94 = v77 - v8;
  v106 = sub_1A3621A2C();
  v93 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A36227EC();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v107 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF608);
  MEMORY[0x1EEE9AC00](v91);
  v96 = v77 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF610);
  MEMORY[0x1EEE9AC00](v100);
  v101 = v77 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF618);
  MEMORY[0x1EEE9AC00](v110);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v77 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF620);
  MEMORY[0x1EEE9AC00](v111);
  v20 = v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF628);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF630);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v77 - v25;
  v27 = v1;
  TipViewStyleConfiguration.imageView.getter();
  if (v28)
  {
    v29 = v28;
    type metadata accessor for MiniTipSolariumView.ImageView(0);
    sub_1A3622A1C();
    sub_1A36040BC(0, v29, v116);
    memcpy(v23, v116, 0x79uLL);
    swift_storeEnumTagMultiPayload();
    sub_1A35B567C(v116, v113, &qword_1EB0EF650);
    sub_1A35B567C(v116, v113, &qword_1EB0EF650);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF650);
    sub_1A3608A98();
    sub_1A3608B64();
    sub_1A3621F1C();
    sub_1A35B567C(v26, v20, &qword_1EB0EF630);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF648);
    sub_1A3608A0C();
    sub_1A3608FA0();
    v30 = v112;
    sub_1A3621F1C();

    sub_1A3602FAC(v116, &qword_1EB0EF650);
    sub_1A3602FAC(v116, &qword_1EB0EF650);
    sub_1A3602FAC(v26, &qword_1EB0EF630);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF638);
    v32 = v30;
    return __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
  }

  v78 = v15;
  v79 = v21;
  v80 = v23;
  v81 = v18;
  v82 = v26;
  v83 = v20;
  v84 = v24;
  v34 = TipViewStyleConfiguration.image.getter();
  v36 = v108;
  v35 = v109;
  v37 = v107;
  if (v34)
  {
    v38 = v34;
    if (*(v27 + *(type metadata accessor for TipViewStyleConfiguration() + 40) + 3) == 1)
    {
      (*(v36 + 104))(v37, *MEMORY[0x1E6981630], v35);
      v77[2] = v38;
      v39 = sub_1A362280C();
      v77[1] = v39;
      (*(v36 + 8))(v37, v35);
      v40 = sub_1A362229C();
      v41 = v93;
      (*(v93 + 104))(v105, *MEMORY[0x1E697E6E8], v106);
      KeyPath = swift_getKeyPath();
      v116[0] = v39;
      v116[1] = 0;
      LOWORD(v116[2]) = 1;
      v116[3] = KeyPath;
      v116[4] = v40;
      v109 = v40;

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF318);
      v44 = sub_1A35C54C8();
      v45 = v94;
      sub_1A36224CC();

      v46 = v98;
      v47 = v99;
      (*(v98 + 16))(v97, v45, v99);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF320);
      v116[0] = v43;
      v116[1] = v44;
      swift_getOpaqueTypeConformance2();
      sub_1A36020D4();
      v48 = v96;
      sub_1A3621F1C();

      (*(v46 + 8))(v45, v47);
      (*(v41 + 8))(v105, v106);
      v49 = type metadata accessor for MiniTipSolariumView.ImageView(0);
      sub_1A35A6350(v27 + *(v49 + 24), v48 + *(v91 + 36));
      v50 = v27;
      v59 = v95;
      sub_1A3622A1C();
      v60 = v101;
      sub_1A3604438(0, v61, v101);
      sub_1A3602FAC(v48, &qword_1EB0EF608);
      v62 = v103;
      v63 = v102;
      if (*(v50 + *(v49 + 28)) == 1)
      {
        sub_1A3622A9C();
        v64 = v86;
        sub_1A3622ABC();
        v65 = v89;
        v66 = &v89[*(v62 + 36)];
        v67 = v85;
        v68 = v87;
        (*(v85 + 16))(v66, v63, v87);
        v69 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF678) + 36)];
        LOBYTE(v113[0]) = 1;
        sub_1A362288C();
        (*(v88 + 8))(v64, v90);
        (*(v67 + 8))(v63, v68);
        v70 = v116[1];
        *v69 = v116[0];
        *(v69 + 1) = v70;
        sub_1A35B567C(v60, v65, &qword_1EB0EF610);
        sub_1A35B567C(v65, v59, &qword_1EB0EF5F0);
        swift_storeEnumTagMultiPayload();
        sub_1A3608BF0();
        sub_1A3608CA8();
        v71 = v78;
        sub_1A3621F1C();
        sub_1A3602FAC(v65, &qword_1EB0EF5F0);
      }

      else
      {
        sub_1A35B567C(v60, v59, &qword_1EB0EF610);
        swift_storeEnumTagMultiPayload();
        sub_1A3608BF0();
        sub_1A3608CA8();
        v71 = v78;
        sub_1A3621F1C();
      }

      v73 = v82;
      v72 = v83;
      v74 = v80;
      v75 = v81;
      sub_1A3602FAC(v60, &qword_1EB0EF610);
      sub_1A3602808(v71, v75, &qword_1EB0EF618);
      sub_1A35B567C(v75, v74, &qword_1EB0EF618);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF650);
      sub_1A3608A98();
      sub_1A3608B64();
      sub_1A3621F1C();
      sub_1A35B567C(v73, v72, &qword_1EB0EF630);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF648);
      sub_1A3608A0C();
      sub_1A3608FA0();
      v76 = v112;
      sub_1A3621F1C();

      sub_1A3602FAC(v73, &qword_1EB0EF630);
      sub_1A3602FAC(v75, &qword_1EB0EF618);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF638);
      v32 = v76;
      return __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
    }
  }

  if (TipViewStyleConfiguration.image.getter())
  {
    if ((*(v27 + *(type metadata accessor for TipViewStyleConfiguration() + 40) + 3) & 1) == 0)
    {
      (*(v36 + 104))(v37, *MEMORY[0x1E6981630], v35);
      v53 = sub_1A362280C();
      (*(v36 + 8))(v37, v35);
      v54 = type metadata accessor for MiniTipSolariumView.ImageView(0);
      sub_1A35A6350(v27 + *(v54 + 24), &v115);
      v113[0] = v53;
      v113[1] = 0;
      v114 = 1;
      v55 = (v27 + *(v54 + 20));
      v56 = *v55;
      v57 = v55[1];
      sub_1A3622A1C();
      sub_1A36047DC(v56, v57, 0);
      sub_1A3602FAC(v113, &qword_1EB0EF640);
      v117 = 1;
      sub_1A35B567C(v116, v83, &qword_1EB0EF648);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF648);
      sub_1A3608A0C();
      sub_1A3608FA0();
      v58 = v112;
      sub_1A3621F1C();

      sub_1A3602FAC(v116, &qword_1EB0EF648);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF638);
      v32 = v58;
      return __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
    }
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF638);
  v52 = v112;

  return __swift_storeEnumTagSinglePayload(v52, 1, 1, v51);
}

uint64_t sub_1A35BA83C()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621C7C();
  *v0 = result;
  return result;
}

void TipViewStyleConfiguration.imageView.getter()
{
  OUTLINED_FUNCTION_30_1();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_11_2();
  sub_1A35BAA38(v1, v2, v3);
  if (v13)
  {
    sub_1A35A63BC(&v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    OUTLINED_FUNCTION_11_2();
    if (sub_1A35E570C())
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_3();
      v6 = v5;
      MEMORY[0x1EEE9AC00](v7);
      v9 = &v12 - v8;
      v10 = OUTLINED_FUNCTION_6();
      v11(v10);
      swift_getAssociatedConformanceWitness();
      sub_1A35FBB08(AssociatedTypeWitness);
      (*(v6 + 8))(v9, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_1A35BAABC(&v12, &qword_1EB0EEC00);
  }

  OUTLINED_FUNCTION_31_1();
}

double sub_1A35BAA38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A35A63D4(a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A35BAABC(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_5_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1A35BAB30(uint64_t a1, uint64_t a2)
{
  sub_1A35BAABC(a1, &unk_1EB0EF950);
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35E8640(a2 + 248, &v15, &unk_1EB0EF950);
  v4 = v16;
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED00);
    if (swift_dynamicCast())
    {
      *&v5 = v13;
      v10 = v5;
      v6 = sub_1A35E8544();
      __swift_destroy_boxed_opaque_existential_1(&v15);
      v7 = v10;
    }

    else
    {
      if (swift_dynamicCast())
      {
        v6 = sub_1A35E85EC();
        __swift_destroy_boxed_opaque_existential_1(&v15);
        v7 = v13;
        v4 = &unk_1F164BB20;
        goto LABEL_10;
      }

      if (swift_dynamicCast())
      {
        a2 = v14;
        v6 = sub_1A35E8598();
        __swift_destroy_boxed_opaque_existential_1(&v15);
        v7 = v13;
        v4 = &unk_1F164BA98;
        goto LABEL_10;
      }

      sub_1A35A63BC(&v15, &v13);
      sub_1A35E84E4(&v13, v11);
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      a2 = sub_1A35BDBDC(v9);
      __swift_destroy_boxed_opaque_existential_1(v11);
      v6 = sub_1A35E8544();
      __swift_destroy_boxed_opaque_existential_1(&v13);
      *&v7 = a2;
    }

    v4 = &unk_1F164BB48;
  }

  else
  {
    v6 = 0;
    a2 = 0;
    v7 = 0uLL;
  }

LABEL_10:
  *a1 = v7;
  *(a1 + 16) = a2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
}

uint64_t sub_1A35BAD74(uint64_t a1)
{
  v2 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A35BBD90(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A35B5C90();
  sub_1A3621D0C();
  return sub_1A35B4EC4(a1);
}

uint64_t sub_1A35BAE2C(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 104);
  *a1 = *(a2 + 88);
  *(a1 + 16) = v4;
  sub_1A35E8640(a2 + 112, v15, &qword_1EB0EED38);
  v5 = v16;
  v6 = type metadata accessor for TipViewEnvironment();
  v7 = a1 + v6[8];
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_1A35A63BC(v15, v7);
  *(v7 + 40) = v5;
  v8 = a1 + v6[9];
  *v8 = *(a2 + 160);
  *(v8 + 8) = 1;
  LOBYTE(v8) = *(a2 + 240);
  v9 = a1 + v6[10];
  *v9 = *(a2 + 224);
  *(v9 + 16) = v8;
  v11 = *(a2 + 72);
  v10 = *(a2 + 80);
  v12 = (a1 + v6[13]);
  v13 = *v12;
  sub_1A35B5EA0(v11);
  sub_1A35BBDF4(v13);

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t sub_1A35BAF84(uint64_t a1)
{
  v3 = type metadata accessor for TipView();
  OUTLINED_FUNCTION_14(v3);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1A35BBE04(a1, v5);
}

uint64_t sub_1A35BB00C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t MiniTipViewStyle.makeBody(configuration:)()
{
  sub_1A36229DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA58);
  sub_1A35DC728();
  sub_1A35DC848();
  return sub_1A36229EC();
}

unint64_t sub_1A35BB130()
{
  result = qword_1ED81E330;
  if (!qword_1ED81E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E330);
  }

  return result;
}

uint64_t sub_1A35BB184()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_22();
  MEMORY[0x1EEE9AC00](v2);
  (*(*(v0 - 8) + 16))(&v5 - v3, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t sub_1A35BB23C(unint64_t *a1, void (*a2)(uint64_t))
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

void TipViewStyleConfiguration.title.getter()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v2 = sub_1A362141C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  if (*(v0 + 64) && (v9 = sub_1A362130C()) != 0)
  {
    v10 = v9;
    v11 = sub_1A3622BCC();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_21_1();
    sub_1A35F5E4C(v12, v13, 0, MEMORY[0x1E69E7CC0], sub_1A35F6DC4, v14, v10);
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    sub_1A362142C();
    v15 = sub_1A36213FC();
    (*(v4 + 8))(v8, v2);
    if (v15)
    {
      OUTLINED_FUNCTION_0_28();
      v16 = OUTLINED_FUNCTION_2_19();
      v17(v16);
      sub_1A3622BCC();
      OUTLINED_FUNCTION_17_3();
      v18 = sub_1A36223BC();

      v19 = OUTLINED_FUNCTION_17_3();
      sub_1A35B72C8(v19, v20, v21);

      if ((v18 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v22);
        OUTLINED_FUNCTION_3_19();
        MEMORY[0x1EEE9AC00](v23);
        OUTLINED_FUNCTION_16();
        *(v24 - 16) = sub_1A35F6DBC;
        *(v24 - 8) = v25;
        v26 = sub_1A362159C();
        sub_1A36215AC();
        v26(&v29, 0);
      }
    }

    if (*(v1 + *(type metadata accessor for TipViewStyleConfiguration() + 40)) == 1)
    {
      OUTLINED_FUNCTION_0_28();
      v27 = OUTLINED_FUNCTION_2_19();
      v28(v27);
      OUTLINED_FUNCTION_26_1();
    }
  }

  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_1();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_1A362313C();
}

void TipViewStyleConfiguration.message.getter()
{
  OUTLINED_FUNCTION_30_1();
  sub_1A362141C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_0();
  v4 = v3 - v2;
  if (*(v0 + 64) && (v5 = sub_1A362132C()) != 0)
  {
    v6 = v5;
    v7 = sub_1A3622BCC();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_21_1();
    sub_1A35F5E4C(v8, v9, 0, MEMORY[0x1E69E7CC0], sub_1A35F8298, v10, v6);
  }

  else
  {
    sub_1A362142C();
    sub_1A36213FC();
    v11 = OUTLINED_FUNCTION_28_1();
    v12(v11);
    if (v4)
    {
      OUTLINED_FUNCTION_0_28();
      v13 = OUTLINED_FUNCTION_2_19();
      v15 = v14(v13);
      if (v18)
      {
        v19 = sub_1A35B8988(v15, v16, v17, v18);
        MEMORY[0x1EEE9AC00](v19);
        OUTLINED_FUNCTION_3_19();
        MEMORY[0x1EEE9AC00](v20);
        OUTLINED_FUNCTION_16();
        *(v21 - 16) = sub_1A35F6E80;
        *(v21 - 8) = v22;
        v23 = sub_1A362159C();
        sub_1A36215AC();
        v23(&v26, 0);
      }
    }

    OUTLINED_FUNCTION_0_28();
    v24 = OUTLINED_FUNCTION_2_19();
    v25(v24);
  }

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_31_1();
}

uint64_t sub_1A35BB7E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A35BB84C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v7 = type metadata accessor for TipViewStyleConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = a2[1];
  v27 = *a2;
  v28 = v10;
  v11 = a2[3];
  v29 = a2[2];
  v30 = v11;
  v13 = *(&v27 + 1);
  v12 = v27;
  if (v27 == sub_1A3622BCC() && *(&v27 + 1) == v14)
  {

LABEL_9:
    v26[0] = 0x2E7865646E6940;
    v26[1] = 0xE700000000000000;
    v31 = a1;
    v17 = sub_1A362342C();
    MEMORY[0x1A58F3290](v17);

    v12 = 0x2E7865646E6940;
    v13 = 0xE700000000000000;
    goto LABEL_10;
  }

  v16 = sub_1A362345C();

  if (v16 & 1) != 0 || (sub_1A35B73A4())
  {
    goto LABEL_9;
  }

  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
LABEL_10:
  sub_1A35B63C8(v25, v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_1A35B7340(v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  v22 = v30;
  v20[2] = v29;
  v20[3] = v22;
  v23 = v29;
  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 16) = a1;
  *(a4 + 24) = 0;
  *(a4 + 48) = sub_1A35F8164;
  *(a4 + 56) = v19;
  *(a4 + 32) = v23;
  sub_1A35BBC68(&v27, v26);
}

uint64_t sub_1A35BBA84()
{
  OUTLINED_FUNCTION_30_1();
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_8();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  __swift_destroy_boxed_opaque_existential_1(v3);

  if (*(v3 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v3 + 120);
  v4 = *(v0 + 36);
  v5 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_20_0(v3 + v4))
  {
    OUTLINED_FUNCTION_4_14();
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = OUTLINED_FUNCTION_18_1();
  if (!OUTLINED_FUNCTION_13_3(v7))
  {
    if (*(v0 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 24);
    }

    v8 = *(v3 + 28);
    v9 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_20_0(v0 + v8))
    {
      OUTLINED_FUNCTION_4_14();
      (*(v10 + 8))(v0 + v8, v9);
    }

    v11 = OUTLINED_FUNCTION_12_5();
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    OUTLINED_FUNCTION_15_1();
    if (v13)
    {
    }

    OUTLINED_FUNCTION_15_1();
    if (v14)
    {
    }
  }

  OUTLINED_FUNCTION_31_1();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1A35BBCC4@<X0>(_OWORD *a1@<X8>)
{
  __asm { FMOV            V0.2D, #8.0 }

  *a1 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF700);
  return sub_1A36069F4();
}

unint64_t sub_1A35BBD14()
{
  result = qword_1ED81DDF0;
  if (!qword_1ED81DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDF0);
  }

  return result;
}

uint64_t sub_1A35BBD68@<X0>(uint64_t *a1@<X8>)
{
  result = Tips.Action.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A35BBD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewEnvironment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35BBDF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A35BBE04(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for TipView();
  sub_1A35EAEC4(a2 + *(v4 + 44), a1 + 24);

  *(a1 + 64) = *(a2 + *(v4 + 48));
  return result;
}

uint64_t sub_1A35BBED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v4 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v70 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A3621A6C();
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v61 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE3C8);
  v82 = v8;
  v10 = sub_1A3621A6C();
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v61 - v13;
  v14 = sub_1A362190C();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TipViewStyleConfiguration();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v74 = AssociatedTypeWitness;
  v22 = sub_1A3621A6C();
  v69 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v68 = &v61 - v26;
  v72 = v27;
  v81 = v10;
  v28 = sub_1A3621F2C();
  v77 = *(v28 - 8);
  v78 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v80 = &v61 - v29;
  type metadata accessor for MiniTipViewStyle();
  v30 = swift_dynamicCastMetatype();
  sub_1A35B5EB4(a1, v18);
  (*(v70 + 24))(v18, v6);
  sub_1A35B642C(v18);
  if (v30)
  {
    swift_getKeyPath();
    v31 = v73;
    sub_1A36218FC();
    v32 = v74;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1A362246C();

    (*(v75 + 8))(v31, v76);
    (*(v71 + 8))(v21, v32);
    v34 = sub_1A35B72D8();
    v87 = AssociatedConformanceWitness;
    v88 = v34;
    v35 = v72;
    WitnessTable = swift_getWitnessTable();
    v37 = v68;
    sub_1A35B561C(v24, v35, WitnessTable);
    v38 = *(v69 + 8);
    v38(v24, v35);
    sub_1A35B561C(v37, v35, WitnessTable);
    v39 = sub_1A35BB130();
    v85 = AssociatedConformanceWitness;
    v86 = v39;
    v83 = swift_getWitnessTable();
    v84 = v34;
    swift_getWitnessTable();
    sub_1A35BB184();
    v38(v24, v35);
    v38(v37, v35);
  }

  else
  {
    sub_1A35B63C8(v2 + *(a1 + 36), v18);
    v40 = v62;
    sub_1A35CBA00(a1, v62);
    sub_1A35B8E64(v18, v40, v103);
    v41 = v74;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = v63;
    MEMORY[0x1A58F2CC0](v103, v41, &type metadata for TipViewBackground, AssociatedConformanceWitness);
    sub_1A35CC5F8(v103);
    (*(v71 + 8))(v21, v41);
    swift_getKeyPath();
    v43 = v73;
    sub_1A36218FC();
    v44 = sub_1A35BB130();
    v101 = AssociatedConformanceWitness;
    v102 = v44;
    v45 = v82;
    v46 = swift_getWitnessTable();
    v47 = v66;
    sub_1A362246C();

    (*(v75 + 8))(v43, v76);
    (*(v64 + 8))(v42, v45);
    v48 = sub_1A35B72D8();
    v99 = v46;
    v100 = v48;
    v49 = v81;
    v50 = swift_getWitnessTable();
    v51 = v65;
    sub_1A35B561C(v47, v49, v50);
    v52 = *(v67 + 8);
    v52(v47, v49);
    sub_1A35B561C(v51, v49, v50);
    v97 = AssociatedConformanceWitness;
    v98 = v48;
    swift_getWitnessTable();
    sub_1A35B04C8();
    v52(v47, v49);
    v52(v51, v49);
  }

  v53 = sub_1A35B72D8();
  v95 = AssociatedConformanceWitness;
  v96 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_1A35BB130();
  v93 = AssociatedConformanceWitness;
  v94 = v55;
  v91 = swift_getWitnessTable();
  v92 = v53;
  v56 = swift_getWitnessTable();
  v89 = v54;
  v90 = v56;
  v57 = v78;
  v58 = swift_getWitnessTable();
  v59 = v80;
  sub_1A35B561C(v80, v57, v58);
  return (*(v77 + 8))(v59, v57);
}

uint64_t sub_1A35BC84C()
{
  sub_1A35BC888();
  sub_1A3621CFC();
  return v1;
}

unint64_t sub_1A35BC888()
{
  result = qword_1ED81E2C8;
  if (!qword_1ED81E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2C8);
  }

  return result;
}

uint64_t sub_1A35BC8DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35BC904();
  *a1 = result;
  return result;
}

uint64_t sub_1A35BC904()
{
  if (qword_1ED81E498 != -1)
  {
    swift_once();
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A35BC97C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t TipViewStyleConfiguration.image.getter()
{
  v1 = v0;
  sub_1A362141C();
  OUTLINED_FUNCTION_3();
  v65 = v3;
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_0();
  v64 = v5 - v4;
  v6 = sub_1A36211FC();
  OUTLINED_FUNCTION_3();
  v63 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF140);
  v16 = OUTLINED_FUNCTION_14(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  v23 = sub_1A362122C();
  OUTLINED_FUNCTION_3();
  v67 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v62 = v26 - v27;
  OUTLINED_FUNCTION_23_2();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  v31 = v0[8];
  if (v31)
  {
    sub_1A36212FC();
    OUTLINED_FUNCTION_19_1(v22, 1, v23);
    if (!v32)
    {
      v61 = v0;
      (*(v67 + 32))(v30, v22, v23);
      sub_1A362121C();
      v33 = v63;
      (*(v63 + 104))(v11, *MEMORY[0x1E69DA228], v6);
      v34 = sub_1A35F5D6C();
      v35 = *(v33 + 8);
      v35(v11, v6);
      v35(v14, v6);
      if (v34)
      {
        sub_1A362120C();
        if (_s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0())
        {
          v36 = sub_1A36227FC();
        }

        else
        {
          v36 = sub_1A36227DC();
        }

        v48 = v36;
        (*(v67 + 8))(v30, v23);
        return v48;
      }

      (*(v67 + 8))(v30, v23);
      v1 = v61;
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v23);
  }

  sub_1A35BAABC(v22, &qword_1EB0EF140);
  if (!v31)
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v23);
    goto LABEL_12;
  }

LABEL_10:
  sub_1A36212FC();
  OUTLINED_FUNCTION_19_1(v19, 1, v23);
  if (!v32)
  {
    v43 = v67;
    v44 = v62;
    (*(v67 + 32))();
    sub_1A362121C();
    v45 = v63;
    (*(v63 + 104))(v11, *MEMORY[0x1E69DA220], v6);
    v46 = sub_1A35F5D6C();
    v47 = *(v45 + 8);
    v47(v11, v6);
    v47(v14, v6);
    if (v46)
    {
      sub_1A362120C();
      v48 = sub_1A362281C();
      (*(v43 + 8))(v44, v23);
      return v48;
    }

    (*(v43 + 8))(v44, v23);
    goto LABEL_16;
  }

LABEL_12:
  sub_1A35BAABC(v19, &qword_1EB0EF140);
LABEL_16:
  v49 = v64;
  sub_1A362142C();
  v50 = sub_1A36213FC();
  (*(v65 + 8))(v49, v66);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v51 = OUTLINED_FUNCTION_6();
    if (v52(v51))
    {

      MEMORY[0x1EEE9AC00](v53);
      *(&v60 - 2) = v1;
      MEMORY[0x1EEE9AC00](v54);
      *(&v60 - 2) = sub_1A35F6D14;
      *(&v60 - 1) = v55;
      v56 = sub_1A362159C();
      sub_1A36215AC();
      v56(v68, 0);
    }
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v57 = OUTLINED_FUNCTION_6();
  return v58(v57);
}

uint64_t sub_1A35BCFB8()
{
  if (v2[21] >> 60 == 15)
  {
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_2_8();
    v3(v1, 0);
    OUTLINED_FUNCTION_9_0();
    v7 = v0;
LABEL_3:
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    goto LABEL_6;
  }

  if ((sub_1A3622F2C() & 1) == 0)
  {
    v16 = v2[17];
    v17 = v2[14];
    v2[10] = v2[12];
    v18 = OUTLINED_FUNCTION_11();
    sub_1A35BD354(v18, v19);
    OUTLINED_FUNCTION_0_9();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_11();
    sub_1A3620E5C();
    v20 = OUTLINED_FUNCTION_11();
    sub_1A35BD2E8(v20, v21);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
    v23 = v2[20];
    v24 = v2[21];
    v25 = v2[17];
    if (EnumTagSinglePayload == 1)
    {
      v26 = v2[14];
      (*(v2[16] + 8))(v2[17], v2[15]);
      v27 = sub_1A36215DC();
      sub_1A36215AC();
      v27(v2 + 6, 0);
      sub_1A35BD2E8(v23, v24);
      OUTLINED_FUNCTION_9_0();
      v7 = v26;
    }

    else
    {
      v28 = v2[14];
      v29 = v2[11];
      sub_1A35BD2E8(v2[20], v2[21]);
      (*(*(v28 - 8) + 32))(v29, v25, v28);
      v4 = v29;
      v5 = 0;
      v6 = 1;
      v7 = v28;
    }

    goto LABEL_3;
  }

  OUTLINED_FUNCTION_9_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_11();
  sub_1A35BD2E8(v12, v13);
LABEL_6:

  OUTLINED_FUNCTION_5_1();

  return v14();
}

uint64_t sub_1A35BD1D0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v5 + 160) = v3;
  *(v5 + 168) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A35BCFB8, 0, 0);
}

uint64_t sub_1A35BD2E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A35BD2FC(a1, a2);
  }

  return a1;
}

uint64_t sub_1A35BD2FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A35BD354(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A35BD3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v61 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0D8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  v56 = v51 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0E0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v6);
  v57 = v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0E8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  v53 = v51 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0F0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0F8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v51 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF100);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF108);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF110);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v51 - v26;
  v52 = v3;
  sub_1A35A6350(v3, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED00);
  if (OUTLINED_FUNCTION_5_12())
  {
    v28 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF118);
    OUTLINED_FUNCTION_0_0();
    (*(v29 + 16))(v27, v59);
    *&v27[*(v24 + 36)] = v28;
    sub_1A35ABFF4(v27, v19, &qword_1EB0EF110);
    swift_storeEnumTagMultiPayload();
    sub_1A35BDE00();
    sub_1A35F5988();

    sub_1A3621F1C();
    sub_1A35ABFF4(v23, v16, &qword_1EB0EF108);
    swift_storeEnumTagMultiPayload();
    sub_1A35BDEE4();
    sub_1A35BDF70();
    sub_1A3621F1C();

    sub_1A35A6588(v23, &qword_1EB0EF108);
    v30 = v27;
    v31 = &qword_1EB0EF110;
  }

  else
  {
    v51[0] = v24;
    v51[1] = v13;
    v32 = v59;
    v51[2] = v20;
    v33 = v16;
    if (OUTLINED_FUNCTION_5_12())
    {
      v35 = v62;
      v34 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF118);
      OUTLINED_FUNCTION_0_0();
      (*(v36 + 16))(v12, v32);
      v37 = &v12[*(v58 + 36)];
      *v37 = v35;
      *(v37 + 1) = v34;
      sub_1A35ABFF4(v12, v19, &qword_1EB0EF0F0);
      swift_storeEnumTagMultiPayload();
      sub_1A35BDE00();
      sub_1A35F5988();

      sub_1A3621F1C();
      sub_1A35ABFF4(v23, v33, &qword_1EB0EF108);
      swift_storeEnumTagMultiPayload();
      sub_1A35BDEE4();
      sub_1A35BDF70();
      OUTLINED_FUNCTION_3_18();
      sub_1A3621F1C();

      sub_1A35A6588(v23, &qword_1EB0EF108);
      v30 = v12;
      v31 = &qword_1EB0EF0F0;
    }

    else
    {
      v38 = v32;
      if (OUTLINED_FUNCTION_5_12())
      {
        v39 = v62;
        v40 = v63;
        v41 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF118);
        OUTLINED_FUNCTION_0_0();
        v43 = v53;
        (*(v42 + 16))(v53, v38);
        v44 = (v43 + *(v54 + 36));
        *v44 = v39;
        v44[1] = v40;
        v44[2] = v41;
        sub_1A35ABFF4(v43, v56, &qword_1EB0EF0E8);
        swift_storeEnumTagMultiPayload();
        sub_1A35BDD1C();
        sub_1A35BDE00();

        v45 = v57;
        sub_1A3621F1C();
        sub_1A35ABFF4(v45, v33, &qword_1EB0EF0E0);
        swift_storeEnumTagMultiPayload();
        sub_1A35BDEE4();
        sub_1A35BDF70();
        OUTLINED_FUNCTION_3_18();
        sub_1A3621F1C();

        sub_1A35A6588(v45, &qword_1EB0EF0E0);
        v30 = v43;
        v31 = &qword_1EB0EF0E8;
      }

      else
      {
        v46 = v52[3];
        __swift_project_boxed_opaque_existential_1(v52, v46);
        v47 = sub_1A35BDBDC(v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF118);
        OUTLINED_FUNCTION_0_0();
        (*(v48 + 16))(v27, v32);
        *&v27[*(v51[0] + 36)] = v47;
        sub_1A35ABFF4(v27, v56, &qword_1EB0EF110);
        swift_storeEnumTagMultiPayload();
        sub_1A35BDD1C();
        sub_1A35BDE00();
        v49 = v57;
        sub_1A3621F1C();
        sub_1A35ABFF4(v49, v16, &qword_1EB0EF0E0);
        swift_storeEnumTagMultiPayload();
        sub_1A35BDEE4();
        sub_1A35BDF70();
        OUTLINED_FUNCTION_3_18();
        sub_1A3621F1C();
        sub_1A35A6588(v49, &qword_1EB0EF0E0);
        v30 = v27;
        v31 = &qword_1EB0EF110;
      }
    }
  }

  sub_1A35A6588(v30, v31);
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_1A35BDBDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(v4 + 16);
  v8(v11 - v9, v2, a1);
  if (swift_dynamicCast())
  {
    return v11[1];
  }

  v8(v7, v2, a1);
  return sub_1A362187C();
}

unint64_t sub_1A35BDD1C()
{
  result = qword_1ED81E1A0;
  if (!qword_1ED81E1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF0E8);
    sub_1A35A9B30(&qword_1ED81E108, &qword_1EB0EF118);
    sub_1A35A9B30(&qword_1ED81E0E8, &qword_1EB0EF120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1A0);
  }

  return result;
}

unint64_t sub_1A35BDE00()
{
  result = qword_1ED81E198;
  if (!qword_1ED81E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF110);
    sub_1A35A9B30(&qword_1ED81E108, &qword_1EB0EF118);
    sub_1A35A9B30(&qword_1ED81E100, &qword_1EB0EF128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E198);
  }

  return result;
}

unint64_t sub_1A35BDEE4()
{
  result = qword_1ED81E130;
  if (!qword_1ED81E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF108);
    sub_1A35BDE00();
    sub_1A35F5988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E130);
  }

  return result;
}

unint64_t sub_1A35BDF70()
{
  result = qword_1ED81E138;
  if (!qword_1ED81E138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF0E0);
    sub_1A35BDD1C();
    sub_1A35BDE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E138);
  }

  return result;
}

uint64_t sub_1A35BE004@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v86 = sub_1A36226AC();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A36217DC();
  OUTLINED_FUNCTION_3();
  v84 = v9;
  v85 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  v16 = sub_1A362178C();
  OUTLINED_FUNCTION_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED81E670 != -1)
  {
    swift_once();
  }

  if (byte_1ED823310 == 1 && (*(v1 + 40) & 1) == 0)
  {
    sub_1A3621B6C();
    v25 = (*(v18 + 88))(v21, v16);
    if (v25 == *MEMORY[0x1E697DBB8])
    {
      v80 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
      LODWORD(v83) = *MEMORY[0x1E69814C8];
      v26 = *(v5 + 104);
      v81 = v5 + 104;
      v82 = v26;
      (v26)(v8);
      sub_1A36227CC();
      v27.n128_u64[0] = 1.0;
      OUTLINED_FUNCTION_2_24(v27, v28, v29);

      OUTLINED_FUNCTION_3_21();
      v30 = v84;
      v31 = *(v85 + 8);
      v31(v12, v84);
      OUTLINED_FUNCTION_6_12();
      v32 = sub_1A3621D3C();
      OUTLINED_FUNCTION_1_26(v32);
      v85 = v33;
      WitnessTable = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_0(v90);
      OUTLINED_FUNCTION_4_17();
      v31(v15, v30);
      v80 = __swift_project_boxed_opaque_existential_1(v90, v91);
      v34 = OUTLINED_FUNCTION_5_14();
      v35(v34);
      sub_1A36227CC();
      v36.n128_u64[0] = 2.0;
      OUTLINED_FUNCTION_2_24(v36, v37, v38);

      OUTLINED_FUNCTION_3_21();
      v31(v12, v30);
      v78 = v31;
      OUTLINED_FUNCTION_6_12();
      v88 = sub_1A3621D3C();
      v89 = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_0(v87);
      OUTLINED_FUNCTION_4_17();
      v31(v15, v30);
      v76 = v89;
      v77 = __swift_project_boxed_opaque_existential_1(v87, v88);
      OUTLINED_FUNCTION_6_12();
      v39 = sub_1A3621D3C();
      v80 = &v74;
      OUTLINED_FUNCTION_3();
      v79 = v40;
      MEMORY[0x1EEE9AC00](v41);
      v43 = &v74 - v42;
      v44 = OUTLINED_FUNCTION_5_14();
      v45(v44);
      sub_1A36227CC();
      v46.n128_u64[0] = 0.75;
      OUTLINED_FUNCTION_2_24(v46, v47, v48);

      OUTLINED_FUNCTION_3_21();
      v49 = v12;
      v50 = v78;
      v78(v49, v30);
      sub_1A362173C();
      v50(v15, v30);
      swift_getWitnessTable();
      v24 = sub_1A35BDBDC(v39);
      v79[1](v43, v39);
      __swift_destroy_boxed_opaque_existential_1(v87);
      result = __swift_destroy_boxed_opaque_existential_1(v90);
    }

    else
    {
      v51 = v25;
      v83 = a1;
      v52 = *MEMORY[0x1E697DBA8];
      v53 = v2[3];
      v82 = v2[4];
      v54 = v2;
      v55 = v53;
      __swift_project_boxed_opaque_existential_1(v54, v53);
      if (v51 == v52)
      {
        LODWORD(v81) = *MEMORY[0x1E69814C8];
        v80 = *(v5 + 104);
        v75 = v8;
        (v80)(v8);
        sub_1A36227CC();
        v56.n128_u64[0] = 1.0;
        OUTLINED_FUNCTION_2_24(v56, v57, v58);

        OUTLINED_FUNCTION_3_21();
        v59 = v84;
        v60 = *(v85 + 8);
        (v60)(v12, v84);
        v79 = v60;
        v61 = sub_1A3621D3C();
        OUTLINED_FUNCTION_1_26(v61);
        v85 = v62;
        WitnessTable = swift_getWitnessTable();
        __swift_allocate_boxed_opaque_existential_0(v90);
        sub_1A362173C();
        (v60)(v15, v59);
        v77 = WitnessTable;
        v78 = __swift_project_boxed_opaque_existential_1(v90, v91);
        OUTLINED_FUNCTION_6_12();
        v63 = sub_1A3621D3C();
        v82 = &v74;
        OUTLINED_FUNCTION_3();
        v65 = v64;
        v67 = MEMORY[0x1EEE9AC00](v66);
        v69 = &v74 - v68;
        (v80)(v75, v81, v86, v67);
        sub_1A36227CC();
        v70.n128_u64[0] = 0.75;
        OUTLINED_FUNCTION_2_24(v70, v71, v72);

        OUTLINED_FUNCTION_3_21();
        v73 = v79;
        (v79)(v12, v59);
        sub_1A362173C();
        (v73)(v15, v59);
        swift_getWitnessTable();
        v24 = sub_1A35BDBDC(v63);
        (*(v65 + 8))(v69, v63);
        result = __swift_destroy_boxed_opaque_existential_1(v90);
      }

      else
      {
        v24 = sub_1A35BDBDC(v55);
        result = (*(v18 + 8))(v21, v16);
      }

      a1 = v83;
    }
  }

  else
  {
    v22 = *(v1 + 24);
    __swift_project_boxed_opaque_existential_1(v1, v22);
    result = sub_1A35BDBDC(v22);
    v24 = result;
  }

  *a1 = v24;
  return result;
}

uint64_t sub_1A35BE7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_1A3621DCC();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF790);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF470);
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v54 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v54 - v10;
  v11 = sub_1A3621A2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF798);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v59 = &v54 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7A0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v54 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7A8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v54 - v22;
  LODWORD(v77[0]) = sub_1A3621FDC();
  v23 = sub_1A36223AC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v76 = v27 & 1;
  v75 = 1;
  *&v78 = v23;
  *(&v78 + 1) = v25;
  LOBYTE(v79) = v27 & 1;
  *(&v79 + 1) = v29;
  *v80 = KeyPath;
  *&v80[8] = 0;
  v80[16] = 1;
  *&v80[17] = 256;
  v31 = *(v2 + 32);
  v32 = v14;
  v33 = v12[13];
  v33(v17, *MEMORY[0x1E697E6F8], v11);
  v33(v14, *MEMORY[0x1E697E6D0], v11);
  sub_1A35BB23C(&qword_1ED81E6E8, MEMORY[0x1E697E730]);
  v34 = v11;
  result = sub_1A3622B3C();
  if (result)
  {
    v55 = v31;
    v36 = v12[4];
    v37 = v56;
    v36(v56, v17, v11);
    v38 = v57;
    v39 = v58;
    v36((v37 + *(v58 + 48)), v32, v11);
    sub_1A35B567C(v37, v38, &qword_1EB0EF3B0);
    v54 = *(v39 + 48);
    v40 = v74;
    v36(v74, v38, v34);
    v41 = v12[1];
    v41(v38 + v54, v34);
    sub_1A3602808(v37, v38, &qword_1EB0EF3B0);
    v36((v40 + *(v73 + 36)), (v38 + *(v39 + 48)), v34);
    v41(v38, v34);
    v42 = swift_getKeyPath();
    v77[0] = v78;
    v77[1] = v79;
    v77[2] = *v80;
    *(&v77[2] + 15) = *&v80[15];
    *(&v77[3] + 1) = v42;
    *&v77[4] = v55;
    sub_1A35B567C(&v78, __dst, &qword_1EB0EF480);

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF478);
    v44 = sub_1A35BF15C();
    v45 = sub_1A35A9B78(&qword_1ED81E678, &qword_1EB0EF398);
    v46 = v65;
    v47 = v73;
    sub_1A36224DC();
    memcpy(__dst, v77, 0x48uLL);
    sub_1A3602FAC(__dst, &qword_1EB0EF478);
    v48 = v67;
    v49 = v68;
    (*(v67 + 16))(v66, v46, v68);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF480);
    *&v77[0] = v43;
    *(&v77[0] + 1) = v47;
    *&v77[1] = v44;
    *(&v77[1] + 1) = v45;
    swift_getOpaqueTypeConformance2();
    sub_1A3602E68();
    v50 = v59;
    sub_1A3621F1C();
    sub_1A3602FAC(&v78, &qword_1EB0EF480);
    (*(v48 + 8))(v46, v49);
    sub_1A3602FAC(v74, &qword_1EB0EF398);
    sub_1A36229FC();
    sub_1A3621AFC();
    v51 = v63;
    sub_1A3602808(v50, v63, &qword_1EB0EF798);
    memcpy((v51 + *(v61 + 36)), v77, 0x70uLL);
    v52 = v69;
    sub_1A3621DBC();
    sub_1A3609F04();
    v53 = v60;
    sub_1A36225BC();
    (*(v70 + 8))(v52, v71);
    sub_1A3602FAC(v51, &qword_1EB0EF7A0);
    sub_1A3621A5C();
    return sub_1A3602FAC(v53, &qword_1EB0EF7A8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A35BF0EC()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621CBC();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_1A35BF15C()
{
  result = qword_1ED81E6C0;
  if (!qword_1ED81E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF478);
    sub_1A3602E68();
    sub_1A3602E28(&qword_1ED81E6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6C0);
  }

  return result;
}

uint64_t sub_1A35BF214@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF790);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF470);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v48 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v48 - v8;
  v9 = sub_1A3621A2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398);
  MEMORY[0x1EEE9AC00](v52);
  v60 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF798);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v53 = &v48 - v18;
  LODWORD(v63[0]) = sub_1A3621FFC();
  v19 = sub_1A36223AC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v62 = v23 & 1;
  v61 = 1;
  *&v64 = v19;
  *(&v64 + 1) = v21;
  v27 = v12;
  LOBYTE(v65) = v23 & 1;
  *(&v65 + 1) = v25;
  *v66 = KeyPath;
  *&v66[8] = 0;
  v66[16] = 1;
  *&v66[17] = 256;
  v28 = *(v2 + 32);
  v29 = v10[13];
  v29(v15, *MEMORY[0x1E697E6F8], v9);
  v29(v27, *MEMORY[0x1E697E6D0], v9);
  sub_1A35BB23C(&qword_1ED81E6E8, MEMORY[0x1E697E730]);
  result = sub_1A3622B3C();
  if (result)
  {
    v31 = v10[4];
    v32 = v50;
    v31(v50, v15, v9);
    v33 = v49;
    v48 = v28;
    v34 = v51;
    v31((v32 + *(v51 + 48)), v27, v9);
    sub_1A35B567C(v32, v33, &qword_1EB0EF3B0);
    v35 = *(v34 + 48);
    v31(v60, v33, v9);
    v36 = v10[1];
    v36(v33 + v35, v9);
    sub_1A3602808(v32, v33, &qword_1EB0EF3B0);
    v37 = v52;
    v31(&v60[*(v52 + 36)], (v33 + *(v34 + 48)), v9);
    v36(v33, v9);
    v38 = swift_getKeyPath();
    v63[0] = v64;
    v63[1] = v65;
    v63[2] = *v66;
    *(&v63[2] + 15) = *&v66[15];
    *(&v63[3] + 1) = v38;
    *&v63[4] = v48;
    sub_1A35B567C(&v64, __dst, &qword_1EB0EF480);

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF478);
    v40 = sub_1A35BF15C();
    v41 = sub_1A35A9B78(&qword_1ED81E678, &qword_1EB0EF398);
    v42 = v55;
    sub_1A36224DC();
    memcpy(__dst, v63, 0x48uLL);
    sub_1A3602FAC(__dst, &qword_1EB0EF478);
    v43 = v57;
    v44 = v58;
    (*(v57 + 16))(v56, v42, v58);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF480);
    *&v63[0] = v39;
    *(&v63[0] + 1) = v37;
    *&v63[1] = v40;
    *(&v63[1] + 1) = v41;
    swift_getOpaqueTypeConformance2();
    sub_1A3602E68();
    v45 = v53;
    sub_1A3621F1C();
    sub_1A3602FAC(&v64, &qword_1EB0EF480);
    (*(v43 + 8))(v42, v44);
    sub_1A3602FAC(v60, &qword_1EB0EF398);
    sub_1A36229FC();
    sub_1A3621AFC();
    v46 = v59;
    sub_1A3602808(v45, v59, &qword_1EB0EF798);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7A0);
    return memcpy((v46 + *(v47 + 36)), v63, 0x70uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A35BF9C4()
{
  result = qword_1ED81DCE8;
  if (!qword_1ED81DCE8)
  {
    sub_1A36215EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DCE8);
  }

  return result;
}

uint64_t Tips.Parameter.wrappedValue.getter()
{
  OUTLINED_FUNCTION_0_8();
  sub_1A35A57D0();
  sub_1A35A4D54();
}

void TipView.body.getter()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v110 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7();
  v100 = v6;
  sub_1A36213AC();
  OUTLINED_FUNCTION_3();
  v102 = v8;
  v103 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_5(v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v106 = v84 - v12;
  v13 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_5(v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED58);
  OUTLINED_FUNCTION_14(v20);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7();
  v104 = v22;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED60);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v84 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED68);
  OUTLINED_FUNCTION_3();
  v98 = v26;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED70);
  v30 = OUTLINED_FUNCTION_14(v29);
  MEMORY[0x1EEE9AC00](v30);
  v109 = v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v84 - v33;
  v35 = v0;
  v36 = *(v0 + *(v2 + 36));
  v108 = v84 - v33;
  if (v36 == &type metadata for EmptyTip)
  {
    v67 = 1;
    v66 = v107;
  }

  else
  {
    v37 = v0 + *(v2 + 52);
    v38 = *(v37 + 8);
    if ((!v38 || (v39 = *(v37 + 16), v113 = *v37, v114 = v38, LOBYTE(v115) = v39 & 1, v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90), MEMORY[0x1A58F2FF0](&v112, v40), v112 == 1)) && ((OUTLINED_FUNCTION_10_2(*(v2 + 56)), v41 = v113, sub_1A35B22BC(&v113), v41) || (sub_1A35BFA80(), v113 == 8)))
    {
      sub_1A35E908C(v2, &v113);
      v88 = v25;
      v42 = v116;
      v43 = v117;
      __swift_project_boxed_opaque_existential_1(&v113, v116);
      sub_1A35F5BB0(v42, v43);
      v45 = v44(v35 + *(v2 + 56));

      __swift_destroy_boxed_opaque_existential_1(&v113);
      KeyPath = swift_getKeyPath();
      v87 = *(v13 + 16);
      v87(v19, v35, v2);
      v91 = *(v13 + 80);
      v94 = v10;
      v47 = (v91 + 32) & ~v91;
      v48 = swift_allocObject();
      v86 = *(v2 + 16);
      v90 = *(v2 + 24);
      v49 = v90;
      *(v48 + 16) = v86;
      *(v48 + 24) = v49;
      v93 = v13;
      v50 = *(v13 + 32);
      v89 = v13 + 32;
      v92 = v50;
      v50(v48 + v47, v19, v2);
      v113 = v45;
      v114 = KeyPath;
      v115 = sub_1A35BAF84;
      v116 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED80);
      v105 = v19;
      sub_1A35C1F18();
      sub_1A36225EC();

      v51 = *(v2 + 56);
      v101 = v35;
      OUTLINED_FUNCTION_10_2(v51);
      LODWORD(v48) = v113;
      sub_1A35B22BC(&v113);
      v85 = v48 != 0;
      v52 = v87;
      v84[1] = v13 + 16;
      v87(v105, v35, v2);
      v84[0] = v47;
      v53 = swift_allocObject();
      v54 = v86;
      v55 = v90;
      *(v53 + 16) = v86;
      *(v53 + 24) = v55;
      v92(v53 + v47, v105, v2);
      v56 = v96;
      v52(v96, v101, v2);
      v57 = v84[0];
      v58 = swift_allocObject();
      *(v58 + 16) = v54;
      *(v58 + 24) = v55;
      v59 = v92;
      v92(v58 + v57, v56, v2);
      v60 = v88;
      v61 = v104;
      sub_1A35E9850(v85, sub_1A35B1F10, v53, sub_1A35EA548, v58, v88);

      v19 = v105;

      sub_1A35A6588(v61, &qword_1EB0EED58);
      v52(v19, v101, v2);
      v62 = swift_allocObject();
      v63 = v90;
      *(v62 + 16) = v54;
      *(v62 + 24) = v63;
      v10 = v94;
      v59(v62 + v57, v19, v2);
      v13 = v93;
      sub_1A35EA8C8();
      v64 = v97;
      v65 = v60;
      v35 = v101;
      sub_1A362249C();

      sub_1A35A6588(v65, &qword_1EB0EED60);
      v66 = v107;
      v34 = v108;
      (*(v98 + 32))(v108, v64, v107);
      v67 = 0;
    }

    else
    {
      v67 = 1;
      v66 = v107;
      v34 = v108;
    }
  }

  v68 = 1;
  __swift_storeEnumTagSinglePayload(v34, v67, 1, v66);
  OUTLINED_FUNCTION_10_2(*(v2 + 56));
  v69 = v113;
  sub_1A35B22BC(&v113);
  if (!v69)
  {
    sub_1A36213BC();
    v68 = sub_1A362139C();
    if ((v68 & 1) == 0)
    {
      v70 = sub_1A3622E6C();
      OUTLINED_FUNCTION_21(v100, v71, v72, v70);
      (*(v13 + 16))(v19, v35, v2);
      v94 = v10;
      v73 = v102;
      v74 = v103;
      v75 = *(v102 + 16);
      v105 = v19;
      v76 = v95;
      v75(v95, v106, v103);
      sub_1A3622E3C();
      v77 = sub_1A3622E2C();
      v78 = (*(v13 + 80) + 48) & ~*(v13 + 80);
      v79 = (v111 + *(v73 + 80) + v78) & ~*(v73 + 80);
      v80 = swift_allocObject();
      v81 = MEMORY[0x1E69E85E0];
      *(v80 + 16) = v77;
      *(v80 + 24) = v81;
      *(v80 + 32) = *(v2 + 16);
      (*(v13 + 32))(v80 + v78, v105, v2);
      (*(v73 + 32))(v80 + v79, v76, v74);
      sub_1A35D34A0(0, 0, v100, &unk_1A3627F48, v80);
    }

    (*(v102 + 8))(v106, v103);
    v34 = v108;
  }

  v82 = v109;
  sub_1A35C04F4(v34, v109);
  v83 = v110;
  sub_1A35C04F4(v82, v110);
  *(v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED88) + 48)) = v68 & 1;
  sub_1A35C055C(v34);
  sub_1A35C055C(v82);
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35C04F4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED70);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1A35C055C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED70);
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1A35C05BC()
{
  type metadata accessor for TipView();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 80);
  v32 = *(v5 + 64);
  v34 = sub_1A36213AC();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  v8 = *(v6 + 80);
  v33 = *(v9 + 64);
  swift_unknownObjectRelease();
  v10 = v1 + ((v4 + 48) & ~v4);
  OUTLINED_FUNCTION_5_0();
  v11 = OUTLINED_FUNCTION_14_2();
  v12(v11);

  v13 = v10 + v0[11];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  if (*(v10 + v0[13] + 8))
  {
  }

  v14 = v10 + v0[14];
  __swift_destroy_boxed_opaque_existential_1(v14);

  if (*(v14 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v14 + 120);
  v15 = type metadata accessor for TipViewStyleConfiguration();
  v16 = v15[9];
  v17 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_17_1(v17))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v18 + 8))(v14 + v16, v2);
  }

  v19 = v14 + v15[11];
  v20 = type metadata accessor for TipViewEnvironment();
  if (!OUTLINED_FUNCTION_19_0(v20))
  {
    if (*(v19 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(v19 + 24);
    }

    v21 = v15[7];
    v22 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_17_1(v22))
    {
      OUTLINED_FUNCTION_5_0();
      (*(v23 + 8))(v19 + v21, v2);
    }

    __swift_destroy_boxed_opaque_existential_1(v19 + v15[8]);
    v24 = v19 + v15[11];
    if (*(v24 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    if (*(v19 + v15[12]))
    {
    }

    if (*(v19 + v15[13]))
    {
    }
  }

  v25 = v10 + v0[15];
  if (*(v25 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
  }

  v26 = v10 + v0[16];
  v27 = sub_1A3620D6C();
  if (!OUTLINED_FUNCTION_19_0(v27))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v28 + 8))(v26, v15);
  }

  v29 = v4 | v8;
  v30 = (((v4 + 48) & ~v4) + v32 + v8) & ~v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED78);

  (*(v7 + 8))(v1 + v30, v34);

  return MEMORY[0x1EEE6BDD0](v1, v30 + v33, v29 | 7);
}

uint64_t sub_1A35C09A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1A3620E8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A35C0A14()
{
  OUTLINED_FUNCTION_2_4();
  *(v0 + 24) = sub_1A35C0AB0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A35C0C3C;

  return MEMORY[0x1EEE495D0]();
}

uint64_t sub_1A35C0AB0()
{
  sub_1A362103C();
  v1 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = v1;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v2 = sub_1A3620FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE628);
  sub_1A3622AEC();

  v2(v4, 0);
  return v7;
}

void OUTLINED_FUNCTION_18_0()
{
  v2 = *(v1 - 88);
  *v0 = *(v1 - 96);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return type metadata accessor for TipViewEnvironment();
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return swift_allocObject();
}

uint64_t sub_1A35C0BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1ED823318;
  v5 = sub_1A362102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1A35C0C3C()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_1A35C0D38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PopoverTip() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1A36213AC();
  OUTLINED_FUNCTION_14(v8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A35C1718;

  return sub_1A35C0E84(a1, v11, v12, v1 + v6, v1 + v10);
}

uint64_t sub_1A35C0E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1A36213AC();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_1A3622E3C();
  v5[12] = sub_1A3622E2C();
  v8 = sub_1A3622DFC();
  v5[13] = v8;
  v5[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A35C0F78, v8, v7);
}

uint64_t sub_1A35C0F78()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  (*(*(v0 + 80) + 16))(v1, *(v0 + 64), *(v0 + 72));
  sub_1A35A6350(v2, v0 + 16);
  sub_1A35A416C(v1, (v0 + 16), (v0 + 128));
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1A35C1454;

  return sub_1A35C1048((v0 + 128));
}

uint64_t sub_1A35C1048(_BYTE *a1)
{
  *(v2 + 176) = v1;
  *(v2 + 258) = *a1;
  sub_1A3622E3C();
  *(v2 + 184) = sub_1A3622E2C();
  v4 = sub_1A3622DFC();
  *(v2 + 192) = v4;
  *(v2 + 200) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A35C10E8, v4, v3);
}

uint64_t sub_1A35C10E8()
{
  v1 = *(v0 + 258);
  v2 = *(v0 + 176);
  v3 = type metadata accessor for PopoverTip();
  *(v0 + 208) = v3;
  v4 = (v2 + *(v3 + 68));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = *v4;
  *(v0 + 24) = v6;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  sub_1A362289C();
  if (*(v0 + 248) == 1)
  {
    if (v1 != 8)
    {
LABEL_13:

      *(v0 + 32) = v5;
      *(v0 + 40) = v6;
      sub_1A362289C();
      if ((*(v0 + 249) & 1) == 0)
      {
        OUTLINED_FUNCTION_16_3();
        v15 = *(v14 + 8);
        *(v0 + 48) = v16;
        *(v0 + 56) = v15;
        sub_1A362289C();
        if (*(v0 + 250) != 1)
        {
LABEL_18:
          OUTLINED_FUNCTION_5_1();

          return v21();
        }
      }

      v17 = *(v0 + 176);
      *(v0 + 64) = v5;
      *(v0 + 72) = v6;
      *(v0 + 251) = 0;
      sub_1A36228AC();
      v18 = (v17 + *(v3 + 72));
      v19 = *v18;
      v20 = *(v18 + 1);
      *(v0 + 80) = v19;
      *(v0 + 88) = v20;
      *(v0 + 252) = 0;
      sub_1A36228AC();
LABEL_16:
      sub_1A360D3E8();
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v1 != 8)
  {
    goto LABEL_13;
  }

  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  sub_1A362289C();
  if (*(v0 + 253) & 1) != 0 || (OUTLINED_FUNCTION_16_3(), *(v0 + 259) = v7, v9 = *(v8 + 8), *(v0 + 224) = v9, *(v0 + 112) = v7, *(v0 + 120) = v9, sub_1A362289C(), (*(v0 + 254)) || *(*(v0 + 176) + 40) == &type metadata for EmptyTip)
  {
LABEL_17:

    goto LABEL_18;
  }

  if ((sub_1A3622DBC() & 1) == 0 || (sub_1A35CDC10(0, &unk_1ED81E078), v10 = sub_1A361D434(), (*(v0 + 232) = v10) == 0))
  {

    if (sub_1A3622DBC())
    {
      v22 = (*(v0 + 176) + *(*(v0 + 208) + 76));
      v23 = *v22;
      v24 = *(v22 + 1);
      *(v0 + 144) = *v22;
      *(v0 + 152) = v24;
      sub_1A362289C();
      if ((*(v0 + 256) & 1) == 0)
      {
        sub_1A360B47C();
        *(v0 + 160) = v23;
        *(v0 + 168) = v24;
        *(v0 + 257) = v25 & 1;
        sub_1A36228AC();
      }
    }

    v26 = *(v0 + 224);
    *(v0 + 128) = *(v0 + 259);
    *(v0 + 136) = v26;
    *(v0 + 255) = 1;
    sub_1A36228AC();
    goto LABEL_16;
  }

  v11 = v10;
  sub_1A35CDC10(0, &unk_1EB0EE1A8);
  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_1A360BF38;

  return sub_1A361E320(v11);
}

uint64_t sub_1A35C1454()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A35C1568, v5, v4);
}

uint64_t sub_1A35C1568()
{
  OUTLINED_FUNCTION_2_4();

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_1A35C15FC@<X0>(uint64_t *a1@<X8>)
{
  sub_1A362103C();
  sub_1A35C16B4();
  sub_1A362158C();

  sub_1A362156C();
  result = sub_1A362104C();
  *a1 = result;
  return result;
}

unint64_t sub_1A35C16B4()
{
  result = qword_1ED81E1E8;
  if (!qword_1ED81E1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1E8);
  }

  return result;
}

uint64_t sub_1A35C1718()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_1A35C17FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a4;
  v13 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = sub_1A35A63BC(&v11, a1);
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1A35C1920(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1A35BFA80();
  if (v4 == 9)
  {
    if (v8 == 9)
    {
      return result;
    }
  }

  else if (v8 != 9)
  {
    if (v4 == 8)
    {
      if (v8 == 8)
      {
        return result;
      }
    }

    else if (v4 == 7)
    {
      if (v8 == 7)
      {
        return result;
      }
    }

    else if (v8 - 9 <= 0xFFFFFFFD && v4 == v8)
    {
      return result;
    }
  }

  v6 = sub_1A35BFA80();
  if (v8 == 9)
  {
    if (*(v2 + *(a2 + 52) + 8))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
      sub_1A362297C();
    }

    v6 = sub_1A35C1ADC();
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_1A3622A4C();
  sub_1A362193C();
}

uint64_t sub_1A35C1ADC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDB8);
  sub_1A36228AC();
}

uint64_t sub_1A35C1B74(uint64_t a1)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for TipView() + 52) + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
    sub_1A362297C();
  }

  sub_1A35C1ADC();
}

uint64_t sub_1A35C1CCC()
{

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t type metadata accessor for MiniTipViewStyle()
{
  result = qword_1ED81E988;
  if (!qword_1ED81E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A35C1E20()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TipViewStyleConfiguration();
    if (v1 <= 0x3F)
    {
      sub_1A35C1EC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A35C1EC0()
{
  if (!qword_1ED81E6F0)
  {
    type metadata accessor for TipViewEnvironment();
    v0 = sub_1A36217AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED81E6F0);
    }
  }
}

unint64_t sub_1A35C1F18()
{
  result = qword_1ED81E2F0;
  if (!qword_1ED81E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED80);
    sub_1A35A9B30(&qword_1ED81EA88, &unk_1EB0EE2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2F0);
  }

  return result;
}

unint64_t sub_1A35C1FF0()
{
  result = qword_1ED81E168;
  if (!qword_1ED81E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1A8);
    sub_1A35C207C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E168);
  }

  return result;
}

unint64_t sub_1A35C207C()
{
  result = qword_1ED81E190;
  if (!qword_1ED81E190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1C8);
    sub_1A35C2108();
    sub_1A35C216C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E190);
  }

  return result;
}

unint64_t sub_1A35C2108()
{
  result = qword_1ED81E6B0;
  if (!qword_1ED81E6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6B0);
  }

  return result;
}

unint64_t sub_1A35C216C()
{
  result = qword_1ED81E1F8;
  if (!qword_1ED81E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1F8);
  }

  return result;
}

unint64_t sub_1A35C21C0()
{
  result = qword_1ED81E6D0;
  if (!qword_1ED81E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1C0);
    sub_1A36216FC();
    sub_1A35C2108();
    sub_1A35C22A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6D0);
  }

  return result;
}

unint64_t sub_1A35C22A8()
{
  result = qword_1ED81E708;
  if (!qword_1ED81E708)
  {
    sub_1A36216FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E708);
  }

  return result;
}

uint64_t sub_1A35C2304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1A8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1B0);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v37 - v6;
  v7 = type metadata accessor for AppearanceChangeMonitor();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1A36216FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1B8);
  MEMORY[0x1EEE9AC00](v43);
  if (*v2 == 1)
  {
    v40 = &v37 - v17;
    sub_1A35F9EF0(v16);
    sub_1A35C29AC(v2, v12);
    v39 = v3;
    v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v19 = swift_allocObject();
    sub_1A35C2A10(v12, v19 + v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1C0);
    sub_1A35C2108();
    v38 = v2;
    sub_1A35C22A8();
    sub_1A362265C();

    (*(v14 + 8))(v16, v13);
    v20 = v38;
    sub_1A35C29AC(v38, v12);
    v21 = swift_allocObject();
    sub_1A35C2A10(v12, v21 + v18);
    v22 = v20;
    v23 = v42;
    sub_1A35C29AC(v22, v42);
    v24 = swift_allocObject();
    sub_1A35C2A10(v23, v24 + v18);
    v25 = v40;
    v26 = &v40[*(v43 + 36)];
    *v26 = sub_1A35B5000;
    v26[1] = v21;
    v26[2] = sub_1A35FA968;
    v26[3] = v24;
    sub_1A35C28D0(v25, v46);
    swift_storeEnumTagMultiPayload();
    sub_1A35C21C0();
    sub_1A35C1FF0();
    sub_1A3621F1C();
    return sub_1A35C2938(v25);
  }

  else
  {
    sub_1A35C29AC(v2, v12);
    v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v29 = swift_allocObject();
    sub_1A35C2A10(v12, v29 + v28);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1C0);
    (*(*(v30 - 8) + 16))(v5, v41, v30);
    v31 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1C8) + 36)];
    *v31 = sub_1A35FA6B0;
    v31[1] = v29;
    sub_1A35C29AC(v2, v12);
    v32 = swift_allocObject();
    sub_1A35C2A10(v12, v32 + v28);
    v33 = v2;
    v34 = v42;
    sub_1A35C29AC(v33, v42);
    v35 = swift_allocObject();
    sub_1A35C2A10(v34, v35 + v28);
    v36 = &v5[*(v3 + 36)];
    *v36 = sub_1A35C55D4;
    v36[1] = v32;
    v36[2] = sub_1A35FA718;
    v36[3] = v35;
    sub_1A35ABFF4(v5, v46, &qword_1EB0EF1A8);
    swift_storeEnumTagMultiPayload();
    sub_1A35C21C0();
    sub_1A35C1FF0();
    sub_1A3621F1C();
    return sub_1A35FA734(v5);
  }
}

uint64_t sub_1A35C28D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1B8);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1A35C2938(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1B8);
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1A35C29AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppearanceChangeMonitor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35C2A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppearanceChangeMonitor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A35C2A78()
{
  type metadata accessor for TipViewStyleConfiguration();
  if (v0 <= 0x3F)
  {
    sub_1A36033F8(319, &qword_1ED81E628, MEMORY[0x1E697E730]);
    if (v1 <= 0x3F)
    {
      sub_1A36033F8(319, &qword_1ED81E1D8, MEMORY[0x1E6980E88]);
      if (v2 <= 0x3F)
      {
        sub_1A36033F8(319, &qword_1ED81E6F0, type metadata accessor for TipViewEnvironment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A35C2B80()
{
  type metadata accessor for TipViewStyleConfiguration();
  if (v0 <= 0x3F)
  {
    sub_1A35FC1D8(319, &qword_1ED81E628, MEMORY[0x1E697E730]);
    if (v1 <= 0x3F)
    {
      sub_1A35FC1D8(319, &qword_1ED81E6F0, type metadata accessor for TipViewEnvironment);
      if (v2 <= 0x3F)
      {
        sub_1A35C52D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A35C2CC0()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE3C8);
  sub_1A3621A6C();
  sub_1A3621A6C();
  sub_1A3621A6C();
  sub_1A3621F2C();
  swift_getAssociatedConformanceWitness();
  sub_1A35B72D8();
  swift_getWitnessTable();
  sub_1A35BB130();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1A35C2EBC()
{
  type metadata accessor for TipViewStyleConfiguration();
  if (v0 <= 0x3F)
  {
    sub_1A35E7C90();
    if (v1 <= 0x3F)
    {
      sub_1A35C2F58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A35C2F58()
{
  result = qword_1ED81E700;
  if (!qword_1ED81E700)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED81E700);
  }

  return result;
}

uint64_t sub_1A35C3020()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF4F8);
  sub_1A3608034();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for TipViewAnchors()
{
  result = qword_1ED81E480;
  if (!qword_1ED81E480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A35C30D4()
{
  result = sub_1A362165C();
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

void sub_1A35C31A8()
{
  sub_1A35C324C();
  if (v0 <= 0x3F)
  {
    sub_1A36230DC();
    if (v1 <= 0x3F)
    {
      sub_1A36230DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A35C324C()
{
  if (!qword_1ED81EF18[0])
  {
    v0 = sub_1A36230DC();
    if (!v1)
    {
      atomic_store(v0, qword_1ED81EF18);
    }
  }
}

unint64_t sub_1A35C32C0()
{
  result = qword_1ED81E3C8;
  if (!qword_1ED81E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E3C8);
  }

  return result;
}

unint64_t sub_1A35C3318()
{
  result = qword_1ED81E3D0;
  if (!qword_1ED81E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E3D0);
  }

  return result;
}

unint64_t sub_1A35C338C()
{
  result = qword_1ED81E2B8;
  if (!qword_1ED81E2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEEC0);
    sub_1A35C3418();
    sub_1A35F06D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2B8);
  }

  return result;
}

unint64_t sub_1A35C3418()
{
  result = qword_1ED81E2C0;
  if (!qword_1ED81E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEE88);
    sub_1A35F05F0();
    sub_1A35C34A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2C0);
  }

  return result;
}

unint64_t sub_1A35C34A4()
{
  result = qword_1ED81E300;
  if (!qword_1ED81E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEE98);
    type metadata accessor for CGRect(255);
    sub_1A35A9B30(&qword_1ED81E2A8, &qword_1EB0EEE98);
    sub_1A35C35EC();
    swift_getOpaqueTypeConformance2();
    sub_1A35A9B30(&qword_1ED81E338, &qword_1EB0EEEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E300);
  }

  return result;
}

unint64_t sub_1A35C35EC()
{
  result = qword_1ED81E298;
  if (!qword_1ED81E298)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E298);
  }

  return result;
}

uint64_t Tips.Action.init(id:perform:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (!a2)
  {
    result = sub_1A3622BCC();
  }

  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  return result;
}

uint64_t sub_1A35C36B0()
{
  type metadata accessor for TipViewAnchors();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEF80);
  *(v0 + 16) = sub_1A3622B1C();
  result = sub_1A362164C();
  qword_1ED823308 = v0;
  return result;
}

uint64_t sub_1A35C3734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = a1;
  v86 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE60);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_5(&v68 - v5);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE68);
  OUTLINED_FUNCTION_3();
  v78 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_5(&v68 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE70);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_5(&v68 - v13);
  v14 = sub_1A3621CEC();
  OUTLINED_FUNCTION_3();
  v75 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE78);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8_5(&v68 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE80);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE88);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v68 - v31;
  if (*(v3 + 128) == 4)
  {
    sub_1A35ECF18(v3 + 64, &v93, &qword_1EB0EED38);
    v33 = *(&v94 + 1);
    __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
    v34 = sub_1A35BDBDC(v33);
    __swift_destroy_boxed_opaque_existential_1(&v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE98);
    OUTLINED_FUNCTION_0_0();
    (*(v35 + 16))(v32, v82);
    v36 = &v32[*(v29 + 36)];
    *v36 = 4;
    *(v36 + 1) = v34;
    *(v36 + 2) = 0;
    sub_1A35ECF18(v32, v25, &qword_1EB0EEE90);
    swift_storeEnumTagMultiPayload();
    sub_1A35F05F0();
    sub_1A35C34A4();
    sub_1A3621F1C();
    sub_1A35ECF18(v28, v83, &qword_1EB0EEE88);
    swift_storeEnumTagMultiPayload();
    sub_1A35C3418();
    sub_1A35F06D4();
    OUTLINED_FUNCTION_2_15();
    sub_1A3621F1C();
    sub_1A35A6588(v28, &qword_1EB0EEE88);
    v37 = v32;
    v38 = &qword_1EB0EEE90;
    return sub_1A35A6588(v37, v38);
  }

  v71 = v25;
  v72 = v29;
  v73 = v22;
  v74 = v28;
  v39 = v85;
  sub_1A35ECF18(v3, &v93, &qword_1EB0EEDB0);
  if (!*(&v94 + 1))
  {
    sub_1A35A6588(&v93, &qword_1EB0EEDB0);
    v61 = v39;
    v44 = v82;
LABEL_15:
    v62 = *(v3 + 57);
    v63 = v81;
    v64 = v81 + *(v61 + 36);
    sub_1A35ECF18(v3 + 64, &v93, &qword_1EB0EED38);
    sub_1A35C42FC(&v93, v96, v64 + 8);
    v65 = *(v3 + 112);
    v66 = *(v3 + 56) | (v62 << 8);
    *(v64 + 56) = *(v3 + 40);
    *(v64 + 72) = v66;
    *(v64 + 80) = v65;
    *v64 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE98);
    OUTLINED_FUNCTION_0_0();
    (*(v67 + 16))(v63, v44);
    sub_1A35ECF18(v63, v83, &qword_1EB0EEE60);
    swift_storeEnumTagMultiPayload();
    sub_1A35C3418();
    sub_1A35F06D4();
    sub_1A3621F1C();
    v37 = v63;
    v38 = &qword_1EB0EEE60;
    return sub_1A35A6588(v37, v38);
  }

  v91[0] = v93;
  v91[1] = v94;
  v92 = v95;
  v40 = *(v3 + 192);

  if ((v40 & 1) == 0)
  {
    sub_1A362303C();
    v41 = sub_1A36221DC();
    sub_1A362166C();

    sub_1A3621CDC();
    swift_getAtKeyPath();

    (*(v75 + 8))(v18, v14);
  }

  v42 = sub_1A35F2BB0();
  v43 = sub_1A35DD468(v91, v42);

  v44 = v82;
  if (!v43)
  {
    sub_1A35F07B8(v91);
    v61 = v39;
    goto LABEL_15;
  }

  v75 = v9;
  v81 = v19;
  v45 = *(v3 + 200);
  v46 = *(v3 + 208);
  v48 = *(v3 + 216);
  v47 = *(v3 + 224);
  v69 = *(v3 + 232);
  v68 = *(v3 + 240);
  *v90 = v45;
  *&v90[8] = v46;
  *&v90[16] = v48;
  *&v90[24] = v47;
  v90[32] = v69;
  *&v90[40] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEEB0);
  sub_1A36228BC();
  v49 = v77;
  v70 = v43;
  sub_1A35EEE04(v43, &v93);
  v97 = v93;
  sub_1A35F080C(&v97);

  if (*(v3 + 57) == 4)
  {
    v50 = 0;
  }

  else
  {
    v50 = *(v3 + 57);
  }

  sub_1A35ECF18(v3 + 64, v90, &qword_1EB0EED38);
  sub_1A35C42FC(v90, v90[40], &v88);
  *v90 = v45;
  *&v90[8] = v46;
  *&v90[16] = v48;
  *&v90[24] = v47;
  v90[32] = v69;
  *&v90[40] = v68;
  sub_1A362289C();
  v51 = v87;
  MidX = 0.0;
  MidY = 0.0;
  if ((v87 & 1) == 0)
  {
    v98.origin.x = OUTLINED_FUNCTION_5_9();
    MidX = CGRectGetMidX(v98);
    v99.origin.x = OUTLINED_FUNCTION_5_9();
    MidY = CGRectGetMidY(v99);
  }

  v54 = *(v3 + 112);
  *&v90[7] = v88;
  *&v90[23] = v89[0];
  *&v90[32] = *(v89 + 9);
  v55 = v76;
  (*(v78 + 32))(v76, v49, v79);
  v56 = v55 + *(v75 + 36);
  *v56 = v50;
  v57 = *&v90[16];
  *(v56 + 1) = *v90;
  *(v56 + 17) = v57;
  *(v56 + 33) = *&v90[32];
  *(v56 + 56) = MidX;
  *(v56 + 64) = MidY;
  *(v56 + 72) = v51 | (v50 << 8);
  *(v56 + 80) = v54;
  v58 = v80;
  sub_1A35C4220(v55, v80);
  sub_1A35ECF18(v58, v71, &qword_1EB0EEE70);
  swift_storeEnumTagMultiPayload();
  sub_1A35F05F0();
  sub_1A35C34A4();
  v59 = v74;
  sub_1A3621F1C();
  sub_1A35ECF18(v59, v83, &qword_1EB0EEE88);
  swift_storeEnumTagMultiPayload();
  sub_1A35C3418();
  sub_1A35F06D4();
  OUTLINED_FUNCTION_2_15();
  sub_1A3621F1C();

  sub_1A35A6588(v59, &qword_1EB0EEE88);
  sub_1A35A6588(v58, &qword_1EB0EEE70);
  return sub_1A35F07B8(v91);
}

uint64_t sub_1A35C4220(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE70);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A35C428C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35C42FC@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1A35A63BC(a1, &v8);
  v9[24] = a2;
  sub_1A35C428C(&v8, &v6);
  sub_1A35A63BC(&v6, a3);
  *&v7[9] = *&v9[9];
  v6 = v8;
  *v7 = *v9;
  *(a3 + 40) = v9[24];
  return __swift_destroy_boxed_opaque_existential_1(&v6);
}

uint64_t sub_1A35C436C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v4 = sub_1A36220CC();
  v5 = OUTLINED_FUNCTION_0_27(v4, v152);
  v139 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_8_5(v7);
  v8 = sub_1A3621F5C();
  v9 = OUTLINED_FUNCTION_0_27(v8, &__src[13]);
  v128 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_8_5(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF020);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v113 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF028);
  OUTLINED_FUNCTION_0_27(v16, __src);
  v120 = v17;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF030);
  OUTLINED_FUNCTION_0_27(v20, &__src[4]);
  v122 = v21;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF038);
  OUTLINED_FUNCTION_0_27(v24, &v153);
  v124 = v25;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF040);
  OUTLINED_FUNCTION_0_27(v28, &__src[10]);
  v125 = v29;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF048);
  OUTLINED_FUNCTION_0_27(v32, v150);
  v131 = v33;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF050);
  OUTLINED_FUNCTION_0_27(v36, v151);
  v135 = v37;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v39);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF058);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v41);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF060);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v43);
  sub_1A36221FC();
  v147 = a1;
  v44 = v2;
  v148 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF068);
  sub_1A35F4B34();
  sub_1A362170C();
  v116 = sub_1A3622A2C();
  v115 = v45;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = &v15[*(v12 + 36)];
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF080) + 36);
  v48 = sub_1A362272C();
  v49 = sub_1A3621A7C();
  v50 = sub_1A362220C();
  v114 = v15;
  v51 = v50;
  v52 = sub_1A3622A0C();
  v117 = v12;
  v53 = v52;
  v55 = v54;
  v56 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF088) + 36)];
  sub_1A35F4348(v2, v56);

  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF090) + 36));
  *v57 = v53;
  v57[1] = v55;
  *v47 = v48;
  *(v47 + 1) = v49;
  v47[16] = v51;
  v58 = v115;
  *v46 = v116;
  v46[1] = v58;
  v59 = *(v2 + 80);
  *&v151[0] = *(v2 + 72);
  *(&v151[0] + 1) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF098);
  sub_1A36228BC();
  OUTLINED_FUNCTION_7_9();
  swift_getKeyPath();
  v60 = v118;
  v61 = OUTLINED_FUNCTION_13_2();
  v62 = v114;
  sub_1A35F459C(v63, v64, v61);

  sub_1A35C5114(v62);
  OUTLINED_FUNCTION_10_7(*(v44 + 64), *(v44 + 56));
  OUTLINED_FUNCTION_7_9();
  swift_getKeyPath();
  v65 = v121;
  v66 = OUTLINED_FUNCTION_13_2();
  sub_1A35F46B4(v67, v68, v66);

  OUTLINED_FUNCTION_6_8();
  v69 = v119;
  v70(v60, v119);
  v71 = *(v44 + 104);
  v120 = v44;
  OUTLINED_FUNCTION_10_7(*(v44 + 112), v71);
  v72 = __src[0];
  v73 = __src[1];
  v74 = __src[2];
  v75 = swift_allocObject();
  v75[2] = v72;
  v75[3] = v73;
  v75[4] = v74;
  v76 = sub_1A35F4D78();
  v77 = sub_1A35F4CD0();

  __src[0] = v117;
  OUTLINED_FUNCTION_9_6();
  *(v78 - 256) = v76;
  OUTLINED_FUNCTION_2_18();
  swift_getOpaqueTypeConformance2();
  __src[0] = v69;
  OUTLINED_FUNCTION_9_6();
  *(v80 - 256) = v79;
  __src[3] = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v123;
  sub_1A36225CC();

  OUTLINED_FUNCTION_6_8();
  v83(v65, v82);
  v84 = v126;
  sub_1A3621F4C();
  LOBYTE(v76) = sub_1A36221FC();
  sub_1A36221EC();
  sub_1A36221EC();
  if (sub_1A36221EC() != v76)
  {
    sub_1A36221EC();
  }

  __src[0] = v82;
  OUTLINED_FUNCTION_9_6();
  *(v85 - 256) = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_2_18();
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v146;
  v88 = v144;
  sub_1A362257C();
  OUTLINED_FUNCTION_6_8();
  v89(v84, v132);
  OUTLINED_FUNCTION_6_8();
  v90(v88, v87);
  v91 = v120;
  OUTLINED_FUNCTION_11_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  sub_1A362289C();
  v92 = v141;
  v93 = v137;
  if (LOBYTE(v151[0]) == 1)
  {
    sub_1A36220BC();
  }

  else
  {
    sub_1A36220AC();
  }

  v94 = v129;
  v95 = v127;
  sub_1A36221FC();
  __src[0] = v146;
  __src[1] = v86;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = v145;
  sub_1A362251C();
  OUTLINED_FUNCTION_6_8();
  v98(v93, v142);
  OUTLINED_FUNCTION_6_8();
  v99(v97, v94);
  OUTLINED_FUNCTION_11_8();
  sub_1A362289C();
  if (LOBYTE(v151[0]) == 1)
  {
    v100 = sub_1A3622DDC() ^ 1;
  }

  else
  {
    v100 = 0;
  }

  LOBYTE(v151[0]) = v100 & 1;
  __src[0] = v94;
  __src[1] = v96;
  swift_getOpaqueTypeConformance2();
  v101 = v133;
  v102 = v134;
  sub_1A36225AC();
  OUTLINED_FUNCTION_6_8();
  v103(v95, v102);
  sub_1A35F4E5C(v91, __src);
  v104 = swift_allocObject();
  sub_1A35F4E94(__src, v104 + 16);
  sub_1A35FB31C(sub_1A35F4ECC, v104, v151);
  (*(v135 + 32))(v92, v101, v136);
  v105 = (v92 + *(v130 + 36));
  v106 = v151[1];
  *v105 = v151[0];
  v105[1] = v106;
  v105[2] = v151[2];
  sub_1A3622DCC();
  sub_1A35F3E6C();
  sub_1A3622A2C();
  sub_1A3621AFC();
  v107 = v140;
  sub_1A35F4F48(v92, v140, &qword_1EB0EF058);
  memcpy((v107 + *(v138 + 36)), __src, 0x70uLL);
  v108 = *(v91 + 24);
  v109 = v107;
  v110 = v143;
  sub_1A35F4F48(v109, v143, &qword_1EB0EF060);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0A8);
  v112 = (v110 + *(result + 36));
  *v112 = 0;
  v112[1] = (v108 & 1) == 0;
  return result;
}

uint64_t sub_1A35C50E4@<X0>(void *a1@<X8>)
{
  result = sub_1A362199C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A35C5114(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF020);
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1A35C5180()
{
  MEMORY[0x1A58F45C0](v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

void sub_1A35C524C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A35C52D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A35C52D4()
{
  if (!qword_1ED81E600)
  {
    v0 = sub_1A36228CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED81E600);
    }
  }
}

uint64_t sub_1A35C5344(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_11_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A35C53B0()
{
  result = qword_1ED81E2D0;
  if (!qword_1ED81E2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF310);
    sub_1A35C543C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2D0);
  }

  return result;
}

unint64_t sub_1A35C543C()
{
  result = qword_1ED81E2D8;
  if (!qword_1ED81E2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF308);
    sub_1A35C54C8();
    sub_1A35C5580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2D8);
  }

  return result;
}

unint64_t sub_1A35C54C8()
{
  result = qword_1ED81E2E8;
  if (!qword_1ED81E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF318);
    sub_1A36020D4();
    sub_1A3602E28(&qword_1ED81E6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2E8);
  }

  return result;
}

unint64_t sub_1A35C5580()
{
  result = qword_1ED81E658;
  if (!qword_1ED81E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E658);
  }

  return result;
}

uint64_t sub_1A35C55F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_3_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A35C5608(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1A35C5634(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_3_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ButtonLayout(uint64_t result, int a2, int a3)
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

uint64_t sub_1A35C568C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35C58C0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A35C5910()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  if (*(v0 + v7))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1A35C59EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35C5A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A3620C5C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1A35C5AB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A3620C5C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35C5B78(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  v8 = *(a3 + 32);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = *(a3 + 84);
  }

  else
  {
    v10 = *(a3 + 24);
    v11 = sub_1A362152C();
    if (*(*(v11 - 8) + 84) != a2)
    {
      v12 = OUTLINED_FUNCTION_4_3();
      v13 = a2;
      v8 = v10;
      goto LABEL_11;
    }

    v8 = v11;
    v9 = *(a3 + 88);
  }

  v12 = &a1[v9];
  v13 = a2;
LABEL_11:

  return __swift_getEnumTagSinglePayload(v12, v13, v8);
}

_BYTE *sub_1A35C5C7C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
    return result;
  }

  v8 = *(a4 + 32);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = *(a4 + 84);
  }

  else
  {
    v10 = *(a4 + 24);
    v11 = sub_1A362152C();
    if (*(*(v11 - 8) + 84) != a3)
    {
      v12 = OUTLINED_FUNCTION_4_3();
      v13 = a2;
      v14 = a2;
      v8 = v10;
      goto LABEL_9;
    }

    v8 = v11;
    v9 = *(a4 + 88);
  }

  v12 = &v5[v9];
  v13 = a2;
  v14 = a2;
LABEL_9:

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
}

uint64_t sub_1A35C5E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE9A8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_1A35C5F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE9A8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

id sub_1A35C605C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isGeometryFlipped];
  *a2 = result;
  return result;
}

uint64_t sub_1A35C60A4()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A35C60EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA00);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A35C6154()
{
  type metadata accessor for Tips.MicaView();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v1 + v4;
  sub_1A35D9A44(*(v1 + v4), *(v1 + v4 + 8), *(v1 + v4 + 16));
  v8 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A362178C();
    OUTLINED_FUNCTION_0_0();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1A35C62BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA48);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1A35C6310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA48);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

__n128 sub_1A35C63AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1A35C6484()
{
  type metadata accessor for PopoverTip();
  sub_1A3621A6C();
  sub_1A35A8B38();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1A35C64D0()
{
  type metadata accessor for PopoverTip();
  sub_1A3621A6C();
  sub_1A35A8B38();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1A35C6524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3620E9C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1A35C65D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A3620E9C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A35C66A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Tips.Rule();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1A3620E8C();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1A35C676C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Tips.Rule();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_1A3620E8C();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1A35C685C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A35C689C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s15MaxDisplayCountVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15MaxDisplayCountVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1A35C6B38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35BC84C();
  *a1 = result;
  return result;
}

uint64_t sub_1A35C6B68()
{
  sub_1A36221CC();
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35C6BF8()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_5_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1A35C6CEC()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  v7 = (v6 + v5 + *(v3 + 80)) & ~*(v3 + 80);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_10_4();
  v9 = v8;
  v11 = (v7 + v10 + *(v8 + 80)) & ~*(v8 + 80);
  OUTLINED_FUNCTION_10_4();
  v13(v0 + v12);
  (*(v4 + 8))(v0 + v7, v1);
  (*(v9 + 8))(v0 + v11, v2);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

uint64_t sub_1A35C6ED4()
{
  type metadata accessor for TipAnchorViewModifier();
  sub_1A3621A6C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_23();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C6FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED40);
  OUTLINED_FUNCTION_8_7();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_1_16();
  sub_1A35A9B78(v0, &qword_1EB0EED40);
  OUTLINED_FUNCTION_0_23();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C7074()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED40);
  OUTLINED_FUNCTION_8_7();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_1_16();
  sub_1A35A9B78(v0, &qword_1EB0EED40);
  OUTLINED_FUNCTION_0_23();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C712C()
{

  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1A35C71B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1A35C7228()
{
  OUTLINED_FUNCTION_4_11();
  type metadata accessor for TipViewBackground.StyleModifier();
  swift_getWitnessTable();
  sub_1A3621FAC();
  sub_1A3621A6C();
  sub_1A3621F2C();
  sub_1A362209C();
  sub_1A3621A6C();
  sub_1A3621F2C();
  sub_1A36217EC();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_4_11();
  sub_1A362208C();
  sub_1A3621A6C();
  sub_1A3621F2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C7540()
{
  type metadata accessor for TipAnchorViewModifier();
  OUTLINED_FUNCTION_11_7();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_8_9();
  v5 = OUTLINED_FUNCTION_10_6();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v4, v2 | 7);
}

uint64_t sub_1A35C7618()
{
  type metadata accessor for TipAnchorViewModifier();
  OUTLINED_FUNCTION_11_7();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 48) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_9();
  v5 = OUTLINED_FUNCTION_10_6();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1A35C7704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35F2BB0();
  *a1 = result;
  return result;
}

uint64_t sub_1A35C773C()
{
  OUTLINED_FUNCTION_7_8();
  type metadata accessor for TipAnchorViewModifier();
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  sub_1A3621FAC();
  type metadata accessor for CGRect(255);
  OUTLINED_FUNCTION_7_8();
  type metadata accessor for TipAnchorViewModifier.AnchorKey();
  OUTLINED_FUNCTION_4_13();
  swift_getWitnessTable();
  sub_1A362204C();
  sub_1A3621A6C();
  sub_1A35F33CC();
  OUTLINED_FUNCTION_7_8();
  sub_1A36220DC();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_3_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_11();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C78F8()
{
  OUTLINED_FUNCTION_30_1();
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_8();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  __swift_destroy_boxed_opaque_existential_1(v3);

  if (*(v3 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v3 + 120);
  v4 = *(v0 + 36);
  v5 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_20_0(v3 + v4))
  {
    OUTLINED_FUNCTION_4_14();
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = OUTLINED_FUNCTION_18_1();
  if (!OUTLINED_FUNCTION_13_3(v7))
  {
    if (*(v0 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 24);
    }

    v8 = *(v3 + 28);
    v9 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_20_0(v0 + v8))
    {
      OUTLINED_FUNCTION_4_14();
      (*(v10 + 8))(v0 + v8, v9);
    }

    v11 = OUTLINED_FUNCTION_12_5();
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    OUTLINED_FUNCTION_15_1();
    if (v13)
    {
    }

    OUTLINED_FUNCTION_15_1();
    if (v14)
    {
    }
  }

  OUTLINED_FUNCTION_31_1();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1A35C7A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1A35C7B7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1A35C7C5C()
{
  v2 = sub_1A362127C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = *(v7 + 64);
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 80);
  v11 = (v6 + v8 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v4 + 8))(v1 + v6, v2);
  v14 = v1 + v11;
  __swift_destroy_boxed_opaque_existential_1(v1 + v11);

  if (*(v1 + v11 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v14 + 120);
  v15 = *(v0 + 36);
  v16 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_20_0(v14 + v15))
  {
    OUTLINED_FUNCTION_4_14();
    (*(v17 + 8))(v14 + v15, v16);
  }

  v18 = OUTLINED_FUNCTION_18_1();
  if (!OUTLINED_FUNCTION_13_3(v18))
  {
    if (*(v0 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 24);
    }

    v19 = *(v14 + 28);
    v20 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_20_0(v0 + v19))
    {
      OUTLINED_FUNCTION_4_14();
      (*(v21 + 8))(v0 + v19, v20);
    }

    v22 = OUTLINED_FUNCTION_12_5();
    if (v23)
    {
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    OUTLINED_FUNCTION_15_1();
    if (v24)
    {
    }

    OUTLINED_FUNCTION_15_1();
    if (v25)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v1, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | v10 | 7);
}

uint64_t sub_1A35C7E88()
{
  sub_1A362127C();
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35C7F34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1A35C7FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35C803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF198);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1A35C80DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF198);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35C81B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A35C824C()
{
  type metadata accessor for SymbolAppearanceEffect();
  swift_getWitnessTable();
  sub_1A3621FAC();
  sub_1A36221AC();
  sub_1A3621A6C();
  sub_1A3621A6C();
  swift_getWitnessTable();
  sub_1A35B29F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C8354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_12();
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF200);
  OUTLINED_FUNCTION_1_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = *(a3 + 20);
LABEL_7:
    v9 = v3 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208);
  OUTLINED_FUNCTION_1_1();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = *(a3 + 24);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_9();
  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_1A35C849C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_8_12();
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_1_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF200);
    OUTLINED_FUNCTION_1_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208);
      OUTLINED_FUNCTION_1_1();
      if (*(v16 + 84) != a3)
      {
        *(v4 + a4[7] + 8) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1A35C85DC()
{
  type metadata accessor for MiniTipView(0);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_destroy_boxed_opaque_existential_1(v1 + v4);

  if (*(v1 + v4 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v7 + 120);
  v8 = type metadata accessor for TipViewStyleConfiguration();
  v9 = *(v8 + 36);
  v10 = sub_1A362190C();
  if (!__swift_getEnumTagSinglePayload(v7 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v7 + *(v8 + 44);
  v13 = type metadata accessor for TipViewEnvironment();
  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    if (*(v12 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(v12 + 24);
    }

    v14 = v13[7];
    v15 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_14_5(v15))
    {
      OUTLINED_FUNCTION_5_0();
      (*(v16 + 8))(v12 + v14, v9);
    }

    __swift_destroy_boxed_opaque_existential_1(v12 + v13[8]);
    v17 = v12 + v13[11];
    if (*(v17 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    OUTLINED_FUNCTION_13_4();
    if (v18)
    {
    }

    OUTLINED_FUNCTION_13_4();
    if (v19)
    {
    }
  }

  v20 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3621A2C();
    OUTLINED_FUNCTION_0_0();
    (*(v21 + 8))(v7 + v20);
  }

  else
  {
  }

  v22 = v7 + *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_29;
  }

  if (*(v22 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v22 + 24);
  }

  v23 = v13[7];
  v24 = sub_1A36221CC();
  if (!OUTLINED_FUNCTION_14_5(v24))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v25 + 8))(v22 + v23, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v22 + v13[8]);
  v26 = v22 + v13[11];
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_13_4();
  if (v27)
  {
  }

  OUTLINED_FUNCTION_13_4();
  if (v28)
  {
LABEL_29:
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1A35C8914()
{
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_destroy_boxed_opaque_existential_1(v1 + v4);

  if (*(v1 + v4 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v7 + 120);
  v8 = *(v0 + 36);
  v9 = sub_1A362190C();
  if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v9))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v7 + *(v0 + 44);
  v12 = type metadata accessor for TipViewEnvironment();
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    if (*(v11 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(v11 + 24);
    }

    v13 = v12[7];
    v14 = sub_1A36221CC();
    if (!__swift_getEnumTagSinglePayload(v11 + v13, 1, v14))
    {
      OUTLINED_FUNCTION_5_0();
      (*(v15 + 8))(v11 + v13, v14);
    }

    __swift_destroy_boxed_opaque_existential_1(v11 + v12[8]);
    v16 = v11 + v12[11];
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    if (*(v11 + v12[12]))
    {
    }

    if (*(v11 + v12[13]))
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

double sub_1A35C8B0C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1A35C8B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_10_9();
    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2F8);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1A35C8BB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2F8);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35C8C48(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_1_1();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
    return (v7 + 1);
  }
}

void sub_1A35C8CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_12();
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_1_1();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 24) + 24) = (a2 - 1);
  }
}

uint64_t sub_1A35C8D90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF220);
  sub_1A3601A5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A35C8DFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A35C8E3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35C8E74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF408);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_11_2();
  v4(v3);
  return a2;
}

uint64_t sub_1A35C8F30(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF200);
    OUTLINED_FUNCTION_1_1();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF4E8);
      OUTLINED_FUNCTION_1_1();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208);
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1A35C906C()
{
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_1_1();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF200);
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF4E8);
      OUTLINED_FUNCTION_1_1();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208);
        v10 = v2[7];
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1A35C919C()
{
  v1 = type metadata accessor for TipViewStyleConfiguration();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1(v0 + v3);

  if (*(v0 + v3 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v5 + 120);
  v6 = *(v1 + 36);
  v7 = sub_1A362190C();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  v8 = v5 + *(v1 + 44);
  v9 = type metadata accessor for TipViewEnvironment();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    if (*(v8 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(v8 + 24);
    }

    v10 = v9[7];
    v11 = sub_1A36221CC();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }

    __swift_destroy_boxed_opaque_existential_1(v8 + v9[8]);
    v12 = v8 + v9[11];
    if (*(v12 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    if (*(v8 + v9[12]))
    {
    }

    if (*(v8 + v9[13]))
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35C93E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TipViewStyleConfiguration();
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1A35C9490()
{
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_1_1();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24) + 24) = (v0 - 1);
  }
}

uint64_t sub_1A35C9524()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621BBC();
  *v0 = result;
  return result;
}

uint64_t sub_1A35C9640()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35C9678()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621C5C();
  *v0 = result;
  return result;
}

uint64_t sub_1A35C96D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A362207C();
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[8];
    }

    else
    {
      sub_1A36221CC();
      OUTLINED_FUNCTION_1_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7D0);
        OUTLINED_FUNCTION_1_1();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[13];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208);
          v11 = a3[14];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1A35C9830(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1A362207C();
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[8];
    }

    else
    {
      sub_1A36221CC();
      OUTLINED_FUNCTION_1_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7D0);
        OUTLINED_FUNCTION_1_1();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[13];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208);
          v11 = a4[14];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1A35C99B8()
{
  type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_destroy_boxed_opaque_existential_1(v1 + v4);

  if (*(v1 + v4 + 64))
  {
  }

  v8 = v0[8];
  sub_1A362207C();
  OUTLINED_FUNCTION_0_19();
  (*(v9 + 8))(v7 + v8);
  v10 = v0[10];
  v11 = sub_1A36221CC();
  OUTLINED_FUNCTION_0_0();
  v13 = *(v12 + 8);
  v13(v7 + v10, v11);
  if (*(v7 + v0[11] + 8))
  {
  }

  v14 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3621A4C();
    OUTLINED_FUNCTION_0_19();
    (*(v15 + 8))(v7 + v14);
  }

  else
  {
  }

  v16 = v7 + v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_18;
  }

  v26 = v1;
  v17 = v6;
  if (*(v16 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v16 + 24);
  }

  v18 = type metadata accessor for TipViewEnvironment();
  v19 = v18[7];
  if (!__swift_getEnumTagSinglePayload(v16 + v19, 1, v11))
  {
    v13(v16 + v19, v11);
  }

  __swift_destroy_boxed_opaque_existential_1(v16 + v18[8]);
  v20 = v16 + v18[11];
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  OUTLINED_FUNCTION_13_4();
  v6 = v17;
  if (v21)
  {
  }

  OUTLINED_FUNCTION_13_4();
  v1 = v26;
  v4 = (v3 + 16) & ~v3;
  if (v22)
  {
LABEL_18:
  }

  v23 = v7 + v0[15];
  if (*(v23 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
  }

  v24 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_11_10();
  __swift_destroy_boxed_opaque_existential_1(v1 + v24);

  return MEMORY[0x1EEE6BDD0](v1, v24 + 40, v3 | 7);
}

uint64_t sub_1A35C9CC0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE268);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_11_2();
  v4(v3);
  return a2;
}

uint64_t sub_1A35C9D44(uint64_t *a1, uint64_t a2, int *a3)
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
    sub_1A36221CC();
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      sub_1A3621A4C();
      OUTLINED_FUNCTION_1_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        v10 = type metadata accessor for TipViewEnvironment();
        v11 = a3[11];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_1A35C9E4C(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A36221CC();
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_1A3621A4C();
      OUTLINED_FUNCTION_1_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        v10 = type metadata accessor for TipViewEnvironment();
        v11 = a4[11];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1A35CA0B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35CA26C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1A35CA2C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 popoverLayoutMargins];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_1A35CA304@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 _overrideAllowsHitTestingOnBackgroundViews];
  *a2 = result;
  return result;
}

id sub_1A35CA34C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 _prefersZoomTransitions];
  *a2 = result;
  return result;
}

uint64_t sub_1A35CA394()
{
  MEMORY[0x1A58F45C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A35CA3CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35CA404()
{
  OUTLINED_FUNCTION_19_3();
  result = TipUIPopoverViewController.backgroundColor.getter();
  *v0 = result;
  return result;
}

void sub_1A35CA480()
{
  OUTLINED_FUNCTION_19_3();
  *v0 = TipUIPopoverViewController.imageSize.getter();
  *(v0 + 8) = v1;
}

uint64_t sub_1A35CA524()
{
  OUTLINED_FUNCTION_19_3();
  result = TipUIPopoverViewController.presentationDelegate.getter();
  *v0 = result;
  return result;
}

id sub_1A35CA550()
{
  OUTLINED_FUNCTION_19_3();
  result = TipUIPopoverViewController.sourceItem.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1A35CA58C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35CA754()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35CA7F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A35CA7CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A35CA824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A35CA908()
{
  result = qword_1ED81D7C8;
  if (!qword_1ED81D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE248);
    sub_1A35CA994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D7C8);
  }

  return result;
}

unint64_t sub_1A35CA994()
{
  result = qword_1ED81D800;
  if (!qword_1ED81D800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE288);
    sub_1A35AFC60();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D800);
  }

  return result;
}

uint64_t sub_1A35CAB54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35E3D84();
  *a1 = result;
  return result;
}

uint64_t sub_1A35CAB7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35CABAC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CABB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35FBF34(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CABE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35CAC14(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CAC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A35CAC58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A35CAC58(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1A35CAC7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A35CACB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A35CACB0(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1A35CACF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35CAD20(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CADAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35CB480();
  *a1 = result;
  return result;
}

void *sub_1A35CADD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A35CADF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35CA824(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CAE44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A35CAE64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1A35CAEA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A3622B5C();

  *a1 = v2;
  return result;
}

uint64_t sub_1A35CAEE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35CAF14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A35CAF18(uint64_t a1)
{
  v2 = sub_1A35CB064(&qword_1EB0EE2E8, type metadata accessor for Name);
  v3 = sub_1A35CB064(&unk_1EB0EE2F0, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A35CB064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A35CB238()
{
  v0 = sub_1A3622B8C();
  v2 = v1;
  if (v0 == sub_1A3622B8C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A362345C();
  }

  return v5 & 1;
}

uint64_t sub_1A35CB2BC()
{
  sub_1A3622B8C();
  sub_1A3622BFC();
}

uint64_t sub_1A35CB310()
{
  sub_1A3622B8C();
  sub_1A36234CC();
  sub_1A3622BFC();
  v0 = sub_1A36234EC();

  return v0;
}

uint64_t sub_1A35CB388(uint64_t a1, id *a2)
{
  result = sub_1A3622B6C();
  *a2 = 0;
  return result;
}

uint64_t sub_1A35CB400(uint64_t a1, id *a2)
{
  v3 = sub_1A3622B7C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A35CB480()
{
  sub_1A3622B8C();
  v0 = sub_1A3622B5C();

  return v0;
}

uint64_t sub_1A35CB4B8()
{
  v0 = sub_1A3622B8C();
  v1 = MEMORY[0x1A58F32B0](v0);

  return v1;
}

uint64_t sub_1A35CB504(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  (*(v6 + 16))(&v19 - v11, a1, a2, v10);
  if (swift_dynamicCast())
  {
    v13 = *(v6 + 8);
    v13(a1, a2);
    v14 = v19;
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v8, a1, a2);
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v15((v17 + v16), v8, a2);
    v13 = *(v6 + 8);
    v14 = a2;
  }

  v13(v12, a2);
  return v14;
}

uint64_t sub_1A35CB6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TipViewStyleConfiguration();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnyTipViewStyle.WrapperView();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1A35B63C8(a1, v11);
  (*(v6 + 16))(v8, a2, a3);
  sub_1A35CB8A8(v11, v8, a3, v14);
  swift_getWitnessTable();
  return sub_1A362295C();
}

uint64_t sub_1A35CB8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AnyTipViewStyle.WrapperView();
  v9 = *(v8 + 40);
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  swift_storeEnumTagMultiPayload();
  sub_1A35CC64C(a1, a4 + *(v8 + 36), type metadata accessor for TipViewStyleConfiguration);
  v10 = *(*(a3 - 8) + 32);

  return v10(a4, a2, a3);
}

uint64_t sub_1A35CB994@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1A35CBA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A3621CEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1A35ABFF4(v2 + *(a1 + 40), &v14 - v10, &qword_1EB0EE3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A35CC64C(v11, a2, type metadata accessor for TipViewEnvironment);
  }

  sub_1A362303C();
  v13 = sub_1A36221DC();
  sub_1A362166C();

  sub_1A3621CDC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A35CBBF0(uint64_t a1)
{
  v2 = sub_1A362190C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A3621CAC();
}

uint64_t sub_1A35CBCB8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v45 = *(a3 + 16);
  v5 = *(v45 - 8);
  v6 = *(v5 + 84);
  v44 = sub_1A362190C();
  v7 = *(v44 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1A36221CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 - 1;
  if (v9 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v6)
  {
    v18 = v6;
  }

  else
  {
    v18 = v17;
  }

  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  v20 = *(v11 + 80);
  v21 = (v20 + 65) & ~v20;
  v22 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v22;
  }

  v23 = ((((((v22 + v21 + 95) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v23 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = ((((((v22 + v21 + 95) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = *(v7 + 80);
  v26 = v20 | 7;
  v27 = v20 | 7 | v25;
  v28 = v27 + *(v5 + 64);
  v29 = (v20 | 7) + v19 + 5;
  if (a2 > v18)
  {
    v30 = ((((v28 & ~v27) + v26 + ((v29 + ((v25 + 128) & ~v25)) & ~v26) + v23) & ~v26) + v24) | 1;
    v31 = 8 * v30;
    if (v30 > 3)
    {
      goto LABEL_29;
    }

    v33 = ((a2 - v18 + ~(-1 << v31)) >> v31) + 1;
    if (HIWORD(v33))
    {
      v32 = *&a1[v30];
      if (!v32)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    if (v33 > 0xFF)
    {
      v32 = *&a1[v30];
      if (!*&a1[v30])
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    if (v33 >= 2)
    {
LABEL_29:
      v32 = a1[v30];
      if (!a1[v30])
      {
        goto LABEL_41;
      }

LABEL_36:
      v34 = (v32 - 1) << v31;
      if (v30 <= 3)
      {
        v35 = *a1;
      }

      else
      {
        v34 = 0;
        v35 = *a1;
      }

      return v18 + (v35 | v34) + 1;
    }
  }

LABEL_41:
  if (v6 >= v17)
  {

    return __swift_getEnumTagSinglePayload(a1, v6, v45);
  }

  else
  {
    if ((v16 & 0x80000000) == 0)
    {
      v37 = *((&a1[v28] & ~v27) + 0x18);
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }

    v38 = (v25 + (((((((((&a1[v28] & ~v27) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v25;
    if (v9 == v17)
    {
      if (v8 >= 2)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, v8, v44);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v39 = (v20 + 65 + ((v29 + v38) & ~v26)) & ~v20;
    if (v13 < 0x7FFFFFFF)
    {
      v43 = *(((v22 + v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v43 >= 0xFFFFFFFF)
      {
        LODWORD(v43) = -1;
      }

      v41 = v43 + 1;
    }

    else
    {
      v40 = __swift_getEnumTagSinglePayload(v39, v12, v10);
      v41 = v40 - 1;
      if (v40 < 2)
      {
        v41 = 0;
      }
    }

    if (v41 >= 2)
    {
      return v41 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1A35CC084(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v55 = *(a4 + 16);
  v5 = *(v55 - 8);
  v6 = *(v5 + 84);
  v54 = sub_1A362190C();
  v7 = *(v54 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1A36221CC();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 - 1;
  if (v9 > v15 - 1)
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v6)
  {
    v18 = v6;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v7 + 64);
  if (!v8)
  {
    ++v19;
  }

  v20 = *(v12 + 80);
  v21 = v20 + 65;
  v22 = (v20 + 65) & ~v20;
  v23 = *(v7 + 80);
  v24 = v20 | 7;
  v25 = v20 | 7 | v23;
  v26 = v25 + *(v5 + 64);
  v27 = (v20 | 7) + v19 + 5;
  v28 = (v27 + ((v23 + 128) & ~v23)) & ~(v20 | 7);
  if (v13)
  {
    v29 = *(*(v10 - 8) + 64);
  }

  else
  {
    v29 = *(*(v10 - 8) + 64) + 1;
  }

  v30 = v22 + v29;
  v31 = v22 + v29 + 95;
  v32 = (((((v31 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v33 = (v26 & ~v25) + v24 + v28 + v32;
  if (v32 <= 8)
  {
    v32 = 8;
  }

  v34 = ((v33 & ~v24) + v32) | 1;
  v35 = 8 * v34;
  v36 = a3 >= v18;
  v37 = a3 - v18;
  if (v37 != 0 && v36)
  {
    if (v34 <= 3)
    {
      v38 = ((v37 + ~(-1 << v35)) >> v35) + 1;
      if (HIWORD(v38))
      {
        v11 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v11 = v39;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v18 < a2)
  {
    v40 = ~v18 + a2;
    if (v34 <= 3)
    {
      v41 = (v40 >> v35) + 1;
      bzero(a1, v34);
      *a1 = v40 & ~(-1 << v35);
    }

    else
    {
      bzero(a1, v34);
      *a1 = v40;
      v41 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v34] = v41;
        break;
      case 2:
        *&a1[v34] = v41;
        break;
      case 3:
        goto LABEL_88;
      case 4:
        *&a1[v34] = v41;
        break;
      default:
        return;
    }

    return;
  }

  v42 = ~v20;
  v43 = ~v25;
  v44 = a1;
  switch(v11)
  {
    case 1:
      a1[v34] = 0;
      if (a2)
      {
        goto LABEL_47;
      }

      return;
    case 2:
      *&a1[v34] = 0;
      if (a2)
      {
        goto LABEL_47;
      }

      return;
    case 3:
LABEL_88:
      __break(1u);
      return;
    case 4:
      *&a1[v34] = 0;
      goto LABEL_46;
    default:
LABEL_46:
      if (!a2)
      {
        return;
      }

LABEL_47:
      if (v6 >= v17)
      {
        v49 = a2;
        v13 = v6;
        v10 = v55;
LABEL_54:

        __swift_storeEnumTagSinglePayload(v44, v49, v13, v10);
        return;
      }

      v45 = (&a1[v26] & v43);
      if (v17 < a2)
      {
        v46 = (((((v31 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + v28;
        v47 = (v46 + 16);
        if (v46 == -16)
        {
          return;
        }

        v48 = ~v17 + a2;
LABEL_51:
        bzero(v45, v47);
LABEL_52:
        *v45 = v48;
        return;
      }

      if ((v16 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *((&a1[v26] & v43) + 8) = 0u;
          *((&a1[v26] & v43) + 0x18) = 0u;
          *v45 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *((&a1[v26] & v43) + 0x18) = a2 - 1;
        }

        return;
      }

      v44 = (v23 + ((((((((v45 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v23;
      if (v9 == v17)
      {
        v49 = a2 + 1;
        v13 = v8;
        v10 = v54;
        goto LABEL_54;
      }

      v45 = ((v27 + v44) & ~v24);
      v48 = a2 - v15;
      if (a2 >= v15)
      {
        v50 = (((((v30 + 95) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8;
        v47 = v50 + 16;
        if (v50 == -16)
        {
          return;
        }

        goto LABEL_51;
      }

      v45 = (&v45[v21] & v42);
      if (v14 < 0x7FFFFFFF)
      {
        v51 = &v45[v29 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *(v51 + 24) = 0u;
          *(v51 + 8) = 0u;
          *(v51 + 40) = 0;
          *v51 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v51 + 24) = a2;
        }

        return;
      }

      if (a2 < v14)
      {
        v49 = a2 + 2;
        v44 = v45;
        goto LABEL_54;
      }

      if (v29 <= 3)
      {
        v52 = ~(-1 << (8 * v29));
      }

      else
      {
        v52 = -1;
      }

      if (v29)
      {
        v48 = v52 & (a2 - v14);
        if (v29 <= 3)
        {
          v53 = v29;
        }

        else
        {
          v53 = 4;
        }

        bzero(v45, v29);
        switch(v53)
        {
          case 2:
            *v45 = v48;
            break;
          case 3:
            *v45 = v48;
            v45[2] = BYTE2(v48);
            break;
          case 4:
            goto LABEL_52;
          default:
            *v45 = v48;
            break;
        }
      }

      return;
  }
}

uint64_t sub_1A35CC64C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A35CC6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35CC71C()
{
  sub_1A3622E3C();
  result = sub_1A360F5E8(sub_1A361DAC4, 0, "TipKit/UIApplication+TipKit (iOS tvOS visionOS watchOS).swift");
  byte_1EB0F2C68 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonLayout(uint64_t a1, int a2)
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

unint64_t sub_1A35CC7C8()
{
  result = qword_1EB0EE3E8;
  if (!qword_1EB0EE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE3E8);
  }

  return result;
}

double sub_1A35CC81C(uint64_t a1, char a2, double a3, double a4)
{
  v8 = 0.0;
  if (!sub_1A35CC9EC())
  {
    sub_1A362195C();
    OUTLINED_FUNCTION_1_4(&qword_1ED81DA38);
    sub_1A3622FEC();
    sub_1A362300C();
    if (sub_1A3622FFC() == 2)
    {
      v9 = sub_1A35D8BC4();
      v10 = v9 + v9 + a3;
      if (a2)
      {
        if (v10 <= 0.0)
        {
LABEL_5:
          v11 = sub_1A3621AEC();
          MEMORY[0x1EEE9AC00](v11);
          OUTLINED_FUNCTION_2(&qword_1ED81DA40);
          sub_1A35CD8C0();
          sub_1A3622C6C();
          return v8;
        }
      }

      else
      {
        v8 = *&a1;
        if (v10 <= *&a1)
        {
          goto LABEL_5;
        }
      }
    }

    if (a2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = *&a1;
    }

    sub_1A35D8BDC(a4);
  }

  return v8;
}

BOOL sub_1A35CC9EC()
{
  sub_1A362195C();
  sub_1A35CD718(&qword_1ED81DA38);
  sub_1A3622FEC();
  sub_1A362300C();
  return v2 == v1;
}

void sub_1A35CCA74(double a1, double a2, double a3, double a4, double a5)
{
  if (!sub_1A35CC9EC())
  {
    sub_1A362195C();
    OUTLINED_FUNCTION_1_4(&qword_1ED81DA38);
    sub_1A3622FEC();
    sub_1A362300C();
    if (sub_1A3622FFC() == 2 && (v7 = sub_1A35D8BC4(), v7 + v7 + a5 <= a3))
    {
      OUTLINED_FUNCTION_5_2();
      sub_1A35CCB64();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5_2();
      sub_1A35CCD44(v8, v9, v10, v11, v12);
    }
  }
}

uint64_t sub_1A35CCB64()
{
  v0 = sub_1A36218CC();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A362196C();
  v9.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetMinX(v9);
  v10.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetMinY(v10);
  v11.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetWidth(v11);
  sub_1A35D8CE8();
  sub_1A3622A6C();
  v8[24] = 0;
  v8[16] = 0;
  OUTLINED_FUNCTION_4_0();
  v6 = *(v2 + 8);
  v6(v5, v0);
  sub_1A362196C();
  v12.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetMinX(v12);
  v13.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetWidth(v13);
  v14.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetMinY(v14);
  v15.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetWidth(v15);
  sub_1A35D8CE8();
  sub_1A3622A6C();
  v8[8] = 0;
  v8[0] = 0;
  OUTLINED_FUNCTION_4_0();
  return (v6)(v5, v0);
}

void sub_1A35CCD44(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v76 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3F0);
  MEMORY[0x1EEE9AC00](v82);
  v10 = &v62 - v9;
  v11 = sub_1A36218CC();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v74 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3F8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_6_0();
  v79 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v81 = (&v62 - v23);
  v24 = sub_1A362195C();
  OUTLINED_FUNCTION_3();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE400);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v62 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE408);
  v34 = v33 - 8;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v36 = *(v26 + 16);
  v75 = a1;
  v37 = a1;
  v39 = &v62 - v38;
  v36(v32, v37, v24, v35);
  (*(v26 + 32))(v29, v32, v24);
  v40 = OUTLINED_FUNCTION_2(&qword_1ED81DA40);
  v73 = v29;
  v71 = v40;
  sub_1A3622C8C();
  v62 = *(v34 + 44);
  *&v39[v62] = 0;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE410) + 36);
  v42 = OUTLINED_FUNCTION_1_4(&qword_1ED81DA38);
  v77 = 0;
  v63 = (v13 + 16);
  v78 = (v13 + 32);
  v68 = a4;
  v67 = a5;
  v66 = (v26 + 8);
  v43 = v11;
  v65 = (v13 + 8);
  v69 = v42;
  v72 = v39;
  v70 = v41;
  while (1)
  {
    sub_1A362300C();
    if (*&v39[v41] == v84[0])
    {
      v44 = 1;
    }

    else
    {
      v45 = sub_1A362302C();
      v46 = v64;
      (*v63)(v64);
      v45(v84, 0);
      sub_1A362301C();
      v47 = *(v82 + 48);
      v49 = v77;
      v48 = v78;
      *v10 = v77;
      (*v48)(&v10[v47], v46, v43);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_11;
      }

      v77 = v49 + 1;
      *&v39[v62] = v49 + 1;
      sub_1A35CD75C(v10, v79, &qword_1EB0EE3F0);
      v44 = 0;
    }

    v50 = v79;
    v51 = v82;
    __swift_storeEnumTagSinglePayload(v79, v44, 1, v82);
    v52 = v50;
    v53 = v81;
    sub_1A35CD75C(v52, v81, &qword_1EB0EE3F8);
    if (__swift_getEnumTagSinglePayload(v53, 1, v51) == 1)
    {
      sub_1A35CD7C4(v39);
      return;
    }

    v54 = v10;
    v55 = *v81;
    (*v78)(v80, v81 + *(v82 + 48), v43);
    v85.origin.x = a2;
    v85.origin.y = v76;
    v85.size.width = a4;
    v85.size.height = a5;
    CGRectGetMinX(v85);
    v86.origin.x = OUTLINED_FUNCTION_0_1();
    CGRectGetMinY(v86);
    if (v55 < 0)
    {
      break;
    }

    v56 = v73;
    v57 = sub_1A362197C();
    MEMORY[0x1EEE9AC00](v57);
    *(&v62 - 4) = a4;
    *(&v62 - 24) = 0;
    *(&v62 - 2) = a5;
    *(&v62 - 8) = 0;
    sub_1A35CD844();
    sub_1A3622C7C();
    sub_1A3622FEC();
    sub_1A362300C();
    v83 = sub_1A3622FFC();
    sub_1A35B220C();
    sub_1A36232BC();
    (*v66)(v56, v24);
    v58 = v74;
    sub_1A362196C();
    LOBYTE(v84[0]) = 0;
    LOBYTE(v83) = 0;
    sub_1A36218AC();
    v59 = *v65;
    v60 = v58;
    v41 = v70;
    v61 = v80;
    (*v65)(v60, v43);
    sub_1A3622A6C();
    LOBYTE(v84[0]) = 0;
    LOBYTE(v83) = 0;
    sub_1A36218BC();
    v59(v61, v43);
    v39 = v72;
    v10 = v54;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void (*sub_1A35CD600(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1A36216BC();
  return sub_1A35CD674;
}

void sub_1A35CD674(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1A35CD6C4()
{
  result = qword_1ED81DA58;
  if (!qword_1ED81DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA58);
  }

  return result;
}

uint64_t sub_1A35CD718(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A362195C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A35CD75C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A35CD7C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A35CD844()
{
  result = qword_1ED81DCE0;
  if (!qword_1ED81DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DCE0);
  }

  return result;
}

unint64_t sub_1A35CD8C0()
{
  result = qword_1EB0EE208;
  if (!qword_1EB0EE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE208);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_1A35CD948(double a1, double a2)
{
  [v2 bounds];
  if (v6 != 0.0 || v5 != 0.0)
  {
    v7 = sub_1A35CDC10(0, &qword_1EB0EE420);
    v8 = v2;

    sub_1A35CDD9C(a1, a2, v7, v8);
  }
}

id sub_1A35CD9E4(void *a1, double a2, double a3)
{
  [a1 setPosition_];
  [a1 bounds];
  v7 = a2 / v6;
  [a1 bounds];
  v9 = a3 / v8;
  if (a3 / v8 >= v7)
  {
    v9 = v7;
  }

  CATransform3DMakeScale(&v11, v9, v9, 1.0);
  return [a1 setTransform_];
}

uint64_t sub_1A35CDA84()
{
  v1 = [v0 states];
  if (!v1 || (v2 = v1, v3 = sub_1A3622CCC(), v2, v4 = sub_1A35CDB04(v3), , !v4))
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1A35CDB04(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1A362325C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_1A35AB75C(v3, v5);
    sub_1A35CDC10(0, &qword_1EB0EE418);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A362323C();
    sub_1A362326C();
    sub_1A362327C();
    sub_1A362324C();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1A35CDC10(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1A35CDC50(void *a1, id a2, uint64_t (*a3)(id), double a4, double a5)
{
  [a2 setContentsGravity_];
  [a2 setMasksToBounds_];
  [a2 setFillMode_];
  [a1 bounds];
  if (v11 != 0.0 || v10 != 0.0)
  {
    [a1 bounds];
    a4 = v12;
    a5 = v13;
  }

  sub_1A35CD948(a4, a5);
  [a1 addSublayer_];
  result = [a1 setNeedsDisplay];
  if (a3)
  {
    return a3(result);
  }

  return result;
}

id sub_1A35CDD5C(id result, uint64_t a2, char a3, double a4)
{
  if (result)
  {
    if (a3)
    {
      LODWORD(a4) = 1.0;
      return [v4 setState:result ofLayer:a2 transitionSpeed:a4];
    }

    else
    {
      return [v4 setState:result ofLayer:{a2, a4}];
    }
  }

  return result;
}

void sub_1A35CDD9C(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = objc_opt_self();
  if ([v6 disableActions])
  {
    sub_1A35CD9E4(a4, a1, a2);
  }

  else
  {
    [v6 setDisableActions_];
    sub_1A35CD9E4(a4, a1, a2);
    [v6 setDisableActions_];
  }
}

void sub_1A35CDE50(double a1, double a2, double a3, double a4)
{
  MinX = CGRectGetMinX(*&a1);
  v6.origin.x = OUTLINED_FUNCTION_0_2();
  if (MinX > CGRectGetMaxX(v6))
  {
    __break(1u);
    goto LABEL_5;
  }

  v7.origin.x = OUTLINED_FUNCTION_0_2();
  MinY = CGRectGetMinY(v7);
  v8.origin.x = OUTLINED_FUNCTION_0_2();
  if (MinY > CGRectGetMaxY(v8))
  {
LABEL_5:
    __break(1u);
  }
}

double sub_1A35CDF10()
{
  CapHeight = CTFontGetCapHeight(v0);
  v2 = CapHeight - sub_1A35CDF4C();
  return v2 + CTFontGetDescent(v0);
}

uint64_t sub_1A35CDF84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE428);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v19 - v1;
  v3 = sub_1A36212EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = sub_1A36212AC();
  v12 = v11;
  if (v11)
  {
    v13 = v10;
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
    sub_1A36212DC();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {

      sub_1A35CE44C(v2);
      return 0;
    }

    else
    {
      (*(v4 + 32))(v9, v2, v3);
      (*(v4 + 16))(v6, v9, v3);
      v14 = (*(v4 + 88))(v6, v3);
      if (v14 == *MEMORY[0x1E69DA2A8])
      {

        v15 = sub_1A362269C();
      }

      else if (v14 == *MEMORY[0x1E69DA2B0])
      {

        v15 = sub_1A36227BC();
      }

      else if (v14 == *MEMORY[0x1E69DA248])
      {

        v15 = sub_1A36226CC();
      }

      else if (v14 == *MEMORY[0x1E69DA278])
      {

        v15 = sub_1A362273C();
      }

      else if (v14 == *MEMORY[0x1E69DA250])
      {

        v15 = sub_1A36226DC();
      }

      else if (v14 == *MEMORY[0x1E69DA258])
      {

        v15 = sub_1A36226EC();
      }

      else if (v14 == *MEMORY[0x1E69DA280])
      {

        v15 = sub_1A362275C();
      }

      else if (v14 == *MEMORY[0x1E69DA288])
      {

        v15 = sub_1A362276C();
      }

      else if (v14 == *MEMORY[0x1E69DA260])
      {

        v15 = sub_1A36226FC();
      }

      else if (v14 == *MEMORY[0x1E69DA290])
      {

        v15 = sub_1A362277C();
      }

      else if (v14 == *MEMORY[0x1E69DA268])
      {

        v15 = sub_1A362270C();
      }

      else if (v14 == *MEMORY[0x1E69DA298])
      {

        v15 = sub_1A362278C();
      }

      else if (v14 == *MEMORY[0x1E69DA2B8])
      {

        v15 = sub_1A36226BC();
      }

      else if (v14 == *MEMORY[0x1E69DA270])
      {

        v15 = sub_1A362271C();
      }

      else
      {
        if (v14 != *MEMORY[0x1E69DA2A0])
        {
          MEMORY[0x1EEE9AC00](v14);
          v19[-2] = v13;
          v19[-1] = v12;
          v17 = sub_1A36215DC();
          sub_1A36215AC();

          v17(v19, 0);
          v12 = sub_1A36227AC();
          v18 = *(v4 + 8);
          v18(v9, v3);
          v18(v6, v3);
          return v12;
        }

        v15 = sub_1A362279C();
      }

      v12 = v15;
      (*(v4 + 8))(v9, v3);
    }
  }

  return v12;
}

uint64_t sub_1A35CE44C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35CE4B4(uint64_t a1, uint64_t a2)
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0xD00000000000001FLL, 0x80000001A3638D70);
  MEMORY[0x1A58F3290](a1, a2);
  MEMORY[0x1A58F3290](0xD000000000000039, 0x80000001A3638D90);
  return 0;
}

uint64_t Tips.Event.Donation.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A3620D6C();
  OUTLINED_FUNCTION_0_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t sub_1A35CE5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a3;
  v29 = sub_1A36230DC();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = (v13 - v12);
  v15 = type metadata accessor for Tips.Event.Donation();
  OUTLINED_FUNCTION_3();
  v17 = v16;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE4C0);
  sub_1A3622B0C();

  if (__swift_getEnumTagSinglePayload(v8, 1, a2) == 1)
  {
    sub_1A3620D6C();
    OUTLINED_FUNCTION_0_0();
    (*(v21 + 8))(v30);
    (*(v5 + 8))(v8, v29);
    v22 = 1;
    v23 = v31;
  }

  else
  {
    v24 = *(v10 + 32);
    v24(v14, v8, a2);
    sub_1A3620D6C();
    OUTLINED_FUNCTION_0_0();
    (*(v25 + 32))(v20, v30);
    v24(&v20[*(v15 + 44)], v14, a2);
    v26 = v31;
    (*(v17 + 32))(v31, v20, v15);
    v22 = 0;
    v23 = v26;
  }

  return __swift_storeEnumTagSinglePayload(v23, v22, 1, v15);
}

uint64_t sub_1A35CE8B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A362345C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974616E6F64 && a2 == 0xEC0000006F666E49)
  {

    return 1;
  }

  else
  {
    v7 = sub_1A362345C();

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

uint64_t sub_1A35CE9C4(char a1)
{
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](a1 & 1);
  return sub_1A36234EC();
}

uint64_t sub_1A35CEA18(char a1)
{
  if (a1)
  {
    return 0x6E6F6974616E6F64;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1A35CEA90()
{
  sub_1A36234CC();
  sub_1A35CE99C(v2, *v0);
  return sub_1A36234EC();
}

uint64_t sub_1A35CEAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A35CE8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A35CEB50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A35CE984();
  *a1 = result;
  return result;
}

uint64_t sub_1A35CEB84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A35CEBD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Tips.Event.Donation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v13[0] = *(a2 + 32);
  v13[1] = v4;
  _s14descr1F1647EB9C8DonationV10CodingKeysOMa();
  OUTLINED_FUNCTION_2_1();
  v5 = sub_1A362341C();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A362353C();
  v15 = 0;
  sub_1A3620D6C();
  sub_1A35CF1F0(&qword_1EB0EE430);
  v11 = v13[3];
  sub_1A362340C();
  if (!v11)
  {
    v14 = 1;
    sub_1A362340C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Tips.Event.Donation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  OUTLINED_FUNCTION_1();
  v40 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_0();
  v44 = v10 - v9;
  v48 = sub_1A3620D6C();
  OUTLINED_FUNCTION_3();
  v43 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_0();
  v46 = v14 - v13;
  _s14descr1F1647EB9C8DonationV10CodingKeysOMa();
  OUTLINED_FUNCTION_2_1();
  v50 = sub_1A36233CC();
  OUTLINED_FUNCTION_3();
  v42 = v15;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v45 = a2;
  v47 = a3;
  v19 = type metadata accessor for Tips.Event.Donation();
  OUTLINED_FUNCTION_3();
  v39 = v20;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = v18;
  v24 = v51;
  sub_1A362352C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v23;
  v51 = a1;
  v38 = v19;
  v27 = v42;
  v26 = v43;
  v29 = v44;
  v28 = v45;
  v53 = 0;
  sub_1A35CF1F0(qword_1EB0EE438);
  v30 = v46;
  sub_1A36233AC();
  v31 = *(v26 + 32);
  v37 = v25;
  v31(v25, v30, v48);
  v52 = 1;
  sub_1A36233AC();
  (*(v27 + 8))(v49, v50);
  v33 = v37;
  v32 = v38;
  (*(v40 + 32))(&v37[*(v38 + 44)], v29, v28);
  v34 = v39;
  (*(v39 + 16))(v41, v33, v32);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return (*(v34 + 8))(v33, v32);
}

uint64_t sub_1A35CF1F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3620D6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Sequence.donatedWithin<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_0();
  (*(v7 + 16))(v6 - v5, v2, a2);
  return sub_1A3622C9C();
}

uint64_t sub_1A35CF388(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1A3620D6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10[0] = a2;
  v11 = a3;
  sub_1A35D0190(v8);
  LOBYTE(a3) = sub_1A3620D4C();
  (*(v6 + 8))(v8, v5);
  return a3 & 1;
}

uint64_t sub_1A35CF530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void *, uint64_t, void))
{
  v8 = *a1;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a6;
  v10[7] = a1;
  result = a8(a7, v10, a2, *(v8 + *MEMORY[0x1E69E77B0] + 8));
  if (!result)
  {
    type metadata accessor for Tips.Event.Donation();
    return sub_1A3622D6C();
  }

  return result;
}

uint64_t sub_1A35CF5F4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = MEMORY[0x1E69E77B0];
  type metadata accessor for Tips.Event.Donation();
  swift_getAtKeyPath();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, *(v3 + *v4 + 8));
}

uint64_t sub_1A35CF6D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1A3620D6C();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = (a1 + v15) & ~v12;
      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1A35CF8E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1A3620D6C();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
            v11 = v12;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t _s17DonationTimeRangeV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1A35CFC10(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1A35CFD7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A35CFD48();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A35CFDA8(uint64_t a1)
{
  v2 = sub_1A35CFF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}