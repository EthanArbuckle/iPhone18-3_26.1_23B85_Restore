void sub_18F337FB8()
{
  OUTLINED_FUNCTION_90_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6420);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_101();
  if ([v1 typeIdentifier])
  {
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    sub_18F0FECD4(v2, v14);
    sub_18F0FECD4(v14, v15);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10);
    OUTLINED_FUNCTION_86_8();
    v6 = OUTLINED_FUNCTION_62_9();
    if (v6)
    {
    }

    v15[0] = v6;
    sub_18F118710(v14, v16);
    v17 = sub_18F338208;
    v18 = 0;
    if (v6)
    {
      sub_18F0FECD4(v16, v14);
      OUTLINED_FUNCTION_47_16();
      if (OUTLINED_FUNCTION_62_9())
      {
        OUTLINED_FUNCTION_18_36();
        MEMORY[0x1EEE9AC00](v7);
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_72_9(v8);
        OUTLINED_FUNCTION_11_37();
        sub_18F3EC1D8();
        OUTLINED_FUNCTION_34_22();

        *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6430);
        v9 = sub_18F338BD8();
        OUTLINED_FUNCTION_35_18(v9);
      }

      else
      {
        OUTLINED_FUNCTION_5_3();
      }
    }

    else
    {
      sub_18F338208(v16, v1);
      sub_18F520F2C();
      v10 = OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_23_26(v10);
      if (v11)
      {
        sub_18F0FA038(v1, &qword_1EACD6420);
        OUTLINED_FUNCTION_20_29();
      }

      else
      {
        *(v0 + 24) = v5;
        v12 = sub_18F10F9E4(&qword_1EACCDDC0);
        OUTLINED_FUNCTION_71_8(v12);
        OUTLINED_FUNCTION_31_0();
        (*(v13 + 32))();
      }
    }

    sub_18F0FA038(v15, &qword_1EACD6428);
  }
}

void sub_18F338208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v5);
  sub_18F5223AC();
  if (swift_dynamicCast())
  {
    sub_18F52238C();
  }

  else
  {
    v3 = sub_18F520F2C();
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v3);
  }
}

unint64_t sub_18F3382FC()
{
  result = qword_1EACD63C0;
  if (!qword_1EACD63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD63C0);
  }

  return result;
}

uint64_t sub_18F338350@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18F0FECD4(a1, &v13);
  sub_18F0FECD4(&v13, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10);
  v3 = OUTLINED_FUNCTION_29_31();
  if (v3)
  {
  }

  v16[0] = v3;
  sub_18F118710(&v13, v17);
  v18 = sub_18F33852C;
  v19 = 0;
  if (!v3)
  {
    sub_18F33852C(v17, &v13);
    if (*(&v14 + 1))
    {
      a2[3] = &type metadata for AnyIntentValueRepresentation;
      a2[4] = sub_18F3382FC();
      OUTLINED_FUNCTION_75_6();
      v10 = swift_allocObject();
      *a2 = v10;
      v11 = v14;
      *(v10 + 16) = v13;
      *(v10 + 32) = v11;
      *(v10 + 48) = v15;
      return sub_18F0FA038(v16, &qword_1EACD6410);
    }

    sub_18F0FA038(&v13, &qword_1EACD6408);
LABEL_9:
    OUTLINED_FUNCTION_5_3();
    return sub_18F0FA038(v16, &qword_1EACD6410);
  }

  sub_18F0FECD4(v17, &v13);
  v4 = OUTLINED_FUNCTION_29_31();
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_72_9(v5);
  v6 = OUTLINED_FUNCTION_11_37();
  sub_18F3EC228(v6, v7, v8);
  OUTLINED_FUNCTION_34_22();

  a2[3] = OUTLINED_FUNCTION_82_0();
  v9 = OUTLINED_FUNCTION_39_20(&unk_1EACD6418);
  OUTLINED_FUNCTION_35_18(v9);
  return sub_18F0FA038(v16, &qword_1EACD6410);
}

double sub_18F33852C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v6);
  sub_18F0F21A8(0, &unk_1ED6FE390);
  if (swift_dynamicCast())
  {
    LNValue.asPropertyType.getter();

    if (v5)
    {
      sub_18F0FD0B4(&v4, v6);
      sub_18F0FD0B4(v6, a2);
      return result;
    }

    sub_18F0FA038(&v4, &qword_1EACD0620);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_18F338608@<X0>(void *a1@<X8>)
{
  if (![v1 typeIdentifier])
  {
    OUTLINED_FUNCTION_111_4();
    OUTLINED_FUNCTION_74_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10);
    OUTLINED_FUNCTION_86_8();
    v3 = OUTLINED_FUNCTION_29_31();
    if (v3)
    {
    }

    OUTLINED_FUNCTION_73_4();
    v13[5] = sub_18F3387BC;
    v13[6] = 0;
    if (v3)
    {
      OUTLINED_FUNCTION_113_2();
      if (OUTLINED_FUNCTION_17_37())
      {
        OUTLINED_FUNCTION_18_36();
        MEMORY[0x1EEE9AC00](v4);
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_72_9(v5);
        v6 = OUTLINED_FUNCTION_11_37();
        sub_18F3EEBD0(v6);
        OUTLINED_FUNCTION_34_22();

        a1[3] = OUTLINED_FUNCTION_82_0();
        v7 = OUTLINED_FUNCTION_39_20(&unk_1EACD6400);
        OUTLINED_FUNCTION_35_18(v7);
        return sub_18F0FA038(v13, &qword_1EACD63F0);
      }
    }

    else
    {
      v8 = OUTLINED_FUNCTION_101_8();
      sub_18F3387BC(v8, v9);
      if (v12)
      {
        a1[3] = &type metadata for StringSearchCriteria;
        a1[4] = sub_18F2063F0();
        *a1 = v11;
        a1[1] = v12;
        return sub_18F0FA038(v13, &qword_1EACD63F0);
      }
    }

    OUTLINED_FUNCTION_5_3();
    return sub_18F0FA038(v13, &qword_1EACD63F0);
  }

  type metadata accessor for LNSearchCriteriaValueTypeIdentifier(0);
  result = sub_18F522DFC();
  __break(1u);
  return result;
}

void sub_18F3387BC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18F0FECD4(a1, v8);
  sub_18F0F21A8(0, &qword_1EACD30E0);
  if (swift_dynamicCast())
  {
    v3 = [v7 term];
    v4 = sub_18F5218DC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_18F3388A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_18F0FECD4(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430);
  if (OUTLINED_FUNCTION_8_4())
  {

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD63E0);
    v4 = MEMORY[0x1E69E7CC0];
    result = sub_18F338A18();
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v3 = sub_18F0F21A8(0, qword_1EACCF090);
    OUTLINED_FUNCTION_54_13();
    result = sub_18F33A774(v6);
  }

  a2[3] = v3;
  a2[4] = result;
  *a2 = v4;
  return result;
}

unint64_t sub_18F338A18()
{
  result = qword_1EACD63E8;
  if (!qword_1EACD63E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD63E0);
    sub_18F33A774(&unk_1EACD6398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD63E8);
  }

  return result;
}

uint64_t sub_18F338AE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_18F339FD4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6858);
  v4 = swift_task_localValuePush();
  a3(v4);
  return swift_task_localValuePop();
}

uint64_t sub_18F338B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6850);
  swift_allocObject();
  result = sub_18F52304C();
  qword_1ED6FE030 = result;
  return result;
}

unint64_t sub_18F338BD8()
{
  result = qword_1EACD6438;
  if (!qword_1EACD6438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6430);
    sub_18F10F9E4(&qword_1EACCDDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6438);
  }

  return result;
}

unint64_t sub_18F338C8C()
{
  result = qword_1EACD6510;
  if (!qword_1EACD6510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6508);
    sub_18F33A008(&unk_1EACD6500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6510);
  }

  return result;
}

unint64_t sub_18F338D3C()
{
  result = qword_1EACD6530;
  if (!qword_1EACD6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6528);
    sub_18F33A008(&unk_1EACD6520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6530);
  }

  return result;
}

unint64_t sub_18F338DEC()
{
  result = qword_1EACD6550;
  if (!qword_1EACD6550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6548);
    sub_18F33A008(&unk_1EACD6540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6550);
  }

  return result;
}

unint64_t sub_18F338E9C()
{
  result = qword_1EACD6570;
  if (!qword_1EACD6570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6568);
    sub_18F33A008(&unk_1EACD6560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6570);
  }

  return result;
}

unint64_t sub_18F338F4C()
{
  result = qword_1EACD6590;
  if (!qword_1EACD6590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6588);
    sub_18F33A008(&unk_1EACD6580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6590);
  }

  return result;
}

unint64_t sub_18F338FFC()
{
  result = qword_1EACD65B0;
  if (!qword_1EACD65B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD65A8);
    sub_18F33A008(&unk_1EACD65A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD65B0);
  }

  return result;
}

unint64_t sub_18F3390AC()
{
  result = qword_1EACD65D0;
  if (!qword_1EACD65D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD65C8);
    sub_18F33A008(&unk_1EACD65C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD65D0);
  }

  return result;
}

unint64_t sub_18F33915C()
{
  result = qword_1EACD65F0;
  if (!qword_1EACD65F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD65E8);
    sub_18F33A008(&unk_1EACD65E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD65F0);
  }

  return result;
}

unint64_t sub_18F33920C()
{
  result = qword_1EACD6610;
  if (!qword_1EACD6610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6608);
    sub_18F33A008(&unk_1EACD6600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6610);
  }

  return result;
}

unint64_t sub_18F3392BC()
{
  result = qword_1EACD6630;
  if (!qword_1EACD6630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6628);
    sub_18F33A008(&unk_1EACD6620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6630);
  }

  return result;
}

unint64_t sub_18F33936C()
{
  result = qword_1EACD6650;
  if (!qword_1EACD6650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6648);
    sub_18F33A008(&unk_1EACD6640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6650);
  }

  return result;
}

unint64_t sub_18F33941C()
{
  result = qword_1EACD6670;
  if (!qword_1EACD6670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6668);
    sub_18F33A008(&unk_1EACD6660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6670);
  }

  return result;
}

unint64_t sub_18F3394CC()
{
  result = qword_1EACD6690;
  if (!qword_1EACD6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6688);
    sub_18F33A008(&unk_1EACD6680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6690);
  }

  return result;
}

unint64_t sub_18F33957C()
{
  result = qword_1EACD66B0;
  if (!qword_1EACD66B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD66A8);
    sub_18F33A008(&unk_1EACD66A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD66B0);
  }

  return result;
}

unint64_t sub_18F33962C()
{
  result = qword_1EACD66D0;
  if (!qword_1EACD66D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD66C8);
    sub_18F33A008(&unk_1EACD66C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD66D0);
  }

  return result;
}

unint64_t sub_18F3396DC()
{
  result = qword_1EACD66F0;
  if (!qword_1EACD66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD66E8);
    sub_18F33A008(&unk_1EACD66E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD66F0);
  }

  return result;
}

unint64_t sub_18F33978C()
{
  result = qword_1EACD6710;
  if (!qword_1EACD6710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6708);
    sub_18F33A008(&unk_1EACD6700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6710);
  }

  return result;
}

unint64_t sub_18F33983C()
{
  result = qword_1EACD6730;
  if (!qword_1EACD6730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6728);
    sub_18F33A008(&unk_1EACD6720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6730);
  }

  return result;
}

unint64_t sub_18F3398EC()
{
  result = qword_1EACD6750;
  if (!qword_1EACD6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6748);
    sub_18F33A008(&unk_1EACD6740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6750);
  }

  return result;
}

unint64_t sub_18F33999C()
{
  result = qword_1EACD6770;
  if (!qword_1EACD6770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6768);
    sub_18F33A008(&unk_1EACD6760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6770);
  }

  return result;
}

unint64_t sub_18F339A4C()
{
  result = qword_1EACD6790;
  if (!qword_1EACD6790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6788);
    sub_18F33A008(&unk_1EACD6780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6790);
  }

  return result;
}

unint64_t sub_18F339AFC()
{
  result = qword_1EACD67B0;
  if (!qword_1EACD67B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD67A8);
    sub_18F33A008(&unk_1EACD67A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD67B0);
  }

  return result;
}

unint64_t sub_18F339BAC()
{
  result = qword_1EACD67D0;
  if (!qword_1EACD67D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD67C8);
    sub_18F33A008(&unk_1EACD67C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD67D0);
  }

  return result;
}

unint64_t sub_18F339C5C()
{
  result = qword_1EACD67E0;
  if (!qword_1EACD67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD67E0);
  }

  return result;
}

unint64_t sub_18F339CB0()
{
  result = qword_1EACD6800;
  if (!qword_1EACD6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6800);
  }

  return result;
}

uint64_t sub_18F339D04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F3F04B8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_18F339D4C()
{
  result = qword_1EACD6820;
  if (!qword_1EACD6820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6820);
  }

  return result;
}

uint64_t sub_18F339DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F3EEEEC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_18F339DCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F32E0BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18F339DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F32E1B0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18F339E2C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_18F339E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F32E1B0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18F339E9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18F32E210(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18F339EC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F3EEF68();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_18F339EF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F32E268(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_18F339F5C()
{
  result = qword_1ED6FE038;
  if (!qword_1ED6FE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE038);
  }

  return result;
}

uint64_t sub_18F339FD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

unint64_t sub_18F33A008(uint64_t a1)
{
  result = OUTLINED_FUNCTION_102_8(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18F33A06C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F33A0CC()
{
  result = qword_1EACD68E0;
  if (!qword_1EACD68E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD68D8);
    sub_18F10F9E4(&qword_1EACD68D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD68E0);
  }

  return result;
}

unint64_t sub_18F33A180()
{
  result = qword_1EACD68F8;
  if (!qword_1EACD68F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD68F0);
    sub_18F10F9E4(&qword_1EACD31D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD68F8);
  }

  return result;
}

unint64_t sub_18F33A234()
{
  result = qword_1EACD6908;
  if (!qword_1EACD6908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD14B0);
    sub_18F10F9E4(&unk_1EACCE838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6908);
  }

  return result;
}

unint64_t sub_18F33A2E8()
{
  result = qword_1EACD6950;
  if (!qword_1EACD6950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6948);
    sub_18F10F9E4(&qword_1EACD3E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6950);
  }

  return result;
}

uint64_t sub_18F33A39C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F33A3EC()
{
  result = qword_1EACD6960;
  if (!qword_1EACD6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6960);
  }

  return result;
}

unint64_t sub_18F33A440()
{
  result = qword_1EACD6988;
  if (!qword_1EACD6988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6980);
    sub_18F10F9E4(&qword_1EACD5F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6988);
  }

  return result;
}

unint64_t sub_18F33A4F4()
{
  result = qword_1EACD69A0;
  if (!qword_1EACD69A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6998);
    sub_18F10F9E4(&qword_1EACD1FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD69A0);
  }

  return result;
}

uint64_t sub_18F33A5A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_18F33A60C()
{
  result = qword_1EACD69E8;
  if (!qword_1EACD69E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD69E0);
    sub_18F10F9E4(&qword_1EACD02A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD69E8);
  }

  return result;
}

unint64_t sub_18F33A6C0()
{
  result = qword_1EACD6A28;
  if (!qword_1EACD6A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6A20);
    sub_18F10F9E4(&qword_1EACCDDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6A28);
  }

  return result;
}

unint64_t sub_18F33A774(uint64_t a1)
{
  result = OUTLINED_FUNCTION_102_8(a1);
  if (!result)
  {
    sub_18F0F21A8(255, v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F33A7D0()
{
  result = qword_1EACD6A40;
  if (!qword_1EACD6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6A38);
    sub_18F33A774(qword_1EACD3AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6A40);
  }

  return result;
}

unint64_t sub_18F33A880()
{
  result = qword_1EACD6A58;
  if (!qword_1EACD6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6A50);
    sub_18F10F9E4(&qword_1EACCED48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6A58);
  }

  return result;
}

unint64_t sub_18F33A964(uint64_t a1)
{
  result = OUTLINED_FUNCTION_102_8(a1);
  if (!result)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    v5();
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F33A9CC()
{
  result = qword_1EACD6AB0;
  if (!qword_1EACD6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6AA8);
    sub_18F10F9E4(qword_1EACCED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6AB0);
  }

  return result;
}

_BYTE *sub_18F33AAB8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18F33AB64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18F33ABBC(uint64_t a1, int a2)
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

uint64_t sub_18F33ABFC(uint64_t result, int a2, int a3)
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

unint64_t sub_18F33AC4C()
{
  result = qword_1EACD6AC8[0];
  if (!qword_1EACD6AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD6AC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_11()
{

  return sub_18F0FECD4(v0 - 208, v0 - 136);
}

void OUTLINED_FUNCTION_93_7()
{

  sub_18F3AADAC();
}

uint64_t OUTLINED_FUNCTION_95_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_97_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_111_4()
{

  return sub_18F0FECD4(v0, v1 - 136);
}

uint64_t sub_18F33AD80()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F33ADE0()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);

  return v1();
}

id sub_18F33AE40(uint64_t a1)
{
  sub_18F0FD724(a1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v7);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  DynamicType = swift_getDynamicType();
  v3 = v7[4];
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  v4 = *(a1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = sub_18F33AFF4(DynamicType, v3, v4);

  return v5;
}

void *sub_18F33AEF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F12DA08();
  if (result)
  {
    result = (*(v3 + 72))(&v5);
    v4 = v5;
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_18F33AF50()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  sub_18F12DB84(v0);
  v2 = v1;

  return v2;
}

id sub_18F33AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v5 = OUTLINED_FUNCTION_1_72();
  v6 = static AppIntent._identifier.getter(v5);
  v7 = sub_18F164DD4(v6);
  v28 = v3;

  OUTLINED_FUNCTION_1_72();
  sub_18F114CB8();
  v8 = sub_18F5218AC();

  v32 = MEMORY[0x1E69E7CC0];
  v9 = *(a3 + 16);
  if (v9)
  {
    v27 = a3;
    v10 = a3 + 32;
    do
    {
      sub_18F139A94(v10, v31);
      v11 = __swift_project_boxed_opaque_existential_1Tm(v31, v31[3]);
      v19 = OUTLINED_FUNCTION_4_57(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26, v27, v28, v29[0], v29[1], v30);
      sub_18F0EF148(v29, &qword_1EACD0620);
      v20 = sub_18F13E500(v31);
      if (v19)
      {
        MEMORY[0x193ADB260](v20);
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F521D0C();
        }

        sub_18F521D6C();
      }

      v10 += 48;
      --v9;
    }

    while (v9);
  }

  else
  {
  }

  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, qword_1ED6FE8F8);
  v22 = sub_18F521C8C();

  v23 = [v21 initWithMetadata:v7 mangledName:v8 parameters:v22];

  return v23;
}

uint64_t sub_18F33B550()
{
  v1 = v0;
  type metadata accessor for AppManager();
  sub_18F3E6F18(v7);
  v2 = v7[0];
  v3 = v7[1];
  v11 = v8;
  sub_18F0EF148(&v11, &qword_1EACD4470);
  v10 = v9;
  sub_18F0EF148(&v10, &unk_1EACCFDB0);
  if (v3)
  {
    v4 = sub_18F5218AC();

    v5 = [v1 mangledTypeNameForBundleIdentifier_];

    v2 = sub_18F5218DC();
  }

  return v2;
}

id sub_18F33B63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  DynamicType = swift_getDynamicType();
  v8 = v20;
  v9 = v21;
  v10 = __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v11 = type metadata accessor for PreparedIntent();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v10, v8);
  v15 = *(sub_18F1194F4(v13, MEMORY[0x1E69E7CC0], v8, v9) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v16 = sub_18F33AFF4(DynamicType, v9, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v16;
}

uint64_t sub_18F33B7EC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_18F521ACC();
  }

  else
  {
    return 0;
  }
}

double sub_18F33B850@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_18F0FD724(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18F33B874@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_18F33C18C(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v9);
}

double sub_18F33B930@<D0>(_OWORD *a1@<X8>)
{
  NSUserActivity.appEntityIdentifier.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

uint64_t sub_18F33B96C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  sub_18F1158E0(v5[0]);
  return NSUserActivity.appEntityIdentifier.setter(v5);
}

uint64_t NSUserActivity.appEntityIdentifier.setter(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = *a1;
  v1 = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_18F33BB00(&v6);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_18F33BB98(&v6);

  return sub_18F184680(v1);
}

double _sSo14NSUserActivityC10AppIntentsE19appEntityIdentifierAC0fG0VSgvg_0@<D0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_3_56();
  v3 = objc_getAssociatedObject(v1, &unk_1EAD0AC88);
  swift_endAccess();
  if (v3)
  {
    sub_18F52261C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_18F106E70(v7);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_18F33BB00(void *a1)
{
  if (*a1)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v2 = sub_18F522E0C();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_3_56();
  objc_setAssociatedObject(v1, &unk_1EAD0AC88, v2, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_18F33BB98(uint64_t *a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    v2 = a1[3];
    v4 = a1[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18F53F7E0;
    *(v5 + 32) = sub_18F27DB1C(v1, v4, v3, v2);
    v6 = objc_allocWithZone(MEMORY[0x1E69AD088]);
    v7 = sub_18F33C1F4();
    v26[0] = 0;
    v8 = [objc_opt_self() archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v26];
    v9 = v26[0];
    if (v8)
    {
      v10 = sub_18F520D4C();
      v12 = v11;

      v13 = sub_18F520D2C();
      OUTLINED_FUNCTION_2_74();
      sub_18F33C294(v14, v15, v16, v17, v18);

      sub_18F123A1C(v10, v12);
    }

    else
    {
      v24 = v9;
      v25 = sub_18F520A8C();

      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_74();

    sub_18F33C294(v19, v20, v21, v22, v23);
  }
}

void (*NSUserActivity.appEntityIdentifier.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  _sSo14NSUserActivityC10AppIntentsE19appEntityIdentifierAC0fG0VSgvg_0(v3);
  return sub_18F33BDEC;
}

void sub_18F33BDEC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_92(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_1_73();
    sub_18F1158E0(v3);
    NSUserActivity.appEntityIdentifier.setter(v4);
    sub_18F184680(*v1);
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    NSUserActivity.appEntityIdentifier.setter(v4);
  }

  free(v1);
}

void (*sub_18F33BEA0(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = *v1;
  _sSo14NSUserActivityC10AppIntentsE19appEntityIdentifierAC0fG0VSgvg_0(v3);
  return sub_18F33BDEC;
}

void NSUserActivity._annotationIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = sub_18F33BFF8();
  if (v2)
  {
    v6 = v2;
    LNViewAnnotations.asViewAnnotationIdentifier()();
    v5 = v4;

    sub_18F33B874(v5, type metadata accessor for _ViewAnnotationIdentifier, type metadata accessor for _ViewAnnotationIdentifier, a1);
  }

  else
  {
    v3 = type metadata accessor for _ViewAnnotationIdentifier();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_18F33BFF8()
{
  v1 = sub_18F33C318(0xD00000000000001ALL, 0x800000018F52A020, v0);
  if (v2 >> 60 == 15 || (v3 = v1, v4 = v2, sub_18F0F21A8(0, &qword_1EACD0540), sub_18F0F21A8(0, &qword_1EACD0548), v10 = sub_18F5222FC(), sub_18F190748(v3, v4), !v10))
  {
    if (qword_1ED6FD658 != -1)
    {
      swift_once();
    }

    v5 = sub_18F52165C();
    __swift_project_value_buffer(v5, qword_1ED707698);
    v6 = sub_18F52163C();
    v7 = sub_18F52221C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_18F0E9000, v6, v7, "Failed to retrieve stored LNViewAnnotations from NSUserActivity payload", v8, 2u);
      MEMORY[0x193ADD350](v8, -1, -1);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_18F33C18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_18F33C1F4()
{
  sub_18F0F21A8(0, &unk_1ED6FE390);
  v1 = sub_18F521C8C();

  v2 = sub_18F521C8C();

  v3 = [v0 initWithEntities:v1 intents:v2];

  return v3;
}

void sub_18F33C294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_18F5218AC();

  [a5 _setPayload_object_identifier_];
}

uint64_t sub_18F33C318(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_18F5218AC();

  v5 = [a3 _payloadForIdentifier_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_18F520D4C();

  return v6;
}

uint64_t sub_18F33C3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t (**a1)()@<X8>)@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a2;
  *(v8 + 3) = a3;
  *(v8 + 4) = a1;
  a4[3] = type metadata accessor for _AsyncIntentItemCollection();
  OUTLINED_FUNCTION_0_93();
  a4[4] = swift_getWitnessTable();
  *a4 = sub_18F33D2AC;
  a4[1] = v8;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t _AsyncIntentItemCollection.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static _AsyncIntentItemCollection.defaultResolverSpecification.getter()
{
  v0 = type metadata accessor for _AsyncIntentItemCollection();
  OUTLINED_FUNCTION_0_93();
  WitnessTable = swift_getWitnessTable();
  return EmptyResolverSpecification.init()(v0, WitnessTable);
}

id static _AsyncIntentItemCollection<>.valueType.getter()
{
  OUTLINED_FUNCTION_5_53();
  v1 = v0();
  v2 = [objc_allocWithZone(MEMORY[0x1E69AC6F8]) initWithMemberValueType:v1 capabilities:3];

  return v2;
}

id _AsyncIntentItemCollection<>._asValue.getter(void *a1, uint64_t a2)
{
  type metadata accessor for AsyncIntentValueSequenceContainer(0);
  OUTLINED_FUNCTION_2_75();
  v4 = a1[2];
  sub_18F260338(&v8, v4, a1[3], a1[4]);
  v5 = (*(a2 + 8))(v4, a2);
  v6 = sub_18F260548(v5, 3);

  return v6;
}

uint64_t _AsyncIntentItemCollection<>.defaultDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DisplayRepresentation();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

id sub_18F33C724(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for AsyncIntentValueSequenceContainer(0);
  OUTLINED_FUNCTION_2_75();
  v6 = *(a1 + 16);
  sub_18F260338(&v10, v6, *(a1 + 24), *(*(a2 + 8) + 24));
  v7 = a3(v6, a2);
  v8 = sub_18F260548(v7, 3);

  return v8;
}

id sub_18F33C830()
{
  OUTLINED_FUNCTION_6_52();
  v1 = v0();
  v2 = [objc_allocWithZone(MEMORY[0x1E69AC6F8]) initWithMemberValueType:v1 capabilities:3];

  return v2;
}

id sub_18F33C888(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AsyncIntentValueSequenceContainer(0);
  OUTLINED_FUNCTION_2_75();
  v4 = *(a1 + 16);
  sub_18F260338(&v8, v4, *(a1 + 24), *(a2 + 8));
  v5 = static _IntentValueRepresentable.valueType.getter(v4, a2);
  v6 = sub_18F260548(v5, 3);

  return v6;
}

uint64_t (*sub_18F33C958())()
{
  OUTLINED_FUNCTION_3_57();
  v4 = swift_allocBox();
  (*(*(v1 - 8) + 32))(v5, v3, v1);
  OUTLINED_FUNCTION_4_58();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v0;
  v6[5] = v4;
  return sub_18F33D2A0;
}

uint64_t sub_18F33C9F8()
{
  swift_projectBox();
  swift_beginAccess();
  sub_18F52257C();
  return swift_endAccess();
}

uint64_t sub_18F33CA64(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F33CA84, 0, 0);
}

uint64_t sub_18F33CA84()
{
  (**(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F33CAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F33CB84;

  return sub_18F33CA64(a1);
}

uint64_t sub_18F33CB84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18F33CC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_18F33CD48;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_18F33CD48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18F33CE44@<X0>(uint64_t (**a1)()@<X8>)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F521CBC();
  sub_18F521DBC();
  swift_getWitnessTable();
  sub_18F5229AC();
  swift_getWitnessTable();
  sub_18F33C958();
  v3 = v2;
  a1[3] = type metadata accessor for AsyncIteratorAdapter();
  result = swift_getWitnessTable();
  a1[4] = result;
  *a1 = sub_18F33D2A0;
  a1[1] = v3;
  return result;
}

uint64_t sub_18F33CF70()
{
  OUTLINED_FUNCTION_3_57();
  v5 = v4;
  OUTLINED_FUNCTION_4_58();
  v6 = swift_allocObject();
  *(v6 + 2) = v2;
  *(v6 + 3) = v1;
  *(v6 + 4) = v0;
  *(v6 + 5) = v3;
  v5[3] = type metadata accessor for _AsyncIntentItemCollection();
  OUTLINED_FUNCTION_0_93();
  v5[4] = swift_getWitnessTable();
  *v5 = sub_18F33D27C;
  v5[1] = v6;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F33D01C@<X0>(uint64_t a1@<X1>, uint64_t (**a2)()@<X8>)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18F52269C();
    sub_18F52205C();
  }

  else
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  sub_18F52206C();
  swift_getWitnessTable();
  sub_18F33C958();
  v4 = v3;
  a2[3] = type metadata accessor for AsyncIteratorAdapter();
  result = swift_getWitnessTable();
  a2[4] = result;
  *a2 = sub_18F33D2A0;
  a2[1] = v4;
  return result;
}

uint64_t sub_18F33D18C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F33D1C8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F33D21C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18F33D2B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AppContext.fetchActionListenerEndpoint(for:auditToken:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F33D330, 0, 0);
}

uint64_t sub_18F33D330()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_18F33D42C;

  return sub_18F270870(&unk_18F558980, v3);
}

uint64_t sub_18F33D42C(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 128) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F33D574, 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(a1);
  }
}

uint64_t sub_18F33D574()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F33D5D0(uint64_t a1)
{
  *(v1 + 256) = a1;
  v2 = swift_task_alloc();
  *(v1 + 264) = v2;
  *v2 = v1;
  v2[1] = sub_18F33D690;

  return sub_18F1119D8();
}

uint64_t sub_18F33D690(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 272) = a1;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v5 + 280) = v11;
    *v11 = v7;
    v11[1] = sub_18F33D7F8;

    return sub_18F1316DC();
  }
}

uint64_t sub_18F33D7F8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F33DF54, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 296) = v7;
    *v7 = v5;
    v7[1] = sub_18F33D954;

    return sub_18F1321C4(0);
  }
}

uint64_t sub_18F33D954()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_18F33EE60;
  }

  else
  {
    v4 = sub_18F33DA5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_18F33DA5C()
{
  sub_18F0FD724(*(v0 + 272) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6BE8);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
    AppIntent.lnAction.getter(v2, *(*(v1 + 8) + 8), (v0 + 216));
    sub_18F220C38();
    if (swift_dynamicCast())
    {
      *(v0 + 304) = *(v0 + 248);
      v3 = *(v0 + 40);
      v4 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v3);
      v9 = (*(v4 + 16) + **(v4 + 16));
      v5 = swift_task_alloc();
      *(v0 + 312) = v5;
      *v5 = v0;
      v5[1] = sub_18F33DCE4;

      return v9(v0 + 136, v3, v4);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_18F33EC1C(v0 + 96);
  }

  sub_18F33EC84();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F33DCE4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 320) = v0;

  if (v0)
  {
    v7 = sub_18F33DFB0;
  }

  else
  {
    v7 = sub_18F33DDE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F33DDE4()
{
  v1 = *(v0 + 152);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 192) = v1;
  *(v0 + 208) = *(v0 + 168);
  v2 = objc_opt_self();
  v3 = *(v0 + 200);
  *(v0 + 328) = *(v0 + 184);
  *(v0 + 344) = v3;
  v4 = [v2 if:v0 + 328 dataWithAuditToken:?];
  v5 = *(v0 + 304);
  if (v4)
  {
    v6 = v4;
    v7 = *(v0 + 256);
    sub_18F520D4C();

    v8 = objc_allocWithZone(type metadata accessor for XPCListenerEndpointContainer());
    v9 = XPCListenerEndpointContainer.init(listenerEndpoint:auditTokenData:resolvedAction:)();

    *v7 = v9;
  }

  else
  {
    sub_18F33EC84();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    sub_18F33ECD8(v0 + 176);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v10();
}

uint64_t sub_18F33DF54()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F33DFB0()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F33E020()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_18F0FC874;

  return sub_18F33D5D0(v2);
}

uint64_t sub_18F33E1BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void *a8)
{
  v8[2] = a1;
  v8[3] = a8;
  v8[4] = _Block_copy(aBlock);
  v16 = a1;
  v17 = a8;
  v18 = swift_task_alloc();
  v8[5] = v18;
  *v18 = v8;
  v18[1] = sub_18F33E2B4;

  return AppContext.fetchActionListenerEndpoint(for:auditToken:connectionIdentifier:)(v16, a2, a3, a4, a5, a6);
}

uint64_t sub_18F33E2B4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  OUTLINED_FUNCTION_39();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_18F520A7C();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

id XPCListenerEndpointContainer.listenerEndpoint.getter()
{
  v1 = OBJC_IVAR___LNXPCListenerEndpointContainer_listenerEndpoint;
  OUTLINED_FUNCTION_8_44();
  v2 = *(v0 + v1);

  return v2;
}

void XPCListenerEndpointContainer.listenerEndpoint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LNXPCListenerEndpointContainer_listenerEndpoint;
  OUTLINED_FUNCTION_99();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t XPCListenerEndpointContainer.auditTokenData.getter()
{
  v1 = v0 + OBJC_IVAR___LNXPCListenerEndpointContainer_auditTokenData;
  swift_beginAccess();
  v2 = *v1;
  sub_18F16AAE0(*v1, *(v1 + 8));
  return v2;
}

uint64_t XPCListenerEndpointContainer.auditTokenData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___LNXPCListenerEndpointContainer_auditTokenData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_18F123A1C(v6, v7);
}

id XPCListenerEndpointContainer.resolvedAction.getter()
{
  v1 = OBJC_IVAR___LNXPCListenerEndpointContainer_resolvedAction;
  OUTLINED_FUNCTION_8_44();
  v2 = *(v0 + v1);

  return v2;
}

void XPCListenerEndpointContainer.resolvedAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LNXPCListenerEndpointContainer_resolvedAction;
  OUTLINED_FUNCTION_99();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id XPCListenerEndpointContainer.init(listenerEndpoint:auditTokenData:resolvedAction:)()
{
  OUTLINED_FUNCTION_6_53();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___LNXPCListenerEndpointContainer_listenerEndpoint] = v4;
  v6 = &v1[OBJC_IVAR___LNXPCListenerEndpointContainer_auditTokenData];
  *v6 = v3;
  *(v6 + 1) = v2;
  *&v1[OBJC_IVAR___LNXPCListenerEndpointContainer_resolvedAction] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_18F33E998(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000002ELL;
  }
}

id XPCListenerEndpointContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCListenerEndpointContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18F33EB34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_18F0FC874;

  return sub_18F33E1BC(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18F33EC1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18F33EC84()
{
  result = qword_1EACD6BF8;
  if (!qword_1EACD6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6BF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCListenerEndpointContainer.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F33EE0C()
{
  result = qword_1EACD6C00;
  if (!qword_1EACD6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6C00);
  }

  return result;
}

uint64_t DisplayRepresentation.init(SharedIndexedViewData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  sub_18F520ACC();
  v8 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = type metadata accessor for DisplayRepresentation();
  v13 = v12[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = a3 + v12[7];
  *v21 = xmmword_18F540410;
  *(a3 + v12[8]) = 0;
  *(a3 + v12[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v8);
  sub_18F190748(*v21, *(v21 + 8));
  *v21 = a1;
  *(v21 + 8) = a2;
  return sub_18F2608E8(v3, a3 + v13);
}

uint64_t DisplayRepresentation.init(sharedIndexedViewData:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for DisplayRepresentation();
  v11 = v10[5];
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = a5 + v10[7];
  *v20 = xmmword_18F540410;
  *(a5 + v10[8]) = 0;
  *(a5 + v10[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v12);
  sub_18F190748(*v20, *(v20 + 8));
  *v20 = a1;
  *(v20 + 8) = a2;
  (*(*(v12 - 8) + 32))(a5, a3, v12);

  return sub_18F2608E8(a4, a5 + v11);
}

uint64_t DisplayRepresentation.init(mangledViewName:viewCodableProxy:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for DisplayRepresentation();
  v12 = v11[5];
  v13 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = a6 + v11[7];
  *v21 = xmmword_18F540410;
  *(a6 + v11[8]) = 0;
  *(a6 + v11[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v13);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  sub_18F33F2C0(a3, &v31);
  v30[0] = a1;
  v30[1] = a2;
  sub_18F33F324();
  v25 = sub_18F52068C();
  v27 = v26;

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  sub_18F33F378(v30);
  sub_18F190748(*v21, *(v21 + 8));
  *v21 = v25;
  *(v21 + 8) = v27;
  (*(*(v13 - 8) + 32))(a6, a4, v13);
  return sub_18F2608E8(a5, a6 + v12);
}

_OWORD *ViewEncodable.init(mangledViewName:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  return sub_18F14B458(a3, (a4 + 16));
}

__n128 SharedIndexedViewFormatEncodable.init(viewEncodable:encodeDecodeStyle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_18F33F2C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18F33F324()
{
  result = qword_1EACCE7C0;
  if (!qword_1EACCE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE7C0);
  }

  return result;
}

uint64_t DisplayRepresentation.init(mangledViewName:viewCodableProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23();
  v10 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  sub_18F33F2C0(a3, v40);
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  v19 = type metadata accessor for DisplayRepresentation();
  v36 = v19[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = a4 + v19[7];
  *v27 = xmmword_18F540410;
  *(a4 + v19[8]) = 0;
  *(a4 + v19[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v10);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  sub_18F33F2C0(v40, &v39);
  v38[0] = a1;
  v38[1] = a2;
  sub_18F33F324();
  v31 = sub_18F52068C();
  v33 = v32;

  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  sub_18F33F378(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  sub_18F190748(*v27, *(v27 + 8));
  *v27 = v31;
  *(v27 + 8) = v33;
  (*(v12 + 32))(a4, v15, v10);
  return sub_18F2608E8(v4, a4 + v36);
}

AppIntents::ViewCodingKeys_optional __swiftcall ViewCodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 25705 && stringValue._object == 0xE200000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (OUTLINED_FUNCTION_5_54() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 2003134838 && object == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_54();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t ViewCodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 2003134838;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18F33F76C(uint64_t a1)
{
  v2 = sub_18F33F9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F33F7A8(uint64_t a1)
{
  v2 = sub_18F33F9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewEncodable.mangledViewName.getter()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t ViewEncodable.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C08);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F33F9D0();
  OUTLINED_FUNCTION_7_3();
  v11[0] = 0;
  sub_18F522C3C();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  v13 = 1;
  sub_18F522BDC();
  __swift_project_boxed_opaque_existential_1Tm((v4 + 16), *(v4 + 40));
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  sub_18F522CCC();
  (*(v8 + 8))(v3, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

unint64_t sub_18F33F9D0()
{
  result = qword_1ED6FB590;
  if (!qword_1ED6FB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FB590);
  }

  return result;
}

uint64_t sub_18F33FA44(uint64_t a1, uint64_t a2)
{
  if (a1 == 1852797802 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F522D5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18F33FAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F33FA44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F33FAFC(uint64_t a1)
{
  v2 = sub_18F33FDA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F33FB38(uint64_t a1)
{
  v2 = sub_18F33FDA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F33FB74(uint64_t a1)
{
  v2 = sub_18F33FDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F33FBB0(uint64_t a1)
{
  v2 = sub_18F33FDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EncodeDecodeStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C10);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C18);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F33FDA4();
  sub_18F522FEC();
  sub_18F33FDF8();
  sub_18F522BEC();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

unint64_t sub_18F33FDA4()
{
  result = qword_1ED6FBB40;
  if (!qword_1ED6FBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB40);
  }

  return result;
}

unint64_t sub_18F33FDF8()
{
  result = qword_1ED6FBB28;
  if (!qword_1ED6FBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB28);
  }

  return result;
}

uint64_t EncodeDecodeStyle.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t EncodeDecodeStyle.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C20);
  OUTLINED_FUNCTION_0();
  v38 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C28);
  OUTLINED_FUNCTION_0();
  v39 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F33FDA4();
  sub_18F522FBC();
  if (v1)
  {
    goto LABEL_9;
  }

  v36 = v7;
  v37 = a1;
  v13 = sub_18F522BBC();
  result = sub_18F34062C(v13, 0);
  v18 = v12;
  if (v16 == v17 >> 1)
  {
    v38 = result;
LABEL_8:
    v29 = v8;
    v30 = v39;
    v31 = sub_18F52285C();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3598);
    *v33 = &type metadata for EncodeDecodeStyle;
    sub_18F522B6C();
    sub_18F52284C();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v30 + 8))(v18, v29);
    a1 = v37;
LABEL_9:
    v34 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  if (v16 < (v17 >> 1))
  {
    v19 = sub_18F340678(v16 + 1, v17 >> 1, result, v15, v16, v17);
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = v21 == v23 >> 1;
    v25 = v37;
    v26 = v38;
    if (v24)
    {
      sub_18F33FDF8();
      v27 = v36;
      sub_18F522B5C();
      v28 = v39;
      swift_unknownObjectRelease();
      (*(v26 + 8))(v27, v3);
      (*(v28 + 8))(v18, v8);
      v34 = v25;
      return __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    v38 = v19;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

AppIntents::SharedIndexedViewFormatCodingKeys_optional __swiftcall SharedIndexedViewFormatCodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x61646F4377656976 && stringValue._object == 0xEB00000000656C62;
  if (v5 || (OUTLINED_FUNCTION_5_54() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0xD000000000000011 && 0x800000018F52A230 == object)
  {

    v7 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_54();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t SharedIndexedViewFormatCodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x61646F4377656976;
  }
}

uint64_t sub_18F3403C4(uint64_t a1)
{
  v2 = sub_18F3406F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F340400(uint64_t a1)
{
  v2 = sub_18F3406F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharedIndexedViewFormatEncodable.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C30);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F3406F4();
  OUTLINED_FUNCTION_7_3();
  sub_18F340748();
  sub_18F522C6C();
  if (!v1)
  {
    sub_18F34079C();
    sub_18F522C6C();
  }

  return (*(v6 + 8))(v2, v4);
}

void CSSearchableItemAttributeSet.displayRepresentation(displayRepresentation:)(uint64_t a1)
{
  v3 = type metadata accessor for DisplayRepresentation();
  v4 = 0;
  if (*(a1 + *(v3 + 28) + 8) >> 60 != 15)
  {
    v4 = sub_18F520D2C();
  }

  v5 = v4;
  [v1 setCachedViewDataSafe_];
}

uint64_t sub_18F34062C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_18F340678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_18F3406F4()
{
  result = qword_1ED6FB580;
  if (!qword_1ED6FB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FB580);
  }

  return result;
}

unint64_t sub_18F340748()
{
  result = qword_1ED6FB598[0];
  if (!qword_1ED6FB598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FB598);
  }

  return result;
}

unint64_t sub_18F34079C()
{
  result = qword_1ED6FB588;
  if (!qword_1ED6FB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FB588);
  }

  return result;
}

unint64_t sub_18F3407F4()
{
  result = qword_1EACD6C38;
  if (!qword_1EACD6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6C38);
  }

  return result;
}

unint64_t sub_18F34084C()
{
  result = qword_1ED6FBB48;
  if (!qword_1ED6FBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB48);
  }

  return result;
}

unint64_t sub_18F3408A4()
{
  result = qword_1ED6FBB50;
  if (!qword_1ED6FBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB50);
  }

  return result;
}

unint64_t sub_18F3408FC()
{
  result = qword_1EACD6C40;
  if (!qword_1EACD6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6C40);
  }

  return result;
}

unint64_t sub_18F340954()
{
  result = qword_1EACD6C48;
  if (!qword_1EACD6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6C48);
  }

  return result;
}

unint64_t sub_18F3409AC()
{
  result = qword_1ED6FBB58[0];
  if (!qword_1ED6FBB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FBB58);
  }

  return result;
}

unint64_t sub_18F340A04()
{
  result = qword_1ED6FBB10;
  if (!qword_1ED6FBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB10);
  }

  return result;
}

_BYTE *sub_18F340A7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_18F340B60(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F340C20()
{
  result = qword_1EACD6C50[0];
  if (!qword_1EACD6C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD6C50);
  }

  return result;
}

unint64_t sub_18F340C78()
{
  result = qword_1ED6FBB18;
  if (!qword_1ED6FBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB18);
  }

  return result;
}

unint64_t sub_18F340CD0()
{
  result = qword_1ED6FBB20;
  if (!qword_1ED6FBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB20);
  }

  return result;
}

unint64_t sub_18F340D28()
{
  result = qword_1ED6FBB30;
  if (!qword_1ED6FBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB30);
  }

  return result;
}

unint64_t sub_18F340D80()
{
  result = qword_1ED6FBB38;
  if (!qword_1ED6FBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB38);
  }

  return result;
}

uint64_t EntityQueryProperty.__allocating_init(_:entityProvider:comparators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = swift_allocObject();
  EntityQueryProperty.init(_:entityProvider:comparators:)(a1, a2, a3, a4);
  return v8;
}

void *EntityQueryProperty.init(_:entityProvider:comparators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4;
  v4[6] = a3;
  v4[7] = a1;
  v4[5] = a2;
  v12 = v11;
  v13 = v10[20];
  *&v33 = swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();

  v25 = sub_18F52194C();
  v15 = v14;
  v38 = a4();
  v28 = *(v12 + 176);
  v29 = v10[24];
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v16 = v10[21];
  v17 = v10[25];
  v18 = *(v12 + 144);
  v27 = *(v12 + 144);
  v33 = v18;
  v34 = v13;
  v35 = v16;
  v36 = v28;
  v37 = v17;
  type metadata accessor for AnyEntityQueryComparator();
  v19 = sub_18F521DBC();
  Comparator = type metadata accessor for AnyPropertyQueryComparator();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_18F10C138(sub_18F34118C, v26, v19, Comparator, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v22);

  v5[2] = v25;
  v5[3] = v15;
  v5[4] = v23;
  return v5;
}

uint64_t sub_18F3410BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnyEntityQueryComparator();
  result = sub_18F1F48B0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t EntityQueryProperty.__allocating_init<>(_:comparators:)(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = swift_allocObject();
  v6 = *(v2 + 176);
  *(v5 + 24) = *(v2 + 160);
  *(v5 + 16) = *(v2 + 144);
  *(v5 + 40) = v6;
  *(v5 + 56) = *(v2 + 200);

  return EntityQueryProperty.__allocating_init(_:entityProvider:comparators:)(a1, sub_18F341258, v5, a2);
}

uint64_t sub_18F34128C()
{
}

uint64_t EntityQueryProperty.deinit()
{
  EntityQueryPropertyDeclaration.deinit();

  return v0;
}

uint64_t EntityQueryPropertyDeclaration.deinit()
{

  return v0;
}

uint64_t EntityQueryProperty.__deallocating_deinit()
{
  EntityQueryProperty.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t EntityQueryPropertyDeclaration.__deallocating_deinit()
{
  EntityQueryPropertyDeclaration.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *sub_18F3414C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v55 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v55 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6D60);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD6D68) - 8);
  v7 = *v6;
  v56 = *(*v6 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v57 = v9;
  *(v9 + 16) = xmmword_18F541F50;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_18F520ACC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation();
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  v29 = v20[7];
  v55 = xmmword_18F540410;
  OUTLINED_FUNCTION_6_5(v29, xmmword_18F540410);
  *(v11 + v30) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v12);
  sub_18F0FF628(v5, v11 + v21, &qword_1EACCF7A8);
  sub_18F0FF628(v2, v11 + v25, &qword_1EACD0270);
  v34 = v10 + v56;
  v35 = v10 + v56 + v6[14];
  *v34 = 0;
  *(v34 + 8) = -127;
  OUTLINED_FUNCTION_2_76(0x6D53u);
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v12);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v16);
  v42 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v12);
  v46 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v16);
  OUTLINED_FUNCTION_6_5(v20[7], v55);
  *(v35 + v50) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v12);
  sub_18F0FF628(v5, v35 + v42, &qword_1EACCF7A8);
  sub_18F0FF628(v2, v35 + v46, &qword_1EACD0270);
  sub_18F3425B8();
  result = sub_18F5216CC();
  off_1ED6FE100 = result;
  return result;
}

_UNKNOWN **sub_18F341848()
{
  if (qword_1ED6FE0F8 != -1)
  {
    OUTLINED_FUNCTION_0_94();
  }

  return &off_1ED6FE100;
}

uint64_t static ResizeBehavior.caseDisplayRepresentations.getter()
{
  if (qword_1ED6FE0F8 != -1)
  {
    OUTLINED_FUNCTION_0_94();
  }

  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static ResizeBehavior.caseDisplayRepresentations.setter(void *a1)
{
  if (qword_1ED6FE0F8 != -1)
  {
    OUTLINED_FUNCTION_0_94();
  }

  swift_beginAccess();
  off_1ED6FE100 = a1;
}

uint64_t (*static ResizeBehavior.caseDisplayRepresentations.modify())()
{
  if (qword_1ED6FE0F8 != -1)
  {
    OUTLINED_FUNCTION_0_94();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F3419D8@<X0>(void *a1@<X8>)
{
  sub_18F341848();
  swift_beginAccess();
  *a1 = off_1ED6FE100;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F341A2C(void **a1)
{
  v1 = *a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F341848();
  swift_beginAccess();
  off_1ED6FE100 = v1;
}

uint64_t ResizeBehavior.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[0] = 45;
  v32[1] = 0xE100000000000000;
  v31[2] = v32;
  v4 = sub_18F341E48(0x7FFFFFFFFFFFFFFFLL, 1, sub_18F16C86C, v31, a1, a2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v32[0] = MEMORY[0x1E69E7CC0];
    sub_18F3AA158();
    v6 = v32[0];
    v7 = (v4 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v12 = MEMORY[0x193ADAF70](v8, v9, v10, v11);
      v14 = v13;

      v32[0] = v6;
      v15 = v6[2];
      if (v15 >= v6[3] >> 1)
      {
        sub_18F3AA158();
        v6 = v32[0];
      }

      v6[2] = v15 + 1;
      v16 = &v6[2 * v15];
      v16[4] = v12;
      v16[5] = v14;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v17 = v6[2];
  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = OUTLINED_FUNCTION_2_76(0x6D73u);
  v19 = v6[4];
  v20 = v6[5];
  v21 = v19 == v18 && v20 == 0xE700000000000000;
  if (v21 || (sub_18F522D5C() & 1) != 0)
  {
    if (v17 == 2)
    {
      v22 = v6[6];
      v23 = v6[7];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      result = sub_18F27C7E8(v22, v23);
    }

    else
    {

      result = 0;
      v25 = 1;
    }

    v26 = v25 & 1 | 0x80;
    goto LABEL_28;
  }

  v27 = v19 == 0x72656772616CLL && v20 == 0xE600000000000000;
  if (!v27 && (sub_18F522D5C() & 1) == 0)
  {
LABEL_25:

    result = 0;
    v26 = -2;
    goto LABEL_28;
  }

  if (v17 == 2)
  {
    v28 = v6[6];
    v29 = v6[7];
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    result = sub_18F27C7E8(v28, v29);
  }

  else
  {

    result = 0;
    v30 = 1;
  }

  v26 = v30 & 1;
LABEL_28:
  *a3 = result;
  *(a3 + 8) = v26;
  return result;
}

uint64_t ResizeBehavior.rawValue.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 0)
  {
    result = OUTLINED_FUNCTION_2_76(0x6D73u);
    if (v3)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0x72656772616CLL;
  if ((v1 & 1) == 0)
  {
LABEL_5:
    OUTLINED_FUNCTION_5_9();
    MEMORY[0x193ADB000]();
    MEMORY[0x193ADB000](45, 0xE100000000000000);
    sub_18F52201C();
    return v4;
  }

  return result;
}

uint64_t sub_18F341E10@<X0>(uint64_t *a1@<X8>)
{
  result = ResizeBehavior.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18F341E48(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_18F521AFC();
    OUTLINED_FUNCTION_4_59();
    sub_18F167300();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_18F167300();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_58();
      v17 = sub_18F521ACC();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_3_58();
      v16 = sub_18F5219EC();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_18F521AFC();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F167300();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_18F167300();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_3_58();
    v16 = sub_18F5219EC();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_18F521AFC();
        OUTLINED_FUNCTION_4_59();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_18F167300();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18F3421E4()
{
  result = qword_1ED6FEC08;
  if (!qword_1ED6FEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC08);
  }

  return result;
}

unint64_t sub_18F342238()
{
  result = qword_1ED6FEBF0;
  if (!qword_1ED6FEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBF0);
  }

  return result;
}

unint64_t sub_18F34228C()
{
  result = qword_1ED6FEC20;
  if (!qword_1ED6FEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC20);
  }

  return result;
}

unint64_t sub_18F3422E0(uint64_t a1)
{
  result = sub_18F342308();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F342308()
{
  result = qword_1ED6FEC00;
  if (!qword_1ED6FEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC00);
  }

  return result;
}

unint64_t sub_18F34235C(uint64_t a1)
{
  result = sub_18F342384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F342384()
{
  result = qword_1ED6FEBF8;
  if (!qword_1ED6FEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBF8);
  }

  return result;
}

unint64_t sub_18F342428()
{
  result = qword_1ED6FEC10;
  if (!qword_1ED6FEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC10);
  }

  return result;
}

uint64_t sub_18F3424BC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_18F342510()
{
  result = qword_1ED6FEC38;
  if (!qword_1ED6FEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC38);
  }

  return result;
}

unint64_t sub_18F342564()
{
  result = qword_1ED6FEC18;
  if (!qword_1ED6FEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC18);
  }

  return result;
}

unint64_t sub_18F3425B8()
{
  result = qword_1ED6FEC30;
  if (!qword_1ED6FEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC30);
  }

  return result;
}

unint64_t sub_18F342610()
{
  result = qword_1ED6FEC28;
  if (!qword_1ED6FEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC28);
  }

  return result;
}

unint64_t sub_18F342668()
{
  result = qword_1ED6FE070;
  if (!qword_1ED6FE070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResizeBehavior(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for ResizeBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_18F52288C();
  result = sub_18F521D2C();
  *a3 = result;
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = a1 + 2 * a2;
    if (!__OFADD__(a1, 2 * a2))
    {
      MEMORY[0x193ADAF90](result);
      sub_18F521DBC();
      return sub_18F521CFC();
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  sub_18F12A000();
  OUTLINED_FUNCTION_8_5();
  v1 = sub_18F5225CC();
  MEMORY[0x193ADB000](v1);
}

uint64_t IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)(uint64_t a1)
{
  sub_18F52288C();
  sub_18F521D7C();
  v2 = sub_18F522C9C();
  MEMORY[0x193ADB000](v2);

  OUTLINED_FUNCTION_39_13();
  MEMORY[0x193ADB000](0x656D617261707B24, 0xEB00000000726574);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  swift_allocObject();
  v3 = sub_18F521CDC();
  *v4 = a1;
  sub_18F129FD4(v3);

  sub_18F521D5C();
}

__n128 IntentURLRepresentation.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u8[8] = 0;
  return result;
}

uint64_t sub_18F342A58()
{
  OUTLINED_FUNCTION_69();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F29A528;

  return sub_18F342AFC(v2);
}

uint64_t sub_18F342AFC(uint64_t a1)
{
  v1[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v1[15] = swift_task_alloc();
  v2 = sub_18F520C8C();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F342BF4, 0, 0);
}

uint64_t sub_18F342BF4()
{

  v7 = MEMORY[0x1E69E7CC0];
  MEMORY[0x193ADAF90](2);
  sub_18F206490(1);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 37;
  v0[5] = 0xE100000000000000;
  v0[6] = 9509;
  v0[7] = 0xE200000000000000;
  sub_18F12A000();
  OUTLINED_FUNCTION_8_5();
  v1 = OUTLINED_FUNCTION_38_11();
  MEMORY[0x193ADB000](v1);

  KeyPath = swift_getKeyPath();
  sub_18F2042DC(KeyPath);

  v0[8] = 0;
  v0[10] = 37;
  v0[9] = 0xE000000000000000;
  v0[11] = 0xE100000000000000;
  v0[12] = 9509;
  v0[13] = 0xE200000000000000;
  OUTLINED_FUNCTION_8_5();
  v3 = OUTLINED_FUNCTION_38_11();
  MEMORY[0x193ADB000](v3);

  v0[19] = v7;
  v0[20] = 0xE000000000000000;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v4;
  *v4 = v5;
  v4[1] = sub_18F342DF0;

  return sub_18F2965CC();
}

uint64_t sub_18F342DF0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_18F342F0C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[15];
  v2 = v0[16];

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_18F0EF148(v0[15], &qword_1EACD0360);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[16];
    (*(v4 + 32))(v3, v0[15], v5);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    v6 = OUTLINED_FUNCTION_66_4();
    v8 = OUTLINED_FUNCTION_29_32(v6, v7);
    v9(v8, v3, v5);
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
  }

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X1, X16 }
}

uint64_t URLRepresentableIntent.perform()()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v0[2] = OUTLINED_FUNCTION_34_0();
  v1 = sub_18F520C8C();
  v0[3] = v1;
  OUTLINED_FUNCTION_51(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v3;
  *v3 = v4;
  v3[1] = sub_18F343190;
  OUTLINED_FUNCTION_37_3();

  return URLRepresentableIntent.urlRepresentation.getter();
}

uint64_t sub_18F343190()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_18F343274()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_18F0EF148(v1, &qword_1EACD0360);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = v0[4];
    v3 = v0[5];
    (*(v4 + 32))(v3, v1, v2);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    v5 = OUTLINED_FUNCTION_66_4();
    v7 = OUTLINED_FUNCTION_29_32(v5, v6);
    v8(v7, v3, v2);
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v4 + 8))(v3, v2);
  }

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F3433D4()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 976) = v2;
  *(v1 + 968) = v3;
  *(v1 + 960) = v4;
  v5 = *v0;
  v6 = *(v0 + 8);
  *(v1 + 984) = *v0;
  *(v1 + 992) = v6;
  v7 = *(v0 + 16);
  *(v1 + 1000) = v7;
  v8 = *(v0 + 24);
  *(v1 + 1128) = v8;
  sub_18F29A670(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F343454()
{
  switch(*(v0 + 1128))
  {
    case 1:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1080) = v18;
      *v18 = v19;
      OUTLINED_FUNCTION_36_24(v18);
      goto LABEL_10;
    case 2:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1096) = v14;
      *v14 = v15;
      OUTLINED_FUNCTION_36_24(v14);
      goto LABEL_10;
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1104) = v16;
      *v16 = v17;
      OUTLINED_FUNCTION_36_24(v16);
      goto LABEL_10;
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1120) = v12;
      *v12 = v13;
      OUTLINED_FUNCTION_36_24(v12);
LABEL_10:
      OUTLINED_FUNCTION_28_2();

      result = sub_18F34589C(v20, v21);
      break;
    default:
      v1 = *(v0 + 1000);
      v2 = *(v0 + 976);
      *(v0 + 920) = *(v0 + 984);
      *(v0 + 1008) = *(v2 + 16);
      sub_18F52288C();
      v3 = sub_18F521DBC();
      *(v0 + 1016) = v3;
      WitnessTable = swift_getWitnessTable();
      *(v0 + 1024) = WitnessTable;
      MEMORY[0x193ADB130](v3, WitnessTable);

      *(v0 + 928) = *(v0 + 912);
      sub_18F522A8C();
      sub_18F522A5C();
      v5 = *(v0 + 992);
      while (1)
      {
        *(v0 + 1040) = v1;
        *(v0 + 1032) = v5;
        sub_18F522A7C();
        sub_18F522A6C();
        *(v0 + 1048) = *(v0 + 768);
        v6 = *(v0 + 776);
        *(v0 + 1056) = v6;
        if (!v6)
        {

          sub_18F520C6C();

          OUTLINED_FUNCTION_71();
          OUTLINED_FUNCTION_28_2();

          __asm { BRAA            X1, X16 }
        }

        swift_getAtPartialKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
        if (swift_dynamicCast())
        {
          break;
        }

        *(v0 + 720) = v5;
        *(v0 + 728) = v1;
        OUTLINED_FUNCTION_15_37();
        v7 = sub_18F522C9C();
        MEMORY[0x193ADB000](v7);

        OUTLINED_FUNCTION_39_13();
        v8 = *(v0 + 712);
        *(v0 + 688) = *(v0 + 704);
        *(v0 + 696) = v8;
        OUTLINED_FUNCTION_35_19();
        swift_getAtPartialKeyPath();
        sub_18F52299C();
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 608);
        v9 = *(v0 + 744);
        *(v0 + 752) = *(v0 + 736);
        *(v0 + 760) = v9;
        sub_18F12A000();
        OUTLINED_FUNCTION_26_33();
        OUTLINED_FUNCTION_8_5();
        v5 = sub_18F5225CC();
        v11 = v10;

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
        v1 = v11;
      }

      sub_18F0FD0B4((v0 + 496), v0 + 536);
      OUTLINED_FUNCTION_49((v0 + 536));
      v26 = swift_task_alloc();
      *(v0 + 1064) = v26;
      *v26 = v0;
      OUTLINED_FUNCTION_10_40(v26);
      OUTLINED_FUNCTION_28_2();

      result = sub_18F345248(v27, v28, v29, v30);
      break;
  }

  return result;
}

uint64_t sub_18F3438EC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  v1[83] = v0;
  v1[84] = v3;
  v1[85] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v8 + 1072) = v7;

  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F3439DC()
{
  v1 = *(v0 + 1072);
  if (v1)
  {
    v2 = *(v0 + 672);
    v3 = *(v0 + 1048);
    v4 = *(v0 + 1040);
    *(v0 + 848) = *(v0 + 1032);
    *(v0 + 856) = v4;
    *(v0 + 864) = 0x656D617261707B24;
    *(v0 + 872) = 0xEB00000000726574;
    *(v0 + 952) = v3;
    v5 = sub_18F522C9C();
    MEMORY[0x193ADB000](v5);

    OUTLINED_FUNCTION_39_13();
    v6 = *(v0 + 872);
    *(v0 + 880) = *(v0 + 864);
    *(v0 + 888) = v6;
    *(v0 + 896) = v2;
    *(v0 + 904) = v1;
    sub_18F12A000();
    OUTLINED_FUNCTION_8_5();
    v7 = OUTLINED_FUNCTION_38_11();
    v9 = v8;
  }

  else
  {
    v10 = *(v0 + 1048);
    v11 = *(v0 + 1040);
    *(v0 + 784) = *(v0 + 1032);
    *(v0 + 792) = v11;
    *(v0 + 800) = 0x656D617261707B24;
    *(v0 + 808) = 0xEB00000000726574;
    *(v0 + 944) = v10;
    v12 = sub_18F522C9C();
    MEMORY[0x193ADB000](v12);

    OUTLINED_FUNCTION_39_13();
    v13 = *(v0 + 808);
    *(v0 + 816) = *(v0 + 800);
    *(v0 + 824) = v13;
    *(v0 + 832) = 0x296C6C756E28;
    *(v0 + 840) = 0xE600000000000000;
    sub_18F12A000();
    OUTLINED_FUNCTION_8_5();
    v7 = OUTLINED_FUNCTION_38_11();
    v9 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
  while (1)
  {
    *(v0 + 1040) = v9;
    *(v0 + 1032) = v7;
    sub_18F522A7C();
    sub_18F522A6C();
    *(v0 + 1048) = *(v0 + 768);
    v15 = *(v0 + 776);
    *(v0 + 1056) = v15;
    if (!v15)
    {

      sub_18F520C6C();

      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_28_2();

      __asm { BRAA            X1, X16 }
    }

    swift_getAtPartialKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    if (swift_dynamicCast())
    {
      break;
    }

    *(v0 + 720) = v7;
    *(v0 + 728) = v9;
    OUTLINED_FUNCTION_15_37();
    v16 = sub_18F522C9C();
    MEMORY[0x193ADB000](v16);

    OUTLINED_FUNCTION_39_13();
    v17 = *(v0 + 712);
    *(v0 + 688) = *(v0 + 704);
    *(v0 + 696) = v17;
    OUTLINED_FUNCTION_35_19();
    swift_getAtPartialKeyPath();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 608);
    v18 = *(v0 + 744);
    *(v0 + 752) = *(v0 + 736);
    *(v0 + 760) = v18;
    sub_18F12A000();
    OUTLINED_FUNCTION_26_33();
    OUTLINED_FUNCTION_8_5();
    v7 = OUTLINED_FUNCTION_38_11();
    v20 = v19;

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
    v9 = v20;
  }

  sub_18F0FD0B4((v0 + 496), v0 + 536);
  OUTLINED_FUNCTION_49((v0 + 536));
  v23 = swift_task_alloc();
  *(v0 + 1064) = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_10_40(v23, v24, v25, v26);
  OUTLINED_FUNCTION_28_2();

  return sub_18F345248(v27, v28, v29, v30);
}

uint64_t sub_18F343DF4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F343EF8()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 480))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2838);
    if (swift_dynamicCast())
    {
      if (*(v0 + 440))
      {
        sub_18F0FD0B4((v0 + 416), v0 + 376);
        OUTLINED_FUNCTION_49((v0 + 376));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1088) = v1;
        *v1 = v2;
        v1[1] = sub_18F344088;
        OUTLINED_FUNCTION_6_54();

        return URLRepresentableEntity.urlRepresentation.getter(v3, v4);
      }
    }

    else
    {
      *(v0 + 448) = 0;
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
    }
  }

  else
  {
    sub_18F0EF148(v0 + 456, &qword_1EACD0620);
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0;
  }

  sub_18F0EF148(v0 + 416, &qword_1EACD2840);
  v6 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v6);

  return v7();
}

uint64_t sub_18F344088()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F34416C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F344270()
{
  OUTLINED_FUNCTION_21();
  v1 = (v0 + 296);
  if (*(v0 + 360))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4598);
    OUTLINED_FUNCTION_22_31();
    if (swift_dynamicCast())
    {
      if (*(v0 + 320))
      {
        v2 = *(v0 + 960);
        sub_18F0FD0B4((v0 + 296), v0 + 256);
        v3 = *(v0 + 288);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 256), *(v0 + 280));
        URLRepresentableEnum.urlRepresentation.getter(v3, v2);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
        goto LABEL_8;
      }
    }

    else
    {
      *(v0 + 328) = 0;
      *v1 = 0u;
      *(v0 + 312) = 0u;
    }
  }

  else
  {
    sub_18F0EF148(v0 + 336, &qword_1EACD0620);
    *v1 = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  v4 = *(v0 + 960);
  sub_18F0EF148(v0 + 296, &qword_1EACD4590);
  v5 = sub_18F520C8C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
LABEL_8:
  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F3443D0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F3444D4()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 240))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4588);
    OUTLINED_FUNCTION_38_20();
    if (swift_dynamicCast())
    {
      if (*(v0 + 200))
      {
        sub_18F0FD0B4((v0 + 176), v0 + 136);
        OUTLINED_FUNCTION_49((v0 + 136));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1112) = v1;
        *v1 = v2;
        v1[1] = sub_18F344650;
        OUTLINED_FUNCTION_6_54();

        return _URLRepresentableEntity.urlRepresentation.getter(v3, v4, v5);
      }
    }

    else
    {
      *(v0 + 208) = 0;
      OUTLINED_FUNCTION_61();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 216, &qword_1EACD0620);
    OUTLINED_FUNCTION_61();
    *(v0 + 208) = 0;
  }

  sub_18F0EF148(v0 + 176, &qword_1EACD4580);
  v7 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v7);

  return v8();
}

uint64_t sub_18F344650()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F344734()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F344838()
{
  OUTLINED_FUNCTION_21();
  if (v0[15])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4578);
    OUTLINED_FUNCTION_37_23();
    if (swift_dynamicCast())
    {
      if (v0[10])
      {
        v1 = v0[120];
        OUTLINED_FUNCTION_41_17();
        v2 = v0[6];
        __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
        _URLRepresentableEnum.urlRepresentation.getter(v2, v1);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_32_3();
    }
  }

  else
  {
    sub_18F0EF148((v0 + 12), &qword_1EACD0620);
    OUTLINED_FUNCTION_7_48();
  }

  sub_18F0EF148((v0 + 7), &qword_1EACD4570);
  sub_18F520C8C();
  v3 = OUTLINED_FUNCTION_1_74();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
LABEL_8:
  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t sub_18F344970()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 448) = 0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_18F0EF148(v0 + 416, &qword_1EACD2840);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F3449F0()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 328) = 0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  sub_18F0EF148(v0 + 296, &qword_1EACD4590);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F344A70()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_18F0EF148(v0 + 176, &qword_1EACD4580);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F344AF4()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_18F0EF148(v0 + 56, &qword_1EACD4570);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

void sub_18F344B78(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_23_30(a1);
}

void sub_18F344B88(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_23_30(a1);
}

void sub_18F344B98(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_23_30(a1);
}

uint64_t URLRepresentableIntent.urlRepresentation.getter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_37(v1, v2);
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_37_3();
  v5 = type metadata accessor for _URLRepresentableIntentBox();
  v0[8] = v5;
  OUTLINED_FUNCTION_51(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_34_0();
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F344C94()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_17_38();
  v6(v5);
  (*(v2 + 32))(v1, v0, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 88) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_28_39(v7);
  OUTLINED_FUNCTION_31_9();

  return sub_18F346844(v9, v10);
}

uint64_t sub_18F344D64()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_18F344E48(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_23_30(a1);
}

uint64_t sub_18F344E58()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_37(v1, v2);
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_37_3();
  v5 = type metadata accessor for _AppIntentBox();
  v0[8] = v5;
  OUTLINED_FUNCTION_51(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_34_0();
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F344F44()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_17_38();
  v6(v5);
  (*(v2 + 32))(v1, v0, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 88) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_28_39(v7);
  OUTLINED_FUNCTION_31_9();

  return sub_18F346080(v9, v10);
}

uint64_t sub_18F345014()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F3450F8()
{
  OUTLINED_FUNCTION_69();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t IntentURLRepresentation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18F52288C();
  result = sub_18F521D2C();
  *a3 = result;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  return result;
}

double IntentURLRepresentation.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IntentURLRepresentation.init(_:)(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

uint64_t sub_18F345248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[32] = a2;
  v6 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F345274()
{
  v1 = *(*(v0 + 264) + 72);
  (v1)(*(v0 + 256));
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27D0);
    OUTLINED_FUNCTION_37_23();
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        OUTLINED_FUNCTION_41_17();
        __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
        OUTLINED_FUNCTION_21_29();
        v2 = swift_task_alloc();
        *(v0 + 280) = v2;
        *v2 = v0;
        v3 = OUTLINED_FUNCTION_27_33(v2);

        return v4(v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_32_3();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 96, &qword_1EACD0620);
    OUTLINED_FUNCTION_7_48();
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 256);
  sub_18F0EF148(v0 + 56, &qword_1EACD27B8);
  v1(v7, v6);
  if (*(v0 + 240))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27C8);
    OUTLINED_FUNCTION_38_20();
    if (swift_dynamicCast())
    {
      if (*(v0 + 200))
      {
        sub_18F0FD0B4((v0 + 176), v0 + 136);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
        OUTLINED_FUNCTION_21_29();
        v8 = swift_task_alloc();
        *(v0 + 304) = v8;
        *v8 = v0;
        v3 = OUTLINED_FUNCTION_27_33(v8);

        return v4(v3);
      }
    }

    else
    {
      *(v0 + 208) = 0;
      OUTLINED_FUNCTION_61();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 216, &qword_1EACD0620);
    OUTLINED_FUNCTION_61();
    *(v0 + 208) = 0;
  }

  sub_18F0EF148(v0 + 176, &qword_1EACD27C0);
  v9 = *(v0 + 8);

  return v9(0, 0);
}

uint64_t sub_18F345604()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = v3;
  *(v1 + 296) = v4;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F3456F0()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_18F345750()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = v3;
  *(v1 + 320) = v4;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F34583C()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_18F34589C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = *(a2 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F345954, 0, 0);
}

uint64_t sub_18F345954()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_22_31();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8);
  OUTLINED_FUNCTION_37_23();
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_41_17();
    v3 = v0[5];
    v4 = v0[6];
    v5 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
    type metadata accessor for PreparedIntent();
    v6 = *(v3 - 8);
    v7 = OUTLINED_FUNCTION_34_0();
    (*(v6 + 16))(v7, v5, v3);
    v8 = *(*(v4 + 8) + 8);
    v9 = sub_18F10E0AC();
    v0[27] = sub_18F1194F4(v7, v9, v3, v8);

    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_18F345B60;

    return sub_18F1316DC();
  }

  else
  {
    v12 = v0[22];
    OUTLINED_FUNCTION_7_48();
    sub_18F0EF148((v0 + 7), &qword_1EACD45B0);
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;

    OUTLINED_FUNCTION_71();

    return v13();
  }
}

uint64_t sub_18F345B60()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 240) = v10;
    *v10 = v5;
    v10[1] = sub_18F345CB8;

    return sub_18F1321C4(0);
  }
}

uint64_t sub_18F345CB8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F345DB4()
{
  OUTLINED_FUNCTION_21();
  v1 = (v0[27] + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  sub_18F1A0A8C(0x746567726174, 0xE600000000000000, v3, v2, (v0 + 17));
  v4 = v0[20];
  if (v4)
  {
    v5 = v0[21];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 17, v0[20]);
    (*(*(v5 + 8) + 72))(v4);
    if (v0[15])
    {
      __swift_project_boxed_opaque_existential_1Tm(v0 + 12, v0[15]);
      sub_18F11E26C();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));
    v6 = &qword_1EACD0620;
    v7 = (v0 + 12);
  }

  else
  {

    v6 = &qword_1EACD0F20;
    v7 = (v0 + 17);
  }

  sub_18F0EF148(v7, v6);
  v8 = v0[22];
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  OUTLINED_FUNCTION_71();

  return v9();
}

uint64_t sub_18F345F50()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F345FBC()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F346080(uint64_t a1, uint64_t a2)
{
  v3[40] = a1;
  v3[41] = v2;
  v4 = *(a2 + 16);
  v3[42] = v4;
  v3[43] = *(v4 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F346160, 0, 0);
}

uint64_t sub_18F346160()
{
  OUTLINED_FUNCTION_31();
  v1 = *(*(v0 + 344) + 16);
  v2 = OUTLINED_FUNCTION_22_31();
  (v1)(v2);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 304);
    v4 = *(*v3 + 168);
    swift_beginAccess();
    sub_18F102F54(v3 + v4, v0 + 216);

    v5 = *(v0 + 320);
    if (*(v0 + 240))
    {
      goto LABEL_6;
    }

    v19 = &qword_1EACD0620;
    v20 = v0 + 216;
    goto LABEL_18;
  }

  v6 = OUTLINED_FUNCTION_22_31();
  (v1)(v6);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 312);
    v8 = *(*v7 + 168);
    swift_beginAccess();
    sub_18F102F54(v7 + v8, v0 + 176);

    v5 = *(v0 + 320);
    if (*(v0 + 200))
    {
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
      v9 = sub_18F520C8C();
      OUTLINED_FUNCTION_22_31();
      v10 = swift_dynamicCast() ^ 1;
      v11 = v5;
      v12 = 1;
      v13 = v9;
      goto LABEL_19;
    }

    v19 = &qword_1EACD0620;
    v20 = v0 + 176;
LABEL_18:
    sub_18F0EF148(v20, v19);
    sub_18F520C8C();
    v11 = OUTLINED_FUNCTION_1_74();
LABEL_19:
    __swift_storeEnumTagSinglePayload(v11, v10, v12, v13);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_31_9();

    __asm { BRAA            X1, X16 }
  }

  v14 = OUTLINED_FUNCTION_22_31();
  (v1)(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6FF8);
  OUTLINED_FUNCTION_37_23();
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_41_17();
    OUTLINED_FUNCTION_49((v0 + 16));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 384) = v15;
    *v15 = v16;
    v15[1] = sub_18F346574;
    OUTLINED_FUNCTION_6_54();
    OUTLINED_FUNCTION_31_9();

    return URLRepresentableIntent.urlRepresentation.getter();
  }

  else
  {
    OUTLINED_FUNCTION_7_48();
    sub_18F0EF148(v0 + 56, &qword_1EACD7000);
    OUTLINED_FUNCTION_37_3();
    v1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7008);
    OUTLINED_FUNCTION_68_0();
    if (!swift_dynamicCast())
    {
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      v19 = &unk_1EACD7010;
      v20 = v0 + 136;
      goto LABEL_18;
    }

    sub_18F0FD0B4((v0 + 136), v0 + 96);
    OUTLINED_FUNCTION_49((v0 + 96));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 392) = v21;
    *v21 = v22;
    v21[1] = sub_18F3466DC;
    OUTLINED_FUNCTION_6_54();
    OUTLINED_FUNCTION_31_9();

    return _URLRepresentableIntent.urlRepresentation.getter(v23, v24, v25);
  }
}

uint64_t sub_18F346574()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F346658()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3466DC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F3467C0()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F346844(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F346868, 0, 0);
}

uint64_t sub_18F346868()
{
  OUTLINED_FUNCTION_21();
  (*(*(*(v0 + 88) + 24) + 16))(*(*(v0 + 88) + 16), *(*(v0 + 88) + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  type metadata accessor for IntentURLRepresentation();
  *v3 = v0;
  v3[1] = sub_18F346960;

  return sub_18F3433D4();
}

uint64_t sub_18F346960()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  sub_18F298D8C(v1[6], v1[7], v1[8], *(v2 + 72));
  v5 = v4[1];

  return v5();
}

uint64_t sub_18F346B30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F346B90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F346BE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F346C20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F346C60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_18F346CE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_18F346E1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for URLRepresentableIntentError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F3470D0()
{
  result = qword_1EACD6FF0;
  if (!qword_1EACD6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6FF0);
  }

  return result;
}

void sub_18F347834()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F347978()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F347A20()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F347C60()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F347E54()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F347F60()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F348318()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v0[21] = v1;
  v0[22] = v5;
  v0[19] = v3;
  v0[20] = v6;
  v0[18] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v0[23] = OUTLINED_FUNCTION_34_0();
  v8 = sub_18F52254C();
  v0[24] = v8;
  v0[25] = *(v8 - 8);
  v9 = OUTLINED_FUNCTION_34_0();
  v0[26] = v9;
  v0[27] = *(v2 - 8);
  v0[28] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v10;
  *v10 = v11;
  v10[1] = sub_18F3484A8;

  return sub_18F348DB4(v9, v4, v2);
}

uint64_t sub_18F3484A8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3485A4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 176);
    (*(*(v0 + 200) + 8))(v1, *(v0 + 192));
    *(v0 + 248) = type metadata accessor for IntentParameterContext();
    sub_18F3C0F34(v3, v0 + 56);
    if (*(v0 + 80))
    {
      v4 = *(v0 + 152);
      sub_18F0FF968((v0 + 56), v0 + 16);
      *(v0 + 120) = type metadata accessor for IntentPerson(0);
      *(v0 + 128) = sub_18F34A1EC(&qword_1EACCE838);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      sub_18F1CC8DC(v4, boxed_opaque_existential_1);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 256) = v6;
      *v6 = v7;
      v6[1] = sub_18F3487D4;
      v8 = *(v0 + 168);

      return sub_18F3C1490(v0 + 16, v0 + 96, v8);
    }

    v17 = *(v0 + 168);
    sub_18F0EF148(v0 + 56, &qword_1EACD27F0);
    OUTLINED_FUNCTION_11();
    v16 = v17;
  }

  else
  {
    v10 = *(v0 + 224);
    v11 = *(v0 + 144);
    v12 = *(*(v0 + 216) + 32);
    v12(v10, v1, v2);
    v12(v11, v10, v2);
    OUTLINED_FUNCTION_58_0();
    v16 = v2;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_12_10();

  OUTLINED_FUNCTION_6();

  return v18();
}

uint64_t sub_18F3487D4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 96);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3488E0()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_18F521D7C();
  if (v1 == 1)
  {
    v0[17] = v0[33];
    sub_18F521DBC();
    OUTLINED_FUNCTION_4_30();
    swift_getWitnessTable();
    sub_18F52211C();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

    goto LABEL_5;
  }

  if (!v1)
  {
    v2 = v0[21];
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
LABEL_5:
    OUTLINED_FUNCTION_12_10();

    OUTLINED_FUNCTION_6();

    return v6();
  }

  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[35] = v12;
  *v12 = v13;
  v12[1] = sub_18F348A7C;

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F348A7C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v8 + 288) = v0;

  sub_18F0EF148(v5, &qword_1EACCF7A0);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F348BC8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_12_10();

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_18F348C4C()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F348CCC()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F348D44()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F348DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_18F52153C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F348EC8, 0, 0);
}

uint64_t sub_18F348EC8()
{
  v1 = dynamic_cast_existential_1_conditional(v0[4]);
  v0[11] = v1;
  v0[12] = v2;
  if (v1 && (v3 = [objc_opt_self() personValueType], v4 = objc_msgSend(v3, sel_contentType), v0[13] = v4, v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v8 = v0[6];
    v9 = [v4 contentType];
    sub_18F5218DC();

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    sub_18F5214EC();
    (*(v6 + 16))(v8, v5, v7);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v7);
    v16 = swift_task_alloc();
    v0[14] = v16;
    v17 = type metadata accessor for IntentPerson(0);
    v18 = sub_18F34A1EC(&qword_1EACD7020);
    *v16 = v0;
    v16[1] = sub_18F349108;
    v19 = v0[6];

    return MEMORY[0x1EEDBF598](v19, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);

    OUTLINED_FUNCTION_6();

    return v24();
  }
}

uint64_t sub_18F349108()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  v10[15] = v8;
  v10[16] = v9;
  v10[17] = v0;

  sub_18F0EF148(v5, &qword_1EACD0358);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F349238()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[8];
  v5 = OUTLINED_FUNCTION_34_0();
  v0[18] = v5;
  sub_18F16AAE0(v2, v1);
  v6 = [v3 contentType];
  sub_18F5218DC();

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  sub_18F5214EC();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[19] = v13;
  *v13 = v14;
  v13[1] = sub_18F349394;
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[5];

  return MEMORY[0x1EEDBF5A0](v5, v15, v16, v17);
}

uint64_t sub_18F349394()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F349490()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  sub_18F123A1C(v2, v1);
  (*(v5 + 8))(v3, v4);
  v8 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v8 ^ 1u, 1, v6);

  OUTLINED_FUNCTION_6();

  return v9();
}

uint64_t sub_18F3495A4()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F349650()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  sub_18F123A1C(v2, v1);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F349724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return sub_18F348318();
}

uint64_t sub_18F3497DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F349838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F349868()
{
  OUTLINED_FUNCTION_21();
  if (*(*(v0 + 120) + 16) && (v1 = *(v0 + 136), type metadata accessor for IntentPerson(0), dynamic_cast_existential_1_conditional(v1)))
  {
    *(v0 + 104) = *(v0 + 120);
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *(v2 + 16) = *(v0 + 136);
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD14B0);
    v5 = sub_18F34A188();
    *v3 = v0;
    v3[1] = sub_18F349AE4;
    v6 = *(v0 + 136);

    return MEMORY[0x1EEE18F40](&unk_18F559AD8, v2, v4, v6, v5);
  }

  else
  {
    v7 = *(v0 + 144);
    sub_18F521DBC();
    *(v0 + 96) = *(*(v7 + 8) + 24);
    swift_getWitnessTable();
    type metadata accessor for IntentParameterContext();
    sub_18F3C0F34(v7, v0 + 56);
    if (*(v0 + 80))
    {
      v8 = *(v0 + 120);
      sub_18F0FF968((v0 + 56), v0 + 16);
      v9 = sub_18F200C58(v8);
      *(v0 + 184) = v9;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 192) = v10;
      *v10 = v11;
      v10[1] = sub_18F349C90;
      v12 = *(v0 + 136);
      v13 = *(v0 + 144);

      return sub_18F3C17B4(v0 + 16, v9, v12, v13);
    }

    else
    {
      sub_18F0EF148(v0 + 56, &qword_1EACD27F0);
      v14 = *(v0 + 8);

      return v14(0);
    }
  }
}

uint64_t sub_18F349AE4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F349BF0()
{
  OUTLINED_FUNCTION_69();
  v0[14] = v0[21];
  sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  swift_getWitnessTable();
  v1 = sub_18F52213C();
  v2 = v0[21];
  if (v1)
  {

    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_18F349C90(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 200) = v1;

  if (!v1)
  {
    *(v5 + 208) = a1;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F349DC8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18F349E30()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F349E8C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F349EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F0FC870;

  return sub_18F348DB4(a1, a2, a3);
}

uint64_t sub_18F349FA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v8 = v4;
  v8[1] = sub_18F1E9574;

  return sub_18F349838(v7, a3, v9, v10);
}

uint64_t sub_18F34A054(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F34A0DC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_18F0FC874;

  return sub_18F349EE8(v5, v3, v6);
}

unint64_t sub_18F34A188()
{
  result = qword_1EACD7018;
  if (!qword_1EACD7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD14B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7018);
  }

  return result;
}

uint64_t sub_18F34A1EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentPerson(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F34A230()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t AppContext.fetchDestinationMDMAccountIdentifier(for:)(uint64_t a1)
{
  *(v1 + 136) = a1;
  v2 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F34A2B4()
{
  OUTLINED_FUNCTION_31();
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    OUTLINED_FUNCTION_99_8();
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_18F34A484;

    return v11("InitializeAction", 16, 2, v1);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v4 = sub_18F52165C();
    __swift_project_value_buffer(v4, qword_1ED707778);
    v5 = sub_18F52163C();
    v6 = sub_18F52221C();
    if (os_log_type_enabled(v5, v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v7, v8, "Unable to fetch intentRepresentation as LNAction");
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F133EDC();
    swift_allocError();
    OUTLINED_FUNCTION_94_9(v9, 3);
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F34A484()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;
  v4[19] = v3;
  v4[20] = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_31_9();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v11 = swift_task_alloc();
    v4[21] = v11;
    *v11 = v6;
    OUTLINED_FUNCTION_12_3(v11);
    OUTLINED_FUNCTION_31_9();

    return sub_18F1316DC();
  }
}

uint64_t sub_18F34A604()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 184) = v10;
    *v10 = v5;
    v10[1] = sub_18F34A758;

    return sub_18F1321C4(0);
  }
}

uint64_t sub_18F34A758()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34A850()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  sub_18F0FD6C4(*(v0 + 152) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7028);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v1 = OUTLINED_FUNCTION_43_1();
    v2(v1);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_31_9();

    return v6(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_18F0FA038(v0 + 96, &qword_1EACD7030);
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v12 = sub_18F52165C();
    __swift_project_value_buffer(v12, qword_1ED707778);
    v13 = sub_18F52163C();
    v14 = sub_18F52221C();
    if (os_log_type_enabled(v13, v14))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v15, v16, "Attempted to fetch MDM accountIdentifier on an intent that is not an ManagedDestinationIntent.");
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F133EDC();
    swift_allocError();
    OUTLINED_FUNCTION_94_9(v17, 2);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_31_9();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_18F34AA94()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F34AAF0()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 176);
  sub_18F2D94A8(v1);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F34AB84()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 192);
  sub_18F2D94A8(v1);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F34ACA4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_18F34AD64;

  return AppContext.fetchDestinationMDMAccountIdentifier(for:)(a1);
}

uint64_t sub_18F34AD64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_85();
  v6 = v5;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v9 = *(v8 + 24);
  v10 = *v1;
  OUTLINED_FUNCTION_39();
  *v11 = v10;

  swift_unknownObjectRelease();

  if (v2)
  {
    v4 = sub_18F520A7C();

    v12 = 0;
    v13 = v4;
  }

  else if (v4)
  {
    v12 = sub_18F5218AC();

    v4 = 0;
    v13 = v12;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(v6 + 32);
  v14[2](v14, v12, v4);

  _Block_release(v14);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_18F34AF00()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34B0BC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F34B118()
{
  OUTLINED_FUNCTION_69();
  v6 = OUTLINED_FUNCTION_89_6(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_15_38(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F34B2C8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_123_5();
    v10 = OUTLINED_FUNCTION_12_7();

    return v11(v10);
  }
}

uint64_t sub_18F34B424()
{
  OUTLINED_FUNCTION_69();
  v6 = OUTLINED_FUNCTION_89_6(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_15_38(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F34B5D4()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34B780()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34B92C()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34BAD8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F34BC38()
{
  OUTLINED_FUNCTION_69();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[6] = v5;
  v6 = sub_18F520E6C();
  v0[11] = v6;
  v0[12] = *(v6 - 8);
  v0[13] = OUTLINED_FUNCTION_34_0();
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34BCEC()
{
  OUTLINED_FUNCTION_66_10();
  OUTLINED_FUNCTION_37_2();
  if (qword_1ED6FD140 != -1)
  {
    OUTLINED_FUNCTION_1_75();
  }

  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v7 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  v9 = OUTLINED_FUNCTION_21_30(v7, v8);
  MEMORY[0x193ADAF70](v9);
  OUTLINED_FUNCTION_60_9();
  *(v0 + 112) = v2;
  (*(v4 + 8))(v3, v5);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *(v10 + 16) = v18;
  *(v10 + 32) = v6;
  *(v10 + 40) = v17;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7040);
  OUTLINED_FUNCTION_96_7();
  *v11 = v12;
  OUTLINED_FUNCTION_116_2(v13);
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_37_24();

  return MEMORY[0x1EEE6DE98](v14);
}

uint64_t sub_18F34BE54()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_2_10();
    v10 = OUTLINED_FUNCTION_22();

    return v11(v10);
  }
}

uint64_t sub_18F34BFC0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F34C01C()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34C1D8()
{
  OUTLINED_FUNCTION_69();
  v6 = OUTLINED_FUNCTION_89_6(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_15_38(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F34C37C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_111_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);

  return sub_18F253C14();
}

uint64_t sub_18F34C400()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_111_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);

  return sub_18F253430();
}

uint64_t sub_18F34C484()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_111_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);

  return sub_18F25307C();
}

uint64_t sub_18F34C508()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_111_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);

  return sub_18F2527A8();
}

uint64_t sub_18F34C58C()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);

  return sub_18F2519A4();
}

uint64_t sub_18F34C610()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_2_10();

    return v8(v3);
  }
}

uint64_t sub_18F34C740(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v3 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F34C768()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[7];
  sub_18F0FD6C4(v1 + 24, (v0 + 2));
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_71();

    return v4();
  }

  else
  {
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    v0[8] = *(off_1ED6FF6C8 + 10);

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[9] = v6;
    *v6 = v7;
    v6[1] = sub_18F34C8E0;

    return sub_18F2AE66C(v1 + 24);
  }
}

uint64_t sub_18F34C8E0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F34C9FC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F34CA58()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);

  return sub_18F2542C4();
}

uint64_t sub_18F34CADC()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);

  return sub_18F254D88();
}

uint64_t sub_18F34CB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v6[28] = type metadata accessor for Annotation(0);
  v6[29] = swift_task_alloc();
  v7 = sub_18F52165C();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F13740C, 0, 0);
}

uint64_t sub_18F34CC58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_83_7();
  v1 = OUTLINED_FUNCTION_56();
  sub_18F131034(v1);
  v2 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v2);
  sub_18F0FA038(v0 + 16, &qword_1EACD7038);
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18F34CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[28] = type metadata accessor for Annotation(0);
  v5[29] = swift_task_alloc();
  v6 = sub_18F52165C();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34CE10, 0, 0);
}

uint64_t sub_18F34D170()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34D268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v6[28] = type metadata accessor for Annotation(0);
  v6[29] = swift_task_alloc();
  v7 = sub_18F52165C();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34D360, 0, 0);
}

uint64_t sub_18F34D6C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34D7B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_83_7();
  v1 = OUTLINED_FUNCTION_56();
  sub_18F131034(v1);
  v2 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v2);
  sub_18F0FA038(v0 + 16, &qword_1EACD7038);
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18F34D878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v5[29] = type metadata accessor for Annotation(0);
  v5[30] = swift_task_alloc();
  v6 = sub_18F52165C();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34D970, 0, 0);
}

uint64_t sub_18F34DD60()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34DE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = OUTLINED_FUNCTION_56();
  sub_18F131034(v11);
  v12 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v12);
  sub_18F0FA038(v10 + 16, &qword_1EACD7038);
  v13 = OUTLINED_FUNCTION_43_1();
  v14(v13);

  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_36();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_18F34DF28()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_56();
  sub_18F131034(v1);
  v2 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v2);
  sub_18F0FA038(v0 + 16, &qword_1EACD7038);
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18F34DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v6[28] = type metadata accessor for Annotation(0);
  v6[29] = swift_task_alloc();
  v7 = sub_18F52165C();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34E0E8, 0, 0);
}

uint64_t sub_18F34E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[28] = type metadata accessor for Annotation(0);
  v5[29] = swift_task_alloc();
  v6 = sub_18F52165C();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34E5C4, 0, 0);
}

uint64_t sub_18F34E9A8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  *v5 = v6;
  v5[1] = sub_18F0FC874;

  return sub_18F34ACA4(v1, v2, v3);
}

uint64_t sub_18F34EA54()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34CB60(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F130E78;

  return sub_18F34CD18(a2, a3, a4, a5, a6);
}

uint64_t sub_18F34EBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F130E78;

  return sub_18F34CD18(a2, a3, a4, a5, a6);
}

uint64_t sub_18F34EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F2555EC;

  return sub_18F34D878(a2, a3, a4, a5, a6);
}

uint64_t sub_18F34ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F130E78;

  return sub_18F34E4CC(a2, a3, a4, a5, a6);
}

uint64_t sub_18F34EE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F34EEA0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34D268(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34EF30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34CB60(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F34F05C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34DFF0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34F0EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34CB60(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F34F218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t OUTLINED_FUNCTION_75_7()
{
  *(v0 + 320) = v3;
  *(v0 + 264) = v1;
  *(v0 + 272) = v2;

  return sub_18F521F7C();
}

uint64_t OUTLINED_FUNCTION_123_5()
{
}

uint64_t OUTLINED_FUNCTION_124_5(uint64_t a1)
{
  sub_18F0F689C(a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_18F34F344(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  os_unfair_lock_lock((v4 + 128));
  v7 = *(*(v4 + 136) + 80);
  os_unfair_lock_unlock((v4 + 128));
  if (!v7)
  {
    os_unfair_lock_lock((v4 + 144));
    os_unfair_lock_lock((v4 + 128));
    v7 = *(*(v4 + 136) + 80);
    os_unfair_lock_unlock((v4 + 128));
    if (!v7)
    {
      v7 = *(v4 + 176);
      v8 = *(v4 + 184);
      __swift_project_boxed_opaque_existential_1Tm((v4 + 152), v7);
      v9 = (*(v8 + 48))(a1, a2, v7, v8);
      if (!v3)
      {
        v7 = v9;
        v13 = v10;
        v14 = v11;
        os_unfair_lock_lock((v4 + 128));
        if (v14)
        {

          sub_18F34FC20(v15);
        }

        v16 = *(v4 + 136);
        *(v16 + 80) = v7;
        *(v16 + 88) = v13;
        os_unfair_lock_unlock((v4 + 128));
      }
    }

    os_unfair_lock_unlock((v4 + 144));
  }

  return v7;
}

void sub_18F34F474(void *a1)
{
  sub_18F1BB3A4(a1);
  if (!v1 && v3 < 0)
  {
    v4 = [a1 identifier];
    v5 = sub_18F5218DC();
    v7 = v6;

    sub_18F16A9C8();
    swift_allocError();
    *v8 = xmmword_18F54D5B0;
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    swift_willThrow();
  }
}

void sub_18F34F51C(void *a1)
{
  sub_18F1BB3A4(a1);
  if (!v1 && v3 >> 62 == 1)
  {
    v4 = [a1 identifier];
    v5 = sub_18F5218DC();
    v7 = v6;

    sub_18F16A9C8();
    swift_allocError();
    *v8 = xmmword_18F54D5B0;
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    swift_willThrow();
  }
}

uint64_t sub_18F34F5DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37();
  result = sub_18F279AAC();
  if (!v2 && v6 < 0)
  {
    sub_18F16A9C8();
    swift_allocError();
    *v7 = xmmword_18F54D5B0;
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    swift_willThrow();
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t sub_18F34F668()
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v2 - v1);
  return sub_18F52196C();
}

uint64_t sub_18F34F724()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F758()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F78C()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F7C0()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F7F4()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F828()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F85C()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F890()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F8C4()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_18F34F8F0(v0);
    *(v0 + 104) = 0;
  }

  return result;
}

uint64_t sub_18F34F8F0(void *a1)
{
  v23 = &type metadata for _UndoIntent;
  v24[0] = sub_18F3543F4();
  v24[1] = &type metadata for _CopyIntent;
  v24[2] = sub_18F354448();
  v24[3] = &type metadata for _PasteIntent;
  v24[4] = sub_18F35449C();
  v2 = 0;
  v24[5] = &type metadata for _CutIntent;
  v24[6] = sub_18F3544F0();
  do
  {
    v3 = *&v22[v2 * 8 + 32];
    v4 = *(*(v24[v2] + 8) + 8);
    v5 = static AppIntent._identifier.getter(v3);
    v7 = v6;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = a1[6];
    sub_18F136D3C(v3, v4, v5, v7, isUniquelyReferenced_nonNull_native);
    a1[6] = v21;

    swift_endAccess();
    static AppIntent._identifier.getter(v3);
    sub_18F110768(v3, v4);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v21 = a1[7];
    sub_18F13406C();
    a1[7] = v21;

    swift_endAccess();
    v2 += 2;
  }

  while (v2 != 8);
  v19 = &type metadata for FavoriteOperation;
  v20[0] = sub_18F32D3D8();
  v20[1] = &type metadata for ChangeOperation;
  v20[2] = sub_18F228080();
  v20[3] = &type metadata for MovementDirection;
  v20[4] = sub_18F2A5CD8();
  v20[5] = &type metadata for MovementMagnitude;
  v20[6] = sub_18F2A61EC();
  v20[7] = &type metadata for NavigateSequentiallyDirection;
  v20[8] = sub_18F267090();
  v20[9] = &type metadata for ResizeBehavior;
  v20[10] = sub_18F342428();
  v20[11] = &type metadata for UndoOperation;
  v20[12] = sub_18F1B84E4();
  v9 = 0;
  v20[13] = &type metadata for ZoomBehavior;
  v20[14] = sub_18F354544();
  do
  {
    v10 = *&v18[v9 * 8 + 32];
    v11 = v20[v9];
    v12 = *(v11 + 8);
    v13 = static AppValue._identifier.getter(v10, v12);
    v15 = v14;
    swift_beginAccess();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = a1[4];
    a1[4] = 0x8000000000000000;
    sub_18F2BFA34(v10, v11, v13, v15, v16);

    a1[4] = v21;
    swift_endAccess();
    static AppValue._identifier.getter(v10, v12);
    sub_18F242D00(v10, v11);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v21 = a1[5];
    a1[5] = 0x8000000000000000;
    sub_18F2BFA20();

    a1[5] = v21;
    result = swift_endAccess();
    v9 += 2;
  }

  while (v9 != 16);
  return result;
}

__n128 sub_18F34FC20(__n128 *a1)
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v3 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353C00(v3, sub_18F35427C, 0, &v1[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v4 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353B64(v4, sub_18F354214, 0, &v1[1].n128_i64[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v5 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353AC8(v5, sub_18F35427C, 0, &v1[2]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v6 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353A2C(v6, sub_18F354214, 0, &v1[2].n128_i64[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v7 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353990(v7, sub_18F35427C, 0, &v1[3]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v8 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3538F4(v8, sub_18F354214, 0, &v1[3].n128_i64[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v9 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353870(v9, sub_18F35422C, 0, &v1[4], sub_18F352F04);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v10 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3537D4(v10, sub_18F354214, 0, &v1[4].n128_i64[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81();
  v11 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353870(v11, sub_18F353764, 0, &v1[6], sub_18F352BC8);
  swift_endAccess();
  result = a1[5];
  v1[5] = result;
  return result;
}

uint64_t sub_18F34FF54()
{

  return v0;
}

uint64_t sub_18F34FFB4()
{
  sub_18F34FF54();

  return MEMORY[0x1EEE6BDC0](v0, 105, 7);
}

uint64_t _s5QueryOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x1FFFFD && *(a1 + 24))
    {
      v2 = *a1 + 2097149;
    }

    else if (((((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF) >= 0x1FFFFD)
    {
      v2 = -1;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s5QueryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2097150;
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_18F559D00), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_18F559D10), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

int8x16_t sub_18F35015C(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1].i64[0] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
  *a1 = result;
  a1[1].i64[0] = v2;
  return result;
}

void sub_18F350194(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v9 = sub_18F520C8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  sub_18F0F21A8(0, &qword_1EACCDCD8);
  v39 = v10;
  v37 = *(v10 + 16);
  v37(v14, a1, v9);
  v15 = sub_18F3505B8(v14);
  if (v15)
  {
    v40 = v4;
    v16 = v15;
    v17 = [a2 bundleIdentifier];
    sub_18F5218DC();

    v18 = objc_allocWithZone(sub_18F5210FC());
    v19 = sub_18F52110C();
    if (v19)
    {
      v20 = v19;
      v21 = *a3;
      swift_beginAccess();

      v22 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v21 + 96);
      sub_18F2C07CC();
      *(v21 + 96) = v42;
      swift_endAccess();

      v23 = v22;
      MEMORY[0x193ADB260]();
      sub_18F16AE80(*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_18F521D6C();
      if (([v16 isLoaded] & 1) == 0)
      {
        if (qword_1ED6FED58 != -1)
        {
          swift_once();
        }

        v24 = sub_18F52165C();
        __swift_project_value_buffer(v24, qword_1ED707790);
        v25 = v38;
        v37(v38, a1, v9);
        v26 = sub_18F52163C();
        v27 = sub_18F52223C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v41[0] = v29;
          *v28 = 136446210;
          sub_18F354650(&qword_1EACCED50, MEMORY[0x1E6968FB0]);
          v30 = sub_18F522C9C();
          v31 = v25;
          v32 = v30;
          v34 = v33;
          (*(v39 + 8))(v31, v9);
          v35 = sub_18F11897C(v32, v34, v41);

          *(v28 + 4) = v35;
          _os_log_impl(&dword_18F0E9000, v26, v27, "AppManager: Loading framework at URL %{public}s.", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          MEMORY[0x193ADD350](v29, -1, -1);
          MEMORY[0x193ADD350](v28, -1, -1);
        }

        else
        {

          (*(v39 + 8))(v25, v9);
        }

        [v16 load];
      }
    }
  }
}

id sub_18F3505B8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F520BEC();
  v4 = [v2 initWithURL_];

  v5 = sub_18F520C8C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_18F350654()
{
  result = swift_getKeyPath();
  qword_1ED707738 = result;
  return result;
}

uint64_t sub_18F35067C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3506C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350728()
{
  result = swift_getKeyPath();
  qword_1ED707740 = result;
  return result;
}

uint64_t sub_18F350750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F35079C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3507FC()
{
  result = swift_getKeyPath();
  qword_1ED707708 = result;
  return result;
}

uint64_t sub_18F350824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350870(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3508D0()
{
  result = swift_getKeyPath();
  qword_1ED707710 = result;
  return result;
}

uint64_t sub_18F3508F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350944(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3509A4()
{
  result = swift_getKeyPath();
  qword_1EAD0AC90 = result;
  return result;
}

uint64_t sub_18F3509CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350A18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350A78()
{
  result = swift_getKeyPath();
  qword_1EAD0AC98 = result;
  return result;
}

uint64_t sub_18F350AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350AEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350B4C(uint64_t a1)
{
  if (!a1)
  {
    return 0xF000000000000007;
  }

  result = dynamic_cast_existential_2_conditional(a1);
  if (!result)
  {
    result = dynamic_cast_existential_1_conditional(a1);
    if (!result)
    {
      result = dynamic_cast_existential_1_conditional(a1);
      if (!result)
      {
        return 0xF000000000000007;
      }
    }
  }

  return result;
}

void sub_18F350BFC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_9();
  v51 = sub_18F5213AC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v50 = v7 - v6;
  v8 = sub_18F52136C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v52 = v13 - v12;
  OUTLINED_FUNCTION_72_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7108);
  OUTLINED_FUNCTION_19_36();
  v46 = v2;
  v14 = OUTLINED_FUNCTION_55_13();
  v15 = v14;
  if (*(v1 + 16))
  {
    v16 = 0;
    v17 = v10;
    v18 = v1 + 64;
    v19 = 1 << *(v1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v1 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v17 + 16);
    v45 = v1;
    v47 = (v4 + 32);
    v48 = (v17 + 32);
    v23 = v14 + 64;
    while (v21)
    {
      OUTLINED_FUNCTION_71_9();
LABEL_13:
      v49 = *(v25 + 72);
      v29 = *(v1 + 48) + v49 * (v24 | (v16 << 6));
      if (v46)
      {
        (*v48)(v52, v29, v8);
        OUTLINED_FUNCTION_66_11();
        (*(v30 + 32))(v50);
      }

      else
      {
        (*v44)(v52, v29, v8);
        OUTLINED_FUNCTION_66_11();
        (*(v31 + 16))(v50);
      }

      OUTLINED_FUNCTION_35_21();
      sub_18F354650(&qword_1EACD0450, v32);
      sub_18F52177C();
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_34_24();
      if (v33)
      {
        OUTLINED_FUNCTION_35();
        while (1)
        {
          OUTLINED_FUNCTION_36_26();
          if (v33)
          {
            if (v35)
            {
              break;
            }
          }

          if (v34 == v36)
          {
            v34 = 0;
          }

          if (*(v23 + 8 * v34) != -1)
          {
            OUTLINED_FUNCTION_61_12();
            goto LABEL_26;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_63_10();
LABEL_26:
      OUTLINED_FUNCTION_60_10();
      *(v23 + v37) |= v38;
      (*v48)(v15[6] + v49 * v52, v52, v8);
      (*v47)(v15[7] + v1 * v52, v50, v51);
      ++v15[2];
      v1 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v16 >= v22)
      {
        break;
      }

      ++v26;
      if (*(v18 + 8 * v16))
      {
        OUTLINED_FUNCTION_21_24();
        v21 = v28 & v27;
        goto LABEL_13;
      }
    }

    if (v46)
    {
      OUTLINED_FUNCTION_9_44();
      if (v40 != v41)
      {
        OUTLINED_FUNCTION_20_31(v39);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v42, v43, v18);
      }

      *(v1 + 16) = 0;
    }
  }

  *v0 = v15;
  OUTLINED_FUNCTION_16();
}

void sub_18F350FA0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_9();
  v3 = sub_18F52136C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_72_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7100);
  OUTLINED_FUNCTION_19_36();
  v10 = OUTLINED_FUNCTION_55_13();
  if (!*(v1 + 16))
  {
LABEL_29:

LABEL_30:
    *v0 = v10;
    OUTLINED_FUNCTION_16();
    return;
  }

  v46 = v9;
  v38 = v0;
  v11 = 0;
  v12 = (v1 + 64);
  OUTLINED_FUNCTION_2_78();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v39 = v1;
  v40 = v5;
  v41 = (v5 + 32);
  v18 = v10 + 8;
  if ((v14 & v13) == 0)
  {
LABEL_4:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v17)
      {
        break;
      }

      ++v19;
      if (v12[v11])
      {
        OUTLINED_FUNCTION_21_24();
        v15 = v21 & v20;
        goto LABEL_9;
      }
    }

    if ((v2 & 1) == 0)
    {

      v0 = v38;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_44();
    v0 = v38;
    if (v34 != v35)
    {
      *v12 = -1 << v33;
    }

    else
    {
      v36 = OUTLINED_FUNCTION_15_39();
      sub_18F128DD4(v36, v37, v12);
    }

    *(v1 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 &= v15 - 1;
LABEL_9:
    v45 = *(v40 + 72);
    v22 = OUTLINED_FUNCTION_67_9();
    v23(v22);
    OUTLINED_FUNCTION_65_14();
    v42 = *(v24 + 24);
    v43 = *(v24 + 16);
    if ((v2 & 1) == 0)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    OUTLINED_FUNCTION_35_21();
    sub_18F354650(&qword_1EACD0450, v25);
    sub_18F52177C();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_34_24();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_63_10();
LABEL_21:
    OUTLINED_FUNCTION_60_10();
    *(v18 + v30) |= v31;
    (*v41)(v10[6] + v45 * v2, v46, v3);
    v32 = v10[7] + 32 * v2;
    *v32 = v44;
    *(v32 + 16) = v43;
    *(v32 + 24) = v42;
    ++v10[2];
    v1 = v39;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (v18[v27] != -1)
    {
      OUTLINED_FUNCTION_61_12();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_18F35129C()
{
  OUTLINED_FUNCTION_6_56();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70B8);
  OUTLINED_FUNCTION_19_36();
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_42_15();
  if (!v4)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_23_32();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_56_11();
      if (v7)
      {
        OUTLINED_FUNCTION_21_24();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v23)
    {
      OUTLINED_FUNCTION_9_44();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_20_31(v18);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v21, v22, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_32();
LABEL_9:
    OUTLINED_FUNCTION_21_31();
    v12 = (v11 + 80 * v10);
    if (v23)
    {
      memcpy(__dst, v12, 0x50uLL);
    }

    else
    {
      sub_18F1306CC(v12, __dst);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    sub_18F522EFC();
    OUTLINED_FUNCTION_58_10();
    sub_18F522F4C();
    OUTLINED_FUNCTION_5_56();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_20:
    OUTLINED_FUNCTION_3_60(v14);
    memcpy((v17 + 80 * v16), __dst, 0x50uLL);
    OUTLINED_FUNCTION_24_35();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_32();
    if (!v13)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_18F351458()
{
  OUTLINED_FUNCTION_6_56();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70C0);
  OUTLINED_FUNCTION_19_36();
  OUTLINED_FUNCTION_55_13();
  OUTLINED_FUNCTION_42_15();
  if (!v4)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_23_32();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_56_11();
      if (v7)
      {
        OUTLINED_FUNCTION_21_24();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_9_44();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_20_31(v24);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v27, v28, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_32();
LABEL_9:
    OUTLINED_FUNCTION_21_31();
    v13 = (v11 + v10 * v12);
    if (v2)
    {
      v14 = *v13;
      v15 = v13[2];
      v30 = v13[1];
      v31 = v15;
      v29 = v14;
    }

    else
    {
      sub_18F139A94(v13, &v29);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    sub_18F522EFC();
    OUTLINED_FUNCTION_58_10();
    sub_18F522F4C();
    OUTLINED_FUNCTION_5_56();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_20:
    OUTLINED_FUNCTION_3_60(v17);
    v21 = (v20 + 48 * v19);
    v22 = v29;
    v23 = v31;
    v21[1] = v30;
    v21[2] = v23;
    *v21 = v22;
    OUTLINED_FUNCTION_24_35();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_32();
    if (!v16)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_18F351614(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_18F520C8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7068);
  v39 = a2;
  result = sub_18F522ACC();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v43 = v8;
  v35 = v2;
  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v36 = (v6 + 16);
  v37 = v9;
  v38 = v6;
  v40 = (v6 + 32);
  v18 = result + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      sub_18F128DD4(0, (v33 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 48);
    v42 = *(v38 + 72);
    v24 = v23 + v42 * v22;
    if (v39)
    {
      (*v40)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    else
    {
      (*v36)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    sub_18F354650(&qword_1EACCED58, MEMORY[0x1E6968FB0]);
    result = sub_18F52177C();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (*v40)(*(v11 + 48) + v42 * v28, v43, v5);
    *(*(v11 + 56) + 8 * v28) = v41;
    ++*(v11 + 16);
    v9 = v37;
    if (!v16)
    {
      goto LABEL_7;
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
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_18F3519EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7080);
  v36 = a2;
  result = sub_18F522ACC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_18F128DD4(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + 24 * v18;
    v37 = *v22;
    v23 = *(v22 + 16);
    if ((v36 & 1) == 0)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    sub_18F522EFC();
    sub_18F5219CC();
    result = sub_18F522F4C();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = *(v7 + 56) + 24 * v27;
    *v33 = v37;
    *(v33 + 16) = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_18F351CA8()
{
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_81_5(v4, v5, v6);
  OUTLINED_FUNCTION_19_36();
  OUTLINED_FUNCTION_55_13();
  OUTLINED_FUNCTION_42_15();
  if (!v7)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v28 = v1;
  v8 = 0;
  v9 = v1;
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_23_32();
  if (!v3)
  {
LABEL_4:
    v10 = v8;
    while (1)
    {
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_56_11();
      if (v11)
      {
        OUTLINED_FUNCTION_21_24();
        v3 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_9_44();
      if (v24 != v25)
      {
        OUTLINED_FUNCTION_20_31(v23);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v26, v27, v9);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_32();
LABEL_9:
    OUTLINED_FUNCTION_21_31();
    v16 = *(v15 + 8 * v14);
    if ((v2 & 1) == 0)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v17 = v16;
    }

    sub_18F522EFC();
    OUTLINED_FUNCTION_58_10();
    sub_18F522F4C();
    OUTLINED_FUNCTION_5_56();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_19:
    OUTLINED_FUNCTION_3_60(v19);
    *(v22 + 8 * v21) = v16;
    OUTLINED_FUNCTION_24_35();
    v1 = v28;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_32();
    if (!v18)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}