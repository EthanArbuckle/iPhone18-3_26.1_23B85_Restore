uint64_t sub_1B24A98D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_2(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_2(v8);
}

_BYTE *sub_1B24A995C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_45_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_43_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_2(result, v6);
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
          result = OUTLINED_FUNCTION_26_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B24A9AC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_2(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_2(v8);
}

_BYTE *sub_1B24A9B4C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_45_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_43_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_2(result, v6);
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
          result = OUTLINED_FUNCTION_26_5(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B24A9C1C()
{
  result = qword_1EB7D1738;
  if (!qword_1EB7D1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1738);
  }

  return result;
}

unint64_t sub_1B24A9C74()
{
  result = qword_1EB7D1740;
  if (!qword_1EB7D1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1740);
  }

  return result;
}

unint64_t sub_1B24A9CCC()
{
  result = qword_1EB7D1748;
  if (!qword_1EB7D1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1748);
  }

  return result;
}

unint64_t sub_1B24A9D24()
{
  result = qword_1EB7D1750;
  if (!qword_1EB7D1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1750);
  }

  return result;
}

unint64_t sub_1B24A9D7C()
{
  result = qword_1EB7D1758;
  if (!qword_1EB7D1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1758);
  }

  return result;
}

unint64_t sub_1B24A9DD4()
{
  result = qword_1EB7D1760;
  if (!qword_1EB7D1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1760);
  }

  return result;
}

unint64_t sub_1B24A9E2C()
{
  result = qword_1EB7D1768;
  if (!qword_1EB7D1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1768);
  }

  return result;
}

unint64_t sub_1B24A9E84()
{
  result = qword_1EB7CD890;
  if (!qword_1EB7CD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD890);
  }

  return result;
}

unint64_t sub_1B24A9EDC()
{
  result = qword_1EB7CD898;
  if (!qword_1EB7CD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD898);
  }

  return result;
}

unint64_t sub_1B24A9F34()
{
  result = qword_1EB7CD880;
  if (!qword_1EB7CD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD880);
  }

  return result;
}

unint64_t sub_1B24A9F8C()
{
  result = qword_1EB7CD888;
  if (!qword_1EB7CD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD888);
  }

  return result;
}

unint64_t sub_1B24A9FE4()
{
  result = qword_1EB7CD8A8;
  if (!qword_1EB7CD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8A8);
  }

  return result;
}

unint64_t sub_1B24AA03C()
{
  result = qword_1EB7CD8B0;
  if (!qword_1EB7CD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8B0);
  }

  return result;
}

unint64_t sub_1B24AA094()
{
  result = qword_1EB7CD8E0;
  if (!qword_1EB7CD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8E0);
  }

  return result;
}

unint64_t sub_1B24AA0EC()
{
  result = qword_1EB7CD8E8;
  if (!qword_1EB7CD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8E8);
  }

  return result;
}

unint64_t sub_1B24AA144()
{
  result = qword_1EB7CD8F0;
  if (!qword_1EB7CD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8F0);
  }

  return result;
}

unint64_t sub_1B24AA19C()
{
  result = qword_1EB7CD8F8;
  if (!qword_1EB7CD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8F8);
  }

  return result;
}

unint64_t sub_1B24AA1F4()
{
  result = qword_1EB7CD900;
  if (!qword_1EB7CD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD900);
  }

  return result;
}

unint64_t sub_1B24AA24C()
{
  result = qword_1EB7CD908;
  if (!qword_1EB7CD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD908);
  }

  return result;
}

unint64_t sub_1B24AA2A4()
{
  result = qword_1EB7CD910;
  if (!qword_1EB7CD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD910);
  }

  return result;
}

unint64_t sub_1B24AA2FC()
{
  result = qword_1EB7CD918;
  if (!qword_1EB7CD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD918);
  }

  return result;
}

unint64_t sub_1B24AA354()
{
  result = qword_1EB7CD838;
  if (!qword_1EB7CD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD838);
  }

  return result;
}

unint64_t sub_1B24AA3AC()
{
  result = qword_1EB7CD840;
  if (!qword_1EB7CD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD840);
  }

  return result;
}

unint64_t sub_1B24AA404()
{
  result = qword_1EB7CD850;
  if (!qword_1EB7CD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD850);
  }

  return result;
}

unint64_t sub_1B24AA45C()
{
  result = qword_1EB7CD858;
  if (!qword_1EB7CD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD858);
  }

  return result;
}

unint64_t sub_1B24AA4B4()
{
  result = qword_1EB7CD860;
  if (!qword_1EB7CD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD860);
  }

  return result;
}

unint64_t sub_1B24AA50C()
{
  result = qword_1EB7CD868;
  if (!qword_1EB7CD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD868);
  }

  return result;
}

unint64_t sub_1B24AA564()
{
  result = qword_1EB7CD778;
  if (!qword_1EB7CD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD778);
  }

  return result;
}

unint64_t sub_1B24AA5BC()
{
  result = qword_1EB7CD780;
  if (!qword_1EB7CD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD780);
  }

  return result;
}

unint64_t sub_1B24AA614()
{
  result = qword_1EB7CD7C0;
  if (!qword_1EB7CD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7C0);
  }

  return result;
}

unint64_t sub_1B24AA66C()
{
  result = qword_1EB7CD7C8;
  if (!qword_1EB7CD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7C8);
  }

  return result;
}

unint64_t sub_1B24AA6C4()
{
  result = qword_1EB7CD7A0;
  if (!qword_1EB7CD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7A0);
  }

  return result;
}

unint64_t sub_1B24AA71C()
{
  result = qword_1EB7CD7A8;
  if (!qword_1EB7CD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7A8);
  }

  return result;
}

unint64_t sub_1B24AA774()
{
  result = qword_1EB7CD7D0;
  if (!qword_1EB7CD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7D0);
  }

  return result;
}

unint64_t sub_1B24AA7CC()
{
  result = qword_1EB7CD7D8;
  if (!qword_1EB7CD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7D8);
  }

  return result;
}

unint64_t sub_1B24AA824()
{
  result = qword_1EB7CD790;
  if (!qword_1EB7CD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD790);
  }

  return result;
}

unint64_t sub_1B24AA87C()
{
  result = qword_1EB7CD798;
  if (!qword_1EB7CD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD798);
  }

  return result;
}

unint64_t sub_1B24AA8D4()
{
  result = qword_1EB7CD7E0;
  if (!qword_1EB7CD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7E0);
  }

  return result;
}

unint64_t sub_1B24AA92C()
{
  result = qword_1EB7CD7E8;
  if (!qword_1EB7CD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7E8);
  }

  return result;
}

unint64_t sub_1B24AA984()
{
  result = qword_1EB7CD7B0;
  if (!qword_1EB7CD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7B0);
  }

  return result;
}

unint64_t sub_1B24AA9DC()
{
  result = qword_1EB7CD7B8;
  if (!qword_1EB7CD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7B8);
  }

  return result;
}

unint64_t sub_1B24AAA34()
{
  result = qword_1EB7CD7F0;
  if (!qword_1EB7CD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7F0);
  }

  return result;
}

unint64_t sub_1B24AAA8C()
{
  result = qword_1EB7CD7F8;
  if (!qword_1EB7CD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7F8);
  }

  return result;
}

unint64_t sub_1B24AAAE4()
{
  result = qword_1EB7CD8C0;
  if (!qword_1EB7CD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8C0);
  }

  return result;
}

unint64_t sub_1B24AAB3C()
{
  result = qword_1EB7CD8C8;
  if (!qword_1EB7CD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8C8);
  }

  return result;
}

uint64_t sub_1B24AAB90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t OUTLINED_FUNCTION_1_23()
{

  return sub_1B256E92C();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return sub_1B256E9EC();
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return sub_1B256E54C();
}

unint64_t OUTLINED_FUNCTION_15_12(uint64_t a1)
{

  return sub_1B24A95D8(a1);
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_1B256E9AC();
}

unint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{

  return sub_1B24A95D8(a1);
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return sub_1B256E9AC();
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return sub_1B256E92C();
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return sub_1B256E92C();
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_getWitnessTable();
}

void sub_1B24AB0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_244();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = *(v29 + 16);
  v31 = (v29 + 56);
  if (v30)
  {
    while (1)
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 8);
      v34 = *v31;
      a9 = *(v31 - 3);
      a10 = v32;
      a11 = v33;
      a12 = v34;

      v35 = v28(&a9);
      if (v24)
      {
        break;
      }

      if ((v35 & 1) == 0)
      {

        v31 += 4;
        if (--v30)
        {
          continue;
        }
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_190();
}

void sub_1B24AB1E4()
{
  OUTLINED_FUNCTION_25_7();
  v17[1] = v1;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v19 = v7;
  v18 = v8(0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = 0;
  v13 = *(v4 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      v15 = 1;
      v16 = v19;
      goto LABEL_9;
    }

    sub_1B24C5E6C();
    v14 = v6(v11);
    if (v0)
    {
      sub_1B24C4368(v11, v20);
      goto LABEL_10;
    }

    if (v14)
    {
      break;
    }

    sub_1B24C4368(v11, v20);
    ++v12;
  }

  v16 = v19;
  sub_1B24C52C8();
  v15 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v18);
LABEL_10:
  OUTLINED_FUNCTION_24_6();
}

uint64_t sub_1B24AB34C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18E8);
  swift_allocBox();
  sub_1B24C5C14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18F0);
  sub_1B256DE1C();
  sub_1B243E88C(v4, &qword_1EB7D17C8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  sub_1B256DF4C();
  sub_1B243E88C(a1, &qword_1EB7D17C8);
}

uint64_t sub_1B24AB498(uint64_t a1)
{
  *(v1 + 40) = a1;
  *(v1 + 48) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1B24AB508, 0, 0);
}

uint64_t sub_1B24AB508()
{
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18F8);
  *v1 = v0;
  v1[1] = sub_1B24AB5C8;
  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6DB98](v3, v2);
}

uint64_t sub_1B24AB5C8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_7_2();

    return v10();
  }
}

uint64_t sub_1B24AB6E8()
{
  OUTLINED_FUNCTION_4_0();
  swift_endAccess();
  OUTLINED_FUNCTION_7_2();

  return v0();
}

void sub_1B24AB744()
{
  OUTLINED_FUNCTION_244();
  v5 = v4;
  OUTLINED_FUNCTION_140();
  if (v3)
  {
    OUTLINED_FUNCTION_104();
    v7 = (v6 + 32);
    v8 = OUTLINED_FUNCTION_103_0();
    sub_1B24472B8(v8, v9, v5);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    while (1)
    {
      v10 = *v7++;
      switch(v10)
      {
        case 1:
        case 2:
        case 4:
        case 7:
          break;
        case 3:
          OUTLINED_FUNCTION_36_2();
          break;
        case 5:
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_34_3();
          break;
        default:
          OUTLINED_FUNCTION_137_0();
          break;
      }

      if (v5 == 5)
      {
        break;
      }

      OUTLINED_FUNCTION_182();
      v12 = 6;
LABEL_16:
      v15 = OUTLINED_FUNCTION_103_0();
      sub_1B24C52B4(v15, v16, v5);
      OUTLINED_FUNCTION_192();
      v5 = v12;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    if (*(v0 + 16))
    {
      sub_1B2455488();
      OUTLINED_FUNCTION_195();
      if (v5)
      {
        OUTLINED_FUNCTION_58_1();
        v2 = *(v11 + 8);
        v12 = *(v11 + 16);
        v13 = OUTLINED_FUNCTION_29_1();
        sub_1B24472B8(v13, v14, v12);
LABEL_15:
        v5 = 5;
        goto LABEL_16;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_182();
    v12 = 6;
    goto LABEL_15;
  }

  v17 = OUTLINED_FUNCTION_103_0();
  sub_1B24472B8(v17, v18, v5);
  v2 = v1;
  v12 = v5;
LABEL_19:
  switch(v12)
  {
    case 1:
      v31 = OUTLINED_FUNCTION_29_1();
      v26 = OUTLINED_FUNCTION_3_22(v31, v32, 1);
      v27 = v2;
      v28 = 1;
      goto LABEL_25;
    case 2:
      v24 = OUTLINED_FUNCTION_29_1();
      v26 = OUTLINED_FUNCTION_3_22(v24, v25, 2);
      v27 = v2;
      v28 = 2;
      goto LABEL_25;
    case 3:
      v29 = OUTLINED_FUNCTION_29_1();
      v26 = OUTLINED_FUNCTION_3_22(v29, v30, 3);
      v27 = v2;
      v28 = 3;
LABEL_25:
      sub_1B24C52B4(v26, v27, v28);
      goto LABEL_28;
    case 4:
      v21 = OUTLINED_FUNCTION_29_1();
      v23 = 4;
      goto LABEL_27;
    case 5:
      v21 = OUTLINED_FUNCTION_29_1();
      v23 = 5;
LABEL_27:
      OUTLINED_FUNCTION_2_14(v21, v22, v23);
LABEL_28:
      v33 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v34, v35);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v36, MEMORY[0x1E69E6158]);
      goto LABEL_29;
    case 6:
      v37 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v37, v38);
      v39 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v39);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v40, v41);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v42, &type metadata for BackingValue);
LABEL_29:
      swift_willThrow();

      break;
    default:

      v19 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_50_3(v19, v20);
      break;
  }

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_190();
}

void sub_1B24ABD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_52_2();
  if (v11)
  {
    OUTLINED_FUNCTION_104();
    v16 = (v15 + 32);
    v17 = OUTLINED_FUNCTION_40_5();
    sub_1B24472B8(v17, v18, v19);
    OUTLINED_FUNCTION_112_0();
    v31 = v20;
    OUTLINED_FUNCTION_112_0();
    v30 = v21;
    while (1)
    {
      v22 = *v16++;
      v12 = 0xEB000000006E6F69;
      switch(v22)
      {
        case 1:
          break;
        case 2:
          v12 = 7565935;
          goto LABEL_8;
        case 3:
          OUTLINED_FUNCTION_12_15();
LABEL_8:
          v12 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 4:
          OUTLINED_FUNCTION_99_1();
          break;
        case 5:
          v12 = 0xE600000000000000;
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_34_3();
          v12 = v31;
          break;
        case 7:
          OUTLINED_FUNCTION_98_1();
          break;
        default:
          OUTLINED_FUNCTION_137_0();
          v12 = v30;
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v23)
      {
        if (!*(v10 + 16))
        {

LABEL_18:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_19;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_160_0();
        if ((v13 & 1) == 0)
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_19:
      OUTLINED_FUNCTION_7_18();
      if (v23)
      {
        goto LABEL_23;
      }
    }
  }

  OUTLINED_FUNCTION_30_6();
LABEL_23:
  switch(v14)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_25;
    case 6:
      v24 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v24, v25);
      v26 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v26);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v27, v28);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v29, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_25:
      OUTLINED_FUNCTION_43_2();
      *a10 = v12;
      *(a10 + 8) = v13;
      *(a10 + 16) = v14;
      break;
  }

  OUTLINED_FUNCTION_190();
}

void sub_1B24ABF10()
{
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_140();
  if (v3)
  {
    OUTLINED_FUNCTION_104();
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v6, v7, v8);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 2:
          OUTLINED_FUNCTION_36_2();
          break;
        case 5:
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_161_0();
          break;
        case 8:
          OUTLINED_FUNCTION_233();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v10)
      {
        if (!*(v0 + 16))
        {

LABEL_14:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_15;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_185();
        if ((v1 & 1) == 0)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_15:
      OUTLINED_FUNCTION_14_12();
      if (v10)
      {
        goto LABEL_19;
      }
    }
  }

  v11 = OUTLINED_FUNCTION_60_2();
  sub_1B24472B8(v11, v12, v13);
  OUTLINED_FUNCTION_259();
LABEL_19:
  switch(v2)
  {
    case 1:
      v26 = OUTLINED_FUNCTION_153();
      v21 = OUTLINED_FUNCTION_8_18(v26, v27, 1);
      v22 = v1;
      v23 = 1;
      goto LABEL_25;
    case 2:
      v19 = OUTLINED_FUNCTION_153();
      v21 = OUTLINED_FUNCTION_8_18(v19, v20, 2);
      v22 = v1;
      v23 = 2;
      goto LABEL_25;
    case 3:
      v24 = OUTLINED_FUNCTION_153();
      v21 = OUTLINED_FUNCTION_8_18(v24, v25, 3);
      v22 = v1;
      v23 = 3;
LABEL_25:
      sub_1B24C52B4(v21, v22, v23);
      goto LABEL_28;
    case 4:
      v16 = OUTLINED_FUNCTION_153();
      v18 = 4;
      goto LABEL_27;
    case 5:
      v16 = OUTLINED_FUNCTION_153();
      v18 = 5;
LABEL_27:
      OUTLINED_FUNCTION_2_14(v16, v17, v18);
LABEL_28:
      v28 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v28);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v29, v30);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v31, MEMORY[0x1E69E6158]);
      goto LABEL_29;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v32 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v33, v34);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v35, &type metadata for BackingValue);
LABEL_29:
      swift_willThrow();

      break;
    default:

      v14 = OUTLINED_FUNCTION_153();
      OUTLINED_FUNCTION_50_3(v14, v15);
      break;
  }

  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_190();
}

void sub_1B24AC208()
{
  OUTLINED_FUNCTION_52_2();
  v38 = v5;
  if (v1)
  {
    OUTLINED_FUNCTION_145_0();
    v7 = (v6 + 32);
    v8 = OUTLINED_FUNCTION_40_5();
    sub_1B24472B8(v8, v9, v10);
    OUTLINED_FUNCTION_112_0();
    v42 = v11;
    OUTLINED_FUNCTION_112_0();
    v39 = v12;
    while (1)
    {
      v13 = *v7++;
      v2 = 0xEB000000006E6F69;
      switch(v13)
      {
        case 1:
          OUTLINED_FUNCTION_266();
          goto LABEL_8;
        case 2:
          OUTLINED_FUNCTION_12_15();
LABEL_8:
          v2 = 0xEB000000006E6F69;
          break;
        case 3:
          OUTLINED_FUNCTION_118();
          break;
        case 4:
          OUTLINED_FUNCTION_99_1();
          break;
        case 5:
          v2 = 0xE600000000000000;
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_161_0();
          v2 = v39;
          break;
        case 7:
          OUTLINED_FUNCTION_98_1();
          break;
        case 8:
          OUTLINED_FUNCTION_233();
          v2 = v42;
          break;
        case 9:
          OUTLINED_FUNCTION_208();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v14)
      {
        if (!*(v0 + 16))
        {

LABEL_21:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_22;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_160_0();
        if ((v3 & 1) == 0)
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_22:
      OUTLINED_FUNCTION_7_18();
      if (v14)
      {
        goto LABEL_26;
      }
    }
  }

  OUTLINED_FUNCTION_30_6();
LABEL_26:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_28;
    case 6:
      v30 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v30, v31);
      v32 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v33, v34);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v35, &type metadata for BackingValue);
      goto LABEL_32;
    default:

LABEL_28:
      OUTLINED_FUNCTION_43_2();
      v40[0] = v2;
      v40[1] = v3;
      v41 = v4;
      v15 = NSDecimal.init(_:)(v40);
      if ((v17 & 0x100000000) != 0)
      {
        type metadata accessor for Decimal(0);
        v24 = v23;
        v25 = OUTLINED_FUNCTION_103_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v25);
        OUTLINED_FUNCTION_0_29();
        sub_1B248D0F8(v26, v27);
        v28 = OUTLINED_FUNCTION_4_6();
        *v29 = v38;
        v29[1] = v24;
        OUTLINED_FUNCTION_24_7(v28, v29);
LABEL_32:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_165_0(v15, v16, v17, v18, v19, v20, v21, v22, v36, v37);
      }

      OUTLINED_FUNCTION_240();
      return;
  }
}

void sub_1B24AC758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_52_2();
  if (v11)
  {
    OUTLINED_FUNCTION_104();
    v16 = (v15 + 32);
    v17 = OUTLINED_FUNCTION_40_5();
    sub_1B24472B8(v17, v18, v19);
    OUTLINED_FUNCTION_112_0();
    v31 = v20;
    OUTLINED_FUNCTION_112_0();
    v30 = v21;
    while (1)
    {
      v22 = *v16++;
      v12 = 0xEB000000006E6F69;
      switch(v22)
      {
        case 1:
          v12 = 7565935;
          goto LABEL_8;
        case 2:
          OUTLINED_FUNCTION_12_15();
LABEL_8:
          v12 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 3:
          OUTLINED_FUNCTION_118();
          break;
        case 4:
          OUTLINED_FUNCTION_99_1();
          break;
        case 5:
          v12 = 0xE600000000000000;
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_161_0();
          v12 = v30;
          break;
        case 7:
          OUTLINED_FUNCTION_98_1();
          break;
        case 8:
          OUTLINED_FUNCTION_233();
          v12 = v31;
          break;
        case 9:
          OUTLINED_FUNCTION_208();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v23)
      {
        if (!*(v10 + 16))
        {

LABEL_21:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_22;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_160_0();
        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_22:
      OUTLINED_FUNCTION_7_18();
      if (v23)
      {
        goto LABEL_26;
      }
    }
  }

  OUTLINED_FUNCTION_30_6();
LABEL_26:
  switch(v14)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_28;
    case 6:
      v24 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v24, v25);
      v26 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v26);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v27, v28);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v29, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_28:
      OUTLINED_FUNCTION_43_2();
      *a10 = v12;
      *(a10 + 8) = v13;
      *(a10 + 16) = v14;
      break;
  }

  OUTLINED_FUNCTION_190();
}

void sub_1B24AC998(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    v11 = OUTLINED_FUNCTION_84_1();
    sub_1B24472B8(v11, v12, v13);
    while (1)
    {
      v14 = *v10++;
      switch(v14)
      {
        case 1:
        case 2:
        case 3:
          OUTLINED_FUNCTION_90_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v15)
      {
        if (!*(a2 + 16))
        {

LABEL_11:
          v21 = 0;
          v22 = 0;
          v23 = 6;
          goto LABEL_12;
        }

        sub_1B2455488();
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_101_1();
        v21 = *v18;
        v22 = v18[1];
        v23 = *(v18 + 16);
        v19 = OUTLINED_FUNCTION_136();
        sub_1B24472B8(v19, v20, v23);
      }

      else
      {

        v21 = 0;
        v22 = 0;
        v23 = 6;
      }

LABEL_12:
      v24 = OUTLINED_FUNCTION_84_1();
      sub_1B24C52B4(v24, v25, v26);
      a2 = v21;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }
  }

  v27 = OUTLINED_FUNCTION_84_1();
  sub_1B24472B8(v27, v28, v29);
  v21 = a2;
  v22 = a3;
  v23 = a4;
LABEL_15:
  switch(v23)
  {
    case 1:
      v42 = OUTLINED_FUNCTION_136();
      v37 = OUTLINED_FUNCTION_10_12(v42, v43, 1);
      v39 = 1;
      goto LABEL_21;
    case 2:
      v35 = OUTLINED_FUNCTION_136();
      v37 = OUTLINED_FUNCTION_10_12(v35, v36, 2);
      v39 = 2;
      goto LABEL_21;
    case 3:
      v40 = OUTLINED_FUNCTION_136();
      v37 = OUTLINED_FUNCTION_10_12(v40, v41, 3);
      v39 = 3;
LABEL_21:
      sub_1B24C52B4(v37, v38, v39);
      goto LABEL_24;
    case 4:
      v32 = OUTLINED_FUNCTION_136();
      v34 = 4;
      goto LABEL_23;
    case 5:
      v32 = OUTLINED_FUNCTION_136();
      v34 = 5;
LABEL_23:
      OUTLINED_FUNCTION_2_14(v32, v33, v34);
LABEL_24:
      v44 = OUTLINED_FUNCTION_103_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v44);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v45, v46);
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_6_17(v47, a5);
      goto LABEL_25;
    case 6:
      v48 = OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_21_10(v48, v49);
      v50 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v50);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v51, v52);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v53, &type metadata for BackingValue);
LABEL_25:
      swift_willThrow();

      break;
    default:

      v30 = OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_50_3(v30, v31);
      *a6 = v21;
      a6[1] = v22;
      break;
  }

  OUTLINED_FUNCTION_190();
}

void sub_1B24ACE84()
{
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_140();
  if (v3)
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v6, v7, v8);
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 1:
        case 2:
        case 3:
          OUTLINED_FUNCTION_90_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v10)
      {
        if (!*(v0 + 16))
        {

LABEL_11:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_12;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_185();
        if ((v1 & 1) == 0)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_12:
      OUTLINED_FUNCTION_14_12();
      if (v10)
      {
        goto LABEL_16;
      }
    }
  }

  v11 = OUTLINED_FUNCTION_60_2();
  sub_1B24472B8(v11, v12, v13);
  OUTLINED_FUNCTION_259();
LABEL_16:
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_18;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v22 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v22);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v23, v24);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v25, &type metadata for BackingValue);
      goto LABEL_22;
    default:

LABEL_18:
      v14 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v14, v15, v16);
      OUTLINED_FUNCTION_269();
      OUTLINED_FUNCTION_153();
      sub_1B24B6BE8();
      if ((v17 & 1) == 0)
      {
        goto LABEL_23;
      }

      v18 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v18);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v19, v20);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v21, MEMORY[0x1E69E7360]);
LABEL_22:
      swift_willThrow();

LABEL_23:
      OUTLINED_FUNCTION_229();
      return;
  }
}

void sub_1B24AD2A0(char a1@<W3>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_188();
  if (*(v5 + 16))
  {
    v6 = (v5 + 32);
    v7 = OUTLINED_FUNCTION_156();
    sub_1B24472B8(v7, v8, a1);
    OUTLINED_FUNCTION_224();
    while (1)
    {
      v9 = *v6++;
      switch(v9)
      {
        case 1:
          v10 = OUTLINED_FUNCTION_83_1();
          OUTLINED_FUNCTION_223(v10);
          break;
        case 2:
          OUTLINED_FUNCTION_55_1();
          break;
        case 3:
          OUTLINED_FUNCTION_201();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v11)
      {
        break;
      }

      OUTLINED_FUNCTION_206();
LABEL_15:
      v15 = OUTLINED_FUNCTION_156();
      sub_1B24C52B4(v15, v16, a1);
      OUTLINED_FUNCTION_297();
      if (v11)
      {
        goto LABEL_19;
      }
    }

    if (*(v2 + 16))
    {
      sub_1B2455488();
      OUTLINED_FUNCTION_196();
      if (a1)
      {
        OUTLINED_FUNCTION_101_1();
        v3 = *(v12 + 16);
        v13 = OUTLINED_FUNCTION_132_0();
        sub_1B24472B8(v13, v14, v3);
LABEL_14:
        a1 = 5;
        goto LABEL_15;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_206();
    goto LABEL_14;
  }

  v17 = OUTLINED_FUNCTION_156();
  sub_1B24472B8(v17, v18, a1);
  v3 = a1;
LABEL_19:
  switch(v3)
  {
    case 1:
      v34 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v34, v35, 1);
      v31 = 1;
      goto LABEL_26;
    case 2:
      v27 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v27, v28, 2);
      v31 = 2;
      goto LABEL_26;
    case 3:
      v32 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v32, v33, 3);
      v31 = 3;
LABEL_26:
      sub_1B24C52B4(v29, v30, v31);
      goto LABEL_29;
    case 4:
      v24 = OUTLINED_FUNCTION_132_0();
      v26 = 4;
      goto LABEL_28;
    case 5:
      v24 = OUTLINED_FUNCTION_132_0();
      v26 = 5;
LABEL_28:
      OUTLINED_FUNCTION_2_14(v24, v25, v26);
      goto LABEL_29;
    case 6:
      v40 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_21_10(v40, v41);
      v42 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v42);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v43, v44);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v45, &type metadata for BackingValue);
      goto LABEL_30;
    default:

      v19 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_50_3(v19, v20);
      v21 = OUTLINED_FUNCTION_132_0();
      Product.SubscriptionPeriod.init(from8601String:)(v21, v22, v23);
      if (v47)
      {

LABEL_29:
        v36 = OUTLINED_FUNCTION_116_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v36);
        OUTLINED_FUNCTION_0_29();
        sub_1B248D0F8(v37, v38);
        OUTLINED_FUNCTION_62_1();
        OUTLINED_FUNCTION_6_17(v39, &type metadata for Product.SubscriptionPeriod);
LABEL_30:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_260(v48, a2);
      }

      OUTLINED_FUNCTION_190();
      return;
  }
}

void sub_1B24AD53C()
{
  OUTLINED_FUNCTION_245();
  v5 = v4;
  OUTLINED_FUNCTION_188();
  v46 = v7;
  if (*(v6 + 16))
  {
    v8 = (v6 + 32);
    v9 = OUTLINED_FUNCTION_156();
    sub_1B24472B8(v9, v10, v5);
    OUTLINED_FUNCTION_224();
    while (1)
    {
      v11 = *v8++;
      v12 = 0xE600000000000000;
      switch(v11)
      {
        case 1:
          v13 = OUTLINED_FUNCTION_83_1();
          OUTLINED_FUNCTION_223(v13);
          break;
        case 2:
          OUTLINED_FUNCTION_55_1();
          break;
        case 3:
          OUTLINED_FUNCTION_201();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_206();
LABEL_15:
      v18 = OUTLINED_FUNCTION_156();
      sub_1B24C52B4(v18, v19, v5);
      OUTLINED_FUNCTION_297();
      if (v14)
      {
        goto LABEL_19;
      }
    }

    if (*(v0 + 16))
    {
      sub_1B2455488();
      OUTLINED_FUNCTION_196();
      if (v5)
      {
        OUTLINED_FUNCTION_101_1();
        v2 = *v15;
        v12 = v15[1];
        v3 = *(v15 + 16);
        v16 = OUTLINED_FUNCTION_132_0();
        sub_1B24472B8(v16, v17, v3);
LABEL_14:
        v5 = 5;
        goto LABEL_15;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_206();
    goto LABEL_14;
  }

  v20 = OUTLINED_FUNCTION_156();
  sub_1B24472B8(v20, v21, v5);
  v2 = v0;
  v12 = v1;
  v3 = v5;
LABEL_19:
  switch(v3)
  {
    case 1:
      v34 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v34, v35, 1);
      v31 = 1;
      goto LABEL_25;
    case 2:
      v27 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v27, v28, 2);
      v31 = 2;
      goto LABEL_25;
    case 3:
      v32 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v32, v33, 3);
      v31 = 3;
LABEL_25:
      sub_1B24C52B4(v29, v30, v31);
      goto LABEL_28;
    case 4:
      v24 = OUTLINED_FUNCTION_132_0();
      v26 = 4;
      goto LABEL_27;
    case 5:
      v24 = OUTLINED_FUNCTION_132_0();
      v26 = 5;
LABEL_27:
      OUTLINED_FUNCTION_2_14(v24, v25, v26);
LABEL_28:
      v36 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v36);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v37, v38);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v39, &type metadata for Transaction.AdvancedCommerceInfo.Offer.Reason);
      goto LABEL_29;
    case 6:
      v40 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_21_10(v40, v41);
      v42 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v42);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v43, v44);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v45, &type metadata for BackingValue);
LABEL_29:
      swift_willThrow();

      break;
    default:

      v22 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_50_3(v22, v23);
      *v46 = v2;
      v46[1] = v12;
      break;
  }

  OUTLINED_FUNCTION_229();
}

void sub_1B24AD7AC()
{
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_140();
  if (v3)
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v6, v7, v8);
    OUTLINED_FUNCTION_224();
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 1:
          v10 = OUTLINED_FUNCTION_83_1();
          OUTLINED_FUNCTION_223(v10);
          break;
        case 2:
          OUTLINED_FUNCTION_55_1();
          break;
        case 3:
          OUTLINED_FUNCTION_201();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v11)
      {
        if (!*(v0 + 16))
        {

LABEL_13:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_14;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_185();
        if ((v1 & 1) == 0)
        {
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_14:
      OUTLINED_FUNCTION_14_12();
      if (v11)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = OUTLINED_FUNCTION_60_2();
  sub_1B24472B8(v12, v13, v14);
  OUTLINED_FUNCTION_259();
LABEL_18:
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_20;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v23 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v23);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v24, v25);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v26, &type metadata for BackingValue);
      goto LABEL_24;
    default:

LABEL_20:
      v15 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_8_18(v15, v16, v17);
      OUTLINED_FUNCTION_283();
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      v19 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v19);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v20, v21);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v22, MEMORY[0x1E69E6530]);
LABEL_24:
      swift_willThrow();

LABEL_25:
      OUTLINED_FUNCTION_229();
      return;
  }
}

void sub_1B24AD990()
{
  OUTLINED_FUNCTION_245();
  v5 = v4;
  OUTLINED_FUNCTION_140();
  if (v3)
  {
    v7 = (v6 + 32);
    v8 = OUTLINED_FUNCTION_103_0();
    sub_1B24472B8(v8, v9, v5);
    while (1)
    {
      v10 = *v7++;
      switch(v10)
      {
        case 1:
          OUTLINED_FUNCTION_36_2();
          break;
        case 2:
          OUTLINED_FUNCTION_265();
          break;
        case 3:
          OUTLINED_FUNCTION_87_0();
          break;
        default:
          break;
      }

      if (v5 == 5)
      {
        break;
      }

      OUTLINED_FUNCTION_182();
      v12 = 6;
LABEL_15:
      v15 = OUTLINED_FUNCTION_103_0();
      sub_1B24C52B4(v15, v16, v5);
      OUTLINED_FUNCTION_192();
      v5 = v12;
      if (!--v3)
      {
        goto LABEL_18;
      }
    }

    if (*(v0 + 16))
    {
      sub_1B2455488();
      OUTLINED_FUNCTION_195();
      if (v5)
      {
        OUTLINED_FUNCTION_58_1();
        v2 = *(v11 + 8);
        v12 = *(v11 + 16);
        v13 = OUTLINED_FUNCTION_29_1();
        sub_1B24472B8(v13, v14, v12);
LABEL_14:
        v5 = 5;
        goto LABEL_15;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_182();
    v12 = 6;
    goto LABEL_14;
  }

  v17 = OUTLINED_FUNCTION_103_0();
  sub_1B24472B8(v17, v18, v5);
  v2 = v1;
  v12 = v5;
LABEL_18:
  switch(v12)
  {
    case 1:
      v31 = OUTLINED_FUNCTION_29_1();
      v26 = OUTLINED_FUNCTION_3_22(v31, v32, 1);
      v27 = v2;
      v28 = 1;
      goto LABEL_24;
    case 2:
      v24 = OUTLINED_FUNCTION_29_1();
      v26 = OUTLINED_FUNCTION_3_22(v24, v25, 2);
      v27 = v2;
      v28 = 2;
      goto LABEL_24;
    case 3:
      v29 = OUTLINED_FUNCTION_29_1();
      v26 = OUTLINED_FUNCTION_3_22(v29, v30, 3);
      v27 = v2;
      v28 = 3;
LABEL_24:
      sub_1B24C52B4(v26, v27, v28);
      goto LABEL_27;
    case 4:
      v21 = OUTLINED_FUNCTION_29_1();
      v23 = 4;
      goto LABEL_26;
    case 5:
      v21 = OUTLINED_FUNCTION_29_1();
      v23 = 5;
LABEL_26:
      OUTLINED_FUNCTION_2_14(v21, v22, v23);
LABEL_27:
      v33 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v34, v35);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v36, MEMORY[0x1E69E6158]);
      goto LABEL_28;
    case 6:
      v37 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v37, v38);
      v39 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v39);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v40, v41);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v42, &type metadata for BackingValue);
LABEL_28:
      swift_willThrow();

      break;
    default:

      v19 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_50_3(v19, v20);
      break;
  }

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_229();
}

uint64_t sub_1B24ADE48()
{
  OUTLINED_FUNCTION_188();
  v25 = v5;
  if (*(v4 + 16))
  {
    v6 = (v4 + 32);
    v7 = OUTLINED_FUNCTION_40_5();
    sub_1B24472B8(v7, v8, v9);
    OUTLINED_FUNCTION_145_0();
    while (1)
    {
      v10 = *v6++;
      v1 = 0xEB000000006E6F69;
      switch(v10)
      {
        case 1:
          OUTLINED_FUNCTION_12_15();
          v1 = 0xEB000000006E6F69;
          break;
        case 2:
          v1 = 0xE500000000000000;
          OUTLINED_FUNCTION_265();
          break;
        case 3:
          v1 = 0xE500000000000000;
          OUTLINED_FUNCTION_87_0();
          break;
        case 4:
          v1 = 0xE300000000000000;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v11)
      {
        if (!*(v0 + 16))
        {

LABEL_14:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_15;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_160_0();
        if ((v2 & 1) == 0)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_15:
      OUTLINED_FUNCTION_7_18();
      if (v11)
      {
        goto LABEL_19;
      }
    }
  }

  OUTLINED_FUNCTION_30_6();
LABEL_19:
  switch(v3)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_21;
    case 6:
      v19 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v19, v20);
      v21 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v22, v23);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v24, &type metadata for BackingValue);
      goto LABEL_25;
    default:

LABEL_21:
      OUTLINED_FUNCTION_43_2();
      *&v26 = v1;
      *(&v26 + 1) = v2;
      LOBYTE(v27) = v3;
      result = sub_1B249ACA0(&v26, &v30);
      if (*(&v33 + 1))
      {
        v13 = v31;
        *v25 = v30;
        v25[1] = v13;
        v14 = v33;
        v25[2] = v32;
        v25[3] = v14;
      }

      else
      {
        v26 = v30;
        v27 = v31;
        v28 = v32;
        v29 = v33;
        sub_1B243E88C(&v26, &qword_1EB7D1220);
        v15 = OUTLINED_FUNCTION_116_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v15);
        OUTLINED_FUNCTION_0_29();
        sub_1B248D0F8(v16, v17);
        OUTLINED_FUNCTION_62_1();
        OUTLINED_FUNCTION_6_17(v18, &type metadata for Transaction.AdvancedCommerceInfo.Offer);
LABEL_25:
        swift_willThrow();
      }

      return result;
  }
}

void sub_1B24AE0B4()
{
  OUTLINED_FUNCTION_245();
  v4 = v3;
  OUTLINED_FUNCTION_140();
  if (v2)
  {
    v6 = v5 + 32;
    v7 = OUTLINED_FUNCTION_85_0();
    sub_1B24472B8(v7, v8, v9);
    while (1)
    {
      OUTLINED_FUNCTION_194();
      if (v10)
      {
        if (!*(v0 + 16))
        {

LABEL_9:
          OUTLINED_FUNCTION_86();
          goto LABEL_10;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_195();
        if ((v1 & 1) == 0)
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_58_1();
        v1 = *(v11 + 16);
        v12 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v12, v13, v14);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_10:
      v15 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v15, v16, v17);
      ++v6;
      OUTLINED_FUNCTION_100_1();
      if (v10)
      {
        goto LABEL_14;
      }
    }
  }

  v18 = OUTLINED_FUNCTION_85_0();
  sub_1B24472B8(v18, v19, v20);
  v1 = v4;
LABEL_14:
  switch(v1)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      v29 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v29, v30);
      v31 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v31);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v32, v33);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v34, &type metadata for BackingValue);
      goto LABEL_20;
    default:

LABEL_16:
      v21 = OUTLINED_FUNCTION_54_2();
      OUTLINED_FUNCTION_2_14(v21, v22, v23);
      OUTLINED_FUNCTION_269();
      OUTLINED_FUNCTION_29_1();
      sub_1B24B6BE8();
      if ((v24 & 1) == 0)
      {
        goto LABEL_21;
      }

      v25 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v25);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v26, v27);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v28, MEMORY[0x1E69E7360]);
LABEL_20:
      swift_willThrow();

LABEL_21:
      OUTLINED_FUNCTION_229();
      return;
  }
}

void sub_1B24AE2CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_188();
  v34 = v10;
  if (*(v9 + 16))
  {
    v11 = (v9 + 32);
    v12 = OUTLINED_FUNCTION_124_0();
    sub_1B24472B8(v12, v13, v14);
    while (1)
    {
      if (*v11)
      {
        v15 = 0xEE00657461446E6FLL;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      OUTLINED_FUNCTION_232();
      if (v16)
      {
        if (!*(v4 + 16))
        {

LABEL_12:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_13;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_196();
        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_101_1();
        v15 = *v17;
        v6 = *(v17 + 8);
        v7 = *(v17 + 16);
        v18 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v18, v19, v20);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_13:
      v21 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v21, v22, v23);
      ++v11;
      OUTLINED_FUNCTION_143_0();
      if (v16)
      {
        goto LABEL_17;
      }
    }
  }

  v24 = OUTLINED_FUNCTION_124_0();
  sub_1B24472B8(v24, v25, v26);
  v15 = v4;
  v6 = v5;
  v7 = a4;
LABEL_17:
  switch(v7)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v30 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v30);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v31, v32);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v33, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_19:
      v27 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v27, v28, v29);
      *v34 = v15;
      *(v34 + 8) = v6;
      *(v34 + 16) = v7;
      break;
  }

  OUTLINED_FUNCTION_229();
}

void sub_1B24AE498()
{
  OUTLINED_FUNCTION_25_7();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v7, v8, v1);
    v9 = (v5 + 40);
    v10 = v3;
    v11 = v1;
    do
    {
      if (v11 == 5 && *(v10 + 16) && (v3 = *v9, , sub_1B2455488(), OUTLINED_FUNCTION_285(), (v1 & 1) != 0))
      {
        OUTLINED_FUNCTION_173();
        v3 = *v12;
        v1 = *(v12 + 16);
        v13 = OUTLINED_FUNCTION_25_1();
        sub_1B24472B8(v13, v14, v1);
      }

      else
      {
        OUTLINED_FUNCTION_227();
        v1 = 6;
      }

      v15 = OUTLINED_FUNCTION_153();
      sub_1B24C52B4(v15, v16, v17);
      v9 += 2;
      v10 = v3;
      v11 = v1;
      --v6;
    }

    while (v6);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v18, v19, v1);
  }

  switch(v1)
  {
    case 1:
      v34 = OUTLINED_FUNCTION_107_1();
      v28 = OUTLINED_FUNCTION_4_18(v34, v35, v36);
      v30 = 1;
      goto LABEL_17;
    case 2:
      v25 = OUTLINED_FUNCTION_106_1();
      v28 = OUTLINED_FUNCTION_4_18(v25, v26, v27);
      v30 = 2;
      goto LABEL_17;
    case 3:
      v31 = OUTLINED_FUNCTION_108_1();
      v28 = OUTLINED_FUNCTION_4_18(v31, v32, v33);
      v30 = 3;
LABEL_17:
      sub_1B24C52B4(v28, v29, v30);
      goto LABEL_20;
    case 4:
      v22 = OUTLINED_FUNCTION_25_1();
      v24 = 4;
      goto LABEL_19;
    case 5:
      v22 = OUTLINED_FUNCTION_25_1();
      v24 = 5;
LABEL_19:
      OUTLINED_FUNCTION_2_14(v22, v23, v24);
LABEL_20:
      v37 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v38, v39);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v40, MEMORY[0x1E69E6158]);
      goto LABEL_21;
    case 6:
      v41 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_21_10(v41, v42);
      v43 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v43);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v44, v45);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v46, &type metadata for BackingValue);
LABEL_21:
      swift_willThrow();

      break;
    default:

      v20 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_50_3(v20, v21);
      break;
  }

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_24_6();
}

void sub_1B24AE6C8()
{
  OUTLINED_FUNCTION_25_7();
  v3 = v2;
  OUTLINED_FUNCTION_253();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v6, v7, v8);
    v9 = v0 + 40;
    v10 = v1;
    v11 = v3;
    do
    {
      if (v11 == 5 && *(v10 + 16) && (, v1 = v10, sub_1B2455488(), OUTLINED_FUNCTION_285(), (v3 & 1) != 0))
      {
        OUTLINED_FUNCTION_173();
        v1 = *v12;
        v3 = *(v12 + 16);
        v13 = OUTLINED_FUNCTION_60_2();
        sub_1B24472B8(v13, v14, v15);
      }

      else
      {
        OUTLINED_FUNCTION_310();
        v3 = 6;
      }

      v16 = OUTLINED_FUNCTION_153();
      sub_1B24C52B4(v16, v17, v18);
      v9 += 16;
      v10 = v1;
      v11 = v3;
      --v5;
    }

    while (v5);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v19, v20, v21);
  }

  switch(v3)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_13;
    case 6:
      v30 = OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_21_10(v30, v31);
      v32 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v33, v34);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v35, &type metadata for BackingValue);
      goto LABEL_16;
    default:

LABEL_13:
      v22 = OUTLINED_FUNCTION_60_2();
      OUTLINED_FUNCTION_2_14(v22, v23, v24);
      OUTLINED_FUNCTION_103_0();
      sub_1B24B6BE8();
      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }

      v26 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v26);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v27, v28);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v29, MEMORY[0x1E69E6530]);
LABEL_16:
      swift_willThrow();

LABEL_17:
      OUTLINED_FUNCTION_24_6();
      return;
  }
}

void sub_1B24AE8B4(uint64_t a1)
{
  OUTLINED_FUNCTION_105_1();
  if (*(v4 + 16))
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v6, v7, v8);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_276();
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_20;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_20:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          break;
        case 23:
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
        case 26:
        case 27:
          OUTLINED_FUNCTION_156_0();
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v10)
      {
        if (!*(v1 + 16))
        {

LABEL_37:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_38;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_185();
        if ((v2 & 1) == 0)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_38:
      OUTLINED_FUNCTION_14_12();
      if (v10)
      {
        goto LABEL_42;
      }
    }
  }

  v11 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v11, v12, v13);
LABEL_42:
  switch(v3)
  {
    case 1:
      v25 = OUTLINED_FUNCTION_153();
      v20 = OUTLINED_FUNCTION_8_18(v25, v26, 1);
      v21 = v2;
      v22 = 1;
      goto LABEL_48;
    case 2:
      v18 = OUTLINED_FUNCTION_153();
      v20 = OUTLINED_FUNCTION_8_18(v18, v19, 2);
      v21 = v2;
      v22 = 2;
      goto LABEL_48;
    case 3:
      v23 = OUTLINED_FUNCTION_153();
      v20 = OUTLINED_FUNCTION_8_18(v23, v24, 3);
      v21 = v2;
      v22 = 3;
LABEL_48:
      sub_1B24C52B4(v20, v21, v22);
      goto LABEL_51;
    case 4:

      OUTLINED_FUNCTION_2_14(v17, v2, 4);
      goto LABEL_53;
    case 5:
      v14 = OUTLINED_FUNCTION_153();
      v16 = 5;
      goto LABEL_50;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v33 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v34, v35);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v36, &type metadata for BackingValue);
      goto LABEL_52;
    default:
      v14 = OUTLINED_FUNCTION_153();
      v16 = 0;
LABEL_50:
      OUTLINED_FUNCTION_2_14(v14, v15, v16);
LABEL_51:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03E8);
      v28 = OUTLINED_FUNCTION_89();
      __swift_instantiateConcreteTypeFromMangledNameV2(v28);
      OUTLINED_FUNCTION_1_24();
      OUTLINED_FUNCTION_9_9();
      sub_1B248D0F8(v29, v30);
      v31 = OUTLINED_FUNCTION_4_6();
      *v32 = a1;
      v32[1] = v27;
      OUTLINED_FUNCTION_24_7(v31, v32);
LABEL_52:
      swift_willThrow();

LABEL_53:
      OUTLINED_FUNCTION_240();
      return;
  }
}

void sub_1B24AEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = OUTLINED_FUNCTION_132_0();
    sub_1B24472B8(v8, v9, a4);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_276();
    v10 = a2;
    v11 = a4;
    while (1)
    {
      v12 = *v7++;
      switch(v12)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_20;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_20:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          break;
        case 23:
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
        case 26:
        case 27:
          OUTLINED_FUNCTION_156_0();
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v13)
      {
        if (!*(v10 + 16))
        {

LABEL_37:
          a2 = 0;
          a4 = 6;
          goto LABEL_38;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_185();
        if ((a2 & 1) == 0)
        {
          goto LABEL_37;
        }

        v14 = *(v10 + 56) + 24 * v11;
        a2 = *v14;
        a4 = *(v14 + 16);
        v15 = OUTLINED_FUNCTION_132_0();
        sub_1B24472B8(v15, v16, a4);
      }

      else
      {

        a2 = 0;
        a4 = 6;
      }

LABEL_38:
      v17 = OUTLINED_FUNCTION_60_2();
      sub_1B24C52B4(v17, v18, v19);
      v10 = a2;
      v11 = a4;
      if (!--v6)
      {
        goto LABEL_41;
      }
    }
  }

  v20 = OUTLINED_FUNCTION_132_0();
  sub_1B24472B8(v20, v21, a4);
LABEL_41:
  switch(a4)
  {
    case 1:
      v34 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v34, v35, 1);
      v31 = 1;
      goto LABEL_47;
    case 2:
      v27 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v27, v28, 2);
      v31 = 2;
      goto LABEL_47;
    case 3:
      v32 = OUTLINED_FUNCTION_132_0();
      v29 = OUTLINED_FUNCTION_9_17(v32, v33, 3);
      v31 = 3;
LABEL_47:
      sub_1B24C52B4(v29, v30, v31);
      goto LABEL_50;
    case 4:
      v24 = OUTLINED_FUNCTION_132_0();
      v26 = 4;
      goto LABEL_49;
    case 5:
      v24 = OUTLINED_FUNCTION_132_0();
      v26 = 5;
LABEL_49:
      OUTLINED_FUNCTION_2_14(v24, v25, v26);
LABEL_50:
      v36 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v36);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v37, v38);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v39, MEMORY[0x1E69E6158]);
      goto LABEL_51;
    case 6:
      v40 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_21_10(v40, v41);
      v42 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v42);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v43, v44);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v45, &type metadata for BackingValue);
LABEL_51:
      swift_willThrow();

      break;
    default:

      v22 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_50_3(v22, v23);
      break;
  }

  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_240();
}

void sub_1B24AF05C()
{
  OUTLINED_FUNCTION_105_1();
  if (*(v3 + 16))
  {
    v4 = (v3 + 32);
    v5 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v5, v6, v7);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_119_0();
    while (1)
    {
      v8 = *v4++;
      switch(v8)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_20;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_20:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          break;
        case 23:
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
        case 26:
        case 27:
          OUTLINED_FUNCTION_156_0();
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v9)
      {
        if (!*(v0 + 16))
        {

LABEL_37:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_38;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_185();
        if ((v1 & 1) == 0)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_38:
      OUTLINED_FUNCTION_14_12();
      if (v9)
      {
        goto LABEL_42;
      }
    }
  }

  v10 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v10, v11, v12);
LABEL_42:
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_44;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v21 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v22, v23);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v24, &type metadata for BackingValue);
      goto LABEL_48;
    default:

LABEL_44:
      v13 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_8_18(v13, v14, v15);
      OUTLINED_FUNCTION_283();
      if ((v16 & 1) == 0)
      {
        goto LABEL_49;
      }

      v17 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v18, v19);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v20, MEMORY[0x1E69E6530]);
LABEL_48:
      swift_willThrow();

LABEL_49:
      OUTLINED_FUNCTION_240();
      return;
  }
}

void sub_1B24AF3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_320();
  a31 = v32;
  a32 = v34;
  v79 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = *(v33 + 16);
  a22 = v33;
  if (v42)
  {
    v43 = (v33 + 32);
    v44 = OUTLINED_FUNCTION_33();
    sub_1B24472B8(v44, v45, v46);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v77 = v47;
    v78 = v48;
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v75 = v49;
    v76 = v50;
    OUTLINED_FUNCTION_112_0();
    v74 = v51;
    v52 = v41;
    while (1)
    {
      v53 = *v43++;
      v41 = 0xE700000000000000;
      switch(v53)
      {
        case 1:
          v41 = 0xEA00000000007365;
          OUTLINED_FUNCTION_74_1();
          break;
        case 2:
          v41 = 0xEC00000065646F43;
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          v41 = 0xEB000000006E6F69;
          OUTLINED_FUNCTION_71_1();
          break;
        case 4:
          v41 = 0xE900000000000073;
          OUTLINED_FUNCTION_73_1();
          break;
        case 5:
          v41 = 0xE400000000000000;
          break;
        case 6:
          v41 = 0xEE0064657474616DLL;
          OUTLINED_FUNCTION_78_1();
          break;
        case 7:
          v41 = 0xED0000746E65746ELL;
          OUTLINED_FUNCTION_70_1();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          v41 = 0xE400000000000000;
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          v41 = v74;
          break;
        case 11:
          v41 = 0xE200000000000000;
          break;
        case 12:
          v41 = 0xE400000000000000;
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_301();
          break;
        case 15:
          v41 = 0xE800000000000000;
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          v41 = v75;
          break;
        case 17:
          v41 = 0xEC00000073646F69;
          OUTLINED_FUNCTION_69_1();
          break;
        case 18:
          v41 = 0xE500000000000000;
          OUTLINED_FUNCTION_87_0();
          break;
        case 19:
          v41 = 0xEB00000000676E69;
          OUTLINED_FUNCTION_77_1();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_22;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_22:
          v41 = 0xE900000000000065;
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          v41 = v76;
          break;
        case 23:
          v41 = 0xE800000000000000;
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
          OUTLINED_FUNCTION_156_0();
          v41 = v77;
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          v41 = v78;
          break;
        case 26:
          OUTLINED_FUNCTION_156_0();
          v41 = a14;
          break;
        case 27:
          OUTLINED_FUNCTION_156_0();
          v41 = a15;
          break;
        case 28:
          v41 = 0xE400000000000000;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v54)
      {
        if (!*(v52 + 16))
        {

LABEL_39:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_40;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_160_0();
        if ((v39 & 1) == 0)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_40:
      OUTLINED_FUNCTION_7_18();
      if (v54)
      {
        goto LABEL_44;
      }
    }
  }

  v55 = OUTLINED_FUNCTION_33();
  sub_1B24472B8(v55, v56, v57);
LABEL_44:
  switch(v37)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_46;
    case 6:
      v68 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v68, v69);
      v70 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v70);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v71, v72);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v73, &type metadata for BackingValue);
      goto LABEL_50;
    default:

LABEL_46:
      OUTLINED_FUNCTION_43_2();
      a18 = v41;
      a19 = v39;
      a20 = v37;
      v58 = NSDecimal.init(_:)(&a18);
      if ((v60 & 0x100000000) != 0)
      {
        type metadata accessor for Decimal(0);
        v62 = v61;
        v63 = OUTLINED_FUNCTION_103_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v63);
        OUTLINED_FUNCTION_0_29();
        sub_1B248D0F8(v64, v65);
        v66 = OUTLINED_FUNCTION_4_6();
        *v67 = a22;
        v67[1] = v62;
        OUTLINED_FUNCTION_24_7(v66, v67);
LABEL_50:
        swift_willThrow();
      }

      else
      {
        *v79 = v58;
        *(v79 + 8) = v59;
        *(v79 + 16) = v60;
      }

      OUTLINED_FUNCTION_319();
      return;
  }
}

void sub_1B24AF79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_320();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_105_1();
  v39 = *(v38 + 16);
  a22 = v38;
  if (v39)
  {
    v40 = (v38 + 32);
    v41 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v41, v42, v43);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v64 = v44;
    v65 = v45;
    OUTLINED_FUNCTION_112_0();
    v63 = v46;
    OUTLINED_FUNCTION_119_0();
    while (1)
    {
      v47 = *v40++;
      v33 = 0xE700000000000000;
      switch(v47)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          v33 = 0xEC00000065646F43;
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          v33 = v63;
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          v33 = 0xE800000000000000;
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          v33 = v64;
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_22;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_22:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          v33 = v65;
          break;
        case 23:
          v33 = 0xE800000000000000;
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
          OUTLINED_FUNCTION_156_0();
          v33 = a13;
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          v33 = a14;
          break;
        case 26:
          OUTLINED_FUNCTION_156_0();
          v33 = a15;
          break;
        case 27:
          OUTLINED_FUNCTION_156_0();
          v33 = a16;
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v48)
      {
        if (!*(v32 + 16))
        {

LABEL_39:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_40;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_185();
        if ((v34 & 1) == 0)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_40:
      OUTLINED_FUNCTION_14_12();
      if (v48)
      {
        goto LABEL_44;
      }
    }
  }

  v49 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v49, v50, v51);
LABEL_44:
  switch(v35)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_46;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v59 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v59);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v60, v61);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v62, &type metadata for BackingValue);
      goto LABEL_50;
    default:

LABEL_46:
      v52 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v52, v53, v54);
      a18 = v33;
      a19 = v34;
      a20 = v35;
      if (Bool.init(_:)(&a18) != 2)
      {
        goto LABEL_51;
      }

      v55 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v55);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v56, v57);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v58, MEMORY[0x1E69E6370]);
LABEL_50:
      swift_willThrow();

LABEL_51:
      OUTLINED_FUNCTION_319();
      return;
  }
}

void sub_1B24AFAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15)
{
  OUTLINED_FUNCTION_205();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v49 = v22;
  if (*(v15 + 16))
  {
    v23 = (v15 + 32);
    v24 = OUTLINED_FUNCTION_33();
    sub_1B24472B8(v24, v25, v26);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v47 = v27;
    v48 = v28;
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v45 = v29;
    v46 = v30;
    OUTLINED_FUNCTION_112_0();
    v44 = v31;
    v32 = v21;
    while (1)
    {
      v33 = *v23++;
      v21 = 0xE700000000000000;
      switch(v33)
      {
        case 1:
          v21 = 0xEA00000000007365;
          OUTLINED_FUNCTION_74_1();
          break;
        case 2:
          v21 = 0xEC00000065646F43;
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          v21 = 0xEB000000006E6F69;
          OUTLINED_FUNCTION_71_1();
          break;
        case 4:
          v21 = 0xE900000000000073;
          OUTLINED_FUNCTION_73_1();
          break;
        case 5:
          v21 = 0xE400000000000000;
          break;
        case 6:
          v21 = 0xEE0064657474616DLL;
          OUTLINED_FUNCTION_78_1();
          break;
        case 7:
          v21 = 0xED0000746E65746ELL;
          OUTLINED_FUNCTION_70_1();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          v21 = 0xE400000000000000;
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          v21 = v44;
          break;
        case 11:
          v21 = 0xE200000000000000;
          break;
        case 12:
          v21 = 0xE400000000000000;
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_301();
          break;
        case 15:
          v21 = 0xE800000000000000;
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          v21 = v45;
          break;
        case 17:
          v21 = 0xEC00000073646F69;
          OUTLINED_FUNCTION_69_1();
          break;
        case 18:
          v21 = 0xE500000000000000;
          OUTLINED_FUNCTION_87_0();
          break;
        case 19:
          v21 = 0xEB00000000676E69;
          OUTLINED_FUNCTION_77_1();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_22;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_22:
          v21 = 0xE900000000000065;
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          v21 = v46;
          break;
        case 23:
          v21 = 0xE800000000000000;
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
          OUTLINED_FUNCTION_156_0();
          v21 = a14;
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          v21 = a15;
          break;
        case 26:
          OUTLINED_FUNCTION_156_0();
          v21 = v47;
          break;
        case 27:
          OUTLINED_FUNCTION_156_0();
          v21 = v48;
          break;
        case 28:
          v21 = 0xE400000000000000;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v34)
      {
        if (!*(v32 + 16))
        {

LABEL_39:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_40;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_160_0();
        if ((v19 & 1) == 0)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_40:
      OUTLINED_FUNCTION_7_18();
      if (v34)
      {
        goto LABEL_44;
      }
    }
  }

  v35 = OUTLINED_FUNCTION_33();
  sub_1B24472B8(v35, v36, v37);
LABEL_44:
  switch(v17)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_46;
    case 6:
      v38 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v38, v39);
      v40 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v41, v42);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v43, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_46:
      OUTLINED_FUNCTION_43_2();
      *v49 = v21;
      *(v49 + 8) = v19;
      *(v49 + 16) = v17;
      break;
  }

  OUTLINED_FUNCTION_204();
}

void sub_1B24AFE88()
{
  OUTLINED_FUNCTION_322();
  v3 = v2;
  OUTLINED_FUNCTION_262();
  if (v1)
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v6, v7, v3);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_294();
    OUTLINED_FUNCTION_246();
    v8 = v3;
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 2:
          OUTLINED_FUNCTION_233();
          break;
        case 3:
        case 7:
        case 8:
          break;
        case 4:
          OUTLINED_FUNCTION_202();
          break;
        default:
          OUTLINED_FUNCTION_161_0();
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v10)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
LABEL_15:
      v14 = OUTLINED_FUNCTION_29_1();
      sub_1B24C52B4(v14, v15, v8);
      OUTLINED_FUNCTION_246();
      v8 = v3;
      if (!--v1)
      {
        goto LABEL_18;
      }
    }

    if (*(v0 + 16))
    {
      sub_1B2455488();
      OUTLINED_FUNCTION_286();
      if (v3)
      {
        OUTLINED_FUNCTION_189();
        v3 = *(v11 + 16);
        v12 = OUTLINED_FUNCTION_25_1();
        sub_1B24472B8(v12, v13, v3);
LABEL_14:
        v8 = 5;
        goto LABEL_15;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_222();
    goto LABEL_14;
  }

  v16 = OUTLINED_FUNCTION_25_1();
  sub_1B24472B8(v16, v17, v3);
LABEL_18:
  switch(v3)
  {
    case 1:
      v32 = OUTLINED_FUNCTION_107_1();
      v26 = OUTLINED_FUNCTION_4_18(v32, v33, v34);
      v28 = 1;
      goto LABEL_24;
    case 2:
      v23 = OUTLINED_FUNCTION_106_1();
      v26 = OUTLINED_FUNCTION_4_18(v23, v24, v25);
      v28 = 2;
      goto LABEL_24;
    case 3:
      v29 = OUTLINED_FUNCTION_108_1();
      v26 = OUTLINED_FUNCTION_4_18(v29, v30, v31);
      v28 = 3;
LABEL_24:
      sub_1B24C52B4(v26, v27, v28);
      goto LABEL_27;
    case 4:
      v20 = OUTLINED_FUNCTION_25_1();
      v22 = 4;
      goto LABEL_26;
    case 5:
      v20 = OUTLINED_FUNCTION_25_1();
      v22 = 5;
LABEL_26:
      OUTLINED_FUNCTION_2_14(v20, v21, v22);
LABEL_27:
      v35 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v35);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v36, v37);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v38, MEMORY[0x1E69E6158]);
      goto LABEL_28;
    case 6:
      v39 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_21_10(v39, v40);
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v42, v43);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v44, &type metadata for BackingValue);
LABEL_28:
      swift_willThrow();

      break;
    default:

      v18 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_50_3(v18, v19);
      break;
  }

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_228();
}

void sub_1B24B01A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, uint64_t a17, char a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_205();
  a29 = v34;
  a30 = v35;
  v74 = v36;
  OUTLINED_FUNCTION_105_1();
  v75 = v37;
  if (*(v37 + 16))
  {
    v38 = (v37 + 32);
    v39 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v39, v40, v41);
    OUTLINED_FUNCTION_112_0();
    a20 = v42;
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v76 = v43;
    v77 = v44;
    OUTLINED_FUNCTION_203();
    while (1)
    {
      v45 = *v38++;
      v31 = 0xED0000746375646FLL;
      switch(v45)
      {
        case 1:
          OUTLINED_FUNCTION_161_0();
          v31 = v77;
          break;
        case 2:
          OUTLINED_FUNCTION_233();
          v31 = a14;
          break;
        case 3:
          break;
        case 4:
          OUTLINED_FUNCTION_202();
          OUTLINED_FUNCTION_304();
          break;
        case 5:
          OUTLINED_FUNCTION_161_0();
          v31 = a15;
          break;
        case 6:
          OUTLINED_FUNCTION_161_0();
          v31 = a20;
          break;
        case 7:
          OUTLINED_FUNCTION_234();
          break;
        case 8:
          v31 = 0xE400000000000000;
          break;
        default:
          OUTLINED_FUNCTION_161_0();
          v31 = v76;
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v46)
      {
        if (!*(v30 + 16))
        {

LABEL_18:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_19;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_196();
        if ((v33 & 1) == 0)
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_101_1();
        v31 = *v47;
        v32 = *(v47 + 8);
        v33 = *(v47 + 16);
        v48 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v48, v49, v50);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_19:
      v51 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v51, v52, v53);
      OUTLINED_FUNCTION_143_0();
      if (v46)
      {
        goto LABEL_23;
      }
    }
  }

  v54 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v54, v55, v56);
LABEL_23:
  switch(v33)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_25;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v70 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v70);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v71, v72);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v73, &type metadata for BackingValue);
      goto LABEL_29;
    default:

LABEL_25:
      v57 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v57, v58, v59);
      a16 = v31;
      a17 = v32;
      a18 = v33;
      v60 = NSDecimal.init(_:)(&a16);
      if ((v62 & 0x100000000) != 0)
      {
        type metadata accessor for Decimal(0);
        v64 = v63;
        v65 = OUTLINED_FUNCTION_103_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v65);
        OUTLINED_FUNCTION_0_29();
        sub_1B248D0F8(v66, v67);
        v68 = OUTLINED_FUNCTION_4_6();
        *v69 = v75;
        v69[1] = v64;
        OUTLINED_FUNCTION_24_7(v68, v69);
LABEL_29:
        swift_willThrow();
      }

      else
      {
        *v74 = v60;
        *(v74 + 8) = v61;
        *(v74 + 16) = v62;
      }

      OUTLINED_FUNCTION_204();
      return;
  }
}

void sub_1B24B0474()
{
  OUTLINED_FUNCTION_25_7();
  v46 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_6();
  v47 = v7;
  v8 = *(v0 + 16);
  if (v8)
  {
    v9 = (v0 + 32);
    v10 = OUTLINED_FUNCTION_34();
    sub_1B24472B8(v10, v11, v4);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_294();
    v12 = v1;
    v13 = v4;
    while (1)
    {
      v14 = *v9++;
      switch(v14)
      {
        case 2:
          OUTLINED_FUNCTION_233();
          break;
        case 3:
        case 8:
          break;
        case 4:
          OUTLINED_FUNCTION_202();
          OUTLINED_FUNCTION_304();
          break;
        case 7:
          OUTLINED_FUNCTION_234();
          break;
        default:
          OUTLINED_FUNCTION_161_0();
          break;
      }

      OUTLINED_FUNCTION_290();
      if (v15)
      {
        if (!*(v12 + 16))
        {

LABEL_14:
          v1 = 0;
          v4 = 6;
          goto LABEL_15;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_249();
        if ((v13 & 1) == 0)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_189();
        v1 = *v16;
        v4 = *(v16 + 16);
        v17 = OUTLINED_FUNCTION_34();
        sub_1B24472B8(v17, v18, v4);
      }

      else
      {

        v1 = 0;
        v4 = 6;
      }

LABEL_15:
      v19 = OUTLINED_FUNCTION_167_0();
      sub_1B24C52B4(v19, v20, v21);
      v12 = v1;
      v13 = v4;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }
  }

  v22 = OUTLINED_FUNCTION_34();
  sub_1B24472B8(v22, v23, v4);
LABEL_18:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_20;
    case 4:
    case 5:

LABEL_20:
      v24 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_2_14(v24, v25, v4);
      v26 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v26, v27, v4);
      goto LABEL_21;
    case 6:
      v39 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_21_10(v39, v40);
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v42, v43);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v44, &type metadata for BackingValue);
      goto LABEL_22;
    default:

      v34 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_50_3(v34, v35);
      OUTLINED_FUNCTION_34();
      sub_1B256D37C();
      v36 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v36, v37, 0);
      v38 = sub_1B256D3CC();
      OUTLINED_FUNCTION_238(v38);
      if (v15)
      {
        sub_1B243E88C(v47, &qword_1EB7D1770);
LABEL_21:
        v28 = sub_1B256D3CC();
        v29 = OUTLINED_FUNCTION_89();
        __swift_instantiateConcreteTypeFromMangledNameV2(v29);
        OUTLINED_FUNCTION_1_24();
        OUTLINED_FUNCTION_9_9();
        sub_1B248D0F8(v30, v31);
        v32 = OUTLINED_FUNCTION_4_6();
        *v33 = v0;
        v33[1] = v28;
        OUTLINED_FUNCTION_24_7(v32, v33);
LABEL_22:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_57_1();
        (*(v45 + 32))(v46, v47, v1);
      }

      OUTLINED_FUNCTION_24_6();
      return;
  }
}

uint64_t sub_1B24B083C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v9 = v6;
    v10 = v5;
    v11 = v4;
    while (1)
    {
      v12 = *v8++;
      sub_1B24BB0F0(v12);
      if (v11 == 5)
      {
        break;
      }

      v6 = 0;
      v5 = 0;
      v4 = 6;
LABEL_11:
      sub_1B24C52B4(v9, v10, v11);
      v9 = v6;
      v10 = v5;
      v11 = v4;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    if (*(v9 + 16))
    {
      v13 = sub_1B2455488();
      v15 = v14;

      if (v15)
      {
        v16 = *(v9 + 56) + 24 * v13;
        v6 = *v16;
        v5 = *(v16 + 8);
        v4 = *(v16 + 16);
        sub_1B24472B8(*v16, v5, v4);
LABEL_10:
        v11 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v6 = 0;
    v5 = 0;
    v4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v4)
  {
    case 1:
      sub_1B24472E0(v6, v5, 1);
      sub_1B24472E0(0, 0, 6);
      v20 = v6;
      v21 = v5;
      v22 = 1;
      goto LABEL_20;
    case 2:
      sub_1B24472E0(v6, v5, 2);
      sub_1B24472E0(0, 0, 6);
      v20 = v6;
      v21 = v5;
      v22 = 2;
      goto LABEL_20;
    case 3:
      sub_1B24472E0(v6, v5, 3);
      sub_1B24472E0(0, 0, 6);
      v20 = v6;
      v21 = v5;
      v22 = 3;
LABEL_20:
      sub_1B24C52B4(v20, v21, v22);
      goto LABEL_23;
    case 4:
      v17 = v6;
      v18 = v5;
      v19 = 4;
      goto LABEL_22;
    case 5:
      v17 = v6;
      v18 = v5;
      v19 = 5;
LABEL_22:
      sub_1B24472E0(v17, v18, v19);
      sub_1B24472E0(0, 0, 6);
LABEL_23:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      v23 = MEMORY[0x1E69E6158];
      *v24 = a1;
      *(v24 + 8) = v23;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 1;
      goto LABEL_24;
    case 6:
      sub_1B24472E0(v6, v5, 6);
      sub_1B24472E0(0, 0, 6);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v26 = a1;
      *(v26 + 8) = &type metadata for BackingValue;
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
LABEL_24:
      swift_willThrow();

      break;
    default:

      sub_1B24472E0(v6, v5, 0);
      sub_1B24472E0(0, 0, 6);
      break;
  }

  return v6;
}

unsigned __int8 *sub_1B24B0BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v10 = v7;
    v11 = v6;
    v12 = v5;
    while (1)
    {
      v13 = *v9++;
      sub_1B24BB0F0(v13);
      if (v12 == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v5 = 6;
LABEL_11:
      sub_1B24C52B4(v10, v11, v12);
      v10 = v7;
      v11 = v6;
      v12 = v5;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v14 = sub_1B2455488();
      v16 = v15;

      if (v16)
      {
        v17 = *(v10 + 56) + 24 * v14;
        v7 = *v17;
        v6 = *(v17 + 8);
        v5 = *(v17 + 16);
        sub_1B24472B8(*v17, v6, v5);
LABEL_10:
        v12 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 0;
    v6 = 0;
    v5 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v5)
  {
    case 1:
      sub_1B24472E0(v7, v6, 1);
      sub_1B24472E0(0, 0, 6);
      v22 = v7;
      v23 = v6;
      v24 = 1;
      goto LABEL_21;
    case 2:
      sub_1B24472E0(v7, v6, 2);
      sub_1B24472E0(0, 0, 6);
      v22 = v7;
      v23 = v6;
      v24 = 2;
      goto LABEL_21;
    case 3:
      sub_1B24472E0(v7, v6, 3);
      sub_1B24472E0(0, 0, 6);
      v22 = v7;
      v23 = v6;
      v24 = 3;
LABEL_21:
      sub_1B24C52B4(v22, v23, v24);
      goto LABEL_24;
    case 4:
      v19 = v7;
      v20 = v6;
      v21 = 4;
      goto LABEL_23;
    case 5:
      v19 = v7;
      v20 = v6;
      v21 = 5;
LABEL_23:
      sub_1B24472E0(v19, v20, v21);
      sub_1B24472E0(0, 0, 6);
      goto LABEL_24;
    case 6:
      sub_1B24472E0(v7, v6, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v26 = v32;
      *(v26 + 8) = &type metadata for BackingValue;
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      goto LABEL_25;
    default:

      sub_1B24472E0(v7, v6, 0);
      sub_1B24472E0(0, 0, 6);
      result = Product.SubscriptionPeriod.init(from8601String:)(v7, v6, v30);
      if (v29)
      {

LABEL_24:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
        sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
        swift_allocError();
        *v25 = v32;
        *(v25 + 8) = &type metadata for Product.SubscriptionPeriod;
        *(v25 + 16) = 0;
        *(v25 + 24) = 0;
        *(v25 + 32) = 1;
LABEL_25:
        swift_willThrow();
      }

      else
      {
        v27 = v31;
        *a5 = v30[0];
        *(a5 + 8) = v27;
      }

      return result;
  }
}

uint64_t sub_1B24B0F8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v9 = v6;
    v10 = v5;
    v11 = v4;
    while (1)
    {
      v12 = *v8++;
      sub_1B24BB0F0(v12);
      if (v11 == 5)
      {
        break;
      }

      v6 = 0;
      v5 = 0;
      v4 = 6;
LABEL_11:
      sub_1B24C52B4(v9, v10, v11);
      v9 = v6;
      v10 = v5;
      v11 = v4;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    if (*(v9 + 16))
    {
      v13 = sub_1B2455488();
      v15 = v14;

      if (v15)
      {
        v16 = *(v9 + 56) + 24 * v13;
        v6 = *v16;
        v5 = *(v16 + 8);
        v4 = *(v16 + 16);
        sub_1B24472B8(*v16, v5, v4);
LABEL_10:
        v11 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v6 = 0;
    v5 = 0;
    v4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      sub_1B24472E0(v6, v5, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v21 = a1;
      *(v21 + 8) = &type metadata for BackingValue;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      goto LABEL_20;
    default:

LABEL_16:
      sub_1B24472E0(v6, v5, v4);
      sub_1B24472E0(0, 0, 6);
      result = sub_1B24B6FD8(v6, v5, v4);
      if ((v18 & 1) == 0)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      v19 = MEMORY[0x1E69E76D8];
      *v20 = a1;
      *(v20 + 8) = v19;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 1;
LABEL_20:
      swift_willThrow();
  }
}

uint64_t sub_1B24B1270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v10 = v7;
    v11 = v6;
    v12 = v5;
    while (1)
    {
      v13 = *v9++;
      sub_1B24BB0F0(v13);
      if (v12 == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v5 = 6;
LABEL_11:
      sub_1B24C52B4(v10, v11, v12);
      v10 = v7;
      v11 = v6;
      v12 = v5;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v14 = sub_1B2455488();
      v16 = v15;

      if (v16)
      {
        v17 = *(v10 + 56) + 24 * v14;
        v7 = *v17;
        v6 = *(v17 + 8);
        v5 = *(v17 + 16);
        sub_1B24472B8(*v17, v6, v5);
LABEL_10:
        v12 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 0;
    v6 = 0;
    v5 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v5)
  {
    case 1:
      sub_1B24472E0(v7, v6, 1);
      sub_1B24472E0(0, 0, 6);
      v25 = v7;
      v26 = v6;
      v27 = 1;
      goto LABEL_21;
    case 2:
      sub_1B24472E0(v7, v6, 2);
      sub_1B24472E0(0, 0, 6);
      v25 = v7;
      v26 = v6;
      v27 = 2;
      goto LABEL_21;
    case 3:
      sub_1B24472E0(v7, v6, 3);
      sub_1B24472E0(0, 0, 6);
      v25 = v7;
      v26 = v6;
      v27 = 3;
LABEL_21:
      sub_1B24C52B4(v25, v26, v27);
      goto LABEL_24;
    case 4:
      v22 = v7;
      v23 = v6;
      v24 = 4;
      goto LABEL_23;
    case 5:
      v22 = v7;
      v23 = v6;
      v24 = 5;
LABEL_23:
      sub_1B24472E0(v22, v23, v24);
      sub_1B24472E0(0, 0, 6);
      goto LABEL_24;
    case 6:
      sub_1B24472E0(v7, v6, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v30 = a1;
      *(v30 + 8) = &type metadata for BackingValue;
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      goto LABEL_25;
    default:

      sub_1B24472E0(v7, v6, 0);
      sub_1B24472E0(0, 0, 6);
      v18 = sub_1B256D1AC();
      v20 = v19;
      result = sub_1B24C52B4(v7, v6, 0);
      if (v20 >> 60 == 15)
      {
LABEL_24:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
        sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
        swift_allocError();
        v28 = MEMORY[0x1E6969080];
        *v29 = a1;
        *(v29 + 8) = v28;
        *(v29 + 16) = 0;
        *(v29 + 24) = 0;
        *(v29 + 32) = 1;
LABEL_25:
        swift_willThrow();
      }

      else
      {
        *a5 = v18;
        a5[1] = v20;
      }

      return result;
  }
}

uint64_t sub_1B24B163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v28 = &v27 - v10;
  v11 = *(a1 + 16);
  v29 = a1;
  if (v11)
  {
    v12 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v13 = a2;
    v14 = a3;
    v15 = a4;
    while (1)
    {
      v16 = *v12++;
      sub_1B24BB0F0(v16);
      if (v15 == 5)
      {
        break;
      }

      a2 = 0;
      a3 = 0;
      a4 = 6;
LABEL_11:
      sub_1B24C52B4(v13, v14, v15);
      v13 = a2;
      v14 = a3;
      v15 = a4;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    if (*(v13 + 16))
    {
      v17 = sub_1B2455488();
      v19 = v18;

      if (v19)
      {
        v20 = *(v13 + 56) + 24 * v17;
        a2 = *v20;
        a3 = *(v20 + 8);
        a4 = *(v20 + 16);
        sub_1B24472B8(*v20, a3, a4);
LABEL_10:
        v15 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    a2 = 0;
    a3 = 0;
    a4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(a4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 4:
    case 5:

LABEL_16:
      sub_1B24472E0(a2, a3, a4);
      sub_1B24472E0(0, 0, 6);
      sub_1B24C52B4(a2, a3, a4);
      goto LABEL_17;
    case 6:
      sub_1B24472E0(a2, a3, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v26 = v29;
      *(v26 + 8) = &type metadata for BackingValue;
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      goto LABEL_18;
    default:

      sub_1B24472E0(a2, a3, 0);
      sub_1B24472E0(0, 0, 6);
      v24 = v28;
      sub_1B256D37C();
      sub_1B24C52B4(a2, a3, 0);
      v25 = sub_1B256D3CC();
      if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
      {
        return (*(*(v25 - 8) + 32))(v27, v24, v25);
      }

      sub_1B243E88C(v24, &qword_1EB7D1770);
LABEL_17:
      v21 = sub_1B256D3CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v22 = v29;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 1;
LABEL_18:
      swift_willThrow();
  }
}

void sub_1B24B1A34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    v11 = OUTLINED_FUNCTION_11_6();
    sub_1B24472B8(v11, v12, a4);
    v13 = a2;
    v14 = a4;
    while (1)
    {
      v15 = *v10++;
      sub_1B24BB0F0(v15);
      OUTLINED_FUNCTION_290();
      if (v16)
      {
        break;
      }

      a2 = 0;
      a3 = 0;
      a4 = 6;
LABEL_11:
      v20 = OUTLINED_FUNCTION_138_0();
      sub_1B24C52B4(v20, v21, v14);
      v13 = a2;
      v14 = a4;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    if (*(v13 + 16))
    {
      sub_1B2455488();
      OUTLINED_FUNCTION_249();
      if (v14)
      {
        v17 = *(v13 + 56) + 24 * v13;
        a2 = *v17;
        a3 = *(v17 + 8);
        a4 = *(v17 + 16);
        v18 = OUTLINED_FUNCTION_11_6();
        sub_1B24472B8(v18, v19, a4);
LABEL_10:
        v14 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    a2 = 0;
    a3 = 0;
    a4 = 6;
    goto LABEL_10;
  }

  v22 = OUTLINED_FUNCTION_11_6();
  sub_1B24472B8(v22, v23, a4);
LABEL_14:
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_159_0();
      OUTLINED_FUNCTION_8_18(v38, v39, v40);
      OUTLINED_FUNCTION_159_0();
      goto LABEL_20;
    case 2:
      OUTLINED_FUNCTION_162_0();
      OUTLINED_FUNCTION_8_18(v29, v30, v31);
      OUTLINED_FUNCTION_162_0();
      goto LABEL_20;
    case 3:
      OUTLINED_FUNCTION_163_0();
      OUTLINED_FUNCTION_8_18(v35, v36, v37);
      OUTLINED_FUNCTION_163_0();
LABEL_20:
      sub_1B24C52B4(v32, v33, v34);
      goto LABEL_23;
    case 4:
      v26 = OUTLINED_FUNCTION_11_6();
      v28 = 4;
      goto LABEL_22;
    case 5:
      v26 = OUTLINED_FUNCTION_11_6();
      v28 = 5;
LABEL_22:
      OUTLINED_FUNCTION_2_14(v26, v27, v28);
LABEL_23:
      v41 = OUTLINED_FUNCTION_103_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v42, v43);
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_6_17(v44, a5);
      goto LABEL_24;
    case 6:
      v45 = OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_21_10(v45, v46);
      v47 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v47);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v48, v49);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v50, &type metadata for BackingValue);
LABEL_24:
      swift_willThrow();

      break;
    default:

      v24 = OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_50_3(v24, v25);
      *a6 = a2;
      a6[1] = a3;
      break;
  }

  OUTLINED_FUNCTION_190();
}

uint64_t sub_1B24B1C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v10 = v7;
    v11 = v6;
    v12 = v5;
    while (1)
    {
      v13 = *v9++;
      sub_1B24BB0F0(v13);
      if (v12 == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v5 = 6;
LABEL_11:
      sub_1B24C52B4(v10, v11, v12);
      v10 = v7;
      v11 = v6;
      v12 = v5;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v14 = sub_1B2455488();
      v16 = v15;

      if (v16)
      {
        v17 = *(v10 + 56) + 24 * v14;
        v7 = *v17;
        v6 = *(v17 + 8);
        v5 = *(v17 + 16);
        sub_1B24472B8(*v17, v6, v5);
LABEL_10:
        v12 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 0;
    v6 = 0;
    v5 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      sub_1B24472E0(v7, v6, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v24 = v28;
      *(v24 + 8) = &type metadata for BackingValue;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      goto LABEL_20;
    default:

LABEL_16:
      sub_1B24472E0(v7, v6, v5);
      sub_1B24472E0(0, 0, 6);
      v26[0] = v7;
      v26[1] = v6;
      v27 = v5;
      result = NSDecimal.init(_:)(v26);
      if ((v20 & 0x100000000) != 0)
      {
        type metadata accessor for Decimal(0);
        v22 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
        sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
        swift_allocError();
        *v23 = v28;
        *(v23 + 8) = v22;
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        *(v23 + 32) = 1;
LABEL_20:
        swift_willThrow();
      }

      else
      {
        *a5 = result;
        *(a5 + 8) = v19;
        *(a5 + 16) = v20;
      }

      return result;
  }
}

uint64_t sub_1B24B1F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v28 = sub_1B256D45C();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v12 = a2;
    v13 = a3;
    v14 = a4;
    while (1)
    {
      v15 = *v11++;
      sub_1B24BB0F0(v15);
      if (v14 == 5)
      {
        break;
      }

      a2 = 0;
      a3 = 0;
      a4 = 6;
LABEL_11:
      sub_1B24C52B4(v12, v13, v14);
      v12 = a2;
      v13 = a3;
      v14 = a4;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    if (*(v12 + 16))
    {
      v16 = sub_1B2455488();
      v18 = v17;

      if (v18)
      {
        v19 = *(v12 + 56) + 24 * v16;
        a2 = *v19;
        a3 = *(v19 + 8);
        a4 = *(v19 + 16);
        sub_1B24472B8(*v19, a3, a4);
LABEL_10:
        v14 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    a2 = 0;
    a3 = 0;
    a4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(a4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 4:
    case 5:

LABEL_16:
      sub_1B24472E0(a2, a3, a4);
      sub_1B24472E0(0, 0, 6);
      sub_1B24C52B4(a2, a3, a4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      v20 = v28;
      *v21 = a1;
      *(v21 + 8) = v20;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 1;
      goto LABEL_17;
    case 6:
      sub_1B24472E0(a2, a3, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v24 = a1;
      *(v24 + 8) = &type metadata for BackingValue;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
LABEL_17:
      swift_willThrow();

      break;
    default:

      sub_1B24472E0(a2, a3, 0);
      sub_1B24472E0(0, 0, 6);
      v23 = v25;
      sub_1B256D44C();
      result = (*(v26 + 32))(v27, v23, v28);
      break;
  }

  return result;
}

uint64_t sub_1B24B2334(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v24 = a1;
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v9 = v6;
    v10 = v5;
    v11 = v4;
    while (1)
    {
      v12 = *v8++;
      sub_1B24BB0F0(v12);
      if (v11 == 5)
      {
        break;
      }

      v6 = 0;
      v5 = 0;
      v4 = 6;
LABEL_11:
      sub_1B24C52B4(v9, v10, v11);
      v9 = v6;
      v10 = v5;
      v11 = v4;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    if (*(v9 + 16))
    {
      v13 = sub_1B2455488();
      v15 = v14;

      if (v15)
      {
        v16 = *(v9 + 56) + 24 * v13;
        v6 = *v16;
        v5 = *(v16 + 8);
        v4 = *(v16 + 16);
        sub_1B24472B8(*v16, v5, v4);
LABEL_10:
        v11 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v6 = 0;
    v5 = 0;
    v4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      sub_1B24472E0(v6, v5, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v20 = v24;
      *(v20 + 8) = &type metadata for BackingValue;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      goto LABEL_20;
    default:

LABEL_16:
      sub_1B24472E0(v6, v5, v4);
      sub_1B24472E0(0, 0, 6);
      v22[0] = v6;
      v22[1] = v5;
      v23 = v4;
      v17 = Bool.init(_:)(v22);
      if (v17 != 2)
      {
        return v17 & 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      v18 = MEMORY[0x1E69E6370];
      *v19 = v24;
      *(v19 + 8) = v18;
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 1;
LABEL_20:
      swift_willThrow();

      return v17 & 1;
  }
}

void *sub_1B24B2624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  v25 = a1;
  if (v8)
  {
    v9 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v10 = v7;
    v11 = v6;
    v12 = v5;
    while (1)
    {
      v13 = *v9++;
      sub_1B24BB0F0(v13);
      if (v12 == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v5 = 6;
LABEL_11:
      sub_1B24C52B4(v10, v11, v12);
      v10 = v7;
      v11 = v6;
      v12 = v5;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v14 = sub_1B2455488();
      v16 = v15;

      if (v16)
      {
        v17 = *(v10 + 56) + 24 * v14;
        v7 = *v17;
        v6 = *(v17 + 8);
        v5 = *(v17 + 16);
        sub_1B24472B8(*v17, v6, v5);
LABEL_10:
        v12 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 0;
    v6 = 0;
    v5 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      sub_1B24472E0(v7, v6, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v20 = v25;
      *(v20 + 8) = &type metadata for BackingValue;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      goto LABEL_20;
    default:

LABEL_16:
      sub_1B24472E0(v7, v6, v5);
      sub_1B24472E0(0, 0, 6);
      v22[0] = v7;
      v22[1] = v6;
      LOBYTE(v22[2]) = v5;
      sub_1B2499E2C();
      memcpy(__dst, __src, 0x98uLL);
      if (sub_1B249EA84(__dst) != 1)
      {
        return memcpy(a5, __src, 0x98uLL);
      }

      memcpy(v22, __src, sizeof(v22));
      sub_1B243E88C(v22, &qword_1EB7D17A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798);
      swift_allocError();
      *v18 = v25;
      *(v18 + 8) = &type metadata for Transaction.AdvancedCommerceInfo;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = 1;
LABEL_20:
      swift_willThrow();
  }
}

void sub_1B24B2960(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    v12 = OUTLINED_FUNCTION_85_0();
    sub_1B24472B8(v12, v13, v14);
    v15 = a2;
    v16 = a3;
    v17 = a4;
    while (1)
    {
      v18 = *v11++;
      sub_1B24BB0F0(v18);
      v20 = v19;
      OUTLINED_FUNCTION_197();
      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_310();
      a4 = 6;
LABEL_11:
      sub_1B24C52B4(v15, v16, v17);
      v15 = a2;
      v16 = v20;
      v17 = a4;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    if (*(v15 + 16))
    {
      a2 = v15;
      sub_1B2455488();
      OUTLINED_FUNCTION_285();
      if (v17)
      {
        v22 = *(v15 + 56) + 24 * v15;
        a2 = *v22;
        v20 = *(v22 + 8);
        a4 = *(v22 + 16);
        v23 = OUTLINED_FUNCTION_85_0();
        sub_1B24472B8(v23, v24, v25);
LABEL_10:
        v17 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_310();
    a4 = 6;
    goto LABEL_10;
  }

  v26 = OUTLINED_FUNCTION_85_0();
  sub_1B24472B8(v26, v27, v28);
LABEL_14:
  switch(a4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      v37 = OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_21_10(v37, v38);
      v39 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v39);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v40, v41);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v42, &type metadata for BackingValue);
      goto LABEL_20;
    default:

LABEL_16:
      v29 = OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_2_14(v29, v30, v31);
      OUTLINED_FUNCTION_103_0();
      sub_1B24B6BE8();
      if ((v32 & 1) == 0)
      {
        goto LABEL_21;
      }

      v33 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v34, v35);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v36, a7);
LABEL_20:
      swift_willThrow();

LABEL_21:
      OUTLINED_FUNCTION_190();
      return;
  }
}

void sub_1B24B2B78()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_144_0();
  if (v3)
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_54_2();
    sub_1B24472B8(v6, v7, v8);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_192();
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          OUTLINED_FUNCTION_267();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_268();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v10)
      {
        if (!*(v0 + 16))
        {

LABEL_19:
          OUTLINED_FUNCTION_86();
          goto LABEL_20;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_195();
        if ((v2 & 1) == 0)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_58_1();
        v1 = *(v11 + 8);
        v2 = *(v11 + 16);
        v12 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v12, v13, v14);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_20:
      v15 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v15, v16, v17);
      OUTLINED_FUNCTION_100_1();
      if (v10)
      {
        goto LABEL_24;
      }
    }
  }

  v18 = OUTLINED_FUNCTION_54_2();
  sub_1B24472B8(v18, v19, v20);
LABEL_24:
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_26;
    case 6:
      v30 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v30, v31);
      v32 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v33, v34);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v35, &type metadata for BackingValue);
      goto LABEL_30;
    default:

LABEL_26:
      v21 = OUTLINED_FUNCTION_54_2();
      v24 = OUTLINED_FUNCTION_3_22(v21, v22, v23);
      sub_1B24B6FD8(v24, v1, v2);
      if ((v25 & 1) == 0)
      {
        goto LABEL_31;
      }

      v26 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v26);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v27, v28);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v29, MEMORY[0x1E69E76D8]);
LABEL_30:
      swift_willThrow();

LABEL_31:
      OUTLINED_FUNCTION_204();
      return;
  }
}

void sub_1B24B2E84()
{
  OUTLINED_FUNCTION_205();
  v3 = v2;
  OUTLINED_FUNCTION_262();
  if (v1)
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v6, v7, v3);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_246();
    v8 = v3;
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v10)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
LABEL_21:
      v14 = OUTLINED_FUNCTION_29_1();
      sub_1B24C52B4(v14, v15, v8);
      OUTLINED_FUNCTION_246();
      v8 = v3;
      if (!--v1)
      {
        goto LABEL_24;
      }
    }

    if (*(v0 + 16))
    {
      sub_1B2455488();
      OUTLINED_FUNCTION_286();
      if (v3)
      {
        OUTLINED_FUNCTION_189();
        v3 = *(v11 + 16);
        v12 = OUTLINED_FUNCTION_25_1();
        sub_1B24472B8(v12, v13, v3);
LABEL_20:
        v8 = 5;
        goto LABEL_21;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_222();
    goto LABEL_20;
  }

  v16 = OUTLINED_FUNCTION_25_1();
  sub_1B24472B8(v16, v17, v3);
LABEL_24:
  switch(v3)
  {
    case 1:
      v32 = OUTLINED_FUNCTION_107_1();
      v26 = OUTLINED_FUNCTION_4_18(v32, v33, v34);
      v28 = 1;
      goto LABEL_30;
    case 2:
      v23 = OUTLINED_FUNCTION_106_1();
      v26 = OUTLINED_FUNCTION_4_18(v23, v24, v25);
      v28 = 2;
      goto LABEL_30;
    case 3:
      v29 = OUTLINED_FUNCTION_108_1();
      v26 = OUTLINED_FUNCTION_4_18(v29, v30, v31);
      v28 = 3;
LABEL_30:
      sub_1B24C52B4(v26, v27, v28);
      goto LABEL_33;
    case 4:
      v20 = OUTLINED_FUNCTION_25_1();
      v22 = 4;
      goto LABEL_32;
    case 5:
      v20 = OUTLINED_FUNCTION_25_1();
      v22 = 5;
LABEL_32:
      OUTLINED_FUNCTION_2_14(v20, v21, v22);
LABEL_33:
      v35 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v35);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v36, v37);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v38, MEMORY[0x1E69E6158]);
      goto LABEL_34;
    case 6:
      v39 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_21_10(v39, v40);
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v42, v43);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v44, &type metadata for BackingValue);
LABEL_34:
      swift_willThrow();

      break;
    default:

      v18 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_50_3(v18, v19);
      break;
  }

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_204();
}

void sub_1B24B31F4()
{
  OUTLINED_FUNCTION_320();
  v48 = v2;
  v4 = v3;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = (v1 + 32);
    v7 = OUTLINED_FUNCTION_30_0();
    sub_1B24472B8(v7, v8, v4);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_252();
    v9 = v4;
    while (1)
    {
      v10 = *v6++;
      switch(v10)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          OUTLINED_FUNCTION_267();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_268();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v11)
      {
        break;
      }

      v4 = 6;
LABEL_21:
      v15 = OUTLINED_FUNCTION_153();
      sub_1B24C52B4(v15, v16, v9);
      OUTLINED_FUNCTION_252();
      v9 = v4;
      if (!--v5)
      {
        goto LABEL_24;
      }
    }

    if (*(v0 + 16))
    {
      sub_1B2455488();
      OUTLINED_FUNCTION_287();
      if (v4)
      {
        OUTLINED_FUNCTION_173();
        v4 = *(v12 + 16);
        v13 = OUTLINED_FUNCTION_30_0();
        sub_1B24472B8(v13, v14, v4);
LABEL_20:
        v9 = 5;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v4 = 6;
    goto LABEL_20;
  }

  v17 = OUTLINED_FUNCTION_30_0();
  sub_1B24472B8(v17, v18, v4);
LABEL_24:
  switch(v4)
  {
    case 1:
      v36 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v36, v37, 1);
      OUTLINED_FUNCTION_159_0();
      goto LABEL_31;
    case 2:
      v29 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v29, v30, 2);
      OUTLINED_FUNCTION_162_0();
      goto LABEL_31;
    case 3:
      v34 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v34, v35, 3);
      OUTLINED_FUNCTION_163_0();
LABEL_31:
      sub_1B24C52B4(v31, v32, v33);
      goto LABEL_34;
    case 4:
      v26 = OUTLINED_FUNCTION_30_0();
      v28 = 4;
      goto LABEL_33;
    case 5:
      v26 = OUTLINED_FUNCTION_30_0();
      v28 = 5;
LABEL_33:
      OUTLINED_FUNCTION_2_14(v26, v27, v28);
      goto LABEL_34;
    case 6:
      v42 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_21_10(v42, v43);
      v44 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v44);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v45, v46);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v47, &type metadata for BackingValue);
      goto LABEL_35;
    default:

      v19 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v19, v20, 0);
      v21 = sub_1B256D1AC();
      v23 = v22;
      v24 = OUTLINED_FUNCTION_30_0();
      sub_1B24C52B4(v24, v25, 0);
      if (v23 >> 60 == 15)
      {
LABEL_34:
        v38 = OUTLINED_FUNCTION_116_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v38);
        OUTLINED_FUNCTION_0_29();
        sub_1B248D0F8(v39, v40);
        OUTLINED_FUNCTION_62_1();
        OUTLINED_FUNCTION_6_17(v41, MEMORY[0x1E6969080]);
LABEL_35:
        swift_willThrow();
      }

      else
      {
        *v48 = v21;
        v48[1] = v23;
      }

      OUTLINED_FUNCTION_319();
      return;
  }
}

void sub_1B24B35B4()
{
  OUTLINED_FUNCTION_25_7();
  v49 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_253();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_6();
  v50 = v8;
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = (v0 + 32);
    v11 = OUTLINED_FUNCTION_84_1();
    sub_1B24472B8(v11, v12, v13);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_296();
    v14 = v5;
    while (1)
    {
      v15 = *v10++;
      switch(v15)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_290();
      if (v16)
      {
        break;
      }

      OUTLINED_FUNCTION_215();
LABEL_21:
      v21 = OUTLINED_FUNCTION_138_0();
      sub_1B24C52B4(v21, v22, v14);
      OUTLINED_FUNCTION_296();
      v14 = v5;
      if (!--v9)
      {
        goto LABEL_24;
      }
    }

    if (*(v2 + 16))
    {
      v1 = v2;
      sub_1B2455488();
      OUTLINED_FUNCTION_249();
      if (v14)
      {
        OUTLINED_FUNCTION_189();
        v1 = *v17;
        v5 = *(v17 + 16);
        v18 = OUTLINED_FUNCTION_84_1();
        sub_1B24472B8(v18, v19, v20);
LABEL_20:
        v14 = 5;
        goto LABEL_21;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_215();
    goto LABEL_20;
  }

  v23 = OUTLINED_FUNCTION_84_1();
  sub_1B24472B8(v23, v24, v25);
LABEL_24:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_26;
    case 4:
    case 5:

LABEL_26:
      v26 = OUTLINED_FUNCTION_84_1();
      OUTLINED_FUNCTION_2_14(v26, v27, v28);
      v29 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v29, v30, v5);
      goto LABEL_27;
    case 6:
      v42 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_21_10(v42, v43);
      v44 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v44);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v45, v46);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v47, &type metadata for BackingValue);
      goto LABEL_28;
    default:

      v37 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_50_3(v37, v38);
      OUTLINED_FUNCTION_34();
      sub_1B256D37C();
      v39 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v39, v40, 0);
      v41 = sub_1B256D3CC();
      OUTLINED_FUNCTION_238(v41);
      if (v16)
      {
        sub_1B243E88C(v50, &qword_1EB7D1770);
LABEL_27:
        v31 = sub_1B256D3CC();
        v32 = OUTLINED_FUNCTION_89();
        __swift_instantiateConcreteTypeFromMangledNameV2(v32);
        OUTLINED_FUNCTION_1_24();
        OUTLINED_FUNCTION_9_9();
        sub_1B248D0F8(v33, v34);
        v35 = OUTLINED_FUNCTION_4_6();
        *v36 = v0;
        v36[1] = v31;
        OUTLINED_FUNCTION_24_7(v35, v36);
LABEL_28:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_57_1();
        (*(v48 + 32))(v49, v50, v1);
      }

      OUTLINED_FUNCTION_24_6();
      return;
  }
}

void sub_1B24B39C0()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_144_0();
  if (v2)
  {
    v4 = (v3 + 32);
    v5 = OUTLINED_FUNCTION_54_2();
    sub_1B24472B8(v5, v6, v7);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_192();
    while (1)
    {
      v8 = *v4++;
      switch(v8)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          OUTLINED_FUNCTION_267();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_268();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v9)
      {
        if (!*(v0 + 16))
        {

LABEL_19:
          OUTLINED_FUNCTION_86();
          goto LABEL_20;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_195();
        if ((v1 & 1) == 0)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_58_1();
        v1 = *(v10 + 16);
        v11 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v11, v12, v13);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_20:
      v14 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v14, v15, v16);
      OUTLINED_FUNCTION_100_1();
      if (v9)
      {
        goto LABEL_24;
      }
    }
  }

  v17 = OUTLINED_FUNCTION_54_2();
  sub_1B24472B8(v17, v18, v19);
LABEL_24:
  switch(v1)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_26;
    case 6:
      v28 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v28, v29);
      v30 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v30);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v31, v32);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v33, &type metadata for BackingValue);
      goto LABEL_30;
    default:

LABEL_26:
      v20 = OUTLINED_FUNCTION_54_2();
      OUTLINED_FUNCTION_2_14(v20, v21, v22);
      OUTLINED_FUNCTION_269();
      OUTLINED_FUNCTION_29_1();
      sub_1B24B6BE8();
      if ((v23 & 1) == 0)
      {
        goto LABEL_31;
      }

      v24 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v24);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v25, v26);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v27, MEMORY[0x1E69E7360]);
LABEL_30:
      swift_willThrow();

LABEL_31:
      OUTLINED_FUNCTION_204();
      return;
  }
}

void sub_1B24B3CD4()
{
  OUTLINED_FUNCTION_105_1();
  if (*(v3 + 16))
  {
    v4 = (v3 + 32);
    v5 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v5, v6, v7);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_119_0();
    while (1)
    {
      v8 = *v4++;
      switch(v8)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_20;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_20:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          break;
        case 23:
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
        case 26:
        case 27:
          OUTLINED_FUNCTION_156_0();
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v9)
      {
        if (!*(v0 + 16))
        {

LABEL_37:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_38;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_185();
        if ((v1 & 1) == 0)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_38:
      OUTLINED_FUNCTION_14_12();
      if (v9)
      {
        goto LABEL_42;
      }
    }
  }

  v10 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v10, v11, v12);
LABEL_42:
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_44;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v22 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v22);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v23, v24);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v25, &type metadata for BackingValue);
      goto LABEL_48;
    default:

LABEL_44:
      v13 = OUTLINED_FUNCTION_29_7();
      v16 = OUTLINED_FUNCTION_8_18(v13, v14, v15);
      sub_1B24B6FD8(v16, v1, v2);
      if ((v17 & 1) == 0)
      {
        goto LABEL_49;
      }

      v18 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v18);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v19, v20);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v21, MEMORY[0x1E69E76D8]);
LABEL_48:
      swift_willThrow();

LABEL_49:
      OUTLINED_FUNCTION_240();
      return;
  }
}

void sub_1B24B4020()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_144_0();
  if (v3)
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_54_2();
    sub_1B24472B8(v6, v7, v8);
    OUTLINED_FUNCTION_193("webOrderLineItemId");
    OUTLINED_FUNCTION_307(v9 - 32);
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_151_0();
    OUTLINED_FUNCTION_192();
    while (1)
    {
      v10 = *v5++;
      switch(v10)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v11)
      {
        if (!*(v0 + 16))
        {

LABEL_26:
          OUTLINED_FUNCTION_86();
          goto LABEL_27;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_195();
        if ((v2 & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_58_1();
        v1 = *(v12 + 8);
        v2 = *(v12 + 16);
        v13 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v13, v14, v15);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_27:
      v16 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v16, v17, v18);
      OUTLINED_FUNCTION_100_1();
      if (v11)
      {
        goto LABEL_31;
      }
    }
  }

  v19 = OUTLINED_FUNCTION_54_2();
  sub_1B24472B8(v19, v20, v21);
LABEL_31:
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_33;
    case 6:
      v31 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v31, v32);
      v33 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v34, v35);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v36, &type metadata for BackingValue);
      goto LABEL_37;
    default:

LABEL_33:
      v22 = OUTLINED_FUNCTION_54_2();
      v25 = OUTLINED_FUNCTION_3_22(v22, v23, v24);
      sub_1B24B6FD8(v25, v1, v2);
      if ((v26 & 1) == 0)
      {
        goto LABEL_38;
      }

      v27 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v28, v29);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v30, MEMORY[0x1E69E76D8]);
LABEL_37:
      swift_willThrow();

LABEL_38:
      OUTLINED_FUNCTION_241();
      return;
  }
}

void sub_1B24B43B8()
{
  OUTLINED_FUNCTION_243();
  v3 = v2;
  OUTLINED_FUNCTION_262();
  if (v1)
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v6, v7, v3);
    OUTLINED_FUNCTION_307("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_246();
    v8 = v3;
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_308();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      if (v8 == 5)
      {
        if (!*(v0 + 16))
        {

LABEL_26:
          OUTLINED_FUNCTION_227();
          v3 = 6;
          goto LABEL_27;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_286();
        if ((v8 & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_189();
        v3 = *(v10 + 16);
        v11 = OUTLINED_FUNCTION_25_1();
        sub_1B24472B8(v11, v12, v3);
      }

      else
      {

        OUTLINED_FUNCTION_227();
        v3 = 6;
      }

LABEL_27:
      v13 = OUTLINED_FUNCTION_54_2();
      sub_1B24C52B4(v13, v14, v15);
      OUTLINED_FUNCTION_246();
      v8 = v3;
      if (!--v1)
      {
        goto LABEL_30;
      }
    }
  }

  v16 = OUTLINED_FUNCTION_25_1();
  sub_1B24472B8(v16, v17, v3);
LABEL_30:
  switch(v3)
  {
    case 1:
      v32 = OUTLINED_FUNCTION_107_1();
      v26 = OUTLINED_FUNCTION_4_18(v32, v33, v34);
      v28 = 1;
      goto LABEL_36;
    case 2:
      v23 = OUTLINED_FUNCTION_106_1();
      v26 = OUTLINED_FUNCTION_4_18(v23, v24, v25);
      v28 = 2;
      goto LABEL_36;
    case 3:
      v29 = OUTLINED_FUNCTION_108_1();
      v26 = OUTLINED_FUNCTION_4_18(v29, v30, v31);
      v28 = 3;
LABEL_36:
      sub_1B24C52B4(v26, v27, v28);
      goto LABEL_39;
    case 4:
      v20 = OUTLINED_FUNCTION_25_1();
      v22 = 4;
      goto LABEL_38;
    case 5:
      v20 = OUTLINED_FUNCTION_25_1();
      v22 = 5;
LABEL_38:
      OUTLINED_FUNCTION_2_14(v20, v21, v22);
LABEL_39:
      v35 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v35);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v36, v37);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v38, MEMORY[0x1E69E6158]);
      goto LABEL_40;
    case 6:
      v39 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_21_10(v39, v40);
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v42, v43);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v44, &type metadata for BackingValue);
LABEL_40:
      swift_willThrow();

      break;
    default:

      v18 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_50_3(v18, v19);
      break;
  }

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_241();
}

uint64_t sub_1B24B47C0()
{
  OUTLINED_FUNCTION_144_0();
  if (v4)
  {
    v6 = (v5 + 32);
    v7 = OUTLINED_FUNCTION_54_2();
    sub_1B24472B8(v7, v8, v9);
    OUTLINED_FUNCTION_193("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v53 = v10;
    v54 = v11;
    OUTLINED_FUNCTION_51_3();
    v51 = v12;
    v52 = v13;
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_51_3();
    v45 = v14;
    v46 = v15;
    OUTLINED_FUNCTION_112_0();
    v44 = v16;
    OUTLINED_FUNCTION_151_0();
    OUTLINED_FUNCTION_192();
    while (1)
    {
      v17 = *v6++;
      v1 = 0xEF6E656B6F54746ELL;
      switch(v17)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v1 = v44;
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v1 = v45;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v1 = v46;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v1 = v47;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v1 = v48;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v1 = v49;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v1 = v50;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v1 = v51;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v1 = v52;
          break;
        case 12:
          v1 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          v1 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v1 = v53;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
LABEL_19:
          v1 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v1 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v1 = v54;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v1 = v57;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v18)
      {
        if (!*(v0 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_86();
          goto LABEL_31;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_195();
        if ((v3 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_58_1();
        v1 = *v19;
        v2 = *(v19 + 8);
        v3 = *(v19 + 16);
        v20 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v20, v21, v22);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_31:
      v23 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v23, v24, v25);
      OUTLINED_FUNCTION_100_1();
      if (v18)
      {
        goto LABEL_35;
      }
    }
  }

  v26 = OUTLINED_FUNCTION_54_2();
  sub_1B24472B8(v26, v27, v28);
LABEL_35:
  switch(v3)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_37;
    case 6:
      v37 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v37, v38);
      v39 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v39);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v40, v41);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v42, &type metadata for BackingValue);
      goto LABEL_41;
    default:

LABEL_37:
      v29 = OUTLINED_FUNCTION_54_2();
      OUTLINED_FUNCTION_2_14(v29, v30, v31);
      v55[0] = v1;
      v55[1] = v2;
      v56 = v3;
      v32 = Bool.init(_:)(v55);
      if (v32 != 2)
      {
        return v32 & 1;
      }

      v33 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v34, v35);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v36, MEMORY[0x1E69E6370]);
LABEL_41:
      swift_willThrow();

      return v32 & 1;
  }
}

void sub_1B24B4B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  OUTLINED_FUNCTION_243();
  v13 = OUTLINED_FUNCTION_248(v12);
  if (v9)
  {
    v14 = (v13 + 32);
    v15 = OUTLINED_FUNCTION_30_0();
    sub_1B24472B8(v15, v16, v11);
    OUTLINED_FUNCTION_307("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_252();
    v17 = v11;
    while (1)
    {
      v18 = *v14++;
      switch(v18)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v19)
      {
        if (!*(v10 + 16))
        {

LABEL_26:
          OUTLINED_FUNCTION_221();
          goto LABEL_27;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_287();
        if ((v17 & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_173();
        v11 = *(v20 + 16);
        v21 = OUTLINED_FUNCTION_30_0();
        sub_1B24472B8(v21, v22, v11);
      }

      else
      {

        OUTLINED_FUNCTION_221();
      }

LABEL_27:
      v23 = OUTLINED_FUNCTION_29_7();
      sub_1B24C52B4(v23, v24, v25);
      OUTLINED_FUNCTION_252();
      v17 = v11;
      if (!--v9)
      {
        goto LABEL_30;
      }
    }
  }

  v26 = OUTLINED_FUNCTION_30_0();
  sub_1B24472B8(v26, v27, v11);
LABEL_30:
  switch(v11)
  {
    case 1:
      v45 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v45, v46, 1);
      OUTLINED_FUNCTION_159_0();
      goto LABEL_37;
    case 2:
      v38 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v38, v39, 2);
      OUTLINED_FUNCTION_162_0();
      goto LABEL_37;
    case 3:
      v43 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v43, v44, 3);
      OUTLINED_FUNCTION_163_0();
LABEL_37:
      sub_1B24C52B4(v40, v41, v42);
      goto LABEL_40;
    case 4:
      v35 = OUTLINED_FUNCTION_30_0();
      v37 = 4;
      goto LABEL_39;
    case 5:
      v35 = OUTLINED_FUNCTION_30_0();
      v37 = 5;
LABEL_39:
      OUTLINED_FUNCTION_2_14(v35, v36, v37);
      goto LABEL_40;
    case 6:
      v51 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_21_10(v51, v52);
      v53 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v53);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v54, v55);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v56, &type metadata for BackingValue);
      goto LABEL_41;
    default:

      v28 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v28, v29, 0);
      v30 = sub_1B256D1AC();
      v32 = v31;
      v33 = OUTLINED_FUNCTION_30_0();
      sub_1B24C52B4(v33, v34, 0);
      if (v32 >> 60 == 15)
      {
LABEL_40:
        v47 = OUTLINED_FUNCTION_116_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v47);
        OUTLINED_FUNCTION_0_29();
        sub_1B248D0F8(v48, v49);
        OUTLINED_FUNCTION_62_1();
        OUTLINED_FUNCTION_6_17(v50, MEMORY[0x1E6969080]);
LABEL_41:
        swift_willThrow();
      }

      else
      {
        *a9 = v30;
        a9[1] = v32;
      }

      OUTLINED_FUNCTION_241();
      return;
  }
}

void sub_1B24B4F84()
{
  OUTLINED_FUNCTION_25_7();
  v49 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_253();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_6();
  v50 = v8;
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = (v0 + 32);
    v11 = OUTLINED_FUNCTION_84_1();
    sub_1B24472B8(v11, v12, v13);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_296();
    v14 = v5;
    while (1)
    {
      v15 = *v10++;
      switch(v15)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_146_0();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_303();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_211();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_305();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_290();
      if (v16)
      {
        break;
      }

      OUTLINED_FUNCTION_215();
LABEL_28:
      v21 = OUTLINED_FUNCTION_138_0();
      sub_1B24C52B4(v21, v22, v14);
      OUTLINED_FUNCTION_296();
      v14 = v5;
      if (!--v9)
      {
        goto LABEL_31;
      }
    }

    if (*(v2 + 16))
    {
      v1 = v2;
      sub_1B2455488();
      OUTLINED_FUNCTION_249();
      if (v14)
      {
        OUTLINED_FUNCTION_189();
        v1 = *v17;
        v5 = *(v17 + 16);
        v18 = OUTLINED_FUNCTION_84_1();
        sub_1B24472B8(v18, v19, v20);
LABEL_27:
        v14 = 5;
        goto LABEL_28;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_215();
    goto LABEL_27;
  }

  v23 = OUTLINED_FUNCTION_84_1();
  sub_1B24472B8(v23, v24, v25);
LABEL_31:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_33;
    case 4:
    case 5:

LABEL_33:
      v26 = OUTLINED_FUNCTION_84_1();
      OUTLINED_FUNCTION_2_14(v26, v27, v28);
      v29 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v29, v30, v5);
      goto LABEL_34;
    case 6:
      v42 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_21_10(v42, v43);
      v44 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v44);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v45, v46);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v47, &type metadata for BackingValue);
      goto LABEL_35;
    default:

      v37 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_50_3(v37, v38);
      OUTLINED_FUNCTION_34();
      sub_1B256D37C();
      v39 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v39, v40, 0);
      v41 = sub_1B256D3CC();
      OUTLINED_FUNCTION_238(v41);
      if (v16)
      {
        sub_1B243E88C(v50, &qword_1EB7D1770);
LABEL_34:
        v31 = sub_1B256D3CC();
        v32 = OUTLINED_FUNCTION_89();
        __swift_instantiateConcreteTypeFromMangledNameV2(v32);
        OUTLINED_FUNCTION_1_24();
        OUTLINED_FUNCTION_9_9();
        sub_1B248D0F8(v33, v34);
        v35 = OUTLINED_FUNCTION_4_6();
        *v36 = v0;
        v36[1] = v31;
        OUTLINED_FUNCTION_24_7(v35, v36);
LABEL_35:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_57_1();
        (*(v48 + 32))(v49, v50, v1);
      }

      OUTLINED_FUNCTION_24_6();
      return;
  }
}

void sub_1B24B5414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22)
{
  OUTLINED_FUNCTION_243();
  v28 = OUTLINED_FUNCTION_248(v27);
  if (v23)
  {
    v29 = (v28 + 32);
    v30 = OUTLINED_FUNCTION_30_0();
    sub_1B24472B8(v30, v31, v26);
    OUTLINED_FUNCTION_307("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v79 = v32;
    v80 = v33;
    OUTLINED_FUNCTION_51_3();
    v77 = v34;
    v78 = v35;
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_51_3();
    v75 = v36;
    v76 = v37;
    OUTLINED_FUNCTION_112_0();
    v74 = v38;
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_252();
    v39 = v26;
    while (1)
    {
      v40 = *v29++;
      v24 = 0xEF6E656B6F54746ELL;
      switch(v40)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v24 = v74;
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v24 = v75;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v24 = v76;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v24 = a14;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v24 = a15;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v24 = a16;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v24 = a17;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v24 = v77;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v24 = v78;
          break;
        case 12:
          v24 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          v24 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v24 = v79;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
LABEL_19:
          v24 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v24 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v24 = v80;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v24 = a22;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v41)
      {
        if (!*(v25 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_221();
          goto LABEL_31;
        }

        v22 = v25;
        sub_1B2455488();
        OUTLINED_FUNCTION_287();
        if ((v39 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_173();
        v24 = *v42;
        v22 = *(v42 + 8);
        v26 = *(v42 + 16);
        v43 = OUTLINED_FUNCTION_30_0();
        sub_1B24472B8(v43, v44, v26);
      }

      else
      {

        OUTLINED_FUNCTION_221();
      }

LABEL_31:
      v45 = OUTLINED_FUNCTION_29_7();
      sub_1B24C52B4(v45, v46, v47);
      OUTLINED_FUNCTION_252();
      v39 = v26;
      if (!--v23)
      {
        goto LABEL_34;
      }
    }
  }

  v48 = OUTLINED_FUNCTION_30_0();
  sub_1B24472B8(v48, v49, v26);
LABEL_34:
  switch(v26)
  {
    case 1:
      v62 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v62, v63, 1);
      OUTLINED_FUNCTION_159_0();
      goto LABEL_40;
    case 2:
      v55 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v55, v56, 2);
      OUTLINED_FUNCTION_162_0();
      goto LABEL_40;
    case 3:
      v60 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v60, v61, 3);
      OUTLINED_FUNCTION_163_0();
LABEL_40:
      sub_1B24C52B4(v57, v58, v59);
      goto LABEL_43;
    case 4:
      v52 = OUTLINED_FUNCTION_30_0();
      v54 = 4;
      goto LABEL_42;
    case 5:
      v52 = OUTLINED_FUNCTION_30_0();
      v54 = 5;
LABEL_42:
      OUTLINED_FUNCTION_2_14(v52, v53, v54);
LABEL_43:
      v64 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v64);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v65, v66);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v67, &type metadata for AppStore.Environment);
      goto LABEL_44;
    case 6:
      v68 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_21_10(v68, v69);
      v70 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v70);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v71, v72);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v73, &type metadata for BackingValue);
LABEL_44:
      swift_willThrow();

      break;
    default:

      v50 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_50_3(v50, v51);
      *a9 = v24;
      a9[1] = v22;
      break;
  }

  OUTLINED_FUNCTION_241();
}

uint64_t sub_1B24B581C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_105_1();
  v57 = v5;
  if (*(v5 + 16))
  {
    v6 = (v5 + 32);
    v7 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v7, v8, v9);
    OUTLINED_FUNCTION_193("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v66 = v10;
    v67 = v11;
    OUTLINED_FUNCTION_51_3();
    v64 = v12;
    v65 = v13;
    OUTLINED_FUNCTION_172();
    v63 = v14;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v61 = v15;
    v62 = v16;
    OUTLINED_FUNCTION_51_3();
    v59 = v17;
    v60 = v18;
    OUTLINED_FUNCTION_112_0();
    v58 = v19;
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_203();
    while (1)
    {
      v20 = *v6++;
      v2 = 0xEF6E656B6F54746ELL;
      switch(v20)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v2 = v58;
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_146_0();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v2 = v59;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v2 = v60;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v2 = v61;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_303();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v2 = v62;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v2 = 0x80000001B258E170;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v2 = v63;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v2 = v64;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v2 = v65;
          break;
        case 12:
          v2 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_211();
          break;
        case 14:
          v2 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v2 = v66;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_305();
LABEL_19:
          v2 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v2 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v2 = v67;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v2 = v70;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v21)
      {
        if (!*(v1 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_31;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_196();
        if ((v4 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_101_1();
        v2 = *v22;
        v3 = *(v22 + 8);
        v4 = *(v22 + 16);
        v23 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v23, v24, v25);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_31:
      v26 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v26, v27, v28);
      OUTLINED_FUNCTION_143_0();
      if (v21)
      {
        goto LABEL_35;
      }
    }
  }

  v29 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v29, v30, v31);
LABEL_35:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_37;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v51 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v51);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v52, v53);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v54, &type metadata for BackingValue);
      goto LABEL_41;
    default:

LABEL_37:
      v32 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v32, v33, v34);
      v68[0] = v2;
      v68[1] = v3;
      v69 = v4;
      v35 = NSDecimal.init(_:)(v68);
      if ((v37 & 0x100000000) == 0)
      {
        return OUTLINED_FUNCTION_165_0(v35, v36, v37, v38, v39, v40, v41, v42, v55, a1);
      }

      type metadata accessor for Decimal(0);
      v45 = v44;
      v46 = OUTLINED_FUNCTION_103_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v46);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v47, v48);
      v49 = OUTLINED_FUNCTION_4_6();
      *v50 = v57;
      v50[1] = v45;
      OUTLINED_FUNCTION_24_7(v49, v50);
LABEL_41:
      swift_willThrow();
  }
}

void sub_1B24B5BDC()
{
  OUTLINED_FUNCTION_25_7();
  v51 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_253();
  v52 = sub_1B256D45C();
  OUTLINED_FUNCTION_1_1();
  v50 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v49 = v10 - v9;
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = (v0 + 32);
    v13 = OUTLINED_FUNCTION_175();
    sub_1B24472B8(v13, v14, v15);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_149_0();
    v16 = v1;
    v17 = v6;
    v18 = v4;
    while (1)
    {
      v19 = *v12++;
      switch(v19)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v20)
      {
        break;
      }

      v27 = 0;
      v28 = 0;
      v4 = 6;
LABEL_28:
      sub_1B24C52B4(v16, v17, v18);
      v16 = v27;
      v17 = v28;
      v18 = v4;
      if (!--v11)
      {
        goto LABEL_31;
      }
    }

    if (*(v16 + 16))
    {
      sub_1B2455488();
      v22 = v21;

      if (v22)
      {
        OUTLINED_FUNCTION_189();
        v27 = *v23;
        v28 = *(v23 + 8);
        v4 = *(v23 + 16);
        v24 = OUTLINED_FUNCTION_175();
        sub_1B24472B8(v24, v25, v26);
LABEL_27:
        v18 = 5;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v27 = 0;
    v28 = 0;
    v4 = 6;
    goto LABEL_27;
  }

  v29 = OUTLINED_FUNCTION_175();
  sub_1B24472B8(v29, v30, v31);
LABEL_31:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_33;
    case 4:
    case 5:

LABEL_33:
      v32 = OUTLINED_FUNCTION_175();
      OUTLINED_FUNCTION_2_14(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_198();
      sub_1B24C52B4(v35, v36, v4);
      v37 = OUTLINED_FUNCTION_103_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v38, v39);
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_6_17(v40, v52);
      goto LABEL_34;
    case 6:
      v43 = OUTLINED_FUNCTION_198();
      OUTLINED_FUNCTION_21_10(v43, v44);
      v45 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v45);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v46, v47);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v48, &type metadata for BackingValue);
LABEL_34:
      swift_willThrow();

      break;
    default:

      v41 = OUTLINED_FUNCTION_198();
      OUTLINED_FUNCTION_50_3(v41, v42);
      OUTLINED_FUNCTION_198();
      sub_1B256D44C();
      (*(v50 + 32))(v51, v49, v52);
      break;
  }

  OUTLINED_FUNCTION_24_6();
}

void *sub_1B24B605C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_105_1();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v8, v9, v10);
    OUTLINED_FUNCTION_193("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v54 = v11;
    v55 = v12;
    OUTLINED_FUNCTION_51_3();
    v52 = v13;
    v53 = v14;
    OUTLINED_FUNCTION_172();
    v51 = v15;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v49 = v16;
    v50 = v17;
    OUTLINED_FUNCTION_51_3();
    v47 = v18;
    v48 = v19;
    OUTLINED_FUNCTION_112_0();
    v46 = v20;
    OUTLINED_FUNCTION_151_0();
    OUTLINED_FUNCTION_203();
    while (1)
    {
      v21 = *v7++;
      v2 = 0xEF6E656B6F54746ELL;
      switch(v21)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v2 = v46;
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_146_0();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v2 = v47;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v2 = v48;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v2 = v49;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_303();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v2 = v50;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v2 = 0x80000001B258E170;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v2 = v51;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v2 = v52;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v2 = v53;
          break;
        case 12:
          v2 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_211();
          break;
        case 14:
          v2 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v2 = v54;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_305();
LABEL_19:
          v2 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v2 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v2 = v55;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v2 = __src[15];
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v22)
      {
        if (!*(v1 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_31;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_196();
        if ((v4 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_101_1();
        v2 = *v23;
        v3 = *(v23 + 8);
        v4 = *(v23 + 16);
        v24 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v24, v25, v26);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_31:
      v27 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v27, v28, v29);
      OUTLINED_FUNCTION_203();
      if (!--v6)
      {
        goto LABEL_34;
      }
    }
  }

  v30 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v30, v31, v32);
LABEL_34:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_36;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v42, v43);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v44, &type metadata for BackingValue);
      goto LABEL_40;
    default:

LABEL_36:
      v33 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v33, v34, v35);
      v56[0] = v2;
      v56[1] = v3;
      LOBYTE(v56[2]) = v4;
      sub_1B246DCC0(__src);
      if (__src[1])
      {
        return memcpy(a1, __src, 0x68uLL);
      }

      memcpy(v56, __src, sizeof(v56));
      sub_1B243E88C(v56, &unk_1EB7D1870);
      v37 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v38, v39);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v40, &type metadata for Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo);
LABEL_40:
      swift_willThrow();
  }
}

void sub_1B24B645C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_105_1();
  v49 = v5;
  if (*(v4 + 16))
  {
    v6 = (v4 + 32);
    v7 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v7, v8, v9);
    OUTLINED_FUNCTION_51_3();
    v47 = v10;
    v48 = v11;
    OUTLINED_FUNCTION_172();
    v46 = v12;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v44 = v13;
    v45 = v14;
    OUTLINED_FUNCTION_51_3();
    v42 = v15;
    v43 = v16;
    OUTLINED_FUNCTION_172();
    v41 = v17;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v39 = v18;
    v40 = v19;
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_203();
    while (1)
    {
      v20 = *v6++;
      v1 = 0xEF6E656B6F54746ELL;
      switch(v20)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v1 = v39;
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_146_0();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v1 = v40;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v1 = 0x80000001B258DEB0;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v1 = v41;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_303();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v1 = v42;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v1 = v43;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v1 = v44;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v1 = v45;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v1 = 0x80000001B258E1B0;
          break;
        case 12:
          v1 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_211();
          break;
        case 14:
          v1 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v1 = v46;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_305();
LABEL_19:
          v1 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v1 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v1 = v47;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v1 = v48;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v21)
      {
        if (!*(v0 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_31;
        }

        sub_1B2455488();
        OUTLINED_FUNCTION_196();
        if ((v3 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_101_1();
        v1 = *v22;
        v2 = *(v22 + 8);
        v3 = *(v22 + 16);
        v23 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v23, v24, v25);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_31:
      v26 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v26, v27, v28);
      OUTLINED_FUNCTION_143_0();
      if (v21)
      {
        goto LABEL_35;
      }
    }
  }

  v29 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v29, v30, v31);
LABEL_35:
  switch(v3)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_37;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v35 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v35);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v36, v37);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v38, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_37:
      v32 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v32, v33, v34);
      *v49 = v1;
      *(v49 + 8) = v2;
      *(v49 + 16) = v3;
      break;
  }

  OUTLINED_FUNCTION_241();
}

uint64_t sub_1B24B67D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    v12 = OUTLINED_FUNCTION_167_0();
    sub_1B24472B8(v12, v13, v14);
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_151_0();
    v15 = a2;
    while (1)
    {
      v16 = *v11++;
      switch(v16)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_308();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v17)
      {
        if (!*(v15 + 16))
        {

LABEL_26:
          a2 = 0;
          a3 = 0;
          a4 = 6;
          goto LABEL_27;
        }

        v18 = sub_1B2455488();
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          goto LABEL_26;
        }

        v21 = *(v15 + 56) + 24 * v18;
        a2 = *v21;
        a3 = *(v21 + 8);
        a4 = *(v21 + 16);
        v22 = OUTLINED_FUNCTION_167_0();
        sub_1B24472B8(v22, v23, v24);
      }

      else
      {

        a2 = 0;
        a3 = 0;
        a4 = 6;
      }

LABEL_27:
      v25 = OUTLINED_FUNCTION_175();
      sub_1B24C52B4(v25, v26, v27);
      v15 = a2;
      if (!--v10)
      {
        goto LABEL_30;
      }
    }
  }

  v28 = OUTLINED_FUNCTION_167_0();
  sub_1B24472B8(v28, v29, v30);
LABEL_30:
  switch(a4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_32;
    case 6:
      OUTLINED_FUNCTION_21_10(a2, a3);
      v40 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v41, v42);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_20_9(v43, &type metadata for BackingValue);
      goto LABEL_36;
    default:

LABEL_32:
      v31 = OUTLINED_FUNCTION_167_0();
      OUTLINED_FUNCTION_2_14(v31, v32, v33);
      result = sub_1B24B6BE8();
      if ((v35 & 1) == 0)
      {
        return result;
      }

      v36 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v36);
      OUTLINED_FUNCTION_0_29();
      sub_1B248D0F8(v37, v38);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_6_17(v39, a7);
LABEL_36:
      swift_willThrow();
  }
}

uint64_t sub_1B24B6BE8()
{
  OUTLINED_FUNCTION_253();
  switch(v6)
  {
    case 0:
      v7 = HIBYTE(v1) & 0xF;
      v8 = *&v0 & 0xFFFFFFFFFFFFLL;
      if ((v1 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v1) & 0xF;
      }

      else
      {
        v9 = *&v0 & 0xFFFFFFFFFFFFLL;
      }

      if (!v9)
      {
        goto LABEL_79;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v40 = OUTLINED_FUNCTION_22_1();
        sub_1B24472B8(v40, v41, 0);
        v42 = OUTLINED_FUNCTION_22_1();
        v44 = sub_1B243FC04(v42, v43, 10);
        if (v45)
        {
          while (1)
          {
LABEL_75:
            v34 = OUTLINED_FUNCTION_22_1();
            *&v12 = COERCE_DOUBLE(sub_1B246A434(v34, v35));
            v37 = v36;
            v38 = OUTLINED_FUNCTION_22_1();
            sub_1B24472E0(v38, v39, 0);
            if (v37)
            {
              goto LABEL_76;
            }

            if ((v12 & 0x8000000000000000) == 0)
            {
              break;
            }

            __break(1u);
LABEL_79:
          }

LABEL_83:
          v0 = *&v12;
          return *&v0;
        }

        v12 = v44;
LABEL_82:
        v46 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v46, v47, 0);
        v48 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v48, v49, 0);
        goto LABEL_83;
      }

      if ((v1 & 0x2000000000000000) == 0)
      {
        if ((*&v0 & 0x1000000000000000) != 0)
        {
          v10 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_22_1();
          v10 = sub_1B256E5FC();
        }

        v11 = *v10;
        if (v11 == 43)
        {
          if (v8 >= 1)
          {
            if (v8 != 1)
            {
              *&v12 = 0.0;
              if (v10)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_9_0();
                  if (!v14 & v13)
                  {
                    goto LABEL_73;
                  }

                  OUTLINED_FUNCTION_96_1();
                  if (!v14)
                  {
                    goto LABEL_73;
                  }

                  v12 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    goto LABEL_73;
                  }

                  OUTLINED_FUNCTION_22();
                  if (v14)
                  {
                    goto LABEL_74;
                  }
                }
              }

              goto LABEL_64;
            }

            goto LABEL_73;
          }

          goto LABEL_88;
        }

        if (v11 != 45)
        {
          if (v8)
          {
            *&v12 = 0.0;
            if (v10)
            {
              while (1)
              {
                v27 = *v10 - 48;
                if (v27 > 9)
                {
                  goto LABEL_73;
                }

                v28 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_73;
                }

                v12 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_73;
                }

                ++v10;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_64;
          }

LABEL_73:
          *&v12 = 0.0;
          v17 = 1;
LABEL_74:
          v31 = v17;
          v32 = OUTLINED_FUNCTION_22_1();
          sub_1B24472B8(v32, v33, 0);
          if (v31)
          {
            goto LABEL_75;
          }

          goto LABEL_82;
        }

        if (v8 >= 1)
        {
          if (v8 != 1)
          {
            *&v12 = 0.0;
            if (v10)
            {
              while (1)
              {
                OUTLINED_FUNCTION_9_0();
                if (!v14 & v13)
                {
                  goto LABEL_73;
                }

                OUTLINED_FUNCTION_96_1();
                if (!v14)
                {
                  goto LABEL_73;
                }

                v12 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  goto LABEL_73;
                }

                OUTLINED_FUNCTION_22();
                if (v14)
                {
                  goto LABEL_74;
                }
              }
            }

LABEL_64:
            v17 = 0;
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v51 = v0;
      v52 = v1 & 0xFFFFFFFFFFFFFFLL;
      if (LOBYTE(v0) != 43)
      {
        if (LOBYTE(v0) != 45)
        {
          if (v7)
          {
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v14 & v13)
              {
                break;
              }

              OUTLINED_FUNCTION_96_1();
              if (!v14)
              {
                break;
              }

              v12 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v14)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

        if (v7)
        {
          if (v7 != 1)
          {
            OUTLINED_FUNCTION_295();
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v14 & v13)
              {
                break;
              }

              OUTLINED_FUNCTION_96_1();
              if (!v14)
              {
                break;
              }

              v12 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v14)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_87;
      }

      if (v7)
      {
        if (v7 != 1)
        {
          OUTLINED_FUNCTION_295();
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v14 & v13)
            {
              break;
            }

            OUTLINED_FUNCTION_96_1();
            if (!v14)
            {
              break;
            }

            v12 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v14)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      v51 = 0.0;
      v52 = 0xE000000000000000;
      sub_1B256E4FC();
      MEMORY[0x1B2749D50](0x656C62756F44, 0xE600000000000000);
      MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B258FED0);
      MEMORY[0x1B2749D50](v3, v2);
      MEMORY[0x1B2749D50](0xD00000000000002ELL, 0x80000001B258FEF0);
      result = sub_1B256E83C();
      __break(1u);
      return result;
    case 1:
      v2 = v5;
      v3 = v4;
      sub_1B24C3A70(&v51, v0);
      if (v52)
      {
        goto LABEL_90;
      }

      v0 = v51;
      return *&v0;
    case 2:
      return *&v0;
    case 3:
      *&v0 = LOBYTE(v0) & 1;
      return *&v0;
    default:
      v18 = OUTLINED_FUNCTION_22_1();
      sub_1B24472E0(v18, v19, v20);
LABEL_76:
      v0 = 0.0;
      return *&v0;
  }
}

uint64_t sub_1B24B6FD8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a1;
  switch(a3)
  {
    case 0:
      v5 = HIBYTE(a2) & 0xF;
      v6 = a1 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v7 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        goto LABEL_73;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1B24472B8(a1, a2, 0);
        v31 = sub_1B243FC04(v4, a2, 10);
        if (v32)
        {
          goto LABEL_70;
        }

        v10 = v31;
        goto LABEL_76;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v34 = a1;
        v35 = a2 & 0xFFFFFFFFFFFFFFLL;
        if (a1 != 43)
        {
          if (a1 != 45)
          {
            if (v5)
            {
              v10 = 0;
              v25 = &v34;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v10;
                if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                {
                  break;
                }

                v10 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                v25 = (v25 + 1);
                if (!--v5)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }

          if (v5)
          {
            if (--v5)
            {
              v10 = 0;
              v14 = &v34 + 1;
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  break;
                }

                v16 = 10 * v10;
                if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                {
                  break;
                }

                v10 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  break;
                }

                ++v14;
                if (!--v5)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }

          goto LABEL_82;
        }

        if (v5)
        {
          if (--v5)
          {
            v10 = 0;
            v20 = &v34 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                break;
              }

              v10 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v5)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if ((a1 & 0x1000000000000000) == 0)
      {
        goto LABEL_80;
      }

      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      break;
    case 1:
      sub_1B24C3C5C(&v34, *&a1);
      if (v35)
      {
LABEL_85:
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_1B256E4FC();
        MEMORY[0x1B2749D50](0x656C62756F44, 0xE600000000000000);
        MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B258FED0);
        MEMORY[0x1B2749D50](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x1B2749D50](0xD00000000000002ELL, 0x80000001B258FEF0);
        result = sub_1B256E83C();
        __break(1u);
      }

      else
      {
        return v34;
      }

      return result;
    case 2:
      if ((a1 & 0x8000000000000000) == 0)
      {
        return v4;
      }

      __break(1u);
LABEL_73:

LABEL_70:
      v10 = sub_1B246A434(v4, a2);
      v30 = v29;
      sub_1B24472E0(v4, a2, 0);
      if (v30)
      {
        return 0;
      }

      else
      {
        return v10;
      }

    case 3:
      return a1 & 1;
    default:
      sub_1B24472E0(a1, a2, a3);
      return 0;
  }

  while (1)
  {
    v9 = *v8;
    if (v9 == 43)
    {
      if (v6 < 1)
      {
        goto LABEL_83;
      }

      v5 = v6 - 1;
      if (v6 == 1)
      {
        goto LABEL_68;
      }

      v10 = 0;
      if (v8)
      {
        v17 = v8 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            goto LABEL_68;
          }

          v19 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_68;
          }

          v10 = v19 + v18;
          if (__OFADD__(v19, v18))
          {
            goto LABEL_68;
          }

          ++v17;
          if (!--v5)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v9 == 45)
    {
      if (v6 < 1)
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v5 = v6 - 1;
      if (v6 == 1)
      {
        goto LABEL_68;
      }

      v10 = 0;
      if (v8)
      {
        v11 = v8 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v5)
          {
            goto LABEL_69;
          }
        }

LABEL_68:
        v10 = 0;
        LOBYTE(v5) = 1;
        goto LABEL_69;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_68;
      }

      v10 = 0;
      if (v8)
      {
        do
        {
          v23 = *v8 - 48;
          if (v23 > 9)
          {
            goto LABEL_68;
          }

          v24 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_68;
          }

          v10 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            goto LABEL_68;
          }

          ++v8;
        }

        while (--v6);
      }
    }

    LOBYTE(v5) = 0;
LABEL_69:
    v28 = v5;
    sub_1B24472B8(v4, a2, 0);
    if (v28)
    {
      goto LABEL_70;
    }

LABEL_76:
    sub_1B24472E0(v4, a2, 0);
    sub_1B24472E0(v4, a2, 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      return v10;
    }

    __break(1u);
LABEL_80:
    v8 = sub_1B256E5FC();
  }
}